Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pifft?download=true
inline.NumInlined: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@mp_mul_i2d:bb.a
  %scevgep = getelementptr i8, ptr %5, i64 %i.u
  %i.v = add nuw nsw i64 %i.s, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.v, i1 false), !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  %i.w = icmp sgt i32 %.044, 1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.x = sdiv i32 %1, 2
  %.not58 = icmp eq i32 %.044, 2
  br i1 %.not58, label %.._crit_edge57_crit_edge, label %.lr.ph56.preheader

.._crit_edge57_crit_edge:                         ; preds = %bb.d
  %.pre = sext i32 %3 to i64
  br label %._crit_edge57

.lr.ph56.preheader:                               ; preds = %bb.d
  %i.y = add nuw i32 %.044, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = sext i32 %3 to i64                      ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.aa
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv = phi i64 [ %i.z, %.lr.ph56.preheader ], [ %indvars.iv.next, %.lr.ph56 ] ; 4 uses
  %.04554 = phi i32 [ 0, %.lr.ph56.preheader ], [ %i.ad, %.lr.ph56 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ab = load i32, ptr %gep, align 4, !tbaa !23
  %i.ac = sub nsw i32 %i.ab, %.04554              ; 2 uses
  %.not51 = icmp sge i32 %i.ac, %i.x              ; 2 uses
  %i.ad = sext i1 %.not51 to i32                  ; 2 uses
  %i.ae = select i1 %.not51, i32 %1, i32 0
  %i.af = sub nsw i32 %i.ac, %i.ae
  %i.ag = sitofp i32 %i.af to double
  %i.ah = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  store double %i.ag, ptr %i.ai, align 8, !tbaa !28
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp sgt i64 %indvars.iv, 4
  br i1 %i.aj, label %.lr.ph56, label %._crit_edge57, !llvm.loop !10

._crit_edge57:                                    ; preds = %.lr.ph56, %.._crit_edge57_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge57_crit_edge ], [ %i.aa, %.lr.ph56 ]
  %.045.lcssa = phi i32 [ 0, %.._crit_edge57_crit_edge ], [ %i.ad, %.lr.ph56 ]
  %i.ak = getelementptr [4 x i8], ptr %4, i64 %.pre-phi
  %i.al = getelementptr i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !23
  %i.an = sub nsw i32 %i.am, %.045.lcssa
  %i.ao = sitofp i32 %i.an to double
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ao, ptr %i.ap, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge57, %._crit_edge
  %i.aq = sitofp i32 %.0 to double
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.aq, ptr %i.ar, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %i.au = sub nsw i32 %i.at, %3
  %i.av = sitofp i32 %i.au to double
  store double %i.av, ptr %5, align 8, !tbaa !28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_cmul(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !28
  %i.b = load double, ptr %2, align 8, !tbaa !28
  %i.c = fadd double %i.a, %i.b
  store double %i.c, ptr %2, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !28
  %i.h = fmul double %i.e, %i.g
  store double %i.h, ptr %i.f, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !28
  %i.m = fmul double %i.j, %i.l
  store double %i.m, ptr %i.k, align 8, !tbaa !28
  %i.n = icmp sgt i32 %0, 3
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = zext nneg i32 %0 to i64                  ; 3 uses
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 5)
  %i.q = add nsw i64 %i.p, -4                     ; 2 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw nsw i64 %i.r, 1                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %2, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.o, i64 5)
  %i.t = shl nuw nsw i64 %umax, 3
  %i.u = or i64 %i.t, 8                           ; 2 uses
  %scevgep35 = getelementptr i8, ptr %2, i64 %i.u
  %scevgep36 = getelementptr i8, ptr %1, i64 24
  %scevgep37 = getelementptr i8, ptr %1, i64 %i.u
  %bound0 = icmp ult ptr %scevgep, %scevgep37
  %bound1 = icmp ult ptr %scevgep36, %scevgep35
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 9223372036854775806      ; 2 uses
  %i.v = shl nuw i64 %i.s, 1
  %i.w = or i64 %i.v, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl nuw i64 %index, 1
  %i.y = or disjoint i64 %i.x, 3                  ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %wide.vec = load <4 x double>, ptr %i.z, align 8, !tbaa !28, !alias.scope !134 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec38 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.y ; 2 uses
  %wide.vec39 = load <4 x double>, ptr %i.aa, align 8, !tbaa !28, !alias.scope !135, !noalias !134 ; 2 uses
  %strided.vec40 = shufflevector <4 x double> %wide.vec39, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec41 = shufflevector <4 x double> %wide.vec39, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ab = fneg <2 x double> %strided.vec41
  %i.ac = fmul <2 x double> %strided.vec38, %i.ab
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec40, <2 x double> %i.ac)
  %i.ae = fmul <2 x double> %strided.vec38, %strided.vec40
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec41, <2 x double> %i.ae)
  %interleaved.vec = shufflevector <2 x double> %i.ad, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.aa, align 8, !tbaa !28, !alias.scope !135, !noalias !134
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader42 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load <2 x double>, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.am = load double, ptr %i.ak, align 8, !tbaa !28
  %i.an = load <2 x double>, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %i.ao = fneg double %i.am
  %i.ap = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ar = insertelement <2 x double> %i.aq, double %i.ao, i64 0
  %i.as = fmul <2 x double> %i.ap, %i.ar
  %i.at = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.an, <2 x double> %i.as)
  store <2 x double> %i.au, ptr %i.ai, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.aw = add nsw i32 %0, 1
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !28
  %i.ba = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ax ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !28
  %i.bc = fmul double %i.az, %i.bb
  store double %i.bc, ptr %i.ba, align 8, !tbaa !28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 3 uses
  %i.d = extractelement <2 x double> %i.c, i64 1  ; 6 uses
  %i.e = fdiv <2 x double> <double 2.000000e+00, double 1.000000e+00>, %i.c ; 2 uses
  %i.f = extractelement <2 x double> %i.e, i64 1  ; 4 uses
  %i.g = fmul double %i.f, %i.f                   ; 2 uses
  %i.h = add nsw i32 %2, 1                        ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %3, i64 %i.i ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !28 ; 4 uses
  %i.l = fcmp olt double %i.k, 0.000000e+00
  %i.m = fneg double %i.k
  %i.n = select i1 %i.l, double %i.m, double %i.k ; 2 uses
  %i.o = fadd double %i.n, 5.000000e-01
  %i.p = fcmp oge double %i.o, %i.d               ; 5 uses
  %i.q = zext i1 %i.p to i32                      ; 3 uses
  %i.r = extractelement <2 x double> %i.c, i64 0
  %i.s = fmul nnan double %i.r, 5.000000e-01
  %i.t = fmul double %i.s, %i.n                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !28
  %i.w = fsub double %i.v, %i.t
  store double %i.w, ptr %i.j, align 8, !tbaa !28
  store double %i.t, ptr %i.u, align 8, !tbaa !28
  %i.x = add nsw i32 %i.h, %i.q                   ; 2 uses
  %i.y = icmp sgt i32 %0, %i.x
  br i1 %i.y, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.z = add i32 %0, 1
  %5 = sext i32 %i.z to i64
  %6 = add nsw i32 %0, -2
  %7 = add i32 %2, %i.q
  %i.aa = sub i32 %6, %7
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = sub nsw i64 %5, %i.ab
  %i.ae = shl nsw i64 %i.ad, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.ae
  %i.af = add nuw nsw i64 %i.ac, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.af, i1 false), !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.0108 = phi i32 [ %0, %bb.a ], [ %i.x, %.loopexit.loopexit ] ; 3 uses
  %not. = xor i1 %i.p, true
  %i.ag = zext i1 %not. to i32
  %i.ah = add i32 %.0108, %i.ag                   ; 2 uses
  %.not121 = icmp sgt i32 %i.ah, %i.h
  br i1 %.not121, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.ai = sext i32 %i.ah to i64
  %i.aj = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.ai, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0124 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.an, %.lr.ph ] ; 2 uses
  %.0107123 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %.lr.ph ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  %i.al = load double, ptr %i.ak, align 8, !tbaa !28
  %i.am = tail call double @llvm.fmuladd.f64(double %.0124, double %i.al, double %.0107123) ; 2 uses
  %i.an = fmul double %i.f, %.0124                ; 2 uses
  %i.ao = fcmp olt double %i.an, f0x3CB0000000000000
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not = icmp sgt i64 %indvars.iv, %i.aj
  %or.cond = or i1 %i.ao, %.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %.1 = phi double [ 0.000000e+00, %.loopexit ], [ %i.am, %.lr.ph ]
  %i.ap = extractelement <2 x double> %i.e, i64 0 ; 3 uses
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %.1, double 5.000000e-01)
  %i.ar = fmul double %i.g, %i.aq                 ; 2 uses
  %i.as = fptosi double %i.ar to i32
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  %i.au = sitofp i32 %i.at to double              ; 2 uses
  %i.av = fsub double %i.ar, %i.au
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.d, double %i.av, double 5.000000e-01)
  %i.ax = fptosi double %i.aw to i32              ; 2 uses
  %i.ay = icmp sgt i32 %.0108, 1
  br i1 %i.ay, label %.lr.ph131.preheader, label %._crit_edge132

