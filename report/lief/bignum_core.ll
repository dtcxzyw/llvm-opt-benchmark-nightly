Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/bignum_core?download=true
inline.NumInlined: 84
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@mbedtls_mpi_core_to_mont_rep:bb.a
; Function Attrs: nounwind uwtable
define hidden void @mbedtls_mpi_core_from_mont_rep(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 1, ptr %i.a, align 8, !tbaa !21
  call void @mbedtls_mpi_core_montmul(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_mpi_core_gcd_modinv_odd(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4, i64 noundef %5, ptr nofree noundef captures(address) %6) local_unnamed_addr #5 {
bb.a:
  %.idx185 = shl i64 %5, 3                        ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 %.idx185 ; 11 uses
  %.idx = shl i64 %5, 4                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 %.idx ; 8 uses
  %.idx124 = mul i64 %5, 24                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 %.idx124 ; 24 uses
  %.not = icmp eq ptr %1, null                    ; 3 uses
  %.idx125 = shl i64 %5, 5                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 %.idx125 ; 9 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %3, i64 %5) ; 3 uses
  %i.e = shl i64 %spec.select, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %2, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 %i.e
  %i.g = sub nuw i64 %5, %spec.select
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 0, i64 %i.h, i1 false)
  %.not126 = icmp eq ptr %0, %4
  br i1 %.not126, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %4, i64 %.idx185, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %.idx185, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %.idx185, i1 false)
  store i64 1, ptr %i.d, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = add i64 %spec.select, %5
  %i.j = shl i64 %i.i, 6                          ; 2 uses
  %.not190 = icmp eq i64 %i.j, 0
  br i1 %.not190, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.not.i = icmp ne i64 %5, 0                     ; 4 uses
  %.not183 = icmp samesign eq i64 %.idx, 0
  %i.k = icmp ne ptr %i.c, %0
  %or.cond.i = and i1 %.not.i, %i.k
  %.not184 = icmp samesign eq i64 %.idx124, %.idx185 ; 4 uses
  %.not191 = icmp eq ptr %6, %0
  %.not186 = icmp samesign eq i64 %.idx, %.idx125
  %.not192 = icmp eq ptr %i.c, %1
  %i.l = getelementptr [8 x i8], ptr %i.c, i64 %5
  %i.m = getelementptr i8, ptr %i.l, i64 -8       ; 2 uses
  %i.n = icmp ne ptr %i.d, %1
  %or.cond.i164 = and i1 %.not.i, %i.n
  %i.o = add i64 %5, -1                           ; 2 uses
  %min.iters.check222 = icmp ult i64 %5, 4
  %n.vec224 = and i64 %5, -4                      ; 2 uses
  %i.p = and i64 %5, 3
  %cmp.n237 = icmp eq i64 %5, %n.vec224
  %xtraiter = and i64 %5, 1
  %i.q = icmp eq i64 %i.o, 0
  %unroll_iter = and i64 %5, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod245 = trunc i64 %5 to i1
  %xtraiter246 = and i64 %5, 1
  %i.r = icmp eq i64 %i.o, 0
  %unroll_iter250 = and i64 %5, -2
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  %lcmp.mod249 = trunc i64 %5 to i1
  %min.iters.check = icmp ult i64 %5, 4
  %n.vec = and i64 %5, -4                         ; 2 uses
  %i.s = and i64 %5, 3
  %cmp.n = icmp eq i64 %5, %n.vec
  br label %bb.f

._crit_edge:                                      ; preds = %mbedtls_mpi_core_cond_swap.exit168, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %mbedtls_mpi_core_cond_swap.exit168
  %.0189 = phi i64 [ 0, %.lr.ph ], [ %i.ji, %mbedtls_mpi_core_cond_swap.exit168 ]
  %i.t = load i64, ptr %6, align 8, !tbaa !21
  %i.u = and i64 %i.t, 1
  %i.v = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.u) #11, !srcloc !24 ; 2 uses
  %i.w = load i64, ptr %0, align 8, !tbaa !21
  %i.x = and i64 %i.w, 1
  %i.y = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.x) #11, !srcloc !24 ; 2 uses
  %i.z = and i64 %i.y, %i.v                       ; 4 uses
  %i.aa = xor i64 %i.y, -1
  %i.ab = and i64 %i.v, %i.aa                     ; 2 uses
  br i1 %.not.i, label %.lr.ph.i, label %mbedtls_mpi_core_cond_assign.exit132.thread

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.020.i = phi i64 [ %i.aq, %.lr.ph.i ], [ 0, %bb.f ] ; 2 uses
  %.01819.i = phi i64 [ %i.au, %.lr.ph.i ], [ 0, %bb.f ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01819.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ae = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ad, i64 %.020.i) #11, !srcloc !22
  %i.af = extractvalue { i64, i64, i64 } %i.ae, 1
  %i.ag = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.af, i64 1, i64 0) #11, !srcloc !25
  %i.ah = extractvalue { i64, i64, i64 } %i.ag, 2
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aj = sub i64 %i.ai, %.020.i                  ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.01819.i ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.am = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.aj, i64 %i.al) #11, !srcloc !22
  %i.an = extractvalue { i64, i64, i64 } %i.am, 1
  %i.ao = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.an, i64 1, i64 0) #11, !srcloc !25
  %i.ap = extractvalue { i64, i64, i64 } %i.ao, 2
  %i.aq = add i64 %i.ap, %i.ah
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.as = sub i64 %i.aj, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01819.i
  store i64 %i.as, ptr %i.at, align 8, !tbaa !21
  %i.au = add nuw i64 %.01819.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %5
  br i1 %exitcond.not.i, label %mbedtls_mpi_core_sub.exit, label %.lr.ph.i, !llvm.loop !7

