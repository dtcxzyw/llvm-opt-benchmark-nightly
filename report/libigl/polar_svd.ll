Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/polar_svd?download=true
inline.NumInlined: 18204
inline.NumDeleted: 9109
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 142
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE6evalToIS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEEEvRT_RT0_:bb.a
_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i74, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i66
  %i.ix = icmp sgt i64 %i.p, 0
  br i1 %i.ix, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %.0.in112 = phi i64 [ %i.p, %.lr.ph ], [ %.0113, %bb.w ] ; 3 uses
  %.0113 = add nsw i64 %.0.in112, -1              ; 7 uses
  %i.jx = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !130, !align !131 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 3 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !37
  %i.ka = load i64, ptr %i.iy, align 8, !tbaa !154
  %i.kb = add i64 %i.jz, 1
  %i.kc = add i64 %.0.in112, %i.ka                ; 7 uses
  %i.kd = sub i64 %i.kb, %i.kc                    ; 8 uses
  %i.ke = load i8, ptr %i.iz, align 8, !tbaa !152, !range !132, !noundef !130
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.kg = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !582 ; 3 uses
  %i.kh = sub nsw i64 %i.kg, %i.kd                ; 2 uses
  %i.ki = load i64, ptr %i.ig, align 8, !tbaa !38, !noalias !582
  %i.kj = sub nsw i64 %i.ki, %i.kd                ; 2 uses
  %i.kk = load ptr, ptr %1, align 8, !tbaa !36, !noalias !582
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kh
  %i.km = mul nsw i64 %i.kj, %i.kg
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.km
  store ptr %i.kn, ptr %7, align 8, !tbaa !167, !alias.scope !582
  store i64 %i.kd, ptr %i.jm, align 8, !tbaa !168, !alias.scope !582
  store i64 %i.kd, ptr %i.jn, align 8, !tbaa !168, !alias.scope !582
  store ptr %1, ptr %i.jo, align 8, !tbaa !59, !alias.scope !582
  store i64 %i.kh, ptr %i.jp, align 8, !tbaa !168, !alias.scope !582
  store i64 %i.kj, ptr %i.jq, align 8, !tbaa !168, !alias.scope !582
  store i64 %i.kg, ptr %i.jr, align 8, !tbaa !171, !alias.scope !582
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.ko = load i64, ptr %i.jy, align 8, !tbaa !37, !noalias !585 ; 3 uses
  %i.kp = sub nsw i64 %i.ko, %i.kc
  %i.kq = load ptr, ptr %i.jx, align 8, !tbaa !36, !noalias !585
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kc
  %i.ks = mul nsw i64 %i.ko, %.0113
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.ks
  store ptr %i.kt, ptr %8, align 8, !tbaa !174, !alias.scope !585
  store i64 %i.kp, ptr %i.js, align 8, !tbaa !168, !alias.scope !585
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !59, !alias.scope !585
  store i64 %i.kc, ptr %i.ju, align 8, !tbaa !168, !alias.scope !585
  store i64 %.0113, ptr %i.jv, align 8, !tbaa !168, !alias.scope !585
  store i64 %i.ko, ptr %i.jw, align 8, !tbaa !176, !alias.scope !585
  %i.ku = load ptr, ptr %i.jl, align 8, !tbaa !177, !nonnull !130, !align !131
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !47
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %.0113
  %i.kx = load ptr, ptr %2, align 8, !tbaa !145
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef %i.kx)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.ky = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !586 ; 3 uses
  %i.kz = sub nsw i64 %i.ky, %i.kd                ; 2 uses
  %i.la = load i64, ptr %i.ig, align 8, !tbaa !38, !noalias !586
  %i.lb = sub nsw i64 %i.la, %i.kd                ; 2 uses
  %i.lc = load ptr, ptr %1, align 8, !tbaa !36, !noalias !586
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.kz
  %i.le = mul nsw i64 %i.lb, %i.ky
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.le
  store ptr %i.lf, ptr %9, align 8, !tbaa !167, !alias.scope !586
  store i64 %i.kd, ptr %i.ja, align 8, !tbaa !168, !alias.scope !586
  store i64 %i.kd, ptr %i.jb, align 8, !tbaa !168, !alias.scope !586
  store ptr %1, ptr %i.jc, align 8, !tbaa !59, !alias.scope !586
  store i64 %i.kz, ptr %i.jd, align 8, !tbaa !168, !alias.scope !586
  store i64 %i.lb, ptr %i.je, align 8, !tbaa !168, !alias.scope !586
  store i64 %i.ky, ptr %i.jf, align 8, !tbaa !171, !alias.scope !586
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.lg = load i64, ptr %i.jy, align 8, !tbaa !37, !noalias !589 ; 3 uses
  %i.lh = sub nsw i64 %i.lg, %i.kc
  %i.li = load ptr, ptr %i.jx, align 8, !tbaa !36, !noalias !589
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.kc
  %i.lk = mul nsw i64 %i.lg, %.0113
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.lk
  store ptr %i.ll, ptr %10, align 8, !tbaa !174, !alias.scope !589
  store i64 %i.lh, ptr %i.jg, align 8, !tbaa !168, !alias.scope !589
  store ptr %i.jx, ptr %i.jh, align 8, !tbaa !59, !alias.scope !589
  store i64 %i.kc, ptr %i.ji, align 8, !tbaa !168, !alias.scope !589
  store i64 %.0113, ptr %i.jj, align 8, !tbaa !168, !alias.scope !589
  store i64 %i.lg, ptr %i.jk, align 8, !tbaa !176, !alias.scope !589
  %i.lm = load ptr, ptr %i.jl, align 8, !tbaa !177, !nonnull !130, !align !131
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !47
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %.0113
  %i.lp = load ptr, ptr %2, align 8, !tbaa !145
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.lo, ptr noundef %i.lp)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lq = icmp samesign ugt i64 %.0.in112, 1
  br i1 %i.lq, label %bb.t, label %.loopexit, !llvm.loop !571

.loopexit:                                        ; preds = %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit64, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76, %.preheader, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE18applyThisOnTheLeftIS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.687", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Block.687", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1356", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.687", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.1119", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !132
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %3, i1 %i.c, i1 false
  %.048.shrunk = xor i1 %3, %or.cond              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !153  ; 5 uses
  %i.f = icmp sgt i64 %i.e, 47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38   ; 6 uses
  %i.i = icmp sgt i64 %i.h, 1
  %or.cond79 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond79, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.k = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.k, 127
  %i.l = select i1 %i.j, i64 %.zext, i64 48       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.f
  %i.af = phi i64 [ %i.e, %.lr.ph66 ], [ %i.bp, %bb.f ] ; 2 uses
  %.04765 = phi i64 [ 0, %.lr.ph66 ], [ %i.bo, %bb.f ] ; 4 uses
  %i.ag = load i8, ptr %i.a, align 8, !tbaa !152, !range !132, !noundef !130
  %i.ah = trunc nuw i8 %i.ag to i1                ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ai = add nuw nsw i64 %.04765, %i.l
  %.sroa.speculated57 = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = sub nsw i64 %i.af, %.04765              ; 2 uses
  %i.ak = sub nsw i64 %i.aj, %i.l
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.al = phi i64 [ %i.aj, %bb.c ], [ %.sroa.speculated57, %.thread ]
  %i.am = phi i64 [ %.sroa.speculated, %bb.c ], [ %.04765, %.thread ] ; 6 uses
  %i.an = sub nsw i64 %i.al, %i.am                ; 2 uses
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !154
  %i.ap = add i64 %i.ao, %i.am                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aq = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !130, !align !131 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !37 ; 4 uses
  %i.at = sub i64 %i.as, %i.ap                    ; 3 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = mul nsw i64 %i.as, %i.am
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %4, align 8, !tbaa !167
  store i64 %i.at, ptr %i.n, align 8, !tbaa !168
  store i64 %i.an, ptr %i.o, align 8, !tbaa !168
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !59
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !168
  store i64 %i.am, ptr %i.r, align 8, !tbaa !168
  store i64 %i.as, ptr %i.s, align 8, !tbaa !171
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !37  ; 3 uses
  %i.az = sub i64 %i.ap, %i.as
  %i.ba = add i64 %i.az, %i.ay                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bb = select i1 %.048.shrunk, i64 %i.ba, i64 0 ; 2 uses
  br i1 %.048.shrunk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bd = phi i64 [ %i.bc, %bb.e ], [ %i.at, %bb.d ]
  %i.be = load ptr, ptr %1, align 8, !tbaa !36
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ba
  %i.bg = mul nsw i64 %i.bb, %i.ay
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %i.bh, ptr %5, align 8, !tbaa !167
  store i64 %i.at, ptr %i.u, align 8, !tbaa !168
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !168
  store ptr %1, ptr %i.w, align 8, !tbaa !59
  store i64 %i.ba, ptr %i.x, align 8, !tbaa !168
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !168
  store i64 %i.ay, ptr %i.z, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !177, !nonnull !130, !align !131 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47, !noalias !600
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.am
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !48, !noalias !600
  store ptr %i.bk, ptr %6, align 8, !tbaa !179, !alias.scope !600
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !168, !alias.scope !600
  store ptr %i.bi, ptr %i.ac, align 8, !tbaa !150, !alias.scope !600
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !168, !alias.scope !600
  store i64 %i.bm, ptr %i.ae, align 8, !tbaa !182, !alias.scope !600
  %i.bn = xor i1 %i.ah, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bo = add nuw nsw i64 %.04765, %i.l           ; 2 uses
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !153 ; 2 uses
  %i.bq = icmp slt i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.b, label %.loopexit, !llvm.loop !592

