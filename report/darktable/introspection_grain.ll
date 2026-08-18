inline.NumInlined: 14
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@description:bb.a
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #22
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #22
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit82, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !38  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1780 ; 10 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.h) #23
  %i.j = trunc i64 %i.i to i32
  %.08.i = add i32 %i.j, -1                       ; 3 uses
  %i.k = icmp sgt i32 %.08.i, -1
  br i1 %i.k, label %.lr.ph.preheader.i, label %_hash_string.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.l = zext nneg i32 %.08.i to i64              ; 3 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.n = icmp ult i32 %.08.i, 7
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.m, 4294967288
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ %i.l, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %.079.i = phi i32 [ 5381, %.lr.ph.preheader.i.new ], [ %i.bi, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.o = mul i32 %.079.i, 33
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !40
  %i.r = sext i8 %i.q to i32
  %i.s = xor i32 %i.o, %i.r
  %i.t = mul i32 %i.s, 33
  %i.u = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40
  %i.x = sext i8 %i.w to i32
  %i.y = xor i32 %i.t, %i.x
  %i.z = mul i32 %i.y, 33
  %i.aa = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 -2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !40
  %i.ad = sext i8 %i.ac to i32
  %i.ae = xor i32 %i.z, %i.ad
  %i.af = mul i32 %i.ae, 33
  %i.ag = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  %i.aj = sext i8 %i.ai to i32
  %i.ak = xor i32 %i.af, %i.aj
  %i.al = mul i32 %i.ak, 33
  %i.am = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !40
  %i.ap = sext i8 %i.ao to i32
  %i.aq = xor i32 %i.al, %i.ap
  %i.ar = mul i32 %i.aq, 33
  %i.as = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.at = getelementptr i8, ptr %i.as, i64 -5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !40
  %i.av = sext i8 %i.au to i32
  %i.aw = xor i32 %i.ar, %i.av
  %i.ax = mul i32 %i.aw, 33
  %i.ay = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.az = getelementptr i8, ptr %i.ay, i64 -6
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !40
  %i.bb = sext i8 %i.ba to i32
  %i.bc = xor i32 %i.ax, %i.bb
  %i.bd = mul i32 %i.bc, 33
  %i.be = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.bf = getelementptr i8, ptr %i.be, i64 -7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !40
  %i.bh = sext i8 %i.bg to i32
  %i.bi = xor i32 %i.bd, %i.bh                    ; 3 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, -8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_hash_string.exit.loopexit.unr-lcssa, label %.lr.ph.i

_hash_string.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_hash_string.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_hash_string.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ %i.l, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %_hash_string.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi i32 [ 5381, %.lr.ph.preheader.i ], [ %i.bi, %_hash_string.exit.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.079.i.epil = phi i32 [ %.079.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bn, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.bj = mul i32 %.079.i.epil, 33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i.epil
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !40
  %i.bm = sext i8 %i.bl to i32
  %i.bn = xor i32 %i.bj, %i.bm                    ; 2 uses
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_hash_string.exit, label %.lr.ph.i.epil, !llvm.loop !41

_hash_string.exit:                                ; preds = %_hash_string.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.07.lcssa.i = phi i32 [ 5381, %bb.b ], [ %i.bi, %_hash_string.exit.loopexit.unr-lcssa ], [ %i.bn, %.lr.ph.i.epil ]
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !43 ; 4 uses
  %i.bq = getelementptr i8, ptr %i.g, i64 644
  %.val = load i32, ptr %i.bq, align 4, !tbaa !44
  %i.br = and i32 %.val, 256
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bt = load <2 x i32>, ptr %i.bs, align 16, !tbaa !20
  %i.bu = sitofp <2 x i32> %i.bt to <2 x float>   ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  %i.bw = extractelement <2 x float> %i.bu, i64 1
  %i.bx = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bv, float %i.bw)
  %i.by = fpext fast float %i.bx to double
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !61
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, 8.000000e-02
  %i.cc = fpext reassoc nsz arcp contract afn float %i.cb to double
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, 1.250000e-03
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cd, 1.250000e-03 ; 2 uses
  %.not81 = icmp eq i32 %i.br, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !63 ; 2 uses
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, -1.000000e+00
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ch)
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.ci, f0x3C23D70A
  %i.ck = select i1 %.not81, i1 %i.cj, i1 false
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !64
  %i.cn = fpext reassoc nsz arcp contract afn float %i.cm to double
  %i.co = fpext reassoc nsz arcp contract afn float %i.cg to double
  %i.cp = fmul reassoc nsz arcp contract afn double %i.co, %i.by ; 3 uses
  %i.cq = fdiv reassoc nsz arcp contract afn double %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !65 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph90, label %.loopexit82

.lr.ph90:                                         ; preds = %_hash_string.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !66
  %i.cw = sitofp reassoc nsz arcp contract afn i32 %i.bp to double
  %i.cx = fmul reassoc nnan nsz arcp contract afn double %i.cw, 3.000000e-01
  %i.cy = tail call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.cx, double 1.000000e+00)
  %i.cz = fptosi double %i.cy to i32
  %i.da = urem i32 %.07.lcssa.i, %i.cz
  %i.db = sext i32 %i.bp to i64
  %i.dc = shl nsw i64 %i.db, 2
  %i.dd = icmp sgt i32 %i.bp, 0
  %i.de = uitofp reassoc nsz arcp contract afn i32 %i.da to double
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.cv, 1.905000e-01
  br i1 %i.dd, label %.lr.ph90.split, label %.loopexit82

