Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.9?download=true
inline.NumInlined: 35072
inline.NumDeleted: 18954
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN3igl19min_quad_with_fixedIfLi4ELi2ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_:bb.a
  %i.hc = shl i64 %i.gu, 3
  %i.hd = getelementptr i8, ptr %i.gv, i64 %i.gz
  %i.he = getelementptr i8, ptr %i.gw, i64 %i.ha
  %i.hf = getelementptr i8, ptr %i.gx, i64 %i.hb
  %i.hg = getelementptr i8, ptr %i.gy, i64 %i.hc
  %i.hh = load float, ptr %i.hd, align 16, !tbaa !12
  %i.hi = load float, ptr %i.he, align 4, !tbaa !12
  %i.hj = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %i.hi, i64 1
  %i.hl = load float, ptr %i.hf, align 8, !tbaa !12
  %i.hm = load float, ptr %i.hg, align 4, !tbaa !12
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
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !116

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
  store ptr %7, ptr %11, align 8, !tbaa !117, !alias.scope !119
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi2ELi1ELi0ELi2ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(9) %11, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ib = load i8, ptr %3, align 1, !tbaa !21, !range !23, !noundef !24 ; 3 uses
  %i.ic = trunc nuw i8 %i.ib to i1                ; 4 uses
  %i.id = load float, ptr %9, align 4
  %i.ie = extractelement <2 x float> %i.fu, i64 0
  %.sink = select i1 %i.ic, float %i.ie, float %i.id
  %not. = xor i1 %i.ic, true
  %.141 = zext i1 %not. to i32
  store float %.sink, ptr %0, align 16, !tbaa !12
  %i.if = load i8, ptr %i.db, align 1, !tbaa !21, !range !23, !noundef !24 ; 2 uses
  %i.ig = trunc nuw i8 %i.if to i1                ; 2 uses
  %i.ih = zext nneg i8 %i.ib to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ih
  %.sroa.sel.idx = select i1 %i.ic, i64 0, i64 4
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.sel.idx
  %i.ij = select i1 %i.ic, i32 1, i32 2
  %.sink77.in = select i1 %i.ig, ptr %i.ii, ptr %.sroa.sel
  %.141.1 = select i1 %i.ig, i32 %.141, i32 %i.ij ; 2 uses
  %narrow = add nuw nsw i8 %i.ib, %i.if           ; 2 uses
  %.sink77 = load float, ptr %.sink77.in, align 4, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %.sink77, ptr %i.ik, align 4, !tbaa !12
  %i.il = load i8, ptr %i.ia, align 1, !tbaa !21, !range !23, !noundef !24 ; 2 uses
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
  %.sink78 = load float, ptr %.sink78.in, align 4, !tbaa !12
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sink78, ptr %i.is, align 8, !tbaa !12
  %i.it = load i8, ptr %i.hz, align 1, !tbaa !21, !range !23, !noundef !24
  %i.iu = trunc nuw i8 %i.it to i1                ; 2 uses
  %.1.2.sink = select i1 %i.iu, i32 %.1.2, i32 %.141.2
  %.sink107 = select i1 %i.iu, ptr %8, ptr %9
  %i.iv = zext nneg i32 %.1.2.sink to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sink107, i64 %i.iv
  %.sink79 = load float, ptr %i.iw, align 4, !tbaa !12
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.sink79, ptr %i.ix, align 4, !tbaa !12
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
  %i.b = load float, ptr %i.a, align 8, !tbaa !122
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.e = load i8, ptr %i.d, align 1, !tbaa !50, !range !23, !noundef !24
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.h = load float, ptr %i.g, align 4
  %i.i = select i1 %i.f, float %i.h, float f0x35000000
  %i.j = fmul float %i.c, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load i64, ptr %i.k, align 16, !tbaa !123 ; 5 uses
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
  %i.ac = load float, ptr %i.y, align 16, !tbaa !12
  %i.ad = load float, ptr %i.z, align 4, !tbaa !12
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = load float, ptr %i.aa, align 8, !tbaa !12
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !12
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
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !124

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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add nuw nsw i64 %.078.i, %i.az          ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit, label %.lr.ph.i, !llvm.loop !125

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa177 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i ] ; 16 uses
  %i.bc = icmp samesign ult i64 %.lcssa177, 4
  br i1 %i.bc, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread, label %.loopexit

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bf = add nsw i64 %.lcssa177, -1              ; 6 uses
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
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 9 uses
  %.0163 = phi i64 [ %i.bf, %.lr.ph ], [ %i.ft, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 20 uses
  %3 = sub i64 %i.bf, %indvar
  %i.bt = shl i64 %3, 4
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
  %4 = sub i64 %i.bf, %indvar
  %i.ca = shl i64 %4, 4
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
  %.idx.i.i.i.i = shl nsw i64 %.0163, 4
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
  %wide.load213 = load <4 x float>, ptr %i.cn, align 16, !tbaa !12, !alias.scope !126, !noalias !129
  %wide.load214 = load <4 x float>, ptr %i.cp, align 16, !tbaa !12, !alias.scope !126, !noalias !129
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %i.co, align 16, !tbaa !12, !alias.scope !129
  %wide.load216 = load <4 x float>, ptr %i.cq, align 16, !tbaa !12, !alias.scope !129
  store <4 x float> %wide.load215, ptr %i.cn, align 16, !tbaa !12, !alias.scope !126, !noalias !129
  store <4 x float> %wide.load216, ptr %i.cp, align 16, !tbaa !12, !alias.scope !126, !noalias !129
  store <4 x float> %wide.load213, ptr %i.co, align 16, !tbaa !12, !alias.scope !129
  store <4 x float> %wide.load214, ptr %i.cq, align 16, !tbaa !12, !alias.scope !129
  %index.next217 = add nuw i64 %index212, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next217, %n.vec210
  br i1 %i.cr, label %middle.block218, label %vector.body211, !llvm.loop !131

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
  %i.cv = load float, ptr %i.ct, align 16, !tbaa !12
  %i.cw = load float, ptr %i.cu, align 16, !tbaa !12
  store float %i.cw, ptr %i.ct, align 16, !tbaa !12
  store float %i.cv, ptr %i.cu, align 16, !tbaa !12
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
  %i.db = load float, ptr %i.cz, align 4, !tbaa !12
  %i.dc = load float, ptr %i.da, align 4, !tbaa !12
  store float %i.dc, ptr %i.cz, align 4, !tbaa !12
  store float %i.db, ptr %i.da, align 4, !tbaa !12
  %i.dd = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.dd ; 2 uses
  %i.dg = load float, ptr %i.de, align 4, !tbaa !12
  %i.dh = load float, ptr %i.df, align 4, !tbaa !12
  store float %i.dh, ptr %i.de, align 4, !tbaa !12
  store float %i.dg, ptr %i.df, align 4, !tbaa !12
  %i.di = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.dd, %.0163
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !132

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block218, %._crit_edge.i.i.i.i.i.i, %bb.b
  %i.dj = getelementptr [4 x i8], ptr %0, i64 %.0163 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i30 ; 7 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.0163 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 5 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !12 ; 2 uses
  %i.do = fmul float %i.dn, %i.dn                 ; 2 uses
  br i1 %.not160, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, %.lr.ph.i.i.i.i.i.i31
  %.01725.i.i.i.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i31 ], [ 1, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 3 uses
  %.02324.i.i.i.i.i.i = phi float [ %i.ds, %.lr.ph.i.i.i.i.i.i31 ], [ %i.do, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ]
  %.idx.i.i.i.i.i.i.i.i.i = shl i64 %.01725.i.i.i.i.i.i, 4
  %i.dp = getelementptr i8, ptr %i.dm, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !12 ; 2 uses
  %i.dr = fmul float %i.dq, %i.dq
  %i.ds = fadd float %.02324.i.i.i.i.i.i, %i.dr   ; 2 uses
  %i.dt = add nuw nsw i64 %.01725.i.i.i.i.i.i, 1
  %i.du = xor i64 %.01725.i.i.i.i.i.i, %.lcssa177
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.du, 3
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31, !llvm.loop !133

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i31, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.dv = phi float [ %i.do, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %i.ds, %.lr.ph.i.i.i.i.i.i31 ] ; 2 uses
  %i.dw = load float, ptr %i.dk, align 4, !tbaa !12 ; 8 uses
  %i.dx = fcmp ugt float %i.dv, f0x00800000
  br i1 %i.dx, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  store float 0.000000e+00, ptr %i.dl, align 4, !tbaa !12
  store float 0.000000e+00, ptr %i.dm, align 4, !tbaa !12
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store float 0.000000e+00, ptr %i.dy, align 4, !tbaa !12
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store float 0.000000e+00, ptr %i.dz, align 4, !tbaa !12
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit

.critedge.i.i:                                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  %i.ea = fmul float %i.dw, %i.dw
  %i.eb = fadd float %i.dv, %i.ea
  %i.ec = call noundef float @sqrtf(float noundef %i.eb) #14 ; 2 uses
  %i.ed = fcmp ult float %i.dw, 0.000000e+00
  %i.ee = fneg float %i.ec
  %storemerge.i.i = select i1 %i.ed, float %i.ec, float %i.ee ; 4 uses
  %i.ef = fsub float %i.dw, %storemerge.i.i       ; 3 uses
  %i.eg = load float, ptr %i.dm, align 4, !tbaa !12
  %i.eh = fdiv float %i.eg, %i.ef
  store float %i.eh, ptr %i.dm, align 4, !tbaa !12
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1:                 ; preds = %.critedge.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !12
  %i.ek = fdiv float %i.ej, %i.ef
  store float %i.ek, ptr %i.ei, align 4, !tbaa !12
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !12
  %i.en = fdiv float %i.em, %i.ef
  store float %i.en, ptr %i.el, align 4, !tbaa !12
  br label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1, %.critedge.i.i
  %i.eo = fsub float %storemerge.i.i, %i.dw
  %i.ep = fdiv float %i.eo, %storemerge.i.i
  store float %i.ep, ptr %i.dl, align 4, !tbaa !12
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i
  %.0156 = phi float [ %storemerge.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store float %.0156, ptr %i.dk, align 4, !tbaa !12
  %.not29 = icmp eq i64 %.0163, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr %i.bg, ptr %1, align 8, !tbaa !134, !alias.scope !138
  store i64 %.0163, ptr %i.bj, align 8, !tbaa !141, !alias.scope !138
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !141, !alias.scope !138
  store ptr %0, ptr %i.bl, align 8, !tbaa !142, !alias.scope !138
  store i64 0, ptr %i.bm, align 8, !tbaa !141, !alias.scope !138
  store i64 %i.bf, ptr %i.bn, align 8, !tbaa !141, !alias.scope !138
  store i64 4, ptr %i.bo, align 8, !tbaa !144, !alias.scope !138
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx.i.i.i.i.i33
  store ptr %i.eq, ptr %2, align 8
  store i64 %i.bh, ptr %.sroa.483.0..sroa_idx, align 8
  store ptr %i.dj, ptr %.sroa.584.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.786.0..sroa_idx, align 8
  store i64 %.0163, ptr %.sroa.887.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.988.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS_5BlockINSD_INS5_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSD_INSD_ISE_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi1ELi0EE3runERSP_:bb.a
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.09.epil.init
  store float %i.jf, ptr %i.jg, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.epil.preheader, %._crit_edge.loopexit84.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us27, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us16, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us12.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us12, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.us, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader, %bb.a
  ret void

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new
  %.09 = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new ], [ %i.jy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit ]
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %.09, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i
  %i.ji = load <4 x float>, ptr %i.j, align 1, !tbaa !14
  %i.jj = load <4 x float>, ptr %i.jh, align 1, !tbaa !14
  %i.jk = fmul <4 x float> %i.ji, %i.jj           ; 2 uses
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jm = fadd <4 x float> %i.jk, %i.jl           ; 2 uses
  %shift73 = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop74 = fadd <4 x float> %i.jm, %shift73
  %i.jn = extractelement <4 x float> %foldExtExtBinop74, i64 0
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.09
  store float %i.jn, ptr %i.jo, align 4, !tbaa !12
  %i.jp = or disjoint i64 %.09, 1                 ; 2 uses
  %.idx.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.jp, 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.1
  %i.jr = load <4 x float>, ptr %i.j, align 1, !tbaa !14
  %i.js = load <4 x float>, ptr %i.jq, align 1, !tbaa !14
  %i.jt = fmul <4 x float> %i.jr, %i.js           ; 2 uses
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jv = fadd <4 x float> %i.jt, %i.ju           ; 2 uses
  %shift73.1 = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop74.1 = fadd <4 x float> %i.jv, %shift73.1
  %i.jw = extractelement <4 x float> %foldExtExtBinop74.1, i64 0
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jp
  store float %i.jw, ptr %i.jx, align 4, !tbaa !12
  %i.jy = add nuw nsw i64 %.09, 2                 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit84.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit, !llvm.loop !356
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362, !nonnull !24, !align !305 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !141  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !141  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !24, !align !364 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !24, !align !305
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !215  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !204, !noalias !365 ; 3 uses
  %i.r = shl i64 %i.g, 4
  %i.s = shl i64 %i.j, 2                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -16  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 2
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 4
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load float, ptr %i.x, align 4, !tbaa !12, !alias.scope !368
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [4 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x float>, ptr %i.aa, align 16, !tbaa !12, !alias.scope !371
  %wide.load70 = load <4 x float>, ptr %i.ab, align 16, !tbaa !12, !alias.scope !371
  %i.ac = fmul <4 x float> %wide.load, %broadcast.splat
  %i.ad = fmul <4 x float> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <4 x float>, ptr %i.z, align 4, !tbaa !12, !alias.scope !373, !noalias !375
  %wide.load72 = load <4 x float>, ptr %i.ae, align 4, !tbaa !12, !alias.scope !373, !noalias !375
  %i.af = fsub <4 x float> %wide.load71, %i.ac
  %i.ag = fsub <4 x float> %wide.load72, %i.ad
  store <4 x float> %i.af, ptr %i.z, align 4, !tbaa !12, !alias.scope !373, !noalias !375
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !12, !alias.scope !373, !noalias !375
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [4 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load float, ptr %i.aj, align 16, !tbaa !12
  %i.al = load float, ptr %i.x, align 4, !tbaa !12
  %i.am = fmul float %i.ak, %i.al
  %i.an = load float, ptr %i.ai, align 4, !tbaa !12
  %i.ao = fsub float %i.an, %i.am
  store float %i.ao, ptr %i.ai, align 4, !tbaa !12
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !377

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [4 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.09.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !12
  %i.av = load float, ptr %i.x, align 4, !tbaa !12
  %i.aw = fmul float %i.au, %i.av
  %i.ax = load float, ptr %i.as, align 4, !tbaa !12
  %i.ay = fsub float %i.ax, %i.aw
  store float %i.ay, ptr %i.as, align 4, !tbaa !12
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.az
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = load float, ptr %i.x, align 4, !tbaa !12
  %i.be = fmul float %i.bc, %i.bd
  %i.bf = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bg = fsub float %i.bf, %i.be
  store float %i.bg, ptr %i.ba, align 4, !tbaa !12
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !378

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !141 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !141 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 2
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = and i64 %i.bo, 3
  %i.bq = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.bj)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bs = shl i64 %i.bj, 2                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ft, %._crit_edge ] ; 10 uses
  %.03552 = phi i64 [ %i.bq, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 14 uses
  %i.bt = shl i64 %.03453, 2
  %i.bu = shl i64 %.03453, 4
  %i.bv = shl i64 %.03453, 2
  %i.bw = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bx = and i64 %i.bw, -4                       ; 2 uses
  %i.by = add nsw i64 %i.bx, %.03552              ; 6 uses
  %i.bz = icmp sgt i64 %.03552, 0
  br i1 %i.bz, label %.lr.ph, label %.preheader45

.lr.ph:                                           ; preds = %bb.c
  %i.ca = load ptr, ptr %0, align 8, !tbaa !379, !nonnull !24, !align !305
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !215 ; 2 uses
  %.idx.i.i.i = shl i64 %.03453, 4                ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 %.idx.i.i.i ; 6 uses
  %i.cd = load ptr, ptr %i.br, align 8, !tbaa !380, !nonnull !24, !align !364 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !204, !noalias !381 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.03453 ; 5 uses
  %min.iters.check114 = icmp ult i64 %.03552, 8
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph
  %i.ch = shl i64 %.03552, 2                      ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cb, i64 %.idx.i.i.i
  %scevgep103 = getelementptr i8, ptr %i.ci, i64 %i.ch ; 2 uses
  %scevgep104 = getelementptr i8, ptr %i.cd, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bt
  %scevgep105 = getelementptr i8, ptr %i.cj, i64 4
  %bound0106 = icmp ult ptr %i.cc, %scevgep104
  %bound1107 = icmp ult ptr %i.cd, %scevgep103
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0109 = icmp ult ptr %i.cc, %scevgep105
  %bound1110 = icmp ult ptr %i.cg, %scevgep103
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %found.conflict108, %found.conflict111
  br i1 %conflict.rdx112, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck102
  %n.vec116 = and i64 %.03552, 9223372036854775800 ; 3 uses
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !12, !alias.scope !384
  %broadcast.splatinsert121 = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat122 = shufflevector <4 x float> %broadcast.splatinsert121, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next125, %vector.body117 ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.cc, i64 %index118 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index118 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load119 = load <4 x float>, ptr %i.cm, align 16, !tbaa !12, !alias.scope !387
  %wide.load120 = load <4 x float>, ptr %i.cn, align 16, !tbaa !12, !alias.scope !387
  %i.co = fmul <4 x float> %wide.load119, %broadcast.splat122
  %i.cp = fmul <4 x float> %wide.load120, %broadcast.splat122
  %i.cq = getelementptr i8, ptr %i.cl, i64 16     ; 2 uses
  %wide.load123 = load <4 x float>, ptr %i.cl, align 4, !tbaa !12, !alias.scope !389, !noalias !391
  %wide.load124 = load <4 x float>, ptr %i.cq, align 4, !tbaa !12, !alias.scope !389, !noalias !391
  %i.cr = fsub <4 x float> %wide.load123, %i.co
  %i.cs = fsub <4 x float> %wide.load124, %i.cp
  store <4 x float> %i.cr, ptr %i.cl, align 4, !tbaa !12, !alias.scope !389, !noalias !391
  store <4 x float> %i.cs, ptr %i.cq, align 4, !tbaa !12, !alias.scope !389, !noalias !391
  %index.next125 = add nuw i64 %index118, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.ct, label %middle.block126, label %vector.body117, !llvm.loop !392

middle.block126:                                  ; preds = %vector.body117
  %cmp.n127 = icmp eq i64 %.03552, %n.vec116
  br i1 %cmp.n127, label %.preheader45, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %vector.memcheck102, %.lr.ph, %middle.block126
  %.03347.ph = phi i64 [ 0, %vector.memcheck102 ], [ 0, %.lr.ph ], [ %n.vec116, %middle.block126 ] ; 5 uses
  %.neg132 = or disjoint i64 %.03347.ph, 1
  %xtraiter130 = and i64 %.03552, 1
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %scalar.ph113.prol.loopexit, label %scalar.ph113.prol

scalar.ph113.prol:                                ; preds = %scalar.ph113.preheader
  %i.cu = getelementptr [4 x i8], ptr %i.cc, i64 %.03347.ph ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.03347.ph
  %i.cw = load float, ptr %i.cv, align 16, !tbaa !12
  %i.cx = load float, ptr %i.cg, align 4, !tbaa !12
  %i.cy = fmul float %i.cw, %i.cx
  %i.cz = load float, ptr %i.cu, align 4, !tbaa !12
  %i.da = fsub float %i.cz, %i.cy
  store float %i.da, ptr %i.cu, align 4, !tbaa !12
  %i.db = or disjoint i64 %.03347.ph, 1
  br label %scalar.ph113.prol.loopexit

scalar.ph113.prol.loopexit:                       ; preds = %scalar.ph113.prol, %scalar.ph113.preheader
  %.03347.unr = phi i64 [ %.03347.ph, %scalar.ph113.preheader ], [ %i.db, %scalar.ph113.prol ]
  %i.dc = icmp eq i64 %.03552, %.neg132
  br i1 %i.dc, label %.preheader45, label %scalar.ph113

.preheader45:                                     ; preds = %scalar.ph113.prol.loopexit, %scalar.ph113, %middle.block126, %bb.c
  %i.dd = icmp sgt i64 %i.bw, 3
  br i1 %i.dd, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 4
  br label %bb.d

scalar.ph113:                                     ; preds = %scalar.ph113.prol.loopexit, %scalar.ph113
  %.03347 = phi i64 [ %i.dt, %scalar.ph113 ], [ %.03347.unr, %scalar.ph113.prol.loopexit ] ; 4 uses
  %i.de = getelementptr [4 x i8], ptr %i.cc, i64 %.03347 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.03347
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12
  %i.dh = load float, ptr %i.cg, align 4, !tbaa !12
  %i.di = fmul float %i.dg, %i.dh
  %i.dj = load float, ptr %i.de, align 4, !tbaa !12
  %i.dk = fsub float %i.dj, %i.di
  store float %i.dk, ptr %i.de, align 4, !tbaa !12
  %i.dl = add nuw nsw i64 %.03347, 1              ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.cc, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dl
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = load float, ptr %i.cg, align 4, !tbaa !12
  %i.dq = fmul float %i.do, %i.dp
  %i.dr = load float, ptr %i.dm, align 4, !tbaa !12
  %i.ds = fsub float %i.dr, %i.dq
  store float %i.ds, ptr %i.dm, align 4, !tbaa !12
  %i.dt = add nuw nsw i64 %.03347, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dt, %.03552
  br i1 %exitcond.not.1, label %.preheader45, label %scalar.ph113, !llvm.loop !393

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.du = icmp slt i64 %i.by, %i.bj
  br i1 %i.du, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %0, align 8, !tbaa !379, !nonnull !24, !align !305
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !215 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 4              ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 %.idx.i.i.i38 ; 2 uses
  %i.dy = load ptr, ptr %i.br, align 8, !tbaa !380, !nonnull !24, !align !364 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 16, !tbaa !204, !noalias !394 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.03453 ; 3 uses
  %i.ec = add i64 %.03552, %i.bx
  %i.ed = sub i64 %i.bj, %i.ec                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.ee = shl i64 %i.bw, 2
  %i.ef = and i64 %i.ee, -16                      ; 2 uses
  %i.eg = shl i64 %.03552, 2                      ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dw, i64 %.idx.i.i.i38
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ef
  %scevgep74 = getelementptr i8, ptr %i.ei, i64 %i.eg ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dw, i64 %i.bs
  %scevgep75 = getelementptr i8, ptr %i.ej, i64 %i.bu ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dy, i64 %i.ef
  %scevgep76 = getelementptr i8, ptr %i.ek, i64 %i.eg
  %scevgep77 = getelementptr i8, ptr %i.dy, i64 %i.bs
  %i.el = getelementptr i8, ptr %i.ea, i64 %i.bv
  %scevgep78 = getelementptr i8, ptr %i.el, i64 4
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.eb, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.ed, -8                    ; 3 uses
  %i.em = add i64 %i.by, %n.vec89
  %i.en = load float, ptr %i.eb, align 4, !tbaa !12, !alias.scope !397
  %broadcast.splatinsert94 = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat95 = shufflevector <4 x float> %broadcast.splatinsert94, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.eo = add i64 %i.by, %index91                 ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %i.dx, i64 %i.eo ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.eo ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load92 = load <4 x float>, ptr %i.eq, align 4, !tbaa !12, !alias.scope !400
  %wide.load93 = load <4 x float>, ptr %i.er, align 4, !tbaa !12, !alias.scope !400
  %i.es = fmul <4 x float> %wide.load92, %broadcast.splat95
  %i.et = fmul <4 x float> %wide.load93, %broadcast.splat95
  %i.eu = getelementptr i8, ptr %i.ep, i64 16     ; 2 uses
  %wide.load96 = load <4 x float>, ptr %i.ep, align 4, !tbaa !12, !alias.scope !402, !noalias !404
  %wide.load97 = load <4 x float>, ptr %i.eu, align 4, !tbaa !12, !alias.scope !402, !noalias !404
  %i.ev = fsub <4 x float> %wide.load96, %i.es
  %i.ew = fsub <4 x float> %wide.load97, %i.et
  store <4 x float> %i.ev, ptr %i.ep, align 4, !tbaa !12, !alias.scope !402, !noalias !404
  store <4 x float> %i.ew, ptr %i.eu, align 4, !tbaa !12, !alias.scope !402, !noalias !404
  %index.next98 = add nuw i64 %index91, 8         ; 2 uses
  %i.ex = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.ex, label %middle.block99, label %vector.body90, !llvm.loop !405

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.ed, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.by, %vector.memcheck73 ], [ %i.by, %.lr.ph51 ], [ %i.em, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.fq, %bb.d ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS5_IfLin1ELin1ELi0ELi4ELi1EEEEEEENS0_13mul_assign_opIffEELi0EEELi4ELi0EE3runERSH_:bb.a
  br label %scalar.ph74

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.el, %bb.d ] ; 2 uses
  %i.eb = load ptr, ptr %0, align 8, !tbaa !710, !nonnull !24, !align !305
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !627
  %i.ed = getelementptr i8, ptr %i.ec, i64 %.idx.i.i.i37
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %.03248 ; 2 uses
  %i.ef = load ptr, ptr %i.bl, align 8, !tbaa !711, !nonnull !24, !align !306
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !12
  %i.eh = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = load <4 x float>, ptr %i.ee, align 16, !tbaa !14
  %i.ek = fmul <4 x float> %i.ej, %i.ei
  store <4 x float> %i.ek, ptr %i.ee, align 16, !tbaa !14
  %i.el = add nsw i64 %.03248, 4                  ; 2 uses
  %i.em = icmp slt i64 %i.el, %i.bq
  br i1 %i.em, label %bb.d, label %.preheader, !llvm.loop !726

._crit_edge:                                      ; preds = %scalar.ph74, %middle.block85, %.preheader
  %i.en = srem i64 %.03552, 4
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bd, i64 %i.en)
  %i.eo = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.eo, %i.bf
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS5_IfLin1ELin1ELi0ELi4ELi1EEEEEEENS0_13mul_assign_opIffEELi0EEELi0ELi0EE3runERSH_.exit, label %bb.c, !llvm.loop !727

scalar.ph74:                                      ; preds = %scalar.ph74.preheader, %scalar.ph74
  %.050 = phi i64 [ %i.et, %scalar.ph74 ], [ %.050.ph, %scalar.ph74.preheader ] ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %i.dj, i64 %.050 ; 2 uses
  %i.eq = load float, ptr %i.dk, align 4, !tbaa !192
  %i.er = load float, ptr %i.ep, align 4, !tbaa !12
  %i.es = fmul float %i.eq, %i.er
  store float %i.es, ptr %i.ep, align 4, !tbaa !12
  %i.et = add nsw i64 %.050, 1                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.bd
  br i1 %i.eu, label %scalar.ph74, label %._crit_edge, !llvm.loop !728

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS5_IfLin1ELin1ELi0ELi4ELi1EEEEEEENS0_13mul_assign_opIffEELi0EEELi0ELi0EE3runERSH_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IfLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi4ELi0EE3runERSZ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !729, !nonnull !24, !align !305 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !635
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !141  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IfLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !141  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !24, !align !364 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IfLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !24, !align !305
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !691  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !731, !noalias !732 ; 3 uses
  %i.r = shl i64 %i.g, 4
  %i.s = shl i64 %i.j, 2                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -16  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 2
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 4
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load float, ptr %i.x, align 4, !tbaa !12, !alias.scope !735
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [4 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x float>, ptr %i.aa, align 16, !tbaa !12, !alias.scope !738
  %wide.load70 = load <4 x float>, ptr %i.ab, align 16, !tbaa !12, !alias.scope !738
  %i.ac = fmul <4 x float> %wide.load, %broadcast.splat
  %i.ad = fmul <4 x float> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <4 x float>, ptr %i.z, align 4, !tbaa !12, !alias.scope !740, !noalias !742
  %wide.load72 = load <4 x float>, ptr %i.ae, align 4, !tbaa !12, !alias.scope !740, !noalias !742
  %i.af = fsub <4 x float> %wide.load71, %i.ac
  %i.ag = fsub <4 x float> %wide.load72, %i.ad
  store <4 x float> %i.af, ptr %i.z, align 4, !tbaa !12, !alias.scope !740, !noalias !742
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !12, !alias.scope !740, !noalias !742
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !743

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [4 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load float, ptr %i.aj, align 16, !tbaa !12
  %i.al = load float, ptr %i.x, align 4, !tbaa !12
  %i.am = fmul float %i.ak, %i.al
  %i.an = load float, ptr %i.ai, align 4, !tbaa !12
  %i.ao = fsub float %i.an, %i.am
  store float %i.ao, ptr %i.ai, align 4, !tbaa !12
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IfLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERSZ_.exit, label %.preheader.i, !llvm.loop !744

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [4 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.09.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !12
  %i.av = load float, ptr %i.x, align 4, !tbaa !12
  %i.aw = fmul float %i.au, %i.av
  %i.ax = load float, ptr %i.as, align 4, !tbaa !12
  %i.ay = fsub float %i.ax, %i.aw
  store float %i.ay, ptr %i.as, align 4, !tbaa !12
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.az
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = load float, ptr %i.x, align 4, !tbaa !12
  %i.be = fmul float %i.bc, %i.bd
  %i.bf = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bg = fsub float %i.bf, %i.be
  store float %i.bg, ptr %i.ba, align 4, !tbaa !12
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !745

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !141 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !141 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IfLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERSZ_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 2
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = and i64 %i.bo, 3
  %i.bq = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.bj)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bs = shl i64 %i.bj, 2                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ft, %._crit_edge ] ; 10 uses
  %.03552 = phi i64 [ %i.bq, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 14 uses
  %i.bt = shl i64 %.03453, 2
  %i.bu = shl i64 %.03453, 4
  %i.bv = shl i64 %.03453, 2
  %i.bw = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bx = and i64 %i.bw, -4                       ; 2 uses
  %i.by = add nsw i64 %i.bx, %.03552              ; 6 uses
  %i.bz = icmp sgt i64 %.03552, 0
  br i1 %i.bz, label %.lr.ph, label %.preheader45

.lr.ph:                                           ; preds = %bb.c
  %i.ca = load ptr, ptr %0, align 8, !tbaa !746, !nonnull !24, !align !305
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !691 ; 2 uses
  %.idx.i.i.i = shl i64 %.03453, 4                ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 %.idx.i.i.i ; 6 uses
  %i.cd = load ptr, ptr %i.br, align 8, !tbaa !747, !nonnull !24, !align !364 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !731, !noalias !748 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.03453 ; 5 uses
  %min.iters.check114 = icmp ult i64 %.03552, 8
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph
  %i.ch = shl i64 %.03552, 2                      ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cb, i64 %.idx.i.i.i
  %scevgep103 = getelementptr i8, ptr %i.ci, i64 %i.ch ; 2 uses
  %scevgep104 = getelementptr i8, ptr %i.cd, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bt
  %scevgep105 = getelementptr i8, ptr %i.cj, i64 4
  %bound0106 = icmp ult ptr %i.cc, %scevgep104
  %bound1107 = icmp ult ptr %i.cd, %scevgep103
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0109 = icmp ult ptr %i.cc, %scevgep105
  %bound1110 = icmp ult ptr %i.cg, %scevgep103
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %found.conflict108, %found.conflict111
  br i1 %conflict.rdx112, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck102
  %n.vec116 = and i64 %.03552, 9223372036854775800 ; 3 uses
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !12, !alias.scope !751
  %broadcast.splatinsert121 = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat122 = shufflevector <4 x float> %broadcast.splatinsert121, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next125, %vector.body117 ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.cc, i64 %index118 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index118 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load119 = load <4 x float>, ptr %i.cm, align 16, !tbaa !12, !alias.scope !754
  %wide.load120 = load <4 x float>, ptr %i.cn, align 16, !tbaa !12, !alias.scope !754
  %i.co = fmul <4 x float> %wide.load119, %broadcast.splat122
  %i.cp = fmul <4 x float> %wide.load120, %broadcast.splat122
  %i.cq = getelementptr i8, ptr %i.cl, i64 16     ; 2 uses
  %wide.load123 = load <4 x float>, ptr %i.cl, align 4, !tbaa !12, !alias.scope !756, !noalias !758
  %wide.load124 = load <4 x float>, ptr %i.cq, align 4, !tbaa !12, !alias.scope !756, !noalias !758
  %i.cr = fsub <4 x float> %wide.load123, %i.co
  %i.cs = fsub <4 x float> %wide.load124, %i.cp
  store <4 x float> %i.cr, ptr %i.cl, align 4, !tbaa !12, !alias.scope !756, !noalias !758
  store <4 x float> %i.cs, ptr %i.cq, align 4, !tbaa !12, !alias.scope !756, !noalias !758
  %index.next125 = add nuw i64 %index118, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.ct, label %middle.block126, label %vector.body117, !llvm.loop !759

middle.block126:                                  ; preds = %vector.body117
  %cmp.n127 = icmp eq i64 %.03552, %n.vec116
  br i1 %cmp.n127, label %.preheader45, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %vector.memcheck102, %.lr.ph, %middle.block126
  %.03347.ph = phi i64 [ 0, %vector.memcheck102 ], [ 0, %.lr.ph ], [ %n.vec116, %middle.block126 ] ; 5 uses
  %.neg132 = or disjoint i64 %.03347.ph, 1
  %xtraiter130 = and i64 %.03552, 1
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %scalar.ph113.prol.loopexit, label %scalar.ph113.prol

scalar.ph113.prol:                                ; preds = %scalar.ph113.preheader
  %i.cu = getelementptr [4 x i8], ptr %i.cc, i64 %.03347.ph ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.03347.ph
  %i.cw = load float, ptr %i.cv, align 16, !tbaa !12
  %i.cx = load float, ptr %i.cg, align 4, !tbaa !12
  %i.cy = fmul float %i.cw, %i.cx
  %i.cz = load float, ptr %i.cu, align 4, !tbaa !12
  %i.da = fsub float %i.cz, %i.cy
  store float %i.da, ptr %i.cu, align 4, !tbaa !12
  %i.db = or disjoint i64 %.03347.ph, 1
  br label %scalar.ph113.prol.loopexit

scalar.ph113.prol.loopexit:                       ; preds = %scalar.ph113.prol, %scalar.ph113.preheader
  %.03347.unr = phi i64 [ %.03347.ph, %scalar.ph113.preheader ], [ %i.db, %scalar.ph113.prol ]
  %i.dc = icmp eq i64 %.03552, %.neg132
  br i1 %i.dc, label %.preheader45, label %scalar.ph113

.preheader45:                                     ; preds = %scalar.ph113.prol.loopexit, %scalar.ph113, %middle.block126, %bb.c
  %i.dd = icmp sgt i64 %i.bw, 3
  br i1 %i.dd, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 4
  br label %bb.d

scalar.ph113:                                     ; preds = %scalar.ph113.prol.loopexit, %scalar.ph113
  %.03347 = phi i64 [ %i.dt, %scalar.ph113 ], [ %.03347.unr, %scalar.ph113.prol.loopexit ] ; 4 uses
  %i.de = getelementptr [4 x i8], ptr %i.cc, i64 %.03347 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.03347
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12
  %i.dh = load float, ptr %i.cg, align 4, !tbaa !12
  %i.di = fmul float %i.dg, %i.dh
  %i.dj = load float, ptr %i.de, align 4, !tbaa !12
  %i.dk = fsub float %i.dj, %i.di
  store float %i.dk, ptr %i.de, align 4, !tbaa !12
  %i.dl = add nuw nsw i64 %.03347, 1              ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.cc, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dl
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = load float, ptr %i.cg, align 4, !tbaa !12
  %i.dq = fmul float %i.do, %i.dp
  %i.dr = load float, ptr %i.dm, align 4, !tbaa !12
  %i.ds = fsub float %i.dr, %i.dq
  store float %i.ds, ptr %i.dm, align 4, !tbaa !12
  %i.dt = add nuw nsw i64 %.03347, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dt, %.03552
  br i1 %exitcond.not.1, label %.preheader45, label %scalar.ph113, !llvm.loop !760

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.du = icmp slt i64 %i.by, %i.bj
  br i1 %i.du, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %0, align 8, !tbaa !746, !nonnull !24, !align !305
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !691 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 4              ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 %.idx.i.i.i38 ; 2 uses
  %i.dy = load ptr, ptr %i.br, align 8, !tbaa !747, !nonnull !24, !align !364 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 16, !tbaa !731, !noalias !761 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.03453 ; 3 uses
  %i.ec = add i64 %.03552, %i.bx
  %i.ed = sub i64 %i.bj, %i.ec                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.ee = shl i64 %i.bw, 2
  %i.ef = and i64 %i.ee, -16                      ; 2 uses
  %i.eg = shl i64 %.03552, 2                      ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dw, i64 %.idx.i.i.i38
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ef
  %scevgep74 = getelementptr i8, ptr %i.ei, i64 %i.eg ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dw, i64 %i.bs
  %scevgep75 = getelementptr i8, ptr %i.ej, i64 %i.bu ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dy, i64 %i.ef
  %scevgep76 = getelementptr i8, ptr %i.ek, i64 %i.eg
  %scevgep77 = getelementptr i8, ptr %i.dy, i64 %i.bs
  %i.el = getelementptr i8, ptr %i.ea, i64 %i.bv
  %scevgep78 = getelementptr i8, ptr %i.el, i64 4
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.eb, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.ed, -8                    ; 3 uses
  %i.em = add i64 %i.by, %n.vec89
  %i.en = load float, ptr %i.eb, align 4, !tbaa !12, !alias.scope !764
  %broadcast.splatinsert94 = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat95 = shufflevector <4 x float> %broadcast.splatinsert94, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.eo = add i64 %i.by, %index91                 ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %i.dx, i64 %i.eo ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.eo ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load92 = load <4 x float>, ptr %i.eq, align 4, !tbaa !12, !alias.scope !767
  %wide.load93 = load <4 x float>, ptr %i.er, align 4, !tbaa !12, !alias.scope !767
  %i.es = fmul <4 x float> %wide.load92, %broadcast.splat95
  %i.et = fmul <4 x float> %wide.load93, %broadcast.splat95
  %i.eu = getelementptr i8, ptr %i.ep, i64 16     ; 2 uses
  %wide.load96 = load <4 x float>, ptr %i.ep, align 4, !tbaa !12, !alias.scope !769, !noalias !771
  %wide.load97 = load <4 x float>, ptr %i.eu, align 4, !tbaa !12, !alias.scope !769, !noalias !771
  %i.ev = fsub <4 x float> %wide.load96, %i.es
  %i.ew = fsub <4 x float> %wide.load97, %i.et
  store <4 x float> %i.ev, ptr %i.ep, align 4, !tbaa !12, !alias.scope !769, !noalias !771
  store <4 x float> %i.ew, ptr %i.eu, align 4, !tbaa !12, !alias.scope !769, !noalias !771
  %index.next98 = add nuw i64 %index91, 8         ; 2 uses
  %i.ex = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.ex, label %middle.block99, label %vector.body90, !llvm.loop !772

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.ed, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.by, %vector.memcheck73 ], [ %i.by, %.lr.ph51 ], [ %i.em, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.fq, %bb.d ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal29general_matrix_vector_productIlfNS0_22const_blas_data_mapperIflLi0EEELi0ELb0EfS3_Lb0ELi0EE3runEllRKS3_S6_Pflf:bb.a
  %.0395444 = phi <4 x float> [ zeroinitializer, %.lr.ph447 ], [ %i.gu, %bb.h ]
  %i.gm = getelementptr [4 x i8], ptr %i.ga, i64 %.0183446
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !12
  %i.go = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gq = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gb, i64 %i.gq
  %i.gs = load <4 x float>, ptr %i.gr, align 1, !tbaa !14
  %i.gt = fmul <4 x float> %i.gs, %i.gp
  %i.gu = fadd <4 x float> %.0395444, %i.gt       ; 2 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gc, i64 %i.gq
  %i.gw = load <4 x float>, ptr %i.gv, align 1, !tbaa !14
  %i.gx = fmul <4 x float> %i.gw, %i.gp
  %i.gy = fadd <4 x float> %.0393445, %i.gx       ; 2 uses
  %i.gz = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.ha = icmp slt i64 %i.gz, %.sroa.speculated
  br i1 %i.ha, label %bb.h, label %._crit_edge448, !llvm.loop !805

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gl, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hb = icmp slt i64 %.3, %i.e
  br i1 %i.hb, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hc = load ptr, ptr %3, align 8, !tbaa !796
  %i.hd = getelementptr [4 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.he = getelementptr inbounds [4 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hf = load <4 x float>, ptr %i.he, align 1, !tbaa !14
  %i.hg = fmul <4 x float> %i.l, %i.hr
  %i.hh = fadd <4 x float> %i.hg, %i.hf
  store <4 x float> %i.hh, ptr %i.he, align 1, !tbaa !14
  %i.hi = add nsw i64 %.3, 4
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.hs, %bb.j ] ; 3 uses
  %.0384451 = phi <4 x float> [ zeroinitializer, %.lr.ph453 ], [ %i.hr, %bb.j ]
  %i.hj = getelementptr [4 x i8], ptr %i.hc, i64 %.0182452
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !12
  %i.hl = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.ho = getelementptr [4 x i8], ptr %i.hd, i64 %i.hn
  %i.hp = load <4 x float>, ptr %i.ho, align 1, !tbaa !14
  %i.hq = fmul <4 x float> %i.hp, %i.hm
  %i.hr = fadd <4 x float> %.0384451, %i.hq       ; 2 uses
  %i.hs = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ht = icmp slt i64 %i.hs, %.sroa.speculated
  br i1 %i.ht, label %bb.j, label %._crit_edge454, !llvm.loop !806

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hi, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.hu = icmp slt i64 %.4, %0
  br i1 %i.hu, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.hv = load ptr, ptr %3, align 8, !tbaa !796
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.ia, %._crit_edge459 ] ; 3 uses
  %i.hw = getelementptr [4 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.hx = getelementptr inbounds [4 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !12
  %i.hz = tail call float @llvm.fmuladd.f32(float %6, float %i.ih, float %i.hy)
  store float %i.hz, ptr %i.hx, align 4, !tbaa !12
  %i.ia = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ia, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !807

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.ii, %bb.l ] ; 3 uses
  %.0181456 = phi float [ 0.000000e+00, %.lr.ph458 ], [ %i.ih, %bb.l ]
  %i.ib = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.ic = getelementptr [4 x i8], ptr %i.hw, i64 %i.ib
  %i.id = getelementptr [4 x i8], ptr %i.hv, i64 %.0457
  %i.ie = load float, ptr %i.ic, align 4, !tbaa !12
  %i.if = load float, ptr %i.id, align 4, !tbaa !12
  %i.ig = fmul float %i.ie, %i.if
  %i.ih = fadd float %.0181456, %i.ig             ; 2 uses
  %i.ii = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.ij = icmp slt i64 %i.ii, %.sroa.speculated
  br i1 %i.ij, label %bb.l, label %._crit_edge459, !llvm.loop !808
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %1 = alloca %"class.Eigen::Block.2602", align 8 ; 10 uses
  %2 = alloca %"class.Eigen::Transpose.3078", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = load float, ptr %i.b, align 4, !tbaa !809
  %i.d = tail call noundef float @llvm.fabs.f32(float %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.f = load i8, ptr %i.e, align 1, !tbaa !81, !range !23, !noundef !24
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load float, ptr %i.h, align 8
  %i.j = select i1 %i.g, float %i.i, float f0x34C00000
  %i.k = fmul float %i.d, %i.j                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !810  ; 5 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader261, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.m, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi181 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.o = or disjoint i64 %index, 1                ; 2 uses
  %i.p = or disjoint i64 %index, 2                ; 2 uses
  %i.q = or disjoint i64 %index, 3                ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %0, i64 %index
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.v = mul i64 %index, 12
  %i.w = mul i64 %i.o, 12
  %i.x = mul i64 %i.p, 12
  %i.y = mul i64 %i.q, 12
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.y
  %i.ad = load float, ptr %i.z, align 8, !tbaa !12
  %i.ae = load float, ptr %i.aa, align 8, !tbaa !12
  %i.af = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.ae, i64 1
  %i.ah = load float, ptr %i.ab, align 8, !tbaa !12
  %i.ai = load float, ptr %i.ac, align 8, !tbaa !12
  %i.aj = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ag)
  %i.am = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ak)
  %i.an = fcmp ogt <2 x float> %i.al, %broadcast.splat
  %i.ao = fcmp ogt <2 x float> %i.am, %broadcast.splat
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <2 x i64> %vec.phi181, %i.aq        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !811

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i.preheader261

.lr.ph.i.preheader261:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader261, %.lr.ph.i
  %.09.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader261 ] ; 3 uses
  %.078.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader261 ]
  %i.av = getelementptr [4 x i8], ptr %0, i64 %.09.i
  %.idx.i.i = mul i64 %.09.i, 12
  %i.aw = getelementptr i8, ptr %i.av, i64 %.idx.i.i
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !12
  %i.ay = tail call noundef float @llvm.fabs.f32(float %i.ax)
  %i.az = fcmp ogt float %i.ay, %i.k
  %i.ba = zext i1 %i.az to i64
  %i.bb = add nuw nsw i64 %.078.i, %i.ba          ; 2 uses
  %i.bc = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %i.m
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i, !llvm.loop !812

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i64 [ %i.au, %middle.block ], [ %i.bb, %.lr.ph.i ] ; 14 uses
  %i.bd = icmp samesign ult i64 %.lcssa, 3
  br i1 %i.bd, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread, label %.loopexit

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bg = add nsw i64 %.lcssa, -1                 ; 4 uses
  %.not163 = icmp eq i64 %.lcssa, 0
  br i1 %.not163, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread
  %.idx.i.i.i.i30 = mul i64 %i.bg, 12             ; 7 uses
  %i.bh = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30 ; 21 uses
  %i.bi = xor i64 %.lcssa, 3                      ; 4 uses
  %i.bj = sub nuw nsw i64 4, %.lcssa
  %i.bk = icmp eq i64 %.lcssa, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.idx.i.i.i.i.i33 = mul nuw nsw i64 %.lcssa, 12
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.1292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.br = mul nuw i64 %.lcssa, 12
  %i.bs = add i64 %i.br, %i.a
  %i.bt = add i64 %i.bs, -12                      ; 2 uses
  %i.bu = shl nuw nsw i64 %.lcssa, 4
  %i.bv = add nsw i64 %i.bu, -12                  ; 4 uses
  %scevgep184 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %scevgep214 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %i.bw = mul nuw i64 %.lcssa, 12
  %i.bx = add i64 %i.bw, %i.a
  %i.by = add i64 %i.bx, 4
  %scevgep238 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %3 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %i.bz = lshr exact i64 %i.bt, 2
  %4 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %min.iters.check201 = icmp ult i64 %i.bi, 5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 11 uses
  %.0162 = phi i64 [ %i.bg, %.lr.ph ], [ %i.jo, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 18 uses
  %i.cc = mul i64 %indvar, -12                    ; 2 uses
  %scevgep235 = getelementptr i8, ptr %3, i64 %i.cc
  %i.cd = sub i64 %.lcssa, %indvar
  %i.ce = add i64 %i.by, %i.cc
  %5 = lshr exact i64 %i.ce, 2
  %i.cf = sub nsw i64 0, %5
  %i.cg = and i64 %i.cf, 3
  %umin236 = call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cg)
  %i.ch = shl nuw nsw i64 %umin236, 2             ; 2 uses
  %scevgep237 = getelementptr i8, ptr %scevgep235, i64 %i.ch
  %scevgep239 = getelementptr i8, ptr %scevgep238, i64 %i.ch
  %i.ci = sub i64 %.lcssa, %indvar
  %i.cj = add i64 %i.bz, %indvar
  %i.ck = sub i64 0, %i.cj
  %i.cl = and i64 %i.ck, 3
  %umin = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cl)
  %i.cm = shl nuw nsw i64 %umin, 2
  %i.cn = shl i64 %indvar, 4
  %i.co = sub i64 %i.bv, %i.cn
  %scevgep213 = getelementptr i8, ptr %0, i64 %i.co
  %i.cp = shl i64 %indvar, 2
  %i.cq = sub i64 %i.bv, %i.cp
  %scevgep216 = getelementptr i8, ptr %0, i64 %i.cq
  %i.cr = mul i64 %indvar, -12                    ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.cr
  %i.cs = sub i64 %.lcssa, %indvar                ; 2 uses
  %i.ct = add i64 %i.bt, %i.cr
  %6 = lshr exact i64 %i.ct, 2
  %i.cu = sub nsw i64 0, %6
  %i.cv = and i64 %i.cu, 3
  %smin = call i64 @llvm.smin.i64(i64 %i.cs, i64 %i.cv) ; 2 uses
  %i.cw = sub i64 %i.cs, %smin
  %i.cx = and i64 %i.cw, 4611686018427387900
  %i.cy = add i64 %smin, %i.cx
  %i.cz = shl i64 %i.cy, 2                        ; 2 uses
  %scevgep182 = getelementptr i8, ptr %scevgep, i64 %i.cz
  %i.da = shl i64 %indvar, 4
  %i.db = sub i64 %i.bv, %i.da
  %scevgep183 = getelementptr i8, ptr %0, i64 %i.db
  %scevgep185 = getelementptr i8, ptr %scevgep184, i64 %i.cz
  %i.dc = shl i64 %indvar, 2
  %i.dd = sub i64 %i.bv, %i.dc
  %scevgep186 = getelementptr i8, ptr %0, i64 %i.dd
  %.not = icmp eq i64 %.0162, %i.bg               ; 2 uses
  br i1 %.not, label %.loopexit180, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.idx.i.i.i.i = mul nuw nsw i64 %.0162, 12
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i ; 13 uses
  %i.df = add nuw nsw i64 %.0162, 1               ; 4 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = lshr exact i64 %i.dg, 2
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = and i64 %i.di, 3                        ; 2 uses
  %i.dk = call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.df) ; 10 uses
  %i.dl = sub nsw i64 %i.df, %i.dk                ; 2 uses
  %i.dm = sdiv i64 %i.dl, 4                       ; 2 uses
  %i.dn = shl nsw i64 %i.dm, 2                    ; 2 uses
  %i.do = or disjoint i64 %i.dn, %i.dk            ; 6 uses
  %.not164 = icmp eq i64 %i.dj, 0
  br i1 %.not164, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check244 = icmp samesign ult i64 %i.dk, 2
  br i1 %min.iters.check244, label %.lr.ph.i.i.i.i.i.i.i.preheader257, label %vector.memcheck234

