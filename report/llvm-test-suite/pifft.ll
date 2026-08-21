Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pifft?download=true
inline.NumInlined: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@mp_squ:bb.a
  %bound0 = icmp ult ptr %scevgep, %scevgep117
  %bound1 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 9223372036854775806     ; 2 uses
  %i.dl = shl nuw i64 %i.di, 1
  %i.dm = or i64 %i.dl, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl nuw i64 %index, 1
  %i.do = or disjoint i64 %i.dn, 3                ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.do
  %wide.vec = load <4 x double>, ptr %i.dp, align 8, !tbaa !24, !alias.scope !93 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec118 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.do ; 2 uses
  %wide.vec119 = load <4 x double>, ptr %i.dq, align 8, !tbaa !24, !alias.scope !96, !noalias !93 ; 2 uses
  %strided.vec120 = shufflevector <4 x double> %wide.vec119, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec121 = shufflevector <4 x double> %wide.vec119, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dr = fneg <2 x double> %strided.vec121
  %i.ds = fmul <2 x double> %strided.vec118, %i.dr
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec120, <2 x double> %i.ds)
  %i.du = fmul <2 x double> %strided.vec118, %strided.vec120
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec121, <2 x double> %i.du)
  %interleaved.vec = shufflevector <2 x double> %i.dt, <2 x double> %i.dv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.dq, align 8, !tbaa !24, !alias.scope !96, !noalias !93
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %mp_mul_cmul.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i86, %middle.block
  %indvars.iv.i87.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader.i86 ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i87 = phi i64 [ %indvars.iv.next.i88, %.lr.ph.i ], [ %indvars.iv.i87.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i87
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !24
  %i.dz = add nuw nsw i64 %indvars.iv.i87, 1      ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i87 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.dz
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ef = load <2 x double>, ptr %i.ec, align 8, !tbaa !24 ; 2 uses
  %i.eg = fneg double %i.ee
  %i.eh = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ek = insertelement <2 x double> %i.ej, double %i.eg, i64 0
  %i.el = fmul <2 x double> %i.ei, %i.ek
  %i.em = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.ef, <2 x double> %i.el)
  store <2 x double> %i.eo, ptr %i.ec, align 8, !tbaa !24
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 2 ; 2 uses
  %i.ep = icmp samesign ult i64 %indvars.iv.next.i88, %i.de
  br i1 %i.ep, label %.lr.ph.i, label %mp_mul_cmul.exit, !llvm.loop !99

mp_mul_cmul.exit:                                 ; preds = %.lr.ph.i, %middle.block, %mp_mul_i2d.exit84
  %i.eq = add nsw i32 %5, 1
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %6, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !24
  %i.eu = getelementptr inbounds [8 x i8], ptr %7, i64 %i.er ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !24
  %i.ew = fmul double %i.et, %i.ev
  store double %i.ew, ptr %i.eu, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %5, i32 noundef -1, ptr noundef nonnull %i.co, ptr noundef %8, ptr noundef %9) #21
  tail call void @mp_mul_d2i(i32 noundef %spec.select, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %7, ptr noundef %4)
  tail call void @mp_add(i32 noundef %spec.select, i32 noundef %1, ptr noundef %4, ptr noundef %4, ptr noundef %4)
  %i.ex = load <2 x double>, ptr %6, align 8, !tbaa !24 ; 2 uses
  %i.ey = insertelement <2 x double> %i.ex, double 2.000000e+00, i64 0
  %i.ez = fmul <2 x double> %i.ex, %i.ey
  store <2 x double> %i.ez, ptr %6, align 8, !tbaa !24
  %i.fa = load double, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %i.fb = fmul double %i.fa, %i.fa
  store double %i.fb, ptr %i.cy, align 8, !tbaa !24
  br i1 %i.dd, label %.lr.ph.preheader.i92, label %mp_mul_csqu.exit

.lr.ph.preheader.i92:                             ; preds = %mp_mul_cmul.exit
  %i.fc = zext nneg i32 %5 to i64                 ; 4 uses
  %i.fd = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 5)
  %i.fe = add nsw i64 %i.fd, -4
  %i.ff = lshr i64 %i.fe, 1                       ; 2 uses
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 3 uses
  %min.iters.check123 = icmp eq i64 %i.ff, 0
  br i1 %min.iters.check123, label %.lr.ph.i93.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph.preheader.i92
  %n.vec125 = and i64 %i.fg, 9223372036854775806  ; 2 uses
  %i.fh = shl nuw i64 %i.fg, 1
  %i.fi = or i64 %i.fh, 3
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body126 ] ; 2 uses
  %.idx = shl nuw i64 %index127, 4
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 %.idx
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 2 uses
  %wide.vec128 = load <4 x double>, ptr %i.fk, align 8, !tbaa !24 ; 2 uses
  %strided.vec129 = shufflevector <4 x double> %wide.vec128, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec130 = shufflevector <4 x double> %wide.vec128, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.fl = fneg <2 x double> %strided.vec130
  %i.fm = fmul <2 x double> %strided.vec130, %i.fl
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec129, <2 x double> %strided.vec129, <2 x double> %i.fm)
  %i.fo = fmul <2 x double> %strided.vec129, splat (double 2.000000e+00)
  %i.fp = fmul <2 x double> %i.fo, %strided.vec130
  %interleaved.vec131 = shufflevector <2 x double> %i.fn, <2 x double> %i.fp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec131, ptr %i.fk, align 8, !tbaa !24
  %index.next132 = add nuw i64 %index127, 2       ; 2 uses
  %i.fq = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.fq, label %middle.block133, label %vector.body126, !llvm.loop !100

middle.block133:                                  ; preds = %vector.body126
  %cmp.n134 = icmp eq i64 %i.fg, %n.vec125
  br i1 %cmp.n134, label %mp_mul_csqu.exit, label %.lr.ph.i93.preheader

