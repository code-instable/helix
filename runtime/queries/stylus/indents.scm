; Only delimited constructs are indented from the tree. Indentation-based
; bodies end exactly where their last line ends, so a new line typed below them
; would be treated as outside the scope; they are left to Helix's default of
; keeping the previous line's indentation.
[
  (css_declaration_block)
  (object_value)
  (parameters)
  (arguments)
] @indent

[
  "}"
  ")"
  "]"
] @outdent
