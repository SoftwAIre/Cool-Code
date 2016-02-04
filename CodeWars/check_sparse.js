Array.prototype.isSparse = function() {
  return this.length !== Object.keys(this).length;
}