._crit_edge:                                      ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !155
  %.not.i.i = icmp eq i64 %i.h, %i.bt
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %2, align 8, !tbaa !145
  tail call void @free(ptr noundef %i.bu) #19
  %i.bv = icmp sgt i64 %i.h, 0
  br i1 %i.bv, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp samesign ugt i64 %i.h, 2305843009213693951
  br i1 %i.bw, label %bb.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bx, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.h
  %i.by = shl nuw i64 %i.h, 3
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #21 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cb, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.g
  %.sink.i.i = phi ptr [ %i.bz, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !145
  %.pre68 = load i64, ptr %i.d, align 8, !tbaa !153
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %._crit_edge, %.sink.split.i.i
  %i.cc = phi i64 [ %i.e, %._crit_edge ], [ %.pre68, %.sink.split.i.i ] ; 2 uses
  store i64 %i.h, ptr %i.bs, align 8, !tbaa !155
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %i.cs = phi i64 [ %i.cc, %.lr.ph ], [ %i.dx, %bb.k ]
  %.064 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.k ] ; 3 uses
  %i.ct = load i8, ptr %i.a, align 8, !tbaa !152, !range !132, !noundef !130
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = xor i64 %.064, -1
  %i.cw = add i64 %i.cs, %i.cv
  %i.cx = select i1 %i.cu, i64 %.064, i64 %i.cw   ; 4 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !130, !align !131 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !37
  %i.db = load i64, ptr %i.ce, align 8, !tbaa !154
  %i.dc = add i64 %i.cx, %i.db                    ; 2 uses
  %i.dd = sub i64 %i.da, %i.dc                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.pre69 = load i64, ptr %i.br, align 8, !tbaa !38 ; 2 uses
  %spec.select = select i1 %.048.shrunk, i64 %i.dd, i64 %.pre69 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.de = load i64, ptr %i.cf, align 8, !tbaa !37, !noalias !601 ; 3 uses
  %i.df = sub nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = sub nsw i64 %.pre69, %spec.select       ; 2 uses
  %i.dh = load ptr, ptr %1, align 8, !tbaa !36, !noalias !601
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.df
  %i.dj = mul nsw i64 %i.dg, %i.de
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  store ptr %i.dk, ptr %7, align 8, !tbaa !167, !alias.scope !601
  store i64 %i.dd, ptr %i.cg, align 8, !tbaa !168, !alias.scope !601
  store i64 %spec.select, ptr %i.ch, align 8, !tbaa !168, !alias.scope !601
  store ptr %1, ptr %i.ci, align 8, !tbaa !59, !alias.scope !601
  store i64 %i.df, ptr %i.cj, align 8, !tbaa !168, !alias.scope !601
  store i64 %i.dg, ptr %i.ck, align 8, !tbaa !168, !alias.scope !601
  store i64 %i.de, ptr %i.cl, align 8, !tbaa !171, !alias.scope !601
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.dl = add i64 %i.dc, 1                        ; 3 uses
  %i.dm = load i64, ptr %i.cz, align 8, !tbaa !37, !noalias !604 ; 3 uses
  %i.dn = sub nsw i64 %i.dm, %i.dl
  %i.do = load ptr, ptr %i.cy, align 8, !tbaa !36, !noalias !604
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dl
  %i.dq = mul nsw i64 %i.dm, %i.cx
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  store ptr %i.dr, ptr %8, align 8, !tbaa !174, !alias.scope !604
  store i64 %i.dn, ptr %i.cm, align 8, !tbaa !168, !alias.scope !604
  store ptr %i.cy, ptr %i.cn, align 8, !tbaa !59, !alias.scope !604
  store i64 %i.dl, ptr %i.co, align 8, !tbaa !168, !alias.scope !604
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !168, !alias.scope !604
  store i64 %i.dm, ptr %i.cq, align 8, !tbaa !176, !alias.scope !604
  %i.ds = load ptr, ptr %i.cr, align 8, !tbaa !177, !nonnull !130, !align !131
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.cx
  %i.dv = load ptr, ptr %2, align 8, !tbaa !145
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.dw = add nuw nsw i64 %.064, 1                ; 2 uses
  %i.dx = load i64, ptr %i.d, align 8, !tbaa !153 ; 2 uses
  %i.dy = icmp slt i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.k, label %.loopexit, !llvm.loop !599

.loopexit:                                        ; preds = %bb.k, %bb.f, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE6evalToIS2_S3_EEvRT_RT0_:bb.a
_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i74, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i66
  %i.ix = icmp sgt i64 %i.p, 0
  br i1 %i.ix, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %.0.in112 = phi i64 [ %i.p, %.lr.ph ], [ %.0113, %bb.w ] ; 3 uses
  %.0113 = add nsw i64 %.0.in112, -1              ; 7 uses
  %i.jx = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !130, !align !131 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 3 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !37
  %i.ka = load i64, ptr %i.iy, align 8, !tbaa !154
  %i.kb = add i64 %i.jz, 1
  %i.kc = add i64 %.0.in112, %i.ka                ; 7 uses
  %i.kd = sub i64 %i.kb, %i.kc                    ; 8 uses
  %i.ke = load i8, ptr %i.iz, align 8, !tbaa !152, !range !132, !noundef !130
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.kg = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !1204 ; 3 uses
  %i.kh = sub nsw i64 %i.kg, %i.kd                ; 2 uses
  %i.ki = load i64, ptr %i.ig, align 8, !tbaa !38, !noalias !1204
  %i.kj = sub nsw i64 %i.ki, %i.kd                ; 2 uses
  %i.kk = load ptr, ptr %1, align 8, !tbaa !36, !noalias !1204
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kh
  %i.km = mul nsw i64 %i.kj, %i.kg
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.km
  store ptr %i.kn, ptr %7, align 8, !tbaa !167, !alias.scope !1204
  store i64 %i.kd, ptr %i.jm, align 8, !tbaa !168, !alias.scope !1204
  store i64 %i.kd, ptr %i.jn, align 8, !tbaa !168, !alias.scope !1204
  store ptr %1, ptr %i.jo, align 8, !tbaa !59, !alias.scope !1204
  store i64 %i.kh, ptr %i.jp, align 8, !tbaa !168, !alias.scope !1204
  store i64 %i.kj, ptr %i.jq, align 8, !tbaa !168, !alias.scope !1204
  store i64 %i.kg, ptr %i.jr, align 8, !tbaa !171, !alias.scope !1204
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.ko = load i64, ptr %i.jy, align 8, !tbaa !37, !noalias !1207 ; 3 uses
  %i.kp = sub nsw i64 %i.ko, %i.kc
  %i.kq = load ptr, ptr %i.jx, align 8, !tbaa !36, !noalias !1207
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kc
  %i.ks = mul nsw i64 %i.ko, %.0113
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.ks
  store ptr %i.kt, ptr %8, align 8, !tbaa !174, !alias.scope !1207
  store i64 %i.kp, ptr %i.js, align 8, !tbaa !168, !alias.scope !1207
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !59, !alias.scope !1207
  store i64 %i.kc, ptr %i.ju, align 8, !tbaa !168, !alias.scope !1207
  store i64 %.0113, ptr %i.jv, align 8, !tbaa !168, !alias.scope !1207
  store i64 %i.ko, ptr %i.jw, align 8, !tbaa !176, !alias.scope !1207
  %i.ku = load ptr, ptr %i.jl, align 8, !tbaa !177, !nonnull !130, !align !131
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !47
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %.0113
  %i.kx = load ptr, ptr %2, align 8, !tbaa !47
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef %i.kx)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.ky = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !1208 ; 3 uses
  %i.kz = sub nsw i64 %i.ky, %i.kd                ; 2 uses
  %i.la = load i64, ptr %i.ig, align 8, !tbaa !38, !noalias !1208
  %i.lb = sub nsw i64 %i.la, %i.kd                ; 2 uses
  %i.lc = load ptr, ptr %1, align 8, !tbaa !36, !noalias !1208
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.kz
  %i.le = mul nsw i64 %i.lb, %i.ky
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.le
  store ptr %i.lf, ptr %9, align 8, !tbaa !167, !alias.scope !1208
  store i64 %i.kd, ptr %i.ja, align 8, !tbaa !168, !alias.scope !1208
  store i64 %i.kd, ptr %i.jb, align 8, !tbaa !168, !alias.scope !1208
  store ptr %1, ptr %i.jc, align 8, !tbaa !59, !alias.scope !1208
  store i64 %i.kz, ptr %i.jd, align 8, !tbaa !168, !alias.scope !1208
  store i64 %i.lb, ptr %i.je, align 8, !tbaa !168, !alias.scope !1208
  store i64 %i.ky, ptr %i.jf, align 8, !tbaa !171, !alias.scope !1208
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  %i.lg = load i64, ptr %i.jy, align 8, !tbaa !37, !noalias !1211 ; 3 uses
  %i.lh = sub nsw i64 %i.lg, %i.kc
  %i.li = load ptr, ptr %i.jx, align 8, !tbaa !36, !noalias !1211
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.kc
  %i.lk = mul nsw i64 %i.lg, %.0113
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.lk
  store ptr %i.ll, ptr %10, align 8, !tbaa !174, !alias.scope !1211
  store i64 %i.lh, ptr %i.jg, align 8, !tbaa !168, !alias.scope !1211
  store ptr %i.jx, ptr %i.jh, align 8, !tbaa !59, !alias.scope !1211
  store i64 %i.kc, ptr %i.ji, align 8, !tbaa !168, !alias.scope !1211
  store i64 %.0113, ptr %i.jj, align 8, !tbaa !168, !alias.scope !1211
  store i64 %i.lg, ptr %i.jk, align 8, !tbaa !176, !alias.scope !1211
  %i.lm = load ptr, ptr %i.jl, align 8, !tbaa !177, !nonnull !130, !align !131
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !47
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %.0113
  %i.lp = load ptr, ptr %2, align 8, !tbaa !47
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.lo, ptr noundef %i.lp)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lq = icmp samesign ugt i64 %.0.in112, 1
  br i1 %i.lq, label %bb.t, label %.loopexit, !llvm.loop !1193