.lr.ph.i93.preheader:                             ; preds = %.lr.ph.preheader.i92, %middle.block133
  %indvars.iv.i94.ph = phi i64 [ 3, %.lr.ph.preheader.i92 ], [ %i.fi, %middle.block133 ]
  br label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %.lr.ph.i93.preheader, %.lr.ph.i93
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i95, %.lr.ph.i93 ], [ %indvars.iv.i94.ph, %.lr.ph.i93.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i94 ; 3 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !24 ; 3 uses
  %i.fv = fneg double %i.fu
  %i.fw = fmul double %i.fu, %i.fv
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.fs, double %i.fw)
  store double %i.fx, ptr %i.fr, align 8, !tbaa !24
  %i.fy = fmul double %i.fs, 2.000000e+00
  %i.fz = fmul double %i.fy, %i.fu
  store double %i.fz, ptr %i.ft, align 8, !tbaa !24
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 2 ; 2 uses
  %i.ga = icmp samesign ult i64 %indvars.iv.next.i95, %i.fc
  br i1 %i.ga, label %.lr.ph.i93, label %mp_mul_csqu.exit, !llvm.loop !101

mp_mul_csqu.exit:                                 ; preds = %.lr.ph.i93, %middle.block133, %mp_mul_cmul.exit
  %.pre-phi.i91 = phi i64 [ %i.u, %mp_mul_cmul.exit ], [ %i.fc, %middle.block133 ], [ %i.fc, %.lr.ph.i93 ]
  %i.gb = getelementptr [8 x i8], ptr %6, i64 %.pre-phi.i91
  %i.gc = getelementptr i8, ptr %i.gb, i64 8      ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !24 ; 2 uses
  %i.ge = fmul double %i.gd, %i.gd
  store double %i.ge, ptr %i.gc, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %5, i32 noundef -1, ptr noundef nonnull %i.ay, ptr noundef %8, ptr noundef %9) #21
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %3)
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @mp_idiv(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %mp_load_0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  %i.d = sub nsw i32 0, %i.c
  %.sink = select i1 %i.b, i32 %i.c, i32 %i.d
  store i32 %.sink, ptr %4, align 4, !tbaa !4
  %i.e = load i32, ptr %2, align 4, !tbaa !4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not4.i = icmp slt i32 %0, -1
  br i1 %.not4.i, label %mp_load_0.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.g = add i32 %0, 2
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %4, i8 0, i64 %i.i, i1 false), !tbaa !4
  br label %mp_load_0.exit

bb.d:                                             ; preds = %bb.b
  %.016 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %i.j = sitofp i32 %1 to double                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = uitofp nneg i32 %.016 to double          ; 3 uses
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = sext i32 %0 to i64                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.d ] ; 3 uses
  %.0.i = phi double [ %.1.i, %bb.g ], [ 0.000000e+00, %bb.d ]
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = fmul double %.0.i, %i.j                  ; 2 uses
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.n
  br i1 %.not.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sitofp i32 %i.q to double
  %i.s = fadd double %i.o, %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi double [ %i.s, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  %i.t = fcmp olt double %.1.i, %i.m
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.t, label %bb.e, label %bb.h, !llvm.loop !102

bb.h:                                             ; preds = %bb.g
  %indvars19.le = trunc i64 %indvars.iv.i to i32  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.v = fdiv double 1.000000e+00, %i.l           ; 3 uses
  %i.w = fadd double %.1.i, 5.000000e-01          ; 2 uses
  %i.x = fmul double %i.v, %i.w
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fneg double %i.l                        ; 3 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.z, double %i.w)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.ac, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !4
  %i.ae = sub nsw i32 %i.ad, %indvars19.le
  store i32 %i.ae, ptr %i.u, align 4, !tbaa !4
  %i.af = add nsw i32 %0, -1                      ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %indvars19.le, i32 %i.af) ; 3 uses
  %i.ag = sub i32 %0, %spec.select.i              ; 2 uses
  %.05968.i = fptosi double %i.ab to i32          ; 2 uses
  %.not6669.i = icmp slt i32 %i.ag, 2
  br i1 %.not6669.i, label %.preheader.i, label %.lr.ph.preheader.i18

.lr.ph.preheader.i18:                             ; preds = %bb.h
  %i.ah = sext i32 %spec.select.i to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.k, i64 %i.ah
  %smin = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.af)
  %i.ai = sub i32 %0, %smin
  %i.aj = zext i32 %i.ai to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.h
  %.059.lcssa.i = phi i32 [ %.05968.i, %bb.h ], [ %.059.i, %.lr.ph.i ]
  %.not67.not73.i = icmp sgt i32 %spec.select.i, 0
  br i1 %.not67.not73.i, label %.lr.ph76.preheader.i, label %mp_load_0.exit

.lr.ph76.preheader.i:                             ; preds = %.preheader.i
  %i.ak = sext i32 %i.ag to i64
  br label %.lr.ph76.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i18
  %indvars.iv79.i = phi i64 [ 2, %.lr.ph.preheader.i18 ], [ %indvars.iv.next80.i, %.lr.ph.i ] ; 4 uses
  %.05971.i = phi i32 [ %.05968.i, %.lr.ph.preheader.i18 ], [ %.059.i, %.lr.ph.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv79.i
  %i.al = load i32, ptr %gep.i, align 4, !tbaa !4
  %i.am = sitofp i32 %i.al to double
  %i.an = sitofp i32 %.05971.i to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.j, double %i.an, double %i.am)
  %i.ap = fadd double %i.ao, 5.000000e-01         ; 2 uses
  %i.aq = fmul double %i.v, %i.ap
  %i.ar = fptosi double %i.aq to i32              ; 2 uses
  %i.as = sitofp i32 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.as, double %i.ap)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv79.i
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !4
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %.059.i = fptosi double %i.at to i32            ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv79.i, %i.aj
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph.i, !llvm.loop !103