.lr.ph90.split:                                   ; preds = %.lr.ph90
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !67
  %i.dj = load i32, ptr %5, align 4, !tbaa !68
  %wide.trip.count = zext nneg i32 %i.cs to i64
  %i.dk = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.cp
  %i.dl = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.cp
  %i.dm = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x float> poison, float %i.dg, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph90.split, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph90.split ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.do = mul nuw i64 %i.dc, %indvars.iv          ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.do
  %i.dr = trunc i64 %indvars.iv to i32
  %i.ds = add i32 %i.di, %i.dr
  %i.dt = sitofp reassoc nsz arcp contract afn i32 %i.ds to double
  %i.du = fmul reassoc nsz arcp contract afn double %i.dt, %i.dk ; 2 uses
  %i.dv = insertelement <2 x double> poison, double %i.du, i64 1
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond94.not, label %.loopexit82, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %.07587 = phi ptr [ %i.dp, %.lr.ph ], [ %i.gr, %.loopexit ] ; 4 uses
  %.07686 = phi ptr [ %i.dq, %.lr.ph ], [ %i.gq, %.loopexit ] ; 4 uses
  %.07985 = phi i32 [ 0, %.lr.ph ], [ %i.gs, %.loopexit ] ; 2 uses
  %i.dw = add nsw i32 %i.dj, %.07985
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.dw to double
  %i.dy = fmul reassoc nsz arcp contract afn double %i.dx, %i.dl
  %i.dz = fadd reassoc nsz arcp contract afn double %i.dy, %i.de ; 2 uses
  br i1 %i.ck, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.ea = insertelement <2 x double> %i.dv, double %i.dz, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.07784 = phi i32 [ %i.ev, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.07883 = phi float [ %i.eu, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %i.eb = uitofp nneg i32 %.07784 to float        ; 2 uses
  %i.ec = fmul reassoc nnan nsz arcp contract afn float %i.eb, f0x3FCF3CF4 ; 2 uses
  %i.ed = fptosi float %i.ec to i32
  %i.ee = sitofp reassoc nsz arcp contract afn i32 %i.ed to float
  %i.ef = fsub reassoc nnan nsz arcp contract afn float %i.ec, %i.ee
  %i.eg = fmul reassoc nnan nsz arcp contract afn float %i.eb, f0x3D430C31
  %i.eh = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ef, i64 1
  %i.ej = fpext nnan <2 x float> %i.ei to <2 x double>
  %i.ek = fmul reassoc nsz arcp contract afn <2 x double> %i.dn, %i.ej
  %i.el = fptrunc <2 x double> %i.ek to <2 x float>
  %i.em = fpext <2 x float> %i.el to <2 x double>
  %i.en = fadd reassoc nsz arcp contract afn <2 x double> %i.ea, %i.em ; 2 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0
  %i.ep = extractelement <2 x double> %i.en, i64 1
  %i.eq = tail call reassoc nsz arcp contract afn fastcc double @_simplex_2d_noise(double noundef %i.eo, double noundef %i.ep, double noundef %i.ce)
  %i.er = fmul reassoc nsz arcp contract afn double %i.eq, f0x3FA8618618618618
  %i.es = fpext reassoc nsz arcp contract afn float %.07883 to double
  %i.et = fadd reassoc nsz arcp contract afn double %i.er, %i.es
  %i.eu = fptrunc reassoc nsz arcp contract afn double %i.et to float ; 2 uses
  %i.ev = add nuw nsw i32 %.07784, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ev, 21
  br i1 %exitcond.not, label %.loopexit, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.ew = tail call reassoc nsz arcp contract afn fastcc double @_simplex_2d_noise(double noundef %i.dz, double noundef %i.du, double noundef %i.ce)
  %i.ex = fptrunc reassoc nsz arcp contract afn double %i.ew to float
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.d
  %.1 = phi nsz float [ %i.ex, %bb.d ], [ %i.eu, %.preheader ]
  %i.ey = load float, ptr %.07587, align 4, !tbaa !16 ; 2 uses
  %i.ez = insertelement <2 x float> %6, float %i.ey, i64 0
  %i.fa = insertelement <2 x float> <float 1.270000e+00, float poison>, float %.1, i64 1
  %i.fb = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fa
  %i.fc = fadd reassoc nsz arcp contract afn <2 x float> %i.fb, <float -0.000000e+00, float 6.350000e+01> ; 3 uses
  %i.fd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fc, zeroinitializer
  %i.fe = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fc, splat (float 1.270000e+02)
  %i.ff = select <2 x i1> %i.fe, <2 x float> %i.fc, <2 x float> splat (float 1.270000e+02)
  %i.fg = select <2 x i1> %i.fd, <2 x float> %i.ff, <2 x float> zeroinitializer ; 4 uses
  %i.fh = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fg, splat (float 1.260000e+02)
  %i.fi = select <2 x i1> %i.fh, <2 x float> %i.fg, <2 x float> splat (float 1.260000e+02)
  %i.fj = fptosi <2 x float> %i.fi to <2 x i32>   ; 4 uses
  %i.fk = sitofp <2 x i32> %i.fj to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub reassoc nnan nsz arcp contract afn <2 x float> %i.fg, %i.fk
  %i.fl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %foldExtExtBinop100 = fsub reassoc nsz arcp contract afn <2 x float> %i.fg, %i.fk
  %i.fm = extractelement <2 x float> %foldExtExtBinop100, i64 0 ; 3 uses
  %7 = shl nsw <2 x i32> %i.fj, <i32 7, i32 0>    ; 3 uses
  %shift = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = add nsw <2 x i32> %7, %shift
  %8 = extractelement <2 x i32> %foldExtExtBinop102, i64 0
  %i.fn = sext i32 %8 to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !16
  %9 = add <2 x i32> %7, <i32 128, i32 1>         ; 2 uses
  %10 = shufflevector <2 x i32> %i.fj, <2 x i32> %7, <2 x i32> <i32 1, i32 2>
  %11 = add nsw <2 x i32> %9, %10                 ; 2 uses
  %12 = extractelement <2 x i32> %11, i64 1
  %i.fq = sext i32 %12 to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !16
  %13 = extractelement <2 x i32> %11, i64 0
  %i.ft = sext i32 %13 to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !16
  %14 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %9)
  %i.fw = sext i32 %14 to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !16
  %i.fz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fm ; 2 uses
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.fp
  %i.gb = fmul reassoc nsz arcp contract afn float %i.fm, %i.fv
  %i.gc = fadd reassoc nsz arcp contract afn float %i.ga, %i.gb ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fz, %i.fs
  %i.ge = fmul reassoc nsz arcp contract afn float %i.fm, %i.fy
  %i.gf = fadd reassoc nsz arcp contract afn float %i.gd, %i.ge
  %i.gg = fsub reassoc nsz arcp contract afn float %i.gf, %i.gc
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, %i.fl
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gc, %i.ey
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, %i.gh
  store float %i.gj, ptr %.07686, align 4, !tbaa !16
  %i.gk = getelementptr inbounds nuw i8, ptr %.07587, i64 4
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !16
  %i.gm = getelementptr inbounds nuw i8, ptr %.07686, i64 4
  store float %i.gl, ptr %i.gm, align 4, !tbaa !16
  %i.gn = getelementptr inbounds nuw i8, ptr %.07587, i64 8
  %i.go = load float, ptr %i.gn, align 4, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %.07686, i64 8
  store float %i.go, ptr %i.gp, align 4, !tbaa !16
  %i.gq = getelementptr inbounds nuw i8, ptr %.07686, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %.07587, i64 16
  %i.gs = add nuw nsw i32 %.07985, 1              ; 2 uses
  %exitcond92.not = icmp eq i32 %i.gs, %i.bp
  br i1 %exitcond92.not, label %._crit_edge, label %bb.c

.loopexit82:                                      ; preds = %._crit_edge, %_hash_string.exit, %.lr.ph90, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc double @_simplex_2d_noise(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #7 {
vector.ph:
  %broadcast.splatinsert = insertelement <4 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.a = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, <double 4.910000e-01, double 9.441000e-01, double 1.728000e+00, double poison>
  %broadcast.splatinsert35 = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat36 = shufflevector <4 x double> %broadcast.splatinsert35, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.b = fdiv reassoc nsz arcp contract afn <4 x double> %i.a, %broadcast.splat36 ; 3 uses
  %i.c = fadd reassoc nsz arcp contract afn <4 x double> %i.b, <double 0.000000e+00, double 1.000000e+00, double 2.000000e+00, double 3.000000e+00>
  %broadcast.splatinsert37 = insertelement <4 x double> poison, double %1, i64 0
  %broadcast.splat38 = shufflevector <4 x double> %broadcast.splatinsert37, <4 x double> poison, <4 x i32> zeroinitializer
  %i.d = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat38, <double 4.910000e-01, double 9.441000e-01, double 1.728000e+00, double poison>
  %i.e = fdiv reassoc nsz arcp contract afn <4 x double> %i.d, %broadcast.splat36 ; 3 uses
  %i.f = fadd reassoc nsz arcp contract afn <4 x double> %i.c, %i.e
  %i.g = fmul reassoc nsz arcp contract afn <4 x double> %i.f, splat (double f0x3FD5555555555555) ; 3 uses
  %i.h = fadd reassoc nsz arcp contract afn <4 x double> %i.g, %i.b ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ule <4 x double> %i.h, zeroinitializer
  %i.j = sext <4 x i1> %i.i to <4 x i32>
  %i.k = fptosi <4 x double> %i.h to <4 x i32>
  %i.l = add nsw <4 x i32> %i.j, %i.k             ; 3 uses
  %i.m = fadd reassoc nsz arcp contract afn <4 x double> %i.g, %i.e ; 2 uses
  %i.n = fcmp reassoc nsz arcp contract afn ule <4 x double> %i.m, zeroinitializer
  %i.o = sext <4 x i1> %i.n to <4 x i32>
  %i.p = fptosi <4 x double> %i.m to <4 x i32>
  %i.q = add nsw <4 x i32> %i.o, %i.p             ; 3 uses
  %i.r = add nsw <4 x i32> %i.l, %i.q
  %i.s = fadd reassoc nsz arcp contract afn <4 x double> %i.g, <double 0.000000e+00, double 1.000000e+00, double 2.000000e+00, double 3.000000e+00> ; 2 uses
  %i.t = fcmp reassoc nsz arcp contract afn ule <4 x double> %i.s, zeroinitializer
  %i.u = sext <4 x i1> %i.t to <4 x i32>
  %i.v = fptosi <4 x double> %i.s to <4 x i32>
  %i.w = add nsw <4 x i32> %i.u, %i.v             ; 3 uses
  %i.x = add nsw <4 x i32> %i.r, %i.w
  %i.y = sitofp reassoc nsz arcp contract afn <4 x i32> %i.x to <4 x double>
  %i.z = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.y, splat (double f0x3FC5555555555555) ; 3 uses
  %i.aa = sitofp reassoc nsz arcp contract afn <4 x i32> %i.q to <4 x double>
  %i.ab = fsub reassoc nsz arcp contract afn <4 x double> %i.z, %i.aa
  %i.ac = fadd reassoc nsz arcp contract afn <4 x double> %i.ab, %i.e ; 9 uses
  %i.ad = fadd reassoc nsz arcp contract afn <4 x double> %i.ac, splat (double -5.000000e-01) ; 3 uses
  %i.ae = fmul reassoc nsz arcp contract afn <4 x double> %i.ad, %i.ad
  %i.af = sitofp reassoc nsz arcp contract afn <4 x i32> %i.w to <4 x double>
  %i.ag = fsub reassoc nsz arcp contract afn <4 x double> %i.z, %i.af ; 2 uses
  %i.ah = fadd reassoc nsz arcp contract afn <4 x double> %i.ag, <double -5.000000e-01, double 5.000000e-01, double 1.500000e+00, double 2.500000e+00> ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn <4 x double> %i.ah, %i.ah
  %i.aj = fadd reassoc nsz arcp contract afn <4 x double> %i.ae, %i.ai
  %i.ak = sitofp reassoc nsz arcp contract afn <4 x i32> %i.l to <4 x double>
  %i.al = fsub reassoc nsz arcp contract afn <4 x double> %i.z, %i.ak
  %i.am = fadd reassoc nsz arcp contract afn <4 x double> %i.al, %i.b ; 9 uses
  %i.an = fadd reassoc nsz arcp contract afn <4 x double> %i.am, splat (double -5.000000e-01) ; 3 uses
  %i.ao = fmul reassoc nsz arcp contract afn <4 x double> %i.an, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn <4 x double> %i.aj, %i.ao
  %i.aq = fsub reassoc nsz arcp contract afn <4 x double> splat (double 6.000000e-01), %i.ap ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn uge <4 x double> %i.aq, zeroinitializer ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn <4 x double> %i.aq, %i.aq ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn <4 x double> %i.as, %i.as
  %i.au = and <4 x i32> %i.l, splat (i32 255)     ; 3 uses
  %i.av = zext nneg <4 x i32> %i.au to <4 x i64>  ; 2 uses
  %wide.gep69 = getelementptr [8 x i8], ptr @perm_mod, <4 x i64> %i.av
  %wide.gep70 = getelementptr i8, <4 x ptr> %wide.gep69, i64 8
  %i.aw = and <4 x i32> %i.q, splat (i32 255)     ; 3 uses
  %i.ax = zext nneg <4 x i32> %i.aw to <4 x i64>  ; 2 uses
  %wide.gep65 = getelementptr [8 x i8], ptr @perm, <4 x i64> %i.ax
  %wide.gep66 = getelementptr i8, <4 x ptr> %wide.gep65, i64 8
  %i.ay = and <4 x i32> %i.w, splat (i32 255)     ; 3 uses
  %i.az = zext nneg <4 x i32> %i.ay to <4 x i64>
  %wide.gep62 = getelementptr inbounds nuw [8 x i8], ptr @perm, <4 x i64> %i.az ; 2 uses
  %wide.gep63 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep62, i64 8
  %wide.masked.gather64 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep63, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !69
  %wide.gep67 = getelementptr [8 x i8], <4 x ptr> %wide.gep66, <4 x i64> %wide.masked.gather64
  %wide.masked.gather68 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep67, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !69
  %wide.gep71 = getelementptr [8 x i8], <4 x ptr> %wide.gep70, <4 x i64> %wide.masked.gather68
  %wide.masked.gather72 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep71, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !69
  %wide.gep101 = getelementptr inbounds nuw [24 x i8], ptr @grad3, <4 x i64> %wide.masked.gather72 ; 3 uses
  %wide.gep103 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep101, i64 8
  %i.ba = insertelement <4 x i1> %i.ar, i1 false, i64 3 ; 3 uses
  %wide.masked.gather104 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep103, <4 x i1> %i.ba, <4 x double> poison), !tbaa !70
  %i.bb = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather104, %i.ad
  %wide.masked.gather102 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep101, <4 x i1> %i.ba, <4 x double> poison), !tbaa !70
  %i.bc = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather102, %i.an
  %i.bd = fadd reassoc nsz arcp contract afn <4 x double> %i.bb, %i.bc
  %wide.gep105 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep101, i64 16
  %wide.masked.gather106 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep105, <4 x i1> %i.ba, <4 x double> poison), !tbaa !70
  %i.be = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather106, %i.ah
  %i.bf = fadd reassoc nsz arcp contract afn <4 x double> %i.bd, %i.be
  %i.bg = fmul reassoc nsz arcp contract afn <4 x double> %i.at, %i.bf
  %i.bh = fcmp reassoc nsz arcp contract afn ult <4 x double> %i.am, %i.ac ; 5 uses
  %i.bi = xor <4 x i1> %i.bh, splat (i1 true)
  %i.bj = fadd reassoc nsz arcp contract afn <4 x double> %i.ag, <double 0.000000e+00, double 1.000000e+00, double 2.000000e+00, double 3.000000e+00> ; 9 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ult <4 x double> %i.ac, %i.bj ; 2 uses
  %i.bl = select <4 x i1> %i.bi, <4 x i1> %i.bk, <4 x i1> zeroinitializer ; 2 uses
  %i.bm = insertelement <4 x i1> %i.bl, i1 false, i64 3 ; 2 uses
  %not.111 = xor <4 x i1> %i.bm, splat (i1 true)  ; 2 uses
  %i.bn = uitofp <4 x i1> %not.111 to <4 x double>
  %i.bo = fsub reassoc nsz arcp contract afn <4 x double> %i.ac, %i.bn
  %i.bp = fadd reassoc nsz arcp contract afn <4 x double> %i.bo, splat (double f0x3FD5555555555555) ; 3 uses
  %i.bq = fmul reassoc nsz arcp contract afn <4 x double> %i.bp, %i.bp
  %i.br = select <4 x i1> %i.bh, <4 x i1> splat (i1 true), <4 x i1> %i.bk
  %i.bs = xor <4 x i1> %i.br, splat (i1 true)     ; 2 uses
  %i.bt = insertelement <4 x i1> %i.bs, i1 false, i64 3
  %not.110 = xor <4 x i1> %i.bt, splat (i1 true)
  %i.bu = fcmp reassoc nsz arcp contract afn olt <4 x double> %i.ac, %i.bj ; 2 uses
  %i.bv = xor <4 x i1> %i.bu, <i1 true, i1 true, i1 true, i1 poison>
  %i.bw = select <4 x i1> %i.bh, <4 x i1> %i.bv, <4 x i1> <i1 false, i1 false, i1 false, i1 poison>
  %i.bx = insertelement <4 x i1> %i.bw, i1 false, i64 3 ; 3 uses
  %not. = xor <4 x i1> %i.bx, splat (i1 true)
  %i.by = fcmp reassoc nsz arcp contract afn olt <4 x double> %i.am, %i.bj ; 2 uses
  %narrow = select <4 x i1> %not., <4 x i1> splat (i1 true), <4 x i1> %i.by
  %narrow109 = select <4 x i1> %not.110, <4 x i1> %narrow, <4 x i1> zeroinitializer ; 2 uses
  %i.bz = uitofp <4 x i1> %narrow109 to <4 x double>
  %i.ca = fsub reassoc nsz arcp contract afn <4 x double> %i.bj, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn <4 x double> %i.ca, splat (double f0x3FD5555555555555) ; 3 uses
  %i.cc = fmul reassoc nsz arcp contract afn <4 x double> %i.cb, %i.cb
  %i.cd = fadd reassoc nsz arcp contract afn <4 x double> %i.bq, %i.cc
  %i.ce = select <4 x i1> %i.bh, <4 x i1> %i.bu, <4 x i1> zeroinitializer ; 2 uses
  %i.cf = select <4 x i1> %i.ce, <4 x i1> splat (i1 true), <4 x i1> %i.by
  %i.cg = select <4 x i1> %i.bh, <4 x i1> %i.cf, <4 x i1> zeroinitializer
  %narrow114 = xor <4 x i1> %i.cg, splat (i1 true) ; 2 uses
  %i.ch = uitofp <4 x i1> %narrow114 to <4 x double>
  %i.ci = fsub reassoc nsz arcp contract afn <4 x double> %i.am, %i.ch
  %i.cj = fadd reassoc nsz arcp contract afn <4 x double> %i.ci, splat (double f0x3FD5555555555555) ; 3 uses
  %i.ck = fmul reassoc nsz arcp contract afn <4 x double> %i.cj, %i.cj
  %i.cl = fadd reassoc nsz arcp contract afn <4 x double> %i.cd, %i.ck
  %i.cm = fsub reassoc nsz arcp contract afn <4 x double> splat (double 6.000000e-01), %i.cl ; 3 uses
  %i.cn = fcmp reassoc nsz arcp contract afn uge <4 x double> %i.cm, zeroinitializer ; 2 uses
  %i.co = fmul reassoc nsz arcp contract afn <4 x double> %i.cm, %i.cm ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn <4 x double> %i.co, %i.co
  %predphi39 = zext <4 x i1> %narrow109 to <4 x i32>
  %i.cq = add nuw nsw <4 x i32> %i.ay, %predphi39
  %i.cr = zext nneg <4 x i32> %i.cq to <4 x i64>
  %wide.gep54 = getelementptr inbounds nuw [8 x i8], ptr @perm, <4 x i64> %i.cr
  %wide.masked.gather55 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep54, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !69
  %wide.gep56 = getelementptr [8 x i8], ptr @perm, <4 x i64> %wide.masked.gather55
  %predphi40 = zext <4 x i1> %not.111 to <4 x i32>
  %i.cs = add nuw nsw <4 x i32> %i.aw, %predphi40
  %i.ct = zext nneg <4 x i32> %i.cs to <4 x i64>
  %wide.gep57 = getelementptr [8 x i8], <4 x ptr> %wide.gep56, <4 x i64> %i.ct
  %wide.masked.gather58 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep57, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !69
  %wide.gep59 = getelementptr [8 x i8], ptr @perm_mod, <4 x i64> %wide.masked.gather58
  %predphi42 = zext <4 x i1> %narrow114 to <4 x i32>
  %i.cu = add nuw nsw <4 x i32> %i.au, %predphi42
  %i.cv = zext nneg <4 x i32> %i.cu to <4 x i64>
  %wide.gep60 = getelementptr [8 x i8], <4 x ptr> %wide.gep59, <4 x i64> %i.cv
  %wide.masked.gather61 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep60, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !69
  %wide.gep94 = getelementptr inbounds nuw [24 x i8], ptr @grad3, <4 x i64> %wide.masked.gather61 ; 3 uses
  %wide.gep96 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep94, i64 8
  %i.cw = insertelement <4 x i1> %i.cn, i1 false, i64 3 ; 3 uses
  %wide.masked.gather97 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep96, <4 x i1> %i.cw, <4 x double> poison), !tbaa !70
  %i.cx = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather97, %i.bp
  %wide.masked.gather95 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep94, <4 x i1> %i.cw, <4 x double> poison), !tbaa !70
  %i.cy = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather95, %i.cj
  %i.cz = fadd reassoc nsz arcp contract afn <4 x double> %i.cx, %i.cy
  %wide.gep98 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep94, i64 16
  %wide.masked.gather99 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep98, <4 x i1> %i.cw, <4 x double> poison), !tbaa !70
  %i.da = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather99, %i.cb
  %i.db = fadd reassoc nsz arcp contract afn <4 x double> %i.cz, %i.da
  %i.dc = fmul reassoc nsz arcp contract afn <4 x double> %i.cp, %i.db
  %i.dd = uitofp <4 x i1> %i.bx to <4 x double>
