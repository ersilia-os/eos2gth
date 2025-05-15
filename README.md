# MAIP distillation: antimalarial potential prediction

Prediction of the antimalarial potential of small molecules. This model was originally trained on proprietary data from various sources, up to a total of >7M compounds. The training sets belong to Evotec, Johns Hopkins, MRCT, MMV - St. Jude, AZ, GSK, and St. Jude Vendor Library. In this implementation, we have used a teacher-student approach to train a surrogate model based on ChEMBL data (2M molecules) to provide a lite downloadable version of the original MAIP

This model was incorporated on 2021-11-02.

## Information
### Identifiers
- **Ersilia Identifier:** `eos2gth`
- **Slug:** `maip-malaria-surrogate`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Activity prediction`
- **Biomedical Area:** `Malaria`
- **Target Organism:** `Plasmodium falciparum`
- **Tags:** `P.falciparum`, `Malaria`, `Antimicrobial activity`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `1`
- **Output Consistency:** `Fixed`
- **Interpretation:** Higher score indicates Higher antimalarial potential

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| maip_score | float | high | Surrogate MAIP Score indicating antimalarial potential |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `Replicated`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos2gth](https://hub.docker.com/r/ersiliaos/eos2gth)
- **Docker Architecture:** `AMD64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2gth.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2gth.zip)

### Resource Consumption
- **Model Size (Mb):** `12`
- **Environment Size (Mb):** `1169`


### References
- **Source Code**: [https://www.ebi.ac.uk/chembl/maip/](https://www.ebi.ac.uk/chembl/maip/)
- **Publication**: [https://jcheminf.biomedcentral.com/articles/10.1186/s13321-021-00487-2](https://jcheminf.biomedcentral.com/articles/10.1186/s13321-021-00487-2)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2021`
- **Ersilia Contributor:** [miquelduranfrigola](https://github.com/miquelduranfrigola)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [None](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos2gth
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos2gth
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
