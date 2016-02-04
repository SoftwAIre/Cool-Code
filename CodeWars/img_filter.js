function imageFilter(arr) {
  return arr.map(file => file.match(/^(.+)\.(bmp|gif|jpg|png|tiff)$/i))
}
