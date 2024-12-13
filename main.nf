process SEQKIT_STATS {
    // TODO : SET FIXED VERSION WHEN PIPELINE IS STABLE
    container 'ghcr.io/bwbioinfo/seqkit-docker-cwl:latest'

    input:
        path fastx_file
        val options

    output:
        path 'stats.txt'

    script:
        """
        seqkit stats ${options} ${fastx_file} > stats.txt
        """
}

process SEQKIT_INDEX {
    // TODO : SET FIXED VERSION WHEN PIPELINE IS STABLE
    container 'ghcr.io/bwbioinfo/seqkit-docker-cwl:latest'

    input:
        path fastx_file
        val options

    output:
        path 'stats.txt'

    script:
        """
        seqkit faidx ${options} ${fastx_file} 
        """
}