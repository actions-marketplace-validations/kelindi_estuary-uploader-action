![Logo](https://github.com/kelindi/estuary-upload-action/blob/main/logo.png?raw=true)
# Estuary Uploader 

This GitHub Action helps you to publish your website or repository to  [Estuary](https://estuary.tech/)
## Usage
1. Request an invite to Estuary @ [Estuary.tech](https://estuary.tech/)
  1. Create a new api key 
2. Go to your repository -> settings -> secrets -> actions -> new repository secret
  1. Title the secret : ACCESS_TOKEN and paste your Api key from step 1
  
3. Use the below code in your github workflow

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
      uses: kelindi/estuary-upload-action@v1.0.0
      with:
        access_token: ${{ secrets.ACCESS_TOKEN }} #Required
        path_to_add: 'your/path/' #Optional (Default: './')
        pin_name: 'WWW-MySite' #Optional (Default: user/respository-commithash)
```
## Outputs
### `cid`
Your content's IPFS content identifier e.g.

`bafkreiev2lcmmh44cu2ftmbtwzpsi4z7hv6izyozrqnkkq76f7v5xxxwdm`
## Contribute
If you have ideas to improve this action or found a bug, feel free to submit a PR or open an issue.



## License



MIT © Alexander Schau