.lr.ph76.i:                                       ; preds = %.lr.ph76.i, %.lr.ph76.preheader.i
  %indvars.iv84.i = phi i64 [ %i.ak, %.lr.ph76.preheader.i ], [ %indvars.iv.next85.i, %.lr.ph76.i ]
  %.16075.i = phi i32 [ %.059.lcssa.i, %.lr.ph76.preheader.i ], [ %i.bb, %.lr.ph76.i ]
  %indvars.iv.next85.i = add nsw i64 %indvars.iv84.i, 1 ; 3 uses
  %i.av = sitofp i32 %.16075.i to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.j, double %i.av, double 5.000000e-01) ; 2 uses
  %i.ax = fmul double %i.v, %i.aw
  %i.ay = fptosi double %i.ax to i32              ; 2 uses
  %i.az = sitofp i32 %i.ay to double
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.az, double %i.aw)
  %i.bb = fptosi double %i.ba to i32
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next85.i
  store i32 %i.ay, ptr %i.bc, align 4, !tbaa !4
  %.not67.not.i = icmp slt i64 %indvars.iv.next85.i, %i.n
  br i1 %.not67.not.i, label %.lr.ph76.i, label %mp_load_0.exit, !llvm.loop !104

mp_load_0.exit:                                   ; preds = %.lr.ph76.i, %.preheader.i, %.lr.ph.preheader.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %.lr.ph.preheader.i ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %.preheader.i ], [ 0, %.lr.ph76.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @mp_sprintf(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 45, ptr %3, align 1, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.056 = phi ptr [ %i.c, %bb.b ], [ %3, %bb.a ]  ; 14 uses
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.063 = phi i32 [ %1, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ]
  %.05162 = phi i32 [ %i.f, %.lr.ph.preheader ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.h = srem i32 %.05162, 10                     ; 2 uses
  %i.i = sdiv i32 %.05162, 10
  %i.j = trunc nsw i32 %i.h to i8
  %i.k = add nsw i8 %i.j, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv
  store i8 %i.k, ptr %i.l, align 1, !tbaa !31
  %.not60 = icmp eq i32 %i.h, 0
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %.not60, i32 %.063, i32 %i.m ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.n = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i32 [ %1, %bb.c ], [ %spec.select, %.lr.ph ] ; 3 uses
  %i.o = sext i32 %.0.lcssa to i64                ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.056, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31
  store i8 %i.q, ptr %.056, align 1, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %.056, i64 1
  store i8 46, ptr %i.r, align 1, !tbaa !31
  %i.s = sub nsw i32 %1, %.0.lcssa                ; 3 uses
  %.not64 = icmp slt i32 %i.s, 1
  br i1 %.not64, label %._crit_edge68, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.t = add i32 %1, 1
  %i.u = sub i32 %i.t, %.0.lcssa
  %wide.trip.count = zext i32 %i.u to i64         ; 4 uses
  %invariant.gep = getelementptr i8, ptr %.056, i64 %i.o ; 7 uses
  %i.v = add nsw i64 %wide.trip.count, -1         ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  %i.w = add nsw i64 %i.o, 30
  %diff.check = icmp ult i64 %i.w, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph67.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check98 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.v, 24
  %n.vec = and i64 %i.v, -32                      ; 4 uses
  %i.y = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  %i.ab = getelementptr i8, ptr %i.z, i64 17
  %wide.load = load <16 x i8>, ptr %i.aa, align 1, !tbaa !31
  %wide.load99 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %.056, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 18
  store <16 x i8> %wide.load, ptr %i.ad, align 1, !tbaa !31
  store <16 x i8> %wide.load99, ptr %i.ae, align 1, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph67.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.v, -8                    ; 3 uses
  %i.ag = or disjoint i64 %n.vec100, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %index101
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  %wide.load102 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %.056, i64 %index101
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store <8 x i8> %wide.load102, ptr %i.ak, align 1, !tbaa !31
  %index.next103 = add nuw i64 %index101, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next103, %n.vec100
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108
end_hunk_0
begin_hunk_1_@mp_unexp_sub:bb.a
.preheader71:                                     ; preds = %.lr.ph.epil.preheader, %.preheader71.loopexit.unr-lcssa, %bb.a
  %.056.lcssa = phi i32 [ 0, %bb.a ], [ %.lobit64.1, %.preheader71.loopexit.unr-lcssa ], [ %.lobit64.epil, %.lr.ph.epil.preheader ]
  %i.p = icmp sgt i32 %spec.select, 0
  br i1 %i.p, label %.lr.ph79.preheader, label %.preheader69

.lr.ph79.preheader:                               ; preds = %.preheader71
  %i.q = zext nneg i32 %spec.select to i64
  br label %.lr.ph79

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.a, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 2 uses
  %.05676 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.lobit64.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = sub nsw i64 %indvars.iv.next, %i.b
  %i.u = getelementptr inbounds [4 x i8], ptr %4, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = sub nsw i32 %i.s, %i.v
  %i.x = add nsw i32 %i.w, %.05676                ; 2 uses
  %.lobit64 = ashr i32 %i.x, 31                   ; 2 uses
  %i.y = and i32 %.lobit64, %1
  %i.z = add nsw i32 %i.y, %i.x
  %i.aa = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 5 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sub nsw i64 %indvars.iv.next.1, %i.b
  %i.ae = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = sub nsw i32 %i.ac, %i.af
  %i.ah = add nsw i32 %i.ag, %.lobit64            ; 2 uses
  %.lobit64.1 = ashr i32 %i.ah, 31                ; 4 uses
  %i.ai = and i32 %.lobit64.1, %1
  %i.aj = add nsw i32 %i.ai, %i.ah
  %i.ak = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next.1
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !4
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader71.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !50

.preheader69:                                     ; preds = %.lr.ph79, %.preheader71
  %i.al = icmp sgt i32 %0, 0
  br i1 %i.al, label %.lr.ph81.preheader, label %.critedge.thread

.lr.ph81.preheader:                               ; preds = %.preheader69
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph81

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %indvars.iv91 = phi i64 [ %i.q, %.lr.ph79.preheader ], [ %indvars.iv.next92, %.lr.ph79 ] ; 2 uses
  %.178 = phi i32 [ %.056.lcssa, %.lr.ph79.preheader ], [ %.lobit, %.lr.ph79 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, -1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next92
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = add nsw i32 %i.an, %.178                ; 2 uses
  %.lobit = ashr i32 %i.ao, 31                    ; 2 uses
  %i.ap = and i32 %.lobit, %1
  %i.aq = add nsw i32 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next92
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !4
  %i.as = icmp samesign ugt i64 %indvars.iv91, 1
  br i1 %i.as, label %.lr.ph79, label %.preheader69, !llvm.loop !51

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.b
  %indvars.iv101 = phi i32 [ %0, %.lr.ph81.preheader ], [ %indvars.iv.next102, %bb.b ] ; 3 uses
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81.preheader ], [ %indvars.iv.next95, %bb.b ] ; 7 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv94
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph81
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count
  %indvars.iv.next102 = add i32 %indvars.iv101, -1
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph81, !llvm.loop !52

.critedge:                                        ; preds = %.lr.ph81
  %i.aw = trunc nuw nsw i64 %indvars.iv94 to i32  ; 2 uses
  %.not.not67 = icmp eq i64 %indvars.iv94, 0
  br i1 %.not.not67, label %.critedge.thread, label %.preheader68

.preheader68:                                     ; preds = %.critedge
  %i.ax = sub nsw i32 %0, %i.aw                   ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph84.preheader, label %.lr.ph87.preheader

.lr.ph84.preheader:                               ; preds = %.preheader68
  %wide.trip.count104 = zext i32 %indvars.iv101 to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv94 ; 2 uses
  %min.iters.check = icmp ult i32 %indvars.iv101, 8
  br i1 %min.iters.check, label %.lr.ph84.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.preheader
  %n.vec = and i64 %wide.trip.count104, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !4
  %wide.load117 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> %wide.load, ptr %i.bb, align 4, !tbaa !4
  store <4 x i32> %wide.load117, ptr %i.bc, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count104
  br i1 %cmp.n, label %.lr.ph87.preheader, label %.lr.ph84.preheader118

.lr.ph84.preheader118:                            ; preds = %.lr.ph84.preheader, %middle.block
  %indvars.iv98.ph = phi i64 [ 0, %.lr.ph84.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph84

.lr.ph87.preheader:                               ; preds = %.lr.ph84, %middle.block, %.preheader68
  %i.be = sext i32 %i.ax to i64
  %i.bf = shl nsw i64 %i.be, 2
  %scevgep = getelementptr i8, ptr %5, i64 %i.bf
  %i.bg = add nuw i32 %0, 1
  %i.bh = trunc i64 %indvars.iv94 to i32
  %i.bi = sub i32 %i.bg, %i.bh
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 %i.bi)
  %i.bj = xor i32 %0, -1
  %i.bk = trunc i64 %indvars.iv94 to i32
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = add i32 %smax, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bp, i1 false), !tbaa !4
  br label %.critedge.thread

.lr.ph84:                                         ; preds = %.lr.ph84.preheader118, %.lr.ph84
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph84 ], [ %indvars.iv98.ph, %.lr.ph84.preheader118 ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv98
  %i.bq = load i32, ptr %gep, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv98
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count104
  br i1 %exitcond105.not, label %.lr.ph87.preheader, label %.lr.ph84, !llvm.loop !119

.critedge.thread:                                 ; preds = %bb.b, %.lr.ph87.preheader, %.preheader69, %.critedge
  %.073 = phi i32 [ 0, %.preheader69 ], [ 0, %.critedge ], [ %i.aw, %.lr.ph87.preheader ], [ %0, %bb.b ]
  ret i32 %.073
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_unsgn_imul(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fdiv double 1.000000e+00, %1             ; 8 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = fneg double %1
  %i.d = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.04959 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.b ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = sitofp i32 %i.f to double
  %i.h = sitofp i32 %.04959 to double
  %i.i = tail call double @llvm.fmuladd.f64(double %3, double %i.g, double %i.h)
  %i.j = fadd double %i.i, 5.000000e-01           ; 2 uses
  %i.k = fmul double %i.a, %i.j
  %i.l = fptosi double %i.k to i32                ; 3 uses
  %i.m = sitofp i32 %i.l to double
  %i.n = tail call double @llvm.fmuladd.f64(double %i.c, double %i.m, double %i.j)
  %i.o = fptosi double %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.o, ptr %i.p, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.q = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.049.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %bb.b ] ; 6 uses
  %i.r = sitofp i32 %.049.lcssa to double
  %i.s = fadd double %i.r, 5.000000e-01           ; 2 uses
  %i.t = fcmp ogt double %i.s, 1.000000e+00
  br i1 %i.t, label %.lr.ph63, label %._crit_edge64.thread

._crit_edge64.thread:                             ; preds = %._crit_edge
  %i.u = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.u, ptr %4, align 4, !tbaa !4
  br label %.loopexit

.lr.ph63:                                         ; preds = %._crit_edge, %.lr.ph63
  %indvar = phi i64 [ %indvar.next, %.lr.ph63 ], [ 0, %._crit_edge ] ; 4 uses
  %.061 = phi double [ %i.v, %.lr.ph63 ], [ %i.s, %._crit_edge ]
  %.04860 = phi i32 [ %i.w, %.lr.ph63 ], [ 0, %._crit_edge ] ; 2 uses
  %i.v = fmul double %i.a, %.061                  ; 2 uses
  %i.w = add nuw nsw i32 %.04860, 1               ; 9 uses
  %i.x = fcmp ogt double %i.v, 1.000000e+00
  %indvar.next = add i64 %indvar, 1
  br i1 %i.x, label %.lr.ph63, label %.preheader57, !llvm.loop !121

.preheader57:                                     ; preds = %.lr.ph63
  %i.y = load i32, ptr %2, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, %i.w
  store i32 %i.z, ptr %4, align 4, !tbaa !4
  %.not = icmp slt i32 %.04860, %0
  br i1 %.not, label %.preheader56, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader57
  %i.aa = trunc i64 %indvar to i32
  %reass.sub = sub i32 %i.aa, %0
  %i.ab = add i32 %reass.sub, 1
  %i.ac = trunc i64 %indvar to i32
  %i.ad = sub i32 %i.ac, %0
  %xtraiter = and i32 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol

.lr.ph68.prol:                                    ; preds = %.lr.ph68.preheader, %.lr.ph68.prol
  %.167.prol = phi i32 [ %i.ah, %.lr.ph68.prol ], [ %i.w, %.lr.ph68.preheader ]
  %.15066.prol = phi i32 [ %i.ag, %.lr.ph68.prol ], [ %.049.lcssa, %.lr.ph68.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph68.prol ], [ 0, %.lr.ph68.preheader ]
  %i.ae = sitofp i32 %.15066.prol to double
  %i.af = tail call double @llvm.fmuladd.f64(double %i.a, double %i.ae, double 5.000000e-01)
  %i.ag = fptosi double %i.af to i32              ; 3 uses
  %i.ah = add nsw i32 %.167.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol, !llvm.loop !122

.lr.ph68.prol.loopexit:                           ; preds = %.lr.ph68.prol, %.lr.ph68.preheader
  %.167.unr = phi i32 [ %i.w, %.lr.ph68.preheader ], [ %i.ah, %.lr.ph68.prol ]
  %.15066.unr = phi i32 [ %.049.lcssa, %.lr.ph68.preheader ], [ %i.ag, %.lr.ph68.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph68.preheader ], [ %i.ag, %.lr.ph68.prol ]
  %i.ai = icmp ult i32 %i.ad, 3
  br i1 %i.ai, label %.preheader, label %.lr.ph68

.preheader56:                                     ; preds = %.preheader57
  %.not55.not71 = icmp sgt i32 %0, %i.w
  br i1 %.not55.not71, label %.lr.ph73.preheader, label %.lr.ph76

.lr.ph73.preheader:                               ; preds = %.preheader56
  %i.aj = sext i32 %0 to i64                      ; 6 uses
  %i.ak = zext nneg i32 %i.w to i64               ; 4 uses
  %5 = add nsw i64 %i.aj, -1
  %6 = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %5)
  %7 = sub i64 %i.aj, %6                          ; 3 uses
  %min.iters.check = icmp ult i64 %7, 12
  br i1 %min.iters.check, label %.lr.ph73.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.preheader
  %i.al = shl i64 %indvar, 2
  %i.am = add i64 %i.al, 35
  %diff.check = icmp ult i64 %i.am, 31
  br i1 %diff.check, label %.lr.ph73.preheader104, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, -8                         ; 3 uses
  %i.an = sub i64 %i.aj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = sub i64 %i.aj, %index                   ; 2 uses
  %i.ap = sub nsw i64 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -12
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load103 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %i.at = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ao ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -12
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -28
  store <4 x i32> %wide.load, ptr %i.au, align 4, !tbaa !4
  store <4 x i32> %wide.load103, ptr %i.av, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.lr.ph76, label %.lr.ph73.preheader104

.lr.ph73.preheader104:                            ; preds = %vector.memcheck, %.lr.ph73.preheader, %middle.block
  %indvars.iv81.ph = phi i64 [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph73.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph73

.lr.ph68:                                         ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68
  %.167 = phi i32 [ %i.bj, %.lr.ph68 ], [ %.167.unr, %.lr.ph68.prol.loopexit ]
  %.15066 = phi i32 [ %i.bi, %.lr.ph68 ], [ %.15066.unr, %.lr.ph68.prol.loopexit ]
  %i.ax = sitofp i32 %.15066 to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.a, double %i.ax, double 5.000000e-01)
  %i.az = fptosi double %i.ay to i32
  %i.ba = sitofp i32 %i.az to double
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.a, double %i.ba, double 5.000000e-01)
  %i.bc = fptosi double %i.bb to i32
  %i.bd = sitofp i32 %i.bc to double
  %i.be = tail call double @llvm.fmuladd.f64(double %i.a, double %i.bd, double 5.000000e-01)
  %i.bf = fptosi double %i.be to i32
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.a, double %i.bg, double 5.000000e-01)
  %i.bi = fptosi double %i.bh to i32              ; 2 uses
  %i.bj = add nsw i32 %.167, -4                   ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, %0
  br i1 %i.bk, label %.lr.ph68, label %.preheader, !llvm.loop !124

