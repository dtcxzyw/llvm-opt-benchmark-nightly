Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pifft?download=true
inline.NumInlined: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@mp_mul_i2d:bb.a
._crit_edge57:                                    ; preds = %.lr.ph56, %.._crit_edge57_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge57_crit_edge ], [ %i.aa, %.lr.ph56 ]
  %.045.lcssa = phi i32 [ 0, %.._crit_edge57_crit_edge ], [ %i.ad, %.lr.ph56 ]
  %i.ak = getelementptr [4 x i8], ptr %4, i64 %.pre-phi
  %i.al = getelementptr i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = sub nsw i32 %i.am, %.045.lcssa
  %i.ao = sitofp i32 %i.an to double
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ao, ptr %i.ap, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge57, %._crit_edge
  %i.aq = sitofp i32 %.0 to double
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.aq, ptr %i.ar, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sub nsw i32 %i.at, %3
  %i.av = sitofp i32 %i.au to double
  store double %i.av, ptr %5, align 8, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_cmul(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !24
  %i.b = load double, ptr %2, align 8, !tbaa !24
  %i.c = fadd double %i.a, %i.b
  store double %i.c, ptr %2, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !24
  %i.h = fmul double %i.e, %i.g
  store double %i.h, ptr %i.f, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !24
  %i.m = fmul double %i.j, %i.l
  store double %i.m, ptr %i.k, align 8, !tbaa !24
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
  %wide.vec = load <4 x double>, ptr %i.z, align 8, !tbaa !24, !alias.scope !129 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec38 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.y ; 2 uses
  %wide.vec39 = load <4 x double>, ptr %i.aa, align 8, !tbaa !24, !alias.scope !132, !noalias !129 ; 2 uses
  %strided.vec40 = shufflevector <4 x double> %wide.vec39, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec41 = shufflevector <4 x double> %wide.vec39, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ab = fneg <2 x double> %strided.vec41
  %i.ac = fmul <2 x double> %strided.vec38, %i.ab
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec40, <2 x double> %i.ac)
  %i.ae = fmul <2 x double> %strided.vec38, %strided.vec40
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec41, <2 x double> %i.ae)
  %interleaved.vec = shufflevector <2 x double> %i.ad, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.aa, align 8, !tbaa !24, !alias.scope !132, !noalias !129
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader42 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aj
  %i.ao = load double, ptr %i.an, align 8, !tbaa !24
  %i.ap = load <2 x double>, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %i.aq = fneg double %i.ao
  %i.ar = insertelement <2 x double> poison, double %i.al, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x double> %i.at, double %i.aq, i64 0
  %i.av = fmul <2 x double> %i.as, %i.au
  %i.aw = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ap, <2 x double> %i.av)
  store <2 x double> %i.ay, ptr %i.am, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ba = add nsw i32 %0, 1
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !24
  %i.bg = fmul double %i.bd, %i.bf
  store double %i.bg, ptr %i.be, align 8, !tbaa !24
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
  %i.k = load double, ptr %i.j, align 8, !tbaa !24 ; 4 uses
  %i.l = fcmp olt double %i.k, 0.000000e+00
  %i.m = fneg double %i.k
  %i.n = select i1 %i.l, double %i.m, double %i.k ; 2 uses
  %i.o = fadd double %i.n, 5.000000e-01
  %i.p = fcmp oge double %i.o, %i.d               ; 5 uses
  %i.q = zext i1 %i.p to i32                      ; 2 uses
  %i.r = extractelement <2 x double> %i.c, i64 0
  %i.s = fmul nnan double %i.r, 5.000000e-01
  %i.t = fmul double %i.s, %i.n                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !24
  %i.w = fsub double %i.v, %i.t
  store double %i.w, ptr %i.j, align 8, !tbaa !24
  store double %i.t, ptr %i.u, align 8, !tbaa !24
  %i.x = add nsw i32 %i.h, %i.q                   ; 3 uses
  %i.y = icmp sgt i32 %0, %i.x
  br i1 %i.y, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.z = add i32 %0, 1
  %i.aa = add nsw i32 %i.x, 1
  %i.ab = sext i32 %i.z to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.aa)
  %i.ac = sub i32 %0, %smin
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = sub nsw i64 %i.ab, %i.ad
  %i.ag = shl nsw i64 %i.af, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.ag
  %i.ah = add nuw nsw i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ah, i1 false), !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.0108 = phi i32 [ %0, %bb.a ], [ %i.x, %.loopexit.loopexit ] ; 3 uses
  %not. = xor i1 %i.p, true
  %i.ai = zext i1 %not. to i32
  %i.aj = add i32 %.0108, %i.ai                   ; 2 uses
  %.not121 = icmp sgt i32 %i.aj, %i.h
  br i1 %.not121, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.ak = sext i32 %i.aj to i64
  %i.al = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0124 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.0107123 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ao, %.lr.ph ]
  %i.am = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8, !tbaa !24
  %i.ao = tail call double @llvm.fmuladd.f64(double %.0124, double %i.an, double %.0107123) ; 2 uses
  %i.ap = fmul double %i.f, %.0124                ; 2 uses
  %i.aq = fcmp olt double %i.ap, f0x3CB0000000000000
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not = icmp sgt i64 %indvars.iv, %i.al
  %or.cond = or i1 %i.aq, %.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %.1 = phi double [ 0.000000e+00, %.loopexit ], [ %i.ao, %.lr.ph ]
  %i.ar = extractelement <2 x double> %i.e, i64 0 ; 3 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %.1, double 5.000000e-01)
  %i.at = fmul double %i.g, %i.as                 ; 2 uses
  %i.au = fptosi double %i.at to i32
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  %i.aw = sitofp i32 %i.av to double              ; 2 uses
  %i.ax = fsub double %i.at, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.d, double %i.ax, double 5.000000e-01)
  %i.az = fptosi double %i.ay to i32              ; 2 uses
  %i.ba = icmp sgt i32 %.0108, 1
  br i1 %i.ba, label %.lr.ph131.preheader, label %._crit_edge132

