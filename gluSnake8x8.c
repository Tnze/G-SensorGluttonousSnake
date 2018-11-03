#include <stdio.h>
#include <unistd.h>
#define Cell struct cell

//LED状态
char leds[8];

//贪吃蛇的一格
Cell
{
	char x; //此格的x坐标
	char y; //此格的y坐标
};

Cell snake[8 * 8];
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

char food[2]; //食物位置，[0]x，[1]y
char dir;	 //行进方向，00上，01下，10右，11左

//计算下一个位置
void nextCell(char *x, char *y)
{
	Cell head = snake[snake_len - 1];
	switch (dir) //计算下一步的位置
	{
	case 0b00: //上
		*x = head.x;
		*y = head.y - 1;
		break;
	case 0b01: //下
		*x = head.x;
		*y = head.y + 1;
		break;
	case 0b10: //右
		*x = head.x + 1;
		*y = head.y;
		break;
	case 0b11: //左
		*x = head.x - 1;
		*y = head.y;
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
	char next_x, next_y;
	nextCell(&next_x, &next_y);

	//检查是否咬到自己
	for (int i = 0; i < snake_len; i++)
		if (snake[i].x == next_x && snake[i].y == next_y) //咬到自己了
			reset();

	//检查是否吃到食物
	if (food[0] == next_x && food[1] == next_y)
	{ //吃到食物
		setFood();
		moveSnake();
		snake[0].x = next_x;
		snake[0].y = next_y;
		snake_len++;
	}
	else
	{ //没有吃到食物
		moveSnake();
		snake[0].x = next_x;
		snake[0].y = next_y;
	}
}

void snake_to_LED()
{
	for (int i = 0; i < 8; i++)
		leds[i] = 0;
	for (int i = 0; i < snake_len; i++)
		leds[snake[i].y] |= 0b10000000 >> snake[i].x;
}

int main(void)
{
	printLEDs();
	setFood();
	snake[0].x = 3;
	snake[0].y = 3;
	while (1)
	{
		step();
		snake_to_LED();
		printLEDs();
		sleep(1);
	}
	return 0;
}