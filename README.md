#Rutgers Nutritional Information Scraper

Scrapes food.rutgers.edu for menus and nutritional information, saves to file.

Official website reports wonky numbers for certain fields, so only scraping calories, serving size, and ingredients for now.

##Format
Enable indentation with the `--fancy` flag.

Use the `--dicts` flag to organize for easier random access, like so:
```
{
	'Brower Commons' : {
		'Breakfast' : [
			'CATEGORY' : [
				{
					'name' : 'ITEM NAME',
					'serving' : 'SERVING SIZE',
					'calories' : 100,
					'ingredients' : [
						'INGREDIENT1',
						'INGREDIENT2',
						...
					]
				},
				{
					...
				},
				...
			],
			...
		],
		'Lunch' : {
			...
		},
		'Dinner' : {
			...
		},
		'Knight Room' : {
			...
		}
	},
	'Busch Dining Hall' : {
		...
	},
	'Neilson Dining Hall' : {
		...
	},
	'Livingston Dining Commons' : {
		...
	}
}
```

Use without the `--dicts` flag to organize with arrays like the old food API does.
```
[
	{
		'location_name' : 'LOCATION NAME'
		'meals' : [
			{
				'meal_name' : 'MEAL NAME',
				'genres' : [
					{
						'genre_name' : 'CATEGORY NAME'
						'items' : [
							{
								'name' : 'ITEM NAME',
								'serving' : 'SERVING SIZE',
								'calories' : 100,
								'ingredients' : [
									'INGREDIENT1',
									'INGREDIENT2',
									...
								]
							},
							...
						]
					},
					...
				]
			},
			...
		]
	},
	...
]
```

## Setup

Clone, then run with python. Dependencies can be installed with: `pip install -r requirements.txt`

Also available as a [docker](https://www.docker.com/) [container](https://hub.docker.com/r/ropc/rufoodscraper/). Run with `docker run ropc/rufoodscraper`


##Dependencies

Python script requires package `BeautifulSoup`.