.lr.ph131.preheader:                              ; preds = %._crit_edge
  %i.bb = zext nneg i32 %.0108 to i64
  %.neg = sext i1 %i.p to i64
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %.neg
  br label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv144 = phi i64 [ %i.bb, %.lr.ph131.preheader ], [ %indvars.iv.next145, %.lr.ph131 ] ; 4 uses
  %.0110129 = phi i32 [ %i.av, %.lr.ph131.preheader ], [ %i.bi, %.lr.ph131 ]
  %.0111128 = phi i32 [ %i.az, %.lr.ph131.preheader ], [ %i.bt, %.lr.ph131 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv144
  %i.bc = load double, ptr %gep, align 8, !tbaa !24
  %i.bd = sitofp i32 %.0111128 to double
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.bc, double %i.bd)
  %i.bf = fadd double %i.be, 5.000000e-01
  %i.bg = fmul double %i.g, %i.bf                 ; 2 uses
  %i.bh = fptosi double %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  %i.bj = sitofp i32 %i.bi to double              ; 2 uses
  %i.bk = fsub double %i.bg, %i.bj
  %i.bl = fmul double %i.bk, %i.d                 ; 2 uses
  %i.bm = fptosi double %i.bl to i32              ; 2 uses
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fsub double %i.bl, %i.bn
  %i.bp = fmul double %i.bo, %i.d
  %i.bq = fptosi double %i.bp to i32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv144
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !4
  %i.bt = add nsw i32 %.0110129, %i.bm            ; 2 uses
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, -1
  %i.bu = icmp samesign ugt i64 %indvars.iv144, 2
  br i1 %i.bu, label %.lr.ph131, label %._crit_edge132, !llvm.loop !137

