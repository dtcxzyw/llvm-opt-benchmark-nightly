Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_asupercut?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_channels_dblp:bb.a
  %i.ca = insertelement <2 x double> %i.bx, double %i.bt, i64 1
  %i.cb = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x double> %i.cb, double %i.bz, i64 1
  %i.cd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.ca, <2 x double> %i.cc)
  store <2 x double> %i.cd, ptr %i.az, align 8, !tbaa !52
  store double %i.by, ptr %i.bs, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !67
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @get_coeffs(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !83
  %i.k = sitofp nsz i32 %i.j to double
  %i.l = fdiv nsz double %i.h, %i.k               ; 4 uses
  %i.m = fmul nsz double %i.l, f0x400921FB54442D18
  %i.n = tail call nsz double @llvm.tan.f64(double %i.m) ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.o = fcmp nsz oge double %i.l, 5.000000e-01   ; 2 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.p, ptr %i.q, align 8, !tbaa !34
  br i1 %i.o, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86   ; 4 uses
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(8) @.str.2) #10
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !87   ; 8 uses
  %i.x = sdiv i32 %i.w, 2
  %i.y = and i32 %i.w, 1                          ; 3 uses
  %i.z = add nsw i32 %i.x, %i.y                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !49
  %i.ab = icmp sgt i32 %i.w, 1                    ; 2 uses
  br i1 %i.ab, label %.lr.ph.i, label %calc_q_factors.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.ac = lshr i32 %i.w, 1
  %i.ad = uitofp nneg i32 %i.w to double          ; 2 uses
  %i.ae = shl nuw i32 %i.w, 1
  %i.af = uitofp i32 %i.ae to double              ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ac to i64 ; 3 uses
  %min.iters.check67 = icmp ult i32 %i.w, 4
  br i1 %min.iters.check67, label %scalar.ph66.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.i
  %n.vec69 = and i64 %wide.trip.count.i, 1073741822 ; 3 uses
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %i.af, i64 0
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph68
  %index75 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body74 ] ; 2 uses
  %vec.ind76 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph68 ], [ %vec.ind.next78, %vector.body74 ] ; 2 uses
  %i.ag = trunc <2 x i64> %vec.ind76 to <2 x i32>
  %i.ah = add <2 x i32> %i.ag, splat (i32 1)
  %i.ai = uitofp nneg <2 x i32> %i.ah to <2 x double>
  %i.aj = tail call nnan nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> splat (double 2.000000e+00), <2 x double> %broadcast.splat71)
  %i.ak = fadd nnan nsz <2 x double> %i.aj, splat (double -1.000000e+00)
  %i.al = fmul nnan nsz <2 x double> %i.ak, splat (double f0x400921FB54442D18)
  %i.am = fdiv nsz <2 x double> %i.al, %broadcast.splat73
  %i.an = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.am)
  %i.ao = fmul nsz <2 x double> %i.an, splat (double -2.000000e+00)
  %i.ap = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index75
  store <2 x double> %i.ap, ptr %i.aq, align 16, !tbaa !52
  %index.next77 = add nuw i64 %index75, 2         ; 2 uses
  %vec.ind.next78 = add nuw nsw <2 x i64> %vec.ind76, splat (i64 2)
  %i.ar = icmp eq i64 %index.next77, %n.vec69
  br i1 %i.ar, label %middle.block79, label %vector.body74, !llvm.loop !69

middle.block79:                                   ; preds = %vector.body74
  %cmp.n80 = icmp eq i64 %n.vec69, %wide.trip.count.i
  br i1 %cmp.n80, label %calc_q_factors.exit, label %scalar.ph66.preheader

scalar.ph66.preheader:                            ; preds = %.lr.ph.i, %middle.block79
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec69, %middle.block79 ]
  br label %scalar.ph66

