#include <stdio.h>

char leds[6][8]; //储存LED灯的点亮状态

//在控制台模拟led灯亮灭情况
void lightLEDs()
{
	for (int f = 0; f < 6; f++)
	{
		printf("face %d:\n", f + 1);
		for (char i = 0; i < 8; i++)
		{
			for (char j = 0; j < 8; j++)
				printf(leds[f][i] & (0b10000000 >> j) ? "+" : "O");
			printf("\n");
		}
		printf("\n");
	}
}

int *getNewInt()
{
	int i = 10;
	return &i;
}
//主函数
int main(void)
{
	//printf("您的ul位数:%lu\n", sizeof(unsigned long));
	//lightLEDs();
	for (int i = 0; i < 10; i++)
		printf("%x\n", getNewInt());
	return 0;
}