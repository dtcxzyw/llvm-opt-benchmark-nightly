Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/bignum_core?download=true
inline.NumInlined: 84
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@mbedtls_mpi_core_add_if:bb.a
  %.023.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %.02122.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02122.epil.init
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = and i64 %i.e, %i.b                       ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02122.epil.init ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = add i64 %i.h, %.023.epil.init            ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = zext i1 %i.j to i64
  %i.l = add i64 %i.i, %i.f                       ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = zext i1 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, %i.k
  store i64 %i.l, ptr %i.g, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.epil.preheader ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.023 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ]
  %.02122 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02122
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21
  %i.r = and i64 %i.q, %i.b                       ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02122 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = add i64 %i.t, %.023                      ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = zext i1 %i.v to i64
  %i.x = add i64 %i.u, %i.r                       ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.r
  %i.z = zext i1 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, %i.w
  store i64 %i.x, ptr %i.s, align 8, !tbaa !21
  %i.ab = or disjoint i64 %.02122, 1              ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ae = and i64 %i.ad, %i.b                     ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %i.ah = add i64 %i.ag, %i.aa                    ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = zext i1 %i.ai to i64
  %i.ak = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.ae
  %i.am = zext i1 %i.al to i64
  %i.an = add nuw nsw i64 %i.am, %i.aj            ; 3 uses
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !21
  %i.ao = add nuw i64 %.02122, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6
}

; Function Attrs: nounwind uwtable
define hidden i64 @mbedtls_mpi_core_sub(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.020 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.01819 = phi i64 [ %i.s, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01819 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.b, i64 %.020) #11, !srcloc !22
  %i.d = extractvalue { i64, i64, i64 } %i.c, 1
  %i.e = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.d, i64 1, i64 0) #11, !srcloc !25
  %i.f = extractvalue { i64, i64, i64 } %i.e, 2
  %i.g = load i64, ptr %i.a, align 8, !tbaa !21
  %i.h = sub i64 %i.g, %.020                      ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01819 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.h, i64 %i.j) #11, !srcloc !22
  %i.l = extractvalue { i64, i64, i64 } %i.k, 1
  %i.m = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.l, i64 1, i64 0) #11, !srcloc !25
  %i.n = extractvalue { i64, i64, i64 } %i.m, 2
  %i.o = add i64 %i.n, %i.f                       ; 2 uses
  %i.p = load i64, ptr %i.i, align 8, !tbaa !21
  %i.q = sub i64 %i.h, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01819
  store i64 %i.q, ptr %i.r, align 8, !tbaa !21
  %i.s = add nuw i64 %.01819, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7
}

; Function Attrs: nounwind uwtable
define hidden i64 @mbedtls_mpi_core_mla(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %3) ; 3 uses
  %i.a = sub nuw i64 %1, %spec.select             ; 2 uses
  %i.b = lshr i64 %spec.select, 3                 ; 2 uses
  %i.c = and i64 %spec.select, 7                  ; 2 uses
  %.not41 = icmp eq i64 %i.b, 0
  br i1 %.not41, label %.preheader40, label %.lr.ph