scalar.ph66:                                      ; preds = %scalar.ph66.preheader, %scalar.ph66
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph66 ], [ %indvars.iv.i.ph, %scalar.ph66.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.at = uitofp nsz nneg i32 %i.as to double
  %i.au = tail call nnan nsz double @llvm.fmuladd.f64(double %i.at, double 2.000000e+00, double %i.ad)
  %i.av = fadd nnan nsz double %i.au, -1.000000e+00
  %i.aw = fmul nnan nsz double %i.av, f0x400921FB54442D18
  %i.ax = fdiv nsz double %i.aw, %i.af
  %i.ay = tail call nsz double @llvm.cos.f64(double %i.ax)
  %i.az = fmul nsz double %i.ay, -2.000000e+00
  %i.ba = fdiv nsz double 1.000000e+00, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !52
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %calc_q_factors.exit, label %scalar.ph66, !llvm.loop !70

calc_q_factors.exit:                              ; preds = %scalar.ph66, %middle.block79, %bb.c
  %.not224 = icmp eq i32 %i.y, 0
  br i1 %.not224, label %bb.e, label %bb.d

bb.d:                                             ; preds = %calc_q_factors.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bd = fmul nsz double %i.n, 2.000000e+00      ; 2 uses
  %i.be = fadd nsz double %i.bd, 2.000000e+00     ; 2 uses
  %i.bf = fdiv nsz double 2.000000e+00, %i.be     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double %i.bf, ptr %i.bg, align 8, !tbaa !90
  %i.bh = fneg nsz double %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store double %i.bh, ptr %i.bi, align 8, !tbaa !91
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store double 0.000000e+00, ptr %i.bj, align 8, !tbaa !55
  %i.bk = fsub nsz double 2.000000e+00, %i.bd
  %i.bl = fdiv nsz double %i.bk, %i.be
  store double %i.bl, ptr %i.bc, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double 0.000000e+00, ptr %i.bm, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %calc_q_factors.exit
  br i1 %i.ab, label %.lr.ph254, label %.loopexit

.lr.ph254:                                        ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.bo = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %i.n, double -1.000000e+00)
  %i.bp = fmul nsz double %i.bo, -2.000000e+00    ; 2 uses
  %i.bq = and i32 %i.w, 1
  %i.br = zext nneg i32 %i.bq to i64              ; 5 uses
  %i.bs = zext nneg i32 %i.y to i64               ; 2 uses
  %i.bt = zext nneg i32 %i.z to i64               ; 2 uses
  %i.bu = add nuw nsw i64 %i.br, 1
  %i.bv = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bt)
  %i.bw = sub nsw i64 %i.bv, %i.br                ; 3 uses
  %min.iters.check83 = icmp ult i64 %i.bw, 2
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph254
  %n.vec85 = and i64 %i.bw, -2                    ; 3 uses
  %i.bx = or disjoint i64 %n.vec85, %i.br
  %broadcast.splatinsert86 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat87 = shufflevector <2 x double> %broadcast.splatinsert86, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat89 = shufflevector <2 x double> %broadcast.splatinsert88, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph84
  %index91 = phi i64 [ 0, %vector.ph84 ], [ %index.next94, %vector.body90 ] ; 2 uses
  %i.by = or disjoint i64 %index91, %i.br         ; 2 uses
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.by
  %i.ca = sub nuw nsw i64 %i.by, %i.bs
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ca
  %wide.load92 = load <2 x double>, ptr %i.cb, align 8, !tbaa !52
  %i.cc = fdiv nsz <2 x double> %broadcast.splat89, %wide.load92 ; 2 uses
  %i.cd = fadd nsz <2 x double> %i.cc, splat (double 1.000000e+00)
  %i.ce = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat89, <2 x double> %broadcast.splat89, <2 x double> %i.cd)
  %i.cf = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ce ; 5 uses
  %i.cg = fmul nsz <2 x double> %i.cf, splat (double -2.000000e+00)
  %i.ch = fmul nsz <2 x double> %broadcast.splat87, %i.cf
  %i.ci = fsub nsz <2 x double> splat (double 1.000000e+00), %i.cc
  %i.cj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat89, <2 x double> %broadcast.splat89, <2 x double> %i.ci)
  %i.ck = fneg nsz <2 x double> %i.cj
  %i.cl = fmul nsz <2 x double> %i.cf, %i.ck
  %i.cm = shufflevector <2 x double> %i.ch, <2 x double> %i.cl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cn = shufflevector <2 x double> %i.cf, <2 x double> %i.cg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = shufflevector <4 x double> %i.cm, <4 x double> %i.cn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cp = shufflevector <2 x double> %i.cf, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec93 = shufflevector <8 x double> %i.co, <8 x double> %i.cp, <10 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 1, i32 3, i32 5, i32 7, i32 9>
  store <10 x double> %interleaved.vec93, ptr %i.bz, align 8, !tbaa !52
  %index.next94 = add nuw i64 %index91, 2         ; 2 uses
  %i.cq = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.cq, label %middle.block95, label %vector.body90, !llvm.loop !71