.loopexit:                                        ; preds = %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit64, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76, %.preheader, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE18applyThisOnTheLeftIS2_S3_EEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.687", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Block.687", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1356", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.687", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.1119", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !132
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %3, i1 %i.c, i1 false
  %.048.shrunk = xor i1 %3, %or.cond              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !153  ; 5 uses
  %i.f = icmp sgt i64 %i.e, 47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38   ; 6 uses
  %i.i = icmp sgt i64 %i.h, 1
  %or.cond79 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond79, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.k = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.k, 127
  %i.l = select i1 %i.j, i64 %.zext, i64 48       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.f
  %i.af = phi i64 [ %i.e, %.lr.ph66 ], [ %i.bp, %bb.f ] ; 2 uses
  %.04765 = phi i64 [ 0, %.lr.ph66 ], [ %i.bo, %bb.f ] ; 4 uses
  %i.ag = load i8, ptr %i.a, align 8, !tbaa !152, !range !132, !noundef !130
  %i.ah = trunc nuw i8 %i.ag to i1                ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ai = add nuw nsw i64 %.04765, %i.l
  %.sroa.speculated57 = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = sub nsw i64 %i.af, %.04765              ; 2 uses
  %i.ak = sub nsw i64 %i.aj, %i.l
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.al = phi i64 [ %i.aj, %bb.c ], [ %.sroa.speculated57, %.thread ]
  %i.am = phi i64 [ %.sroa.speculated, %bb.c ], [ %.04765, %.thread ] ; 6 uses
  %i.an = sub nsw i64 %i.al, %i.am                ; 2 uses
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !154
  %i.ap = add i64 %i.ao, %i.am                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aq = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !130, !align !131 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !37 ; 4 uses
  %i.at = sub i64 %i.as, %i.ap                    ; 3 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = mul nsw i64 %i.as, %i.am
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %4, align 8, !tbaa !167
  store i64 %i.at, ptr %i.n, align 8, !tbaa !168
  store i64 %i.an, ptr %i.o, align 8, !tbaa !168
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !59
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !168
  store i64 %i.am, ptr %i.r, align 8, !tbaa !168
  store i64 %i.as, ptr %i.s, align 8, !tbaa !171
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !37  ; 3 uses
  %i.az = sub i64 %i.ap, %i.as
  %i.ba = add i64 %i.az, %i.ay                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bb = select i1 %.048.shrunk, i64 %i.ba, i64 0 ; 2 uses
  br i1 %.048.shrunk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bd = phi i64 [ %i.bc, %bb.e ], [ %i.at, %bb.d ]
  %i.be = load ptr, ptr %1, align 8, !tbaa !36
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ba
  %i.bg = mul nsw i64 %i.bb, %i.ay
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %i.bh, ptr %5, align 8, !tbaa !167
  store i64 %i.at, ptr %i.u, align 8, !tbaa !168
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !168
  store ptr %1, ptr %i.w, align 8, !tbaa !59
  store i64 %i.ba, ptr %i.x, align 8, !tbaa !168
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !168
  store i64 %i.ay, ptr %i.z, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !177, !nonnull !130, !align !131 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47, !noalias !1222
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.am
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !48, !noalias !1222
  store ptr %i.bk, ptr %6, align 8, !tbaa !179, !alias.scope !1222
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !168, !alias.scope !1222
  store ptr %i.bi, ptr %i.ac, align 8, !tbaa !150, !alias.scope !1222
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !168, !alias.scope !1222
  store i64 %i.bm, ptr %i.ae, align 8, !tbaa !182, !alias.scope !1222
  %i.bn = xor i1 %i.ah, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bo = add nuw nsw i64 %.04765, %i.l           ; 2 uses
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !153 ; 2 uses
  %i.bq = icmp slt i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.b, label %.loopexit, !llvm.loop !1214

._crit_edge:                                      ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !48
  %.not.i.i = icmp eq i64 %i.h, %i.bt
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %2, align 8, !tbaa !47
  tail call void @free(ptr noundef %i.bu) #19
  %i.bv = icmp sgt i64 %i.h, 0
  br i1 %i.bv, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp samesign ugt i64 %i.h, 2305843009213693951
  br i1 %i.bw, label %bb.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bx, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.h
  %i.by = shl nuw i64 %i.h, 3
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #21 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cb, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.g
  %.sink.i.i = phi ptr [ %i.bz, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !47
  %.pre68 = load i64, ptr %i.d, align 8, !tbaa !153
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %._crit_edge, %.sink.split.i.i
  %i.cc = phi i64 [ %i.e, %._crit_edge ], [ %.pre68, %.sink.split.i.i ] ; 2 uses
  store i64 %i.h, ptr %i.bs, align 8, !tbaa !48
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %i.cs = phi i64 [ %i.cc, %.lr.ph ], [ %i.dx, %bb.k ]
  %.064 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.k ] ; 3 uses
  %i.ct = load i8, ptr %i.a, align 8, !tbaa !152, !range !132, !noundef !130
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = xor i64 %.064, -1
  %i.cw = add i64 %i.cs, %i.cv
  %i.cx = select i1 %i.cu, i64 %.064, i64 %i.cw   ; 4 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !130, !align !131 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !37
  %i.db = load i64, ptr %i.ce, align 8, !tbaa !154
  %i.dc = add i64 %i.cx, %i.db                    ; 2 uses
  %i.dd = sub i64 %i.da, %i.dc                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.pre69 = load i64, ptr %i.br, align 8, !tbaa !38 ; 2 uses
  %spec.select = select i1 %.048.shrunk, i64 %i.dd, i64 %.pre69 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.de = load i64, ptr %i.cf, align 8, !tbaa !37, !noalias !1223 ; 3 uses
  %i.df = sub nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = sub nsw i64 %.pre69, %spec.select       ; 2 uses
  %i.dh = load ptr, ptr %1, align 8, !tbaa !36, !noalias !1223
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.df
  %i.dj = mul nsw i64 %i.dg, %i.de
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  store ptr %i.dk, ptr %7, align 8, !tbaa !167, !alias.scope !1223
  store i64 %i.dd, ptr %i.cg, align 8, !tbaa !168, !alias.scope !1223
  store i64 %spec.select, ptr %i.ch, align 8, !tbaa !168, !alias.scope !1223
  store ptr %1, ptr %i.ci, align 8, !tbaa !59, !alias.scope !1223
  store i64 %i.df, ptr %i.cj, align 8, !tbaa !168, !alias.scope !1223
  store i64 %i.dg, ptr %i.ck, align 8, !tbaa !168, !alias.scope !1223
  store i64 %i.de, ptr %i.cl, align 8, !tbaa !171, !alias.scope !1223
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.dl = add i64 %i.dc, 1                        ; 3 uses
  %i.dm = load i64, ptr %i.cz, align 8, !tbaa !37, !noalias !1226 ; 3 uses
  %i.dn = sub nsw i64 %i.dm, %i.dl
  %i.do = load ptr, ptr %i.cy, align 8, !tbaa !36, !noalias !1226
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dl
  %i.dq = mul nsw i64 %i.dm, %i.cx
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  store ptr %i.dr, ptr %8, align 8, !tbaa !174, !alias.scope !1226
  store i64 %i.dn, ptr %i.cm, align 8, !tbaa !168, !alias.scope !1226
  store ptr %i.cy, ptr %i.cn, align 8, !tbaa !59, !alias.scope !1226
  store i64 %i.dl, ptr %i.co, align 8, !tbaa !168, !alias.scope !1226
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !168, !alias.scope !1226
  store i64 %i.dm, ptr %i.cq, align 8, !tbaa !176, !alias.scope !1226
  %i.ds = load ptr, ptr %i.cr, align 8, !tbaa !177, !nonnull !130, !align !131
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.cx
  %i.dv = load ptr, ptr %2, align 8, !tbaa !47
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.dw = add nuw nsw i64 %.064, 1                ; 2 uses
  %i.dx = load i64, ptr %i.d, align 8, !tbaa !153 ; 2 uses
  %i.dy = icmp slt i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.k, label %.loopexit, !llvm.loop !1221

.loopexit:                                        ; preds = %bb.k, %bb.f, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper.993", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.1745", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !227  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !225
  %.sroa.speculated243 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated243, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !231    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #21 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc190 unwind label %bb.af

.noexc190:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !232  ; 2 uses
  %.not156 = icmp eq ptr %i.w, null
  br i1 %.not156, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #21 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc193 unwind label %bb.ag

