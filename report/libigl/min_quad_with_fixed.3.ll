Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.3?download=true
inline.NumInlined: 35270
inline.NumDeleted: 18986
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdS3_Lb0ELi0EE3runEllRKS3_S6_Pdld:bb.a
  %i.gg = fadd <2 x double> %i.gf, %i.ge
  store <2 x double> %i.gg, ptr %i.gd, align 1, !tbaa !9
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !9
  %i.gj = fmul <2 x double> %i.l, %i.gy
  %i.gk = fadd <2 x double> %i.gj, %i.gi
  store <2 x double> %i.gk, ptr %i.gh, align 1, !tbaa !9
  %i.gl = add nsw i64 %.2, 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph447, %bb.h
  %.0183446 = phi i64 [ %.0188462, %.lr.ph447 ], [ %i.gz, %bb.h ] ; 3 uses
  %.0393445 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.gy, %bb.h ]
  %.0395444 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.gu, %bb.h ]
  %i.gm = getelementptr [8 x i8], ptr %i.ga, i64 %.0183446
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !11
  %i.go = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gq = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.gr = getelementptr [8 x i8], ptr %i.gb, i64 %i.gq
  %i.gs = load <2 x double>, ptr %i.gr, align 1, !tbaa !9
  %i.gt = fmul <2 x double> %i.gs, %i.gp
  %i.gu = fadd <2 x double> %.0395444, %i.gt      ; 2 uses
  %i.gv = getelementptr [8 x i8], ptr %i.gc, i64 %i.gq
  %i.gw = load <2 x double>, ptr %i.gv, align 1, !tbaa !9
  %i.gx = fmul <2 x double> %i.gw, %i.gp
  %i.gy = fadd <2 x double> %.0393445, %i.gx      ; 2 uses
  %i.gz = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.ha = icmp slt i64 %i.gz, %.sroa.speculated
  br i1 %i.ha, label %bb.h, label %._crit_edge448, !llvm.loop !785

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gl, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hb = icmp slt i64 %.3, %i.e
  br i1 %i.hb, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hc = load ptr, ptr %3, align 8, !tbaa !214
  %i.hd = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.he = getelementptr inbounds [8 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !9
  %i.hg = fmul <2 x double> %i.l, %i.hr
  %i.hh = fadd <2 x double> %i.hg, %i.hf
  store <2 x double> %i.hh, ptr %i.he, align 1, !tbaa !9
  %i.hi = add nsw i64 %.3, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.hs, %bb.j ] ; 3 uses
  %.0384451 = phi <2 x double> [ zeroinitializer, %.lr.ph453 ], [ %i.hr, %bb.j ]
  %i.hj = getelementptr [8 x i8], ptr %i.hc, i64 %.0182452
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !11
  %i.hl = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.ho = getelementptr [8 x i8], ptr %i.hd, i64 %i.hn
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !9
  %i.hq = fmul <2 x double> %i.hp, %i.hm
  %i.hr = fadd <2 x double> %.0384451, %i.hq      ; 2 uses
  %i.hs = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ht = icmp slt i64 %i.hs, %.sroa.speculated
  br i1 %i.ht, label %bb.j, label %._crit_edge454, !llvm.loop !786

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hi, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.hu = icmp slt i64 %.4, %0
  br i1 %i.hu, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.hv = load ptr, ptr %3, align 8, !tbaa !214
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.ia, %._crit_edge459 ] ; 3 uses
  %i.hw = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.hx = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !11
  %i.hz = tail call double @llvm.fmuladd.f64(double %6, double %i.ih, double %i.hy)
  store double %i.hz, ptr %i.hx, align 8, !tbaa !11
  %i.ia = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ia, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !787

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.ii, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.ih, %bb.l ]
  %i.ib = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.ic = getelementptr [8 x i8], ptr %i.hw, i64 %i.ib
  %i.id = getelementptr [8 x i8], ptr %i.hv, i64 %.0457
  %i.ie = load double, ptr %i.ic, align 8, !tbaa !11
  %i.if = load double, ptr %i.id, align 8, !tbaa !11
  %i.ig = fmul double %i.ie, %i.if
  %i.ih = fadd double %.0181456, %i.ig            ; 2 uses
  %i.ii = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.ij = icmp slt i64 %i.ii, %.sroa.speculated
  br i1 %i.ij, label %bb.l, label %._crit_edge459, !llvm.loop !788
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(296) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Block.2594", align 8 ; 10 uses
  %2 = alloca %"class.Eigen::Transpose.3066", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load double, ptr %i.a, align 8, !tbaa !215
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC8000000000000
  %i.j = fmul double %i.c, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load i64, ptr %i.k, align 8, !tbaa !216  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader230, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi176 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = mul i64 %index, 24
  %i.v = mul i64 %i.n, 24
  %i.w = mul i64 %i.o, 24
  %i.x = mul i64 %i.p, 24
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 8, !tbaa !11
  %i.ad = load double, ptr %i.z, align 8, !tbaa !11
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 8, !tbaa !11
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
  %i.ar = add <2 x i64> %vec.phi176, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !789

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i.preheader230

