#!/bin/bash

wallpapers="/home/ryuki/Pictures/Wallpapers"
ranwall=$(eza $wallpapers | shuf | head -1)
ranwall="$wallpapers/$ranwall"

swww img $ranwall --transition-type=grow
