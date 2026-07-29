inline.NumInlined: 9
inline.NumDeleted: 2
begin_hunk_0_@ScaleToConstraint:bb.a
  %.2 = phi float [ %.1., %bb.f ], [ %.1, %bb.e ]
  %i.v = fmul float %.2, 1.280000e+02
  %i.w = fptosi float %i.v to i32
  ret i32 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @InvScaleConstraint(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.c = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.b, ptr noundef nonnull @.str.1) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !11     ; 2 uses
  %i.e = icmp eq i32 %i.d, 8388607
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = shl nsw i32 %i.d, 7
  %i.g = sdiv i32 %i.f, %1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.g, i32 8388607)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i32 [ 8388607, %bb.c ], [ %spec.select, %bb.d ]
  store i32 %i.h, ptr %0, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10   ; 2 uses
  %i.k = icmp eq i32 %i.j, 8388607
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = shl nsw i32 %i.j, 7
  %i.m = sdiv i32 %i.l, %1
  %spec.select23 = tail call i32 @llvm.smin.i32(i32 %i.m, i32 8388607)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ 8388607, %bb.e ], [ %spec.select23, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8    ; 2 uses
  %i.r = icmp eq i32 %i.q, 8388607
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = shl nsw i32 %i.q, 7
  %i.t = sdiv i32 %i.s, %1
  %spec.select24 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 8388607)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = phi i32 [ 8388607, %bb.g ], [ %spec.select24, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.v, align 4, !tbaa !8
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @RotateConstraint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = sitofp i32 %2 to float
  %i.b = fmul nnan float %i.a, 2.000000e+00
  %i.c = fpext nnan float %i.b to double
  %i.d = fmul nnan double %i.c, f0x400921FB54442D18
  %i.e = fdiv double %i.d, 4.608000e+04           ; 2 uses
  %.097 = fptrunc double %i.e to float            ; 2 uses
  %i.f = fcmp olt double %i.e, f0xB690000000000000
  br i1 %i.f, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi float [ %.097, %bb.a ], [ %.0, %.lr.ph ] ; 2 uses
  %i.g = fpext float %.0.lcssa to double          ; 3 uses
  %i.h = fcmp ult double %i.g, f0x401921FB54442D18
  br i1 %i.h, label %._crit_edge, label %.lr.ph99

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.098 = phi float [ %.0, %.lr.ph ], [ %.097, %bb.a ]
  %i.i = fpext float %.098 to double
  %i.j = fadd double %i.i, f0x401921FB54442D18    ; 2 uses
  %.0 = fptrunc double %i.j to float              ; 2 uses
  %i.k = fcmp olt double %i.j, f0xB690000000000000
  br i1 %i.k, label %.lr.ph, label %.preheader, !llvm.loop !14

.lr.ph99:                                         ; preds = %.preheader, %.lr.ph99
  %i.l = phi double [ %i.o, %.lr.ph99 ], [ %i.g, %.preheader ]
  %i.m = fadd double %i.l, f0xC01921FB54442D18
  %i.n = fptrunc double %i.m to float             ; 2 uses
  %i.o = fpext float %i.n to double               ; 3 uses
  %i.p = fcmp ult double %i.o, f0x401921FB54442D18
  br i1 %i.p, label %._crit_edge, label %.lr.ph99, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph99, %.preheader
  %.1.lcssa = phi float [ %.0.lcssa, %.preheader ], [ %i.n, %.lr.ph99 ] ; 2 uses
  %.lcssa = phi double [ %i.g, %.preheader ], [ %i.o, %.lr.ph99 ] ; 7 uses
  %i.q = fcmp ult float %.1.lcssa, 0.000000e+00
  %i.r = fcmp ugt double %.lcssa, f0x401921FB54442D18
  %or.cond = or i1 %i.q, %i.r
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.s = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.t = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.s, ptr noundef nonnull @.str.2) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.u = fcmp ugt double %.lcssa, f0x3FF921FB54442D18
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.z = fcmp ugt double %.lcssa, f0x400921FB54442D18
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = fadd double %.lcssa, f0xBFF921FB54442D18
  %i.ab = fptrunc double %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ag = fcmp ugt double %.lcssa, f0x4012D97C7F3321D2
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = fadd double %.lcssa, f0xC00921FB54442D18
  %i.ai = fptrunc double %i.ah to float
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.an = fadd double %.lcssa, f0xC012D97C7F3321D2
  %i.ao = fptrunc double %i.an to float
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  %.sroa.084.0.in = phi ptr [ %i.ar, %bb.i ], [ %i.al, %bb.h ], [ %3, %bb.f ], [ %4, %bb.d ]
  %.sroa.886.0.in = phi ptr [ %i.as, %bb.i ], [ %i.am, %bb.h ], [ %i.ae, %bb.f ], [ %i.x, %bb.d ]
  %.sroa.1488.0.in = phi ptr [ %3, %bb.i ], [ %4, %bb.h ], [ %i.af, %bb.f ], [ %i.y, %bb.d ]
  %.sroa.090.0.in = phi ptr [ %4, %bb.i ], [ %i.aj, %bb.h ], [ %i.ac, %bb.f ], [ %3, %bb.d ]
  %.sroa.892.0.in = phi ptr [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.ad, %bb.f ], [ %i.v, %bb.d ]
  %.sroa.1494.0.in = phi ptr [ %i.aq, %bb.i ], [ %3, %bb.h ], [ %4, %bb.f ], [ %i.w, %bb.d ]
  %.2 = phi float [ %i.ao, %bb.i ], [ %i.ai, %bb.h ], [ %i.ab, %bb.f ], [ %.1.lcssa, %bb.d ]
  %.sroa.1494.0 = load i32, ptr %.sroa.1494.0.in, align 4, !tbaa !4 ; 2 uses
  %.sroa.892.0 = load i32, ptr %.sroa.892.0.in, align 4, !tbaa !10 ; 2 uses
  %.sroa.090.0 = load i32, ptr %.sroa.090.0.in, align 4, !tbaa !4 ; 2 uses
  %.sroa.1488.0 = load i32, ptr %.sroa.1488.0.in, align 4, !tbaa !4 ; 2 uses
  %.sroa.886.0 = load i32, ptr %.sroa.886.0.in, align 4, !tbaa !10 ; 2 uses
  %.sroa.084.0 = load i32, ptr %.sroa.084.0.in, align 4, !tbaa !4 ; 2 uses
  %i.at = fpext float %.2 to double               ; 5 uses
  %i.au = fsub double f0x3FF921FB54442D18, %i.at
  %i.av = fptrunc double %i.au to float           ; 2 uses
  %i.aw = icmp eq i32 %5, 0
  br i1 %i.aw, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bb = tail call double @cos(double noundef %i.at) #7, !tbaa !4
  %i.bc = fptrunc double %i.bb to float           ; 3 uses
  %i.bd = tail call double @sin(double noundef %i.at) #7, !tbaa !4
  %i.be = tail call float @llvm.fabs.f32(float %i.bc)
  %i.bf = fpext float %i.be to double
  %i.bg = fcmp olt double %i.bf, f0x3EB0C6F7A0B5ED8D
  br i1 %i.bg, label %SemiRotateConstraint.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = fptrunc double %i.bd to float
  %i.bi = insertelement <2 x i32> poison, i32 %i.ay, i64 0
  %i.bj = insertelement <2 x i32> %i.bi, i32 %i.ba, i64 1
  %i.bk = sitofp <2 x i32> %i.bj to <2 x float>
  %i.bl = insertelement <2 x i32> poison, i32 %.sroa.892.0, i64 0
  %i.bm = insertelement <2 x i32> %i.bl, i32 %.sroa.1494.0, i64 1
  %i.bn = sitofp <2 x i32> %i.bm to <2 x float>
  %6 = sitofp i32 %.sroa.090.0 to float
  %i.bo = fneg <2 x float> %i.bk                  ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = insertelement <2 x float> poison, float %6, i64 0
  %i.bs = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bq, <2 x float> %i.bn) ; 2 uses
  %i.bv = shufflevector <2 x float> %i.br, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bq, <2 x float> %i.bv)
  %i.bx = fdiv <2 x float> %i.bw, %i.bt           ; 2 uses
  %i.by = fcmp oge <2 x float> %i.bx, splat (float f0x4AFFFFFE)
  %i.bz = select <2 x i1> %i.by, <2 x float> splat (float f0x4AFFFFFE), <2 x float> %i.bx
  %i.ca = fptosi <2 x float> %i.bz to <2 x i32>
  %i.cb = extractelement <2 x float> %i.bu, i64 1
  %i.cc = fdiv float %i.cb, %i.bc                 ; 2 uses
  %.inv39.i = fcmp oge float %i.cc, f0x4AFFFFFE
  %i.cd = select i1 %.inv39.i, float f0x4AFFFFFE, float %i.cc
  %i.ce = fptosi float %i.cd to i32
  br label %SemiRotateConstraint.exit

