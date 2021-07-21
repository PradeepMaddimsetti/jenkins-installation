    provider "aws" {
        region = "us-east-1"
        access_key = "AKIAVPGD7JQNJJFPSW3K"
        secret_key = "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"
    }
    resource "aws_vpc" "pkvpc" {
    cidr_block       = var.vpccidr

    tags = {
        Name = "lakshamana-1"
    }
    }
    resource "aws_subnet" "sub1" {
    vpc_id     = aws_vpc.pkvpc.id
    cidr_block = var.subcidr[0]

    tags = {
        Name = "lakshamana5"
    }
    }

    resource "aws_subnet" "sub2" {
    vpc_id     = aws_vpc.pkvpc.id
    cidr_block = var.subcidr[1]

    tags = {
        Name = "lakshamana6"
    }
    }

    resource "aws_subnet" "sub3" {
    vpc_id     = aws_vpc.pkvpc.id
    cidr_block = var.subcidr[2]

    tags = {
        Name = "lakshamana7"
    }
    }

    resource "aws_subnet" "sub4" {
    vpc_id     = aws_vpc.pkvpc.id
    cidr_block = var.subcidr[3]

    tags = {
        Name = "lakshamana8"
    }
    }
