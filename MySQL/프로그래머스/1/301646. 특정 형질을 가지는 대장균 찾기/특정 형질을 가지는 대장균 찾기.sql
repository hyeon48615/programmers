select count(*) AS COUNT
from ecoli_data
where genotype & 2 = 0
and genotype & 5 > 0;
# and (genotype & 1 > 0 or genotype & 4 > 0)

# 형질 = 비트
# & 연산자 : 두 숫자에 대응되는 비트가 1일 떄, 결과가 1
# genotype & 2 = 0, genotype 에 0010 없는 경우
# genotype & 1 > 0, genotype 에 0001 이상인 경우
# genotype & 4 > 0, genotype 에 0100 이상인 경우

# genotype & 1 > 0 을 쓰는 이유,
# > 0 을 쓰나 = 1 을 쓰나 같은 의미
# > 0 을 쓸 경우, 논리적으로 확장 가능하고 가독성이 좋다.
# 따라서 비트 연산 결과를 비교할 때 > 0 을 선호한다.

# genotype & 3 > 0 을 사용하면, 
# 0011 => 0001, 0010, 0011 을 찾음

# 즉, genotype & 5 > 0 를 사용하면
# 0101 => 1형질 또는 3형질을 가진 경우를 모두 찾을 수 있음

# 예, 0001 & 0101 = 0001, 1101 & 0101 = 0101
# genotype & 5 = 1 로 설정했다면, 두 번째 값은 찾아내지 못했을 것