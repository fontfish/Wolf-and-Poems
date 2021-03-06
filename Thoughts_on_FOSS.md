# A very rough and incomplete overview of FOSS vertical text support in the programs that I am aware support it.

*Most of the below is rather garbled at the moment and I intend to improve on it. I hope it is not taken as negativity so much as a critical look at what is currently available.*

## Current state of vertical text support in FOSS software

Vertical text in proprietary software is, for the most part, limited to a select few programs. While I imagine those programs likely implement it well (or at least functionally), they are still few and far between. This strikes me as an area where a move forward in free software could push a few boundaries.

In Open Source software, prograpms that support vertical text are just as, if not more, limited. Most vertical text support is not implemented to the equivalent standard as horizontal text support within the same programs. Theoretically, the implementation of [Pango](https://pango.gnome.org/) and [Cairo](https://www.cairographics.org/) should have made vertical text implementation a breeze, but as yet the ability to use it is rather limited.

Several languages make use of vertical text on a regular basis in signage, book and media production, letter-writing and graphic design. At least one or two written languages use vertical text exclusively. The FOSS world has the opportunity to allow cross-cultural and multilingual typesetting and publishing to be a much more accessible reality and I believe that it is a loss to not do so to the fullest extent possible. Free software should be about more than *just* software if it hopes to grow its sphere of application. Again, however, this is only my opinion.

With my current level of programming ability, there is little I can do about this directly. In future, however, I hope to be able to contribute more to all kinds of text layout in Open Source software. My long-term goal is to eventually create a simple CJK vertical writing document editor.


## Examples

Some examples of where vertical text support might be needed or wanted. Here, I have used English and Japanese as example languages, but these could just as easily be Arabic and Chinese or any other horizontal and vertical/dual-direction language.

* A native English-speaking student studying English literature might need to place a picture of the original text of Beowulf alongside a typed transliteration. A student working in the same way with a picture of a piece of old Japanese text, however, would have to do more work to move between the original vertical text and a horizontal digital transliteration – I do not find this an issue, but am aware that some others do.

* A small charity organisation, for instance, might want to be able to use vertical text on a flyer. For vertcial text in English, this would usually mean rotating the text box to simply make it “sideways”. In Japan, where the letters would need to be rotated individually, this may present the challenge of having to rearrange the text by hand.


### My own use of FOSS programs to typeset poems in multiple languages

When putting together the book of poems I produced, I eventually settled on Inkscape as my favoured tool for typesetting multiple languages in multiple directions. At the time, I used Debian Testing to give me access to the newer features in Inkscape I needed, but which are now available in Debian Stable as well. In order to set the English and Scots translations, I set up one text frame for each, using another only to right-align some text or for the sake of a pleasing layout.

For the Japanese, two overlapped text frames were needed – one for the kana glyphs and one for the kanji, each being a separate font. A third text box was then needed for the ruby text (ふりがな), which is heavily prevalent in some of the poems. For this, I had to create a second text frame, carefully find an appropriate font and size for the ruby glyphs, then manually edit letter spacing (tracking) and line-spacing (leading) so that each line of ruby glyphs would accurately line up with its partner line of text, using geta marks (〓) and other typographical symbols to check the accuracy of the alignment. I wouldn't reccomend this method for larger projects, as it's time-consuming and difficult to set up, but for simple use of ruby characters it provides a useful workaround.


## Program Overview (subjective)

##### CSS & html
https://en.wikipedia.org/wiki/Cascading_Style_Sheets

CSS has implemented vertical text support very well, in a way which I think should perhaps be taken as an example when implementing vertical text features. Not only can vertical and RTL text be used in its own blocks of text, but even within lines of another text direction. East Asian language features such as ruby text are also supported.

See [http://tategaki.github.io/](http://tategaki.github.io/) for some beautiful examples and explanation.


##### Inkscape
https://inkscape.org/

This is the program I used to produce this poetry booklet. Inkscape has come a long way since I first used it, and is one of my favourite FOSS programs for the level of adaptability and useability it has for typesetting options. It is, however (and for good reason), what it aims to be – vector graphics software. This limits it slightly within the range of text-related software.


##### LibreOffice
https://www.libreoffice.org/

Libre Office has also improved in this area. In Writer, ruby text is supported and multiple text directions can even be implemented by using text boxes. Full parallel text support (for instance, a page split into two columns, one with vertical and one with horizontal text) would be a nice addition but is probably too specific a feature to reasonably hope for any time soon. In Draw, vertical text is supported in DTP-style text boxes, but as far as I can tell is *only accessibly via the toolbar* and not via any dialog windows.


##### Scribus
https://www.scribus.net/

Scribus has improved since I first attempted to use it, and I would happily recommend its use in publishing simple LTR text. Typographically, however, it still has a way to go – no vertical text yet (though RTL is now implemented in the 1.5 testing versions. This is a program I'd really like to see move forward with vertical text support.


##### Google Docs (non-FOSS – proprietary but available web-based software)
https://docs.google.com/

For a company with the wherewithall and reach that it has, Google's web-based document editor is completely lacking when it comes to anything more than RTL text support. For something so useful, it's something very limited. Google has also worked with Adobe to make a huge set of praiseworthy high-quality multi-language fonts (the Source Han/Noto fonts), but has only allowed the “Pro” version (Latin alphabet, Greek, Cyrillic) for use in Docs, which seems rather self-contradictory. It may be possible to write add-ons for Google Docs that allow vertical text or extended font use, but that is far from accessible to the average user. Considering the resources Google have available and the widespread use of this program, it's a disappointment that it is still so exclusively Western language-focused, though I expect that to change over time.

##### Other

Aside from the above, searching online finds almost exclusively one of three things: vertical text viewer Adroid apps (no editing), vertical text in CSS (web design/development) and output of graphics files (vector and raster) with vertical text.


### Brief Summary

Vertical and RTL text support in both free and proprietary software has improved massively, but is still limited to a select few pieces of software. It seems that better vertical text support in programming bindings for GUI creation would help improve the ease of implementation. (I am aware that GTK bindings allow vertical text on a label, for instance, but not in a text box or on a button.)