.preheader:                                       ; preds = %.lr.ph68, %.lr.ph68.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph68.prol.loopexit ], [ %i.bi, %.lr.ph68 ]
  %i.bl = icmp sgt i32 %0, 0
  br i1 %i.bl, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph73, %middle.block, %.preheader56, %.preheader
  %.150.lcssa9398 = phi i32 [ %.lcssa, %.preheader ], [ %.049.lcssa, %.preheader56 ], [ %.049.lcssa, %middle.block ], [ %.049.lcssa, %.lr.ph73 ]
  %.1.lcssa9497 = phi i32 [ %0, %.preheader ], [ %i.w, %.preheader56 ], [ %i.w, %middle.block ], [ %i.w, %.lr.ph73 ]
  %i.bm = fneg double %1
  %i.bn = zext nneg i32 %.1.lcssa9497 to i64
  br label %bb.c

.lr.ph73:                                         ; preds = %.lr.ph73.preheader104, %.lr.ph73
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.lr.ph73 ], [ %indvars.iv81.ph, %.lr.ph73.preheader104 ] ; 3 uses
  %i.bo = sub nsw i64 %indvars.iv81, %i.ak
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv81
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1 ; 2 uses
  %.not55.not = icmp sgt i64 %indvars.iv.next82, %i.ak
  br i1 %.not55.not, label %.lr.ph73, label %.lr.ph76, !llvm.loop !125

