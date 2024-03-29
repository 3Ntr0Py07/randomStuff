.LC1:
        .string "Average time: "
.LC2:
        .string "Median time: "
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 152
        pxor    xmm0, xmm0
        movaps  XMMWORD PTR [rbp-112], xmm0
        movq    QWORD PTR [rbp-96], xmm0
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::vector() [complete object constructor]
        mov     DWORD PTR [rbp-20], 0
        jmp     .L14
.L17:
        call    std::chrono::_V2::system_clock::now()
        mov     QWORD PTR [rbp-128], rax
        mov     DWORD PTR [rbp-24], 0
        jmp     .L15
.L16:
        add     DWORD PTR [rbp-24], 1
.L15:
        cmp     DWORD PTR [rbp-24], 999999999
        jle     .L16
        call    std::chrono::_V2::system_clock::now()
        mov     QWORD PTR [rbp-136], rax
        lea     rdx, [rbp-128]
        lea     rax, [rbp-136]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::common_type<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::operator-<std::chrono::_V2::system_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> >, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >(std::chrono::time_point<std::chrono::_V2::system_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&, std::chrono::time_point<std::chrono::_V2::system_clock, std::chrono::duration<long, std::ratio<1l, 1000000000l> > > const&)
        mov     QWORD PTR [rbp-64], rax
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::enable_if<std::chrono::__is_duration<std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::value, std::chrono::duration<long, std::ratio<1l, 1000000000l> > >::type std::chrono::duration_cast<std::chrono::duration<long, std::ratio<1l, 1000000000l> >, long, std::ratio<1l, 1000000000l> >(std::chrono::duration<long, std::ratio<1l, 1000000000l> > const&)
        mov     QWORD PTR [rbp-72], rax
        lea     rax, [rbp-72]
        mov     rdi, rax
        call    std::chrono::duration<long, std::ratio<1l, 1000000000l> >::count() const
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, rax
        movsd   QWORD PTR [rbp-80], xmm0
        lea     rdx, [rbp-80]
        lea     rax, [rbp-112]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::push_back(double&&)
        add     DWORD PTR [rbp-20], 1
.L14:
        cmp     DWORD PTR [rbp-20], 99
        jle     .L17
        pxor    xmm0, xmm0
        movsd   QWORD PTR [rbp-32], xmm0
        lea     rax, [rbp-112]
        mov     QWORD PTR [rbp-40], rax
        mov     rax, QWORD PTR [rbp-40]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::begin()
        mov     QWORD PTR [rbp-144], rax
        mov     rax, QWORD PTR [rbp-40]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::end()
        mov     QWORD PTR [rbp-152], rax
        jmp     .L18
.L19:
        lea     rax, [rbp-144]
        mov     rdi, rax
        call    __gnu_cxx::__normal_iterator<double*, std::vector<double, std::allocator<double> > >::operator*() const
        movsd   xmm0, QWORD PTR [rax]
        movsd   QWORD PTR [rbp-56], xmm0
        movsd   xmm0, QWORD PTR [rbp-32]
        addsd   xmm0, QWORD PTR [rbp-56]
        movsd   QWORD PTR [rbp-32], xmm0
        lea     rax, [rbp-144]
        mov     rdi, rax
        call    __gnu_cxx::__normal_iterator<double*, std::vector<double, std::allocator<double> > >::operator++()
.L18:
        lea     rdx, [rbp-152]
        lea     rax, [rbp-144]
        mov     rsi, rdx
        mov     rdi, rax
        call    bool __gnu_cxx::operator!=<double*, std::vector<double, std::allocator<double> > >(__gnu_cxx::__normal_iterator<double*, std::vector<double, std::allocator<double> > > const&, __gnu_cxx::__normal_iterator<double*, std::vector<double, std::allocator<double> > > const&)
        test    al, al
        jne     .L19
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::size() const
        test    rax, rax
        js      .L20
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, rax
        jmp     .L21
.L20:
        mov     rdx, rax
        shr     rdx
        and     eax, 1
        or      rdx, rax
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, rdx
        addsd   xmm0, xmm0
.L21:
        movsd   xmm1, QWORD PTR [rbp-32]
        divsd   xmm1, xmm0
        movsd   QWORD PTR [rbp-32], xmm1
        mov     esi, OFFSET FLAT:.LC1
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-32]
        movq    xmm0, rax
        mov     rdi, rdx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(double)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::size() const
        shr     rax
        mov     rdx, rax
        lea     rax, [rbp-112]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::operator[](unsigned long)
        movsd   xmm0, QWORD PTR [rax]
        movsd   QWORD PTR [rbp-48], xmm0
        mov     esi, OFFSET FLAT:.LC2
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-48]
        movq    xmm0, rax
        mov     rdi, rdx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(double)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::~vector() [complete object destructor]
        mov     eax, 0
        jmp     .L25
        mov     rbx, rax
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::vector<double, std::allocator<double> >::~vector() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L25:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC3:
        .string "vector::_M_realloc_insert"