._crit_edge132:                                   ; preds = %.lr.ph131, %._crit_edge
  %.pre-phi = phi double [ %i.aw, %._crit_edge ], [ %i.bj, %.lr.ph131 ]
  %.0111.lcssa = phi i32 [ %i.az, %._crit_edge ], [ %i.bt, %.lr.ph131 ]
  %i.bv = sitofp i32 %.0111.lcssa to double
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.d, double %.pre-phi, double %i.bv)
  %i.bx = fadd double %i.bw, 5.000000e-01         ; 2 uses
  %i.by = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.t, double %i.bx)
  %.2 = select i1 %i.p, double %i.bx, double %i.by ; 2 uses
  %i.bz = fmul double %i.f, %.2
  %i.ca = fptosi double %i.bz to i32              ; 3 uses
  %i.cb = sitofp i32 %i.ca to double
  %i.cc = fneg double %i.d
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cb, double %.2)
  %i.ce = fptosi double %i.cd to i32              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !4
  %i.cg = icmp sgt i32 %i.ca, 0
  br i1 %i.cg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge132
  %i.ch = icmp sgt i32 %0, 1
  br i1 %i.ch, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %bb.b
  %i.ci = add nuw i32 %0, 1                       ; 3 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  %smin147 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 3)
  %i.cl = sub i32 %i.ci, %smin147
  %i.cm = zext i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2                ; 3 uses
  %i.co = sub nsw i64 %i.ck, %i.cn
  %scevgep148 = getelementptr i8, ptr %4, i64 %i.co
  %i.cp = add nsw i64 %i.ck, -4
  %i.cq = sub nsw i64 %i.cp, %i.cn
  %scevgep149 = getelementptr i8, ptr %4, i64 %i.cq
  %i.cr = add nuw nsw i64 %i.cn, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep148, ptr noundef nonnull align 4 dereferenceable(1) %scevgep149, i64 %i.cr, i1 false), !tbaa !4
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %.lr.ph137.preheader, %bb.b
  store i32 %i.ca, ptr %i.cf, align 4, !tbaa !4
  %i.cs = select i1 %i.p, i32 2, i32 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge138, %._crit_edge132
  %i.ct = phi i32 [ 1, %._crit_edge138 ], [ %i.ce, %._crit_edge132 ]
  %.0109 = phi i32 [ %i.cs, %._crit_edge138 ], [ %i.q, %._crit_edge132 ]
  %i.cu = load double, ptr %3, align 8, !tbaa !24
  %i.cv = uitofp nneg i32 %.0109 to double
  %i.cw = fadd double %i.cu, %i.cv
  %i.cx = fadd double %i.cw, 5.000000e-01         ; 2 uses
  %i.cy = fptosi double %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  %i.da = sitofp i32 %i.cz to double
  %i.db = fsub double %i.cx, %i.da
  %i.dc = fptosi double %i.db to i32
  %i.dd = add nsw i32 %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !4
  %i.df = fcmp ogt double %i.k, 5.000000e-01
  %i.dg = select i1 %i.df, i32 1, i32 -1
  store i32 %i.dg, ptr %4, align 4, !tbaa !4
  %i.dh = icmp eq i32 %i.ct, 0
  br i1 %i.dh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %4, align 4, !tbaa !4
  store i32 0, ptr %i.de, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_cmuladd(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call double @llvm.fmuladd.f64(double %i.b, double %i.d, double %i.f)
  store double %i.g, ptr %i.e, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !24
  %i.n = tail call double @llvm.fmuladd.f64(double %i.i, double %i.k, double %i.m)
  store double %i.n, ptr %i.l, align 8, !tbaa !24
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
  %bound042 = icmp ult ptr %scevgep, %scevgep41
  %bound143 = icmp ult ptr %scevgep40, %scevgep37
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  br i1 %conflict.rdx, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775806      ; 2 uses
  %i.w = shl nuw i64 %i.t, 1
  %i.x = or i64 %i.w, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl nuw i64 %index, 1
  %i.z = or disjoint i64 %i.y, 3                  ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %wide.vec = load <4 x double>, ptr %i.aa, align 8, !tbaa !24, !alias.scope !138 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec45 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z
  %wide.vec46 = load <4 x double>, ptr %i.ab, align 8, !tbaa !24, !alias.scope !141 ; 2 uses
  %strided.vec47 = shufflevector <4 x double> %wide.vec46, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec48 = shufflevector <4 x double> %wide.vec46, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ac = fneg <2 x double> %strided.vec48
  %i.ad = fmul <2 x double> %strided.vec45, %i.ac
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec47, <2 x double> %i.ad)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.z ; 2 uses
  %wide.vec49 = load <4 x double>, ptr %i.af, align 8, !tbaa !24, !alias.scope !143, !noalias !145 ; 2 uses
  %strided.vec50 = shufflevector <4 x double> %wide.vec49, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec51 = shufflevector <4 x double> %wide.vec49, <4 x double> poison, <2 x i32> <i32 1, i32 3>
end_hunk_0
