Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_cpuinfo?download=true
inline.NumInlined: 27
inline.NumDeleted: 11
begin_hunk_0_@SDL_GetCPUFeatures:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4
  call void asm "        pushfq                      # Get original EFLAGS             \0A        popq    %rax                                                 \0A        movq    %rax,%rcx                                           \0A        xorl    $$0x200000,%eax     # Flip ID bit in EFLAGS           \0A        pushq   %rax               # Save new EFLAGS value on stack  \0A        popfq                       # Replace current EFLAGS value    \0A        pushfq                      # Get new EFLAGS                  \0A        popq    %rax               # Store new EFLAGS in EAX         \0A        xorl    %ecx,%eax         # Can not toggle ID bit,          \0A        jz      1f                  # Processor=80486                 \0A        movl    $$1,$0               # We have CPUID support           \0A1:                                                                    \0A", "=*m,~{rax},~{rcx},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.b) #8, !srcloc !3
  %i.e = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %CPU_calcCPUIDFeatures.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call { i32, i32, i32, i32 } asm sideeffect "        pushq %rbx        \0A        xorq %rcx,%rcx   \0A        cpuid              \0A        movq %rbx, %rsi  \0A        popq %rbx         \0A", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #8, !srcloc !4
  %i.g = extractvalue { i32, i32, i32, i32 } %i.f, 0 ; 2 uses
  store i32 %i.g, ptr @CPU_CPUIDMaxFunction, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %CPU_calcCPUIDFeatures.exit

bb.e:                                             ; preds = %bb.d
  %i.i = call { i32, i32, i32, i32 } asm sideeffect "        pushq %rbx        \0A        xorq %rcx,%rcx   \0A        cpuid              \0A        movq %rbx, %rsi  \0A        popq %rbx         \0A", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #8, !srcloc !5 ; 2 uses
  %i.j = extractvalue { i32, i32, i32, i32 } %i.i, 2 ; 2 uses
  %i.k = extractvalue { i32, i32, i32, i32 } %i.i, 3
  store i32 %i.j, ptr @CPU_CPUIDFeatures.2, align 8
  store i32 %i.k, ptr @CPU_CPUIDFeatures.3, align 4
  %i.l = and i32 %i.j, 134217728
  %.not8.i = icmp eq i32 %i.l, 0
  br i1 %.not8.i, label %CPU_calcCPUIDFeatures.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 asm ".byte 0x0f, 0x01, 0xd0", "={ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !srcloc !6 ; 2 uses
  %i.n = and i32 %i.m, 6
  %i.o = icmp eq i32 %i.n, 6
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr @CPU_OSSavesYMM, align 1
  %i.q = and i32 %i.m, 230
  %i.r = icmp eq i32 %i.q, 230
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr @CPU_OSSavesZMM, align 1
  br label %CPU_calcCPUIDFeatures.exit

