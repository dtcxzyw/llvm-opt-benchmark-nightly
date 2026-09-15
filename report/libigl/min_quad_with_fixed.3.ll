Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.3?download=true
inline.NumInlined: 35270
inline.NumDeleted: 18986
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 103
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
