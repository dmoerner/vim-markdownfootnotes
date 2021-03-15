## VimFootnotes for Markdown

This is a fork of `vim-pandoc/vim-markdownfootnotes`.

The following features are removed because I don't use them:

- Non-Arabic footnotes.
- Commands to change the number of footnotes.

The following features are added:

- Editing of existing footnotes in a split window.
- Always choose the lowest available number for a new footnote. This 
	accommodates cases in which some footnotes have been deleted, and should
	replace the functionality from the removed features.
- Insert footnotes at the end of the next punctuation, rather than under the cursor.

The script defines three mappings,

~~~
<Leader>f    Insert new footnote
<Leader>e    Edit existing footnote
<Leader>r    Return from footnote
~~~

To insert a footnote, type `<Leader>f`. A footnote mark will be inserted
after the cursor. A matching footnote mark will be inserted at the end
of the file. A new buffer will open in a split window at the bottom of
your screen, ready to edit the new footnote. To edit an existing 
footnote, type <Leader>e, and a new buffer will open in a split window 
to edit the new footnote. When you are done, type
`<Leader>r` to close the split and return to the main text.

## Commands

`AddVimFootnote`
 :  inserts footnotemark at cursor location, inserts footnotemark on new
    line at end of file, opens a split window all ready for you to enter in
    the footnote.

`EditVimFootnote`
 :  edit closest footnotemark to cursor location, opens a split window all ready for you to edit the footnote.

`ReturnFromFootnote`
 :  closes the split window and returns to the text in proper place.

These are mapped to `<Leader>f`, `<Leader>e`, and `<Leader>r` respectively.