.noexc193:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !233

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #19
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #19
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #19
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !236
  %.sroa.speculated275 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated275, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 5 uses
  br i1 %i.ar, label %.lr.ph314.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph325.split.preheader, label %._crit_edge

.lr.ph325.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = icmp slt i64 %i.b, %0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph314.us.preheader:                           ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bb = shl i64 %i.b, 3
  %i.bc = mul i64 %., %6
  %i.bd = shl i64 %i.bc, 3
  %i.be = shl i64 %6, 3                           ; 3 uses
  %i.bf = shl i64 %3, 3
  %i.bg = add i64 %i.bf, 8
  %i.bh = mul i64 %i.b, %i.bg
  %i.bi = shl i64 %3, 5
  %i.bj = add i64 %i.bi, 32
  %i.bk = shl i64 %3, 3
  %stride.check.1 = icmp slt i64 %i.be, 0
  %i.bl = shl i64 %3, 4
  %stride.check.2 = icmp slt i64 %i.be, 0
  br label %.lr.ph314.us

.lr.ph314.us:                                     ; preds = %.loopexit.us, %.lr.ph314.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ %0, %.lr.ph314.us.preheader ] ; 2 uses
  %.0132323.us = phi i64 [ %i.gp, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 4 uses
  %i.bm = mul i64 %i.bb, %indvar                  ; 3 uses
  %i.bn = mul i64 %i.bh, %indvar                  ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %indvars.iv)
  %i.bo = sub nsw i64 %0, %.0132323.us
  %.sroa.speculated218.us = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.bo) ; 8 uses
  %i.bp = icmp sgt i64 %.sroa.speculated218.us, 0
  br i1 %i.bp, label %.lr.ph308.us.us.preheader, label %._crit_edge315.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph314.us
  %i.bq = getelementptr i8, ptr %4, i64 %i.bm
  %i.br = getelementptr i8, ptr %4, i64 %i.bm
  %i.bs = getelementptr i8, ptr %2, i64 %i.bn
  %i.bt = getelementptr i8, ptr %4, i64 %i.bm
  %i.bu = getelementptr i8, ptr %2, i64 %i.bn
  br label %.lr.ph308.us.us

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar375 = phi i64 [ %indvar.next376, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 3 uses
  %.0131312.us.us = phi i64 [ %i.gn, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 10 uses
  %i.bv = mul i64 %i.bd, %indvar375               ; 3 uses
  %i.bw = or disjoint i64 %.0131312.us.us, 1
  %i.bx = mul i64 %., %indvar375                  ; 2 uses
  %i.by = sub i64 %1, %i.bx
  %smin379 = call i64 @llvm.smin.i64(i64 %., i64 %i.by)
  %i.bz = add i64 %smin379, %.0131312.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.bw, i64 %i.bz)
  %i.ca = xor i64 %i.bx, -1
  %i.cb = add i64 %smax, %i.ca
  %i.cc = mul i64 %i.be, %i.cb
  %i.cd = sub nsw i64 %1, %.0131312.us.us         ; 2 uses
  %.sroa.speculated213.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cd) ; 3 uses
  %i.ce = add nsw i64 %.sroa.speculated213.us.us, %.0131312.us.us ; 3 uses
  %i.cf = icmp slt i64 %i.cd, 1
  %i.cg = mul nuw nsw i64 %.0131312.us.us, %.sroa.speculated218.us
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cg ; 2 uses
  %i.ci = mul nsw i64 %.0131312.us.us, %6
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bq, i64 %i.bv
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.br, i64 %i.bv
  %i.cm = getelementptr i8, ptr %i.bt, i64 %i.bv
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %.lr.ph308.us.us
  %indvar377 = phi i64 [ %indvar.next378, %bb.x ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %bb.x ], [ %smin, %.lr.ph308.us.us ] ; 4 uses
  %.0130306.us.us = phi i64 [ %i.gl, %bb.x ], [ 0, %.lr.ph308.us.us ] ; 5 uses
  %i.cn = shl i64 %indvar377, 5                   ; 3 uses
  %scevgep380 = getelementptr i8, ptr %i.ck, i64 %i.cn
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv341, i64 4)
  %i.co = shl i64 %smin381, 3                     ; 3 uses
  %scevgep382 = getelementptr i8, ptr %scevgep380, i64 %i.co ; 2 uses
  %i.cp = mul i64 %i.bj, %indvar377               ; 2 uses
  %i.cq = sub nuw nsw i64 %.sroa.speculated218.us, %.0130306.us.us ; 6 uses
  %.sroa.speculated207.us.us = call i64 @llvm.smin.i64(i64 %i.cq, i64 4) ; 9 uses
  %i.cr = icmp slt i64 %i.cq, 1
  %i.cs = add i64 %.0130306.us.us, %.0132323.us   ; 10 uses
  %brmerge = select i1 %i.cr, i1 true, i1 %i.cf
  br i1 %brmerge, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us

.lr.ph300.us.us:                                  ; preds = %bb.s
  %i.ct = add nsw i64 %.sroa.speculated207.us.us, -1
  %i.cu = add i64 %i.cs, 1                        ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %4, i64 %i.cs
  %i.cw = getelementptr [8 x i8], ptr %4, i64 %i.cu
  %i.cx = mul i64 %i.cs, %3
  %i.cy = getelementptr [8 x i8], ptr %2, i64 %i.cu
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %i.cx
  %i.da = icmp sgt i64 %i.cq, 1
  br i1 %i.da, label %.lr.ph.us.us, label %._crit_edge301.split.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph300.us.us, %._crit_edge.us.us
  %.0128298.us.us = phi i64 [ %i.dn, %._crit_edge.us.us ], [ %.0131312.us.us, %.lr.ph300.us.us ] ; 2 uses
  %i.db = mul nsw i64 %.0128298.us.us, %6         ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cv, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !39
  %i.de = getelementptr [8 x i8], ptr %i.cw, i64 %i.db
  %i.df = fneg double %i.dd
  br label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph.us.us, %scalar.ph
  %.0127297.us.us = phi i64 [ %i.dl, %scalar.ph ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0127297.us.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !39
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.0127297.us.us ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !39
  %i.dk = call double @llvm.fmuladd.f64(double %i.df, double %i.dh, double %i.dj)
  store double %i.dk, ptr %i.di, align 8, !tbaa !39
  %i.dl = add nuw nsw i64 %.0127297.us.us, 1      ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.ct
  br i1 %i.dm, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !1412

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.dn = add nuw nsw i64 %.0128298.us.us, 1      ; 2 uses
  %i.do = icmp slt i64 %i.dn, %i.ce
  br i1 %i.do, label %.lr.ph.us.us, label %._crit_edge301.split.us.us, !llvm.loop !1413

._crit_edge301.split.us.us:                       ; preds = %._crit_edge.us.us, %.lr.ph300.us.us
  %exitcond.not = icmp slt i64 %indvars.iv341, 2
  br i1 %exitcond.not, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.1

.lr.ph300.us.us.1:                                ; preds = %._crit_edge301.split.us.us
  %i.dp = getelementptr i8, ptr %i.cl, i64 %i.cn
  %scevgep.1 = getelementptr i8, ptr %i.dp, i64 16
  %i.dq = getelementptr i8, ptr %i.bs, i64 %i.cp
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.co
  %scevgep383.1 = getelementptr i8, ptr %i.dr, i64 %i.bk
  %i.ds = add i64 %i.cs, 1                        ; 2 uses
  %i.dt = add nsw i64 %.sroa.speculated207.us.us, -2 ; 4 uses
  %i.du = add i64 %i.cs, 2                        ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %4, i64 %i.ds
  %i.dw = getelementptr [8 x i8], ptr %4, i64 %i.du
  %i.dx = mul i64 %i.ds, %3
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %i.du
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dx ; 3 uses
  %i.ea = icmp sgt i64 %i.cq, 2
  br i1 %i.ea, label %.lr.ph.us.us.preheader.1, label %._crit_edge301.split.us.us.1

.lr.ph.us.us.preheader.1:                         ; preds = %.lr.ph300.us.us.1
  %min.iters.check.1 = icmp ult i64 %i.dt, 4
  %bound0.1 = icmp ult ptr %scevgep.1, %scevgep383.1
  %bound1.1 = icmp ult ptr %i.dz, %scevgep382
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  %i.eb = or i1 %found.conflict.1, %stride.check.1
  %n.vec.1 = and i64 %i.dt, 9223372036854775804   ; 3 uses
  %cmp.n.1 = icmp eq i64 %i.dt, %n.vec.1
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %._crit_edge.us.us.1, %.lr.ph.us.us.preheader.1
  %.0128298.us.us.1 = phi i64 [ %i.ev, %._crit_edge.us.us.1 ], [ %.0131312.us.us, %.lr.ph.us.us.preheader.1 ] ; 2 uses
  %i.ec = mul nsw i64 %.0128298.us.us.1, %6       ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.dv, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !39
  %i.ef = getelementptr [8 x i8], ptr %i.dw, i64 %i.ec ; 2 uses
  %i.eg = fneg double %i.ee                       ; 2 uses
  %brmerge388 = select i1 %min.iters.check.1, i1 true, i1 %i.eb
  br i1 %brmerge388, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %.lr.ph.us.us.1
  %broadcast.splatinsert.1 = insertelement <2 x double> poison, double %i.eg, i64 0
  %broadcast.splat.1 = shufflevector <2 x double> %broadcast.splatinsert.1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index.1 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.eh, align 8, !tbaa !39, !alias.scope !1422
  %wide.load384.1 = load <2 x double>, ptr %i.ei, align 8, !tbaa !39, !alias.scope !1422
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index.1 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %wide.load385.1 = load <2 x double>, ptr %i.ej, align 8, !tbaa !39, !alias.scope !1423, !noalias !1422
  %wide.load386.1 = load <2 x double>, ptr %i.ek, align 8, !tbaa !39, !alias.scope !1423, !noalias !1422
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load.1, <2 x double> %wide.load385.1)
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load384.1, <2 x double> %wide.load386.1)
  store <2 x double> %i.el, ptr %i.ej, align 8, !tbaa !39, !alias.scope !1423, !noalias !1422
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !39, !alias.scope !1423, !noalias !1422
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.en = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.en, label %middle.block.1, label %vector.body.1, !llvm.loop !1417