middle.block95:                                   ; preds = %vector.body90
  %cmp.n96 = icmp eq i64 %i.bw, %n.vec85
  br i1 %cmp.n96, label %.loopexit, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph254, %middle.block95
  %indvars.iv270.ph = phi i64 [ %i.br, %.lr.ph254 ], [ %i.bx, %middle.block95 ]
  %i.cr = insertelement <2 x double> poison, double %i.n, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %scalar.ph82 ], [ %indvars.iv270.ph, %scalar.ph82.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %indvars.iv270 ; 5 uses
  %i.cu = sub nuw nsw i64 %indvars.iv270, %i.bs
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !52
  %i.cx = fdiv nsz double %i.n, %i.cw             ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cz = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cx, i64 0
  %i.da = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.cx, i64 1
  %i.db = fsub nsz <2 x double> %i.cz, %i.da
  %i.dc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cs, <2 x double> %i.db) ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = fdiv nsz double 1.000000e+00, %i.dd     ; 5 uses
  store double %i.de, ptr %1, align 8, !tbaa !90
  %3 = fmul nsz double %i.de, -2.000000e+00
  store double %3, ptr %2, align 8, !tbaa !91
  store double %i.de, ptr %i.cy, align 8, !tbaa !55
  %4 = fmul nsz double %i.bp, %i.de
  store double %4, ptr %i.ct, align 8, !tbaa !56
  %5 = extractelement <2 x double> %i.dc, i64 1
  %6 = fneg nsz double %5
  %7 = fmul nsz double %i.de, %6
  %8 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store double %7, ptr %8, align 8, !tbaa !54
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %i.df = icmp samesign ult i64 %indvars.iv.next271, %i.bt
  br i1 %i.df, label %scalar.ph82, label %.loopexit, !llvm.loop !72

bb.f:                                             ; preds = %bb.b
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(10) @.str) #10
  %.not225 = icmp eq i32 %i.dg, 0
  br i1 %.not225, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !87 ; 8 uses
  %i.dj = sdiv i32 %i.di, 2
  %i.dk = and i32 %i.di, 1                        ; 3 uses
  %i.dl = add nsw i32 %i.dj, %i.dk                ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !49
  %i.dn = icmp sgt i32 %i.di, 1                   ; 2 uses
  br i1 %i.dn, label %.lr.ph.i237, label %calc_q_factors.exit242

.lr.ph.i237:                                      ; preds = %bb.g
  %i.do = lshr i32 %i.di, 1
  %i.dp = uitofp nneg i32 %i.di to double         ; 2 uses
  %i.dq = shl nuw i32 %i.di, 1
  %i.dr = uitofp i32 %i.dq to double              ; 2 uses
  %wide.trip.count.i238 = zext nneg i32 %i.do to i64 ; 3 uses
  %min.iters.check37 = icmp ult i32 %i.di, 4
  br i1 %min.iters.check37, label %scalar.ph36.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph.i237
  %n.vec39 = and i64 %wide.trip.count.i238, 1073741822 ; 3 uses
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %i.dp, i64 0
  %broadcast.splat41 = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %i.dr, i64 0
  %broadcast.splat43 = shufflevector <2 x double> %broadcast.splatinsert42, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph38
  %index45 = phi i64 [ 0, %vector.ph38 ], [ %index.next46, %vector.body44 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph38 ], [ %vec.ind.next, %vector.body44 ] ; 2 uses
  %i.ds = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.dt = add <2 x i32> %i.ds, splat (i32 1)
  %i.du = uitofp nneg <2 x i32> %i.dt to <2 x double>
  %i.dv = tail call nnan nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> splat (double 2.000000e+00), <2 x double> %broadcast.splat41)
  %i.dw = fadd nnan nsz <2 x double> %i.dv, splat (double -1.000000e+00)
  %i.dx = fmul nnan nsz <2 x double> %i.dw, splat (double f0x400921FB54442D18)
  %i.dy = fdiv nsz <2 x double> %i.dx, %broadcast.splat43
  %i.dz = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.dy)
  %i.ea = fmul nsz <2 x double> %i.dz, splat (double -2.000000e+00)
  %i.eb = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index45
  store <2 x double> %i.eb, ptr %i.ec, align 16, !tbaa !52
  %index.next46 = add nuw i64 %index45, 2         ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ed = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.ed, label %middle.block47, label %vector.body44, !llvm.loop !73

