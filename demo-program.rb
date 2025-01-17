require 'kramdown'
require 'kramdown/syntax_tree_sitter'

text = <<~MARKDOWN
  ~~~python
  print('Hello, World!')
  ~~~
MARKDOWN

# Kramdown::Document.new(text, syntax_highlighter: :'tree-sitter').to_html

html = Kramdown::Document.new(text, {
                                syntax_highlighter: 'tree-sitter',
                                syntax_highlighter_opts: {
                                  tree_sitter_parsers_dir: 'tree_sitter_parsers',
                                  css_classes: true
                                }
                              }).to_html

puts html