CPU_calcCPUIDFeatures.exit:                       ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  store i32 0, ptr @SDL_CPUFeatures, align 4
  store i32 8, ptr @SDL_SIMDAlignment, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i32 %.0..0..0..0..0..0..i, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %CPU_calcCPUIDFeatures.exit
  store i32 1, ptr @SDL_CPUFeatures, align 4
  store i32 16, ptr @SDL_SIMDAlignment, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %CPU_calcCPUIDFeatures.exit
  %i.t = phi i32 [ 16, %bb.g ], [ 8, %CPU_calcCPUIDFeatures.exit ]
  %i.u = phi i32 [ 1, %bb.g ], [ 0, %CPU_calcCPUIDFeatures.exit ] ; 2 uses
  %i.v = load i32, ptr @CPU_CPUIDFeatures.3, align 4 ; 3 uses
  %i.w = and i32 %i.v, 8388608
  %.not1 = icmp eq i32 %i.w, 0
  br i1 %.not1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = or disjoint i32 %i.u, 2                  ; 2 uses
  store i32 %i.x, ptr @SDL_CPUFeatures, align 4
  store i32 %i.t, ptr @SDL_SIMDAlignment, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = phi i32 [ %i.x, %bb.i ], [ %i.u, %bb.h ] ; 2 uses
  %i.z = and i32 %i.v, 33554432
  %.not2 = icmp eq i32 %i.z, 0
  br i1 %.not2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = or i32 %i.y, 4                          ; 2 uses
  store i32 %i.aa, ptr @SDL_CPUFeatures, align 4
  store i32 16, ptr @SDL_SIMDAlignment, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = phi i32 [ %i.aa, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  %i.ac = and i32 %i.v, 67108864
  %.not3 = icmp eq i32 %i.ac, 0
  br i1 %.not3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = or i32 %i.ab, 8                         ; 2 uses
  store i32 %i.ad, ptr @SDL_CPUFeatures, align 4
  store i32 16, ptr @SDL_SIMDAlignment, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = phi i32 [ %i.ad, %bb.m ], [ %i.ab, %bb.l ] ; 2 uses
  %i.af = load i32, ptr @CPU_CPUIDFeatures.2, align 8 ; 4 uses
  %i.ag = and i32 %i.af, 1
  %.not4 = icmp eq i32 %i.ag, 0
  br i1 %.not4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = or i32 %i.ae, 16                        ; 2 uses
  store i32 %i.ah, ptr @SDL_CPUFeatures, align 4
  store i32 16, ptr @SDL_SIMDAlignment, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = phi i32 [ %i.ah, %bb.o ], [ %i.ae, %bb.n ] ; 2 uses
  %i.aj = and i32 %i.af, 524288
  %.not5 = icmp eq i32 %i.aj, 0
  br i1 %.not5, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = or i32 %i.ai, 32                        ; 2 uses
  store i32 %i.ak, ptr @SDL_CPUFeatures, align 4
  store i32 16, ptr @SDL_SIMDAlignment, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.al = phi i32 [ %i.ak, %bb.q ], [ %i.ai, %bb.p ] ; 2 uses
  %i.am = and i32 %i.af, 1048576
  %.not6 = icmp eq i32 %i.am, 0
  br i1 %.not6, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = or i32 %i.al, 64                        ; 2 uses
  store i32 %i.an, ptr @SDL_CPUFeatures, align 4
  store i32 16, ptr @SDL_SIMDAlignment, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ao = phi i32 [ %i.an, %bb.s ], [ %i.al, %bb.r ]
  %i.ap = load i8, ptr @CPU_OSSavesYMM, align 1, !range !11, !noundef !12
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.u, label %CPU_haveAVX2.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ar = and i32 %i.af, 268435456
  %.not7 = icmp eq i32 %i.ar, 0
  br i1 %.not7, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = or i32 %i.ao, 128
  store i32 %i.as, ptr @SDL_CPUFeatures, align 4
  store i32 32, ptr @SDL_SIMDAlignment, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.at = load i32, ptr @CPU_CPUIDMaxFunction, align 4
  %i.au = icmp sgt i32 %i.at, 6
  br i1 %i.au, label %CPU_haveAVX2.exit, label %CPU_haveAVX2.exit.thread

CPU_haveAVX2.exit:                                ; preds = %bb.w
  %i.av = call { i32, i32, i32, i32 } asm sideeffect "        pushq %rbx        \0A        xorq %rcx,%rcx   \0A        cpuid              \0A        movq %rbx, %rsi  \0A        popq %rbx         \0A", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 7) #8, !srcloc !13
  %i.aw = extractvalue { i32, i32, i32, i32 } %i.av, 1
  %i.ax = and i32 %i.aw, 32
  %.not8 = icmp eq i32 %i.ax, 0
  br i1 %.not8, label %CPU_haveAVX2.exit.thread, label %bb.x