middle.block47:                                   ; preds = %vector.body44
  %cmp.n48 = icmp eq i64 %n.vec39, %wide.trip.count.i238
  br i1 %cmp.n48, label %calc_q_factors.exit242, label %scalar.ph36.preheader

scalar.ph36.preheader:                            ; preds = %.lr.ph.i237, %middle.block47
  %indvars.iv.i239.ph = phi i64 [ 0, %.lr.ph.i237 ], [ %n.vec39, %middle.block47 ]
  br label %scalar.ph36

scalar.ph36:                                      ; preds = %scalar.ph36.preheader, %scalar.ph36
  %indvars.iv.i239 = phi i64 [ %indvars.iv.next.i240, %scalar.ph36 ], [ %indvars.iv.i239.ph, %scalar.ph36.preheader ] ; 2 uses
  %indvars.iv.next.i240 = add nuw nsw i64 %indvars.iv.i239, 1 ; 3 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv.next.i240 to i32
  %i.ef = uitofp nsz nneg i32 %i.ee to double
  %i.eg = tail call nnan nsz double @llvm.fmuladd.f64(double %i.ef, double 2.000000e+00, double %i.dp)
  %i.eh = fadd nnan nsz double %i.eg, -1.000000e+00
  %i.ei = fmul nnan nsz double %i.eh, f0x400921FB54442D18
  %i.ej = fdiv nsz double %i.ei, %i.dr
  %i.ek = tail call nsz double @llvm.cos.f64(double %i.ej)
  %i.el = fmul nsz double %i.ek, -2.000000e+00
  %i.em = fdiv nsz double 1.000000e+00, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i239
  store double %i.em, ptr %i.en, align 8, !tbaa !52
  %exitcond.not.i241 = icmp eq i64 %indvars.iv.next.i240, %wide.trip.count.i238
  br i1 %exitcond.not.i241, label %calc_q_factors.exit242, label %scalar.ph36, !llvm.loop !74

calc_q_factors.exit242:                           ; preds = %scalar.ph36, %middle.block47, %bb.g
  %.not226 = icmp eq i32 %i.dk, 0
  br i1 %.not226, label %bb.i, label %bb.h

bb.h:                                             ; preds = %calc_q_factors.exit242
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ep = fmul nsz double %i.n, 2.000000e+00      ; 3 uses
  %i.eq = fsub nsz double 2.000000e+00, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.es = fadd nsz double %i.ep, 2.000000e+00     ; 2 uses
  %i.et = fdiv nsz double %i.ep, %i.es
  %i.eu = fdiv nsz double %i.eq, %i.es
  store double %i.eu, ptr %i.eo, align 8, !tbaa !56
  %i.ev = insertelement <4 x double> <double 0.000000e+00, double poison, double poison, double 0.000000e+00>, double %i.et, i64 1
  %i.ew = shufflevector <4 x double> %i.ev, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x double> %i.ew, ptr %i.er, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %calc_q_factors.exit242
  br i1 %i.dn, label %.lr.ph252, label %.loopexit

