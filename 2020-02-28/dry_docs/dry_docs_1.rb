# Calcula taxas da conta
#
# * Cada cheque retornado custa R$20,00
# * Se a conta estiver com cheque especial por mais de 3 dias,
#   cobra R$10,00 para cada dia
# * Se o saldo médio da conta for maior que R$2.000,00
#   reduz as taxas para 50%
def fees(a)
  f = 0
  if a.returned_check_count > 0
    f += 20 * a.returned_check_count
  end
  if a.overdraft_days > 3
    f += 10*a.overdraft_days
  end
  if a.average_balance > 2_000
    f /= 2
  end
  f
end