vector.memcheck234:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %bound0240 = icmp ult ptr %i.de, %scevgep239
  %bound1241 = icmp ult ptr %i.bh, %scevgep237
  %found.conflict242 = and i1 %bound0240, %bound1241
  br i1 %found.conflict242, label %.lr.ph.i.i.i.i.i.i.i.preheader257, label %vector.body247

vector.body247:                                   ; preds = %vector.memcheck234
  %n.vec246 = and i64 %i.dk, 2                    ; 2 uses
  %wide.load249 = load <2 x float>, ptr %i.de, align 4, !tbaa !12, !alias.scope !813, !noalias !816
  %wide.load250 = load <2 x float>, ptr %i.bh, align 4, !tbaa !12, !alias.scope !816
  store <2 x float> %wide.load250, ptr %i.de, align 4, !tbaa !12, !alias.scope !813, !noalias !816
  store <2 x float> %wide.load249, ptr %i.bh, align 4, !tbaa !12, !alias.scope !816
  %cmp.n253 = icmp eq i64 %i.dk, %n.vec246
  br i1 %cmp.n253, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader257

.lr.ph.i.i.i.i.i.i.i.preheader257:                ; preds = %vector.memcheck234, %.lr.ph.i.i.i.i.i.i.i.preheader, %vector.body247
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck234 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec246, %vector.body247 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.dk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader257
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dr = load float, ptr %i.dp, align 4, !tbaa !12
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !12
  store float %i.ds, ptr %i.dp, align 4, !tbaa !12
  store float %i.dr, ptr %i.dq, align 4, !tbaa !12
  %i.dt = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader257
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader257 ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.du = icmp eq i64 %i.dk, %.neg
  br i1 %i.du, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dx = load float, ptr %i.dv, align 4, !tbaa !12
  %i.dy = load float, ptr %i.dw, align 4, !tbaa !12
  store float %i.dy, ptr %i.dv, align 4, !tbaa !12
  store float %i.dx, ptr %i.dw, align 4, !tbaa !12
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dz ; 2 uses
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !12
  %i.ed = load float, ptr %i.eb, align 4, !tbaa !12
  store float %i.ed, ptr %i.ea, align 4, !tbaa !12
  store float %i.ec, ptr %i.eb, align 4, !tbaa !12
  %i.ee = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ee, %i.dk
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !818

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %vector.body247, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ef = icmp sgt i64 %i.dl, 3
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %.not159 = icmp sgt i64 %i.do, %.0162
  br i1 %.not159, label %.loopexit180, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eg = or disjoint i64 %i.dk, %i.dn
  %i.eh = sub i64 %i.df, %i.eg                    ; 3 uses
  %min.iters.check221 = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check221, label %.lr.ph.i17.i.i.i.i.i.i.preheader256, label %vector.memcheck211

