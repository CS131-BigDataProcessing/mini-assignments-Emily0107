#! /usr/bin/env nextflow

process convertToUpperCase {
    input:
    val inputString

    output:
    val outputString

    script:
    outputString = inputString.toUpperCase()
    """
    echo $outputString
    """
}

workflow {
    inputString = params.inputString
    convertToUpperCase(inputString)
}


