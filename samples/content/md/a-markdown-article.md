Author: David Colton
Date: 2020-02-23 10:30
Modified: 2020-03-08 22:55
Category: blogging
Tags: markdown, pygments
Title: Pelican Markdown Test Page 
Slug: markdown_examples

# Examine how Markdown is rendered with Pelican

_This is a copy of original article:_

 - [Source](https://github.com/davidcolton/davidcolton.blog.source) commit `bed42417`
 - [Rendered](https://davidcolton.github.io/articles/2020/02/23/markdown_examples/index.html) 


These examples of markdown are a modified form taken from [Build A Blog With Pelican And Python - Pt. 2 Creating Content](https://matthewdevaney.com/posts/2019/03/07/build-a-blog-with-pelican-and-python-pt-2-creating-content/). I did find some issues that I mention as I go through all the examples. I've also augmented the original examples with some additional samples of my own.

As a nice side affect of putting this page together I now have a reference page should I decide to change the Pelican theme I'm using to ensure that all my other articles are still rendering as expected as this test page contains most, if not all, of the markdown styles that I use on a regular basis.

For a complete markdown reference refer to [The Markdown Guide](https://www.markdownguide.org/).

## Markdown Examples Part 1

Before you learn anything else you should know be aware of the following:

### Heading Best Practices

Markdown applications don’t agree on how to handle missing blank lines between a heading and the surrounding paragraphs. For compatibility, separate paragraphs and headings with one or more blank lines.

### Paragraphs

To create paragraphs, use a blank line to separate one or more lines of text.

### Line Breaks

To create a line break (&lt;br&gt;), end a line with two or more spaces, and then type return.

### Some more examples

Basic markdown examples are shown below:

    :::text
    This text is **bold** and this text is also __bold__  
    This text is *italic* and this text is also _italic_  
    This text is **_italic and bold_**

This text is **bold** and this text is also __bold__     
This text is *italic* and this text is also _italic_  
This text is **_italic and bold_**

You can add headers to your markdown to divide your posts into related sections:

    :::text
    # A H1 heading  
    ## A H2 heading  
    ### A H3 heading  
    #### A H4 heading  
    ##### A H5 heading  
    ###### A H6 heading  

# A H1 heading  
## A H2 heading  
### A H3 heading  
#### A H4 heading  
##### A H5 heading  
###### A H6 heading  

A nice additional way to separate different sections of you post is to insert a horizontal line is to add three or more hyphens:

    :::text
    ---

---

In Mathew's original post he defines a list with numbers as:

    :::text
    A list with numbers:
    1. One
    2. Two
    3. Three

When rendered this looks like:

A list with numbers:
1. One
2. Two
3. Three

There are two issues with this:

1. There should be an empty line between the text preceding the list and the list itself. See notes above about adding empty blank lines between headings and paragraphs. This rule applied to everything.
1. Typically you don't provide the numbers. All items in the list are preceded with a `1. ` and the list is then automatically numbered. 

The correct way to define a list of numbers is:

    :::text
    A list with numbers:

    1. One
    1. Two
    1. Three

And this is how it then correctly displays:

A list with numbers:

1. One
1. Two
1. Three

You can also have a list of number with a sublist of numbers:

1. Top Level
    1. Sub level 1
    1. Sub level 2
1. Top Level Again
    1. Sub level again

And the markdown for sublists like this is:

    :::text
    1. Top Level  
        1. Sub level 1
        1. Sub level 2
    1. Top Level Again  
        1. Sub level again

The list with bullets example suffers from the same issue as the numbered list in that the example markdown given does not have a blank line between the text and the bulleted list. In markdown you always have to place a blank line:

    :::text
    A list with bullets:

    * One
    * Two
    * Three

A list with bullets:

* Bullet
* Bullet
* Bullet

Here's a blockquote:

    :::text
    > Simple is better than complex

> Simple is better than complex

For some reason the example given my Mathew used `&gt;`. Not sure why.

Here's the table example in Mathew's post:

    :::text
    | Column1 | Column 2 | Column 3 |  
    |---|---|---|  
    | Value 1 | Value 2 | Value 3 |  
    | Value 4 | Value 5 | Value 6 |  
    | Value 7 | Value 8 | Value 9 |  

And here is the table rendered:

| Column1 | Column 2 | Column 3 |
|---|---|---|
| Value 1 | Value 2 | Value 3 |
| Value 4 | Value 5 | Value 6 |
| Value 7 | Value 8 | Value 9 |
<br/>

I'm not sure it it's a Pelican thing or the template used but when rendered this looks really poor in my opinion. One way around this it to use HTML directly with CSS styling. I need to investigate this further.

Here's a HTML table with CSS Styling:

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
.tg .tg-hmp3{background-color:#D2E4FC;text-align:left;vertical-align:top}
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-mb3i{background-color:#D2E4FC;text-align:right;vertical-align:top}
.tg .tg-lqy6{text-align:right;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-baqh" colspan="6">Results</th>
  </tr>
  <tr>
    <td class="tg-hmp3">No</td>
    <td class="tg-hmp3">Competition</td>
    <td class="tg-hmp3">John</td>
    <td class="tg-hmp3">Adam</td>
    <td class="tg-hmp3">Robert</td>
    <td class="tg-hmp3">Paul</td>
  </tr>
  <tr>
    <td class="tg-0lax">1</td>
    <td class="tg-0lax">Swimming</td>
    <td class="tg-lqy6">1:30</td>
    <td class="tg-lqy6">2:05</td>
    <td class="tg-lqy6">1:15</td>
    <td class="tg-lqy6">1:41</td>
  </tr>
  <tr>
    <td class="tg-hmp3">2</td>
    <td class="tg-hmp3">Running</td>
    <td class="tg-mb3i">15:30</td>
    <td class="tg-mb3i">14:10</td>
    <td class="tg-mb3i">15:45</td>
    <td class="tg-mb3i">16:00</td>
  </tr>
  <tr>
    <td class="tg-0lax">3</td>
    <td class="tg-0lax">Shooting</td>
    <td class="tg-lqy6">70%</td>
    <td class="tg-lqy6">55%</td>
    <td class="tg-lqy6">90%</td>
    <td class="tg-lqy6">88%</td>
  </tr>
</table>
<br/>

[Table Generator](https://www.tablesgenerator.com/html_tables) is one simple way to generate HTML code for tables but there are many out there to choose from.

---

## Markdown Examples Part 2

Images can be displayed in Markdown.  

Text within the square brackets is the image name. The path to the image goes between the round brackets.  
The {static} tag indicates the image is stored in the content folder. This setting can be changed in `pelicanconf.py`.

![python logo]({static}/images/python_icon.png)

Links to downloadable content such as PDF files are written similarly to image files but with no ! symbol at the beginning.

[Pelican Documentation]({static}/pdf/pelican.pdf)

A link to a different blog post on our website is written exactly the same.

Text within the square brackets can be clicked on to travel to the website between the curly brackets.
The `{filename}` tag indicates we want to follow the link to a webpage rather than the static file it was generated from.

[First Post]({filename}/articles/20200223_markdown_examples.md)

Or we can link to another external website by supplying the web address.

[Python Package Index](https://pypi.org)

Refer to Mathew's page directly for the setting that need to be added to the `peliconconf.py` file. One small disadvantage of having to define links using `{static}` or `{filename}` is that it makes editing the markdown files in a editor slightly more difficult as you are not actually going to see a preview or inline rendering of the link content. A small annoyance. 

---

## Markdown Examples Part 3

Code blocks are preceded by an indent (4 spaces), three `:` symbols and the name of the language.  

All of the following code will be highlighted while the text is indented.

    :::python3
    def do_twice(func):
        def wrapper_do_twice(*args, **kwargs):
            return func(*args, **kwargs).lower()
        return wrapper_do_twice

    @do_twice
    def say_whee(some_text):
        print(some_text)

    x = 'Whee!'
    say_whee(x)

And the raw markdown to produce this code block looks like:

    :::text
    :::python
    def do_twice(func):
        def wrapper_do_twice(*args, **kwargs):
            return func(*args, **kwargs).lower()
        return wrapper_do_twice
    ...    