vector.memcheck211:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ei = shl i64 %i.dm, 4
  %i.ej = or disjoint i64 %i.ei, %i.cm            ; 2 uses
  %scevgep212 = getelementptr i8, ptr %i.de, i64 %i.ej
  %scevgep215 = getelementptr i8, ptr %scevgep214, i64 %i.ej
  %bound0217 = icmp ult ptr %scevgep212, %scevgep216
  %bound1218 = icmp ult ptr %scevgep215, %scevgep213
  %found.conflict219 = and i1 %bound0217, %bound1218
  br i1 %found.conflict219, label %.lr.ph.i17.i.i.i.i.i.i.preheader256, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck211
  %n.vec223 = and i64 %i.eh, -8                   ; 3 uses
  %i.ek = add i64 %i.do, %n.vec223
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next230, %vector.body224 ] ; 2 uses
  %i.el = add i64 %i.do, %index225                ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.el ; 3 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.el ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %wide.load226 = load <4 x float>, ptr %i.em, align 4, !tbaa !12, !alias.scope !819, !noalias !822
  %wide.load227 = load <4 x float>, ptr %i.eo, align 4, !tbaa !12, !alias.scope !819, !noalias !822
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load228 = load <4 x float>, ptr %i.en, align 4, !tbaa !12, !alias.scope !822
  %wide.load229 = load <4 x float>, ptr %i.ep, align 4, !tbaa !12, !alias.scope !822
  store <4 x float> %wide.load228, ptr %i.em, align 4, !tbaa !12, !alias.scope !819, !noalias !822
  store <4 x float> %wide.load229, ptr %i.eo, align 4, !tbaa !12, !alias.scope !819, !noalias !822
  store <4 x float> %wide.load226, ptr %i.en, align 4, !tbaa !12, !alias.scope !822
  store <4 x float> %wide.load227, ptr %i.ep, align 4, !tbaa !12, !alias.scope !822
  %index.next230 = add nuw i64 %index225, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.eq, label %middle.block231, label %vector.body224, !llvm.loop !824

