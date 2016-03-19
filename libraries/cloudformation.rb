require File.join(File.dirname(__FILE__), 'ec2')

module Opscode
  module Aws
    module CloudFormation
      include Opscode::Aws::Ec2

      def cfn
        @cfn ||= create_aws_interface(::Aws::CloudFormation::Client)
      end
    end
  end
end