middle.block.1:                                   ; preds = %vector.body.1
  br i1 %cmp.n.1, label %._crit_edge.us.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %.lr.ph.us.us.1, %middle.block.1
  %.0127297.us.us.ph.1 = phi i64 [ %n.vec.1, %middle.block.1 ], [ 0, %.lr.ph.us.us.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %.0127297.us.us.1 = phi i64 [ %i.et, %scalar.ph.1 ], [ %.0127297.us.us.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0127297.us.us.1
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !39
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.0127297.us.us.1 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !39
  %i.es = call double @llvm.fmuladd.f64(double %i.eg, double %i.ep, double %i.er)
  store double %i.es, ptr %i.eq, align 8, !tbaa !39
  %i.et = add nuw nsw i64 %.0127297.us.us.1, 1    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.dt
  br i1 %i.eu, label %scalar.ph.1, label %._crit_edge.us.us.1, !llvm.loop !1412

._crit_edge.us.us.1:                              ; preds = %scalar.ph.1, %middle.block.1
  %i.ev = add nuw nsw i64 %.0128298.us.us.1, 1    ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %i.ce
  br i1 %i.ew, label %.lr.ph.us.us.1, label %._crit_edge301.split.us.us.1, !llvm.loop !1413

._crit_edge301.split.us.us.1:                     ; preds = %._crit_edge.us.us.1, %.lr.ph300.us.us.1
  %exitcond.not.1 = icmp eq i64 %indvars.iv341, 2
  br i1 %exitcond.not.1, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.2

.lr.ph300.us.us.2:                                ; preds = %._crit_edge301.split.us.us.1
  %i.ex = getelementptr i8, ptr %i.cm, i64 %i.cn
  %scevgep.2 = getelementptr i8, ptr %i.ex, i64 24
  %i.ey = getelementptr i8, ptr %i.bu, i64 %i.cp
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.co
  %scevgep383.2 = getelementptr i8, ptr %i.ez, i64 %i.bl
  %i.fa = add i64 %i.cs, 2                        ; 2 uses
  %i.fb = add nsw i64 %.sroa.speculated207.us.us, -3 ; 4 uses
  %i.fc = add i64 %i.cs, 3                        ; 2 uses
  %i.fd = getelementptr [8 x i8], ptr %4, i64 %i.fa
  %i.fe = getelementptr [8 x i8], ptr %4, i64 %i.fc
  %i.ff = mul i64 %i.fa, %3
  %i.fg = getelementptr [8 x i8], ptr %2, i64 %i.fc
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %i.ff ; 3 uses
  %i.fi = icmp sgt i64 %i.cq, 3
  br i1 %i.fi, label %.lr.ph.us.us.preheader.2, label %._crit_edge305.split.us.us

.lr.ph.us.us.preheader.2:                         ; preds = %.lr.ph300.us.us.2
  %min.iters.check.2 = icmp ult i64 %i.fb, 4
  %bound0.2 = icmp ult ptr %scevgep.2, %scevgep383.2
  %bound1.2 = icmp ult ptr %i.fh, %scevgep382
  %found.conflict.2 = and i1 %bound0.2, %bound1.2
  %i.fj = or i1 %found.conflict.2, %stride.check.2
  %n.vec.2 = and i64 %i.fb, 9223372036854775804   ; 3 uses
  %cmp.n.2 = icmp eq i64 %i.fb, %n.vec.2
  br label %.lr.ph.us.us.2

.lr.ph.us.us.2:                                   ; preds = %._crit_edge.us.us.2, %.lr.ph.us.us.preheader.2
  %.0128298.us.us.2 = phi i64 [ %i.gd, %._crit_edge.us.us.2 ], [ %.0131312.us.us, %.lr.ph.us.us.preheader.2 ] ; 2 uses
  %i.fk = mul nsw i64 %.0128298.us.us.2, %6       ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %i.fd, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !39
  %i.fn = getelementptr [8 x i8], ptr %i.fe, i64 %i.fk ; 2 uses
  %i.fo = fneg double %i.fm                       ; 2 uses
  %brmerge389 = select i1 %min.iters.check.2, i1 true, i1 %i.fj
  br i1 %brmerge389, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %.lr.ph.us.us.2
  %broadcast.splatinsert.2 = insertelement <2 x double> poison, double %i.fo, i64 0
  %broadcast.splat.2 = shufflevector <2 x double> %broadcast.splatinsert.2, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
end_hunk_2
begin_hunk_3_@_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2EE7computeERKS2_j:bb.a
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = load i8, ptr %i.ci, align 2, !range !132
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = select i1 %i.hd, i1 true, i1 %i.hf
  br i1 %i.hg, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIffLi2ELi0ELb0EE3runEPflS3_llff.exit.loopexit.i.i73.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit76.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIffLi2ELi0ELb0EE3runEPflS3_llff.exit.loopexit.i.i73.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit71.thread.us
  %i.hh = getelementptr inbounds i8, ptr %i.cj, i64 %.idx.i.us ; 2 uses
  %i.hi = load <2 x float>, ptr %i.hh, align 8, !tbaa !85 ; 2 uses
  %i.hj = load <2 x float>, ptr %i.ia, align 8, !tbaa !85 ; 2 uses
  %i.hk = fmul <2 x float> %i.hi, %i.gv
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.hj, <2 x float> %i.hk)
  store <2 x float> %i.hl, ptr %i.ia, align 8, !tbaa !85
  %i.hm = fmul <2 x float> %i.gx, %i.hi
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.hj, <2 x float> %i.hm)
  store <2 x float> %i.hn, ptr %i.hh, align 8, !tbaa !85
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit76.us

_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit76.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIffLi2ELi0ELb0EE3runEPflS3_llff.exit.loopexit.i.i73.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit71.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.ho = load float, ptr %i.hx, align 4, !tbaa !85
  %i.hp = tail call noundef float @llvm.fabs.f32(float %i.ho) ; 2 uses
  %i.hq = load float, ptr %i.da, align 4, !tbaa !85
  %i.hr = tail call noundef float @llvm.fabs.f32(float %i.hq) ; 2 uses
  %i.hs = fcmp olt float %i.hp, %i.hr
  %.sroa.speculated.us = select i1 %i.hs, float %i.hr, float %i.hp ; 2 uses
  %i.ht = fcmp olt float %.2186204.us, %.sroa.speculated.us
  %.sroa.speculated134.us = select i1 %i.ht, float %.sroa.speculated.us, float %.2186204.us
  br label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit76.us, %bb.n
  %.3187.us = phi float [ %.sroa.speculated134.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit76.us ], [ %.2186204.us, %bb.n ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit76.us ], [ %.2205.us, %bb.n ] ; 3 uses
  %i.hu = add nuw nsw i64 %.056206.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.hu, %.057209.us
  br i1 %exitcond.not, label %bb.t, label %bb.m, !llvm.loop !1666

bb.t:                                             ; preds = %bb.s
  %i.hv = add nuw nsw i64 %.057209.us, 1          ; 2 uses
  %exitcond217.not = icmp eq i64 %i.hv, %i.cd     ; 3 uses
  %brmerge.not = select i1 %exitcond217.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond217.not, i64 1, i64 %i.hv
  %.3.us.mux = select i1 %exitcond217.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader200.us, !llvm.loop !1667

.preheader200.us:                                 ; preds = %bb.t, %.preheader201.us.preheader
  %.057209.us = phi i64 [ %.mux, %bb.t ], [ 1, %.preheader201.us.preheader ] ; 4 uses
  %.1208.us = phi i1 [ %.3.us.mux, %bb.t ], [ true, %.preheader201.us.preheader ]
  %.1185207.us = phi float [ %.3187.us, %bb.t ], [ %i.cn, %.preheader201.us.preheader ]
  %i.hw = getelementptr [4 x i8], ptr %i.cb, i64 %.057209.us ; 5 uses
  %.idx.i64.us = shl i64 %.057209.us, 3           ; 5 uses
  %invariant.gep.us = getelementptr i8, ptr %i.cb, i64 %.idx.i64.us ; 3 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 %.idx.i64.us ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %0, i64 %.idx.i64.us ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %i.cj, i64 %.idx.i64.us ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.cb, i64 %.idx.i64.us
  br label %bb.m