mbedtls_mpi_core_sub.exit:                        ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a, i64 %.idx185, i1 false)
  br i1 %.not183, label %mbedtls_mpi_core_cond_assign.exit, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %mbedtls_mpi_core_sub.exit, %.lr.ph.i127
  %.013.i = phi i64 [ %i.bb, %.lr.ph.i127 ], [ 0, %mbedtls_mpi_core_sub.exit ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.013.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.013.i ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.az = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.z, i64 %i.aw, i64 %i.ay) #11, !srcloc !25
  %i.ba = extractvalue { i64, i64, i64 } %i.az, 2
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !21
  %i.bb = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i128 = icmp eq i64 %i.bb, %5
  br i1 %exitcond.not.i128, label %mbedtls_mpi_core_cond_assign.exit, label %.lr.ph.i127, !llvm.loop !4

mbedtls_mpi_core_cond_assign.exit:                ; preds = %.lr.ph.i127, %mbedtls_mpi_core_sub.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull align 8 %6, i64 %.idx185, i1 false)
  br i1 %or.cond.i, label %.lr.ph.i129, label %mbedtls_mpi_core_cond_assign.exit132

.lr.ph.i129:                                      ; preds = %mbedtls_mpi_core_cond_assign.exit, %.lr.ph.i129
  %.013.i130 = phi i64 [ %i.bi, %.lr.ph.i129 ], [ 0, %mbedtls_mpi_core_cond_assign.exit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.i130
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.013.i130 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !21
  %i.bg = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab, i64 %i.bd, i64 %i.bf) #11, !srcloc !25
  %i.bh = extractvalue { i64, i64, i64 } %i.bg, 2
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !21
  %i.bi = add nuw i64 %.013.i130, 1               ; 2 uses
  %exitcond.not.i131 = icmp eq i64 %i.bi, %5
  br i1 %exitcond.not.i131, label %mbedtls_mpi_core_cond_assign.exit132, label %.lr.ph.i129, !llvm.loop !4

mbedtls_mpi_core_cond_assign.exit132:             ; preds = %.lr.ph.i129, %mbedtls_mpi_core_cond_assign.exit
  br i1 %.not184, label %.lr.ph52.i, label %.lr.ph.i134.preheader

mbedtls_mpi_core_cond_assign.exit132.thread:      ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a, i64 %.idx185, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull align 8 %6, i64 %.idx185, i1 false)
  br i1 %.not184, label %mbedtls_mpi_core_cond_assign.exit137.thread, label %.lr.ph.i134.preheader

.lr.ph.i134.preheader:                            ; preds = %mbedtls_mpi_core_cond_assign.exit132.thread, %mbedtls_mpi_core_cond_assign.exit132
  br label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %.lr.ph.i134.preheader, %.lr.ph.i134
  %.013.i135 = phi i64 [ %i.bp, %.lr.ph.i134 ], [ 0, %.lr.ph.i134.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.013.i135
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.013.i135 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !21
  %i.bn = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.z, i64 %i.bk, i64 %i.bm) #11, !srcloc !25
  %i.bo = extractvalue { i64, i64, i64 } %i.bn, 2
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !21
  %i.bp = add nuw i64 %.013.i135, 1               ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %i.bp, %5
  br i1 %exitcond.not.i136, label %.lr.ph52.i, label %.lr.ph.i134, !llvm.loop !4

mbedtls_mpi_core_cond_assign.exit137.thread:      ; preds = %mbedtls_mpi_core_cond_assign.exit132.thread
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %.idx185, i1 false)
  br label %mbedtls_mpi_core_shift_r.exit

.lr.ph52.i:                                       ; preds = %.lr.ph.i134, %mbedtls_mpi_core_cond_assign.exit132
  br i1 %min.iters.check222, label %scalar.ph221.preheader, label %vector.body225

vector.body225:                                   ; preds = %.lr.ph52.i, %vector.body225
  %index226 = phi i64 [ %index.next234, %vector.body225 ], [ 0, %.lr.ph52.i ] ; 2 uses
  %vector.recur227 = phi <2 x i64> [ %i.bw, %vector.body225 ], [ <i64 poison, i64 0>, %.lr.ph52.i ]
  %i.bq = sub i64 %5, %index226
  %i.br = getelementptr [8 x i8], ptr %i.c, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -16    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 -32    ; 2 uses
  %wide.load228 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !21 ; 3 uses
  %wide.load229 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !21 ; 3 uses
  %i.bu = shl <2 x i64> %wide.load228, splat (i64 63)
  %7 = shufflevector <2 x i64> %i.bu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bv = shl <2 x i64> %wide.load229, splat (i64 63) ; 2 uses
  %i.bw = shufflevector <2 x i64> %i.bv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bx = lshr <2 x i64> %wide.load228, splat (i64 1)
  %i.by = shufflevector <2 x i64> %7, <2 x i64> %vector.recur227, <2 x i32> <i32 0, i32 3>
  %reverse232 = or disjoint <2 x i64> %i.bx, %i.by
  %8 = shufflevector <2 x i64> %wide.load228, <2 x i64> %wide.load229, <2 x i32> <i32 3, i32 0>
  %reverse233 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %8, <2 x i64> %wide.load229, <2 x i64> splat (i64 63))
  store <2 x i64> %reverse232, ptr %i.bs, align 8, !tbaa !21
  store <2 x i64> %reverse233, ptr %i.bt, align 8, !tbaa !21
  %index.next234 = add nuw i64 %index226, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next234, %n.vec224
  br i1 %i.bz, label %middle.block235, label %vector.body225, !llvm.loop !65

