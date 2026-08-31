#import "@preview/drafting:0.2.2"
#import "@preview/drafting:0.2.2": *
#import "@preview/suiji:0.4.0": *
#import "@preview/colorful-boxes:1.1.0": stickybox

#let diagram(
  image_path,
  format: auto,
  width: auto,
  height: auto,
  alt: none,
  fit: "cover",
  scaling: auto,
  icc: auto,
) = {
  if (image == none or image == "") {
    panic("diagram location must be provided as string")
  }
  return image(
    "/assets/diagrams/" + image_path,
    format: format,
    width: width,
    height: height,
    alt: alt,
    fit: fit,
    scaling: scaling,
    icc: icc,
  )
}

#let note(
  content,
  width: 5cm,
) = {
  return stickybox(
    rotation: 2deg,
    width: width,
  )[
    #content
  ]
}

#let change(
  content,
) = {
  text(red)[TBC: #content]
}

#let unclear(
  content,
) = {
  text(purple)[??: #content]
}

#let todo(
  content,
) = {
  text(eastern)[TODO: #content]
}