end_hunk_0
begin_hunk_1_@init_global:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.b ] ; 5 uses
  %i.a = and i64 %indvars.iv.i, 254
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @permutation, i64 %i.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @perm, i64 %indvars.iv.i
  store i64 %i.d, ptr %i.e, align 16, !tbaa !69
  %i.f = urem i64 %i.d, 12
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @perm_mod, i64 %indvars.iv.i
  store i64 %i.f, ptr %i.g, align 16, !tbaa !69
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.h = and i64 %indvars.iv.next.i, 255
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @permutation, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !20
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @perm, i64 %indvars.iv.next.i
  store i64 %i.k, ptr %i.l, align 8, !tbaa !69
  %i.m = urem i64 %i.k, 12
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @perm_mod, i64 %indvars.iv.next.i
  store i64 %i.m, ptr %i.n, align 8, !tbaa !69
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 512
  br i1 %exitcond.not.i.1, label %_simplex_noise_init.exit, label %bb.b

_simplex_noise_init.exit:                         ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 24) #22 ; 9 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !79
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.5) #22 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !90
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %i.c, float noundef 2.132000e+02) #22
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !90
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.d, i32 noundef 0) #22
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !90
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.e, ptr noundef nonnull @.str.6) #22
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.f, ptr noundef %i.g) #22
  %i.h = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.8) #22 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !92
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.h, ptr noundef nonnull @.str.9) #22
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.j, ptr noundef %i.k) #22
  %i.l = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.11) #22 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !93
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.l, ptr noundef nonnull @.str.9) #22
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.n, ptr noundef %i.o) #22
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !94
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !40
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !40
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !40
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !40
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !40
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !40
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !40
  store ptr @introspection_init.f4, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 424), align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.18) #23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.5) #23
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.8) #23
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.11) #23
  %.not12 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %spec.select = select i1 %.not12, ptr %i.g, ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.f ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.18) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.5) #22
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.8) #22
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.11) #22
  %.not7 = icmp eq i32 %i.d, 0
  %. = select i1 %.not7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ %., %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr>, <4 x i1>, <4 x i64>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"dt_iop_grain_params_v1_t", !8, i64 0, !13, i64 4, !13, i64 8}
