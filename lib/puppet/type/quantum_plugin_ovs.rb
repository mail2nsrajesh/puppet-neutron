Puppet::Type.newtype(:quantum_plugin_os) do

  ensurable

  newparam(:name, :namevar => true) do
    desc 'Section/setting name to manage from ovs_quantum_plugin.ini'
    newvalues(/\S+\/\S+/)
  end

  newproperty(:value) do
    desc 'The value of the setting to be defined.'
    munge do |v|
      v.to_s.strip
    end
  end
end