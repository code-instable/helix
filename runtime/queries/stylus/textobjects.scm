; Mixins and functions
(function_statement
  [
    (block)
    (css_declaration_block)
  ] @function.inside) @function.around

; Rule sets and their declaration blocks
(rule_set
  [
    (block)
    (css_declaration_block)
  ] @function.inside) @function.around

(keyframe_block
  [
    (block)
    (css_declaration_block)
  ] @function.inside) @function.around

; At-rules and control flow with a body
(media_statement
  [
    (block)
    (css_declaration_block)
  ] @class.inside) @class.around

(supports_statement
  [
    (block)
    (css_declaration_block)
  ] @class.inside) @class.around

(keyframes_statement
  (keyframes_block) @class.inside) @class.around

; Parameters
(parameters
  ((parameter) @parameter.inside . ","? @parameter.around) @parameter.around)

(arguments
  (_) @parameter.inside . ","? @parameter.around)

; Declarations as property/value entries
(declaration) @entry.around
(declaration
  value: (_) @entry.inside)

(comment) @comment.inside
(comment)+ @comment.around