.preheader40:                                     ; preds = %.lr.ph, %bb.a
  %.034.lcssa = phi ptr [ %2, %bb.a ], [ %i.h, %.lr.ph ]
  %.030.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph ] ; 2 uses
  %.029.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %.lr.ph ] ; 2 uses
  %.not3848 = icmp eq i64 %i.c, 0
  br i1 %.not3848, label %.preheader, label %.lr.ph53

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02745 = phi i64 [ %i.d, %.lr.ph ], [ %i.b, %bb.a ]
  %.02944 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.03043 = phi ptr [ %i.g, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.03442 = phi ptr [ %i.h, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.d = add nsw i64 %.02745, -1                  ; 2 uses
  %i.e = tail call { i64, ptr, ptr } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"(ptr elementtype([16 x i64]) %.03043, i64 %4, ptr elementtype([16 x i64]) %.03442, i64 %.02944, ptr %.03043, ptr %.03442, ptr elementtype([16 x i64]) %.03043) #11, !srcloc !29 ; 3 uses
  %i.f = extractvalue { i64, ptr, ptr } %i.e, 0   ; 2 uses
  %i.g = extractvalue { i64, ptr, ptr } %i.e, 1   ; 2 uses
  %i.h = extractvalue { i64, ptr, ptr } %i.e, 2   ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.preheader40, label %.lr.ph, !llvm.loop !8

.preheader:                                       ; preds = %.lr.ph53, %.preheader40
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader40 ], [ %i.l, %.lr.ph53 ]
  %.1.lcssa = phi i64 [ %.029.lcssa, %.preheader40 ], [ %i.k, %.lr.ph53 ] ; 2 uses
  %.not3956 = icmp eq i64 %i.a, 0
  br i1 %.not3956, label %._crit_edge, label %.lr.ph60

.lr.ph53:                                         ; preds = %.preheader40, %.lr.ph53
  %.052 = phi i64 [ %i.i, %.lr.ph53 ], [ %i.c, %.preheader40 ]
  %.151 = phi i64 [ %i.k, %.lr.ph53 ], [ %.029.lcssa, %.preheader40 ]
  %.13150 = phi ptr [ %i.l, %.lr.ph53 ], [ %.030.lcssa, %.preheader40 ] ; 3 uses
  %.13549 = phi ptr [ %i.m, %.lr.ph53 ], [ %.034.lcssa, %.preheader40 ] ; 2 uses
  %i.i = add nsw i64 %.052, -1                    ; 2 uses
  %i.j = tail call { i64, ptr, ptr } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"(ptr elementtype([16 x i64]) %.13150, i64 %4, ptr elementtype([16 x i64]) %.13549, i64 %.151, ptr %.13150, ptr %.13549, ptr elementtype([16 x i64]) %.13150) #11, !srcloc !30 ; 3 uses
  %i.k = extractvalue { i64, ptr, ptr } %i.j, 0   ; 2 uses
  %i.l = extractvalue { i64, ptr, ptr } %i.j, 1   ; 2 uses
  %i.m = extractvalue { i64, ptr, ptr } %i.j, 2
  %.not38 = icmp eq i64 %i.i, 0
  br i1 %.not38, label %.preheader, label %.lr.ph53, !llvm.loop !9

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %.02859 = phi i64 [ %i.n, %.lr.ph60 ], [ %i.a, %.preheader ]
  %.258 = phi i64 [ %i.t, %.lr.ph60 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.23257 = phi ptr [ %i.u, %.lr.ph60 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.n = add i64 %.02859, -1                      ; 2 uses
  %i.o = load i64, ptr %.23257, align 8, !tbaa !21
  %i.p = add i64 %i.o, %.258                      ; 2 uses
  store i64 %i.p, ptr %.23257, align 8, !tbaa !21
  %i.q = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.p, i64 %.258) #11, !srcloc !22
  %i.r = extractvalue { i64, i64, i64 } %i.q, 1
  %i.s = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.r, i64 1, i64 0) #11, !srcloc !25
  %i.t = extractvalue { i64, i64, i64 } %i.s, 2   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.23257, i64 8
  %.not39 = icmp eq i64 %i.n, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph60, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph60, %.preheader
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader ], [ %i.t, %.lr.ph60 ]
  ret i64 %.2.lcssa
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_mpi_core_mul(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = add i64 %4, %2
  %i.b = shl i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.b, i1 false)
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = add i64 %2, 1                            ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %2) ; 3 uses
  %i.d = sub i64 %i.c, %spec.select.i             ; 5 uses
  %i.e = lshr i64 %spec.select.i, 3               ; 4 uses
  %i.f = and i64 %spec.select.i, 7                ; 5 uses
  %.not41.i = icmp eq i64 %i.e, 0                 ; 2 uses
  %.not3848.i = icmp eq i64 %i.f, 0               ; 4 uses
  %.not3956.i = icmp eq i64 %i.d, 0
  br i1 %.not3956.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not41.i, label %.lr.ph.split.us.split.us, label %.lr.ph.i.preheader.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not3848.i, label %._crit_edge, label %.preheader40.i.us.us