middle.block235:                                  ; preds = %vector.body225
  %vector.recur.extract236 = extractelement <2 x i64> %i.bv, i64 0
  br i1 %cmp.n237, label %mbedtls_mpi_core_shift_r.exit, label %scalar.ph221.preheader

scalar.ph221.preheader:                           ; preds = %.lr.ph52.i, %middle.block235
  %.051.i.ph = phi i64 [ 0, %.lr.ph52.i ], [ %vector.recur.extract236, %middle.block235 ]
  %.250.i.ph = phi i64 [ %5, %.lr.ph52.i ], [ %i.p, %middle.block235 ]
  br label %scalar.ph221

scalar.ph221:                                     ; preds = %scalar.ph221.preheader, %scalar.ph221
  %.051.i = phi i64 [ %i.cd, %scalar.ph221 ], [ %.051.i.ph, %scalar.ph221.preheader ]
  %.250.i = phi i64 [ %i.cg, %scalar.ph221 ], [ %.250.i.ph, %scalar.ph221.preheader ] ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %i.c, i64 %.250.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8     ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !21 ; 2 uses
  %i.cd = shl i64 %i.cc, 63
  %i.ce = lshr i64 %i.cc, 1
  %i.cf = or disjoint i64 %i.ce, %.051.i
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !21
  %i.cg = add i64 %.250.i, -1                     ; 2 uses
  %.not42.i = icmp eq i64 %i.cg, 0
  br i1 %.not42.i, label %mbedtls_mpi_core_shift_r.exit, label %scalar.ph221, !llvm.loop !66

mbedtls_mpi_core_shift_r.exit:                    ; preds = %scalar.ph221, %middle.block235, %mbedtls_mpi_core_cond_assign.exit137.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 8 %i.b, i64 %.idx185, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.c, i64 %.idx185, i1 false)
  %i.ch = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !srcloc !23 ; 3 uses
  %i.ci = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !srcloc !23 ; 0 uses
  %i.cj = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !srcloc !23
  br i1 %.not.i, label %.lr.ph.i139, label %mbedtls_mpi_core_cond_swap.exit.thread

.lr.ph.i139:                                      ; preds = %mbedtls_mpi_core_shift_r.exit, %.lr.ph.i139
  %.023.i = phi i64 [ %i.ck, %.lr.ph.i139 ], [ %5, %mbedtls_mpi_core_shift_r.exit ]
  %.01822.i = phi i64 [ %i.cz, %.lr.ph.i139 ], [ %i.cj, %mbedtls_mpi_core_shift_r.exit ]
  %.01921.i = phi i64 [ %i.cy, %.lr.ph.i139 ], [ %i.ch, %mbedtls_mpi_core_shift_r.exit ]
  %i.ck = add i64 %.023.i, -1                     ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ck ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ck ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !21
  %i.cp = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.cm, i64 %i.co) #11, !srcloc !22
  %i.cq = extractvalue { i64, i64, i64 } %i.cp, 1
  %i.cr = or i64 %i.cq, %.01822.i                 ; 2 uses
  %i.cs = load i64, ptr %i.cn, align 8, !tbaa !21
  %i.ct = load i64, ptr %i.cl, align 8, !tbaa !21
  %i.cu = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.cs, i64 %i.ct) #11, !srcloc !22
  %i.cv = extractvalue { i64, i64, i64 } %i.cu, 1 ; 2 uses
  %i.cw = xor i64 %i.cr, -1
  %i.cx = and i64 %i.cv, %i.cw
  %i.cy = or i64 %i.cx, %.01921.i                 ; 5 uses
  %i.cz = or i64 %i.cv, %i.cr
  %.not.i140 = icmp eq i64 %i.ck, 0
  br i1 %.not.i140, label %mbedtls_mpi_core_lt_ct.exit, label %.lr.ph.i139, !llvm.loop !3