SemiRotateConstraint.exit:                        ; preds = %bb.k, %bb.l
  %.sink.i = phi i32 [ %i.ce, %bb.l ], [ 8388607, %bb.k ]
  %i.cf = phi <2 x i32> [ %i.ca, %bb.l ], [ splat (i32 8388607), %bb.k ]
  store <2 x i32> %i.cf, ptr %0, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %.sink.i, ptr %i.cg, align 4, !tbaa !8
  %i.ch = load i32, ptr %i.az, align 4, !tbaa !17
  %i.ci = load i32, ptr %i.ax, align 4, !tbaa !17
  %i.cj = fpext float %i.av to double             ; 2 uses
  %i.ck = tail call double @cos(double noundef %i.cj) #7, !tbaa !4
  %i.cl = fptrunc double %i.ck to float           ; 3 uses
  %i.cm = tail call double @sin(double noundef %i.cj) #7, !tbaa !4
  %i.cn = tail call float @llvm.fabs.f32(float %i.cl)
  %i.co = fpext float %i.cn to double
  %i.cp = fcmp olt double %i.co, f0x3EB0C6F7A0B5ED8D
  br i1 %i.cp, label %SemiRotateConstraint.exit63, label %bb.m

bb.m:                                             ; preds = %SemiRotateConstraint.exit
  %i.cq = fptrunc double %i.cm to float
  %i.cr = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %i.cs = insertelement <2 x i32> %i.cr, i32 %i.ci, i64 1
  %i.ct = sitofp <2 x i32> %i.cs to <2 x float>
  %i.cu = insertelement <2 x i32> poison, i32 %.sroa.886.0, i64 0
  %i.cv = insertelement <2 x i32> %i.cu, i32 %.sroa.084.0, i64 1
  %i.cw = sitofp <2 x i32> %i.cv to <2 x float>
  %7 = sitofp i32 %.sroa.1488.0 to float
  %i.cx = fneg <2 x float> %i.ct                  ; 2 uses
  %i.cy = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = insertelement <2 x float> poison, float %7, i64 0
  %i.db = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.cw) ; 2 uses
  %i.de = shufflevector <2 x float> %i.da, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.de)
  %i.dg = fdiv <2 x float> %i.df, %i.dc           ; 2 uses
  %i.dh = fcmp oge <2 x float> %i.dg, splat (float f0x4AFFFFFE)
  %i.di = select <2 x i1> %i.dh, <2 x float> splat (float f0x4AFFFFFE), <2 x float> %i.dg
  %i.dj = fptosi <2 x float> %i.di to <2 x i32>
  %i.dk = extractelement <2 x float> %i.dd, i64 1
  %i.dl = fdiv float %i.dk, %i.cl                 ; 2 uses
  %.inv39.i59 = fcmp oge float %i.dl, f0x4AFFFFFE
  %i.dm = select i1 %.inv39.i59, float f0x4AFFFFFE, float %i.dl
  %i.dn = fptosi float %i.dm to i32
  br label %SemiRotateConstraint.exit63