bb.c:                                             ; preds = %.lr.ph76, %bb.c
  %indvars.iv84 = phi i64 [ %i.bn, %.lr.ph76 ], [ %indvars.iv.next85, %bb.c ] ; 3 uses
  %.275 = phi i32 [ %.150.lcssa9398, %.lr.ph76 ], [ %i.bv, %bb.c ]
  %i.bs = sitofp i32 %.275 to double
  %i.bt = fadd double %i.bs, 5.000000e-01         ; 2 uses
  %i.bu = fmul double %i.a, %i.bt
  %i.bv = fptosi double %i.bu to i32              ; 2 uses
  %i.bw = sitofp i32 %i.bv to double
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bw, double %i.bt)
  %i.by = fptosi double %i.bx to i32
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv84
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !4
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, -1
  %i.ca = icmp samesign ugt i64 %indvars.iv84, 1
  br i1 %i.ca, label %bb.c, label %.loopexit, !llvm.loop !126

.loopexit:                                        ; preds = %bb.c, %._crit_edge64.thread, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_unsgn_idiv(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fadd double %3, -5.000000e-01
  %i.b = sext i32 %0 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv82 = phi i32 [ %indvars.iv.next83, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.0 = phi double [ %.1, %bb.d ], [ 0.000000e+00, %bb.a ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = fmul double %1, %.0                      ; 2 uses
  %.not.not = icmp slt i64 %indvars.iv, %i.b
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = sitofp i32 %i.e to double
  %i.g = fadd double %i.c, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi double [ %i.g, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.h = fcmp olt double %.1, %i.a
  %indvars.iv.next83 = add nuw i32 %indvars.iv82, 1
  br i1 %i.h, label %bb.b, label %bb.e, !llvm.loop !102

bb.e:                                             ; preds = %bb.d
  %i.i = fdiv double 1.000000e+00, %3             ; 3 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.k = fadd double %.1, 5.000000e-01            ; 2 uses
  %i.l = fmul double %i.i, %i.k
  %i.m = fptosi double %i.l to i32                ; 2 uses
  %i.n = sitofp i32 %i.m to double
  %i.o = fneg double %3                           ; 3 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.n, double %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.m, ptr %i.q, align 4, !tbaa !4
  %i.r = load i32, ptr %2, align 4, !tbaa !4
  %i.s = sub nsw i32 %i.r, %i.j
  store i32 %i.s, ptr %4, align 4, !tbaa !4
  %i.t = add nsw i32 %0, -1                       ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.t) ; 3 uses
  %i.u = sub nsw i32 %0, %spec.select             ; 2 uses
  %.05968 = fptosi double %i.p to i32             ; 2 uses
  %.not6669 = icmp slt i32 %i.u, 2
  br i1 %.not6669, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.v = sext i32 %spec.select to i64
  %i.w = zext nneg i32 %i.u to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.v
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.e
  %.059.lcssa = phi i32 [ %.05968, %bb.e ], [ %.059, %.lr.ph ]
  %.not67.not73 = icmp sgt i32 %spec.select, 0
  br i1 %.not67.not73, label %.lr.ph76.preheader, label %._crit_edge

.lr.ph76.preheader:                               ; preds = %.preheader
  %smin = tail call i32 @llvm.smin.i32(i32 %indvars.iv82, i32 %i.t)
  %i.x = sub i32 %0, %smin
  %i.y = sext i32 %i.x to i64
  br label %.lr.ph76

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv79 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next80, %.lr.ph ] ; 4 uses
  %.05971 = phi i32 [ %.05968, %.lr.ph.preheader ], [ %.059, %.lr.ph ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv79
  %i.z = load i32, ptr %gep, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = sitofp i32 %.05971 to double
  %i.ac = tail call double @llvm.fmuladd.f64(double %1, double %i.ab, double %i.aa)
  %i.ad = fadd double %i.ac, 5.000000e-01         ; 2 uses
  %i.ae = fmul double %i.i, %i.ad
  %i.af = fptosi double %i.ae to i32              ; 2 uses
  %i.ag = sitofp i32 %i.af to double
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ag, double %i.ad)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv79
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %.059 = fptosi double %i.ah to i32              ; 2 uses
  %.not66.not = icmp samesign ult i64 %indvars.iv79, %i.w
  br i1 %.not66.not, label %.lr.ph, label %.preheader, !llvm.loop !103

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.lr.ph76
  %indvars.iv84 = phi i64 [ %i.y, %.lr.ph76.preheader ], [ %indvars.iv.next85, %.lr.ph76 ]
  %.16075 = phi i32 [ %.059.lcssa, %.lr.ph76.preheader ], [ %i.ap, %.lr.ph76 ]
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 3 uses
  %i.aj = sitofp i32 %.16075 to double
  %i.ak = tail call double @llvm.fmuladd.f64(double %1, double %i.aj, double 5.000000e-01) ; 2 uses
  %i.al = fmul double %i.i, %i.ak
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %i.an = sitofp i32 %i.am to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.o, double %i.an, double %i.ak)
  %i.ap = fptosi double %i.ao to i32
  %i.aq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next85
  store i32 %i.am, ptr %i.aq, align 4, !tbaa !4
  %.not67.not = icmp slt i64 %indvars.iv.next85, %i.b
  br i1 %.not67.not, label %.lr.ph76, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph76, %.preheader
  ret void
}

