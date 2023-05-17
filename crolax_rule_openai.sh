#!/bin/bash

# 定义输入和输出文件名
input_file="/Users/jaysun/.config/clash/crolax.yaml"
output_file="/Users/jaysun/.config/clash/crolax_openai.yaml"


sed '/^rules:/q' <"$input_file" >"$output_file"
echo "  - DOMAIN-SUFFIX,openai.com,CroLAX" >> "$output_file"
echo "  - DOMAIN-SUFFIX,bing.com,CroLAX" >> "$output_file"

#  fswatch  /Users/jaysun/.config/clash/crolax.yaml | xargs -n1 /Users/jaysun/.config/clash/crolax_rule_openai.sh