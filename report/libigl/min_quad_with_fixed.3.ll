Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.3?download=true
inline.NumInlined: 35270
inline.NumDeleted: 18986
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZN3igl19min_quad_with_fixedIdLi4ELi2ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_:bb.a
  %i.hc = shl i64 %i.gu, 4
  %i.hd = getelementptr i8, ptr %i.gv, i64 %i.gz
  %i.he = getelementptr i8, ptr %i.gw, i64 %i.ha
  %i.hf = getelementptr i8, ptr %i.gx, i64 %i.hb
  %i.hg = getelementptr i8, ptr %i.gy, i64 %i.hc
  %i.hh = load double, ptr %i.hd, align 16, !tbaa !11
  %i.hi = load double, ptr %i.he, align 8, !tbaa !11
  %i.hj = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.hi, i64 1
  %i.hl = load double, ptr %i.hf, align 16, !tbaa !11
  %i.hm = load double, ptr %i.hg, align 8, !tbaa !11
  %i.hn = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hm, i64 1
  %i.hp = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hk)
  %i.hq = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ho)
  %i.hr = fcmp ogt <2 x double> %i.hp, %broadcast.splat
  %i.hs = fcmp ogt <2 x double> %i.hq, %broadcast.splat
  %i.ht = zext <2 x i1> %i.hr to <2 x i64>
  %i.hu = zext <2 x i1> %i.hs to <2 x i64>
  %i.hv = add <2 x i64> %vec.phi, %i.ht           ; 2 uses
  %i.hw = add <2 x i64> %vec.phi114, %i.hu        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !359

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.hw, %i.hv
  %i.hy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gq, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.i.i, label %.lr.ph.i.i.i.preheader115

.lr.ph.i.i.i.preheader115:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.hy, %middle.block ]
  br label %.lr.ph.i.i.i

_ZN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEC2INS_5SolveINS_31CompleteOrthogonalDecompositionINS0_IdLi2ELi2ELi0ELi2ELi2EEEEENS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKS1_EEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.aj, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49.i.i
  %i.hz = extractelement <2 x double> %i.fu, i64 0
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr %7, ptr %11, align 8, !tbaa !100, !alias.scope !362
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi2ELi1ELi0ELi2ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(9) %11, ptr noundef nonnull align 16 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ic = load i8, ptr %3, align 1, !tbaa !13, !range !14, !noundef !15 ; 3 uses
  %i.id = trunc nuw i8 %i.ic to i1                ; 4 uses
  %i.ie = load double, ptr %9, align 16
  %.sink = select i1 %i.id, double %i.hz, double %i.ie
  %not. = xor i1 %i.id, true
  %.141 = zext i1 %not. to i32
  store double %.sink, ptr %0, align 16, !tbaa !11
  %i.if = load i8, ptr %i.db, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.ig = trunc nuw i8 %i.if to i1                ; 2 uses
  %i.ih = zext nneg i8 %i.ic to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ih
  %.sroa.sel.idx = select i1 %i.id, i64 0, i64 8
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.sel.idx
  %i.ij = select i1 %i.id, i32 1, i32 2
  %.sink77.in = select i1 %i.ig, ptr %i.ii, ptr %.sroa.sel
  %.141.1 = select i1 %i.ig, i32 %.141, i32 %i.ij ; 2 uses
  %narrow = add nuw nsw i8 %i.ic, %i.if           ; 2 uses
  %.sink77 = load double, ptr %.sink77.in, align 8, !tbaa !11
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sink77, ptr %i.ik, align 8, !tbaa !11
  %i.il = load i8, ptr %i.ib, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.im = trunc nuw i8 %i.il to i1                ; 2 uses
  %i.in = zext nneg i8 %narrow to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.in
  %i.ip = zext nneg i32 %.141.1 to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ip
  %.sink78.in = select i1 %i.im, ptr %i.io, ptr %i.iq
  %not.112 = xor i1 %i.im, true
  %i.ir = zext i1 %not.112 to i32
  %.141.2 = add nuw nsw i32 %.141.1, %i.ir
  %narrow113 = add nuw nsw i8 %narrow, %i.il
  %.1.2 = zext nneg i8 %narrow113 to i32
  %.sink78 = load double, ptr %.sink78.in, align 8, !tbaa !11
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink78, ptr %i.is, align 16, !tbaa !11
  %i.it = load i8, ptr %i.ia, align 1, !tbaa !13, !range !14, !noundef !15
  %i.iu = trunc nuw i8 %i.it to i1                ; 2 uses
  %.1.2.sink = select i1 %i.iu, i32 %.1.2, i32 %.141.2
  %.sink108 = select i1 %i.iu, ptr %8, ptr %9
  %i.iv = zext nneg i32 %.1.2.sink to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.sink108, i64 %i.iv
  %.sink79 = load double, ptr %i.iw, align 8, !tbaa !11
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sink79, ptr %i.ix, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(416) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Block.89", align 8   ; 10 uses
  %2 = alloca %"class.Eigen::Transpose.793", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load double, ptr %i.a, align 16, !tbaa !101
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.e = load i8, ptr %i.d, align 1, !tbaa !41, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CD0000000000000
  %i.j = fmul double %i.c, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.l = load i64, ptr %i.k, align 8, !tbaa !102  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader225, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi181 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 5
  %i.v = shl i64 %i.n, 5
  %i.w = shl i64 %i.o, 5
  %i.x = shl i64 %i.p, 5
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 16, !tbaa !11
  %i.ad = load double, ptr %i.z, align 8, !tbaa !11
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 16, !tbaa !11
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi181, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !363

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit, label %.lr.ph.i.preheader225

