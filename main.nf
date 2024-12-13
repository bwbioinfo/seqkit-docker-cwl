process SEQKIT_STATS {
    // TODO : SET FIXED VERSION WHEN PIPELINE IS STABLE
    container 'ghcr.io/bwbioinfo/seqkit-docker-cwl:latest'

    input:
        path fastx_file
        val options

    script:
        """
        seqkit stats ${options} ${fastx_file} 
        """
}

process SEQKIT_INDEX {
    // TODO : SET FIXED VERSION WHEN PIPELINE IS STABLE
    container 'ghcr.io/bwbioinfo/seqkit-docker-cwl:latest'

    input:
        path fastx_file
        val options

    script:
        """
        seqkit faidx ${options} ${fastx_file} 
        """
}