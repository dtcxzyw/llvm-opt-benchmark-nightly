Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.3?download=true
inline.NumInlined: 35270
inline.NumDeleted: 18986
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS12_:bb.a
  store <2 x double> %i.dm, ptr %i.dk, align 8, !tbaa !13, !alias.scope !490, !noalias !492
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.dn, label %middle.block99, label %vector.body90, !llvm.loop !493

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.ct, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bv, %vector.memcheck73 ], [ %i.bv, %.lr.ph51 ], [ %i.dc, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eg, %bb.d ] ; 3 uses
  %i.do = load ptr, ptr %0, align 8, !tbaa !481, !nonnull !27, !align !281
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !257
  %i.dq = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i37
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %.03248 ; 2 uses
  %i.ds = load ptr, ptr %i.bq, align 8, !tbaa !477, !nonnull !27, !align !282 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 144
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 152
  %i.dv = load ptr, ptr %i.dt, align 16, !tbaa !315
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %.03248
  %i.dx = load <2 x double>, ptr %i.dw, align 1, !tbaa !12
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !328
  %i.dz = getelementptr i8, ptr %i.dy, i64 %.idx.i.i.i37
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !13
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.dx, %i.ec
  %i.ee = load <2 x double>, ptr %i.dr, align 16, !tbaa !12
  %i.ef = fsub <2 x double> %i.ee, %i.ed
  store <2 x double> %i.ef, ptr %i.dr, align 16, !tbaa !12
  %i.eg = add nsw i64 %.03248, 2                  ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.bv
  br i1 %i.eh, label %bb.d, label %.preheader, !llvm.loop !494

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ei = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ei)
  %i.ej = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ej, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit, label %bb.c, !llvm.loop !495

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.er, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.ek = getelementptr [8 x i8], ptr %i.cn, i64 %.050 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.co, i64 %.050
  %i.em = load double, ptr %i.el, align 8, !tbaa !13
  %i.en = load double, ptr %i.cr, align 8, !tbaa !13
  %i.eo = fmul double %i.em, %i.en
  %i.ep = load double, ptr %i.ek, align 8, !tbaa !13
  %i.eq = fsub double %i.ep, %i.eo
  store double %i.eq, ptr %i.ek, align 8, !tbaa !13
  %i.er = add nsw i64 %.050, 1                    ; 2 uses
  %i.es = icmp slt i64 %i.er, %i.bj
  br i1 %i.es, label %scalar.ph86, label %._crit_edge, !llvm.loop !496

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi4ELi1ELi0ELi4ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 16 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.2391", align 4 ; 6 uses
  %4 = alloca %"class.Eigen::Block.1137", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Block.1148", align 8 ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.1127", align 8 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.44", align 16 ; 8 uses
  %8 = alloca %"class.Eigen::TriangularView", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.124", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load double, ptr %i.a, align 16, !tbaa !125
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.e = load i8, ptr %i.d, align 1, !tbaa !53, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CD0000000000000
  %i.j = fmul double %i.c, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.l = load i64, ptr %i.k, align 8, !tbaa !126  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi68 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
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
  %i.ac = load double, ptr %i.y, align 16, !tbaa !13
  %i.ad = load double, ptr %i.z, align 8, !tbaa !13
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 16, !tbaa !13
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !13
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi68, %i.ap         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit, label %.lr.ph.i.i.preheader69

.lr.ph.i.i.preheader69:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader69, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader69 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader69 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = shl i64 %.09.i.i, 5
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit, label %.lr.ph.i.i, !llvm.loop !498

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 13 uses
  %i.bc = icmp eq i64 %.lcssa, 0
  br i1 %i.bc, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread, label %.lr.ph.i.i18

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread: ; preds = %bb.a, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.f