bb.x:                                             ; preds = %CPU_haveAVX2.exit
  %i.ay = load i32, ptr @SDL_CPUFeatures, align 4
  %i.az = or i32 %i.ay, 256
  store i32 %i.az, ptr @SDL_CPUFeatures, align 4
  %i.ba = load i32, ptr @SDL_SIMDAlignment, align 4
  %i.bb = call i32 @llvm.umax.i32(i32 %i.ba, i32 32)
  store i32 %i.bb, ptr @SDL_SIMDAlignment, align 4
  br label %CPU_haveAVX2.exit.thread

CPU_haveAVX2.exit.thread:                         ; preds = %bb.t, %bb.w, %bb.x, %CPU_haveAVX2.exit
  %i.bc = load i8, ptr @CPU_OSSavesZMM, align 1, !range !11, !noundef !12
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i32, ptr @CPU_CPUIDMaxFunction, align 4
  %i.bf = icmp sgt i32 %i.be, 6
  %or.cond.i10 = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond.i10, label %CPU_haveAVX512F.exit, label %CPU_haveAVX512F.exit.thread

CPU_haveAVX512F.exit:                             ; preds = %CPU_haveAVX2.exit.thread
  %i.bg = call { i32, i32, i32, i32 } asm sideeffect "        pushq %rbx        \0A        xorq %rcx,%rcx   \0A        cpuid              \0A        movq %rbx, %rsi  \0A        popq %rbx         \0A", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 7) #8, !srcloc !14
  %i.bh = extractvalue { i32, i32, i32, i32 } %i.bg, 1
  %i.bi = and i32 %i.bh, 65536
  %.not9 = icmp eq i32 %i.bi, 0
  br i1 %.not9, label %CPU_haveAVX512F.exit.thread, label %bb.y

bb.y:                                             ; preds = %CPU_haveAVX512F.exit
  %i.bj = load i32, ptr @SDL_CPUFeatures, align 4
  %i.bk = or i32 %i.bj, 1024
  store i32 %i.bk, ptr @SDL_CPUFeatures, align 4
  %i.bl = load i32, ptr @SDL_SIMDAlignment, align 4
  %i.bm = call i32 @llvm.umax.i32(i32 %i.bl, i32 64)
  store i32 %i.bm, ptr @SDL_SIMDAlignment, align 4
  br label %CPU_haveAVX512F.exit.thread

CPU_haveAVX512F.exit.thread:                      ; preds = %CPU_haveAVX2.exit.thread, %bb.y, %CPU_haveAVX512F.exit
  %i.bn = call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.9) #8 ; 3 uses
  %.not.i12 = icmp eq ptr %i.bn, null
  br i1 %.not.i12, label %SDL_CPUFeatureMaskFromHint.exit, label %.preheader.i

