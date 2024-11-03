#!/usr/bin/python3

import nftables
import json

nft = nftables.Nftables()
nft.set_json_output(True)
rc, output, error = nft.cmd("list set ip filter portas_liberadas")
set=json.loads(output)
portas_elem = set["nftables"][1]["set"].get("elem")
if portas_elem:
    portas = " ".join(map(str,portas_elem))
    print("1 portas liberadas:", portas)
else:
    print("0 não há portas liberadas.")
