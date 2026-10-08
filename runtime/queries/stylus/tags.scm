(function_statement
  name: (function_name) @name) @definition.function

((call_expression
  function: (function_name) @name) @reference.call
 (#not-match? @name "^(darken|lighten|saturate|desaturate|adjust-hue|complement|invert|mix|tint|shade|luminosity|contrast|alpha|red|green|blue|unit|lookup|define|operate|match|replace|split|join|push|pop|shift|unshift|slice|length|warn|error|image-size|embedurl|json|selector|selector-exists|prefix-classes|use|blur|brightness|drop-shadow|grayscale|hue-rotate|opacity|sepia)$"))

(assignment
  left: (variable_name) @name) @definition.constant

(block_assignment
  left: (variable_name) @name) @definition.constant

(rule_set
  selector: [
    (selector_list
      (selector
        [
          (tag_name)
          (class_name)
          (id_name)
          (placeholder_selector)
          (selector_interpolation)
        ] @name))
    (nested_selector_list
      (nested_selector
        [
          (tag_name)
          (class_name)
          (id_name)
          (placeholder_selector)
          (selector_interpolation)
        ] @name))
  ]) @definition.class

(keyframes_statement
  name: [
    (keyframes_name)
    (interpolation)
  ] @name) @definition.class

(extend_statement
  target: (extend_target_list
    (extend_target
      selector: (nested_selector
        [
          (class_name)
          (id_name)
          (placeholder_selector)
          (tag_name)
        ] @name)))) @reference.class
