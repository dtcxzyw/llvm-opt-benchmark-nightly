inline.NumInlined: 14
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@legacy_params:bb.a
; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #22
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #22
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #22
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
  %6 = tail call reassoc nnan nsz arcp contract afn double @llvm.maxnum.f64(double %i.cw, double f0x400AAAAAAAAAAAAB)
  %7 = fmul reassoc nnan nsz arcp contract afn double %6, 3.000000e-01
  %i.cx = fptosi double %7 to i32
  %i.cy = urem i32 %.07.lcssa.i, %i.cx
  %i.cz = sext i32 %i.bp to i64
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = icmp sgt i32 %i.bp, 0
  %i.dc = uitofp reassoc nsz arcp contract afn i32 %i.cy to double
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.de = fmul reassoc nsz arcp contract afn float %i.cv, 1.905000e-01
  br i1 %i.db, label %.lr.ph90.split, label %.loopexit82

.lr.ph90.split:                                   ; preds = %.lr.ph90
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !67
  %i.dh = load i32, ptr %5, align 4, !tbaa !68
  %wide.trip.count = zext nneg i32 %i.cs to i64
  %i.di = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.cp
  %i.dj = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dk = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.cp
  %i.dl = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph90.split, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph90.split ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.dn = mul nuw i64 %i.da, %indvars.iv          ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dn
  %i.dq = trunc i64 %indvars.iv to i32
  %i.dr = add i32 %i.dg, %i.dq
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %i.dr to double
  %i.dt = fmul reassoc nsz arcp contract afn double %i.ds, %i.di ; 2 uses
  %i.du = insertelement <2 x double> poison, double %i.dt, i64 1
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond94.not, label %.loopexit82, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %.07587 = phi ptr [ %i.do, %.lr.ph ], [ %i.gz, %.loopexit ] ; 4 uses
  %.07686 = phi ptr [ %i.dp, %.lr.ph ], [ %i.gy, %.loopexit ] ; 4 uses
  %.07985 = phi i32 [ 0, %.lr.ph ], [ %i.ha, %.loopexit ] ; 2 uses
  %i.dv = add nsw i32 %i.dh, %.07985
  %i.dw = sitofp reassoc nsz arcp contract afn i32 %i.dv to double
  %i.dx = fmul reassoc nsz arcp contract afn double %i.dw, %i.dk
  %i.dy = fadd reassoc nsz arcp contract afn double %i.dx, %i.dc ; 2 uses
  br i1 %i.ck, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.dz = insertelement <2 x double> %i.du, double %i.dy, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.07784 = phi i32 [ %i.eu, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.07883 = phi float [ %i.et, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %i.ea = uitofp nneg i32 %.07784 to float        ; 2 uses
  %i.eb = fmul reassoc nnan nsz arcp contract afn float %i.ea, f0x3FCF3CF4 ; 2 uses
  %i.ec = fptosi float %i.eb to i32
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float
  %i.ee = fsub reassoc nnan nsz arcp contract afn float %i.eb, %i.ed
  %i.ef = fmul reassoc nnan nsz arcp contract afn float %i.ea, f0x3D430C31
  %i.eg = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.ee, i64 1
  %i.ei = fpext nnan <2 x float> %i.eh to <2 x double>
  %i.ej = fmul reassoc nsz arcp contract afn <2 x double> %i.dm, %i.ei
  %i.ek = fptrunc <2 x double> %i.ej to <2 x float>
  %i.el = fpext <2 x float> %i.ek to <2 x double>
  %i.em = fadd reassoc nsz arcp contract afn <2 x double> %i.dz, %i.el ; 2 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = extractelement <2 x double> %i.em, i64 1
  %i.ep = tail call reassoc nsz arcp contract afn fastcc double @_simplex_2d_noise(double noundef %i.en, double noundef %i.eo, double noundef %i.ce)
  %i.eq = fmul reassoc nsz arcp contract afn double %i.ep, f0x3FA8618618618618
  %i.er = fpext reassoc nsz arcp contract afn float %.07883 to double
  %i.es = fadd reassoc nsz arcp contract afn double %i.eq, %i.er
  %i.et = fptrunc reassoc nsz arcp contract afn double %i.es to float ; 2 uses
  %i.eu = add nuw nsw i32 %.07784, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.eu, 21
  br i1 %exitcond.not, label %.loopexit, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.ev = tail call reassoc nsz arcp contract afn fastcc double @_simplex_2d_noise(double noundef %i.dy, double noundef %i.dt, double noundef %i.ce)
  %i.ew = fptrunc reassoc nsz arcp contract afn double %i.ev to float
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.d
  %.1 = phi nsz float [ %i.ew, %bb.d ], [ %i.et, %.preheader ]
  %i.ex = load float, ptr %.07587, align 4, !tbaa !16 ; 2 uses
  %i.ey = insertelement <2 x float> %i.dj, float %i.ex, i64 1
  %i.ez = insertelement <2 x float> <float poison, float 1.270000e+00>, float %.1, i64 0
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, %i.ez
  %i.fb = fadd reassoc nsz arcp contract afn <2 x float> %i.fa, <float 6.350000e+01, float -0.000000e+00> ; 3 uses
  %i.fc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fb, zeroinitializer
  %i.fd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fb, splat (float 1.270000e+02)
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.fb, <2 x float> splat (float 1.270000e+02)
  %i.ff = select <2 x i1> %i.fc, <2 x float> %i.fe, <2 x float> zeroinitializer ; 4 uses
  %i.fg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ff, splat (float 1.260000e+02)
  %i.fh = select <2 x i1> %i.fg, <2 x float> %i.ff, <2 x float> splat (float 1.260000e+02)
  %i.fi = fptosi <2 x float> %i.fh to <2 x i32>   ; 3 uses
  %i.fj = extractelement <2 x i32> %i.fi, i64 0   ; 3 uses
  %i.fk = add nsw i32 %i.fj, 1                    ; 2 uses
  %i.fl = sitofp <2 x i32> %i.fi to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub reassoc nnan nsz arcp contract afn <2 x float> %i.ff, %i.fl
  %i.fm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop100 = fsub reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fl
  %i.fn = extractelement <2 x float> %foldExtExtBinop100, i64 1 ; 3 uses
  %i.fo = extractelement <2 x i32> %i.fi, i64 1
  %i.fp = shl nsw i32 %i.fo, 7                    ; 3 uses
  %i.fq = add nsw i32 %i.fp, %i.fj
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !16
  %i.fu = add nsw i32 %i.fp, %i.fk
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !16
  %i.fy = add i32 %i.fp, 128                      ; 2 uses
  %i.fz = add nsw i32 %i.fy, %i.fj
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !16
  %i.gd = add nsw i32 %i.fy, %i.fk
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !16
  %i.gh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fn ; 2 uses
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.ft
  %i.gj = fmul reassoc nsz arcp contract afn float %i.fn, %i.gc
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gi, %i.gj ; 2 uses
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gh, %i.fx
  %i.gm = fmul reassoc nsz arcp contract afn float %i.fn, %i.gg
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gl, %i.gm
  %i.go = fsub reassoc nsz arcp contract afn float %i.gn, %i.gk
  %i.gp = fmul reassoc nsz arcp contract afn float %i.go, %i.fm
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gk, %i.ex
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %i.gp
  store float %i.gr, ptr %.07686, align 4, !tbaa !16
  %i.gs = getelementptr inbounds nuw i8, ptr %.07587, i64 4
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !16
  %i.gu = getelementptr inbounds nuw i8, ptr %.07686, i64 4
  store float %i.gt, ptr %i.gu, align 4, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %.07587, i64 8
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !16
  %i.gx = getelementptr inbounds nuw i8, ptr %.07686, i64 8
  store float %i.gw, ptr %i.gx, align 4, !tbaa !16
  %i.gy = getelementptr inbounds nuw i8, ptr %.07686, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %.07587, i64 16
  %i.ha = add nuw nsw i32 %.07985, 1              ; 2 uses
  %exitcond92.not = icmp eq i32 %i.ha, %i.bp
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
end_hunk_0
