Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.9?download=true
inline.NumInlined: 35072
inline.NumDeleted: 18954
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 110
loop-unroll.NumUnrolled: 161
begin_hunk_0_@_ZN3igl19min_quad_with_fixedIfLi4ELi2ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_:bb.a
  %i.hc = shl i64 %i.gu, 3
  %i.hd = getelementptr i8, ptr %i.gv, i64 %i.gz
  %i.he = getelementptr i8, ptr %i.gw, i64 %i.ha
  %i.hf = getelementptr i8, ptr %i.gx, i64 %i.hb
  %i.hg = getelementptr i8, ptr %i.gy, i64 %i.hc
  %i.hh = load float, ptr %i.hd, align 16, !tbaa !10
  %i.hi = load float, ptr %i.he, align 4, !tbaa !10
  %i.hj = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %i.hi, i64 1
  %i.hl = load float, ptr %i.hf, align 8, !tbaa !10
  %i.hm = load float, ptr %i.hg, align 4, !tbaa !10
  %i.hn = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.hm, i64 1
  %i.hp = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hk)
  %i.hq = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ho)
  %i.hr = fcmp ogt <2 x float> %i.hp, %broadcast.splat
  %i.hs = fcmp ogt <2 x float> %i.hq, %broadcast.splat
  %i.ht = zext <2 x i1> %i.hr to <2 x i64>
  %i.hu = zext <2 x i1> %i.hs to <2 x i64>
  %i.hv = add <2 x i64> %vec.phi, %i.ht           ; 2 uses
  %i.hw = add <2 x i64> %vec.phi113, %i.hu        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.hw, %i.hv
  %i.hy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gq, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.i.i, label %.lr.ph.i.i.i.preheader114

.lr.ph.i.i.i.preheader114:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.hy, %middle.block ]
  br label %.lr.ph.i.i.i

_ZN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEC2INS_5SolveINS_31CompleteOrthogonalDecompositionINS0_IfLi2ELi2ELi0ELi2ELi2EEEEENS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.aj, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr %7, ptr %11, align 8, !tbaa !100, !alias.scope !364
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi2ELi1ELi0ELi2ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(9) %11, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ib = load i8, ptr %3, align 1, !tbaa !13, !range !14, !noundef !15 ; 3 uses
  %i.ic = trunc nuw i8 %i.ib to i1                ; 4 uses
  %i.id = load float, ptr %9, align 4
  %i.ie = extractelement <2 x float> %i.fu, i64 0
  %.sink = select i1 %i.ic, float %i.ie, float %i.id
  %not. = xor i1 %i.ic, true
  %.141 = zext i1 %not. to i32
  store float %.sink, ptr %0, align 16, !tbaa !10
  %i.if = load i8, ptr %i.db, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.ig = trunc nuw i8 %i.if to i1                ; 2 uses
  %i.ih = zext nneg i8 %i.ib to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ih
  %.sroa.sel.idx = select i1 %i.ic, i64 0, i64 4
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.sel.idx
  %i.ij = select i1 %i.ic, i32 1, i32 2
  %.sink77.in = select i1 %i.ig, ptr %i.ii, ptr %.sroa.sel
  %.141.1 = select i1 %i.ig, i32 %.141, i32 %i.ij ; 2 uses
  %narrow = add nuw nsw i8 %i.ib, %i.if           ; 2 uses
  %.sink77 = load float, ptr %.sink77.in, align 4, !tbaa !10
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %.sink77, ptr %i.ik, align 4, !tbaa !10
  %i.il = load i8, ptr %i.ia, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.im = trunc nuw i8 %i.il to i1                ; 2 uses
  %i.in = zext nneg i8 %narrow to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.in
  %i.ip = zext nneg i32 %.141.1 to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ip
  %.sink78.in = select i1 %i.im, ptr %i.io, ptr %i.iq
  %not.111 = xor i1 %i.im, true
  %i.ir = zext i1 %not.111 to i32
  %.141.2 = add nuw nsw i32 %.141.1, %i.ir
  %narrow112 = add nuw nsw i8 %narrow, %i.il
  %.1.2 = zext nneg i8 %narrow112 to i32
  %.sink78 = load float, ptr %.sink78.in, align 4, !tbaa !10
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sink78, ptr %i.is, align 8, !tbaa !10
  %i.it = load i8, ptr %i.hz, align 1, !tbaa !13, !range !14, !noundef !15
  %i.iu = trunc nuw i8 %i.it to i1                ; 2 uses
  %.1.2.sink = select i1 %i.iu, i32 %.1.2, i32 %.141.2
  %.sink107 = select i1 %i.iu, ptr %8, ptr %9
  %i.iv = zext nneg i32 %.1.2.sink to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sink107, i64 %i.iv
  %.sink79 = load float, ptr %i.iw, align 4, !tbaa !10
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.sink79, ptr %i.ix, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(240) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Block.89", align 8   ; 10 uses
  %2 = alloca %"class.Eigen::Transpose.794", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load float, ptr %i.a, align 8, !tbaa !101
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.e = load i8, ptr %i.d, align 1, !tbaa !41, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.h = load float, ptr %i.g, align 4
  %i.i = select i1 %i.f, float %i.h, float f0x35000000
  %i.j = fmul float %i.c, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load i64, ptr %i.k, align 16, !tbaa !102 ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi178 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %index
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 4
  %i.v = shl i64 %i.n, 4
  %i.w = shl i64 %i.o, 4
  %i.x = shl i64 %i.p, 4
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load float, ptr %i.y, align 16, !tbaa !10
  %i.ad = load float, ptr %i.z, align 4, !tbaa !10
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = load float, ptr %i.aa, align 8, !tbaa !10
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.af)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.am = fcmp ogt <2 x float> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x float> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi178, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit, label %.lr.ph.i.preheader223