.preheader40.i.us.us:                             ; preds = %.lr.ph.split.us.split.us, %.preheader.i.loopexit.us.us
  %.016.us.us = phi i64 [ %i.o, %.preheader.i.loopexit.us.us ], [ 0, %.lr.ph.split.us.split.us ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us.us
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.016.us.us
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  br label %.lr.ph53.i.us.us

.lr.ph53.i.us.us:                                 ; preds = %.lr.ph53.i.us.us, %.preheader40.i.us.us
  %.052.i.us.us = phi i64 [ %i.j, %.lr.ph53.i.us.us ], [ %i.f, %.preheader40.i.us.us ]
  %.151.i.us.us = phi i64 [ %i.l, %.lr.ph53.i.us.us ], [ 0, %.preheader40.i.us.us ]
  %.13150.i.us.us = phi ptr [ %i.m, %.lr.ph53.i.us.us ], [ %i.g, %.preheader40.i.us.us ] ; 3 uses
  %.13549.i.us.us = phi ptr [ %i.n, %.lr.ph53.i.us.us ], [ %1, %.preheader40.i.us.us ] ; 2 uses
  %i.j = add nsw i64 %.052.i.us.us, -1            ; 2 uses
  %i.k = tail call { i64, ptr, ptr } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"(ptr elementtype([16 x i64]) %.13150.i.us.us, i64 %i.i, ptr elementtype([16 x i64]) %.13549.i.us.us, i64 %.151.i.us.us, ptr %.13150.i.us.us, ptr %.13549.i.us.us, ptr elementtype([16 x i64]) %.13150.i.us.us) #11, !srcloc !30 ; 3 uses
  %i.l = extractvalue { i64, ptr, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr, ptr } %i.k, 1
  %i.n = extractvalue { i64, ptr, ptr } %i.k, 2
  %.not38.i.us.us = icmp eq i64 %i.j, 0
  br i1 %.not38.i.us.us, label %.preheader.i.loopexit.us.us, label %.lr.ph53.i.us.us, !llvm.loop !9

.preheader.i.loopexit.us.us:                      ; preds = %.lr.ph53.i.us.us
  %i.o = add nuw i64 %.016.us.us, 1               ; 2 uses
  %exitcond76.not = icmp eq i64 %i.o, %4
  br i1 %exitcond76.not, label %._crit_edge, label %.preheader40.i.us.us, !llvm.loop !45

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.split.us, %.preheader.i.us
  %.016.us = phi i64 [ %i.ac, %.preheader.i.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.016.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.02745.i.us = phi i64 [ %i.s, %.lr.ph.i.us ], [ %i.e, %.lr.ph.i.preheader.us ]
  %.02944.i.us = phi i64 [ %i.u, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %.03043.i.us = phi ptr [ %i.v, %.lr.ph.i.us ], [ %i.p, %.lr.ph.i.preheader.us ] ; 3 uses
  %.03442.i.us = phi ptr [ %i.w, %.lr.ph.i.us ], [ %1, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.s = add nsw i64 %.02745.i.us, -1             ; 2 uses
  %i.t = tail call { i64, ptr, ptr } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"(ptr elementtype([16 x i64]) %.03043.i.us, i64 %i.r, ptr elementtype([16 x i64]) %.03442.i.us, i64 %.02944.i.us, ptr %.03043.i.us, ptr %.03442.i.us, ptr elementtype([16 x i64]) %.03043.i.us) #11, !srcloc !29 ; 3 uses
  %i.u = extractvalue { i64, ptr, ptr } %i.t, 0   ; 2 uses
  %i.v = extractvalue { i64, ptr, ptr } %i.t, 1   ; 2 uses
  %i.w = extractvalue { i64, ptr, ptr } %i.t, 2   ; 2 uses
  %.not.i.us = icmp eq i64 %i.s, 0
  br i1 %.not.i.us, label %.preheader40.i.loopexit.us, label %.lr.ph.i.us, !llvm.loop !8

.lr.ph53.i.us:                                    ; preds = %.preheader40.i.loopexit.us, %.lr.ph53.i.us
  %.052.i.us = phi i64 [ %i.x, %.lr.ph53.i.us ], [ %i.f, %.preheader40.i.loopexit.us ]
  %.151.i.us = phi i64 [ %i.z, %.lr.ph53.i.us ], [ %i.u, %.preheader40.i.loopexit.us ]
  %.13150.i.us = phi ptr [ %i.aa, %.lr.ph53.i.us ], [ %i.v, %.preheader40.i.loopexit.us ] ; 3 uses
  %.13549.i.us = phi ptr [ %i.ab, %.lr.ph53.i.us ], [ %i.w, %.preheader40.i.loopexit.us ] ; 2 uses
  %i.x = add nsw i64 %.052.i.us, -1               ; 2 uses
  %i.y = tail call { i64, ptr, ptr } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"(ptr elementtype([16 x i64]) %.13150.i.us, i64 %i.r, ptr elementtype([16 x i64]) %.13549.i.us, i64 %.151.i.us, ptr %.13150.i.us, ptr %.13549.i.us, ptr elementtype([16 x i64]) %.13150.i.us) #11, !srcloc !30 ; 3 uses
  %i.z = extractvalue { i64, ptr, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr, ptr } %i.y, 1
  %i.ab = extractvalue { i64, ptr, ptr } %i.y, 2
  %.not38.i.us = icmp eq i64 %i.x, 0
  br i1 %.not38.i.us, label %.preheader.i.us, label %.lr.ph53.i.us, !llvm.loop !9

.preheader.i.us:                                  ; preds = %.lr.ph53.i.us, %.preheader40.i.loopexit.us
  %i.ac = add nuw i64 %.016.us, 1                 ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ac, %4
  br i1 %exitcond75.not, label %._crit_edge, label %.lr.ph.i.preheader.us, !llvm.loop !45

.preheader40.i.loopexit.us:                       ; preds = %.lr.ph.i.us
  br i1 %.not3848.i, label %.preheader.i.us, label %.lr.ph53.i.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not41.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not3848.i, label %.preheader40.i.us18.us, label %.preheader40.i.us18

.preheader40.i.us18.us:                           ; preds = %.lr.ph.split.split.us, %mbedtls_mpi_core_mla.exit.loopexit.us.us
  %.016.us17.us = phi i64 [ %i.am, %mbedtls_mpi_core_mla.exit.loopexit.us.us ], [ 0, %.lr.ph.split.split.us ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us17.us
  br label %.lr.ph60.i.us.us

.lr.ph60.i.us.us:                                 ; preds = %.lr.ph60.i.us.us, %.preheader40.i.us18.us
  %.02859.i.us.us = phi i64 [ %i.ae, %.lr.ph60.i.us.us ], [ %i.d, %.preheader40.i.us18.us ]
  %.258.i.us.us = phi i64 [ %i.ak, %.lr.ph60.i.us.us ], [ 0, %.preheader40.i.us18.us ] ; 2 uses
  %.23257.i.us.us = phi ptr [ %i.al, %.lr.ph60.i.us.us ], [ %i.ad, %.preheader40.i.us18.us ] ; 3 uses
  %i.ae = add i64 %.02859.i.us.us, -1             ; 2 uses
  %i.af = load i64, ptr %.23257.i.us.us, align 8, !tbaa !21
  %i.ag = add i64 %i.af, %.258.i.us.us            ; 2 uses
  store i64 %i.ag, ptr %.23257.i.us.us, align 8, !tbaa !21
  %i.ah = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ag, i64 %.258.i.us.us) #11, !srcloc !22
  %i.ai = extractvalue { i64, i64, i64 } %i.ah, 1
  %i.aj = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ai, i64 1, i64 0) #11, !srcloc !25
  %i.ak = extractvalue { i64, i64, i64 } %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %.23257.i.us.us, i64 8
  %.not39.i.us.us = icmp eq i64 %i.ae, 0
  br i1 %.not39.i.us.us, label %mbedtls_mpi_core_mla.exit.loopexit.us.us, label %.lr.ph60.i.us.us, !llvm.loop !10

mbedtls_mpi_core_mla.exit.loopexit.us.us:         ; preds = %.lr.ph60.i.us.us
  %i.am = add nuw i64 %.016.us17.us, 1            ; 2 uses
  %exitcond74.not = icmp eq i64 %i.am, %4
  br i1 %exitcond74.not, label %._crit_edge, label %.preheader40.i.us18.us, !llvm.loop !45

.preheader40.i.us18:                              ; preds = %.lr.ph.split.split.us, %mbedtls_mpi_core_mla.exit.loopexit.us
  %.016.us17 = phi i64 [ %i.bd, %mbedtls_mpi_core_mla.exit.loopexit.us ], [ 0, %.lr.ph.split.split.us ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us17
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.016.us17
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !21
  br label %.lr.ph53.i.us22

.lr.ph53.i.us22:                                  ; preds = %.lr.ph53.i.us22, %.preheader40.i.us18
  %.052.i.us23 = phi i64 [ %i.aq, %.lr.ph53.i.us22 ], [ %i.f, %.preheader40.i.us18 ]
  %.151.i.us24 = phi i64 [ %i.as, %.lr.ph53.i.us22 ], [ 0, %.preheader40.i.us18 ]
  %.13150.i.us25 = phi ptr [ %i.at, %.lr.ph53.i.us22 ], [ %i.an, %.preheader40.i.us18 ] ; 3 uses
  %.13549.i.us26 = phi ptr [ %i.au, %.lr.ph53.i.us22 ], [ %1, %.preheader40.i.us18 ] ; 2 uses
  %i.aq = add nsw i64 %.052.i.us23, -1            ; 2 uses
  %i.ar = tail call { i64, ptr, ptr } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"(ptr elementtype([16 x i64]) %.13150.i.us25, i64 %i.ap, ptr elementtype([16 x i64]) %.13549.i.us26, i64 %.151.i.us24, ptr %.13150.i.us25, ptr %.13549.i.us26, ptr elementtype([16 x i64]) %.13150.i.us25) #11, !srcloc !30 ; 3 uses
  %i.as = extractvalue { i64, ptr, ptr } %i.ar, 0 ; 2 uses
  %i.at = extractvalue { i64, ptr, ptr } %i.ar, 1 ; 2 uses
  %i.au = extractvalue { i64, ptr, ptr } %i.ar, 2
  %.not38.i.us27 = icmp eq i64 %i.aq, 0
  br i1 %.not38.i.us27, label %.lr.ph60.i.us, label %.lr.ph53.i.us22, !llvm.loop !9

.lr.ph60.i.us:                                    ; preds = %.lr.ph53.i.us22, %.lr.ph60.i.us
  %.02859.i.us = phi i64 [ %i.av, %.lr.ph60.i.us ], [ %i.d, %.lr.ph53.i.us22 ]
  %.258.i.us = phi i64 [ %i.bb, %.lr.ph60.i.us ], [ %i.as, %.lr.ph53.i.us22 ] ; 2 uses
  %.23257.i.us = phi ptr [ %i.bc, %.lr.ph60.i.us ], [ %i.at, %.lr.ph53.i.us22 ] ; 3 uses
  %i.av = add i64 %.02859.i.us, -1                ; 2 uses
  %i.aw = load i64, ptr %.23257.i.us, align 8, !tbaa !21
  %i.ax = add i64 %i.aw, %.258.i.us               ; 2 uses
  store i64 %i.ax, ptr %.23257.i.us, align 8, !tbaa !21
  %i.ay = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ax, i64 %.258.i.us) #11, !srcloc !22
  %i.az = extractvalue { i64, i64, i64 } %i.ay, 1
  %i.ba = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.az, i64 1, i64 0) #11, !srcloc !25
  %i.bb = extractvalue { i64, i64, i64 } %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.23257.i.us, i64 8
  %.not39.i.us = icmp eq i64 %i.av, 0
  br i1 %.not39.i.us, label %mbedtls_mpi_core_mla.exit.loopexit.us, label %.lr.ph60.i.us, !llvm.loop !10

mbedtls_mpi_core_mla.exit.loopexit.us:            ; preds = %.lr.ph60.i.us
  %i.bd = add nuw i64 %.016.us17, 1               ; 2 uses
  %exitcond73.not = icmp eq i64 %i.bd, %4
  br i1 %exitcond73.not, label %._crit_edge, label %.preheader40.i.us18, !llvm.loop !45

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not3848.i, label %.lr.ph.i.preheader.us35, label %.lr.ph.i.preheader

.lr.ph.i.preheader.us35:                          ; preds = %.lr.ph.split.split, %mbedtls_mpi_core_mla.exit.loopexit.us51
  %.016.us36 = phi i64 [ %i.bu, %mbedtls_mpi_core_mla.exit.loopexit.us51 ], [ 0, %.lr.ph.split.split ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us36
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.016.us36
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !21
  br label %.lr.ph.i.us37

.lr.ph.i.us37:                                    ; preds = %.lr.ph.i.us37, %.lr.ph.i.preheader.us35
  %.02745.i.us38 = phi i64 [ %i.bh, %.lr.ph.i.us37 ], [ %i.e, %.lr.ph.i.preheader.us35 ]
  %.02944.i.us39 = phi i64 [ %i.bj, %.lr.ph.i.us37 ], [ 0, %.lr.ph.i.preheader.us35 ]
  %.03043.i.us40 = phi ptr [ %i.bk, %.lr.ph.i.us37 ], [ %i.be, %.lr.ph.i.preheader.us35 ] ; 3 uses
  %.03442.i.us41 = phi ptr [ %i.bl, %.lr.ph.i.us37 ], [ %1, %.lr.ph.i.preheader.us35 ] ; 2 uses
  %i.bh = add nsw i64 %.02745.i.us38, -1          ; 2 uses
  %i.bi = tail call { i64, ptr, ptr } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"(ptr elementtype([16 x i64]) %.03043.i.us40, i64 %i.bg, ptr elementtype([16 x i64]) %.03442.i.us41, i64 %.02944.i.us39, ptr %.03043.i.us40, ptr %.03442.i.us41, ptr elementtype([16 x i64]) %.03043.i.us40) #11, !srcloc !29 ; 3 uses
  %i.bj = extractvalue { i64, ptr, ptr } %i.bi, 0 ; 2 uses
  %i.bk = extractvalue { i64, ptr, ptr } %i.bi, 1 ; 2 uses
  %i.bl = extractvalue { i64, ptr, ptr } %i.bi, 2
  %.not.i.us42 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.us42, label %.lr.ph60.i.us46, label %.lr.ph.i.us37, !llvm.loop !8

.lr.ph60.i.us46:                                  ; preds = %.lr.ph.i.us37, %.lr.ph60.i.us46
  %.02859.i.us47 = phi i64 [ %i.bm, %.lr.ph60.i.us46 ], [ %i.d, %.lr.ph.i.us37 ]
  %.258.i.us48 = phi i64 [ %i.bs, %.lr.ph60.i.us46 ], [ %i.bj, %.lr.ph.i.us37 ] ; 2 uses
  %.23257.i.us49 = phi ptr [ %i.bt, %.lr.ph60.i.us46 ], [ %i.bk, %.lr.ph.i.us37 ] ; 3 uses
  %i.bm = add i64 %.02859.i.us47, -1              ; 2 uses
  %i.bn = load i64, ptr %.23257.i.us49, align 8, !tbaa !21
  %i.bo = add i64 %i.bn, %.258.i.us48             ; 2 uses
  store i64 %i.bo, ptr %.23257.i.us49, align 8, !tbaa !21
  %i.bp = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.bo, i64 %.258.i.us48) #11, !srcloc !22
  %i.bq = extractvalue { i64, i64, i64 } %i.bp, 1
  %i.br = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.bq, i64 1, i64 0) #11, !srcloc !25
  %i.bs = extractvalue { i64, i64, i64 } %i.br, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %.23257.i.us49, i64 8
  %.not39.i.us50 = icmp eq i64 %i.bm, 0
  br i1 %.not39.i.us50, label %mbedtls_mpi_core_mla.exit.loopexit.us51, label %.lr.ph60.i.us46, !llvm.loop !10

mbedtls_mpi_core_mla.exit.loopexit.us51:          ; preds = %.lr.ph60.i.us46
  %i.bu = add nuw i64 %.016.us36, 1               ; 2 uses
  %exitcond72.not = icmp eq i64 %i.bu, %4
  br i1 %exitcond72.not, label %._crit_edge, label %.lr.ph.i.preheader.us35, !llvm.loop !45

._crit_edge:                                      ; preds = %mbedtls_mpi_core_mla.exit.loopexit, %mbedtls_mpi_core_mla.exit.loopexit.us51, %mbedtls_mpi_core_mla.exit.loopexit.us, %mbedtls_mpi_core_mla.exit.loopexit.us.us, %.preheader.i.us, %.preheader.i.loopexit.us.us, %.lr.ph.split.us.split.us, %bb.a
  ret void

.lr.ph.i.preheader:                               ; preds = %.lr.ph.split.split, %mbedtls_mpi_core_mla.exit.loopexit
  %.016 = phi i64 [ %i.cq, %mbedtls_mpi_core_mla.exit.loopexit ], [ 0, %.lr.ph.split.split ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.016
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !21 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02745.i = phi i64 [ %i.by, %.lr.ph.i ], [ %i.e, %.lr.ph.i.preheader ]
  %.02944.i = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.03043.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %i.bv, %.lr.ph.i.preheader ] ; 3 uses
  %.03442.i = phi ptr [ %i.cc, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %i.by = add nsw i64 %.02745.i, -1               ; 2 uses
  %i.bz = tail call { i64, ptr, ptr } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"(ptr elementtype([16 x i64]) %.03043.i, i64 %i.bx, ptr elementtype([16 x i64]) %.03442.i, i64 %.02944.i, ptr %.03043.i, ptr %.03442.i, ptr elementtype([16 x i64]) %.03043.i) #11, !srcloc !29 ; 3 uses
  %i.ca = extractvalue { i64, ptr, ptr } %i.bz, 0 ; 2 uses
  %i.cb = extractvalue { i64, ptr, ptr } %i.bz, 1 ; 2 uses
  %i.cc = extractvalue { i64, ptr, ptr } %i.bz, 2 ; 2 uses
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %.lr.ph53.i, label %.lr.ph.i, !llvm.loop !8

.lr.ph53.i:                                       ; preds = %.lr.ph.i, %.lr.ph53.i
  %.052.i = phi i64 [ %i.cd, %.lr.ph53.i ], [ %i.f, %.lr.ph.i ]
  %.151.i = phi i64 [ %i.cf, %.lr.ph53.i ], [ %i.ca, %.lr.ph.i ]
  %.13150.i = phi ptr [ %i.cg, %.lr.ph53.i ], [ %i.cb, %.lr.ph.i ] ; 3 uses
  %.13549.i = phi ptr [ %i.ch, %.lr.ph53.i ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %i.cd = add nsw i64 %.052.i, -1                 ; 2 uses
  %i.ce = tail call { i64, ptr, ptr } asm "xorq   %r8, %r8\0Amovq   (%rsi), %rax\0Amulq   %rbx\0Aaddq   $$8, %rsi\0Aaddq   %rcx, %rax\0Amovq   %r8, %rcx\0Aadcq   $$0, %rdx\0Anop    \0Aaddq   %rax, (%rdi)\0Aadcq   %rdx, %rcx\0Aaddq   $$8, %rdi\0A", "={cx},={di},={si},=*m,{bx},*m,0,1,2,*m,~{rax},~{rdx},~{r8},~{dirflag},~{fpsr},~{flags}"(ptr elementtype([16 x i64]) %.13150.i, i64 %i.bx, ptr elementtype([16 x i64]) %.13549.i, i64 %.151.i, ptr %.13150.i, ptr %.13549.i, ptr elementtype([16 x i64]) %.13150.i) #11, !srcloc !30 ; 3 uses
  %i.cf = extractvalue { i64, ptr, ptr } %i.ce, 0 ; 2 uses
  %i.cg = extractvalue { i64, ptr, ptr } %i.ce, 1 ; 2 uses
  %i.ch = extractvalue { i64, ptr, ptr } %i.ce, 2
  %.not38.i = icmp eq i64 %i.cd, 0
  br i1 %.not38.i, label %.lr.ph60.i, label %.lr.ph53.i, !llvm.loop !9

.lr.ph60.i:                                       ; preds = %.lr.ph53.i, %.lr.ph60.i
  %.02859.i = phi i64 [ %i.ci, %.lr.ph60.i ], [ %i.d, %.lr.ph53.i ]
  %.258.i = phi i64 [ %i.co, %.lr.ph60.i ], [ %i.cf, %.lr.ph53.i ] ; 2 uses
  %.23257.i = phi ptr [ %i.cp, %.lr.ph60.i ], [ %i.cg, %.lr.ph53.i ] ; 3 uses
  %i.ci = add i64 %.02859.i, -1                   ; 2 uses
  %i.cj = load i64, ptr %.23257.i, align 8, !tbaa !21
  %i.ck = add i64 %i.cj, %.258.i                  ; 2 uses
  store i64 %i.ck, ptr %.23257.i, align 8, !tbaa !21
  %i.cl = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ck, i64 %.258.i) #11, !srcloc !22
  %i.cm = extractvalue { i64, i64, i64 } %i.cl, 1
  %i.cn = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.cm, i64 1, i64 0) #11, !srcloc !25
  %i.co = extractvalue { i64, i64, i64 } %i.cn, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.23257.i, i64 8
  %.not39.i = icmp eq i64 %i.ci, 0
  br i1 %.not39.i, label %mbedtls_mpi_core_mla.exit.loopexit, label %.lr.ph60.i, !llvm.loop !10

mbedtls_mpi_core_mla.exit.loopexit:               ; preds = %.lr.ph60.i
  %i.cq = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @mbedtls_mpi_core_montmul_init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !21     ; 6 uses
  %i.b = shl i64 %i.a, 1
  %i.c = add i64 %i.b, 4
  %i.d = and i64 %i.c, 8
  %i.e = add i64 %i.d, %i.a                       ; 2 uses
  %i.f = mul i64 %i.e, %i.a
  %i.g = sub i64 2, %i.f
  %i.h = mul i64 %i.g, %i.e                       ; 2 uses
  %i.i = mul i64 %i.h, %i.a
  %i.j = sub i64 2, %i.i
  %i.k = mul i64 %i.j, %i.h                       ; 2 uses
  %i.l = mul i64 %i.k, %i.a
  %i.m = sub i64 2, %i.l
  %i.n = mul i64 %i.m, %i.k                       ; 2 uses
  %i.o = mul i64 %i.n, %i.a
  %.neg = add i64 %i.o, -2
  %.neg11 = mul i64 %.neg, %i.n
  ret i64 %.neg11
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_mpi_core_montmul(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = shl i64 %5, 4
  %i.b = or disjoint i64 %i.a, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, i8 0, i64 %i.b, i1 false)
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %5
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  br label %mbedtls_mpi_core_sub.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i64 %5, 2                            ; 4 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %3) ; 3 uses
  %i.f = sub nuw i64 %i.e, %spec.select.i         ; 2 uses
  %i.g = lshr i64 %spec.select.i, 3               ; 2 uses
  %i.h = and i64 %spec.select.i, 7                ; 2 uses
  %.not41.i = icmp eq i64 %i.g, 0
  %.not3848.i = icmp eq i64 %i.h, 0
  %.not3956.i = icmp eq i64 %i.f, 0
  %spec.select.i36 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %5) ; 3 uses
  %i.i = sub nuw i64 %i.e, %spec.select.i36       ; 2 uses
  %i.j = lshr i64 %spec.select.i36, 3             ; 2 uses
  %i.k = and i64 %spec.select.i36, 7              ; 2 uses
  %.not41.i37 = icmp eq i64 %i.j, 0
  %.not3848.i48 = icmp eq i64 %i.k, 0
  %.not3956.i58 = icmp eq i64 %i.i, 0
  br label %bb.b

.lr.ph.i.preheader:                               ; preds = %mbedtls_mpi_core_mla.exit65
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %5
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.020.i = phi i64 [ %i.ab, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.01819.i = phi i64 [ %i.af, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.01819.i ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
end_hunk_0
