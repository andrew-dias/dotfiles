killPort() {
  fuser -k -n tcp $1
}