.lr.ph.i.preheader223:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader223, %.lr.ph.i
  %.09.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader223 ] ; 3 uses
  %.078.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader223 ]
  %i.au = getelementptr [4 x i8], ptr %0, i64 %.09.i
  %.idx.i.i = shl i64 %.09.i, 4
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add nuw nsw i64 %.078.i, %i.az          ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit, label %.lr.ph.i, !llvm.loop !366

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa177 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i ] ; 16 uses
  %i.bc = icmp samesign ult i64 %.lcssa177, 4
  br i1 %i.bc, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread, label %.loopexit

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bf = add nsw i64 %.lcssa177, -1              ; 4 uses
  %.not164 = icmp eq i64 %.lcssa177, 0
  br i1 %.not164, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread
  %.idx.i.i.i.i30 = shl i64 %i.bf, 4              ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i30 ; 9 uses
  %i.bh = sub nuw nsw i64 4, %.lcssa177
  %i.bi = sub nuw nsw i64 5, %.lcssa177
  %.not160 = icmp eq i64 %.lcssa177, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.idx.i.i.i.i.i33 = shl nuw nsw i64 %.lcssa177, 4
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.1292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bp = mul nuw i64 %.lcssa177, 20
  %i.bq = add nsw i64 %i.bp, -16                  ; 4 uses
  %scevgep181 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %scevgep201 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %i.br = getelementptr i8, ptr %0, i64 %i.bq
  %i.bs = getelementptr i8, ptr %0, i64 %i.bq
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.lcssa177, 3
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.lcssa177, 2
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.lcssa177, 3
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.lcssa177, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 7 uses
  %.0163 = phi i64 [ %i.bf, %.lr.ph ], [ %i.ft, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 22 uses
  %i.bt = shl i64 %.0163, 4
  %scevgep198 = getelementptr i8, ptr %0, i64 %i.bt
  %i.bu = sub i64 %.lcssa177, %indvar
  %i.bv = shl i64 %i.bu, 2
  %i.bw = and i64 %i.bv, -16                      ; 2 uses
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 %i.bw
  %i.bx = mul i64 %indvar, -20
  %scevgep200 = getelementptr i8, ptr %i.br, i64 %i.bx
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.bw
  %i.by = shl i64 %indvar, 2
  %i.bz = sub i64 %i.bq, %i.by
  %scevgep203 = getelementptr i8, ptr %0, i64 %i.bz
  %i.ca = shl i64 %.0163, 4
  %scevgep = getelementptr i8, ptr %0, i64 %i.ca
  %i.cb = sub i64 %.lcssa177, %indvar
  %i.cc = shl i64 %i.cb, 2
  %i.cd = and i64 %i.cc, -16                      ; 2 uses
  %scevgep179 = getelementptr i8, ptr %scevgep, i64 %i.cd
  %i.ce = mul i64 %indvar, -20
  %scevgep180 = getelementptr i8, ptr %i.bs, i64 %i.ce
  %scevgep182 = getelementptr i8, ptr %scevgep181, i64 %i.cd
  %i.cf = shl i64 %indvar, 2
  %i.cg = sub i64 %i.bq, %i.cf
  %scevgep183 = getelementptr i8, ptr %0, i64 %i.cg
  %.not = icmp eq i64 %.0163, %i.bf               ; 2 uses
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %.0163, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i ; 4 uses
  %i.ci = add nuw nsw i64 %.0163, 1               ; 4 uses
  %i.cj = and i64 %i.ci, 9223372036854775804      ; 4 uses
  %.not159 = icmp sgt i64 %i.cj, %.0163
  br i1 %.not159, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ck = and i64 %i.ci, -9223372036854775805     ; 2 uses
  %min.iters.check208 = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check208, label %.lr.ph.i17.i.i.i.i.i.i.preheader222, label %vector.memcheck197

vector.memcheck197:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %bound0204 = icmp ult ptr %scevgep199, %scevgep203
  %bound1205 = icmp ult ptr %scevgep202, %scevgep200
  %found.conflict206 = and i1 %bound0204, %bound1205
  br i1 %found.conflict206, label %.lr.ph.i17.i.i.i.i.i.i.preheader222, label %vector.ph209

vector.ph209:                                     ; preds = %vector.memcheck197
  %n.vec210 = and i64 %i.ci, -9223372036854775808 ; 2 uses
  %i.cl = and i64 %i.ci, -4
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next217, %vector.body211 ] ; 2 uses
  %i.cm = add nuw i64 %i.cj, %index212            ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.cm ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %wide.load213 = load <4 x float>, ptr %i.cn, align 16, !tbaa !10, !alias.scope !381, !noalias !382
  %wide.load214 = load <4 x float>, ptr %i.cp, align 16, !tbaa !10, !alias.scope !381, !noalias !382
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %i.co, align 16, !tbaa !10, !alias.scope !382
  %wide.load216 = load <4 x float>, ptr %i.cq, align 16, !tbaa !10, !alias.scope !382
  store <4 x float> %wide.load215, ptr %i.cn, align 16, !tbaa !10, !alias.scope !381, !noalias !382
  store <4 x float> %wide.load216, ptr %i.cp, align 16, !tbaa !10, !alias.scope !381, !noalias !382
  store <4 x float> %wide.load213, ptr %i.co, align 16, !tbaa !10, !alias.scope !382
  store <4 x float> %wide.load214, ptr %i.cq, align 16, !tbaa !10, !alias.scope !382
  %index.next217 = add nuw i64 %index212, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next217, %n.vec210
  br i1 %i.cr, label %middle.block218, label %vector.body211, !llvm.loop !370