declare void @rdft(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_csqu(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !24 ; 2 uses
  %i.b = insertelement <2 x double> %i.a, double 2.000000e+00, i64 0
  %i.c = fmul <2 x double> %i.a, %i.b
  store <2 x double> %i.c, ptr %1, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.f = fmul double %i.e, %i.e
  store double %i.f, ptr %i.d, align 8, !tbaa !24
  %i.g = icmp sgt i32 %0, 3
  br i1 %i.g, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %0 to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = zext nneg i32 %0 to i64                  ; 4 uses
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 5)
  %i.j = add nsw i64 %i.i, -4
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 3 uses
  %min.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, 9223372036854775806      ; 2 uses
  %i.m = shl nuw i64 %i.l, 1
  %i.n = or i64 %i.m, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.p, align 8, !tbaa !24 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec29 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.q = fneg <2 x double> %strided.vec29
  %i.r = fmul <2 x double> %strided.vec29, %i.q
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec, <2 x double> %i.r)
  %i.t = fmul <2 x double> %strided.vec, splat (double 2.000000e+00)
  %i.u = fmul <2 x double> %i.t, %strided.vec29
  %interleaved.vec = shufflevector <2 x double> %i.s, <2 x double> %i.u, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.p, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 3, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader30 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !24 ; 3 uses
  %i.aa = fneg double %i.z
  %i.ab = fmul double %i.z, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.ab)
  store double %i.ac, ptr %i.w, align 8, !tbaa !24
  %i.ad = fmul double %i.x, 2.000000e+00
  %i.ae = fmul double %i.ad, %i.z
  store double %i.ae, ptr %i.y, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !128

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %.pre-phi
  %i.ah = getelementptr i8, ptr %i.ag, i64 8      ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = fmul double %i.ai, %i.ai
  store double %i.aj, ptr %i.ah, align 8, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local double @mp_mul_d2i_test(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %0, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 3 uses
  %i.d = fdiv <2 x double> <double 2.000000e+00, double 1.000000e+00>, %i.c ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.d, %i.d
  %i.e = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.f = add nsw i32 %1, 1                        ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !24
  %i.j = extractelement <2 x double> %i.c, i64 0
  %i.k = fmul double %i.i, %i.j
  %i.l = fmul double %i.k, 5.000000e-01           ; 3 uses
  %i.m = fcmp olt double %i.l, 0.000000e+00
  %i.n = fneg double %i.l
  %.040 = select i1 %i.m, double %i.n, double %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !24
  %i.q = fsub double %i.p, %.040
  store double %i.q, ptr %i.h, align 8, !tbaa !24
  %i.r = icmp sgt i32 %1, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = zext nneg i32 %i.f to i64
  %i.t = extractelement <2 x double> %i.d, i64 0
  %i.u = extractelement <2 x double> %i.c, i64 1  ; 2 uses
  br label %.lr.ph
end_hunk_1
begin_hunk_2_@mp_sqrt_newton:bb.a
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !4
  br label %._crit_edge.i130

._crit_edge.i130:                                 ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i130.loopexit.unr-lcssa, %mp_round.exit128
  %.0.lcssa.i = phi i32 [ %spec.store.select.neg.i, %mp_round.exit128 ], [ %i.gp, %._crit_edge.i130.loopexit.unr-lcssa ], [ %i.gw, %.lr.ph.i.epil.preheader ]
  br i1 %i.ft, label %bb.q, label %mp_idiv_2.exit

bb.q:                                             ; preds = %._crit_edge.i130
  %i.gz = and i32 %.0.lcssa.i, %1
  %i.ha = ashr i32 %i.gz, 1
  %i.hb = sext i32 %i.fw to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hb
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !4
  br label %mp_idiv_2.exit

mp_idiv_2.exit:                                   ; preds = %._crit_edge.i130, %bb.q
  %i.hd = icmp eq i32 %i.ep, 0
  %i.he = add nsw i32 %6, 1
  %i.hf = sub i32 %i.ei, %i.ek
  %i.hg = icmp sgt i32 %i.em, %i.eo
  %i.hh = zext i1 %i.hg to i32
  %spec.select101 = add nsw i32 %i.hf, %i.hh
  %.1 = select i1 %i.hd, i32 %i.he, i32 %spec.select101
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %3)
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @mp_unexp_mp2d(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = fdiv double 1.000000e+00, %i.a           ; 5 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64                  ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.d, %.lr.ph.preheader ]
  %.010.prol = phi double [ %i.h, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.prol
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = sitofp i32 %i.f to double
  %i.h = tail call double @llvm.fmuladd.f64(double %i.b, double %.010.prol, double %i.g) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !171

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.010.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %i.i = icmp ult i32 %0, 4
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.010 = phi double [ %i.ab, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ]
  %i.j = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = sitofp i32 %i.l to double
  %i.n = tail call double @llvm.fmuladd.f64(double %i.b, double %.010, double %i.m)
  %i.o = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sitofp i32 %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.b, double %i.n, double %i.r)
  %i.t = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.u = getelementptr i8, ptr %i.t, i64 -12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = sitofp i32 %i.v to double
  %i.x = tail call double @llvm.fmuladd.f64(double %i.b, double %i.s, double %i.w)
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.3
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.b, double %i.x, double %i.aa) ; 2 uses
  %i.ac = icmp sgt i64 %indvars.iv, 4
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ab, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @mp_unexp_d2mp(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1                       ; 3 uses
  %i.c = sitofp i32 %1 to double                  ; 4 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %0, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.01417 = phi double [ %2, %.lr.ph.new ], [ %i.m, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.e = fptosi double %.01417 to i32             ; 2 uses
  %.not = icmp sgt i32 %1, %i.e
  %.1 = select i1 %.not, double %.01417, double %i.c
  %.0 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.b) ; 2 uses
  %i.f = sitofp i32 %.0 to double
  %i.g = fsub double %.1, %i.f
  %i.h = fmul double %i.g, %i.c                   ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %.0, ptr %i.i, align 4, !tbaa !4
  %i.j = fptosi double %i.h to i32                ; 2 uses
  %.not.1 = icmp sgt i32 %1, %i.j
  %.1.1 = select i1 %.not.1, double %i.h, double %i.c
  %.0.1 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.b) ; 2 uses
  %i.k = sitofp i32 %.0.1 to double
  %i.l = fsub double %.1.1, %i.k
  %i.m = fmul double %i.l, %i.c                   ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.0.1, ptr %i.o, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !46

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01417.epil.init = phi double [ %2, %.lr.ph ], [ %i.m, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.p = fptosi double %.01417.epil.init to i32
  %.0.epil = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.b)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  store i32 %.0.epil, ptr %i.q, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !14, !17, !16}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14, !16, !17}
