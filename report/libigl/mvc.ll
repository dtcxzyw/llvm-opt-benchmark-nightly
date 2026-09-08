Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mvc?download=true
inline.NumInlined: 8230
inline.NumDeleted: 4298
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv:bb.a

bb.m:                                             ; preds = %bb.l
  %i.ff = load <2 x double>, ptr %gep, align 8, !tbaa !18 ; 2 uses
  %i.fg = fmul <2 x double> %i.ff, %i.ff          ; 2 uses
  %shift164 = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop165 = fadd <2 x double> %i.fg, %shift164
  %i.fh = extractelement <2 x double> %foldExtExtBinop165, i64 0 ; 3 uses
  br i1 %.not153, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.m
  br i1 %lcmp.mod171.not, label %.lr.ph85.i.i.i.i.i.preheader.new, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.fm, %.lr.ph85.i.i.i.i.i.prol ], [ %i.em, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.fl, %.lr.ph85.i.i.i.i.i.prol ], [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i.prol
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !21 ; 2 uses
  %i.fk = fmul double %i.fj, %i.fj
  %i.fl = fadd double %.182.i.i.i.i.i.prol, %i.fk ; 2 uses
  %i.fm = add nuw nsw i64 %.05283.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ch
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.preheader.new, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !347

.lr.ph85.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.em, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fm, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fl, %.lr.ph85.i.i.i.i.i.prol ]
  br label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.preheader.new
  %.05283.i.i.i.i.i = phi i64 [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gg, %.lr.ph85.i.i.i.i.i ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gf, %.lr.ph85.i.i.i.i.i ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !21 ; 2 uses
  %i.fp = fmul double %i.fo, %i.fo
  %i.fq = fadd double %.182.i.i.i.i.i, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !21 ; 2 uses
  %i.fu = fmul double %i.ft, %i.ft
  %i.fv = fadd double %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !21 ; 2 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = fadd double %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !21 ; 2 uses
  %i.ge = fmul double %i.gd, %i.gd
  %i.gf = fadd double %i.ga, %i.ge                ; 2 uses
  %i.gg = add nuw nsw i64 %.05283.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gg, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !348

bb.n:                                             ; preds = %bb.l
  %i.gh = load double, ptr %gep, align 8, !tbaa !21 ; 2 uses
  %i.gi = fmul double %i.gh, %i.gh
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit: ; preds = %.lr.ph85.i.i.i.i.i, %bb.m, %bb.n
  %.0.i.i.i = phi double [ %i.gi, %bb.n ], [ %i.fh, %bb.m ], [ %i.gf, %.lr.ph85.i.i.i.i.i ]
  %.scalar.i90 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i) ; 2 uses
  store double %.scalar.i90, ptr %i.ez, align 8, !tbaa !21
  br label %.sink.split

bb.o:                                             ; preds = %bb.k
  %.scalar = call double @llvm.sqrt.f64(double %i.ey)
  %i.gj = fmul double %i.eo, %.scalar
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit
  %.scalar.i90.sink = phi double [ %.scalar.i90, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit ], [ %i.gj, %bb.o ]
  store double %.scalar.i90.sink, ptr %i.en, align 8, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.j
  %i.gk = add nuw nsw i64 %.072149, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gk, 3
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !349
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.675", align 8 ; 20 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.571", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.692", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.477", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !21  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !85     ; 11 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !26   ; 7 uses
  %i.k = icmp sgt i64 %i.j, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter163 = and i64 %i.j, 3                  ; 3 uses
  %i.l = icmp ult i64 %i.j, 4
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter166 = and i64 %i.j, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ae, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter167 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter167.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.m = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !21
  %i.o = fmul double %i.e, %i.n
  store double %i.o, ptr %i.m, align 8, !tbaa !21
  %i.p = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !21
  %i.t = fmul double %i.e, %i.s
  store double %i.t, ptr %i.r, align 8, !tbaa !21
  %i.u = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 48       ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !21
  %i.y = fmul double %i.e, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !21
  %i.z = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 72     ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !21
  %i.ad = fmul double %i.e, %i.ac
  store double %i.ad, ptr %i.ab, align 8, !tbaa !21
  %i.ae = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter167.next.3 = add nuw nsw i64 %niter167, 4 ; 2 uses
  %niter167.ncmp.3 = icmp eq i64 %niter167.next.3, %unroll_iter166
  br i1 %niter167.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit134.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !368

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.k, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter168 = and i64 %i.j, 3                  ; 3 uses
  %i.af = icmp ult i64 %i.j, 4
  br i1 %i.af, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter172 = and i64 %i.j, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.ay, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter173 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter173.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ag = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !21
  %i.ai = fmul double %i.e, %i.ah
  store double %i.ai, ptr %i.ag, align 8, !tbaa !21
  %i.aj = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ak = getelementptr i8, ptr %i.g, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !21
  %i.an = fmul double %i.e, %i.am
  store double %i.an, ptr %i.al, align 8, !tbaa !21
  %i.ao = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 48     ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !21
  %i.as = fmul double %i.e, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !21
  %i.at = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.au = getelementptr i8, ptr %i.g, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 72     ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !21
  %i.ax = fmul double %i.e, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !21
  %i.ay = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter173.next.3 = add nuw nsw i64 %niter173, 4 ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !369