mbedtls_mpi_core_lt_ct.exit:                      ; preds = %.lr.ph.i139
  br i1 %.not191, label %mbedtls_mpi_core_cond_swap.exit, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %mbedtls_mpi_core_lt_ct.exit, %.lr.ph.i142
  %.021.i = phi i64 [ %i.dj, %.lr.ph.i142 ], [ 0, %mbedtls_mpi_core_lt_ct.exit ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.021.i ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !21 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.021.i ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !21
  %i.de = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.cy, i64 %i.dd, i64 %i.db) #11, !srcloc !25
  %i.df = extractvalue { i64, i64, i64 } %i.de, 2
  store i64 %i.df, ptr %i.da, align 8, !tbaa !21
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !21
  %i.dh = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.cy, i64 %i.db, i64 %i.dg) #11, !srcloc !25
  %i.di = extractvalue { i64, i64, i64 } %i.dh, 2
  store i64 %i.di, ptr %i.dc, align 8, !tbaa !21
  %i.dj = add nuw i64 %.021.i, 1                  ; 2 uses
  %exitcond.not.i143 = icmp eq i64 %i.dj, %5
  br i1 %exitcond.not.i143, label %mbedtls_mpi_core_cond_swap.exit, label %.lr.ph.i142, !llvm.loop !5

mbedtls_mpi_core_cond_swap.exit:                  ; preds = %.lr.ph.i142, %mbedtls_mpi_core_lt_ct.exit
  br i1 %.not, label %mbedtls_mpi_core_cond_swap.exit168, label %.lr.ph.i.i

mbedtls_mpi_core_cond_swap.exit.thread:           ; preds = %mbedtls_mpi_core_shift_r.exit
  br i1 %.not, label %mbedtls_mpi_core_cond_swap.exit168, label %mbedtls_mpi_core_cond_assign.exit153.thread

.lr.ph.i.i:                                       ; preds = %mbedtls_mpi_core_cond_swap.exit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.dy, %.lr.ph.i.i ], [ 0, %mbedtls_mpi_core_cond_swap.exit ] ; 2 uses
  %.01819.i.i = phi i64 [ %i.ec, %.lr.ph.i.i ], [ 0, %mbedtls_mpi_core_cond_swap.exit ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01819.i.i ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !21
  %i.dm = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.dl, i64 %.020.i.i) #11, !srcloc !22
  %i.dn = extractvalue { i64, i64, i64 } %i.dm, 1
  %i.do = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.dn, i64 1, i64 0) #11, !srcloc !25
  %i.dp = extractvalue { i64, i64, i64 } %i.do, 2
  %i.dq = load i64, ptr %i.dk, align 8, !tbaa !21
  %i.dr = sub i64 %i.dq, %.020.i.i                ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01819.i.i ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !21
  %i.du = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.dr, i64 %i.dt) #11, !srcloc !22
  %i.dv = extractvalue { i64, i64, i64 } %i.du, 1
  %i.dw = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.dv, i64 1, i64 0) #11, !srcloc !25
  %i.dx = extractvalue { i64, i64, i64 } %i.dw, 2
  %i.dy = add i64 %i.dx, %i.dp                    ; 2 uses
  %i.dz = load i64, ptr %i.ds, align 8, !tbaa !21
  %i.ea = sub i64 %i.dr, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01819.i.i
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !21
  %i.ec = add nuw i64 %.01819.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ec, %5
  br i1 %exitcond.not.i.i, label %mbedtls_mpi_core_sub.exit.i, label %.lr.ph.i.i, !llvm.loop !7

mbedtls_mpi_core_sub.exit.i:                      ; preds = %.lr.ph.i.i
  %i.ed = and i64 %i.dy, 4294967295
  %i.ee = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.ed) #11, !srcloc !24 ; 3 uses
  br i1 %i.q, label %.lr.ph.i8.i.epil.preheader, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %mbedtls_mpi_core_sub.exit.i, %.lr.ph.i8.i
  %.023.i.i = phi i64 [ %i.fd, %.lr.ph.i8.i ], [ 0, %mbedtls_mpi_core_sub.exit.i ]
  %.02122.i.i = phi i64 [ %i.fe, %.lr.ph.i8.i ], [ 0, %mbedtls_mpi_core_sub.exit.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i8.i ], [ 0, %mbedtls_mpi_core_sub.exit.i ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02122.i.i
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !21
  %i.eh = and i64 %i.eg, %i.ee                    ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02122.i.i ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !21 ; 2 uses
  %i.ek = add i64 %i.ej, %.023.i.i                ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.ej
  %i.em = zext i1 %i.el to i64
  %i.en = add i64 %i.ek, %i.eh                    ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.eh
  %i.ep = zext i1 %i.eo to i64
  %i.eq = add nuw nsw i64 %i.ep, %i.em
  store i64 %i.en, ptr %i.ei, align 8, !tbaa !21
  %i.er = or disjoint i64 %.02122.i.i, 1          ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !21
  %i.eu = and i64 %i.et, %i.ee                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.er ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !21 ; 2 uses
  %i.ex = add i64 %i.ew, %i.eq                    ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %i.ez = zext i1 %i.ey to i64
  %i.fa = add i64 %i.ex, %i.eu                    ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.eu
  %i.fc = zext i1 %i.fb to i64
  %i.fd = add nuw nsw i64 %i.fc, %i.ez            ; 2 uses
  store i64 %i.fa, ptr %i.ev, align 8, !tbaa !21
  %i.fe = add nuw i64 %.02122.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mpi_core_sub_mod.exit.unr-lcssa, label %.lr.ph.i8.i, !llvm.loop !6

mpi_core_sub_mod.exit.unr-lcssa:                  ; preds = %.lr.ph.i8.i
  br i1 %lcmp.mod.not, label %mpi_core_sub_mod.exit, label %.lr.ph.i8.i.epil.preheader

.lr.ph.i8.i.epil.preheader:                       ; preds = %mpi_core_sub_mod.exit.unr-lcssa, %mbedtls_mpi_core_sub.exit.i
  %.023.i.i.epil.init = phi i64 [ 0, %mbedtls_mpi_core_sub.exit.i ], [ %i.fd, %mpi_core_sub_mod.exit.unr-lcssa ]
  %.02122.i.i.epil.init = phi i64 [ 0, %mbedtls_mpi_core_sub.exit.i ], [ %i.fe, %mpi_core_sub_mod.exit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod245)
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02122.i.i.epil.init
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !21
  %i.fh = and i64 %i.fg, %i.ee
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02122.i.i.epil.init ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !21
  %i.fk = add i64 %i.fj, %.023.i.i.epil.init
  %i.fl = add i64 %i.fk, %i.fh
  store i64 %i.fl, ptr %i.fi, align 8, !tbaa !21
  br label %mpi_core_sub_mod.exit

mpi_core_sub_mod.exit:                            ; preds = %mpi_core_sub_mod.exit.unr-lcssa, %.lr.ph.i8.i.epil.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a, i64 %.idx185, i1 false)
  br i1 %.not186, label %mbedtls_mpi_core_cond_assign.exit148, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %mpi_core_sub_mod.exit, %.lr.ph.i145
  %.013.i146 = phi i64 [ %i.fs, %.lr.ph.i145 ], [ 0, %mpi_core_sub_mod.exit ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.013.i146
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !21
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.013.i146 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !21
  %i.fq = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.z, i64 %i.fn, i64 %i.fp) #11, !srcloc !25
  %i.fr = extractvalue { i64, i64, i64 } %i.fq, 2
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !21
  %i.fs = add nuw i64 %.013.i146, 1               ; 2 uses
  %exitcond.not.i147 = icmp eq i64 %i.fs, %5
  br i1 %exitcond.not.i147, label %mbedtls_mpi_core_cond_assign.exit148, label %.lr.ph.i145, !llvm.loop !4

