Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_cpuinfo?download=true
inline.NumInlined: 25
inline.NumDeleted: 10
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
  %.not5988.i = icmp eq i8 %i.bo, 0
  br i1 %.not5988.i, label %SDL_CPUFeatureMaskFromHint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ah
  %.090.i = phi i32 [ %.2.i, %bb.ah ], [ -1, %.preheader.i ] ; 3 uses
  %.05489.i = phi ptr [ %.053.i, %bb.ah ], [ %i.bn, %.preheader.i ] ; 7 uses
  %i.bp = call ptr @SDL_strchr_REAL(ptr noundef nonnull %.05489.i, i32 noundef 44) #8 ; 3 uses
  %.not60.i = icmp eq ptr %i.bp, null
  br i1 %.not60.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i
  %i.br = call i64 @SDL_strlen_REAL(ptr noundef nonnull %.05489.i) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %.05489.i, i64 %i.br ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.053.i = phi ptr [ %i.bq, %bb.z ], [ %i.bs, %bb.aa ] ; 2 uses
  %.052.i = phi ptr [ %i.bp, %bb.z ], [ %i.bs, %bb.aa ] ; 3 uses
  %i.bt = load i8, ptr %.05489.i, align 1
  switch i8 %i.bt, label %bb.ae [
    i8 43, label %bb.ac
    i8 45, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %.05489.i, i64 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %.05489.i, i64 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.155.i = phi ptr [ %i.bu, %bb.ac ], [ %i.bv, %bb.ad ], [ %.05489.i, %bb.ab ] ; 35 uses
  %.050.i = phi i1 [ true, %bb.ac ], [ false, %bb.ad ], [ true, %bb.ab ]
  %i.bw = ptrtoint ptr %.052.i to i64
  %i.bx = ptrtoint ptr %.155.i to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 21 uses
  %i.bz = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.10, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %0 = icmp eq i32 %i.bz, 0
  %i.ca = icmp eq i64 %i.by, 3                    ; 4 uses
  %or.cond.i13 = and i1 %0, %i.ca
  br i1 %or.cond.i13, label %ref_string_equals.exit.i.a, label %ref_string_equals.exit.thread.i.a

ref_string_equals.exit.i.a:                       ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %.155.i, i64 3
  %i.cc = load i8, ptr %i.cb, align 1
  switch i8 %i.cc, label %ref_string_equals.exit.thread.i.a [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit.thread.i.a:                ; preds = %ref_string_equals.exit.i.a, %bb.ae
  %1 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %2 = icmp eq i32 %1, 0
  %i.cd = icmp eq i64 %i.by, 7                    ; 2 uses
  %or.cond79.i = and i1 %i.cd, %2
  br i1 %or.cond79.i, label %ref_string_equals.exit62.i, label %ref_string_equals.exit62.thread.i.a

ref_string_equals.exit62.i:                       ; preds = %ref_string_equals.exit.thread.i.a
  %i.ce = getelementptr inbounds nuw i8, ptr %.155.i, i64 7
  %i.cf = load i8, ptr %i.ce, align 1
  switch i8 %i.cf, label %ref_string_equals.exit64.thread.thread.i [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit64.thread.thread.i:         ; preds = %ref_string_equals.exit62.i
  %i.cg = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.12, ptr noundef nonnull %.155.i, i64 noundef 7) #8 ; 0 uses
  %3 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.13, ptr noundef nonnull %.155.i, i64 noundef 7) #8 ; 0 uses
  br label %ref_string_equals.exit66.thread.i.a

ref_string_equals.exit62.thread.i.a:              ; preds = %ref_string_equals.exit.thread.i.a
  %4 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.12, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %5 = icmp eq i32 %4, 0
  %or.cond80.i = and i1 %i.ca, %5
  br i1 %or.cond80.i, label %ref_string_equals.exit64.i, label %ref_string_equals.exit64.thread.i

ref_string_equals.exit64.i:                       ; preds = %ref_string_equals.exit62.thread.i.a
  %i.ch = getelementptr inbounds nuw i8, ptr %.155.i, i64 3
  %i.ci = load i8, ptr %i.ch, align 1
  switch i8 %i.ci, label %ref_string_equals.exit64.thread.i [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit64.thread.i:                ; preds = %ref_string_equals.exit64.i, %ref_string_equals.exit62.thread.i.a
  %6 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.13, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %7 = icmp eq i32 %6, 0
  %or.cond81.i = and i1 %i.ca, %7
  br i1 %or.cond81.i, label %ref_string_equals.exit66.i, label %ref_string_equals.exit66.thread.i.a

ref_string_equals.exit66.i:                       ; preds = %ref_string_equals.exit64.thread.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.155.i, i64 3
  %i.ck = load i8, ptr %i.cj, align 1
  switch i8 %i.ck, label %ref_string_equals.exit66.thread.i.a [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit66.thread.i.a:              ; preds = %ref_string_equals.exit66.i, %ref_string_equals.exit64.thread.i, %ref_string_equals.exit64.thread.thread.i
  %8 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.14, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %9 = icmp eq i32 %8, 0
  %i.cl = icmp eq i64 %i.by, 4                    ; 4 uses
  %or.cond82.i = and i1 %i.cl, %9
  br i1 %or.cond82.i, label %ref_string_equals.exit68.i, label %ref_string_equals.exit68.thread.i.a

ref_string_equals.exit68.i:                       ; preds = %ref_string_equals.exit66.thread.i.a
  %i.cm = getelementptr inbounds nuw i8, ptr %.155.i, i64 4
  %i.cn = load i8, ptr %i.cm, align 1
  switch i8 %i.cn, label %ref_string_equals.exit68.thread.i.a [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit68.thread.i.a:              ; preds = %ref_string_equals.exit68.i, %ref_string_equals.exit66.thread.i.a
  %10 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.15, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %11 = icmp eq i32 %10, 0
  %or.cond83.i = and i1 %i.cl, %11
  br i1 %or.cond83.i, label %ref_string_equals.exit70.i, label %ref_string_equals.exit70.thread.i.a

ref_string_equals.exit70.i:                       ; preds = %ref_string_equals.exit68.thread.i.a
  %i.co = getelementptr inbounds nuw i8, ptr %.155.i, i64 4
  %i.cp = load i8, ptr %i.co, align 1
  switch i8 %i.cp, label %ref_string_equals.exit70.thread.i.a [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit70.thread.i.a:              ; preds = %ref_string_equals.exit70.i, %ref_string_equals.exit68.thread.i.a
  %12 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %13 = icmp eq i32 %12, 0
  %i.cq = icmp eq i64 %i.by, 5                    ; 2 uses
  %or.cond84.i = and i1 %i.cq, %13
  br i1 %or.cond84.i, label %ref_string_equals.exit72.i, label %ref_string_equals.exit72.thread.i.a

ref_string_equals.exit72.i:                       ; preds = %ref_string_equals.exit70.thread.i.a
  %i.cr = getelementptr inbounds nuw i8, ptr %.155.i, i64 5
  %i.cs = load i8, ptr %i.cr, align 1
  switch i8 %i.cs, label %ref_string_equals.exit72.thread.i.a [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit72.thread.i.a:              ; preds = %ref_string_equals.exit72.i, %ref_string_equals.exit70.thread.i.a
  %14 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.17, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %15 = icmp eq i32 %14, 0
  %or.cond85.i = and i1 %i.cq, %15
  br i1 %or.cond85.i, label %ref_string_equals.exit74.i, label %ref_string_equals.exit74.thread.i.a

ref_string_equals.exit74.i:                       ; preds = %ref_string_equals.exit72.thread.i.a
  %i.ct = getelementptr inbounds nuw i8, ptr %.155.i, i64 5
  %i.cu = load i8, ptr %i.ct, align 1
  switch i8 %i.cu, label %ref_string_equals.exit74.thread.thread.i [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit74.thread.thread.i:         ; preds = %ref_string_equals.exit74.i
  %i.cv = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.18, ptr noundef nonnull %.155.i, i64 noundef 5) #8 ; 0 uses
  br label %ref_string_equals.exit76.thread.thread.i

ref_string_equals.exit74.thread.i.a:              ; preds = %ref_string_equals.exit72.thread.i.a
  %16 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.18, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %17 = icmp eq i32 %16, 0
  %or.cond86.i = and i1 %i.ca, %17
  br i1 %or.cond86.i, label %ref_string_equals.exit76.i, label %ref_string_equals.exit76.thread.i

ref_string_equals.exit76.i:                       ; preds = %ref_string_equals.exit74.thread.i.a
  %i.cw = getelementptr inbounds nuw i8, ptr %.155.i, i64 3
  %i.cx = load i8, ptr %i.cw, align 1
  switch i8 %i.cx, label %ref_string_equals.exit76.thread.thread.i [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit76.thread.thread.i:         ; preds = %ref_string_equals.exit76.i, %ref_string_equals.exit74.thread.thread.i
  %i.cy = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.19, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8 ; 0 uses
  br label %ref_string_equals.exit78.thread.i.thread

ref_string_equals.exit76.thread.i:                ; preds = %ref_string_equals.exit74.thread.i.a
  %18 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.19, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %19 = icmp eq i32 %18, 0
  %or.cond87.i = and i1 %i.cl, %19
  br i1 %or.cond87.i, label %ref_string_equals.exit78.i, label %ref_string_equals.exit78.thread.i

ref_string_equals.exit78.i:                       ; preds = %ref_string_equals.exit76.thread.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.155.i, i64 4
  %i.da = load i8, ptr %i.cz, align 1
  switch i8 %i.da, label %ref_string_equals.exit78.thread.i.thread [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit78.thread.i.thread:         ; preds = %ref_string_equals.exit78.i, %ref_string_equals.exit76.thread.thread.i
  %i.db = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.20, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8 ; 0 uses
  br label %ref_string_equals.exit17.thread

ref_string_equals.exit78.thread.i:                ; preds = %ref_string_equals.exit76.thread.i
  %20 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.20, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %21 = icmp eq i32 %20, 0
  %or.cond = and i1 %i.cd, %21
  br i1 %or.cond, label %ref_string_equals.exit17, label %ref_string_equals.exit17.thread

ref_string_equals.exit17:                         ; preds = %ref_string_equals.exit78.thread.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.155.i, i64 7
  %i.dd = load i8, ptr %i.dc, align 1
  switch i8 %i.dd, label %ref_string_equals.exit17.thread [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit17.thread:                  ; preds = %ref_string_equals.exit78.thread.i.thread, %ref_string_equals.exit17, %ref_string_equals.exit78.thread.i
  %22 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.21, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %23 = icmp eq i32 %22, 0
  %i.de = icmp eq i64 %i.by, 8
  %or.cond23 = and i1 %i.de, %23
  br i1 %or.cond23, label %ref_string_equals.exit15, label %ref_string_equals.exit15.thread

ref_string_equals.exit15:                         ; preds = %ref_string_equals.exit17.thread
  %i.df = getelementptr inbounds nuw i8, ptr %.155.i, i64 8
  %i.dg = load i8, ptr %i.df, align 1
  switch i8 %i.dg, label %ref_string_equals.exit15.thread.thread [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit15.thread.thread:           ; preds = %ref_string_equals.exit15
  %i.dh = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.22, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8 ; 0 uses
  br label %ref_string_equals.exit.thread.a

ref_string_equals.exit15.thread:                  ; preds = %ref_string_equals.exit17.thread
  %24 = call i32 @SDL_strncmp_REAL(ptr noundef nonnull @.str.22, ptr noundef nonnull %.155.i, i64 noundef %i.by) #8
  %25 = icmp eq i32 %24, 0
  %or.cond24 = and i1 %i.cl, %25
  br i1 %or.cond24, label %ref_string_equals.exit.a, label %ref_string_equals.exit.thread.a

ref_string_equals.exit.a:                         ; preds = %ref_string_equals.exit15.thread
  %i.di = getelementptr inbounds nuw i8, ptr %.155.i, i64 4
  %i.dj = load i8, ptr %i.di, align 1
  switch i8 %i.dj, label %ref_string_equals.exit.thread.a [
    i8 44, label %bb.ag
    i8 0, label %bb.ag
  ]

ref_string_equals.exit.thread.a:                  ; preds = %ref_string_equals.exit15.thread.thread, %ref_string_equals.exit.a, %ref_string_equals.exit15.thread
  %26 = call fastcc zeroext i1 @ref_string_equals(ptr noundef nonnull @.str.23, ptr noundef %.155.i, ptr noundef %.052.i)
  br i1 %26, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %ref_string_equals.exit.thread.a
  %27 = call fastcc zeroext i1 @ref_string_equals(ptr noundef nonnull @.str.24, ptr noundef %.155.i, ptr noundef %.052.i)
  br i1 %27, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %ref_string_equals.exit.a, %ref_string_equals.exit.a, %ref_string_equals.exit15, %ref_string_equals.exit15, %ref_string_equals.exit17, %ref_string_equals.exit17, %bb.af, %ref_string_equals.exit.thread.a, %ref_string_equals.exit78.i, %ref_string_equals.exit78.i, %ref_string_equals.exit76.i, %ref_string_equals.exit76.i, %ref_string_equals.exit74.i, %ref_string_equals.exit74.i, %ref_string_equals.exit72.i, %ref_string_equals.exit72.i, %ref_string_equals.exit70.i, %ref_string_equals.exit70.i, %ref_string_equals.exit68.i, %ref_string_equals.exit68.i, %ref_string_equals.exit66.i, %ref_string_equals.exit66.i, %ref_string_equals.exit64.i, %ref_string_equals.exit64.i, %ref_string_equals.exit62.i, %ref_string_equals.exit62.i, %ref_string_equals.exit.i.a, %ref_string_equals.exit.i.a
  %.051.i = phi i32 [ 4096, %ref_string_equals.exit.thread.a ], [ -1, %ref_string_equals.exit.i.a ], [ 1, %ref_string_equals.exit62.i ], [ 2, %ref_string_equals.exit64.i ], [ 4, %ref_string_equals.exit66.i ], [ 8, %ref_string_equals.exit68.i ], [ 16, %ref_string_equals.exit70.i ], [ 32, %ref_string_equals.exit72.i ], [ 64, %ref_string_equals.exit74.i ], [ 128, %ref_string_equals.exit76.i ], [ 256, %ref_string_equals.exit78.i ], [ 1024, %ref_string_equals.exit17 ], [ 2048, %ref_string_equals.exit15 ], [ 512, %ref_string_equals.exit.a ], [ 8192, %bb.af ], [ -1, %ref_string_equals.exit.i.a ], [ 1, %ref_string_equals.exit62.i ], [ 2, %ref_string_equals.exit64.i ], [ 4, %ref_string_equals.exit66.i ], [ 8, %ref_string_equals.exit68.i ], [ 16, %ref_string_equals.exit70.i ], [ 32, %ref_string_equals.exit72.i ], [ 64, %ref_string_equals.exit74.i ], [ 128, %ref_string_equals.exit76.i ], [ 256, %ref_string_equals.exit78.i ], [ 1024, %ref_string_equals.exit17 ], [ 2048, %ref_string_equals.exit15 ], [ 512, %ref_string_equals.exit.a ] ; 2 uses
  %i.dk = or i32 %.051.i, %.090.i
  %i.dl = xor i32 %.051.i, -1
  %i.dm = and i32 %.090.i, %i.dl
  %.1.i = select i1 %.050.i, i32 %i.dk, i32 %i.dm
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.2.i = phi i32 [ %.1.i, %bb.ag ], [ %.090.i, %bb.af ] ; 2 uses
  %i.dn = load i8, ptr %.053.i, align 1
  %.not59.i = icmp eq i8 %i.dn, 0
  br i1 %.not59.i, label %SDL_CPUFeatureMaskFromHint.exit, label %.lr.ph.i, !llvm.loop !10

SDL_CPUFeatureMaskFromHint.exit:                  ; preds = %bb.ah, %CPU_haveAVX512F.exit.thread, %.preheader.i
  %.3.i = phi i32 [ -1, %CPU_haveAVX512F.exit.thread ], [ -1, %.preheader.i ], [ %.2.i, %bb.ah ]
  %i.do = load i32, ptr @SDL_CPUFeatures, align 4
  %i.dp = and i32 %i.do, %.3.i                    ; 2 uses
  store i32 %i.dp, ptr @SDL_CPUFeatures, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %SDL_CPUFeatureMaskFromHint.exit, %bb.a
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

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @ref_string_equals(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5                             ; 3 uses
  %7 = tail call i32 @SDL_strncmp_REAL(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %15 = load i8, ptr %14, align 1                 ; 2 uses
  %16 = icmp eq i8 %15, 0
  %17 = icmp eq i8 %15, 44
  %spec.select = or i1 %16, %17
  br label %18

18:                                               ; preds = %13, %9, %3
  %19 = phi i1 [ false, %9 ], [ false, %3 ], [ %spec.select, %13 ]
  ret i1 %19
}

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