.lr.ph.i.preheader225:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader225, %.lr.ph.i
  %.09.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader225 ] ; 3 uses
  %.078.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader225 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i
  %.idx.i.i = shl i64 %.09.i, 5
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add nuw nsw i64 %.078.i, %i.az          ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit, label %.lr.ph.i, !llvm.loop !364

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa180 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i ] ; 18 uses
  %i.bc = icmp samesign ult i64 %.lcssa180, 4
  br i1 %i.bc, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread, label %.loopexit

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bf = add nsw i64 %.lcssa180, -1              ; 4 uses
  %.not166 = icmp eq i64 %.lcssa180, 0
  br i1 %.not166, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread
  %.idx.i.i.i.i30 = shl i64 %i.bf, 5              ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i30 ; 11 uses
  %i.bh = sub nuw nsw i64 4, %.lcssa180
  %i.bi = sub nuw nsw i64 5, %.lcssa180
  %.not161 = icmp eq i64 %.lcssa180, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.idx.i.i.i.i.i33 = shl nuw nsw i64 %.lcssa180, 5
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.1292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bp = shl nuw nsw i64 %.lcssa180, 3
  %scevgep183 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %i.bq = mul nuw i64 %.lcssa180, 40
  %i.br = add nsw i64 %i.bq, -32                  ; 3 uses
  %scevgep203 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %i.bs = getelementptr i8, ptr %0, i64 %i.br
  %i.bt = getelementptr i8, ptr %0, i64 %i.br
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.lcssa180, 3
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.lcssa180, 2
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.lcssa180, 3
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.lcssa180, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 7 uses
  %.0165 = phi i64 [ %i.bf, %.lr.ph ], [ %i.gg, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 21 uses
  %i.bu = shl i64 %.0165, 5
  %scevgep200 = getelementptr i8, ptr %0, i64 %i.bu
  %i.bv = sub i64 %.lcssa180, %indvar
  %i.bw = shl i64 %i.bv, 3
  %i.bx = and i64 %i.bw, -16                      ; 2 uses
  %scevgep201 = getelementptr i8, ptr %scevgep200, i64 %i.bx
  %i.by = mul i64 %indvar, -40
  %scevgep202 = getelementptr i8, ptr %i.bs, i64 %i.by
  %scevgep204 = getelementptr i8, ptr %scevgep203, i64 %i.bx
  %i.bz = shl i64 %indvar, 3
  %i.ca = sub i64 %i.br, %i.bz
  %scevgep205 = getelementptr i8, ptr %0, i64 %i.ca
  %i.cb = mul i64 %indvar, -8                     ; 2 uses
  %scevgep185 = getelementptr i8, ptr %i.bt, i64 %i.cb
  %.not = icmp eq i64 %.0165, %i.bf               ; 3 uses
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %.0165, 5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i ; 5 uses
  %i.cd = add nuw nsw i64 %.0165, 1               ; 4 uses
  %i.ce = and i64 %i.cd, 9223372036854775806      ; 5 uses
  %.not159 = icmp eq i64 %.0165, 0
  br i1 %.not159, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %.not160 = icmp sgt i64 %i.ce, %.0165
  br i1 %.not160, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cf = and i64 %i.cd, -9223372036854775807     ; 2 uses
  %min.iters.check210 = icmp ult i64 %i.cf, 4
  br i1 %min.iters.check210, label %.lr.ph.i17.i.i.i.i.i.i.preheader224, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %bound0206 = icmp ult ptr %scevgep201, %scevgep205
  %bound1207 = icmp ult ptr %scevgep204, %scevgep202
  %found.conflict208 = and i1 %bound0206, %bound1207
  br i1 %found.conflict208, label %.lr.ph.i17.i.i.i.i.i.i.preheader224, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck199
  %n.vec212 = and i64 %i.cd, -9223372036854775808 ; 2 uses
  %i.cg = and i64 %i.cd, -2
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph211
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next219, %vector.body213 ] ; 2 uses
  %i.ch = add nuw i64 %i.ce, %index214            ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ch ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.ci, align 16, !tbaa !11, !alias.scope !380, !noalias !381
  %wide.load216 = load <2 x double>, ptr %i.ck, align 16, !tbaa !11, !alias.scope !380, !noalias !381
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load217 = load <2 x double>, ptr %i.cj, align 16, !tbaa !11, !alias.scope !381
  %wide.load218 = load <2 x double>, ptr %i.cl, align 16, !tbaa !11, !alias.scope !381
  store <2 x double> %wide.load217, ptr %i.ci, align 16, !tbaa !11, !alias.scope !380, !noalias !381
  store <2 x double> %wide.load218, ptr %i.ck, align 16, !tbaa !11, !alias.scope !380, !noalias !381
  store <2 x double> %wide.load215, ptr %i.cj, align 16, !tbaa !11, !alias.scope !381
  store <2 x double> %wide.load216, ptr %i.cl, align 16, !tbaa !11, !alias.scope !381
  %index.next219 = add nuw i64 %index214, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.cm, label %middle.block220, label %vector.body213, !llvm.loop !368