.lr.ph131.preheader:                              ; preds = %._crit_edge
  %i.az = zext nneg i32 %.0108 to i64
  %.neg = sext i1 %i.p to i64
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %.neg
  br label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv144 = phi i64 [ %i.az, %.lr.ph131.preheader ], [ %indvars.iv.next145, %.lr.ph131 ] ; 4 uses
  %.0110129 = phi i32 [ %i.at, %.lr.ph131.preheader ], [ %i.bg, %.lr.ph131 ]
  %.0111128 = phi i32 [ %i.ax, %.lr.ph131.preheader ], [ %i.br, %.lr.ph131 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv144
  %i.ba = load double, ptr %gep, align 8, !tbaa !28
  %i.bb = sitofp i32 %.0111128 to double
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ba, double %i.bb)
  %i.bd = fadd double %i.bc, 5.000000e-01
  %i.be = fmul double %i.g, %i.bd                 ; 2 uses
  %i.bf = fptosi double %i.be to i32
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  %i.bh = sitofp i32 %i.bg to double              ; 2 uses
  %i.bi = fsub double %i.be, %i.bh
  %i.bj = fmul double %i.bi, %i.d                 ; 2 uses
  %i.bk = fptosi double %i.bj to i32              ; 2 uses
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = fsub double %i.bj, %i.bl
  %i.bn = fmul double %i.bm, %i.d
  %i.bo = fptosi double %i.bn to i32
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv144
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !23
  %i.br = add nsw i32 %.0110129, %i.bk            ; 2 uses
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, -1
  %i.bs = icmp samesign ugt i64 %indvars.iv144, 2
  br i1 %i.bs, label %.lr.ph131, label %._crit_edge132, !llvm.loop !137

