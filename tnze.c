/*
    file:   tnze.c
    author: Tnze
    func:   Cube Glutton Snake
*/
#include <8052.h>
#define DIN P2_0 //定义数据输入口
#define CS P2_1  //定义片选口
#define CLK P2_2 //定义时钟口

#define SW1 P1_3 //1号水银开关
#define SW2 P1_4 //2号水银开关

//延时函数
void Delay_xms(unsigned int x)
{
    unsigned int i, j;
    for (i = 0; i < x; i++)
        for (j = 0; j < 112; j++)
            ;
}

//向MAX7219(U3)写入字节
void Write_Max7219_byte(unsigned char DATA)
{
    unsigned char i;
    CS = 0;
    for (i = 8; i >= 1; i--)
    {
        CLK = 0;
        DIN = DATA & 0x80;
        DATA = DATA << 1;
        CLK = 1;
    }
}

//向MAX7219写入数据
void Write_Max7219(unsigned char address, unsigned char dat)
{
    CS = 0;
    Write_Max7219_byte(address); //写入地址，即数码管编号
    Write_Max7219_byte(dat);     //写入数据，即数码管显示数字
    CS = 1;
}

//初始化MAX7219
void Init_Max7219(void)
{
    Write_Max7219(0x09, 0x00); //译码方式：No decode
    Write_Max7219(0x0a, 0x03); //亮度
    Write_Max7219(0x0b, 0x07); //扫描界限；8个数码管显示
    Write_Max7219(0x0c, 0x01); //掉电模式：0，普通模式：1
    Write_Max7219(0x0f, 0x00); //显示测试：1；测试结束，正常显示：0
}

//LED状态
char leds[8];

char snake[8 * 8]; //每格前4bit为x坐标，后4bit为y坐标
int snake_len = 1; //贪吃蛇长度

//输出现在的状态
void printLEDs()
{
    Write_Max7219(0x01, leds[0]);
    Write_Max7219(0x02, leds[1]);
    Write_Max7219(0x03, leds[2]);
    Write_Max7219(0x04, leds[3]);

    Write_Max7219(0x05, leds[4]);
    Write_Max7219(0x06, leds[5]);
    Write_Max7219(0x07, leds[6]);
    Write_Max7219(0x08, leds[7]);
}

//重置游戏
void reset()
{
    //TODO 重置游戏
}

char food; //食物位置

//计算下一个位置
void nextCell(char *next)
{
    char head = snake[snake_len - 1];
    if (SW1)
        if (SW2)
            *next = head - 1;
        else
            *next = head - 0b10000;
    else
    {
        if (SW2)
            *next = head + 0b10000;
        else
            *next = head + 1;
    }
}
//设置新食物
void setFood()
{
    //TODO 设置食物
}
//让蛇数组下标整体后移1
void moveSnake()
{
    for (int i = snake_len; i > 0; i--)
        snake[i] = snake[i - 1];
}

//游戏刻
void step()
{
    char next;
    nextCell(&next);

    //检查是否咬到自己
    for (int i = 0; i < snake_len; i++)
        if (snake[i] == next) //咬到自己了
            reset();

    //检查是否吃到食物
    if (food == next)
    { //吃到食物
        setFood();
        moveSnake();
        snake[0] = next;
        snake_len++;
    }
    else
    { //没有吃到食物
        moveSnake();
        snake[0] = next;
    }
}
// 把数组蛇映射到LED状态
void snake_to_LED()
{
    for (int i = 0; i < 8; i++) //先熄灭所有灯
        leds[i] = 0;
    for (int i = 0; i < snake_len; i++) //有蛇的位置点亮
        leds[snake[i] & 0b1111] |= 0b10000000 >> (snake[i] >> 4);
}

void main()
{
    //初始化水银开关
    SW1 = 1;
    SW2 = 1;
    //初始化点阵
    Init_Max7219();
    setFood();
    snake[0] = (3 << 4) + 5;
    while (1)
    {
        snake_to_LED();
        printLEDs();
        Delay_xms(500);
        step();
    }
}