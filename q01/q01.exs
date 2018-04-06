defmodule PalindromeNumber do
  def exec do
    countup(10)
  end

  defp print(num) do
    num
    |> IO.puts
  end

  defp countup(num) do
    if is_all_palindrome(num) do
      print(num)
    else
      countup(num+1)
    end
  end

  defp is_all_palindrome(num) do
    if is_binary_palindrome(num) 
      and is_octally_palindrome(num) 
      and is_decimally_palindrome(num) do
      true
    else
      false
    end
  end

  defp is_binary_palindrome(num) do
    is_reversible_list(Integer.digits(num, 2))
  end

  defp is_octally_palindrome(num) do
    is_reversible_list(Integer.digits(num, 8))
  end

  defp is_decimally_palindrome(num) do
    is_reversible_list(Integer.digits(num, 10))
  end

  defp is_reversible_list(list) do
    Enum.reverse(list) == list
  end
end

PalindromeNumber.exec
