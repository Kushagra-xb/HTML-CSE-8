#!/usr/bin/env bash
# Run this inside your cloned HTML-CSE-8 repository, after copying the Assignment-* folders into it.
# It makes ONE commit per assignment with a meaningful message, then pushes.
set -e

commit() {  # $1 = folder, $2 = message
  git add "$1"
  git commit -m "$2"
}

[ -f README.md ] && { git add README.md; git commit -m "Add README for HTML-CSE-8 assignments" || true; }

commit Assignment-01-HTML-Page-Structure                 "Add Assignment 1: HTML5 page skeleton with a comment"
commit Assignment-02-Headings-Paragraphs-Formatting      "Add Assignment 2: headings, paragraphs, text formatting and character entities"
commit Assignment-03-Block-and-Inline-Elements           "Add Assignment 3: block vs inline element behaviour"
commit Assignment-04-Semantic-and-Non-Semantic           "Add Assignment 4: semantic page layout compared with div layout"
commit Assignment-05-Unordered-Ordered-Description-Lists "Add Assignment 5: unordered, ordered and description lists"
commit Assignment-06-Nested-and-Mixed-Lists              "Add Assignment 6: syllabus outline using nested and mixed lists"
commit Assignment-07-Navigation-Menu-Using-Lists         "Add Assignment 7: horizontal navigation menu built from a list"
commit Assignment-08-Hyperlinks-and-Images               "Add Assignment 8: internal, external, email and image links"
commit Assignment-09-Quotation-and-Citation              "Add Assignment 9: quotation, citation, abbreviation and edit elements"
commit Assignment-10-Multimedia                          "Add Assignment 10: image, video, audio and YouTube embed"
commit Assignment-11-Accessibility                       "Add Assignment 11: accessible page with lang, alt, ARIA labels and skip link"
commit Assignment-12-Table-Header-Caption-Footer         "Add Assignment 12: table with caption, thead, tbody and tfoot"
commit Assignment-13-Rowspan-and-Colspan-Timetable       "Add Assignment 13: class timetable using rowspan and colspan"
commit Assignment-14-Nested-and-Responsive-Tables        "Add Assignment 14: nested table and scrollable responsive table"
commit Assignment-15-Form-Inputs-Label-Fieldset          "Add Assignment 15: form with input types, labels and fieldset"
commit Assignment-16-Select-Textarea-Buttons             "Add Assignment 16: select dropdown, textarea and button types"
commit Assignment-17-Form-Attributes-and-Validation      "Add Assignment 17: form attributes and built-in input validation"
commit Assignment-18-Mini-Project-Admission-Page         "Add Assignment 18: mini project - accessible student admission page"

git push origin HEAD