mbedtls_mpi_core_cond_assign.exit148:             ; preds = %.lr.ph.i145, %mpi_core_sub_mod.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.d, i64 %.idx185, i1 false)
  br i1 %.not192, label %mbedtls_mpi_core_cond_assign.exit153, label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %mbedtls_mpi_core_cond_assign.exit148, %.lr.ph.i150
  %.013.i151 = phi i64 [ %i.fz, %.lr.ph.i150 ], [ 0, %mbedtls_mpi_core_cond_assign.exit148 ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.i151
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !21
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.013.i151 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !21
  %i.fx = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab, i64 %i.fu, i64 %i.fw) #11, !srcloc !25
  %i.fy = extractvalue { i64, i64, i64 } %i.fx, 2
  store i64 %i.fy, ptr %i.fv, align 8, !tbaa !21
  %i.fz = add nuw i64 %.013.i151, 1               ; 2 uses
  %exitcond.not.i152 = icmp eq i64 %i.fz, %5
  br i1 %exitcond.not.i152, label %mbedtls_mpi_core_cond_assign.exit153, label %.lr.ph.i150, !llvm.loop !4

mbedtls_mpi_core_cond_assign.exit153:             ; preds = %.lr.ph.i150, %mbedtls_mpi_core_cond_assign.exit148
  br i1 %.not184, label %mbedtls_mpi_core_cond_assign.exit158, label %.lr.ph.i155.preheader

mbedtls_mpi_core_cond_assign.exit153.thread:      ; preds = %mbedtls_mpi_core_cond_swap.exit.thread
  %i.ga = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !srcloc !24 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a, i64 %.idx185, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.d, i64 %.idx185, i1 false)
  br i1 %.not184, label %mbedtls_mpi_core_cond_assign.exit158.thread211, label %.lr.ph.i155.preheader

mbedtls_mpi_core_cond_assign.exit158.thread211:   ; preds = %mbedtls_mpi_core_cond_assign.exit153.thread
  %i.gb = load i64, ptr %i.c, align 8, !tbaa !21
  %i.gc = and i64 %i.gb, 1
  %i.gd = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.gc) #11, !srcloc !24 ; 0 uses
  br label %mbedtls_mpi_core_div2_mod_odd.exit

.lr.ph.i155.preheader:                            ; preds = %mbedtls_mpi_core_cond_assign.exit153.thread, %mbedtls_mpi_core_cond_assign.exit153
  %.019.lcssa.i171173175179182209 = phi i64 [ %i.ch, %mbedtls_mpi_core_cond_assign.exit153.thread ], [ %i.cy, %mbedtls_mpi_core_cond_assign.exit153 ]
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.013.i156 = phi i64 [ %i.gk, %.lr.ph.i155 ], [ 0, %.lr.ph.i155.preheader ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.013.i156
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !21
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.013.i156 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !21
  %i.gi = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.z, i64 %i.gf, i64 %i.gh) #11, !srcloc !25
  %i.gj = extractvalue { i64, i64, i64 } %i.gi, 2
  store i64 %i.gj, ptr %i.gg, align 8, !tbaa !21
  %i.gk = add nuw i64 %.013.i156, 1               ; 2 uses
  %exitcond.not.i157 = icmp eq i64 %i.gk, %5
  br i1 %exitcond.not.i157, label %mbedtls_mpi_core_cond_assign.exit158.thread, label %.lr.ph.i155, !llvm.loop !4

