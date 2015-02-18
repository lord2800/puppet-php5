Facter.add(:php_version) do
  confine :kernel => :Linux

  if File.executable?("/usr/bin/php")
    setcode '/usr/bin/php -r "echo phpversion();"'
  end
end
