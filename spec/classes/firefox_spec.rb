require 'spec_helper'

describe 'mozilla::firefox' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|

      let(:facts) do
        facts
      end

      context "on #{os}"do
        it { is_expected.to compile.with_all_deps }
        it { is_expected.to create_class('mozilla::firefox') }
        it { is_expected.to contain_package('firefox.x86_64') }
      end
    end
  end
end