mbedtls_mpi_core_cond_assign.exit158.thread:      ; preds = %.lr.ph.i155
  %i.gl = load i64, ptr %i.c, align 8, !tbaa !21
  %i.gm = and i64 %i.gl, 1
  %i.gn = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.gm) #11, !srcloc !24
  br label %.lr.ph.i.i160.preheader

mbedtls_mpi_core_cond_assign.exit158:             ; preds = %mbedtls_mpi_core_cond_assign.exit153
  %i.go = load i64, ptr %i.c, align 8, !tbaa !21
  %i.gp = and i64 %i.go, 1
  %i.gq = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.gp) #11, !srcloc !24
  br label %.lr.ph.i.i160.preheader

.lr.ph.i.i160.preheader:                          ; preds = %mbedtls_mpi_core_cond_assign.exit158, %mbedtls_mpi_core_cond_assign.exit158.thread
  %.019.lcssa.i171173175179182208 = phi i64 [ %.019.lcssa.i171173175179182209, %mbedtls_mpi_core_cond_assign.exit158.thread ], [ %i.cy, %mbedtls_mpi_core_cond_assign.exit158 ]
  %i.gr = phi i64 [ %i.gn, %mbedtls_mpi_core_cond_assign.exit158.thread ], [ %i.gq, %mbedtls_mpi_core_cond_assign.exit158 ] ; 3 uses
  br i1 %i.r, label %.lr.ph.i.i160.epil.preheader, label %.lr.ph.i.i160

.lr.ph.i.i160:                                    ; preds = %.lr.ph.i.i160.preheader, %.lr.ph.i.i160
  %.023.i.i161 = phi i64 [ %i.hq, %.lr.ph.i.i160 ], [ 0, %.lr.ph.i.i160.preheader ]
  %.02122.i.i162 = phi i64 [ %i.hr, %.lr.ph.i.i160 ], [ 0, %.lr.ph.i.i160.preheader ] ; 4 uses
  %niter251 = phi i64 [ %niter251.next.1, %.lr.ph.i.i160 ], [ 0, %.lr.ph.i.i160.preheader ]
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02122.i.i162
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !21
  %i.gu = and i64 %i.gt, %i.gr                    ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02122.i.i162 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !21 ; 2 uses
  %i.gx = add i64 %i.gw, %.023.i.i161             ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = zext i1 %i.gy to i64
  %i.ha = add i64 %i.gx, %i.gu                    ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.gu
  %i.hc = zext i1 %i.hb to i64
  %i.hd = add nuw nsw i64 %i.hc, %i.gz
  store i64 %i.ha, ptr %i.gv, align 8, !tbaa !21
  %i.he = or disjoint i64 %.02122.i.i162, 1       ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.he
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !21
  %i.hh = and i64 %i.hg, %i.gr                    ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.he ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !21 ; 2 uses
  %i.hk = add i64 %i.hj, %i.hd                    ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.hj
  %i.hm = zext i1 %i.hl to i64
  %i.hn = add i64 %i.hk, %i.hh                    ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.hh
  %i.hp = zext i1 %i.ho to i64
  %i.hq = add nuw nsw i64 %i.hp, %i.hm            ; 3 uses
  store i64 %i.hn, ptr %i.hi, align 8, !tbaa !21
  %i.hr = add nuw i64 %.02122.i.i162, 2           ; 2 uses
  %niter251.next.1 = add i64 %niter251, 2         ; 2 uses
  %niter251.ncmp.1 = icmp eq i64 %niter251.next.1, %unroll_iter250
  br i1 %niter251.ncmp.1, label %.lr.ph52.i.i.preheader.unr-lcssa, label %.lr.ph.i.i160, !llvm.loop !6

.lr.ph52.i.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i.i160
  br i1 %lcmp.mod247.not, label %.lr.ph52.i.i.preheader, label %.lr.ph.i.i160.epil.preheader

.lr.ph.i.i160.epil.preheader:                     ; preds = %.lr.ph52.i.i.preheader.unr-lcssa, %.lr.ph.i.i160.preheader
  %.023.i.i161.epil.init = phi i64 [ 0, %.lr.ph.i.i160.preheader ], [ %i.hq, %.lr.ph52.i.i.preheader.unr-lcssa ]
  %.02122.i.i162.epil.init = phi i64 [ 0, %.lr.ph.i.i160.preheader ], [ %i.hr, %.lr.ph52.i.i.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod249)
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02122.i.i162.epil.init
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !21
  %i.hu = and i64 %i.ht, %i.gr                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02122.i.i162.epil.init ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !21 ; 2 uses
  %i.hx = add i64 %i.hw, %.023.i.i161.epil.init   ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.hw
  %i.hz = zext i1 %i.hy to i64
  %i.ia = add i64 %i.hx, %i.hu                    ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hu
  %i.ic = zext i1 %i.ib to i64
  %i.id = add nuw nsw i64 %i.ic, %i.hz
  store i64 %i.ia, ptr %i.hv, align 8, !tbaa !21
  br label %.lr.ph52.i.i.preheader

