def ftoc(farenheit)
  return (farenheit - 32) * 5 / 9
end

def ctof(celsius)
  return (celsius.round.to_f * 9 / 5 + 32)
end