SemiRotateConstraint.exit63:                      ; preds = %SemiRotateConstraint.exit, %bb.m
  %.sink.i62 = phi i32 [ %i.dn, %bb.m ], [ 8388607, %SemiRotateConstraint.exit ]
  %i.do = phi <2 x i32> [ %i.dj, %bb.m ], [ splat (i32 8388607), %SemiRotateConstraint.exit ]
  %i.dp = load <2 x i32>, ptr %0, align 4, !tbaa !4
  %i.dq = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.dp, <2 x i32> %i.do)
  store <2 x i32> %i.dq, ptr %0, align 4, !tbaa !4
  %i.dr = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ds = tail call i32 @llvm.smin.i32(i32 %i.dr, i32 %.sink.i62)
  store i32 %i.ds, ptr %i.cg, align 4, !tbaa !8
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !17
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !17
  %i.dx = fpext float %i.av to double             ; 2 uses
  %i.dy = tail call double @cos(double noundef %i.dx) #7, !tbaa !4
  %i.dz = fptrunc double %i.dy to float           ; 3 uses
  %i.ea = tail call double @sin(double noundef %i.dx) #7, !tbaa !4
  %i.eb = tail call float @llvm.fabs.f32(float %i.dz)
  %i.ec = fpext float %i.eb to double
  %i.ed = fcmp olt double %i.ec, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ed, label %SemiRotateConstraint.exit70, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ee = fptrunc double %i.ea to float
  %i.ef = insertelement <2 x i32> poison, i32 %i.du, i64 0
  %i.eg = insertelement <2 x i32> %i.ef, i32 %i.dw, i64 1
  %i.eh = sitofp <2 x i32> %i.eg to <2 x float>
  %i.ei = insertelement <2 x i32> poison, i32 %.sroa.892.0, i64 0
  %i.ej = insertelement <2 x i32> %i.ei, i32 %.sroa.1494.0, i64 1
  %i.ek = sitofp <2 x i32> %i.ej to <2 x float>
  %8 = sitofp i32 %.sroa.090.0 to float
  %i.el = fneg <2 x float> %i.eh                  ; 2 uses
  %i.em = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eo = insertelement <2 x float> poison, float %8, i64 0
  %i.ep = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.en, <2 x float> %i.ek) ; 2 uses
  %i.es = shufflevector <2 x float> %i.eo, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.en, <2 x float> %i.es)
  %i.eu = fdiv <2 x float> %i.et, %i.eq           ; 2 uses
  %i.ev = fcmp oge <2 x float> %i.eu, splat (float f0x4AFFFFFE)
  %i.ew = select <2 x i1> %i.ev, <2 x float> splat (float f0x4AFFFFFE), <2 x float> %i.eu
  %i.ex = fptosi <2 x float> %i.ew to <2 x i32>
  %i.ey = extractelement <2 x float> %i.er, i64 1
  %i.ez = fdiv float %i.ey, %i.dz                 ; 2 uses
  %.inv39.i66 = fcmp oge float %i.ez, f0x4AFFFFFE
  %i.fa = select i1 %.inv39.i66, float f0x4AFFFFFE, float %i.ez
  %i.fb = fptosi float %i.fa to i32
  br label %SemiRotateConstraint.exit70