.lr.ph.i.i18:                                     ; preds = %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bd = load ptr, ptr %1, align 8, !tbaa !499, !nonnull !27, !align !282 ; 2 uses
  %i.be = load <2 x double>, ptr %i.bd, align 16, !tbaa !12
  %i.bf = fneg <2 x double> %i.be
  store <2 x double> %i.bf, ptr %7, align 16, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !12
  %i.bj = fneg <2 x double> %i.bi
  store <2 x double> %i.bj, ptr %i.bg, align 16, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i18
  %.061.i.i = phi i64 [ %i.by, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i18 ] ; 8 uses
  %i.bw = sub nsw i64 4, %.061.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.061.i.i
  store ptr %i.bx, ptr %4, align 8, !tbaa !502, !alias.scope !504
  store i64 %i.bw, ptr %i.bl, align 8, !tbaa !145, !alias.scope !504
  store i64 1, ptr %i.bm, align 8, !tbaa !145, !alias.scope !504
  store ptr %7, ptr %i.bn, align 8, !tbaa !54, !alias.scope !504
  store i64 %.061.i.i, ptr %i.bo, align 8, !tbaa !145, !alias.scope !504
  store i64 0, ptr %i.bp, align 8, !tbaa !145, !alias.scope !504
  store i64 4, ptr %i.bq, align 8, !tbaa !507, !alias.scope !504
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.by = add nuw i64 %.061.i.i, 1                ; 4 uses
  %i.bz = sub nsw i64 3, %.061.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.by
  %.idx.i.i.i.i.i.i.i = shl nsw i64 %.061.i.i, 5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i.i.i.i.i.i
  store ptr %i.cb, ptr %5, align 8, !tbaa !510, !alias.scope !512
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !145, !alias.scope !512
  store ptr %0, ptr %i.bs, align 8, !tbaa !146, !alias.scope !512
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !145, !alias.scope !512
  store i64 %.061.i.i, ptr %i.bu, align 8, !tbaa !145, !alias.scope !512
  store i64 4, ptr %i.bv, align 8, !tbaa !517, !alias.scope !512
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.061.i.i
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %exitcond.not = icmp eq i64 %i.by, %.lcssa
  br i1 %exitcond.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i, !llvm.loop !519

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.728.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %0, ptr %8, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.lcssa, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 4, ptr %.sroa.829.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %2, ptr %9, align 8, !tbaa !520, !alias.scope !522
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.lcssa, ptr %i.cd, align 8, !tbaa !145, !alias.scope !522
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %2, ptr %i.ce, align 8, !tbaa !54, !alias.scope !522
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.cf, align 8, !tbaa !145, !alias.scope !522
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 4, ptr %i.cg, align 8, !tbaa !525, !alias.scope !522
  %i.ch = and i64 %.lcssa, 9223372036854775806    ; 2 uses
  %.not = icmp eq i64 %.lcssa, 1
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = call i64 @llvm.usub.sat.i64(i64 %i.ch, i64 2)
  %i.cj = shl i64 %i.ci, 3
  %i.ck = add i64 %i.cj, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %7, i64 %i.ck, i1 false), !tbaa !12
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not48 = icmp eq i64 %i.ch, %.lcssa
  br i1 %.not48, label %_ZN5Eigen5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cl = shl i64 %.lcssa, 3
  %i.cm = and i64 %i.cl, -16                      ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.cm
  %scevgep57 = getelementptr i8, ptr %7, i64 %i.cm
  %i.cn = shl i64 %.lcssa, 3
  %i.co = and i64 %i.cn, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep, ptr align 16 %scevgep57, i64 %i.co, i1 false), !tbaa !13
  br label %_ZN5Eigen5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS2_INS3_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.cp = icmp samesign ult i64 %.lcssa, 4
  br i1 %i.cp, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.cq = sub nuw nsw i64 4, %.lcssa              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.lcssa ; 4 uses
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = lshr exact i64 %i.cs, 3
  %i.cu = and i64 %i.ct, 1                        ; 3 uses
  %i.cv = sub nuw nsw i64 %i.cq, %i.cu            ; 3 uses
  %i.cw = and i64 %i.cv, 6
  %i.cx = or disjoint i64 %i.cw, %i.cu            ; 2 uses
  %.not49 = icmp eq i64 %i.cu, 0
  br i1 %.not49, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.cr, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.cy = icmp samesign ugt i64 %i.cv, 1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 3
  %scevgep.i = getelementptr i8, ptr %i.cr, i64 %i.cz
  %i.da = or disjoint i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 2
  %i.db = call i64 @llvm.umax.i64(i64 %i.cx, i64 %i.da)
  %i.dc = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, -1
  %i.dd = add nsw i64 %i.db, %i.dc
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = and i64 %i.de, 9223372036854775792
  %i.dg = add nuw nsw i64 %i.df, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dg, i1 false), !tbaa !12
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = icmp samesign ult i64 %i.cx, %i.cq
  br i1 %i.dh, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.di = shl nuw nsw i64 %i.cv, 3                ; 2 uses
  %i.dj = and i64 %i.di, 48
  %i.dk = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 3
  %i.dl = getelementptr i8, ptr %i.cr, i64 %i.dj
  %scevgep1.i = getelementptr i8, ptr %i.dl, i64 %i.dk
  %i.dm = and i64 %i.di, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.dm, i1 false), !tbaa !13
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi4ELi1ELi0ELi4ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 16 dereferenceable(32) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.do = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 3
  br i1 %i.do, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEaSINS_7ProductINS_17PermutationMatrixILi4ELi4EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.dp = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !21, !range !26, !noundef !27
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEaSINS_7ProductINS_17PermutationMatrixILi4ELi4EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !528

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.ds, align 1, !tbaa !21
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !160
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.dt = getelementptr inbounds [8 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load double, ptr %i.dt, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.du = phi double [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dw, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !13 ; 2 uses
  store double %i.du, ptr %i.dv, align 8, !tbaa !13
  store double %i.dw, ptr %i.dt, align 8, !tbaa !13
  %i.dx = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.dx, align 1, !tbaa !21
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !160
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !529

_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEaSINS_7ProductINS_17PermutationMatrixILi4ELi4EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEaSINS_7ProductINS_17PermutationMatrixILi4ELi4EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi4ELi1ELi0ELi4ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load double, ptr %i.a, align 16, !tbaa !125
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.e = load i8, ptr %i.d, align 1, !tbaa !53, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CD0000000000000
  %.fr126 = freeze double %i.i
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS12_:bb.a
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.dn, label %middle.block99, label %vector.body90, !llvm.loop !1018

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.ct, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bv, %vector.memcheck73 ], [ %i.bv, %.lr.ph51 ], [ %i.dc, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eg, %bb.d ] ; 3 uses
  %i.do = load ptr, ptr %0, align 8, !tbaa !1006, !nonnull !27, !align !281
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !788
  %i.dq = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i37
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %.03248 ; 2 uses
  %i.ds = load ptr, ptr %i.bq, align 8, !tbaa !1002, !nonnull !27, !align !281 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 136
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !842
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %.03248
  %i.dx = load <2 x double>, ptr %i.dw, align 1, !tbaa !12
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !855
  %i.dz = getelementptr i8, ptr %i.dy, i64 %.idx.i.i.i37
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !13
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.dx, %i.ec
  %i.ee = load <2 x double>, ptr %i.dr, align 16, !tbaa !12
  %i.ef = fsub <2 x double> %i.ee, %i.ed
  store <2 x double> %i.ef, ptr %i.dr, align 16, !tbaa !12
  %i.eg = add nsw i64 %.03248, 2                  ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.bv
  br i1 %i.eh, label %bb.d, label %.preheader, !llvm.loop !1019

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ei = add nsw i64 %.03552, 1
  %i.ej = srem i64 %i.ei, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit, label %bb.c, !llvm.loop !1020

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.cn, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.co, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !13
  %i.eo = load double, ptr %i.cr, align 8, !tbaa !13
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !13
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !13
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1021

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi3ELi1ELi0ELi3ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.4169", align 1 ; 6 uses
  %4 = alloca %"class.Eigen::Block.3413", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Block.3435", align 8 ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.1127", align 8 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix", align 16    ; 9 uses
  %8 = alloca %"class.Eigen::TriangularView.3369", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.3382", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load double, ptr %i.a, align 8, !tbaa !667
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !84, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC8000000000000
  %i.j = fmul double %i.c, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load i64, ptr %i.k, align 8, !tbaa !668  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi68 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
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
  %i.ac = load double, ptr %i.y, align 8, !tbaa !13
  %i.ad = load double, ptr %i.z, align 8, !tbaa !13
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 8, !tbaa !13
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !13
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi68, %i.ap         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i.i.preheader69

.lr.ph.i.i.preheader69:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader69, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader69 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader69 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = mul i64 %.09.i.i, 24
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i.i, !llvm.loop !1023

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 11 uses
  %i.bc = icmp eq i64 %.lcssa, 0
  br i1 %i.bc, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread, label %.lr.ph.i.i18

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread: ; preds = %bb.a, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.f

.lr.ph.i.i18:                                     ; preds = %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1024, !nonnull !27, !align !281 ; 2 uses
  %i.be = load <2 x double>, ptr %i.bd, align 8, !tbaa !12
  %i.bf = fneg <2 x double> %i.be
  store <2 x double> %i.bf, ptr %7, align 16, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = getelementptr i8, ptr %i.bd, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13
  %i.bj = fneg double %i.bi
  store double %i.bj, ptr %i.bg, align 16, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i18
  %.061.i.i = phi i64 [ %i.by, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i18 ] ; 8 uses
  %i.bw = sub nsw i64 3, %.061.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.061.i.i
  store ptr %i.bx, ptr %4, align 8, !tbaa !1026, !alias.scope !1028
  store i64 %i.bw, ptr %i.bl, align 8, !tbaa !145, !alias.scope !1028
  store i64 1, ptr %i.bm, align 8, !tbaa !145, !alias.scope !1028
  store ptr %7, ptr %i.bn, align 8, !tbaa !85, !alias.scope !1028
  store i64 %.061.i.i, ptr %i.bo, align 8, !tbaa !145, !alias.scope !1028
  store i64 0, ptr %i.bp, align 8, !tbaa !145, !alias.scope !1028
  store i64 3, ptr %i.bq, align 8, !tbaa !1031, !alias.scope !1028
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.by = add nuw i64 %.061.i.i, 1                ; 4 uses
  %i.bz = sub nsw i64 2, %.061.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.by
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %.061.i.i, 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i.i.i.i.i.i
  store ptr %i.cb, ptr %5, align 8, !tbaa !1034, !alias.scope !1036
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !145, !alias.scope !1036
  store ptr %0, ptr %i.bs, align 8, !tbaa !687, !alias.scope !1036
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !145, !alias.scope !1036
  store i64 %.061.i.i, ptr %i.bu, align 8, !tbaa !145, !alias.scope !1036
  store i64 3, ptr %i.bv, align 8, !tbaa !1041, !alias.scope !1036
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.061.i.i
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %exitcond.not = icmp eq i64 %i.by, %.lcssa
  br i1 %exitcond.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i, !llvm.loop !1043

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.728.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %0, ptr %8, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.lcssa, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 3, ptr %.sroa.829.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %2, ptr %9, align 8, !tbaa !1044, !alias.scope !1046
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.lcssa, ptr %i.cd, align 8, !tbaa !145, !alias.scope !1046
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %2, ptr %i.ce, align 8, !tbaa !85, !alias.scope !1046
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.cf, align 8, !tbaa !145, !alias.scope !1046
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 3, ptr %i.cg, align 8, !tbaa !1049, !alias.scope !1046
  %i.ch = ptrtoint ptr %2 to i64
  %i.ci = lshr exact i64 %i.ch, 3
  %i.cj = and i64 %i.ci, 1                        ; 2 uses
  %i.ck = call i64 @llvm.smin.i64(i64 %i.cj, i64 %.lcssa) ; 8 uses
  %i.cl = sub i64 %.lcssa, %i.ck                  ; 4 uses
  %i.cm = and i64 %i.cl, -2                       ; 2 uses
  %i.cn = or disjoint i64 %i.cm, %i.ck
  %.not53 = icmp eq i64 %i.cj, 0
  br i1 %.not53, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = shl nuw i64 %i.ck, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 16 %7, i64 %i.co, i1 false), !tbaa !13
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = icmp sgt i64 %i.cl, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = shl nuw i64 %i.ck, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.cq
  %scevgep56 = getelementptr i8, ptr %7, i64 %i.cq
  %i.cr = add i64 %i.ck, %i.cm
  %i.cs = add nsw i64 %i.ck, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cs)
  %i.ct = xor i64 %i.ck, -1
  %i.cu = add i64 %umax, %i.ct
  %i.cv = shl i64 %i.cu, 3
  %i.cw = and i64 %i.cv, -16
  %i.cx = add i64 %i.cw, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep, ptr align 8 %scevgep56, i64 %i.cx, i1 false), !tbaa !12
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = icmp samesign ult i64 %i.cn, %.lcssa
  br i1 %i.cy, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = and i64 %i.cl, 2305843009213693950
  %i.da = add nsw i64 %i.ck, %i.cz
  %i.db = shl i64 %i.da, 3                        ; 2 uses
  %scevgep57 = getelementptr i8, ptr %2, i64 %i.db
  %scevgep58 = getelementptr i8, ptr %7, i64 %i.db
  %i.dc = shl i64 %i.cl, 3
  %i.dd = and i64 %i.dc, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep57, ptr align 8 %scevgep58, i64 %i.dd, i1 false), !tbaa !13
  br label %_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.de = icmp samesign ult i64 %.lcssa, 3
  br i1 %i.de, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.df = sub nuw nsw i64 3, %.lcssa              ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.lcssa ; 4 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = lshr exact i64 %i.dh, 3
  %i.dj = and i64 %i.di, 1                        ; 3 uses
  %i.dk = sub nuw nsw i64 %i.df, %i.dj            ; 3 uses
  %i.dl = and i64 %i.dk, 2
  %i.dm = or disjoint i64 %i.dl, %i.dj            ; 2 uses
  %.not = icmp eq i64 %i.dj, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.dg, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.dn = icmp samesign ugt i64 %i.dk, 1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.do = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 3
  %scevgep.i = getelementptr i8, ptr %i.dg, i64 %i.do
  %i.dp = or disjoint i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 2
  %i.dq = call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.dp)
  %i.dr = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, -1
  %i.ds = add nsw i64 %i.dq, %i.dr
  %i.dt = shl nuw nsw i64 %i.ds, 3
  %i.du = and i64 %i.dt, 9223372036854775792
  %i.dv = add nuw nsw i64 %i.du, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dv, i1 false), !tbaa !12
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = icmp samesign ult i64 %i.dm, %i.df
  br i1 %i.dw, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dx = shl nuw nsw i64 %i.dk, 3                ; 2 uses
  %i.dy = and i64 %i.dx, 16
  %i.dz = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 3
  %i.ea = getelementptr i8, ptr %i.dg, i64 %i.dy
  %scevgep1.i = getelementptr i8, ptr %i.ea, i64 %i.dz
  %i.eb = and i64 %i.dx, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.eb, i1 false), !tbaa !13
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i64 3, i1 false), !tbaa !21
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.ed = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %i.ed, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.ee = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !21, !range !26, !noundef !27
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1052

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.eh = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.eh, align 1, !tbaa !21
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !160
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.ei = getelementptr inbounds [8 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load double, ptr %i.ei, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ej = phi double [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.el, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !13 ; 2 uses
  store double %i.ej, ptr %i.ek, align 8, !tbaa !13
  store double %i.el, ptr %i.ei, align 8, !tbaa !13
  %i.em = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.em, align 1, !tbaa !21
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !160
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_:bb.a
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !13, !alias.scope !1295, !noalias !1297
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !13, !alias.scope !1295, !noalias !1297
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !13, !alias.scope !1295, !noalias !1297
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !13, !alias.scope !1295, !noalias !1297
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1298

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1286, !nonnull !27, !align !281
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1245
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1282, !nonnull !27, !align !282 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !1299
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !12
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !1233
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !13
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !12
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !12
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1300

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !1301

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !13
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !13
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !13
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !13
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1302

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
  %i.b = load double, ptr %i.a, align 16, !tbaa !117
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.e = load i8, ptr %i.d, align 1, !tbaa !116, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC0000000000000
  %i.j = fmul double %i.c, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load i64, ptr %i.k, align 8, !tbaa !118  ; 5 uses
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
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 4
  %i.v = shl i64 %i.n, 4
  %i.w = shl i64 %i.o, 4
  %i.x = shl i64 %i.p, 4
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 16, !tbaa !13
  %i.ad = load double, ptr %i.z, align 8, !tbaa !13
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 16, !tbaa !13
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !13
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi67, %i.ap         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1303

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit, label %.lr.ph.i.i.preheader68

.lr.ph.i.i.preheader68:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader68, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader68 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader68 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = shl i64 %.09.i.i, 4
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit, label %.lr.ph.i.i, !llvm.loop !1304

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 10 uses
  %i.bc = icmp eq i64 %.lcssa, 0
  br i1 %i.bc, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread, label %.lr.ph.i.i18

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread: ; preds = %bb.a, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.f

.lr.ph.i.i18:                                     ; preds = %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1305, !nonnull !27, !align !282
  %i.be = load <2 x double>, ptr %i.bd, align 16, !tbaa !12
  %i.bf = fneg <2 x double> %i.be
  store <2 x double> %i.bf, ptr %7, align 16, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i18
  %.061.i.i = phi i64 [ %i.bu, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i18 ] ; 8 uses
  %i.bs = sub nsw i64 2, %.061.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.061.i.i
  store ptr %i.bt, ptr %4, align 8, !tbaa !1307, !alias.scope !1309
  store i64 %i.bs, ptr %i.bh, align 8, !tbaa !145, !alias.scope !1309
  store i64 1, ptr %i.bi, align 8, !tbaa !145, !alias.scope !1309
  store ptr %7, ptr %i.bj, align 8, !tbaa !120, !alias.scope !1309
  store i64 %.061.i.i, ptr %i.bk, align 8, !tbaa !145, !alias.scope !1309
  store i64 0, ptr %i.bl, align 8, !tbaa !145, !alias.scope !1309
  store i64 2, ptr %i.bm, align 8, !tbaa !1312, !alias.scope !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.bu = add nuw i64 %.061.i.i, 1                ; 4 uses
  %i.bv = sub nsw i64 1, %.061.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu
  %.idx.i.i.i.i.i.i.i = shl nsw i64 %.061.i.i, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i.i.i
  store ptr %i.bx, ptr %5, align 8, !tbaa !1315, !alias.scope !1317
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !145, !alias.scope !1317
  store ptr %0, ptr %i.bo, align 8, !tbaa !1181, !alias.scope !1317
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !145, !alias.scope !1317
  store i64 %.061.i.i, ptr %i.bq, align 8, !tbaa !145, !alias.scope !1317
  store i64 2, ptr %i.br, align 8, !tbaa !1322, !alias.scope !1317
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.061.i.i
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %exitcond.not = icmp eq i64 %i.bu, %.lcssa
  br i1 %exitcond.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i, !llvm.loop !1324

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.728.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %0, ptr %8, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.lcssa, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 2, ptr %.sroa.829.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %2, ptr %9, align 8, !tbaa !1325, !alias.scope !1327
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.lcssa, ptr %i.bz, align 8, !tbaa !145, !alias.scope !1327
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %2, ptr %i.ca, align 8, !tbaa !120, !alias.scope !1327
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.cb, align 8, !tbaa !145, !alias.scope !1327
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 2, ptr %i.cc, align 8, !tbaa !1330, !alias.scope !1327
  %i.cd = and i64 %.lcssa, 9223372036854775806    ; 2 uses
  %.not = icmp eq i64 %.lcssa, 1                  ; 2 uses
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = call i64 @llvm.usub.sat.i64(i64 %i.cd, i64 2)
  %i.cf = shl i64 %i.ce, 3
  %i.cg = add i64 %i.cf, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %7, i64 %i.cg, i1 false), !tbaa !12
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not48 = icmp eq i64 %i.cd, %.lcssa
  br i1 %.not48, label %_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = shl i64 %.lcssa, 3
  %i.ci = and i64 %i.ch, -16                      ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.ci
  %scevgep56 = getelementptr i8, ptr %7, i64 %i.ci
  %i.cj = shl i64 %.lcssa, 3
  %i.ck = and i64 %i.cj, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep, ptr align 16 %scevgep56, i64 %i.ck, i1 false), !tbaa !13
  br label %_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS2_INS3_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cl, align 8
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi2ELi1ELi0ELi2ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(208) %0, ptr noundef nonnull align 16 dereferenceable(16) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i16 0, ptr %3, align 2
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.cn = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 1
  br i1 %i.cn, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.co = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !21, !range !26, !noundef !27
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1333

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.cr, align 1, !tbaa !21
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !160
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.cs = getelementptr inbounds [8 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load double, ptr %i.cs, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ct = phi double [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cv, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !13 ; 2 uses
  store double %i.ct, ptr %i.cu, align 8, !tbaa !13
  store double %i.cv, ptr %i.cs, align 8, !tbaa !13
  %i.cw = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.cw, align 1, !tbaa !21
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !160
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !1334

_ZN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi2ELi1ELi0ELi2ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(208) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 16, !tbaa !117
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.e = load i8, ptr %i.d, align 1, !tbaa !116, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC0000000000000
  %.fr125 = freeze double %i.i
  %i.j = fmul double %i.c, %.fr125                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load i64, ptr %i.k, align 8, !tbaa !118  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 4
  %i.v = shl i64 %i.n, 4
  %i.w = shl i64 %i.o, 4
  %i.x = shl i64 %i.p, 4
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 16, !tbaa !13
  %i.ad = load double, ptr %i.z, align 8, !tbaa !13
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 16, !tbaa !13
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !13
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
end_hunk_2