middle.block220:                                  ; preds = %vector.body213
  %cmp.n221 = icmp eq i64 %i.cf, %n.vec212
  br i1 %cmp.n221, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader224

.lr.ph.i17.i.i.i.i.i.i.preheader224:              ; preds = %vector.memcheck199, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block220
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.ce, %vector.memcheck199 ], [ %i.ce, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block220 ] ; 5 uses
  %i.cn = and i64 %.0165, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i17.i.i.i.i.i.i.prol, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader224
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cq = load double, ptr %i.co, align 16, !tbaa !11
  %i.cr = load double, ptr %i.cp, align 16, !tbaa !11
  store double %i.cr, ptr %i.co, align 16, !tbaa !11
  store double %i.cq, ptr %i.cp, align 16, !tbaa !11
  %i.cs = or disjoint i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader224
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader224 ], [ %i.cs, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ct = icmp eq i64 %.0165, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.ct, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dd, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cw = load double, ptr %i.cu, align 8, !tbaa !11
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !11
  store double %i.cx, ptr %i.cu, align 8, !tbaa !11
  store double %i.cw, ptr %i.cv, align 8, !tbaa !11
  %i.cy = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cy ; 2 uses
  %i.db = load double, ptr %i.cz, align 8, !tbaa !11
  %i.dc = load double, ptr %i.da, align 8, !tbaa !11
  store double %i.dc, ptr %i.cz, align 8, !tbaa !11
  store double %i.db, ptr %i.da, align 8, !tbaa !11
  %i.dd = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.cy, %.0165
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !369

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.df = load <2 x double>, ptr %i.de, align 16, !tbaa !9
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.dh = load <2 x double>, ptr %i.dg, align 16, !tbaa !9
  store <2 x double> %i.dh, ptr %i.de, align 16, !tbaa !9
  store <2 x double> %i.df, ptr %i.dg, align 16, !tbaa !9
  %i.di = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.dj = icmp samesign ult i64 %i.di, %i.ce
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !370

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block220, %._crit_edge.i.i.i.i.i.i, %bb.b
  %i.dk = getelementptr [8 x i8], ptr %0, i64 %.0165 ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 %.idx.i.i.i.i30 ; 7 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.0165 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 5 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !11 ; 2 uses
  %i.dp = fmul double %i.do, %i.do                ; 2 uses
  br i1 %.not161, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, %.lr.ph.i.i.i.i.i.i31
  %.01725.i.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i31 ], [ 1, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 3 uses
  %.02324.i.i.i.i.i.i = phi double [ %i.dt, %.lr.ph.i.i.i.i.i.i31 ], [ %i.dp, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ]
  %.idx.i.i.i.i.i.i.i.i.i = shl i64 %.01725.i.i.i.i.i.i, 5
  %i.dq = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !11 ; 2 uses
  %i.ds = fmul double %i.dr, %i.dr
  %i.dt = fadd double %.02324.i.i.i.i.i.i, %i.ds  ; 2 uses
  %i.du = add nuw nsw i64 %.01725.i.i.i.i.i.i, 1
  %i.dv = xor i64 %.01725.i.i.i.i.i.i, %.lcssa180
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.dv, 3
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31, !llvm.loop !371

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i31, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.dw = phi double [ %i.dp, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %i.dt, %.lr.ph.i.i.i.i.i.i31 ] ; 2 uses
  %i.dx = load double, ptr %i.dl, align 8, !tbaa !11 ; 8 uses
  %i.dy = fcmp ugt double %i.dw, f0x0010000000000000
  br i1 %i.dy, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  store double 0.000000e+00, ptr %i.dm, align 8, !tbaa !11
  store double 0.000000e+00, ptr %i.dn, align 8, !tbaa !11
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store double 0.000000e+00, ptr %i.dz, align 8, !tbaa !11
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store double 0.000000e+00, ptr %i.ea, align 8, !tbaa !11
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit

.critedge.i.i:                                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  %i.eb = fmul double %i.dx, %i.dx
  %i.ec = fadd double %i.dw, %i.eb
  %i.ed = call double @sqrt(double noundef %i.ec) #14 ; 2 uses
  %i.ee = fcmp ult double %i.dx, 0.000000e+00
  %i.ef = fneg double %i.ed
  %storemerge.i.i = select i1 %i.ee, double %i.ed, double %i.ef ; 4 uses
  %i.eg = fsub double %i.dx, %storemerge.i.i      ; 3 uses
  %i.eh = load double, ptr %i.dn, align 8, !tbaa !11
  %i.ei = fdiv double %i.eh, %i.eg
  store double %i.ei, ptr %i.dn, align 8, !tbaa !11
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1:                 ; preds = %.critedge.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !11
  %i.el = fdiv double %i.ek, %i.eg
  store double %i.el, ptr %i.ej, align 8, !tbaa !11
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 96 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = fdiv double %i.en, %i.eg
  store double %i.eo, ptr %i.em, align 8, !tbaa !11
  br label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1, %.critedge.i.i
  %i.ep = fsub double %storemerge.i.i, %i.dx
  %i.eq = fdiv double %i.ep, %storemerge.i.i
  store double %i.eq, ptr %i.dm, align 8, !tbaa !11
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i
  %.0156 = phi double [ %storemerge.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store double %.0156, ptr %i.dl, align 8, !tbaa !11
  %.not29 = icmp eq i64 %.0165, 0
  br i1 %.not29, label %bb.c, label %.thread
end_hunk_0
begin_hunk_1_@_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_:bb.a
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !11
  %i.gf = fdiv double %i.ge, %i.db
  store double %i.gf, ptr %i.gc, align 8, !tbaa !11
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !11
  %i.gk = fdiv double %i.gj, %i.db
  store double %i.gk, ptr %i.gh, align 8, !tbaa !11
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gl, %i.de
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi4ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !465

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !9
  %i.gp = fdiv <2 x double> %i.go, %i.ey
  store <2 x double> %i.gp, ptr %i.gm, align 16, !tbaa !9
  %i.gq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dn
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !466

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi4ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block52, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.gs = load double, ptr %3, align 8, !tbaa !11 ; 2 uses
  %i.gt = fsub double %i.gs, %i.br
  %i.gu = fdiv double %i.gt, %i.gs
  store double %i.gu, ptr %2, align 8, !tbaa !11
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi4ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !489, !nonnull !15, !align !151 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !152 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !151
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !143  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !490, !noalias !491 ; 3 uses
  %i.r = shl i64 %i.g, 5
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -32  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 5
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !11, !alias.scope !492
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 16, !tbaa !11, !alias.scope !493
  %wide.load70 = load <2 x double>, ptr %i.ab, align 16, !tbaa !11, !alias.scope !493
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !11, !alias.scope !494, !noalias !495
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !11, !alias.scope !494, !noalias !495
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !11, !alias.scope !494, !noalias !495
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !11, !alias.scope !494, !noalias !495
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !473

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !11
  %i.al = load double, ptr %i.x, align 8, !tbaa !11
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !11
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !474

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = load double, ptr %i.x, align 8, !tbaa !11
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !11
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !11
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = load double, ptr %i.x, align 8, !tbaa !11
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !11
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !475

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ek, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = shl i64 %.03453, 5
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !496, !nonnull !15, !align !152 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !490, !noalias !497
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !498, !nonnull !15, !align !151
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !143
  %.idx.i.i.i = shl i64 %.03453, 5
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 16, !tbaa !11
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !11
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !11
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !11
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 5
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !498, !nonnull !15, !align !151
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !143 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 5              ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !496, !nonnull !15, !align !152 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !490, !noalias !499 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !11, !alias.scope !500
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !11, !alias.scope !501
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !11, !alias.scope !501
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !11, !alias.scope !502, !noalias !503
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !11, !alias.scope !502, !noalias !503
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !11, !alias.scope !502, !noalias !503
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !11, !alias.scope !502, !noalias !503
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !484

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !498, !nonnull !15, !align !151
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !143
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !496, !nonnull !15, !align !152 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !153
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !9
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !135
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !9
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !9
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !485

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !486

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !11
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !11
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !11
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !487

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.1045", align 16 ; 17 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %"struct.Eigen::internal::evaluator.572", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1054", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.945", align 8 ; 11 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.955", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.959", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Map.884", align 8   ; 8 uses
  %13 = alloca %"class.Eigen::Block.486", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double 1.000000e+00, %i.e           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %0, align 8, !tbaa !106    ; 8 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = load i64, ptr %i.g, align 8, !tbaa !107  ; 10 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph54.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i
  %min.iters.check155 = icmp ult i64 %i.k, 4
  br i1 %min.iters.check155, label %.preheader.i.i.i.i.i.i.i.preheader183, label %vector.ph156

vector.ph156:                                     ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %n.vec157 = and i64 %i.k, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert158 = insertelement <2 x double> poison, double %i.f, i64 0
end_hunk_1
begin_hunk_2_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEEvRKT_RKdPd:bb.a
_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.af, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa ]
  %lcmp.mod168 = icmp ne i64 %xtraiter166, 0
  call void @llvm.assume(i1 %lcmp.mod168)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.epil = phi i64 [ %i.om, %.preheader.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.epil = shl i64 %.0810.i.i.i.i.i.i.i.epil, 5
  %i.oj = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !11
  %i.ol = fmul double %i.f, %i.ok
  store double %i.ol, ptr %i.oj, align 8, !tbaa !11
  %i.om = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter166
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !707

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa, %.preheader.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.c, %bb.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !748, !nonnull !15, !align !151 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !152 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !151
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !206  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !210, !noalias !749 ; 3 uses
  %i.r = shl i64 %i.g, 5
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -32  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 5
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !11, !alias.scope !750
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 16, !tbaa !11, !alias.scope !751
  %wide.load70 = load <2 x double>, ptr %i.ab, align 16, !tbaa !11, !alias.scope !751
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !11, !alias.scope !752, !noalias !753
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !11, !alias.scope !752, !noalias !753
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !11, !alias.scope !752, !noalias !753
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !11, !alias.scope !752, !noalias !753
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !732

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !11
  %i.al = load double, ptr %i.x, align 8, !tbaa !11
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !11
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %.preheader.i, !llvm.loop !733

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = load double, ptr %i.x, align 8, !tbaa !11
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !11
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !11
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = load double, ptr %i.x, align 8, !tbaa !11
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !11
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !734

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ek, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = shl i64 %.03453, 5
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !754, !nonnull !15, !align !152 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !210, !noalias !755
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !756, !nonnull !15, !align !151
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !206
  %.idx.i.i.i = shl i64 %.03453, 5
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 16, !tbaa !11
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !11
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !11
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !11
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 5
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !756, !nonnull !15, !align !151
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !206 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 5              ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !754, !nonnull !15, !align !152 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !210, !noalias !757 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !11, !alias.scope !758
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !11, !alias.scope !759
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !11, !alias.scope !759
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !11, !alias.scope !760, !noalias !761
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !11, !alias.scope !760, !noalias !761
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !11, !alias.scope !760, !noalias !761
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !11, !alias.scope !760, !noalias !761
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !743

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !756, !nonnull !15, !align !151
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !206
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !754, !nonnull !15, !align !152 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !153
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !9
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !200
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !9
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !9
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !744

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %bb.c, !llvm.loop !745

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !11
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !11
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !11
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !746

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS2_INS3_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !212
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !195    ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #17 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !212
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.d
end_hunk_2
begin_hunk_3_@_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_:bb.a
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !11
  %i.ga = fdiv double %i.fz, %i.db
  store double %i.ga, ptr %i.fx, align 8, !tbaa !11
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !11
  %i.gf = fdiv double %i.ge, %i.db
  store double %i.gf, ptr %i.gc, align 8, !tbaa !11
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !11
  %i.gk = fdiv double %i.gj, %i.db
  store double %i.gk, ptr %i.gh, align 8, !tbaa !11
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gl, %i.de
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !894

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !9
  %i.gp = fdiv <2 x double> %i.go, %i.ey
  store <2 x double> %i.gp, ptr %i.gm, align 16, !tbaa !9
  %i.gq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dn
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !895

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block52, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.gs = load double, ptr %3, align 8, !tbaa !11 ; 2 uses
  %i.gt = fsub double %i.gs, %i.br
  %i.gu = fdiv double %i.gt, %i.gs
  store double %i.gu, ptr %2, align 8, !tbaa !11
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !918, !nonnull !15, !align !151 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !230
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !151 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !151
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !919, !noalias !920 ; 3 uses
  %i.r = mul i64 %i.g, 24
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -24  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = mul i64 %.0810.i, 24
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !11, !alias.scope !921
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 8, !tbaa !11, !alias.scope !922
  %wide.load70 = load <2 x double>, ptr %i.ab, align 8, !tbaa !11, !alias.scope !922
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !11, !alias.scope !923, !noalias !924
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !11, !alias.scope !923, !noalias !924
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !11, !alias.scope !923, !noalias !924
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !11, !alias.scope !923, !noalias !924
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !902

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !11
  %i.al = load double, ptr %i.x, align 8, !tbaa !11
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !11
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !903

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = load double, ptr %i.x, align 8, !tbaa !11
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !11
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !11
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = load double, ptr %i.x, align 8, !tbaa !11
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !11
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !904

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.el, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = mul i64 %.03453, 24
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !925, !nonnull !15, !align !151 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !919, !noalias !926
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !927, !nonnull !15, !align !151
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !245
  %.idx.i.i.i = mul i64 %.03453, 24
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 8, !tbaa !11
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !11
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !11
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !11
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = mul i64 %.03453, 24
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !927, !nonnull !15, !align !151
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !245 ; 3 uses
  %.idx.i.i.i38 = mul i64 %.03453, 24             ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !925, !nonnull !15, !align !151 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !919, !noalias !928 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !11, !alias.scope !929
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !11, !alias.scope !930
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !11, !alias.scope !930
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !11, !alias.scope !931, !noalias !932
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !11, !alias.scope !931, !noalias !932
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !11, !alias.scope !931, !noalias !932
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !11, !alias.scope !931, !noalias !932
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !913

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !927, !nonnull !15, !align !151
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !245
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !925, !nonnull !15, !align !151 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !251
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !9
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !237
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !9
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !9
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !914

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = add nsw i64 %.03552, 1
  %i.ek = srem i64 %i.ej, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ek)
  %i.el = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.el, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !915

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.et, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.eo = load double, ptr %i.en, align 8, !tbaa !11
  %i.ep = load double, ptr %i.cs, align 8, !tbaa !11
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = load double, ptr %i.em, align 8, !tbaa !11
  %i.es = fsub double %i.er, %i.eq
  store double %i.es, ptr %i.em, align 8, !tbaa !11
  %i.et = add nsw i64 %.050, 1                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.bj
  br i1 %i.eu, label %scalar.ph86, label %._crit_edge, !llvm.loop !916

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.3318", align 8 ; 18 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.2846", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3327", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.3218", align 8 ; 11 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.3228", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3232", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Map.3157", align 8  ; 8 uses
  %13 = alloca %"class.Eigen::Block.2747", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %0, align 8, !tbaa !218    ; 8 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !107  ; 10 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph54.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i
  %min.iters.check154 = icmp ult i64 %i.j, 4
  br i1 %min.iters.check154, label %.preheader.i.i.i.i.i.i.i.preheader182, label %vector.ph155

vector.ph155:                                     ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %n.vec156 = and i64 %i.j, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert157 = insertelement <2 x double> poison, double %i.e, i64 0
end_hunk_3
begin_hunk_4_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEEvRKT_RKdPd:bb.a

._crit_edge.i.i.i.i.i.i.epil:                     ; preds = %._crit_edge.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.epil.preheader
  %.03453.i.i.i.i.i.i.epil = phi i64 [ %i.ot, %._crit_edge.i.i.i.i.i.i.epil ], [ %.03453.i.i.i.i.i.i.epil.init, %._crit_edge.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter171 = phi i64 [ %epil.iter171.next, %._crit_edge.i.i.i.i.i.i.epil ], [ 0, %._crit_edge.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i38.i.i.i.i.i.i.epil = mul i64 %.03453.i.i.i.i.i.i.epil, 24
  %i.oq = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i.epil ; 2 uses
  %i.or = load double, ptr %i.oq, align 8, !tbaa !11
  %i.os = fmul double %i.e, %i.or
  store double %i.os, ptr %i.oq, align 8, !tbaa !11
  %i.ot = add nuw nsw i64 %.03453.i.i.i.i.i.i.epil, 1
  %epil.iter171.next = add i64 %epil.iter171, 1   ; 2 uses
  %epil.iter171.cmp.not = icmp eq i64 %epil.iter171.next, %xtraiter170
  br i1 %epil.iter171.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil, !llvm.loop !1136

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit136.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit136.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ae, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit136.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter165, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.epil = phi i64 [ %i.ox, %.preheader.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.epil = mul i64 %.0810.i.i.i.i.i.i.i.epil, 24
  %i.ou = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !11
  %i.ow = fmul double %i.e, %i.ov
  store double %i.ow, ptr %i.ou, align 8, !tbaa !11
  %i.ox = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter165
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !1137

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit136.unr-lcssa, %.preheader.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.c, %bb.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1178, !nonnull !15, !align !151 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !292
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !151 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !151
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !294  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !210, !noalias !1179 ; 3 uses
  %i.r = mul i64 %i.g, 24
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -24  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = mul i64 %.0810.i, 24
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !11, !alias.scope !1180
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 8, !tbaa !11, !alias.scope !1181
  %wide.load70 = load <2 x double>, ptr %i.ab, align 8, !tbaa !11, !alias.scope !1181
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !11, !alias.scope !1182, !noalias !1183
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !11, !alias.scope !1182, !noalias !1183
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !11, !alias.scope !1182, !noalias !1183
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !11, !alias.scope !1182, !noalias !1183
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1162

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !11
  %i.al = load double, ptr %i.x, align 8, !tbaa !11
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !11
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %.preheader.i, !llvm.loop !1163

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = load double, ptr %i.x, align 8, !tbaa !11
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !11
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !11
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = load double, ptr %i.x, align 8, !tbaa !11
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !11
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1164

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.el, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = mul i64 %.03453, 24
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !1184, !nonnull !15, !align !151 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !210, !noalias !1185
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1186, !nonnull !15, !align !151
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !294
  %.idx.i.i.i = mul i64 %.03453, 24
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 8, !tbaa !11
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !11
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !11
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !11
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = mul i64 %.03453, 24
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1186, !nonnull !15, !align !151
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !294 ; 3 uses
  %.idx.i.i.i38 = mul i64 %.03453, 24             ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !1184, !nonnull !15, !align !151 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !210, !noalias !1187 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !11, !alias.scope !1188
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !11, !alias.scope !1189
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !11, !alias.scope !1189
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !11, !alias.scope !1190, !noalias !1191
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !11, !alias.scope !1190, !noalias !1191
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !11, !alias.scope !1190, !noalias !1191
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !11, !alias.scope !1190, !noalias !1191
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1173

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1186, !nonnull !15, !align !151
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !294
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1184, !nonnull !15, !align !151 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !251
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !9
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !200
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !9
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !9
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1174

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = add nsw i64 %.03552, 1
  %i.ek = srem i64 %i.ej, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ek)
  %i.el = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.el, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %bb.c, !llvm.loop !1175

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.et, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.eo = load double, ptr %i.en, align 8, !tbaa !11
  %i.ep = load double, ptr %i.cs, align 8, !tbaa !11
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = load double, ptr %i.em, align 8, !tbaa !11
  %i.es = fsub double %i.er, %i.eq
  store double %i.es, ptr %i.em, align 8, !tbaa !11
  %i.et = add nsw i64 %.050, 1                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.bj
  br i1 %i.eu, label %scalar.ph86, label %._crit_edge, !llvm.loop !1176

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !212
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !290    ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #17 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !212
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

end_hunk_4
begin_hunk_5_@_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_:bb.a
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !11
  %i.ga = fdiv double %i.fz, %i.db
  store double %i.ga, ptr %i.fx, align 8, !tbaa !11
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !11
  %i.gf = fdiv double %i.ge, %i.db
  store double %i.gf, ptr %i.gc, align 8, !tbaa !11
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !11
  %i.gk = fdiv double %i.gj, %i.db
  store double %i.gk, ptr %i.gh, align 8, !tbaa !11
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gl, %i.de
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1277

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !9
  %i.gp = fdiv <2 x double> %i.go, %i.ey
  store <2 x double> %i.gp, ptr %i.gm, align 16, !tbaa !9
  %i.gq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dn
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1278

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block52, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.gs = load double, ptr %3, align 8, !tbaa !11 ; 2 uses
  %i.gt = fsub double %i.gs, %i.br
  %i.gu = fdiv double %i.gt, %i.gs
  store double %i.gu, ptr %2, align 8, !tbaa !11
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1301, !nonnull !15, !align !151 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !310
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !152 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !151
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !321  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !1302, !noalias !1303 ; 3 uses
  %i.r = shl i64 %i.g, 4
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -16  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 4
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !11, !alias.scope !1304
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 16, !tbaa !11, !alias.scope !1305
  %wide.load70 = load <2 x double>, ptr %i.ab, align 16, !tbaa !11, !alias.scope !1305
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !11, !alias.scope !1306, !noalias !1307
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !11, !alias.scope !1306, !noalias !1307
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !11, !alias.scope !1306, !noalias !1307
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !11, !alias.scope !1306, !noalias !1307
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1285

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !11
  %i.al = load double, ptr %i.x, align 8, !tbaa !11
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !11
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !1286

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = load double, ptr %i.x, align 8, !tbaa !11
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !11
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !11
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = load double, ptr %i.x, align 8, !tbaa !11
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !11
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1287

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ek, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = shl i64 %.03453, 4
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !1308, !nonnull !15, !align !152 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !1302, !noalias !1309
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1310, !nonnull !15, !align !151
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !321
  %.idx.i.i.i = shl i64 %.03453, 4
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 16, !tbaa !11
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !11
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !11
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !11
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 4
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1310, !nonnull !15, !align !151
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !321 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 4              ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !1308, !nonnull !15, !align !152 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !1302, !noalias !1311 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !11, !alias.scope !1312
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !11, !alias.scope !1313
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !11, !alias.scope !1313
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !11, !alias.scope !1314, !noalias !1315
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !11, !alias.scope !1314, !noalias !1315
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !11, !alias.scope !1314, !noalias !1315
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !11, !alias.scope !1314, !noalias !1315
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1296

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1310, !nonnull !15, !align !151
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !321
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1308, !nonnull !15, !align !152 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !325
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !9
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !314
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !9
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !9
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1297

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !1298

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !11
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !11
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !11
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1299

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi2ELi1ELi0ELi2ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.5913", align 2 ; 6 uses
  %4 = alloca %"class.Eigen::Block.5155", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Block.5177", align 8 ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.1127", align 8 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.4196", align 16 ; 7 uses
  %8 = alloca %"class.Eigen::TriangularView.5111", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.5124", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 16, !tbaa !97
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.e = load i8, ptr %i.d, align 1, !tbaa !96, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC0000000000000
  %i.j = fmul double %i.c, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98   ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi67 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd:bb.a

._crit_edge.i.i.i.i.i.i.epil:                     ; preds = %._crit_edge.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.epil.preheader
  %.03453.i.i.i.i.i.i.epil = phi i64 [ %i.oh, %._crit_edge.i.i.i.i.i.i.epil ], [ %.03453.i.i.i.i.i.i.epil.init, %._crit_edge.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter172 = phi i64 [ %epil.iter172.next, %._crit_edge.i.i.i.i.i.i.epil ], [ 0, %._crit_edge.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i38.i.i.i.i.i.i.epil = shl i64 %.03453.i.i.i.i.i.i.epil, 4
  %i.of = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i38.i.i.i.i.i.i.epil ; 2 uses
  %.pre64.epil = load double, ptr %i.of, align 8, !tbaa !11
  %i.og = fmul double %i.f, %.pre64.epil
  store double %i.og, ptr %i.of, align 8, !tbaa !11
  %i.oh = add nuw nsw i64 %.03453.i.i.i.i.i.i.epil, 1
  %epil.iter172.next = add i64 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i64 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil, !llvm.loop !1375

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.af, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa ]
  %lcmp.mod168 = icmp ne i64 %xtraiter166, 0
  call void @llvm.assume(i1 %lcmp.mod168)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.epil = phi i64 [ %i.ol, %.preheader.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.epil = shl i64 %.0810.i.i.i.i.i.i.i.epil, 4
  %i.oi = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !11
  %i.ok = fmul double %i.f, %i.oj
  store double %i.ok, ptr %i.oi, align 8, !tbaa !11
  %i.ol = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter166
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !1376

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa, %.preheader.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.c, %bb.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKNS5_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1417, !nonnull !15, !align !151 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKNS5_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !152 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKNS5_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !151
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !335  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !210, !noalias !1418 ; 3 uses
  %i.r = shl i64 %i.g, 4
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -16  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 4
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !11, !alias.scope !1419
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 16, !tbaa !11, !alias.scope !1420
  %wide.load70 = load <2 x double>, ptr %i.ab, align 16, !tbaa !11, !alias.scope !1420
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !11, !alias.scope !1421, !noalias !1422
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !11, !alias.scope !1421, !noalias !1422
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !11, !alias.scope !1421, !noalias !1422
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !11, !alias.scope !1421, !noalias !1422
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1401

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !11
  %i.al = load double, ptr %i.x, align 8, !tbaa !11
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !11
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKNS5_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %.preheader.i, !llvm.loop !1402

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = load double, ptr %i.x, align 8, !tbaa !11
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !11
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !11
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = load double, ptr %i.x, align 8, !tbaa !11
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !11
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1403

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKNS5_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ek, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = shl i64 %.03453, 4
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !1423, !nonnull !15, !align !152 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !210, !noalias !1424
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1425, !nonnull !15, !align !151
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !335
  %.idx.i.i.i = shl i64 %.03453, 4
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 16, !tbaa !11
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !11
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !11
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !11
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 4
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1425, !nonnull !15, !align !151
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !335 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 4              ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !1423, !nonnull !15, !align !152 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !210, !noalias !1426 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !11, !alias.scope !1427
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !11, !alias.scope !1428
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !11, !alias.scope !1428
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !11, !alias.scope !1429, !noalias !1430
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !11, !alias.scope !1429, !noalias !1430
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !11, !alias.scope !1429, !noalias !1430
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !11, !alias.scope !1429, !noalias !1430
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1412

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1425, !nonnull !15, !align !151
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !335
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1423, !nonnull !15, !align !152 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !325
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !9
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !200
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !9
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !9
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1413

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKNS5_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %bb.c, !llvm.loop !1414

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !11
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !11
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !11
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1415

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKNS5_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS2_INS3_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !212
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !331    ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #17 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !212
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.d
end_hunk_6
