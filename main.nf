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
        path fasta_file
        val options

    output:
        path "${fasta_file}.fai"

    script:
        """
        seqkit faidx ${options} ${fasta_file} > ${fasta_file}.fai
        """
}

process SEQKIT_FQ2FA {
    // TODO : SET FIXED VERSION WHEN PIPELINE IS STABLE
    container 'ghcr.io/bwbioinfo/seqkit-docker-cwl:latest'

    input:
        path fastq_file
        val options

    output:
        path "${fastq_file.simpleName.split("\\.")[0]}.fa"

    script:
        """
        seqkit fq2fa ${options} ${fastq_file} -o ${fastq_file.simpleName.split('\\.')[0]}.fa
        """
}