.lr.ph52.i.i.preheader:                           ; preds = %.lr.ph52.i.i.preheader.unr-lcssa, %.lr.ph.i.i160.epil.preheader
  %.lcssa243 = phi i64 [ %i.hq, %.lr.ph52.i.i.preheader.unr-lcssa ], [ %i.id, %.lr.ph.i.i160.epil.preheader ]
  br i1 %min.iters.check, label %.lr.ph52.i.i.preheader240, label %vector.body

vector.body:                                      ; preds = %.lr.ph52.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph52.i.i.preheader ] ; 2 uses
  %vector.recur = phi <2 x i64> [ %i.ik, %vector.body ], [ <i64 poison, i64 0>, %.lr.ph52.i.i.preheader ]
  %i.ie = sub i64 %5, %index
  %i.if = getelementptr [8 x i8], ptr %i.c, i64 %i.ie ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 -16    ; 2 uses
  %i.ih = getelementptr i8, ptr %i.if, i64 -32    ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ig, align 8, !tbaa !21 ; 3 uses
  %wide.load217 = load <2 x i64>, ptr %i.ih, align 8, !tbaa !21 ; 3 uses
  %i.ii = shl <2 x i64> %wide.load, splat (i64 63)
  %9 = shufflevector <2 x i64> %i.ii, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ij = shl <2 x i64> %wide.load217, splat (i64 63) ; 2 uses
  %i.ik = shufflevector <2 x i64> %i.ij, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.il = lshr <2 x i64> %wide.load, splat (i64 1)
  %i.im = shufflevector <2 x i64> %9, <2 x i64> %vector.recur, <2 x i32> <i32 0, i32 3>
  %reverse219 = or disjoint <2 x i64> %i.il, %i.im
  %10 = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load217, <2 x i32> <i32 3, i32 0>
  %reverse220 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %10, <2 x i64> %wide.load217, <2 x i64> splat (i64 63))
  store <2 x i64> %reverse219, ptr %i.ig, align 8, !tbaa !21
  store <2 x i64> %reverse220, ptr %i.ih, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %i.ij, i64 0
  br i1 %cmp.n, label %mbedtls_mpi_core_shift_r.exit.loopexit.i, label %.lr.ph52.i.i.preheader240

