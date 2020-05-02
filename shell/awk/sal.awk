#!/bin/awk

  $3 > 0 && /th/  {print $0}
