## Github

- Github guide
<https://18f.gsa.gov/2015/03/03/how-to-use-github-and-the-terminal-a-guide/>
- Markdown, .md files,  editable in github or locally
<https://help.github.com/articles/github-flavored-markdown/>

## Terminal

```
cd - change a directory
ls - list a directory
hit <tab> while typing for autocompletion of files and directories
```

## Basic git

- Clone a repository
```git clone https://github.com/briantjacobs/mapbox-studio-workshop.git```

- Or clone a repository (with a trailing period) to clone directly within a directory without a folder with repo name.
`git clone https://github.com/briantjacobs/mapbox-studio-workshop.git . `  

- Make a change to a file, then add the change
`git add —all`

- Commit the file
`git commit -m “modified the file!”``

- Push the commit
`git push`
(may need to type your github username/password

## Mapbox studio 
- Tilemill used mbtiles, mapbox studio uses vector sources
- Ideally make one data source with all of the base data (mapbox streets v5 keeps them at one consolidated location)
- Or not-- When dealing with shapefiles and setting different zoom levels, we are uploading 3 different data sources by zoom, so we can limit tile generation per each source. When using Postgres as the single data source, we can set more advanced queries to achieve the same goal

### CartoCSS:

- Look at mapbox templates to see how they organized code for best practices
- Can nest declarations for more efficiency
- AND:  [CODE=60100] [CODE=60200] { … }
- OR: [CODE=60100], [CODE=60200] { … }

### Adding sources
- Add shapefiles as layers
- "Buffer size" (in pixels) is important for labels. By increasing the buffer, we increase the “metatile” size. When labels are getting cutoff between tiles, good to check on the buffer size.
- "Fields" tab is used to describe fields so you know what they are when referring to them later
- Can add composite sources: "mapbox.mapbox-streets-v5,jelder.e56f7f7b” by using a comma between mapbox IDs. Mapbox v5 as base, our layers atop.
- Add a different stylesheet for a different datasource— one for mapbox, one for NGS layers
- We’re all using the same datasource (uploaded to mapbox.com), and creating our own styles

## Mapbox.com
- Good for basic editing, checking on and sharing data

## NPS project management
- Github for internal issue tracking
- Basecamp for internal and client communication
- Create a github repo for managing symbols (NPMaki)

## CartoDB
- PostGIS in the cloud - cartodb as raw datasource using SQL API
- Visualization platform using their GUI or cartodb.js
- Can edit data within table view, map view, edit geometry
- Add many types of data sources
- Can use SQL API to query dataset
- Can reproject data, export data in various formats
- Cartodb base maps: they are stripped down, more geared towards visualization / Mapbox is throwing the kitchen sink at basemap construction
- Will spit out CartoCSS for stock visualization types
- Use to create embeddable visualizations or a preview environment to prepare data and then use as a source for custom development
- What of authentication roles? Someone makes a change, can they be approved by an administrator before being sucked into the database?


## Misc tools
- “changewithin” - mapbox tool, wherever changes were made in openstreetmap, someone will be verified of changes via email
- NoCoffee - Chrome extension for colorblindness / accessablity testing
- Markdown editor: MacDown
- Jekyll for static site generator
- Alfred as OSX app launcher
- geojson.io