middle.block218:                                  ; preds = %vector.body211
  %cmp.n219 = icmp eq i64 %i.ck, %n.vec210
  br i1 %cmp.n219, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader222

.lr.ph.i17.i.i.i.i.i.i.preheader222:              ; preds = %vector.memcheck197, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block218
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cj, %vector.memcheck197 ], [ %i.cj, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cl, %middle.block218 ] ; 5 uses
  %i.cs = and i64 %.0163, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i17.i.i.i.i.i.i.prol, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader222
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cv = load float, ptr %i.ct, align 16, !tbaa !10
  %i.cw = load float, ptr %i.cu, align 16, !tbaa !10
  store float %i.cw, ptr %i.ct, align 16, !tbaa !10
  store float %i.cv, ptr %i.cu, align 16, !tbaa !10
  %i.cx = or disjoint i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader222
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader222 ], [ %i.cx, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.cy = icmp eq i64 %.0163, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.cy, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.db = load float, ptr %i.cz, align 4, !tbaa !10
  %i.dc = load float, ptr %i.da, align 4, !tbaa !10
  store float %i.dc, ptr %i.cz, align 4, !tbaa !10
  store float %i.db, ptr %i.da, align 4, !tbaa !10
  %i.dd = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.dd ; 2 uses
  %i.dg = load float, ptr %i.de, align 4, !tbaa !10
  %i.dh = load float, ptr %i.df, align 4, !tbaa !10
  store float %i.dh, ptr %i.de, align 4, !tbaa !10
  store float %i.dg, ptr %i.df, align 4, !tbaa !10
  %i.di = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.dd, %.0163
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !371

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block218, %._crit_edge.i.i.i.i.i.i, %bb.b
  %i.dj = getelementptr [4 x i8], ptr %0, i64 %.0163 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i30 ; 7 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.0163 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 5 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !10 ; 2 uses
  %i.do = fmul float %i.dn, %i.dn                 ; 2 uses
  br i1 %.not160, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, %.lr.ph.i.i.i.i.i.i31
  %.01725.i.i.i.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i31 ], [ 1, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 3 uses
  %.02324.i.i.i.i.i.i = phi float [ %i.ds, %.lr.ph.i.i.i.i.i.i31 ], [ %i.do, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ]
  %.idx.i.i.i.i.i.i.i.i.i = shl i64 %.01725.i.i.i.i.i.i, 4
  %i.dp = getelementptr i8, ptr %i.dm, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !10 ; 2 uses
  %i.dr = fmul float %i.dq, %i.dq
  %i.ds = fadd float %.02324.i.i.i.i.i.i, %i.dr   ; 2 uses
  %i.dt = add nuw nsw i64 %.01725.i.i.i.i.i.i, 1
  %i.du = xor i64 %.01725.i.i.i.i.i.i, %.lcssa177
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.du, 3
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31, !llvm.loop !372

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i31, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.dv = phi float [ %i.do, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %i.ds, %.lr.ph.i.i.i.i.i.i31 ] ; 2 uses
  %i.dw = load float, ptr %i.dk, align 4, !tbaa !10 ; 8 uses
  %i.dx = fcmp ugt float %i.dv, f0x00800000
  br i1 %i.dx, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  store float 0.000000e+00, ptr %i.dl, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.dm, align 4, !tbaa !10
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store float 0.000000e+00, ptr %i.dy, align 4, !tbaa !10
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store float 0.000000e+00, ptr %i.dz, align 4, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit

.critedge.i.i:                                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  %i.ea = fmul float %i.dw, %i.dw
  %i.eb = fadd float %i.dv, %i.ea
  %i.ec = call noundef float @sqrtf(float noundef %i.eb) #14 ; 2 uses
  %i.ed = fcmp ult float %i.dw, 0.000000e+00
  %i.ee = fneg float %i.ec
  %storemerge.i.i = select i1 %i.ed, float %i.ec, float %i.ee ; 4 uses
  %i.ef = fsub float %i.dw, %storemerge.i.i       ; 3 uses
  %i.eg = load float, ptr %i.dm, align 4, !tbaa !10
  %i.eh = fdiv float %i.eg, %i.ef
  store float %i.eh, ptr %i.dm, align 4, !tbaa !10
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1:                 ; preds = %.critedge.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !10
  %i.ek = fdiv float %i.ej, %i.ef
  store float %i.ek, ptr %i.ei, align 4, !tbaa !10
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !10
  %i.en = fdiv float %i.em, %i.ef
  store float %i.en, ptr %i.el, align 4, !tbaa !10
  br label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1, %.critedge.i.i
  %i.eo = fsub float %storemerge.i.i, %i.dw
  %i.ep = fdiv float %i.eo, %storemerge.i.i
  store float %i.ep, ptr %i.dl, align 4, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i
  %.0156 = phi float [ %storemerge.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store float %.0156, ptr %i.dk, align 4, !tbaa !10
  %.not29 = icmp eq i64 %.0163, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr %i.bg, ptr %1, align 8, !tbaa !106, !alias.scope !383
  store i64 %.0163, ptr %i.bj, align 8, !tbaa !107, !alias.scope !383
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !107, !alias.scope !383
  store ptr %0, ptr %i.bl, align 8, !tbaa !109, !alias.scope !383
  store i64 0, ptr %i.bm, align 8, !tbaa !107, !alias.scope !383
  store i64 %i.bf, ptr %i.bn, align 8, !tbaa !107, !alias.scope !383
  store i64 4, ptr %i.bo, align 8, !tbaa !112, !alias.scope !383
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx.i.i.i.i.i33
  store ptr %i.eq, ptr %2, align 8
  store i64 %i.bh, ptr %.sroa.483.0..sroa_idx, align 8
  store ptr %i.dj, ptr %.sroa.584.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.786.0..sroa_idx, align 8
  store i64 %.0163, ptr %.sroa.887.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.988.0..sroa_idx, align 8
end_hunk_0
