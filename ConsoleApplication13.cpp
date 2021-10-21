
#include "pch.h"
#include <iostream>
#include <vector>

void display(int a)
{
	std::cout << a << "\n";
}

int suma(int a, int b)
{
	return a + b;
}

bool CzyNalezy(std::vector<int>tab, int liczba)
{
	for (int i = 0; i < tab.size(); i++)
	{
		if (liczba == tab[i])
		{
			return true;
		}
	}

	return false;
}

void display(std::vector<int> tab)
{
	for (int i = 0; i < tab.size(); i++)
	{
		std::cout << tab[i] << ", ";
	}
	std::cout << "\n";
}

int main()
{
	std::vector<int> tab = { 1,3,5 };
	std::vector<int>tab2;

	tab2.push_back(4);

	display(tab2[0]);

	int a = 3;
	int b = 5;
	std::cout << "Podaj wartosc a: ";
	//std::cin >> a;

	int c = suma(a, b);


	std::cout << a << "\n";
	std::cout << " COS NIE TAK" << "\n";

	display(c);
	display(tab[0]);
	display(tab);

	std::vector<int> tab3 = { 1, 2, 3, 4, 5, 6 };



	if (CzyNalezy(tab3, 7) == true)
	{
		std::cout << "nalezy \n";
	}
	else
	{
		std::cout << "nie nalezy\n";
	}



}