bb.d:                                             ; preds = %bb.a
  %i.az = fcmp une double %i.d, 0.000000e+00
  br i1 %i.az, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !26 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.bc = add nsw i64 %i.b, -1                    ; 7 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !85    ; 14 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8      ; 15 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bi, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bj, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 3, ptr %i.bk, align 8, !tbaa !401
  %.sroa.038.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %9 = icmp eq i64 %i.bc, 0
  %i.bm = sdiv i64 %i.bc, 4
  %i.bn = shl nsw i64 %i.bm, 2                    ; 4 uses
  %i.bo = sdiv i64 %i.bc, 2
  %i.bp = shl nsw i64 %i.bo, 1                    ; 10 uses
  %10 = icmp sgt i64 %i.b, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.0.0.copyload, i64 16
  %i.br = icmp sgt i64 %i.b, 8
  %i.bs = icmp sgt i64 %i.bp, %i.bn
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.bn
  %i.bu = icmp slt i64 %i.bp, %i.bc               ; 2 uses
  br i1 %9, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %11 = shl nuw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %11, i1 false), !tbaa !21
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.bb, 15
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader136, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %i.bv = shl i64 %i.bb, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.bv  ; 2 uses
  %scevgep91 = getelementptr i8, ptr %.sroa.038.sroa.0.0.copyload, i64 8
  %i.bw = mul i64 %i.bb, 24
  %i.bx = getelementptr i8, ptr %i.bd, i64 %i.bw
  %scevgep92 = getelementptr i8, ptr %i.bx, i64 -8
  %bound0 = icmp ult ptr %3, %scevgep91
  %bound1 = icmp ult ptr %.sroa.038.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %3, %scevgep92
  %bound194 = icmp ult ptr %i.be, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict, %found.conflict95
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader136, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.by = and i64 %i.bb, 3                        ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 4, i64 %i.by
  %n.vec = sub nsw i64 %i.bb, %i.ca               ; 2 uses
  %i.cb = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !21, !alias.scope !402
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cc = mul nuw nsw i64 %index, 24
  %i.cd = mul nuw i64 %index, 24
  %i.ce = mul nuw i64 %index, 24
  %i.cf = mul nuw i64 %index, 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ce
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cf
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load double, ptr %i.cg, align 8, !tbaa !21, !alias.scope !403
  %i.co = load double, ptr %i.ci, align 8, !tbaa !21, !alias.scope !403
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = load double, ptr %i.ck, align 8, !tbaa !21, !alias.scope !403
  %i.cs = load double, ptr %i.cm, align 8, !tbaa !21, !alias.scope !403
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1
  %i.cv = fmul <2 x double> %broadcast.splat, %i.cq
  %i.cw = fmul <2 x double> %broadcast.splat, %i.cu
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %i.cv, ptr %i.cx, align 8, !tbaa !21, !alias.scope !404, !noalias !405
  store <2 x double> %i.cw, ptr %i.cy, align 8, !tbaa !21, !alias.scope !404, !noalias !405
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader136, label %vector.body, !llvm.loop !374

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader136: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %.07.us8.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.da = sub i64 %i.bb, %.07.us8.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter149 = and i64 %i.da, 1
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader136
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol
  %i.dc = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !21
  %i.dd = load double, ptr %i.db, align 8, !tbaa !21
  %i.de = fmul double %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i.ph
  store double %i.de, ptr %i.df, align 8, !tbaa !21
  %i.dg = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader136
  %.07.us8.i.i.i.i.i.i.i.i.unr = phi i64 [ %.07.us8.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader136 ], [ %i.dg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol ]
  %i.dh = icmp eq i64 %i.bb, %.neg
  br i1 %i.dh, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i
  %.07.us8.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i ], [ %.07.us8.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i
  %i.dj = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !21
  %i.dk = load double, ptr %i.di, align 8, !tbaa !21
  %i.dl = fmul double %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i
  store double %i.dl, ptr %i.dm, align 8, !tbaa !21
  %i.dn = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.dn, 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1
  %i.dp = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !21
  %i.dq = load double, ptr %i.do, align 8, !tbaa !21
  %i.dr = fmul double %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dn
  store double %i.dr, ptr %i.ds, align 8, !tbaa !21
  %i.dt = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond36.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dt, %i.bb
  br i1 %exitcond36.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i, !llvm.loop !375

.lr.ph.split.split.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  br i1 %10, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  %i.du = xor i64 %i.bp, -1
  %i.dv = add i64 %i.b, %i.du
  %i.dw = add nsw i64 %i.b, -2
  %i.dx = sub i64 %i.dw, %i.bp
  %xtraiter146 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  %i.dy = icmp ult i64 %i.dx, 3
  br label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i
  %.07.us12.i.i.i.i.i.i.i.i = phi i64 [ %i.gm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i ; 10 uses
  %i.ea = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !18
  %i.eb = load <2 x double>, ptr %i.dz, align 1, !tbaa !18
  %i.ec = fmul <2 x double> %i.ea, %i.eb          ; 2 uses
  %i.ed = load <2 x double>, ptr %i.bq, align 1, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !18
  %i.eg = fmul <2 x double> %i.ed, %i.ef          ; 2 uses
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ] ; 4 uses
  %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.em, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.et, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.eg, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ei = load <2 x double>, ptr %i.eh, align 1, !tbaa !18
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ek = load <2 x double>, ptr %i.ej, align 1, !tbaa !18
  %i.el = fmul <2 x double> %i.ei, %i.ek
  %i.em = fadd <2 x double> %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.el ; 2 uses
  %i.en = add nuw nsw i64 %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.en
  %i.ep = load <2 x double>, ptr %i.eo, align 1, !tbaa !18
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.en
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !18
  %i.es = fmul <2 x double> %i.ep, %i.er
  %i.et = fadd <2 x double> %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.es ; 2 uses
  %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.eu = icmp slt i64 %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.bn
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !376

._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i
  %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.eg, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.et, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.em, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.ev = fadd <2 x double> %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ew = load <2 x double>, ptr %i.bt, align 1, !tbaa !18
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.bn
  %i.ey = load <2 x double>, ptr %i.ex, align 1, !tbaa !18
  %i.ez = fmul <2 x double> %i.ew, %i.ey
  %i.fa = fadd <2 x double> %i.ev, %i.ez
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ev, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.fa, %bb.f ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %shift
  %i.fb = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader:  ; preds = %bb.g
  br i1 %lcmp.mod147.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol:       ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fi, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.bp, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.fb, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter148 = phi i64 [ %prol.iter148.next, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !21
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !21
  %i.fg = fmul double %i.fd, %i.ff
  %i.fh = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %i.fg ; 3 uses
  %i.fi = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter148.next = add i64 %prol.iter148, 1   ; 2 uses
  %prol.iter148.cmp.not = icmp eq i64 %prol.iter148.next, %xtraiter146
  br i1 %prol.iter148.cmp.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, !llvm.loop !377

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader
  %.lcssa139.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fi, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi double [ %i.fb, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.dy, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.gk, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi double [ %i.gj, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !21
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !21
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.fn
  %i.fp = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !21
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fp
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !21
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fadd double %i.fo, %i.fu
  %i.fw = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !21
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fw
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !21
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fadd double %i.fv, %i.gb
  %i.gd = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !21
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.gd
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !21
  %i.gi = fmul double %i.gf, %i.gh
  %i.gj = fadd double %i.gc, %i.gi                ; 2 uses
  %i.gk = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gk, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !378

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %bb.g
  %.0.i.i.i.us15.i.i.i.i.i.i.i.i = phi double [ %i.fb, %bb.g ], [ %.lcssa139.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.gj, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us12.i.i.i.i.i.i.i.i
  store double %.0.i.i.i.us15.i.i.i.i.i.i.i.i, ptr %i.gl, align 8, !tbaa !21
  %i.gm = add nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond35.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gm, %i.bb
  br i1 %exitcond35.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, !llvm.loop !379

.lr.ph.split.split.split.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.bb, 1
  %i.gn = icmp eq i64 %i.bb, 1
  br i1 %i.gn, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bb, 9223372036854775806
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %i.go = xor i64 %i.bp, -1
  %i.gp = add i64 %i.b, %i.go
  %i.gq = add i64 %i.b, -2
  %i.gr = sub i64 %i.gq, %i.bp
  %xtraiter144 = and i64 %i.gp, 3                 ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  %i.gs = icmp ult i64 %i.gr, 3
  br label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i
  %.07.us16.i.i.i.i.i.i.i.i = phi i64 [ %i.ii, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i ; 6 uses
  %i.gu = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !18
  %i.gv = load <2 x double>, ptr %i.gt, align 1, !tbaa !18
  %i.gw = fmul <2 x double> %i.gu, %i.gv          ; 2 uses
  %shift128 = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop129 = fadd <2 x double> %i.gw, %shift128
  %i.gx = extractelement <2 x double> %foldExtExtBinop129, i64 0 ; 2 uses
  br i1 %lcmp.mod145.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol:     ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.he, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.bp, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ] ; 3 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol = phi double [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.gx, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %i.gy = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !21
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !21
  %i.hc = fmul double %i.gz, %i.hb
  %i.hd = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol, %i.hc ; 3 uses
  %i.he = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter144
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, !llvm.loop !380

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i
  %.lcssa141.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.he, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr = phi double [ %i.gx, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.gs, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i = phi i64 [ %i.ig, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i = phi double [ %i.if, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.hf = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !21
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !21
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i, %i.hj
  %i.hl = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !21
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hl
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !21
  %i.hq = fmul double %i.hn, %i.hp
  %i.hr = fadd double %i.hk, %i.hq
  %i.hs = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !21
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hs
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !21
  %i.hx = fmul double %i.hu, %i.hw
  %i.hy = fadd double %i.hr, %i.hx
  %i.hz = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !21
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hz
  %i.id = load double, ptr %i.ic, align 8, !tbaa !21
  %i.ie = fmul double %i.ib, %i.id
  %i.if = fadd double %i.hy, %i.ie                ; 2 uses
  %i.ig = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ig, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, !llvm.loop !378

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa141 = phi double [ %.lcssa141.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.if, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us16.i.i.i.i.i.i.i.i
  store double %.lcssa141, ptr %i.ih, align 8, !tbaa !21
  %i.ii = add nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ii, %i.bb
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, !llvm.loop !379

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new
  %.07.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %i.iw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ik = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !18
  %i.il = load <2 x double>, ptr %i.ij, align 1, !tbaa !18
  %i.im = fmul <2 x double> %i.ik, %i.il          ; 2 uses
  %shift131 = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132 = fadd <2 x double> %i.im, %shift131
  %i.in = extractelement <2 x double> %foldExtExtBinop132, i64 0
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i
  store double %i.in, ptr %i.io, align 8, !tbaa !21
  %i.ip = or disjoint i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ip, 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ir = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !18
  %i.is = load <2 x double>, ptr %i.iq, align 1, !tbaa !18
  %i.it = fmul <2 x double> %i.ir, %i.is          ; 2 uses
  %shift131.1 = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132.1 = fadd <2 x double> %i.it, %shift131.1
  %i.iu = extractelement <2 x double> %foldExtExtBinop132.1, i64 0
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ip
  store double %i.iu, ptr %i.iv, align 8, !tbaa !21
  %i.iw = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !379

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ], [ %i.iw, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i.epil.init, 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.iy = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !18
  %i.iz = load <2 x double>, ptr %i.ix, align 1, !tbaa !18
  %i.ja = fmul <2 x double> %i.iy, %i.iz          ; 2 uses
  %shift131.epil = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132.epil = fadd <2 x double> %i.ja, %shift131.epil
  %i.jb = extractelement <2 x double> %foldExtExtBinop132.epil, i64 0
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i.epil.init
  store double %i.jb, ptr %i.jc, align 8, !tbaa !21
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check103 = icmp ult i64 %i.bb, 9
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.jd = shl i64 %i.bb, 3
  %scevgep97 = getelementptr i8, ptr %3, i64 %i.jd
  %i.je = mul i64 %i.bb, 24
  %i.jf = getelementptr i8, ptr %i.bd, i64 %i.je
  %scevgep98 = getelementptr i8, ptr %i.jf, i64 -16
  %bound099 = icmp ult ptr %3, %scevgep98
  %bound1100 = icmp ult ptr %i.bd, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck96
  %i.jg = and i64 %i.bb, 3                        ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 0
  %i.ji = select i1 %i.jh, i64 4, i64 %i.jg
  %n.vec105 = sub nsw i64 %i.bb, %i.ji            ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next109, %vector.body106 ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index107 ; 3 uses
  %i.jk = mul nuw nsw i64 %index107, 24
  %i.jl = mul nuw i64 %index107, 24
  %i.jm = mul nuw i64 %index107, 24
  %i.jn = mul nuw i64 %index107, 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jm
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jn
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 72
  %i.jv = load double, ptr %i.jo, align 8, !tbaa !21, !alias.scope !406
  %i.jw = load double, ptr %i.jq, align 8, !tbaa !21, !alias.scope !406
  %i.jx = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jw, i64 1
  %i.jz = load double, ptr %i.js, align 8, !tbaa !21, !alias.scope !406
  %i.ka = load double, ptr %i.ju, align 8, !tbaa !21, !alias.scope !406
  %i.kb = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.ka, i64 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jj, align 8, !tbaa !21, !alias.scope !407, !noalias !406
  %wide.load108 = load <2 x double>, ptr %i.kd, align 8, !tbaa !21, !alias.scope !407, !noalias !406
  %i.ke = fadd <2 x double> %i.jy, %wide.load
  %i.kf = fadd <2 x double> %i.kc, %wide.load108
  store <2 x double> %i.ke, ptr %i.jj, align 8, !tbaa !21, !alias.scope !407, !noalias !406
  store <2 x double> %i.kf, ptr %i.kd, align 8, !tbaa !21, !alias.scope !407, !noalias !406
  %index.next109 = add nuw i64 %index107, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.kg, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.body106, !llvm.loop !384

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.body106, %vector.memcheck96, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec105, %vector.body106 ] ; 6 uses
  %i.kh = sub i64 %i.bb, %.05.i.i.i.i.i.i.ph
  %i.ki = add nsw i64 %i.bb, -1                   ; 2 uses
  %xtraiter152 = and i64 %i.kh, 1
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.ph, 24
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !21
  %i.km = load double, ptr %i.kj, align 8, !tbaa !21
  %i.kn = fadd double %i.kl, %i.km
  store double %i.kn, ptr %i.kj, align 8, !tbaa !21
  %i.ko = add nuw nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ko, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.kp = icmp eq i64 %i.ki, %.05.i.i.i.i.i.i.ph
  br i1 %i.kp, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.lb, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.05.i.i.i.i.i.i, 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !21
  %i.kt = load double, ptr %i.kq, align 8, !tbaa !21
  %i.ku = fadd double %i.ks, %i.kt
  store double %i.ku, ptr %i.kq, align 8, !tbaa !21
  %i.kv = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kv ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.kv, 24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.1
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !21
  %i.kz = load double, ptr %i.kw, align 8, !tbaa !21
  %i.la = fadd double %i.ky, %i.kz
  store double %i.la, ptr %i.kw, align 8, !tbaa !21
  %i.lb = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.lb, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !385

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.lc = load double, ptr %2, align 8, !tbaa !21, !noalias !408 ; 3 uses
  %xtraiter155 = and i64 %i.bb, 1
  %i.ld = icmp eq i64 %i.ki, 0
  br i1 %i.ld, label %.lr.ph.i.i.i.i.i.i8.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter158 = and i64 %i.bb, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.05.i.i.i.i.i.i9 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.lr, %.lr.ph.i.i.i.i.i.i8 ] ; 4 uses
  %niter159 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter159.next.1, %.lr.ph.i.i.i.i.i.i8 ]
  %.idx.i.i.i.i.i.i.i.i10 = mul nuw nsw i64 %.05.i.i.i.i.i.i9, 24
  %i.le = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !21
  %i.lh = fmul double %i.lc, %i.lg
  %i.li = load double, ptr %i.le, align 8, !tbaa !21
  %i.lj = fsub double %i.li, %i.lh
  store double %i.lj, ptr %i.le, align 8, !tbaa !21
  %i.lk = or disjoint i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i10.1 = mul nuw nsw i64 %i.lk, 24
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.1 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.lk
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !21
  %i.lo = fmul double %i.lc, %i.ln
  %i.lp = load double, ptr %i.ll, align 8, !tbaa !21
  %i.lq = fsub double %i.lp, %i.lo
  store double %i.lq, ptr %i.ll, align 8, !tbaa !21
  %i.lr = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %niter159.next.1 = add i64 %niter159, 2         ; 2 uses
  %niter159.ncmp.1 = icmp eq i64 %niter159.next.1, %unroll_iter158
  br i1 %niter159.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !388

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i8
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.epil.preheader

.lr.ph.i.i.i.i.i.i8.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.05.i.i.i.i.i.i9.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.lr, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %.idx.i.i.i.i.i.i.i.i10.epil = mul nuw nsw i64 %.05.i.i.i.i.i.i9.epil.init, 24
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.epil ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.epil.init
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !21
  %i.lv = fmul double %i.lc, %i.lu
  %i.lw = load double, ptr %i.ls, align 8, !tbaa !21
  %i.lx = fsub double %i.lw, %i.lv
  store double %i.lx, ptr %i.ls, align 8, !tbaa !21
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i8.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !21, !noalias !409
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.038.sroa.0.0.copyload, %bb.e ] ; 9 uses
  %i.ly = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.e ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload113 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ly, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.lz, align 8
  %i.ma = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.mb = lshr exact i64 %i.ma, 3
  %i.mc = and i64 %i.mb, 1
  %i.md = call i64 @llvm.smin.i64(i64 %i.mc, i64 %.sroa.6.sroa.4.0.copyload) ; 5 uses
  %i.me = sub i64 %.sroa.6.sroa.4.0.copyload, %i.md
  %i.mf = and i64 %i.me, -2                       ; 3 uses
  %i.mg = add nsw i64 %i.mf, %i.md                ; 5 uses
  %i.mh = icmp sgt i64 %i.md, 0
  br i1 %i.mh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.mi = load double, ptr %.sroa.6.sroa.0.0.copyload, align 8, !tbaa !21
  %i.mj = fmul double %i.ly, %i.mi
  store double %i.mj, ptr %4, align 8, !tbaa !21
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mf, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mk = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ml = icmp slt i64 %i.mg, %.sroa.6.sroa.4.0.copyload
  br i1 %i.ml, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mm = add i64 %i.md, %i.mf
  %i.mn = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mm ; 3 uses
  %min.iters.check115 = icmp ult i64 %i.mn, 6
  %i.mo = sub i64 %.sroa.6.sroa.0.0.copyload113, %i.ma
end_hunk_0