SemiRotateConstraint.exit70:                      ; preds = %bb.n, %bb.o
  %.sink.i69 = phi i32 [ %i.fb, %bb.o ], [ 8388607, %bb.n ]
  %i.fc = phi <2 x i32> [ %i.ex, %bb.o ], [ splat (i32 8388607), %bb.n ]
  store <2 x i32> %i.fc, ptr %0, align 4, !tbaa !4
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %.sink.i69, ptr %i.fd, align 4, !tbaa !8
  %i.fe = load i32, ptr %i.dv, align 8, !tbaa !17
  %i.ff = load i32, ptr %i.dt, align 8, !tbaa !17
  %i.fg = tail call double @cos(double noundef %i.at) #7, !tbaa !4
  %i.fh = fptrunc double %i.fg to float           ; 3 uses
  %i.fi = tail call double @sin(double noundef %i.at) #7, !tbaa !4
  %i.fj = tail call float @llvm.fabs.f32(float %i.fh)
  %i.fk = fpext float %i.fj to double
  %i.fl = fcmp olt double %i.fk, f0x3EB0C6F7A0B5ED8D
  br i1 %i.fl, label %SemiRotateConstraint.exit77, label %bb.p

bb.p:                                             ; preds = %SemiRotateConstraint.exit70
  %i.fm = fptrunc double %i.fi to float
  %i.fn = insertelement <2 x i32> poison, i32 %i.fe, i64 0
  %i.fo = insertelement <2 x i32> %i.fn, i32 %i.ff, i64 1
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>
  %i.fq = insertelement <2 x i32> poison, i32 %.sroa.886.0, i64 0
  %i.fr = insertelement <2 x i32> %i.fq, i32 %.sroa.1488.0, i64 1
  %i.fs = sitofp <2 x i32> %i.fr to <2 x float>
  %9 = sitofp i32 %.sroa.084.0 to float
  %i.ft = fneg <2 x float> %i.fp                  ; 2 uses
  %i.fu = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fw = insertelement <2 x float> poison, float %9, i64 0
  %i.fx = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fv, <2 x float> %i.fs) ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fw, <2 x float> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fv, <2 x float> %i.ga)
  %i.gc = fdiv <2 x float> %i.gb, %i.fy           ; 2 uses
  %i.gd = fcmp oge <2 x float> %i.gc, splat (float f0x4AFFFFFE)
  %i.ge = select <2 x i1> %i.gd, <2 x float> splat (float f0x4AFFFFFE), <2 x float> %i.gc
  %i.gf = fptosi <2 x float> %i.ge to <2 x i32>
  %i.gg = extractelement <2 x float> %i.fz, i64 1
  %i.gh = fdiv float %i.gg, %i.fh                 ; 2 uses
  %.inv39.i73 = fcmp oge float %i.gh, f0x4AFFFFFE
  %i.gi = select i1 %.inv39.i73, float f0x4AFFFFFE, float %i.gh
  %i.gj = fptosi float %i.gi to i32
  br label %SemiRotateConstraint.exit77