middle.block231:                                  ; preds = %vector.body224
  %cmp.n232 = icmp eq i64 %i.eh, %n.vec223
  br i1 %cmp.n232, label %.loopexit180, label %.lr.ph.i17.i.i.i.i.i.i.preheader256

.lr.ph.i17.i.i.i.i.i.i.preheader256:              ; preds = %vector.memcheck211, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block231
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.do, %vector.memcheck211 ], [ %i.do, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ek, %middle.block231 ] ; 6 uses
  %i.er = sub i64 %i.df, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter265 = and i64 %i.er, 1
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader256
  %i.es = getelementptr inbounds [4 x i8], ptr %i.de, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.eu = load float, ptr %i.es, align 4, !tbaa !12
  %i.ev = load float, ptr %i.et, align 4, !tbaa !12
  store float %i.ev, ptr %i.es, align 4, !tbaa !12
  store float %i.eu, ptr %i.et, align 4, !tbaa !12
  %i.ew = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader256
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader256 ], [ %i.ew, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ex = icmp eq i64 %.0162, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.ex, label %.loopexit180, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.fh, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.de, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fa = load float, ptr %i.ey, align 4, !tbaa !12
  %i.fb = load float, ptr %i.ez, align 4, !tbaa !12
  store float %i.fb, ptr %i.ey, align 4, !tbaa !12
  store float %i.fa, ptr %i.ez, align 4, !tbaa !12
  %i.fc = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 3 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.fc ; 2 uses
  %i.ff = load float, ptr %i.fd, align 4, !tbaa !12
  %i.fg = load float, ptr %i.fe, align 4, !tbaa !12
  store float %i.fg, ptr %i.fd, align 4, !tbaa !12
  store float %i.ff, ptr %i.fe, align 4, !tbaa !12
  %i.fh = add nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.fc, %.0162
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %.loopexit180, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !825

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i.i ], [ %i.dk, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.fj = load <4 x float>, ptr %i.fi, align 4, !tbaa !14
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.fl = load <4 x float>, ptr %i.fk, align 16, !tbaa !14
  store <4 x float> %i.fl, ptr %i.fi, align 4, !tbaa !14
  store <4 x float> %i.fj, ptr %i.fk, align 16, !tbaa !14
  %i.fm = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.fn = icmp slt i64 %i.fm, %i.do
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !826

.loopexit180:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block231, %bb.b, %._crit_edge.i.i.i.i.i.i
  %i.fo = getelementptr [4 x i8], ptr %0, i64 %.0162 ; 3 uses
end_hunk_3