.preheader.i:                                     ; preds = %CPU_haveAVX512F.exit.thread
  %i.bo = load i8, ptr %i.bn, align 1
  %.not5979.i = icmp eq i8 %i.bo, 0
  br i1 %.not5979.i, label %SDL_CPUFeatureMaskFromHint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %ref_string_equals.exit.thread
  %.081.i = phi i32 [ %.2.i, %ref_string_equals.exit.thread ], [ -1, %.preheader.i ] ; 5 uses
  %.05480.i = phi ptr [ %.053.i, %ref_string_equals.exit.thread ], [ %i.bn, %.preheader.i ] ; 7 uses
  %i.bp = call ptr @SDL_strchr_REAL(ptr noundef nonnull %.05480.i, i32 noundef 44) #8 ; 3 uses
  %.not60.i = icmp eq ptr %i.bp, null
  br i1 %.not60.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i
  %i.br = call i64 @SDL_strlen_REAL(ptr noundef nonnull %.05480.i) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %.05480.i, i64 %i.br ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.053.i = phi ptr [ %i.bq, %bb.z ], [ %i.bs, %bb.aa ] ; 2 uses
  %.052.i = phi ptr [ %i.bp, %bb.z ], [ %i.bs, %bb.aa ]
  %i.bt = load i8, ptr %.05480.i, align 1
  switch i8 %i.bt, label %bb.ae [
    i8 43, label %bb.ac
    i8 45, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %.05480.i, i64 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %.05480.i, i64 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.155.i = phi ptr [ %i.bu, %bb.ac ], [ %i.bv, %bb.ad ], [ %.05480.i, %bb.ab ] ; 31 uses
  %.050.i = phi i1 [ true, %bb.ac ], [ false, %bb.ad ], [ true, %bb.ab ]
  %i.bw = ptrtoint ptr %.052.i to i64
  %i.bx = ptrtoint ptr %.155.i to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 45 uses
  %i.bz = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.10, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %0, label %ref_string_equals.exit.thread.i

0:                                                ; preds = %bb.ae
  %1 = getelementptr inbounds nuw i8, ptr @.str.10, i64 %i.by
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %ref_string_equals.exit.i, label %ref_string_equals.exit.thread.i

ref_string_equals.exit.i:                         ; preds = %0
  %4 = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %5 = load i8, ptr %4, align 1
  switch i8 %5, label %ref_string_equals.exit.thread.i [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit.thread.i:                  ; preds = %ref_string_equals.exit.i, %0, %bb.ae
  %6 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %ref_string_equals.exit62.thread.i

8:                                                ; preds = %ref_string_equals.exit.thread.i
  %9 = getelementptr inbounds nuw i8, ptr @.str.11, i64 %i.by
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %ref_string_equals.exit62.i.a, label %ref_string_equals.exit62.thread.i

ref_string_equals.exit62.i.a:                     ; preds = %8
  %i.cb = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.cc = load i8, ptr %i.cb, align 1
  switch i8 %i.cc, label %ref_string_equals.exit62.thread.i [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit62.thread.i:                ; preds = %ref_string_equals.exit62.i.a, %8, %ref_string_equals.exit.thread.i
  %12 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.12, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %bb.af, label %ref_string_equals.exit64.thread.i.a

bb.af:                                            ; preds = %ref_string_equals.exit62.thread.i
  %14 = getelementptr inbounds nuw i8, ptr @.str.12, i64 %i.by
  %15 = load i8, ptr %14, align 1
  %i.cd = icmp eq i8 %15, 0
  br i1 %i.cd, label %ref_string_equals.exit64.i.a, label %ref_string_equals.exit64.thread.i.a

ref_string_equals.exit64.i.a:                     ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.cf = load i8, ptr %i.ce, align 1
  switch i8 %i.cf, label %ref_string_equals.exit64.thread.i.a [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit64.thread.i.a:              ; preds = %ref_string_equals.exit64.i.a, %bb.af, %ref_string_equals.exit62.thread.i
  %i.cg = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.13, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %16 = icmp eq i32 %i.cg, 0
  br i1 %16, label %bb.ag, label %ref_string_equals.exit66.thread.i

bb.ag:                                            ; preds = %ref_string_equals.exit64.thread.i.a
  %17 = getelementptr inbounds nuw i8, ptr @.str.13, i64 %i.by
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %ref_string_equals.exit66.i.a, label %ref_string_equals.exit66.thread.i

ref_string_equals.exit66.i.a:                     ; preds = %bb.ag
  %i.ch = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.ci = load i8, ptr %i.ch, align 1
  switch i8 %i.ci, label %ref_string_equals.exit66.thread.i [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit66.thread.i:                ; preds = %ref_string_equals.exit66.i.a, %bb.ag, %ref_string_equals.exit64.thread.i.a
  %20 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.14, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %bb.ah, label %ref_string_equals.exit68.thread.i

bb.ah:                                            ; preds = %ref_string_equals.exit66.thread.i
  %22 = getelementptr inbounds nuw i8, ptr @.str.14, i64 %i.by
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %ref_string_equals.exit68.i.a, label %ref_string_equals.exit68.thread.i

ref_string_equals.exit68.i.a:                     ; preds = %bb.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.ck = load i8, ptr %i.cj, align 1
  switch i8 %i.ck, label %ref_string_equals.exit68.thread.i [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit68.thread.i:                ; preds = %ref_string_equals.exit68.i.a, %bb.ah, %ref_string_equals.exit66.thread.i
  %25 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.15, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %bb.ai, label %ref_string_equals.exit70.thread.i

bb.ai:                                            ; preds = %ref_string_equals.exit68.thread.i
  %27 = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.by
  %28 = load i8, ptr %27, align 1
  %i.cl = icmp eq i8 %28, 0
  br i1 %i.cl, label %ref_string_equals.exit70.i.a, label %ref_string_equals.exit70.thread.i

ref_string_equals.exit70.i.a:                     ; preds = %bb.ai
  %i.cm = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.cn = load i8, ptr %i.cm, align 1
  switch i8 %i.cn, label %ref_string_equals.exit70.thread.i [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit70.thread.i:                ; preds = %ref_string_equals.exit70.i.a, %bb.ai, %ref_string_equals.exit68.thread.i
  %29 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %bb.aj, label %ref_string_equals.exit72.thread.i

bb.aj:                                            ; preds = %ref_string_equals.exit70.thread.i
  %31 = getelementptr inbounds nuw i8, ptr @.str.16, i64 %i.by
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %ref_string_equals.exit72.i.a, label %ref_string_equals.exit72.thread.i

ref_string_equals.exit72.i.a:                     ; preds = %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.cp = load i8, ptr %i.co, align 1
  switch i8 %i.cp, label %ref_string_equals.exit72.thread.i [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit72.thread.i:                ; preds = %ref_string_equals.exit72.i.a, %bb.aj, %ref_string_equals.exit70.thread.i
  %34 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.17, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %bb.ak, label %ref_string_equals.exit74.thread.i

bb.ak:                                            ; preds = %ref_string_equals.exit72.thread.i
  %36 = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.by
  %37 = load i8, ptr %36, align 1
  %i.cq = icmp eq i8 %37, 0
  br i1 %i.cq, label %ref_string_equals.exit74.i.a, label %ref_string_equals.exit74.thread.i

ref_string_equals.exit74.i.a:                     ; preds = %bb.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.cs = load i8, ptr %i.cr, align 1
  switch i8 %i.cs, label %ref_string_equals.exit74.thread.i [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit74.thread.i:                ; preds = %ref_string_equals.exit74.i.a, %bb.ak, %ref_string_equals.exit72.thread.i
  %38 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.18, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %bb.al, label %ref_string_equals.exit76.thread.i.a

bb.al:                                            ; preds = %ref_string_equals.exit74.thread.i
  %40 = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.by
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %ref_string_equals.exit76.i.a, label %ref_string_equals.exit76.thread.i.a

ref_string_equals.exit76.i.a:                     ; preds = %bb.al
  %i.ct = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.cu = load i8, ptr %i.ct, align 1
  switch i8 %i.cu, label %ref_string_equals.exit76.thread.i.a [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit76.thread.i.a:              ; preds = %ref_string_equals.exit76.i.a, %bb.al, %ref_string_equals.exit74.thread.i
  %i.cv = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.19, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %43 = icmp eq i32 %i.cv, 0
  br i1 %43, label %bb.am, label %ref_string_equals.exit78.thread.i.a

bb.am:                                            ; preds = %ref_string_equals.exit76.thread.i.a
  %44 = getelementptr inbounds nuw i8, ptr @.str.19, i64 %i.by
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %ref_string_equals.exit78.i.a, label %ref_string_equals.exit78.thread.i.a

ref_string_equals.exit78.i.a:                     ; preds = %bb.am
  %i.cw = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.cx = load i8, ptr %i.cw, align 1
  switch i8 %i.cx, label %ref_string_equals.exit78.thread.i.a [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit78.thread.i.a:              ; preds = %ref_string_equals.exit78.i.a, %bb.am, %ref_string_equals.exit76.thread.i.a
  %i.cy = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.20, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %47 = icmp eq i32 %i.cy, 0
  br i1 %47, label %bb.an, label %ref_string_equals.exit20.thread

bb.an:                                            ; preds = %ref_string_equals.exit78.thread.i.a
  %48 = getelementptr inbounds nuw i8, ptr @.str.20, i64 %i.by
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %ref_string_equals.exit20, label %ref_string_equals.exit20.thread

ref_string_equals.exit20:                         ; preds = %bb.an
  %i.cz = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.da = load i8, ptr %i.cz, align 1
  switch i8 %i.da, label %ref_string_equals.exit20.thread [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit20.thread:                  ; preds = %ref_string_equals.exit20, %ref_string_equals.exit78.thread.i.a, %bb.an
  %i.db = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.21, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %51 = icmp eq i32 %i.db, 0
  br i1 %51, label %bb.ao, label %ref_string_equals.exit18.thread

bb.ao:                                            ; preds = %ref_string_equals.exit20.thread
  %52 = getelementptr inbounds nuw i8, ptr @.str.21, i64 %i.by
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %ref_string_equals.exit18, label %ref_string_equals.exit18.thread

ref_string_equals.exit18:                         ; preds = %bb.ao
  %i.dc = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.dd = load i8, ptr %i.dc, align 1
  switch i8 %i.dd, label %ref_string_equals.exit18.thread [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit18.thread:                  ; preds = %ref_string_equals.exit18, %ref_string_equals.exit20.thread, %bb.ao
  %55 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.22, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %bb.ap, label %ref_string_equals.exit16.thread

bb.ap:                                            ; preds = %ref_string_equals.exit18.thread
  %57 = getelementptr inbounds nuw i8, ptr @.str.22, i64 %i.by
  %58 = load i8, ptr %57, align 1
  %i.de = icmp eq i8 %58, 0
  br i1 %i.de, label %ref_string_equals.exit16, label %ref_string_equals.exit16.thread

ref_string_equals.exit16:                         ; preds = %bb.ap
  %i.df = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.dg = load i8, ptr %i.df, align 1
  switch i8 %i.dg, label %ref_string_equals.exit16.thread [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit16.thread:                  ; preds = %ref_string_equals.exit16, %ref_string_equals.exit18.thread, %bb.ap
  %i.dh = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.23, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %59 = icmp eq i32 %i.dh, 0
  br i1 %59, label %bb.aq, label %ref_string_equals.exit14.thread

bb.aq:                                            ; preds = %ref_string_equals.exit16.thread
  %60 = getelementptr inbounds nuw i8, ptr @.str.23, i64 %i.by
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %ref_string_equals.exit14, label %ref_string_equals.exit14.thread

ref_string_equals.exit14:                         ; preds = %bb.aq
  %i.di = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %i.dj = load i8, ptr %i.di, align 1
  switch i8 %i.dj, label %ref_string_equals.exit14.thread [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

ref_string_equals.exit14.thread:                  ; preds = %ref_string_equals.exit14, %ref_string_equals.exit16.thread, %bb.aq
  %63 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.24, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %bb.ar, label %ref_string_equals.exit.thread

bb.ar:                                            ; preds = %ref_string_equals.exit14.thread
  %65 = getelementptr inbounds nuw i8, ptr @.str.24, i64 %i.by
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %ref_string_equals.exit, label %ref_string_equals.exit.thread

ref_string_equals.exit:                           ; preds = %bb.ar
  %68 = getelementptr inbounds nuw i8, ptr %.155.i, i64 %i.by
  %69 = load i8, ptr %68, align 1
  switch i8 %69, label %ref_string_equals.exit.thread [
    i8 44, label %bb.as
    i8 0, label %bb.as
  ]

bb.as:                                            ; preds = %ref_string_equals.exit, %ref_string_equals.exit, %ref_string_equals.exit14, %ref_string_equals.exit14, %ref_string_equals.exit16, %ref_string_equals.exit16, %ref_string_equals.exit18, %ref_string_equals.exit18, %ref_string_equals.exit20, %ref_string_equals.exit20, %ref_string_equals.exit78.i.a, %ref_string_equals.exit78.i.a, %ref_string_equals.exit76.i.a, %ref_string_equals.exit76.i.a, %ref_string_equals.exit74.i.a, %ref_string_equals.exit74.i.a, %ref_string_equals.exit72.i.a, %ref_string_equals.exit72.i.a, %ref_string_equals.exit70.i.a, %ref_string_equals.exit70.i.a, %ref_string_equals.exit68.i.a, %ref_string_equals.exit68.i.a, %ref_string_equals.exit66.i.a, %ref_string_equals.exit66.i.a, %ref_string_equals.exit64.i.a, %ref_string_equals.exit64.i.a, %ref_string_equals.exit62.i.a, %ref_string_equals.exit62.i.a, %ref_string_equals.exit.i, %ref_string_equals.exit.i
  %.051.i = phi i32 [ 4096, %ref_string_equals.exit14 ], [ -1, %ref_string_equals.exit.i ], [ 1, %ref_string_equals.exit62.i.a ], [ 2, %ref_string_equals.exit64.i.a ], [ 4, %ref_string_equals.exit66.i.a ], [ 8, %ref_string_equals.exit68.i.a ], [ 16, %ref_string_equals.exit70.i.a ], [ 32, %ref_string_equals.exit72.i.a ], [ 64, %ref_string_equals.exit74.i.a ], [ 128, %ref_string_equals.exit76.i.a ], [ 256, %ref_string_equals.exit78.i.a ], [ 1024, %ref_string_equals.exit20 ], [ 2048, %ref_string_equals.exit18 ], [ 512, %ref_string_equals.exit16 ], [ 8192, %ref_string_equals.exit ], [ -1, %ref_string_equals.exit.i ], [ 1, %ref_string_equals.exit62.i.a ], [ 2, %ref_string_equals.exit64.i.a ], [ 4, %ref_string_equals.exit66.i.a ], [ 8, %ref_string_equals.exit68.i.a ], [ 16, %ref_string_equals.exit70.i.a ], [ 32, %ref_string_equals.exit72.i.a ], [ 64, %ref_string_equals.exit74.i.a ], [ 128, %ref_string_equals.exit76.i.a ], [ 256, %ref_string_equals.exit78.i.a ], [ 1024, %ref_string_equals.exit20 ], [ 2048, %ref_string_equals.exit18 ], [ 512, %ref_string_equals.exit16 ], [ 4096, %ref_string_equals.exit14 ], [ 8192, %ref_string_equals.exit ] ; 2 uses
  %i.dk = or i32 %.051.i, %.081.i
  %i.dl = xor i32 %.051.i, -1
  %i.dm = and i32 %.081.i, %i.dl
  %.1.i = select i1 %.050.i, i32 %i.dk, i32 %i.dm
  br label %ref_string_equals.exit.thread

ref_string_equals.exit.thread:                    ; preds = %ref_string_equals.exit, %ref_string_equals.exit14.thread, %bb.ar, %bb.as
  %.2.i = phi i32 [ %.1.i, %bb.as ], [ %.081.i, %ref_string_equals.exit ], [ %.081.i, %bb.ar ], [ %.081.i, %ref_string_equals.exit14.thread ] ; 2 uses
  %i.dn = load i8, ptr %.053.i, align 1
  %.not59.i = icmp eq i8 %i.dn, 0
  br i1 %.not59.i, label %SDL_CPUFeatureMaskFromHint.exit, label %.lr.ph.i, !llvm.loop !10

SDL_CPUFeatureMaskFromHint.exit:                  ; preds = %ref_string_equals.exit.thread, %CPU_haveAVX512F.exit.thread, %.preheader.i
  %.3.i = phi i32 [ -1, %CPU_haveAVX512F.exit.thread ], [ -1, %.preheader.i ], [ %.2.i, %ref_string_equals.exit.thread ]
  %i.do = load i32, ptr @SDL_CPUFeatures, align 4
  %i.dp = and i32 %i.do, %.3.i                    ; 2 uses
  store i32 %i.dp, ptr @SDL_CPUFeatures, align 4
  br label %bb.at

bb.at:                                            ; preds = %SDL_CPUFeatureMaskFromHint.exit, %bb.a
  %i.dq = phi i32 [ %i.dp, %SDL_CPUFeatureMaskFromHint.exit ], [ %i.c, %bb.a ]
  ret i32 %i.dq
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasMMX_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 2
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasSSE_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 4
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasSSE2_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 8
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasSSE3_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 16
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasSSE41_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 32
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasSSE42_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 64
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasAVX_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 128
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasAVX2_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 256
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasAVX512F_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 1024
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasARMSIMD_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 2048
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasNEON_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 512
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasLSX_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 4096
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HasLASX_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @SDL_GetCPUFeatures()
  %i.b = and i32 %i.a, 8192
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetSystemRAM_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @SDL_SystemRAM, align 4    ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @sysconf(i32 noundef 85) #8
  %i.d = tail call i64 @sysconf(i32 noundef 30) #8
  %i.e = mul nsw i64 %i.d, %i.c
  %i.f = sdiv i64 %i.e, 1048576
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  store i32 %i.g, ptr @SDL_SystemRAM, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.g, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, -1) i32 @SDL_GetSystemPageSize_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @SDL_SystemPageSize, align 4 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @sysconf(i32 noundef 30) #8
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  store i32 %i.d, ptr @SDL_SystemPageSize, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @getpagesize() #10
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 2 uses
  store i32 %spec.store.select, ptr @SDL_SystemPageSize, align 4
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %i.g = phi i32 [ %spec.store.select, %bb.c ], [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 4294967296) i64 @SDL_GetSIMDAlignment_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @SDL_SIMDAlignment, align 4 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @SDL_GetCPUFeatures() ; 0 uses
  %.pre = load i32, ptr @SDL_SIMDAlignment, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.e = zext i32 %i.d to i64
  ret i64 %i.e
}

declare i64 @SDL_strlcpy_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @SDL_GetHint_REAL(ptr noundef) local_unnamed_addr #3

declare ptr @SDL_strchr_REAL(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @SDL_strlen_REAL(ptr noundef) local_unnamed_addr #3

declare i32 @SDL_strncmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{i64 5319, i64 5395, i64 5470, i64 5545, i64 5620, i64 5695, i64 5770, i64 5845, i64 5920, i64 5995, i64 6070, i64 6145}
!4 = !{i64 2147827884, i64 2147827932, i64 2147827979, i64 2147828026, i64 2147828073}
!5 = !{i64 2147828240, i64 2147828288, i64 2147828335, i64 2147828382, i64 2147828429}
!6 = !{i64 10988}
!7 = !{i64 2147829368, i64 2147829416, i64 2147829463, i64 2147829510, i64 2147829557}
!8 = !{i64 2147829831, i64 2147829879, i64 2147829926, i64 2147829973, i64 2147830020}
!9 = !{i64 2147830228, i64 2147830276, i64 2147830323, i64 2147830370, i64 2147830417}
!10 = distinct !{!10, !15}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{i64 2147828604, i64 2147828652, i64 2147828699, i64 2147828746, i64 2147828793}
!14 = !{i64 2147828960, i64 2147829008, i64 2147829055, i64 2147829102, i64 2147829149}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