SemiRotateConstraint.exit77:                      ; preds = %SemiRotateConstraint.exit70, %bb.p
  %.sink.i76 = phi i32 [ %i.gj, %bb.p ], [ 8388607, %SemiRotateConstraint.exit70 ]
  %i.gk = phi <2 x i32> [ %i.gf, %bb.p ], [ splat (i32 8388607), %SemiRotateConstraint.exit70 ]
  %i.gl = load <2 x i32>, ptr %0, align 4, !tbaa !4
  %i.gm = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.gl, <2 x i32> %i.gk)
  store <2 x i32> %i.gm, ptr %0, align 4, !tbaa !4
  %i.gn = load i32, ptr %i.fd, align 4, !tbaa !8
  %i.go = tail call i32 @llvm.smin.i32(i32 %i.gn, i32 %.sink.i76)
  store i32 %i.go, ptr %i.fd, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %SemiRotateConstraint.exit77, %SemiRotateConstraint.exit63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @InsertScale(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !11
  %i.g = sitofp i32 %i.f to float
  %i.h = uitofp nneg i32 %i.b to float
  %i.i = fdiv float %i.g, %i.h                    ; 2 uses
  %i.j = fcmp ogt float %i.i, 1.000000e+00
  %..i = select i1 %i.j, float 1.000000e+00, float %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi float [ %..i, %bb.b ], [ 1.000000e+00, %bb.a ] ; 3 uses
  %i.k = add nsw i32 %i.d, %i.b                   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
  %i.o = sitofp i32 %i.n to float
  %i.p = uitofp nneg i32 %i.k to float
  %i.q = fdiv float %i.o, %i.p                    ; 2 uses
  %i.r = fcmp olt float %.0.i, %i.q
  %.0..i = select i1 %i.r, float %.0.i, float %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi float [ %.0..i, %bb.d ], [ %.0.i, %bb.c ] ; 3 uses
  %i.s = icmp sgt i32 %i.d, 0
  br i1 %i.s, label %bb.f, label %ScaleToConstraint.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %i.v = sitofp i32 %i.u to float
  %i.w = uitofp nneg i32 %i.d to float
  %i.x = fdiv float %i.v, %i.w                    ; 2 uses
  %i.y = fcmp olt float %.1.i, %i.x
  %.1..i = select i1 %i.y, float %.1.i, float %i.x
  br label %ScaleToConstraint.exit

ScaleToConstraint.exit:                           ; preds = %bb.e, %bb.f
  %.2.i = phi float [ %.1..i, %bb.f ], [ %.1.i, %bb.e ]
  %i.z = fmul float %.2.i, 1.280000e+02
  %i.aa = fptosi float %i.z to i32                ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 25
  br i1 %i.ab, label %bb.g, label %bb.q

bb.g:                                             ; preds = %ScaleToConstraint.exit
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 34), align 1, !tbaa !17 ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  store i32 %i.ad, ptr @zz_size, align 4, !tbaa !4
  %i.ae = zext i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.aj = tail call ptr @GetMemory(i32 noundef %i.ad, ptr noundef %i.ai) #7 ; 2 uses
  store ptr %i.aj, ptr @zz_hold, align 8, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr %i.ag, ptr @zz_hold, align 8, !tbaa !18
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !17
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.al = phi ptr [ %i.aj, %bb.h ], [ %i.ag, %bb.i ] ; 24 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i8 34, ptr %i.am, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.al, ptr %i.an, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !17
  store ptr %i.al, ptr %i.al, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 1610612736
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, -1610612737
  %i.aw = or disjoint i32 %i.av, %i.as
  store i32 %i.aw, ptr %i.at, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 34
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 1048575                  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 36 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, -1048576
  %i.bg = or disjoint i32 %i.bf, %i.bc
  store i32 %i.bg, ptr %i.bd, align 4
  %i.bh = load i32, ptr %i.ba, align 4
  %i.bi = and i32 %i.bh, -1048576
  %i.bj = or disjoint i32 %i.bi, %i.bc
  store i32 %i.bj, ptr %i.bd, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i32 %i.aa, ptr %i.bk, align 8, !tbaa !17
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !17
  %i.bm = mul nsw i32 %i.bl, %i.aa
  %i.bn = sdiv i32 %i.bm, 128                     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !10
  %i.br = sub nsw i32 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  %. = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i32 %., ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i32 128, ptr %i.bv, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !17 ; 6 uses
  %i.cf = icmp eq ptr %i.ce, %0
  br i1 %i.cf, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  store ptr null, ptr @xx_tmp, align 8, !tbaa !18
  store ptr %i.al, ptr @zz_res, align 8, !tbaa !18
  store ptr null, ptr @zz_hold, align 8, !tbaa !18
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !17 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !17
  store ptr %0, ptr %i.cd, align 8, !tbaa !17
  store ptr %0, ptr %i.cc, align 8, !tbaa !17
  store ptr %i.ce, ptr @xx_tmp, align 8, !tbaa !18
  store ptr %i.al, ptr @zz_res, align 8, !tbaa !18
  store ptr %i.ce, ptr @zz_hold, align 8, !tbaa !18
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !17 ; 3 uses
  store ptr %i.cj, ptr @zz_tmp, align 8, !tbaa !18
  %i.ck = load ptr, ptr %i.ao, align 8, !tbaa !17 ; 2 uses
end_hunk_0
