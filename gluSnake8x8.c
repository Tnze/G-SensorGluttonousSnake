/*	
*	文件: gluSnake8x8
*	作者: Tnze
*	日期: 2018年11月3日
*	功能: 8*8贪吃蛇的核心代码
*/
#include <stdio.h>
#include <unistd.h>

//LED状态
char leds[8];

char snake[8 * 8]; //每格前4bit为x坐标，后4bit为y坐标
int snake_len = 1; //贪吃蛇长度

//输出现在的状态
void printLEDs()
{
	for (char i = 0; i < 8; i++)
	{
		for (char j = 0; j < 8; j++)
			printf(leds[i] & (0b10000000 >> j) ? "+" : ".");
		printf("\n");
	}
	printf("\033[8A\033[8D");
}

//重置游戏
void reset()
{
	//TODO 重置游戏
}

char food;	//食物位置
char dir = 3; //行进方向，0b00上，0b01下，0b10右，0b11左

//计算下一个位置
void nextCell(char *next)
{
	char head = snake[snake_len - 1];
	switch (dir) //计算下一步的位置
	{
	case 0b00: //上
		*next = head - 1;
		break;
	case 0b01: //下
		*next = head + 1;
		break;
	case 0b10: //右
		*next = head + 0b10000;
		break;
	case 0b11: //左
		*next = head - 0b10000;
		break;
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

//把数组蛇映射到LED状态
void snake_to_LED()
{
	for (int i = 0; i < 8; i++) //先熄灭所有灯
		leds[i] = 0;
	for (int i = 0; i < snake_len; i++) //有蛇的位置点亮
		leds[snake[i] & 0b1111] |= 0b10000000 >> (snake[i] >> 4);
}

int main(void)
{
	setFood();
	snake[0] = (3 << 4) + 5;
	while (1)
	{
		snake_to_LED();
		printLEDs();
		sleep(1);
		step();
	}
	return 0;
}