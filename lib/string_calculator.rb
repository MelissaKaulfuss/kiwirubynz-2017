class StringCalculator
  def add(*args)
    if args.compact.empty?
      0
    else
      args.inject(0) { | sum, arg | sum += arg.to_i  }
    end
  end
end