!21 = distinct !{!21, !14, !17, !16}
!22 = distinct !{!22, !14, !16, !17}
!23 = distinct !{!23, !14, !17, !16}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = distinct !{!26, !14, !16, !17}
!27 = distinct !{!27, !14, !17, !16}
!28 = distinct !{!28, !14, !16, !17}
!29 = distinct !{!29, !14, !17, !16}
!30 = distinct !{!30, !14}
!31 = !{!6, !6, i64 0}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14, !16, !17}
!40 = distinct !{!40, !14, !41, !16, !17}
!41 = !{!"llvm.loop.peeled.count", i32 1}
!42 = distinct !{!42, !14, !17, !16}
!43 = distinct !{!43, !14, !41, !17, !16}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14, !16, !17}
!54 = distinct !{!54, !14, !17, !16}
!55 = distinct !{!55, !14, !16, !17}
!56 = distinct !{!56, !14, !17, !16}
!57 = distinct !{!57, !14, !16, !17}
!58 = distinct !{!58, !14, !17, !16}
!59 = distinct !{!59, !14, !16, !17}
!60 = distinct !{!60, !14, !17, !16}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = !{!65}
!65 = distinct !{!65, !66}
!66 = distinct !{!66, !"LVerDomain"}
!67 = !{!68}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !14, !16, !17}
!70 = distinct !{!70, !14, !16}
!71 = !{!72}
!72 = distinct !{!72, !73}
!73 = distinct !{!73, !"LVerDomain"}
!74 = !{!75}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !14, !16, !17}
!77 = distinct !{!77, !14, !16}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = !{!84}
!84 = distinct !{!84, !80}
!85 = !{!79, !82}
!86 = distinct !{!86, !14, !16, !17}
!87 = distinct !{!87, !14, !16}
!88 = distinct !{!88, !14, !16, !17}
!89 = distinct !{!89, !14, !17, !16}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !14, !16, !17}
!99 = distinct !{!99, !14, !16}
!100 = distinct !{!100, !14, !16, !17}
!101 = distinct !{!101, !14, !17, !16}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14}
!106 = distinct !{!106, !14, !16, !17}
!107 = !{!"branch_weights", i32 8, i32 24}
!108 = distinct !{!108, !14, !16, !17}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !14, !16}
!112 = distinct !{!112, !14}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14}
!115 = distinct !{!115, !14}
!116 = distinct !{!116, !14}
!117 = distinct !{!117, !14}
!118 = distinct !{!118, !14, !16, !17}
!119 = distinct !{!119, !14, !17, !16}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !110}
!123 = distinct !{!123, !14, !16, !17}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14, !16}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14, !16, !17}
!128 = distinct !{!128, !14, !17, !16}
!129 = !{!130}
!130 = distinct !{!130, !131}
!131 = distinct !{!131, !"LVerDomain"}
!132 = !{!133}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !14, !16, !17}
!135 = distinct !{!135, !14, !16}
!136 = distinct !{!136, !14}
!137 = distinct !{!137, !14}
!138 = !{!139}
!139 = distinct !{!139, !140}
!140 = distinct !{!140, !"LVerDomain"}
!141 = !{!142}
!142 = distinct !{!142, !140}
!143 = !{!144}
!144 = distinct !{!144, !140}
!145 = !{!139, !142}
!146 = distinct !{!146, !14, !16, !17}
!147 = distinct !{!147, !14, !16}
!148 = !{!149}
!149 = distinct !{!149, !150}
!150 = distinct !{!150, !"LVerDomain"}
!151 = !{!152}
!152 = distinct !{!152, !150}
!153 = distinct !{!153, !14, !16, !17}
!154 = distinct !{!154, !14, !16}
!155 = distinct !{!155, !14}
!156 = !{!157}
!157 = distinct !{!157, !158}
!158 = distinct !{!158, !"LVerDomain"}
!159 = !{!160}
!160 = distinct !{!160, !158}
!161 = distinct !{!161, !14, !16, !17}
!162 = distinct !{!162, !14, !16}
!163 = distinct !{!163, !14, !16, !17}
!164 = distinct !{!164, !14, !17, !16}
!165 = distinct !{!165, !110}
!166 = distinct !{!166, !110}
!167 = distinct !{!167, !14, !16, !17}
!168 = distinct !{!168, !14, !17, !16}
end_hunk_2
