# Estuary Uploader 

This GitHub Action helps you to publish your website or repository to  [Estuary](https://estuary.tech/)
## Usage
You can use this Action directly from your GitHub workflow. You can find the required credentials on your Pinning Services Website.

```yaml
#/.github/workflows/main.yml
on: [push]

jobs:
  pin_to_ipfs:
    runs-on: ubuntu-latest
    name: Publish
    steps:
    - uses: actions/checkout@v2
    - name: IPFS Publish
      id: IPFS
      uses: alexanderschau/ipfs-pinning-action@v1.0.0
      with:
        access_token: ${{ secrets.ACCESS_TOKEN }} #Required
        path_to_add: 'your/path/' #Optional
        pin_name: 'WWW-MySite' #Optional
```
## Outputs
### `cid`
Your content's IPFS content identifier e.g.

`bafkreiev2lcmmh44cu2ftmbtwzpsi4z7hv6izyozrqnkkq76f7v5xxxwdm`
## Contribute
If you have ideas to improve this action or found a bug, feel free to submit a PR or open an issue.
## License
MIT © Alexander Schau