.lr.ph.i.preheader230:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader230, %.lr.ph.i
  %.09.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader230 ] ; 3 uses
  %.078.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader230 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i
  %.idx.i.i = mul i64 %.09.i, 24
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add nuw nsw i64 %.078.i, %i.az          ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i, !llvm.loop !790

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i ] ; 10 uses
  %i.bc = icmp samesign ult i64 %.lcssa, 3
  br i1 %i.bc, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread, label %.loopexit

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bf = add nsw i64 %.lcssa, -1                 ; 4 uses
  %.not164 = icmp eq i64 %.lcssa, 0
  br i1 %.not164, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread
  %.idx.i.i.i.i30 = mul i64 %i.bf, 24             ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i30 ; 15 uses
  %i.bh = xor i64 %.lcssa, 3                      ; 4 uses
  %i.bi = sub nuw nsw i64 4, %.lcssa
  %i.bj = icmp eq i64 %.lcssa, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.idx.i.i.i.i.i33 = mul nuw nsw i64 %.lcssa, 24
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.1292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bq = shl nuw nsw i64 %.lcssa, 5
  %i.br = add nsw i64 %i.bq, -24                  ; 4 uses
  %scevgep178 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %scevgep208 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %min.iters.check195 = icmp ult i64 %i.bh, 3
  %3 = sub nsw i64 2, %.lcssa
  %n.vec197 = and i64 %3, -2                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 5 uses
  %.0163 = phi i64 [ %i.bf, %.lr.ph ], [ %i.hf, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 18 uses
  %i.bs = shl i64 %indvar, 5
  %i.bt = sub i64 %i.br, %i.bs
  %scevgep207 = getelementptr i8, ptr %0, i64 %i.bt
  %i.bu = shl i64 %indvar, 3
  %i.bv = sub i64 %i.br, %i.bu
  %scevgep210 = getelementptr i8, ptr %0, i64 %i.bv
  %i.bw = shl i64 %indvar, 5
  %i.bx = sub i64 %i.br, %i.bw
  %scevgep177 = getelementptr i8, ptr %0, i64 %i.bx
  %i.by = shl i64 %indvar, 3
  %i.bz = sub i64 %i.br, %i.by
  %scevgep180 = getelementptr i8, ptr %0, i64 %i.bz
  %.not = icmp eq i64 %.0163, %i.bf               ; 2 uses
  br i1 %.not, label %.loopexit175, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.idx.i.i.i.i = mul nuw nsw i64 %.0163, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i ; 9 uses
  %i.cb = add nuw nsw i64 %.0163, 1               ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = lshr exact i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1                        ; 6 uses
  %i.cf = sub nuw nsw i64 %i.cb, %i.ce            ; 3 uses
  %i.cg = and i64 %i.cf, 9223372036854775806      ; 2 uses
  %i.ch = or disjoint i64 %i.cg, %i.ce            ; 6 uses
  %.not159 = icmp eq i64 %i.ce, 0
  br i1 %.not159, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ci = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cj = load double, ptr %i.bg, align 8, !tbaa !11
  store double %i.cj, ptr %i.ca, align 8, !tbaa !11
  store double %i.ci, ptr %i.bg, align 8, !tbaa !11
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ck = icmp samesign ugt i64 %i.cf, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %.not160 = icmp sgt i64 %i.ch, %.0163
  br i1 %.not160, label %.loopexit175, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cl = or disjoint i64 %i.ce, %i.cg
  %i.cm = sub i64 %i.cb, %i.cl                    ; 3 uses
  %min.iters.check215 = icmp ult i64 %i.cm, 8
  br i1 %min.iters.check215, label %.lr.ph.i17.i.i.i.i.i.i.preheader229, label %vector.memcheck205

vector.memcheck205:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.cn = and i64 %i.cf, 2305843009213693950
  %i.co = or disjoint i64 %i.ce, %i.cn
  %i.cp = shl nuw i64 %i.co, 3                    ; 2 uses
  %scevgep206 = getelementptr i8, ptr %i.ca, i64 %i.cp
  %scevgep209 = getelementptr i8, ptr %scevgep208, i64 %i.cp
  %bound0211 = icmp ult ptr %scevgep206, %scevgep210
  %bound1212 = icmp ult ptr %scevgep209, %scevgep207
  %found.conflict213 = and i1 %bound0211, %bound1212
  br i1 %found.conflict213, label %.lr.ph.i17.i.i.i.i.i.i.preheader229, label %vector.ph216

vector.ph216:                                     ; preds = %vector.memcheck205
  %n.vec217 = and i64 %i.cm, -4                   ; 3 uses
  %i.cq = add i64 %i.ch, %n.vec217
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next224, %vector.body218 ] ; 2 uses
  %i.cr = add nuw i64 %i.ch, %index219            ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cr ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %wide.load220 = load <2 x double>, ptr %i.cs, align 8, !tbaa !11, !alias.scope !808, !noalias !809
  %wide.load221 = load <2 x double>, ptr %i.cu, align 8, !tbaa !11, !alias.scope !808, !noalias !809
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %wide.load222 = load <2 x double>, ptr %i.ct, align 8, !tbaa !11, !alias.scope !809
  %wide.load223 = load <2 x double>, ptr %i.cv, align 8, !tbaa !11, !alias.scope !809
  store <2 x double> %wide.load222, ptr %i.cs, align 8, !tbaa !11, !alias.scope !808, !noalias !809
  store <2 x double> %wide.load223, ptr %i.cu, align 8, !tbaa !11, !alias.scope !808, !noalias !809
  store <2 x double> %wide.load220, ptr %i.ct, align 8, !tbaa !11, !alias.scope !809
  store <2 x double> %wide.load221, ptr %i.cv, align 8, !tbaa !11, !alias.scope !809
  %index.next224 = add nuw i64 %index219, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next224, %n.vec217
  br i1 %i.cw, label %middle.block225, label %vector.body218, !llvm.loop !794

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %i.cm, %n.vec217
  br i1 %cmp.n226, label %.loopexit175, label %.lr.ph.i17.i.i.i.i.i.i.preheader229