.preheader:                                       ; preds = %bb.t, %bb.l
  %i.ib = icmp sgt i64 %i.cd, 0
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.ib, label %.lr.ph, label %.loopexit.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.id = load i8, ptr %i.cf, align 1, !tbaa !1676, !range !132, !noundef !130
  %i.ie = trunc nuw i8 %i.id to i1
  br label %bb.u

._crit_edge:                                      ; preds = %bb.w
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ig = load <2 x float>, ptr %i.if, align 16, !tbaa !85
  %i.ih = insertelement <2 x float> poison, float %.0183, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ii, %i.ig
  store <2 x float> %i.ij, ptr %i.if, align 16, !tbaa !85
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 %i.cd, ptr %i.ik, align 8, !tbaa !1680
  %i.il = add nsw i64 %i.cd, -2
  br label %.lr.ph215

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %.055212 = phi i64 [ 0, %.lr.ph ], [ %i.iy, %bb.w ] ; 4 uses
  %i.im = getelementptr [4 x i8], ptr %i.cb, i64 %.055212
  %.idx.i81 = shl i64 %.055212, 3                 ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 %.idx.i81
  %i.io = load float, ptr %i.in, align 4, !tbaa !85 ; 2 uses
  %i.ip = tail call noundef float @llvm.fabs.f32(float %i.io)
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %.055212
  store float %i.ip, ptr %i.iq, align 4, !tbaa !85
  %i.ir = load i8, ptr %i.cg, align 16, !range !132
  %i.is = trunc nuw i8 %i.ir to i1
  %i.it = select i1 %i.ie, i1 true, i1 %i.is
  %i.iu = fcmp olt float %i.io, 0.000000e+00
  %or.cond = and i1 %i.iu, %i.it
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.iv = getelementptr inbounds i8, ptr %0, i64 %.idx.i81 ; 2 uses
  %i.iw = load <2 x float>, ptr %i.iv, align 8, !tbaa !85
  %i.ix = fneg <2 x float> %i.iw
  store <2 x float> %i.ix, ptr %i.iv, align 8, !tbaa !85
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.iy = add nuw nsw i64 %.055212, 1             ; 2 uses
  %exitcond218.not = icmp eq i64 %i.iy, %i.cd
  br i1 %exitcond218.not, label %._crit_edge, label %bb.u, !llvm.loop !1668

.lr.ph215:                                        ; preds = %._crit_edge, %.thread194
  %.0213 = phi i64 [ %i.ku, %.thread194 ], [ 0, %._crit_edge ] ; 9 uses
  %i.iz = xor i64 %.0213, -1
  %i.ja = add nsw i64 %i.cd, %i.iz                ; 3 uses
  %i.jb = sub nuw nsw i64 %i.cd, %.0213           ; 2 uses
  %i.jc = sub nsw i64 2, %i.jb
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.jc ; 4 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !85 ; 5 uses
  %i.jf = icmp sgt i64 %i.jb, 1
  br i1 %i.jf, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread190

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph215
  %xtraiter = and i64 %i.ja, 1
  %i.jg = icmp eq i64 %i.il, %.0213
  br i1 %i.jg, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ja, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi float [ %i.je, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.jr, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.jh = phi float [ %i.je, %.lr.ph.i.i.i.i.preheader.new ], [ %i.jq, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ji = getelementptr [4 x i8], ptr %i.jd, i64 %.02123.i.i.i.i
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !85 ; 3 uses
  %i.jk = fcmp ogt float %i.jj, %i.jh             ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.jk, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.jk, float %i.jj, float %.sroa.7.0.i.i
  %i.jl = select i1 %i.jk, float %i.jj, float %i.jh ; 2 uses
  %i.jm = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.jn = getelementptr [4 x i8], ptr %i.jd, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !85 ; 3 uses
  %i.jp = fcmp ogt float %i.jo, %i.jl             ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.jp, i64 %i.jm, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.jp, float %i.jo, float %.sroa.7.1.i.i ; 3 uses
  %i.jq = select i1 %i.jp, float %i.jo, float %i.jl ; 2 uses
  %i.jr = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1669

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi float [ %i.je, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.jr, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ %i.je, %.lr.ph.i.i.i.i.preheader ], [ %i.jq, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ]
  %lcmp.mod243 = trunc i64 %i.ja to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %i.js = getelementptr [4 x i8], ptr %i.jd, i64 %.02123.i.i.i.i.epil.init
  %i.jt = load float, ptr %i.js, align 4, !tbaa !85 ; 2 uses
  %i.ju = fcmp ogt float %i.jt, %.epil.init       ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.ju, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.ju, float %i.jt, float %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi float [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.jv = fcmp une float %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.jv, label %bb.x, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread190: ; preds = %.lr.ph215
  %i.jw = fcmp une float %i.je, 0.000000e+00
  br i1 %i.jw, label %.thread194, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread

bb.x:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread194, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jx = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0213 ; 3 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.0213 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.jx ; 2 uses
  %i.ka = load float, ptr %i.jy, align 4, !tbaa !85
  %i.kb = load float, ptr %i.jz, align 4, !tbaa !85
  store float %i.kb, ptr %i.jy, align 4, !tbaa !85
  store float %i.ka, ptr %i.jz, align 4, !tbaa !85
  %i.kc = load i8, ptr %i.cf, align 1, !tbaa !1676, !range !132, !noundef !130
  %i.kd = trunc nuw i8 %i.kc to i1
  %i.ke = load i8, ptr %i.cg, align 16, !range !132
  %i.kf = trunc nuw i8 %i.ke to i1
  %i.kg = select i1 %i.kd, i1 true, i1 %i.kf
  br i1 %i.kg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.idx.i.i.i.i83 = shl nsw i64 %i.jx, 3
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i83 ; 2 uses
  %.idx.i.i.i.i84 = shl nuw nsw i64 %.0213, 3
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i84 ; 2 uses
  %i.kj = load <2 x float>, ptr %i.kh, align 8, !tbaa !85
  %i.kk = load <2 x float>, ptr %i.ki, align 8, !tbaa !85
  store <2 x float> %i.kk, ptr %i.kh, align 8, !tbaa !85
  store <2 x float> %i.kj, ptr %i.ki, align 8, !tbaa !85
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.kl = load i8, ptr %i.ch, align 1, !tbaa !1678, !range !132, !noundef !130
  %i.km = trunc nuw i8 %i.kl to i1
  %i.kn = load i8, ptr %i.ci, align 2, !range !132
  %i.ko = trunc nuw i8 %i.kn to i1
  %i.kp = select i1 %i.km, i1 true, i1 %i.ko
  br i1 %i.kp, label %bb.ab, label %.thread194

bb.ab:                                            ; preds = %bb.aa
  %.idx.i.i.i.i85 = shl nsw i64 %i.jx, 3
  %i.kq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i.i85 ; 2 uses
  %.idx.i.i.i.i86 = shl nuw nsw i64 %.0213, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i.i86 ; 2 uses
  %i.ks = load <2 x float>, ptr %i.kq, align 8, !tbaa !85
  %i.kt = load <2 x float>, ptr %i.kr, align 8, !tbaa !85
  store <2 x float> %i.kt, ptr %i.kq, align 8, !tbaa !85
  store <2 x float> %i.ks, ptr %i.kr, align 8, !tbaa !85
  br label %.thread194

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread190
  store i64 %.0213, ptr %i.ik, align 8, !tbaa !1680
  br label %.loopexit

.thread194:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread190, %bb.x, %bb.ab, %bb.aa
  %i.ku = add nuw nsw i64 %.0213, 1               ; 2 uses
  %exitcond219.not = icmp eq i64 %i.ku, %i.cd
  br i1 %exitcond219.not, label %.loopexit, label %.lr.ph215, !llvm.loop !1670

.loopexit.critedge:                               ; preds = %.preheader
  %i.kv = load <2 x float>, ptr %i.ic, align 16, !tbaa !85
  %i.kw = insertelement <2 x float> poison, float %.0183, i64 0
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x float> %i.kx, %i.kv
  store <2 x float> %i.ky, ptr %i.ic, align 16, !tbaa !85
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.cd, ptr %i.kz, align 8, !tbaa !1680
  br label %.loopexit

.loopexit:                                        ; preds = %.thread194, %.loopexit.critedge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.la, align 4, !tbaa !1675
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(224) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 85 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1686, !range !132, !noundef !130
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 2
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = load i64, ptr %i.g, align 16
  %i.i = icmp eq i64 %i.h, 2
  %or.cond16.i = select i1 %or.cond.i, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %2, %i.k
  %or.cond19.i = select i1 %or.cond16.i, i1 %i.l, i1 false
  br i1 %or.cond19.i, label %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2EE8allocateEllj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %i.d, align 8, !tbaa !1687
  store i64 2, ptr %i.g, align 16, !tbaa !1688
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.m, align 16, !tbaa !1689
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 0, ptr %i.n, align 4, !tbaa !1690
  store i8 1, ptr %i.a, align 1, !tbaa !1686
  store i32 %2, ptr %i.j, align 4, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 87
  %i.p = trunc i32 %2 to i8                       ; 4 uses
  %i.q = lshr i8 %i.p, 2
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %i.o, align 1, !tbaa !1691
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = lshr i8 %i.p, 3
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8, !tbaa !1692
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.w = lshr i8 %i.p, 4
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 1, !tbaa !1693
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.z = lshr i8 %i.p, 5
  %i.aa = and i8 %i.z, 1
  store i8 %i.aa, ptr %i.y, align 2, !tbaa !1694
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 2, ptr %i.ab, align 8, !tbaa !70
  br label %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2EE8allocateEllj.exit

_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2EE8allocateEllj.exit: ; preds = %bb.a, %bb.b
  %i.ac = load <2 x i64>, ptr %1, align 16        ; 2 uses
  %i.ad = and <2 x i64> %i.ac, splat (i64 9223372036854775807)
  %i.ae = bitcast <2 x i64> %i.ad to <2 x double> ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 16, !tbaa !44
  %i.ah = and <2 x i64> %i.ag, splat (i64 9223372036854775807)
  %i.ai = bitcast <2 x i64> %i.ah to <2 x double>
  %i.aj = fcmp uno <2 x double> %i.ae, zeroinitializer
  %i.ak = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai, <2 x double> %i.ae) #22, !srcloc !133
  %i.al = select <2 x i1> %i.aj, <2 x double> %i.ae, <2 x double> %i.ak ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.al, i64 0 ; 3 uses
  %i.am = fcmp uno double %.sroa.0.0.vec.extract.i.i.i.i.i, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i.i.i = extractelement <2 x double> %i.al, i64 1 ; 3 uses
  %i.an = fcmp ord double %.sroa.0.8.vec.extract.i.i.i.i.i, 0.000000e+00
  %i.ao = fcmp uge double %.sroa.0.0.vec.extract.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i
  %.not3.i.i.i.i.i.i = and i1 %i.an, %i.ao
  %i.ap = select i1 %i.am, i1 true, i1 %.not3.i.i.i.i.i.i
  %i.aq = select i1 %i.ap, double %.sroa.0.0.vec.extract.i.i.i.i.i, double %.sroa.0.8.vec.extract.i.i.i.i.i ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %i.aq)
  %i.as = fcmp ueq double %i.ar, +inf
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2EE8allocateEllj.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 1, ptr %i.at, align 4, !tbaa !1690
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 3, ptr %i.au, align 16, !tbaa !1689
  br label %bb.ab

bb.d:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2EE8allocateEllj.exit
  %i.av = bitcast <2 x i64> %i.ac to <2 x double>
  %i.aw = fcmp oeq double %i.aq, 0.000000e+00
  %.0183 = select i1 %i.aw, double 1.000000e+00, double %i.aq ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.0183, i64 0
  %i.ay = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = fdiv <2 x double> %i.av, %i.ay          ; 2 uses
  store <2 x double> %i.az, ptr %i.ax, align 16, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = load <2 x double>, ptr %i.af, align 16, !tbaa !44
  %i.bc = fdiv <2 x double> %i.bb, %i.ay          ; 2 uses
  store <2 x double> %i.bc, ptr %i.ba, align 16, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 87
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !1691, !range !132, !noundef !130
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = extractelement <2 x double> %i.az, i64 0
  %i.bh = extractelement <2 x double> %i.bc, i64 1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double 1.000000e+00, ptr %0, align 16, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.bj, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !1692, !range !132, !noundef !130
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr %0, align 16, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.bo, align 8, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !1693, !range !132, !noundef !130
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double 1.000000e+00, ptr %i.bs, align 16, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.bu, align 8, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !1694, !range !132, !noundef !130
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double 1.000000e+00, ptr %i.by, align 16, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.ca, align 8, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !70 ; 5 uses
  %i.ce = icmp sgt i64 %i.cd, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 87 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.ce, label %.preheader201.us.preheader, label %.preheader
end_hunk_3
begin_hunk_4_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2EE7computeERKS2_j:bb.a
  store <2 x double> %i.hs, ptr %i.ih, align 16, !tbaa !39
  %i.ht = fmul <2 x double> %i.he, %i.hp
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.hq, <2 x double> %i.ht)
  store <2 x double> %i.hu, ptr %i.ho, align 16, !tbaa !39
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit76.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit76.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi16ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i73.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit71.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.hv = load double, ptr %i.ie, align 8, !tbaa !39
  %i.hw = tail call noundef double @llvm.fabs.f64(double %i.hv) ; 2 uses
  %i.hx = load double, ptr %i.da, align 8, !tbaa !39
  %i.hy = tail call noundef double @llvm.fabs.f64(double %i.hx) ; 2 uses
  %i.hz = fcmp olt double %i.hw, %i.hy
  %.sroa.speculated.us = select i1 %i.hz, double %i.hy, double %i.hw ; 2 uses
  %i.ia = fcmp olt double %.2186205.us, %.sroa.speculated.us
  %.sroa.speculated134.us = select i1 %i.ia, double %.sroa.speculated.us, double %.2186205.us
  br label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit76.us, %bb.n
  %.3187.us = phi double [ %.sroa.speculated134.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit76.us ], [ %.2186205.us, %bb.n ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit76.us ], [ %.2206.us, %bb.n ] ; 3 uses
  %i.ib = add nuw nsw i64 %.056207.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ib, %.057210.us
  br i1 %exitcond.not, label %bb.t, label %bb.m, !llvm.loop !1681