.lr.ph52.i.i.preheader240:                        ; preds = %.lr.ph52.i.i.preheader, %middle.block
  %.051.i.i.ph = phi i64 [ 0, %.lr.ph52.i.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.250.i.i.ph = phi i64 [ %5, %.lr.ph52.i.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph52.i.i

.lr.ph52.i.i:                                     ; preds = %.lr.ph52.i.i.preheader240, %.lr.ph52.i.i
  %.051.i.i = phi i64 [ %i.ir, %.lr.ph52.i.i ], [ %.051.i.i.ph, %.lr.ph52.i.i.preheader240 ]
  %.250.i.i = phi i64 [ %i.iu, %.lr.ph52.i.i ], [ %.250.i.i.ph, %.lr.ph52.i.i.preheader240 ] ; 2 uses
  %i.io = getelementptr [8 x i8], ptr %i.c, i64 %.250.i.i
  %i.ip = getelementptr i8, ptr %i.io, i64 -8     ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !21 ; 2 uses
  %i.ir = shl i64 %i.iq, 63
  %i.is = lshr i64 %i.iq, 1
  %i.it = or disjoint i64 %i.is, %.051.i.i
  store i64 %i.it, ptr %i.ip, align 8, !tbaa !21
  %i.iu = add i64 %.250.i.i, -1                   ; 2 uses
  %.not42.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not42.i.i, label %mbedtls_mpi_core_shift_r.exit.loopexit.i, label %.lr.ph52.i.i, !llvm.loop !68

mbedtls_mpi_core_shift_r.exit.loopexit.i:         ; preds = %.lr.ph52.i.i, %middle.block
  %i.iv = shl i64 %.lcssa243, 63
  br label %mbedtls_mpi_core_div2_mod_odd.exit

mbedtls_mpi_core_div2_mod_odd.exit:               ; preds = %mbedtls_mpi_core_cond_assign.exit158.thread211, %mbedtls_mpi_core_shift_r.exit.loopexit.i
  %.019.lcssa.i171173175179182207 = phi i64 [ %i.ch, %mbedtls_mpi_core_cond_assign.exit158.thread211 ], [ %.019.lcssa.i171173175179182208, %mbedtls_mpi_core_shift_r.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i10.i = phi i64 [ 0, %mbedtls_mpi_core_cond_assign.exit158.thread211 ], [ %i.iv, %mbedtls_mpi_core_shift_r.exit.loopexit.i ]
  %i.iw = load i64, ptr %i.m, align 8, !tbaa !21
  %i.ix = or i64 %i.iw, %.0.lcssa.i10.i
  store i64 %i.ix, ptr %i.m, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.b, i64 %.idx185, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %i.c, i64 %.idx185, i1 false)
  br i1 %or.cond.i164, label %.lr.ph.i165, label %mbedtls_mpi_core_cond_swap.exit168

.lr.ph.i165:                                      ; preds = %mbedtls_mpi_core_div2_mod_odd.exit, %.lr.ph.i165
  %.021.i166 = phi i64 [ %i.jh, %.lr.ph.i165 ], [ 0, %mbedtls_mpi_core_div2_mod_odd.exit ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.021.i166 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !21 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.021.i166 ; 3 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !21
  %i.jc = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.019.lcssa.i171173175179182207, i64 %i.jb, i64 %i.iz) #11, !srcloc !25
  %i.jd = extractvalue { i64, i64, i64 } %i.jc, 2
  store i64 %i.jd, ptr %i.iy, align 8, !tbaa !21
  %i.je = load i64, ptr %i.ja, align 8, !tbaa !21
  %i.jf = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.019.lcssa.i171173175179182207, i64 %i.iz, i64 %i.je) #11, !srcloc !25
  %i.jg = extractvalue { i64, i64, i64 } %i.jf, 2
  store i64 %i.jg, ptr %i.ja, align 8, !tbaa !21
  %i.jh = add nuw i64 %.021.i166, 1               ; 2 uses
  %exitcond.not.i167 = icmp eq i64 %i.jh, %5
  br i1 %exitcond.not.i167, label %mbedtls_mpi_core_cond_swap.exit168, label %.lr.ph.i165, !llvm.loop !5

mbedtls_mpi_core_cond_swap.exit168:               ; preds = %.lr.ph.i165, %mbedtls_mpi_core_div2_mod_odd.exit, %mbedtls_mpi_core_cond_swap.exit.thread, %mbedtls_mpi_core_cond_swap.exit
  %i.ji = add nuw i64 %.0189, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !69
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !19}
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !19}
!10 = distinct !{!10, !19}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"long", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{i64 870249, i64 870299, i64 870371, i64 870443, i64 870515, i64 870587, i64 870659, i64 870731, i64 870803}
!23 = !{i64 860718}
!24 = !{i64 863596, i64 863646, i64 863718, i64 863790, i64 863862}
!25 = !{i64 867017, i64 867067, i64 867139, i64 867211, i64 867283}
!26 = !{!15, !15, i64 0}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{i64 2148548446, i64 2148548573, i64 2148548619, i64 2148548665, i64 2148548711, i64 2148548757, i64 2148548803, i64 2148548849, i64 2148548895, i64 2148548941, i64 2148548987, i64 2148549008, i64 2148549054, i64 2148549100, i64 2148549146, i64 2148549192, i64 2148549238, i64 2148549284, i64 2148549330, i64 2148549376, i64 2148549422, i64 2148549475, i64 2148549521, i64 2148549567, i64 2148549613, i64 2148549659, i64 2148549705, i64 2148549751, i64 2148549797, i64 2148549843, i64 2148549889, i64 2148549910, i64 2148549956, i64 2148550002, i64 2148550048, i64 2148550094, i64 2148550140, i64 2148550186, i64 2148550232, i64 2148550278, i64 2148550324, i64 2148550409, i64 2148550455, i64 2148550501, i64 2148550547, i64 2148550593, i64 2148550639, i64 2148550685, i64 2148550731, i64 2148550777, i64 2148550823, i64 2148550844, i64 2148550890, i64 2148550936, i64 2148550982, i64 2148551028, i64 2148551074, i64 2148551120, i64 2148551166, i64 2148551212, i64 2148551258, i64 2148551311, i64 2148551357, i64 2148551403, i64 2148551449, i64 2148551495, i64 2148551541, i64 2148551587, i64 2148551633, i64 2148551679, i64 2148551725, i64 2148551746, i64 2148551792, i64 2148551838, i64 2148551884, i64 2148551930, i64 2148551976, i64 2148552022, i64 2148552068, i64 2148552114, i64 2148552160}
!30 = !{i64 2148552490, i64 2148552521, i64 2148552567, i64 2148552613, i64 2148552659, i64 2148552705, i64 2148552751, i64 2148552797, i64 2148552843, i64 2148552889, i64 2148552935}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19, !27, !28}
!37 = distinct !{!37, !19, !28, !27}
!38 = distinct !{!38, !19, !27, !28}
!39 = distinct !{!39, !19, !28, !27}
!40 = distinct !{!40, !19, !27, !28}
!41 = distinct !{!41, !19, !28, !27}
!42 = distinct !{!42, !19, !27, !28}
!43 = distinct !{!43, !19, !28, !27}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = !{!"any pointer", !15, i64 0}
!48 = !{!"p1 long", !47, i64 0}
!49 = !{!"short", !15, i64 0}
!50 = !{!"mbedtls_mpi", !48, i64 0, !49, i64 8, !49, i64 10}
!51 = !{!50, !49, i64 10}
!52 = distinct !{!52, !19, !27, !28}
!53 = distinct !{!53, !19, !28, !27}
!54 = distinct !{!54, !19, !27, !28}
!55 = distinct !{!55, !19, !28, !27}
!56 = distinct !{!56, !19}
!57 = !{ptr @mbedtls_mpi_core_fill_random}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !64}
!63 = distinct !{!63, !19}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !19, !27, !28}
!66 = distinct !{!66, !19, !28, !27}
!67 = distinct !{!67, !19, !27, !28}
!68 = distinct !{!68, !19, !28, !27}
!69 = distinct !{!69, !19}
end_hunk_0