.lr.ph.i17.i.i.i.i.i.i.preheader229:              ; preds = %vector.memcheck205, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block225
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.ch, %vector.memcheck205 ], [ %i.ch, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block225 ] ; 6 uses
  %i.cx = sub i64 %i.cb, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.cx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader229
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.da = load double, ptr %i.cy, align 8, !tbaa !11
  %i.db = load double, ptr %i.cz, align 8, !tbaa !11
  store double %i.db, ptr %i.cy, align 8, !tbaa !11
  store double %i.da, ptr %i.cz, align 8, !tbaa !11
  %i.dc = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader229
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader229 ], [ %i.dc, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.dd = icmp eq i64 %.0163, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.dd, label %.loopexit175, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dn, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dg = load double, ptr %i.de, align 8, !tbaa !11
  %i.dh = load double, ptr %i.df, align 8, !tbaa !11
  store double %i.dh, ptr %i.de, align 8, !tbaa !11
  store double %i.dg, ptr %i.df, align 8, !tbaa !11
  %i.di = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 1 ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.di ; 2 uses
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !11
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !11
  store double %i.dm, ptr %i.dj, align 8, !tbaa !11
  store double %i.dl, ptr %i.dk, align 8, !tbaa !11
  %i.dn = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.di, %.0163
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %.loopexit175, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !795

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i.i ], [ %i.ce, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.dp = load <2 x double>, ptr %i.do, align 8, !tbaa !9
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.dr = load <2 x double>, ptr %i.dq, align 16, !tbaa !9
  store <2 x double> %i.dr, ptr %i.do, align 8, !tbaa !9
  store <2 x double> %i.dp, ptr %i.dq, align 16, !tbaa !9
  %i.ds = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.dt = icmp samesign ult i64 %i.ds, %i.ch
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !796

.loopexit175:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block225, %bb.b, %._crit_edge.i.i.i.i.i.i
  %i.du = getelementptr [8 x i8], ptr %0, i64 %.0163 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 %.idx.i.i.i.i30 ; 4 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.0163 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 5 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !11 ; 2 uses
  %i.dz = fmul double %i.dy, %i.dy                ; 2 uses
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i31, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i

.lr.ph.i.i.i.i.i.i31:                             ; preds = %.loopexit175
  %i.ea = getelementptr i8, ptr %i.dv, i64 48
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11 ; 2 uses
  %i.ec = fmul double %i.eb, %i.eb
  %i.ed = fadd double %i.dz, %i.ec
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i31, %.loopexit175
  %i.ee = phi double [ %i.dz, %.loopexit175 ], [ %i.ed, %.lr.ph.i.i.i.i.i.i31 ] ; 2 uses
  %i.ef = load double, ptr %i.dv, align 8, !tbaa !11 ; 6 uses
  %i.eg = fcmp ugt double %i.ee, f0x0010000000000000
  br i1 %i.eg, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !11
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.critedge.i.i:                                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  %i.eh = fmul double %i.ef, %i.ef
  %i.ei = fadd double %i.ee, %i.eh
  %i.ej = call double @sqrt(double noundef %i.ei) #14 ; 2 uses
  %i.ek = fcmp ult double %i.ef, 0.000000e+00
  %i.el = fneg double %i.ej
  %storemerge.i.i = select i1 %i.ek, double %i.ej, double %i.el ; 4 uses
  %i.em = fsub double %i.ef, %storemerge.i.i      ; 2 uses
  br i1 %min.iters.check195, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %.critedge.i.i
  %broadcast.splatinsert198 = insertelement <2 x double> poison, double %i.em, i64 0
  %broadcast.splat199 = shufflevector <2 x double> %broadcast.splatinsert198, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph196
  %index201 = phi i64 [ 0, %vector.ph196 ], [ %index.next202, %vector.body200 ] ; 3 uses
  %i.en = mul nuw nsw i64 %index201, 24
  %i.eo = mul nuw i64 %index201, 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eo
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %i.es = load double, ptr %i.ep, align 8, !tbaa !11
  %i.et = load double, ptr %i.er, align 8, !tbaa !11
  %i.eu = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.et, i64 1
  %i.ew = fdiv <2 x double> %i.ev, %broadcast.splat199 ; 2 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 0
end_hunk_0