.lr.ph252:                                        ; preds = %bb.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.ey = fmul nsz double %i.n, %i.n              ; 2 uses
  %i.ez = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %i.n, double -1.000000e+00)
  %i.fa = fmul nsz double %i.ez, -2.000000e+00    ; 2 uses
  %i.fb = and i32 %i.di, 1
  %i.fc = zext nneg i32 %i.fb to i64              ; 5 uses
  %i.fd = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.fe = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.ff = add nuw nsw i64 %i.fc, 1
  %i.fg = tail call i64 @llvm.umax.i64(i64 %i.ff, i64 %i.fe)
  %i.fh = sub nsw i64 %i.fg, %i.fc                ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.fh, 2
  br i1 %min.iters.check51, label %scalar.ph50.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph252
  %n.vec53 = and i64 %i.fh, -2                    ; 3 uses
  %i.fi = or disjoint i64 %n.vec53, %i.fc
  %broadcast.splatinsert54 = insertelement <2 x double> poison, double %i.ey, i64 0
  %broadcast.splat55 = shufflevector <2 x double> %broadcast.splatinsert54, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <2 x double> poison, double %i.fa, i64 0
  %broadcast.splat57 = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat59 = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph52
  %index61 = phi i64 [ 0, %vector.ph52 ], [ %index.next62, %vector.body60 ] ; 2 uses
  %i.fj = or disjoint i64 %index61, %i.fc         ; 2 uses
  %i.fk = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %i.fj
  %i.fl = sub nuw nsw i64 %i.fj, %i.fd
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fl
  %wide.load = load <2 x double>, ptr %i.fm, align 8, !tbaa !52
  %i.fn = fdiv nsz <2 x double> %broadcast.splat59, %wide.load ; 2 uses
  %i.fo = fadd nsz <2 x double> %i.fn, splat (double 1.000000e+00)
  %i.fp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat59, <2 x double> %broadcast.splat59, <2 x double> %i.fo)
  %i.fq = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.fp ; 3 uses
  %i.fr = fmul nsz <2 x double> %broadcast.splat55, %i.fq ; 3 uses
  %i.fs = fmul nsz <2 x double> %i.fr, splat (double 2.000000e+00)
  %i.ft = fmul nsz <2 x double> %broadcast.splat57, %i.fq
  %i.fu = fsub nsz <2 x double> splat (double 1.000000e+00), %i.fn
  %i.fv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat59, <2 x double> %broadcast.splat59, <2 x double> %i.fu)
  %i.fw = fneg nsz <2 x double> %i.fv
  %i.fx = fmul nsz <2 x double> %i.fq, %i.fw
  %i.fy = shufflevector <2 x double> %i.ft, <2 x double> %i.fx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fz = shufflevector <2 x double> %i.fr, <2 x double> %i.fs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ga = shufflevector <4 x double> %i.fy, <4 x double> %i.fz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gb = shufflevector <2 x double> %i.fr, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x double> %i.ga, <8 x double> %i.gb, <10 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 1, i32 3, i32 5, i32 7, i32 9>
  store <10 x double> %interleaved.vec, ptr %i.fk, align 8, !tbaa !52
  %index.next62 = add nuw i64 %index61, 2         ; 2 uses
  %i.gc = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.gc, label %middle.block63, label %vector.body60, !llvm.loop !75

middle.block63:                                   ; preds = %vector.body60
  %cmp.n64 = icmp eq i64 %i.fh, %n.vec53
  br i1 %cmp.n64, label %.loopexit, label %scalar.ph50.preheader

scalar.ph50.preheader:                            ; preds = %.lr.ph252, %middle.block63
  %indvars.iv267.ph = phi i64 [ %i.fc, %.lr.ph252 ], [ %i.fi, %middle.block63 ]
  %i.gd = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph50

scalar.ph50:                                      ; preds = %scalar.ph50.preheader, %scalar.ph50
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %scalar.ph50 ], [ %indvars.iv267.ph, %scalar.ph50.preheader ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %indvars.iv267 ; 5 uses
  %i.gg = sub nuw nsw i64 %indvars.iv267, %i.fd
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !52
  %i.gj = fdiv nsz double %i.n, %i.gi             ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gn = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.gj, i64 0
  %i.go = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.gj, i64 1
  %i.gp = fsub nsz <2 x double> %i.gn, %i.go
  %i.gq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.ge, <2 x double> %i.gp) ; 2 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 0
  %i.gs = fdiv nsz double 1.000000e+00, %i.gr     ; 3 uses
  %i.gt = fmul nsz double %i.ey, %i.gs            ; 3 uses
  store double %i.gt, ptr %i.gk, align 8, !tbaa !90
  %i.gu = fmul nsz double %i.gt, 2.000000e+00
  store double %i.gu, ptr %i.gl, align 8, !tbaa !91
  store double %i.gt, ptr %i.gm, align 8, !tbaa !55
  %i.gv = fmul nsz double %i.fa, %i.gs
  store double %i.gv, ptr %i.gf, align 8, !tbaa !56
  %i.gw = extractelement <2 x double> %i.gq, i64 1
  %i.gx = fneg nsz double %i.gw
  %i.gy = fmul nsz double %i.gs, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store double %i.gy, ptr %i.gz, align 8, !tbaa !54
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.ha = icmp samesign ult i64 %indvars.iv.next268, %i.fe
  br i1 %i.ha, label %scalar.ph50, label %.loopexit, !llvm.loop !76

bb.j:                                             ; preds = %bb.f
end_hunk_0