._crit_edge132:                                   ; preds = %.lr.ph131, %._crit_edge
  %.pre-phi = phi double [ %i.au, %._crit_edge ], [ %i.bh, %.lr.ph131 ]
  %.0111.lcssa = phi i32 [ %i.ax, %._crit_edge ], [ %i.br, %.lr.ph131 ]
  %i.bt = sitofp i32 %.0111.lcssa to double
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.d, double %.pre-phi, double %i.bt)
  %i.bv = fadd double %i.bu, 5.000000e-01         ; 2 uses
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.t, double %i.bv)
  %.2 = select i1 %i.p, double %i.bv, double %i.bw ; 2 uses
  %i.bx = fmul double %i.f, %.2
  %i.by = fptosi double %i.bx to i32              ; 3 uses
  %i.bz = sitofp i32 %i.by to double
  %i.ca = fneg double %i.d
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.bz, double %.2)
  %i.cc = fptosi double %i.cb to i32              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !23
  %i.ce = icmp sgt i32 %i.by, 0
  br i1 %i.ce, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge132
  %i.cf = icmp sgt i32 %0, 1
  br i1 %i.cf, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %bb.b
  %i.cg = add nuw i32 %0, 1                       ; 3 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 2                ; 2 uses
  %smin147 = tail call i32 @llvm.smin.i32(i32 %i.cg, i32 3)
  %i.cj = sub i32 %i.cg, %smin147
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2                ; 3 uses
  %i.cm = sub nsw i64 %i.ci, %i.cl
  %scevgep148.a = getelementptr i8, ptr %4, i64 %i.cm
  %i.cn = add nsw i64 %i.ci, -4
  %i.co = sub nsw i64 %i.cn, %i.cl
  %scevgep149 = getelementptr i8, ptr %4, i64 %i.co
  %i.cp = add nuw nsw i64 %i.cl, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep148.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep149, i64 %i.cp, i1 false), !tbaa !23
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %.lr.ph137.preheader, %bb.b
  store i32 %i.by, ptr %i.cd, align 4, !tbaa !23
  %i.cq = select i1 %i.p, i32 2, i32 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge138, %._crit_edge132
  %i.cr = phi i32 [ 1, %._crit_edge138 ], [ %i.cc, %._crit_edge132 ]
  %.0109 = phi i32 [ %i.cq, %._crit_edge138 ], [ %i.q, %._crit_edge132 ]
  %i.cs = load double, ptr %3, align 8, !tbaa !28
  %i.ct = uitofp nneg i32 %.0109 to double
  %i.cu = fadd double %i.cs, %i.ct
  %i.cv = fadd double %i.cu, 5.000000e-01         ; 2 uses
  %i.cw = fptosi double %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  %i.cy = sitofp i32 %i.cx to double
  %i.cz = fsub double %i.cv, %i.cy
  %i.da = fptosi double %i.cz to i32
  %i.db = add nsw i32 %i.cx, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !23
  %i.dd = fcmp ogt double %i.k, 5.000000e-01
  %i.de = select i1 %i.dd, i32 1, i32 -1
  store i32 %i.de, ptr %4, align 4, !tbaa !23
  %i.df = icmp eq i32 %i.cr, 0
  br i1 %i.df, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %4, align 4, !tbaa !23
  store i32 0, ptr %i.dc, align 4, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_cmuladd(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !28
  %i.g = tail call double @llvm.fmuladd.f64(double %i.b, double %i.d, double %i.f)
  store double %i.g, ptr %i.e, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !28
  %i.n = tail call double @llvm.fmuladd.f64(double %i.i, double %i.k, double %i.m)
  store double %i.n, ptr %i.l, align 8, !tbaa !28
  %i.o = icmp sgt i32 %0, 3
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = zext nneg i32 %0 to i64                  ; 3 uses
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.p, i64 5)
  %i.r = add nsw i64 %i.q, -4                     ; 2 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = add nuw nsw i64 %i.s, 1                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 10
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %3, i64 24     ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 5)
  %i.u = shl nuw nsw i64 %umax, 3
  %i.v = or i64 %i.u, 8                           ; 3 uses
  %scevgep37 = getelementptr i8, ptr %3, i64 %i.v ; 2 uses
  %scevgep38 = getelementptr i8, ptr %1, i64 24
  %scevgep39 = getelementptr i8, ptr %1, i64 %i.v
  %scevgep40 = getelementptr i8, ptr %2, i64 24
  %scevgep41 = getelementptr i8, ptr %2, i64 %i.v
  %bound0 = icmp ult ptr %scevgep, %scevgep39
  %bound1 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