bb.t:                                             ; preds = %bb.s
  %i.ic = add nuw nsw i64 %.057210.us, 1          ; 2 uses
  %exitcond219.not = icmp eq i64 %i.ic, %i.cd     ; 3 uses
  %brmerge.not = select i1 %exitcond219.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond219.not, i64 1, i64 %i.ic
  %.3.us.mux = select i1 %exitcond219.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader200.us, !llvm.loop !1682

.preheader200.us:                                 ; preds = %bb.t, %.preheader201.us.preheader
  %.057210.us = phi i64 [ %.mux, %bb.t ], [ 1, %.preheader201.us.preheader ] ; 4 uses
  %.1209.us = phi i1 [ %.3.us.mux, %bb.t ], [ true, %.preheader201.us.preheader ]
  %.1185208.us = phi double [ %.3187.us, %bb.t ], [ %i.cn, %.preheader201.us.preheader ]
  %i.id = getelementptr [8 x i8], ptr %i.cb, i64 %.057210.us ; 5 uses
  %.idx.i64.us = shl i64 %.057210.us, 4           ; 5 uses
  %invariant.gep.us = getelementptr i8, ptr %i.cb, i64 %.idx.i64.us ; 3 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 %.idx.i64.us ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %0, i64 %.idx.i64.us ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.cj, i64 %.idx.i64.us ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.cb, i64 %.idx.i64.us
  br label %bb.m

.preheader:                                       ; preds = %bb.t, %bb.l
  %i.ii = icmp sgt i64 %i.cd, 0
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br i1 %i.ii, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.ik = insertelement <2 x double> poison, double %.0183, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = load <2 x double>, ptr %i.ij, align 16, !tbaa !44
  %i.in = fmul <2 x double> %i.il, %i.im
  store <2 x double> %i.in, ptr %i.ij, align 16, !tbaa !44
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.cd, ptr %i.io, align 16, !tbaa !1695
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.v
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.iq = insertelement <2 x double> poison, double %.0183, i64 0
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.is = load <2 x double>, ptr %i.ip, align 16, !tbaa !44
  %i.it = fmul <2 x double> %i.ir, %i.is
  store <2 x double> %i.it, ptr %i.ip, align 16, !tbaa !44
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 %i.jl, ptr %i.iu, align 16, !tbaa !1695
  %i.iv = icmp sgt i64 %i.jl, 0
  br i1 %i.iv, label %.lr.ph216, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.v
  %i.iw = phi i64 [ %i.jl, %bb.v ], [ %i.cd, %.preheader ]
  %.055213 = phi i64 [ %i.jm, %bb.v ], [ 0, %.preheader ] ; 4 uses
  %i.ix = getelementptr [8 x i8], ptr %i.cb, i64 %.055213
  %.idx.i81 = shl i64 %.055213, 4                 ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 %.idx.i81
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !39 ; 2 uses
  %i.ja = tail call noundef double @llvm.fabs.f64(double %i.iz)
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.055213
  store double %i.ja, ptr %i.jb, align 8, !tbaa !39
  %i.jc = load i8, ptr %i.cf, align 1, !tbaa !1691, !range !132, !noundef !130
  %i.jd = trunc nuw i8 %i.jc to i1
  %i.je = load i8, ptr %i.cg, align 8, !range !132
  %i.jf = trunc nuw i8 %i.je to i1
  %i.jg = select i1 %i.jd, i1 true, i1 %i.jf
  %i.jh = fcmp olt double %i.iz, 0.000000e+00
  %or.cond = and i1 %i.jh, %i.jg
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ji = getelementptr inbounds i8, ptr %0, i64 %.idx.i81 ; 2 uses
  %i.jj = load <2 x double>, ptr %i.ji, align 16, !tbaa !44
  %i.jk = fneg <2 x double> %i.jj
  store <2 x double> %i.jk, ptr %i.ji, align 16, !tbaa !44
  %.pre226 = load i64, ptr %i.cc, align 8, !tbaa !70
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph
  %i.jl = phi i64 [ %.pre226, %bb.u ], [ %i.iw, %.lr.ph ] ; 5 uses
  %i.jm = add nuw nsw i64 %.055213, 1             ; 2 uses
  %i.jn = icmp slt i64 %i.jm, %i.jl
  br i1 %i.jn, label %.lr.ph, label %._crit_edge, !llvm.loop !1683