!13 = !{!"float", !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"dt_iop_grain_params_v2_t", !8, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!16 = !{!13, !13, i64 0}
!17 = !{!15, !13, i64 12}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!22, !8, i64 132}
!22 = !{!"dt_dev_pixelpipe_iop_t", !23, i64 0, !24, i64 8, !19, i64 16, !19, i64 24, !8, i64 32, !8, i64 36, !25, i64 40, !27, i64 56, !28, i64 64, !9, i64 88, !13, i64 104, !8, i64 108, !8, i64 112, !29, i64 120, !8, i64 128, !8, i64 132, !30, i64 136, !30, i64 156, !30, i64 176, !30, i64 196, !8, i64 216, !8, i64 220, !31, i64 224, !31, i64 352, !9, i64 480, !8, i64 516, !35, i64 520, !36, i64 528, !36, i64 576}
!23 = !{!"p1 _ZTS15dt_iop_module_t", !19, i64 0}
!24 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !19, i64 0}
!25 = !{!"dt_dev_histogram_collection_params_t", !26, i64 0, !8, i64 8}
!26 = !{!"p1 _ZTS18dt_histogram_roi_t", !19, i64 0}
!27 = !{!"p1 int", !19, i64 0}
!28 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !29, i64 8, !8, i64 16, !8, i64 20}
!29 = !{!"long", !9, i64 0}
!30 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !13, i64 16}
!31 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !32, i64 48, !34, i64 64, !9, i64 96, !8, i64 112}
!32 = !{!"", !33, i64 0, !33, i64 2}
!33 = !{!"short", !9, i64 0}
!34 = !{!"", !8, i64 0, !9, i64 16}
!35 = !{!"p1 _ZTS11_GHashTable", !19, i64 0}
!36 = !{!"dt_dev_distorted_mask_cache_t", !37, i64 0, !30, i64 8, !29, i64 32, !29, i64 40}
!37 = !{!"p1 float", !19, i64 0}
!38 = !{!22, !19, i64 16}
!39 = !{!22, !24, i64 8}
!40 = !{!9, !9, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!30, !8, i64 8}
!44 = !{!45, !8, i64 644}
!45 = !{!"dt_dev_pixelpipe_t", !46, i64 0, !8, i64 120, !29, i64 128, !37, i64 136, !8, i64 144, !8, i64 148, !13, i64 152, !8, i64 156, !8, i64 160, !31, i64 176, !50, i64 304, !50, i64 312, !50, i64 320, !50, i64 328, !51, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !52, i64 360, !29, i64 368, !8, i64 376, !8, i64 380, !13, i64 384, !9, i64 388, !29, i64 416, !53, i64 424, !53, i64 464, !53, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !54, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !9, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !55, i64 656, !8, i64 2544, !52, i64 2552, !8, i64 2560, !51, i64 2568, !51, i64 2576, !51, i64 2584, !8, i64 2592, !37, i64 2600, !29, i64 2608, !9, i64 2616, !9, i64 2632}
!46 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !29, i64 8, !29, i64 16, !47, i64 24, !48, i64 32, !49, i64 40, !48, i64 48, !27, i64 56, !27, i64 64, !29, i64 72, !8, i64 80, !29, i64 88, !29, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!47 = !{!"any p2 pointer", !19, i64 0}
!48 = !{!"p1 long", !19, i64 0}
!49 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !19, i64 0}
!50 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !19, i64 0}
!51 = !{!"p1 _ZTS6_GList", !19, i64 0}
!52 = !{!"p1 omnipotent char", !19, i64 0}
!53 = !{!"dt_pthread_mutex_t", !9, i64 0}
!54 = !{!"dt_dev_detail_mask_t", !30, i64 0, !29, i64 24, !37, i64 32}
!55 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !8, i64 40, !9, i64 44, !9, i64 108, !9, i64 172, !9, i64 300, !9, i64 364, !9, i64 428, !9, i64 492, !29, i64 560, !8, i64 568, !9, i64 572, !9, i64 800, !9, i64 864, !9, i64 928, !9, i64 992, !8, i64 1120, !9, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !13, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !29, i64 1448, !29, i64 1456, !29, i64 1464, !29, i64 1472, !8, i64 1480, !31, i64 1488, !9, i64 1616, !52, i64 1656, !8, i64 1664, !8, i64 1668, !56, i64 1672, !57, i64 1680, !59, i64 1704, !33, i64 1736, !9, i64 1738, !8, i64 1748, !8, i64 1752, !13, i64 1756, !13, i64 1760, !9, i64 1776, !9, i64 1792, !9, i64 1840, !51, i64 1856, !60, i64 1864, !8, i64 1872, !8, i64 1876}
!56 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!57 = !{!"dt_image_geoloc_t", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"double", !9, i64 0}
!59 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!60 = !{!"p1 _ZTS16dt_cache_entry_t", !19, i64 0}
!61 = !{!62, !13, i64 4}
!62 = !{!"dt_iop_grain_data_t", !8, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !9, i64 16}
!63 = !{!30, !13, i64 16}
!64 = !{!22, !13, i64 104}
!65 = !{!30, !8, i64 12}
!66 = !{!62, !13, i64 8}
!67 = !{!30, !8, i64 4}
!68 = !{!30, !8, i64 0}
!69 = !{!29, !29, i64 0}
!70 = !{!58, !58, i64 0}
!71 = !{!72, !8, i64 0}
!72 = !{!"dt_iop_grain_params_t", !8, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!73 = !{!62, !8, i64 0}
!74 = !{!72, !13, i64 12}
!75 = !{!62, !13, i64 12}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!80, !19, i64 704}
!80 = !{!"dt_iop_module_t", !8, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !19, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !19, i64 224, !19, i64 232, !19, i64 240, !19, i64 248, !19, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !19, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !19, i64 368, !19, i64 376, !19, i64 384, !19, i64 392, !19, i64 400, !19, i64 408, !19, i64 416, !19, i64 424, !19, i64 432, !19, i64 440, !81, i64 448, !9, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !9, i64 512, !9, i64 528, !9, i64 544, !9, i64 560, !9, i64 576, !9, i64 592, !27, i64 608, !28, i64 616, !9, i64 640, !8, i64 656, !8, i64 660, !82, i64 664, !8, i64 672, !8, i64 676, !19, i64 680, !19, i64 688, !8, i64 696, !19, i64 704, !53, i64 712, !19, i64 752, !19, i64 760, !83, i64 768, !83, i64 776, !19, i64 784, !84, i64 792, !87, i64 824, !87, i64 832, !87, i64 840, !87, i64 848, !87, i64 856, !87, i64 864, !87, i64 872, !8, i64 880, !87, i64 888, !87, i64 896, !87, i64 904, !88, i64 912, !88, i64 920, !87, i64 928, !87, i64 936, !8, i64 944, !89, i64 952, !8, i64 960, !9, i64 964, !8, i64 1092, !87, i64 1096, !19, i64 1104, !8, i64 1112}
!81 = !{!"p1 _ZTS8_GModule", !19, i64 0}
!82 = !{!"p1 _ZTS12dt_develop_t", !19, i64 0}
!83 = !{!"p1 _ZTS25dt_develop_blend_params_t", !19, i64 0}
!84 = !{!"", !85, i64 0, !86, i64 16}
!85 = !{!"", !35, i64 0, !35, i64 8}
!86 = !{!"", !23, i64 0, !8, i64 8}
!87 = !{!"p1 _ZTS10_GtkWidget", !19, i64 0}
!88 = !{!"p1 _ZTS7_GSList", !19, i64 0}
!89 = !{!"p1 _ZTS18dt_iop_module_so_t", !19, i64 0}
!90 = !{!91, !87, i64 0}
!91 = !{!"dt_iop_grain_gui_data_t", !87, i64 0, !87, i64 8, !87, i64 16}
!92 = !{!91, !87, i64 8}
!93 = !{!91, !87, i64 16}
!94 = !{!95, !8, i64 0}
!95 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !52, i64 8, !29, i64 16, !96, i64 24, !29, i64 32, !29, i64 40}
!96 = !{!"p1 _ZTS24dt_introspection_field_t", !19, i64 0}
end_hunk_1
