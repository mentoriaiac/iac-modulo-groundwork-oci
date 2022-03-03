package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestGroundworkModule(t *testing.T) {
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../how-to-use-this-module",
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	output_vcn_cidr := terraform.Output(t, terraformOptions, "vcn_cidr")
	assert.Equal(t, "[10.0.0.0/16]", output_vcn_cidr)

	output_subnet_cidr := terraform.Output(t, terraformOptions, "subnet_cidr")
	assert.Equal(t, "10.0.0.0/24", output_subnet_cidr)

	output_compartment_name := terraform.Output(t, terraformOptions, "compartment_name")
	assert.Equal(t, "MentoriaIaC", output_compartment_name)
}