.lr.ph216:                                        ; preds = %._crit_edge, %.thread194
  %i.jo = phi i64 [ %i.ll, %.thread194 ], [ %i.jl, %._crit_edge ] ; 3 uses
  %.0214 = phi i64 [ %i.lk, %.thread194 ], [ 0, %._crit_edge ] ; 9 uses
  %i.jp = sub nuw nsw i64 %i.jo, %.0214           ; 2 uses
  %i.jq = sub nsw i64 2, %i.jp
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.jq ; 4 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !39 ; 5 uses
  %i.jt = icmp sgt i64 %i.jp, 1
  br i1 %i.jt, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread190

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph216
  %i.ju = xor i64 %.0214, -1
  %i.jv = add i64 %i.jo, %i.ju                    ; 3 uses
  %reass.sub = sub i64 %i.jo, %.0214
  %xtraiter = and i64 %i.jv, 1
  %i.jw = icmp eq i64 %reass.sub, 2
  br i1 %i.jw, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.jv, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.js, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.kh, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.jx = phi double [ %i.js, %.lr.ph.i.i.i.i.preheader.new ], [ %i.kg, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.jy = getelementptr [8 x i8], ptr %i.jr, i64 %.02123.i.i.i.i
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !39 ; 3 uses
  %i.ka = fcmp ogt double %i.jz, %i.jx            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.ka, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.ka, double %i.jz, double %.sroa.7.0.i.i
  %i.kb = select i1 %i.ka, double %i.jz, double %i.jx ; 2 uses
  %i.kc = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.kd = getelementptr [8 x i8], ptr %i.jr, i64 %i.kc
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !39 ; 3 uses
  %i.kf = fcmp ogt double %i.ke, %i.kb            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.kf, i64 %i.kc, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.kf, double %i.ke, double %.sroa.7.1.i.i ; 3 uses
  %i.kg = select i1 %i.kf, double %i.ke, double %i.kb ; 2 uses
  %i.kh = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1684

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.js, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.kh, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.js, %.lr.ph.i.i.i.i.preheader ], [ %i.kg, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod249 = trunc i64 %i.jv to i1
  tail call void @llvm.assume(i1 %lcmp.mod249)
  %i.ki = getelementptr [8 x i8], ptr %i.jr, i64 %.02123.i.i.i.i.epil.init
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !39 ; 2 uses
  %i.kk = fcmp ogt double %i.kj, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.kk, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.kk, double %i.kj, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.kl = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.kl, label %bb.w, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread190: ; preds = %.lr.ph216
  %i.km = fcmp une double %i.js, 0.000000e+00
  br i1 %i.km, label %.thread194, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

bb.w:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread194, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kn = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0214 ; 3 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.0214 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.kn ; 2 uses
  %i.kq = load double, ptr %i.ko, align 8, !tbaa !39
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !39
  store double %i.kr, ptr %i.ko, align 8, !tbaa !39
  store double %i.kq, ptr %i.kp, align 8, !tbaa !39
  %i.ks = load i8, ptr %i.cf, align 1, !tbaa !1691, !range !132, !noundef !130
  %i.kt = trunc nuw i8 %i.ks to i1
  %i.ku = load i8, ptr %i.cg, align 8, !range !132
  %i.kv = trunc nuw i8 %i.ku to i1
  %i.kw = select i1 %i.kt, i1 true, i1 %i.kv
  br i1 %i.kw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.idx.i.i.i.i83 = shl nsw i64 %i.kn, 4
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i83 ; 2 uses
  %.idx.i.i.i.i84 = shl nuw nsw i64 %.0214, 4
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i84 ; 2 uses
  %i.kz = load <2 x double>, ptr %i.ky, align 16, !tbaa !44
  %i.la = load <2 x double>, ptr %i.kx, align 16, !tbaa !44
  store <2 x double> %i.la, ptr %i.ky, align 16, !tbaa !44
  store <2 x double> %i.kz, ptr %i.kx, align 16, !tbaa !44
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.lb = load i8, ptr %i.ch, align 1, !tbaa !1693, !range !132, !noundef !130
  %i.lc = trunc nuw i8 %i.lb to i1
  %i.ld = load i8, ptr %i.ci, align 2, !range !132
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = select i1 %i.lc, i1 true, i1 %i.le
  br i1 %i.lf, label %bb.aa, label %.thread194

bb.aa:                                            ; preds = %bb.z
  %.idx.i.i.i.i85 = shl nsw i64 %i.kn, 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i.i85 ; 2 uses
  %.idx.i.i.i.i86 = shl nuw nsw i64 %.0214, 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i.i86 ; 2 uses
  %i.li = load <2 x double>, ptr %i.lh, align 16, !tbaa !44
  %i.lj = load <2 x double>, ptr %i.lg, align 16, !tbaa !44
  store <2 x double> %i.lj, ptr %i.lh, align 16, !tbaa !44
  store <2 x double> %i.li, ptr %i.lg, align 16, !tbaa !44
  br label %.thread194

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread190
  store i64 %.0214, ptr %i.iu, align 16, !tbaa !1695
  br label %.loopexit

.thread194:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread190, %bb.w, %bb.aa, %bb.z
  %i.lk = add nuw nsw i64 %.0214, 1               ; 2 uses
  %i.ll = load i64, ptr %i.cc, align 8, !tbaa !70 ; 2 uses
  %i.lm = icmp slt i64 %i.lk, %i.ll
  br i1 %i.lm, label %.lr.ph216, label %.loopexit, !llvm.loop !1685

.loopexit:                                        ; preds = %.thread194, %._crit_edge.thread, %._crit_edge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 1, ptr %i.ln, align 4, !tbaa !1690
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_NS4_INS_15DiagonalWrapperIKS3_EENS_9TransposeIS6_EELi1EEELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISG_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix.132", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_NS4_INS_15DiagonalWrapperIKS3_EENS_9TransposeIS6_EELi1EEELi0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSB_RKSD_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_NS3_INS_15DiagonalWrapperIKS1_EENS_9TransposeIS5_EELi1EEELi0EEEEERKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.bn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %5, align 8, !tbaa !36
  call void @free(ptr noundef %i.b) #19
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_NS3_INS_15DiagonalWrapperIKS1_EENS_9TransposeIS5_EELi1EEELi0EEEEERKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.c = load ptr, ptr %5, align 8, !tbaa !36     ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37
  %.not.i.i.i.i = icmp eq i64 %i.j, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not8.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not8.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_NS3_INS_15DiagonalWrapperIKS1_EENS_9TransposeIS5_EELi1EEELi0EEEEERKT_.exit
  %i.m = icmp eq i64 %i.f, 0
  %i.n = icmp eq i64 %i.h, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sdiv i64 9223372036854775807, %i.h
  %i.p = icmp sgt i64 %i.f, %i.o
  br i1 %i.p, label %.noexc.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.r = mul nsw i64 %i.h, %i.f
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r, i64 noundef %i.f, i64 noundef %i.h)
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !37
  %.pre20.i.i.i = load i64, ptr %i.k, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %.noexc4, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_NS3_INS_15DiagonalWrapperIKS1_EENS_9TransposeIS5_EELi1EEELi0EEEEERKT_.exit
  %i.s = phi i64 [ %.pre20.i.i.i, %.noexc4 ], [ %i.h, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_NS3_INS_15DiagonalWrapperIKS1_EENS_9TransposeIS5_EELi1EEELi0EEEEERKT_.exit ]
  %i.t = phi i64 [ %.pre.i.i.i, %.noexc4 ], [ %i.f, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_NS3_INS_15DiagonalWrapperIKS1_EENS_9TransposeIS5_EELi1EEELi0EEEEERKT_.exit ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !36     ; 8 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = mul nsw i64 %i.t, %i.s                   ; 7 uses
  %i.x = sdiv i64 %i.w, 2
  %i.y = shl nsw i64 %i.x, 1                      ; 6 uses
  %i.z = icmp sgt i64 %i.w, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.aa = icmp slt i64 %i.y, %i.w
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.ab = sub i64 %i.w, %i.y                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  %i.ac = sub i64 %i.d, %i.v
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %i.ad = add i64 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add i64 %i.y, %index                    ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !39
  %wide.load10 = load <2 x double>, ptr %i.ah, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x double> %wide.load, ptr %i.af, align 8, !tbaa !39
  store <2 x double> %wide.load10, ptr %i.ai, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1696

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ] ; 4 uses
  %i.ak = sub i64 %i.w, %.05.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader11 ]
  %i.al = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05.i.i.i.i.i.prol
  %i.am = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !39
  store double %i.an, ptr %i.al, align 8, !tbaa !39
  %i.ao = add nsw i64 %.05.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1697

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %i.ap = sub i64 %.05.i.i.i.i.i.ph, %i.w
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05.i.i.i.i.i
  %i.as = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !39
  store double %i.at, ptr %i.ar, align 8, !tbaa !39
  %i.au = add nsw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !39
  store double %i.ax, ptr %i.av, align 8, !tbaa !39
  %i.ay = add nsw i64 %.05.i.i.i.i.i, 2           ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !39
  store double %i.bb, ptr %i.az, align 8, !tbaa !39
  %i.bc = add nsw i64 %.05.i.i.i.i.i, 3           ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bc
  %i.be = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bc
  %i.bf = load double, ptr %i.be, align 8, !tbaa !39
  store double %i.bf, ptr %i.bd, align 8, !tbaa !39
  %i.bg = add nsw i64 %.05.i.i.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bg, %i.w
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1698

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.011.i.i.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.011.i.i.i.i
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !44
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !44
end_hunk_4
