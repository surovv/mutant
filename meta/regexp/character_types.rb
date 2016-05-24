Mutant::Meta::Example.add :regexp_word_type do
  source '/\w/'

  singleton_mutations

  # match all inputs
  mutation '//'

  # match no input
  mutation '/nomatch\A/'

  mutation '/\W/'
end

Mutant::Meta::Example.add :regexp_nonword_type do
  source '/\W/'

  singleton_mutations

  # match all inputs
  mutation '//'

  # match no input
  mutation '/nomatch\A/'

  mutation '/\w/'
end

Mutant::Meta::Example.add :regexp_digit_type do
  source '/\d/'

  singleton_mutations

  # match all inputs
  mutation '//'

  # match no input
  mutation '/nomatch\A/'

  mutation '/\D/'
end

Mutant::Meta::Example.add :regexp_nondigit_type do
  source '/\D/'

  singleton_mutations

  # match all inputs
  mutation '//'

  # match no input
  mutation '/nomatch\A/'

  mutation '/\d/'
end

Mutant::Meta::Example.add :regexp_space_type do
  source '/\s/'

  singleton_mutations

  # match all inputs
  mutation '//'

  # match no input
  mutation '/nomatch\A/'

  mutation '/\S/'
end

Mutant::Meta::Example.add :regexp_nonspace_type do
  source '/\S/'

  singleton_mutations

  # match all inputs
  mutation '//'

  # match no input
  mutation '/nomatch\A/'

  mutation '/\s/'
end

Mutant::Meta::Example.add :regexp_word_boundary_anchor do
  source '/\b/'

  singleton_mutations

  # match all inputs
  mutation '//'

  # match no input
  mutation '/nomatch\A/'

  mutation '/\B/'
end

Mutant::Meta::Example.add :regexp_nonword_boundary_anchor do
  source '/\B/'

  singleton_mutations

  # match all inputs
  mutation '//'

  # match no input
  mutation '/nomatch\A/'

  mutation '/\b/'
end
