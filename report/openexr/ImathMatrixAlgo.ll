inline.NumInlined: 1133
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_mb:bb.a
  tail call void @_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i64 noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.Imath_3_2::Matrix33", align 16 ; 12 uses
  %7 = alloca %"class.Imath_3_2::Matrix33", align 8 ; 12 uses
  %8 = alloca %"class.Imath_3_2::Matrix33", align 16 ; 12 uses
  %9 = alloca %"class.Imath_3_2::Vec3", align 8   ; 3 uses
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %3, null                     ; 3 uses
  br i1 %i.h, label %.preheader227.preheader, label %.preheader228

.preheader227.preheader:                          ; preds = %bb.c
  %xtraiter = and i64 %4, 1
  %i.i = icmp eq i64 %4, 1
  br i1 %i.i, label %.preheader227.epil.preheader, label %.preheader227.preheader.new

.preheader227.preheader.new:                      ; preds = %.preheader227.preheader
  %unroll_iter = and i64 %4, -2
  br label %.preheader227

.unr-lcssa:                                       ; preds = %.preheader227
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.d, label %.preheader227.epil.preheader

.preheader227.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader227.preheader
  %.084244.epil.init = phi i64 [ 0, %.preheader227.preheader ], [ %i.bb, %.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.ax, %.unr-lcssa ]
  %.epil.init440 = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.as, %.unr-lcssa ]
  %.epil.init442 = phi <2 x double> [ zeroinitializer, %.preheader227.preheader ], [ %i.ba, %.unr-lcssa ]
  %lcmp.mod446 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod446)
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.084244.epil.init ; 2 uses
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !10
  %i.n = fadd <2 x double> %.epil.init440, %i.k
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.084244.epil.init ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !10
  %i.s = fadd <2 x double> %.epil.init, %i.p
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.m, i64 1
  %i.v = fadd <2 x double> %.epil.init442, %i.u
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.preheader227.epil.preheader
  %.lcssa434 = phi <2 x double> [ %i.as, %.unr-lcssa ], [ %i.n, %.preheader227.epil.preheader ]
  %.lcssa433 = phi <2 x double> [ %i.ax, %.unr-lcssa ], [ %i.s, %.preheader227.epil.preheader ]
  %.lcssa432 = phi <2 x double> [ %i.ba, %.unr-lcssa ], [ %i.v, %.preheader227.epil.preheader ]
  %i.w = uitofp i64 %4 to double
  br label %.loopexit229

.preheader227:                                    ; preds = %.preheader227, %.preheader227.preheader.new
  %.084244 = phi i64 [ 0, %.preheader227.preheader.new ], [ %i.bb, %.preheader227 ] ; 4 uses
  %i.x = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.ax, %.preheader227 ]
  %i.y = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.as, %.preheader227 ]
  %i.z = phi <2 x double> [ zeroinitializer, %.preheader227.preheader.new ], [ %i.ba, %.preheader227 ]
  %niter = phi i64 [ 0, %.preheader227.preheader.new ], [ %niter.next.1, %.preheader227 ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.084244 ; 2 uses
  %i.ab = load <2 x double>, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !10
  %i.ae = fadd <2 x double> %i.y, %i.ab
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.084244 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !10
  %i.aj = fadd <2 x double> %i.x, %i.ag
  %i.ak = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ad, i64 1
  %i.am = fadd <2 x double> %i.z, %i.al
  %i.an = or disjoint i64 %.084244, 1             ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ao, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10
  %i.as = fadd <2 x double> %i.ae, %i.ap          ; 3 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.an ; 2 uses
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10
  %i.ax = fadd <2 x double> %i.aj, %i.au          ; 3 uses
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ar, i64 1
  %i.ba = fadd <2 x double> %i.am, %i.az          ; 3 uses
  %i.bb = add nuw i64 %.084244, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader227, !llvm.loop !12

.preheader228:                                    ; preds = %bb.c, %.preheader228
  %.081237 = phi double [ %i.bh, %.preheader228 ], [ 0.000000e+00, %bb.c ]
  %.085236 = phi i64 [ %i.ca, %.preheader228 ], [ 0, %bb.c ] ; 4 uses
  %i.bc = phi <2 x double> [ %i.by, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bd = phi <2 x double> [ %i.bp, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.be = phi <2 x double> [ %i.bz, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.085236
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !8 ; 2 uses
  %i.bh = fadd double %.081237, %i.bg             ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !10
  %i.bl = load <2 x double>, ptr %i.bi, align 8, !tbaa !8
  %i.bm = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bo = fmul <2 x double> %i.bn, %i.bl
  %i.bp = fadd <2 x double> %i.bd, %i.bo          ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !10
  %i.bt = load <2 x double>, ptr %i.bq, align 8, !tbaa !8
  %i.bu = fmul <2 x double> %i.bn, %i.bt
  %i.bv = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bk, i64 1
  %i.bx = fmul <2 x double> %i.bn, %i.bw
  %i.by = fadd <2 x double> %i.bc, %i.bu          ; 2 uses
  %i.bz = fadd <2 x double> %i.be, %i.bx          ; 2 uses
  %i.ca = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %4
  br i1 %exitcond.not, label %.loopexit229, label %.preheader228, !llvm.loop !14

.loopexit229:                                     ; preds = %.preheader228, %bb.d
  %.1 = phi double [ %i.w, %bb.d ], [ %i.bh, %.preheader228 ] ; 2 uses
  %i.cb = phi <2 x double> [ %.lcssa433, %bb.d ], [ %i.by, %.preheader228 ]
  %i.cc = phi <2 x double> [ %.lcssa434, %bb.d ], [ %i.bp, %.preheader228 ]
  %i.cd = phi <2 x double> [ %.lcssa432, %bb.d ], [ %i.bz, %.preheader228 ]
  %i.ce = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  store double 1.000000e+00, ptr %0, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ci, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ck, align 8, !tbaa !8
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %i.cl = insertelement <2 x double> poison, double %.1, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cn = fdiv <2 x double> %i.cc, %i.cm          ; 8 uses
  %i.co = fdiv <2 x double> %i.cb, %i.cm          ; 3 uses
  %i.cp = fdiv <2 x double> %i.cd, %i.cm          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %i.cu = extractelement <2 x double> %i.cp, i64 0
  %i.cv = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
  %.083280 = phi i64 [ %i.ea, %.preheader223 ], [ 0, %bb.f ] ; 3 uses
  %i.cw = phi double [ %i.dz, %.preheader223 ], [ 0.000000e+00, %bb.f ]
  %i.cx = phi <2 x double> [ %i.dv, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cy = phi <2 x double> [ %i.dw, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cz = phi <2 x double> [ %i.dx, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.da = phi <2 x double> [ %i.dy, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.083280 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !10
  %10 = load <2 x double>, ptr %i.de, align 8, !tbaa !8
  %i.dh = fsub <2 x double> %10, %i.cn            ; 4 uses
  %i.di = load <2 x double>, ptr %i.db, align 8, !tbaa !8
  %i.dj = fsub <2 x double> %i.di, %i.co          ; 3 uses
  %11 = insertelement <2 x double> poison, double %i.dd, i64 0
  %12 = insertelement <2 x double> %11, double %i.dg, i64 1
  %i.dk = fsub <2 x double> %12, %i.cp            ; 5 uses
  %i.dl = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.dl, %i.dh
  %i.dn = shufflevector <2 x double> %i.dk, <2 x double> %i.dh, <2 x i32> <i32 1, i32 2>
  %i.do = fmul <2 x double> %i.dj, %i.dn
  %i.dp = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dq = shufflevector <2 x double> %i.dh, <2 x double> %i.dk, <2 x i32> <i32 1, i32 3>
  %i.dr = fmul <2 x double> %i.dp, %i.dq
  %i.ds = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %i.ds, %i.dh
  %shift = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.dk, %shift
  %i.du = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dv = fadd <2 x double> %i.dm, %i.cx          ; 2 uses
  %i.dw = fadd <2 x double> %i.do, %i.cy          ; 2 uses
  %i.dx = fadd <2 x double> %i.dr, %i.cz          ; 2 uses
  %i.dy = fadd <2 x double> %i.dt, %i.da          ; 2 uses
  %i.dz = fadd double %i.du, %i.cw                ; 2 uses
  %i.ea = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.ea, %4
  br i1 %exitcond339.not, label %.loopexit224, label %.preheader223, !llvm.loop !15

.preheader225:                                    ; preds = %.preheader225.preheader, %.preheader225
  %.082261 = phi i64 [ %i.fo, %.preheader225 ], [ 0, %.preheader225.preheader ] ; 4 uses
  %i.eb = phi double [ %i.fn, %.preheader225 ], [ 0.000000e+00, %.preheader225.preheader ]
  %i.ec = phi <2 x double> [ %i.fj, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ed = phi <2 x double> [ %i.fk, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ee = phi <2 x double> [ %i.fl, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.ef = phi <2 x double> [ %i.fm, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.082261
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !8 ; 2 uses
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !10
  %i.el = fsub double %i.ek, %i.cu
  %i.em = fmul double %i.eh, %i.el                ; 2 uses
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !10
  %i.eq = load <2 x double>, ptr %i.en, align 8, !tbaa !8
  %i.er = fsub <2 x double> %i.eq, %i.cn          ; 3 uses
  %i.es = load <2 x double>, ptr %i.ei, align 8, !tbaa !8
  %i.et = fsub <2 x double> %i.es, %i.co
  %i.eu = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x double> %i.ev, %i.et          ; 3 uses
  %13 = fsub double %i.ep, %i.cv                  ; 3 uses
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.ex, %i.er
  %i.ez = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fa = insertelement <2 x double> %i.ez, double %13, i64 0
  %i.fb = fmul <2 x double> %i.ew, %i.fa
  %i.fc = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = insertelement <2 x double> %i.ez, double %13, i64 1
  %i.fe = fmul <2 x double> %i.fc, %i.fd
  %i.ff = insertelement <2 x double> poison, double %i.em, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x double> %i.er, %i.fg
  %i.fi = fmul double %i.em, %13
  %i.fj = fadd <2 x double> %i.ey, %i.ec          ; 2 uses
  %i.fk = fadd <2 x double> %i.fb, %i.ed          ; 2 uses
  %i.fl = fadd <2 x double> %i.fe, %i.ee          ; 2 uses
  %i.fm = fadd <2 x double> %i.fh, %i.ef          ; 2 uses
  %i.fn = fadd double %i.fi, %i.eb                ; 2 uses
  %i.fo = add nuw i64 %.082261, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.fo, %4
  br i1 %exitcond337.not, label %.loopexit224, label %.preheader225, !llvm.loop !16

.loopexit224:                                     ; preds = %.preheader225, %.preheader223
  %storemerge = phi double [ %i.dz, %.preheader223 ], [ %i.fn, %.preheader225 ]
  %i.fp = phi <2 x double> [ %i.dv, %.preheader223 ], [ %i.fj, %.preheader225 ]
  %i.fq = phi <2 x double> [ %i.dw, %.preheader223 ], [ %i.fk, %.preheader225 ]
  %i.fr = phi <2 x double> [ %i.dx, %.preheader223 ], [ %i.fl, %.preheader225 ]
  %i.fs = phi <2 x double> [ %i.dy, %.preheader223 ], [ %i.fm, %.preheader225 ]
  store <2 x double> %i.fp, ptr %6, align 16, !tbaa !8
  store <2 x double> %i.fq, ptr %i.cq, align 16, !tbaa !8
  store <2 x double> %i.fr, ptr %i.cr, align 16, !tbaa !8
  store <2 x double> %i.fs, ptr %i.cs, align 16, !tbaa !8
  store double %storemerge, ptr %i.ct, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store double 1.000000e+00, ptr %7, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fu, align 8, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fw, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store double 1.000000e+00, ptr %8, align 16, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fy, align 16, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ga, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef f0x3CB0000000000000, i1 noundef zeroext true)
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !8, !noalias !17 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !8, !noalias !17 ; 2 uses
  %i.gg = load double, ptr %i.fw, align 8, !tbaa !8, !noalias !17 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gi = load double, ptr %i.gh, align 16, !tbaa !8, !noalias !20 ; 2 uses
  %i.gj = load <4 x double>, ptr %7, align 8, !tbaa !8, !noalias !17 ; 4 uses
  %i.gk = load double, ptr %i.gb, align 8, !tbaa !8, !noalias !17
  %i.gl = load double, ptr %i.ft, align 8, !tbaa !8, !noalias !17
  %i.gm = load <2 x double>, ptr %i.fu, align 8, !tbaa !8, !noalias !17 ; 2 uses
  %i.gn = load double, ptr %i.fv, align 8, !tbaa !8, !noalias !17
  %i.go = shufflevector <2 x double> %i.gm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gp = shufflevector <4 x double> %i.gj, <4 x double> %i.go, <2 x i32> <i32 1, i32 4>
  %i.gq = shufflevector <4 x double> %i.gj, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gr = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = shufflevector <4 x double> %i.gj, <4 x double> %i.go, <2 x i32> <i32 2, i32 5>
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gv = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x double> %i.gv, double %i.gl, i64 0 ; 2 uses
  %i.gx = insertelement <2 x double> %i.gq, double %i.gk, i64 1 ; 2 uses
  %i.gy = shufflevector <4 x double> %i.gj, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.gz = insertelement <2 x double> %i.gy, double %i.gn, i64 1 ; 2 uses
  %i.ha = load <2 x double>, ptr %8, align 16, !tbaa !8, !noalias !20 ; 4 uses
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = fmul <2 x double> %i.gp, %i.hb
  %i.hd = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.gq, <2 x double> %i.hc)
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gt, <2 x double> %i.he) ; 4 uses
  %i.hg = load <2 x double>, ptr %i.gu, align 8, !tbaa !8, !noalias !20 ; 4 uses
  %i.hh = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = shufflevector <2 x double> %i.ha, <2 x double> %i.hg, <2 x i32> <i32 1, i32 3>
  %i.hk = fmul <2 x double> %i.hi, %i.hj
  %i.hl = shufflevector <2 x double> %i.ha, <2 x double> %i.hg, <2 x i32> <i32 0, i32 2>
  %i.hm = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hn, <2 x double> %i.hk) ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 0
  %i.hq = call double @llvm.fmuladd.f64(double %i.gi, double %i.gg, double %i.hp) ; 3 uses
  %i.hr = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hs = fmul <2 x double> %i.gw, %i.hr
  %i.ht = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.gx, <2 x double> %i.hs)
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !8, !noalias !20 ; 2 uses
  %i.hx = load double, ptr %i.ga, align 16, !tbaa !8, !noalias !20 ; 2 uses
  %i.hy = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = fmul <2 x double> %i.gw, %i.hz
  %i.ib = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = fmul double %i.gf, %i.hw
  %i.ie = load <2 x double>, ptr %i.fz, align 8, !tbaa !8, !noalias !20 ; 3 uses
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.gz, <2 x double> %i.hu) ; 4 uses
  %i.ih = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.gx, <2 x double> %i.ia)
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.gz, <2 x double> %i.ii) ; 4 uses
  %i.ik = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.gd, i64 1
  %i.im = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.in = insertelement <2 x double> %i.im, double %i.id, i64 1
  %i.io = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.il, <2 x double> %i.in) ; 3 uses
  %i.ip = extractelement <2 x double> %i.io, i64 1
  %i.iq = call double @llvm.fmuladd.f64(double %i.hx, double %i.gg, double %i.ip) ; 3 uses
  %i.ir = icmp ne i64 %4, 1
  %or.cond = and i1 %5, %i.ir
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit224
  br i1 %i.h, label %.preheader220.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %bb.g
  %i.is = extractelement <2 x double> %i.cn, i64 0
  %i.it = extractelement <2 x double> %i.cn, i64 1
  %i.iu = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader221

.preheader220.preheader:                          ; preds = %bb.g
  %i.iv = extractelement <2 x double> %i.cn, i64 0
  %i.iw = extractelement <2 x double> %i.cn, i64 1
  %i.ix = extractelement <2 x double> %i.cp, i64 1
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %.079286 = phi i64 [ %i.jo, %.preheader220 ], [ 0, %.preheader220.preheader ] ; 2 uses
  %.sroa.0110.0285 = phi double [ %i.jl, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ] ; 2 uses
  %.sroa.8.0284 = phi double [ %i.jn, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ]
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.079286 ; 3 uses
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !23
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !24
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !10
  %i.je = fsub double %i.iz, %i.iv                ; 2 uses
  %i.jf = fsub double %i.jb, %i.iw                ; 2 uses
  %i.jg = fsub double %i.jd, %i.ix                ; 2 uses
  %i.jh = fmul double %i.jf, %i.jf
  %i.ji = call double @llvm.fmuladd.f64(double %i.je, double %i.je, double %i.jh)
  %i.jj = call noundef double @llvm.fmuladd.f64(double %i.jg, double %i.jg, double %i.ji)
  %i.jk = fsub double %i.jj, %.sroa.8.0284        ; 2 uses
  %i.jl = fadd double %.sroa.0110.0285, %i.jk     ; 3 uses
  %i.jm = fsub double %i.jl, %.sroa.0110.0285
  %i.jn = fsub double %i.jm, %i.jk
  %i.jo = add nuw i64 %.079286, 1                 ; 2 uses
  %exitcond343.not = icmp eq i64 %i.jo, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !25

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.ki, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.kf, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.kh, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078283
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !8
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !23
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !24
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !10
  %i.jx = fsub double %i.js, %i.is                ; 2 uses
  %i.jy = fsub double %i.ju, %i.it                ; 2 uses
  %i.jz = fsub double %i.jw, %i.iu                ; 2 uses
  %i.ka = fmul double %i.jy, %i.jy
  %i.kb = call double @llvm.fmuladd.f64(double %i.jx, double %i.jx, double %i.ka)
  %i.kc = call noundef double @llvm.fmuladd.f64(double %i.jz, double %i.jz, double %i.kb)
  %i.kd = fmul double %i.jq, %i.kc
  %i.ke = fsub double %i.kd, %.sroa.8.1281        ; 2 uses
  %i.kf = fadd double %.sroa.0110.1282, %i.ke     ; 3 uses
  %i.kg = fsub double %i.kf, %.sroa.0110.1282
  %i.kh = fsub double %i.kg, %i.ke
  %i.ki = add nuw i64 %.078283, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.ki, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader221, !llvm.loop !26

.loopexit:                                        ; preds = %.preheader221, %.preheader220
  %.sroa.0110.2 = phi double [ %i.jl, %.preheader220 ], [ %i.kf, %.preheader221 ]
  %i.kj = load <2 x double>, ptr %6, align 16, !tbaa !8
  %i.kk = shufflevector <2 x double> %i.hf, <2 x double> %i.ig, <2 x i32> <i32 0, i32 2>
  %i.kl = fmul <2 x double> %i.kk, %i.kj          ; 2 uses
  %i.km = extractelement <2 x double> %i.kl, i64 0 ; 2 uses
  %i.kn = fadd double %i.km, 0.000000e+00         ; 3 uses
  %i.ko = fsub double %i.kn, %i.km
end_hunk_0
begin_hunk_1_@_ZN9Imath_3_232procrustesRotationAndTranslationIdEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.ni = fmul double %i.iq, %.080
  store <2 x double> %i.nd, ptr %0, align 8, !tbaa !8
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ne, ptr %i.nj, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.nk, align 8, !tbaa !8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.nf, ptr %i.nl, align 8, !tbaa !8
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ng, ptr %i.nm, align 8, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.nn, align 8, !tbaa !8
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.nh, ptr %i.no, align 8, !tbaa !8
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.ni, ptr %i.np, align 8, !tbaa !8
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.nq, align 8, !tbaa !8
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ns = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = fmul <2 x double> %i.ig, %i.nt
  %i.nv = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.nw = shufflevector <2 x double> %i.nv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.hf, <2 x double> %i.nu)
  %i.ny = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.nz = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nz, <2 x double> %i.ij, <2 x double> %i.nx)
  %i.ob = fsub <2 x double> %i.co, %i.oa
  store <2 x double> %i.ob, ptr %i.nr, align 8, !tbaa !8
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.na, ptr %i.oc, align 8, !tbaa !8
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %i.od, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_mb(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat {
bb.a:
  tail call void @_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i64 noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.Imath_3_2::Matrix33", align 16 ; 12 uses
  %7 = alloca %"class.Imath_3_2::Matrix33", align 8 ; 12 uses
  %8 = alloca %"class.Imath_3_2::Matrix33", align 16 ; 12 uses
  %9 = alloca %"class.Imath_3_2::Vec3", align 8   ; 3 uses
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %3, null                     ; 3 uses
  br i1 %i.h, label %.preheader227, label %.preheader228

bb.d:                                             ; preds = %.preheader227
  %i.i = uitofp i64 %4 to double
  br label %.loopexit229

.preheader227:                                    ; preds = %bb.c, %.preheader227
  %.084244 = phi i64 [ %i.ac, %.preheader227 ], [ 0, %bb.c ] ; 3 uses
  %i.j = phi <2 x double> [ %i.aa, %.preheader227 ], [ zeroinitializer, %bb.c ]
  %i.k = phi <2 x double> [ %i.r, %.preheader227 ], [ zeroinitializer, %bb.c ]
  %i.l = phi <2 x double> [ %i.ab, %.preheader227 ], [ zeroinitializer, %bb.c ]
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.084244 ; 2 uses
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !27
  %i.o = fpext <2 x float> %i.n to <2 x double>
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !29
  %i.r = fadd <2 x double> %i.k, %i.o             ; 2 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.084244 ; 2 uses
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !27
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !29
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.q, i64 1
  %i.z = fpext <2 x float> %i.y to <2 x double>
  %i.aa = fadd <2 x double> %i.j, %i.u            ; 2 uses
  %i.ab = fadd <2 x double> %i.l, %i.z            ; 2 uses
  %i.ac = add nuw i64 %.084244, 1                 ; 2 uses
  %exitcond336.not = icmp eq i64 %i.ac, %4
  br i1 %exitcond336.not, label %bb.d, label %.preheader227, !llvm.loop !31

.preheader228:                                    ; preds = %bb.c, %.preheader228
  %.081237 = phi double [ %i.aj, %.preheader228 ], [ 0.000000e+00, %bb.c ]
  %.085236 = phi i64 [ %i.bf, %.preheader228 ], [ 0, %bb.c ] ; 4 uses
  %i.ad = phi <2 x double> [ %i.bd, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.ae = phi <2 x double> [ %i.as, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.af = phi <2 x double> [ %i.be, %.preheader228 ], [ zeroinitializer, %bb.c ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.085236
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !27
  %i.ai = fpext float %i.ah to double             ; 2 uses
  %i.aj = fadd double %.081237, %i.ai             ; 2 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.085236 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !29
  %i.an = load <2 x float>, ptr %i.ak, align 4, !tbaa !27
  %i.ao = fpext <2 x float> %i.an to <2 x double>
  %i.ap = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ar = fmul <2 x double> %i.aq, %i.ao
  %i.as = fadd <2 x double> %i.ae, %i.ar          ; 2 uses
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.085236 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !29
  %i.aw = load <2 x float>, ptr %i.at, align 4, !tbaa !27
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  %i.ay = fmul <2 x double> %i.aq, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.am, i64 1
  %i.bb = fpext <2 x float> %i.ba to <2 x double>
  %i.bc = fmul <2 x double> %i.aq, %i.bb
  %i.bd = fadd <2 x double> %i.ad, %i.ay          ; 2 uses
  %i.be = fadd <2 x double> %i.af, %i.bc          ; 2 uses
  %i.bf = add nuw i64 %.085236, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %4
  br i1 %exitcond.not, label %.loopexit229, label %.preheader228, !llvm.loop !32

.loopexit229:                                     ; preds = %.preheader228, %bb.d
  %.1 = phi double [ %i.i, %bb.d ], [ %i.aj, %.preheader228 ] ; 2 uses
  %i.bg = phi <2 x double> [ %i.aa, %bb.d ], [ %i.bd, %.preheader228 ]
  %i.bh = phi <2 x double> [ %i.r, %bb.d ], [ %i.as, %.preheader228 ]
  %i.bi = phi <2 x double> [ %i.ab, %bb.d ], [ %i.be, %.preheader228 ]
  %i.bj = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit229
  store double 1.000000e+00, ptr %0, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bl, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.bp, align 8, !tbaa !8
  br label %bb.i

bb.f:                                             ; preds = %.loopexit229
  %i.bq = insertelement <2 x double> poison, double %.1, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bs = fdiv <2 x double> %i.bh, %i.br          ; 8 uses
  %i.bt = fdiv <2 x double> %i.bg, %i.br          ; 3 uses
  %i.bu = fdiv <2 x double> %i.bi, %i.br          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %i.h, label %.preheader223, label %.preheader225.preheader

.preheader225.preheader:                          ; preds = %bb.f
  %i.bz = extractelement <2 x double> %i.bu, i64 0
  %i.ca = extractelement <2 x double> %i.bu, i64 1
  br label %.preheader225

.preheader223:                                    ; preds = %bb.f, %.preheader223
  %.083280 = phi i64 [ %i.di, %.preheader223 ], [ 0, %bb.f ] ; 3 uses
  %i.cb = phi double [ %i.dh, %.preheader223 ], [ 0.000000e+00, %bb.f ]
  %i.cc = phi <2 x double> [ %i.dd, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cd = phi <2 x double> [ %i.de, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.ce = phi <2 x double> [ %i.df, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cf = phi <2 x double> [ %i.dg, %.preheader223 ], [ zeroinitializer, %bb.f ]
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.083280 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !29
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.083280 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !29
  %10 = load <2 x float>, ptr %i.cj, align 4, !tbaa !27
  %i.cm = fpext <2 x float> %10 to <2 x double>
  %i.cn = fsub <2 x double> %i.cm, %i.bs          ; 4 uses
  %i.co = load <2 x float>, ptr %i.cg, align 4, !tbaa !27
  %i.cp = fpext <2 x float> %i.co to <2 x double>
  %i.cq = fsub <2 x double> %i.cp, %i.bt          ; 3 uses
  %11 = insertelement <2 x float> poison, float %i.ci, i64 0
  %12 = insertelement <2 x float> %11, float %i.cl, i64 1
  %i.cr = fpext <2 x float> %12 to <2 x double>
  %i.cs = fsub <2 x double> %i.cr, %i.bu          ; 5 uses
  %i.ct = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x double> %i.ct, %i.cn
  %i.cv = shufflevector <2 x double> %i.cs, <2 x double> %i.cn, <2 x i32> <i32 1, i32 2>
  %i.cw = fmul <2 x double> %i.cq, %i.cv
  %i.cx = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cy = shufflevector <2 x double> %i.cn, <2 x double> %i.cs, <2 x i32> <i32 1, i32 3>
  %i.cz = fmul <2 x double> %i.cx, %i.cy
  %i.da = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x double> %i.da, %i.cn
  %shift = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.cs, %shift
  %i.dc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dd = fadd <2 x double> %i.cu, %i.cc          ; 2 uses
  %i.de = fadd <2 x double> %i.cw, %i.cd          ; 2 uses
  %i.df = fadd <2 x double> %i.cz, %i.ce          ; 2 uses
  %i.dg = fadd <2 x double> %i.db, %i.cf          ; 2 uses
  %i.dh = fadd double %i.dc, %i.cb                ; 2 uses
  %i.di = add nuw i64 %.083280, 1                 ; 2 uses
  %exitcond339.not = icmp eq i64 %i.di, %4
  br i1 %exitcond339.not, label %.loopexit224, label %.preheader223, !llvm.loop !33

.preheader225:                                    ; preds = %.preheader225.preheader, %.preheader225
  %.082261 = phi i64 [ %i.fb, %.preheader225 ], [ 0, %.preheader225.preheader ] ; 4 uses
  %i.dj = phi double [ %i.fa, %.preheader225 ], [ 0.000000e+00, %.preheader225.preheader ]
  %i.dk = phi <2 x double> [ %i.ew, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dl = phi <2 x double> [ %i.ex, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dm = phi <2 x double> [ %i.ey, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.dn = phi <2 x double> [ %i.ez, %.preheader225 ], [ zeroinitializer, %.preheader225.preheader ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.082261
  %i.dp = load float, ptr %i.do, align 4, !tbaa !27
  %i.dq = fpext float %i.dp to double             ; 2 uses
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.082261 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !29
  %i.du = fpext float %i.dt to double
  %i.dv = fsub double %i.du, %i.bz
  %i.dw = fmul double %i.dv, %i.dq                ; 2 uses
  %i.dx = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.082261 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !29
  %i.ea = fpext float %i.dz to double
  %i.eb = load <2 x float>, ptr %i.dx, align 4, !tbaa !27
  %i.ec = fpext <2 x float> %i.eb to <2 x double>
  %i.ed = fsub <2 x double> %i.ec, %i.bs          ; 3 uses
  %i.ee = load <2 x float>, ptr %i.dr, align 4, !tbaa !27
  %i.ef = fpext <2 x float> %i.ee to <2 x double>
  %i.eg = fsub <2 x double> %i.ef, %i.bt
  %i.eh = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x double> %i.eg, %i.ei          ; 3 uses
  %13 = fsub double %i.ea, %i.ca                  ; 3 uses
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ek, %i.ed
  %i.em = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.en = insertelement <2 x double> %i.em, double %13, i64 0
  %i.eo = fmul <2 x double> %i.ej, %i.en
  %i.ep = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = insertelement <2 x double> %i.em, double %13, i64 1
  %i.er = fmul <2 x double> %i.ep, %i.eq
  %i.es = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x double> %i.ed, %i.et
  %i.ev = fmul double %i.dw, %13
  %i.ew = fadd <2 x double> %i.el, %i.dk          ; 2 uses
  %i.ex = fadd <2 x double> %i.eo, %i.dl          ; 2 uses
  %i.ey = fadd <2 x double> %i.er, %i.dm          ; 2 uses
  %i.ez = fadd <2 x double> %i.eu, %i.dn          ; 2 uses
  %i.fa = fadd double %i.ev, %i.dj                ; 2 uses
  %i.fb = add nuw i64 %.082261, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.fb, %4
  br i1 %exitcond337.not, label %.loopexit224, label %.preheader225, !llvm.loop !34

.loopexit224:                                     ; preds = %.preheader225, %.preheader223
  %storemerge = phi double [ %i.dh, %.preheader223 ], [ %i.fa, %.preheader225 ]
  %i.fc = phi <2 x double> [ %i.dd, %.preheader223 ], [ %i.ew, %.preheader225 ]
  %i.fd = phi <2 x double> [ %i.de, %.preheader223 ], [ %i.ex, %.preheader225 ]
  %i.fe = phi <2 x double> [ %i.df, %.preheader223 ], [ %i.ey, %.preheader225 ]
  %i.ff = phi <2 x double> [ %i.dg, %.preheader223 ], [ %i.ez, %.preheader225 ]
  store <2 x double> %i.fc, ptr %6, align 16, !tbaa !8
  store <2 x double> %i.fd, ptr %i.bv, align 16, !tbaa !8
  store <2 x double> %i.fe, ptr %i.bw, align 16, !tbaa !8
  store <2 x double> %i.ff, ptr %i.bx, align 16, !tbaa !8
  store double %storemerge, ptr %i.by, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store double 1.000000e+00, ptr %7, align 8, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fh, align 8, !tbaa !8
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fj, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store double 1.000000e+00, ptr %8, align 16, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fl, align 16, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.fn, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef f0x3CB0000000000000, i1 noundef zeroext true)
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !8, !noalias !35 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !8, !noalias !35 ; 2 uses
  %i.ft = load double, ptr %i.fj, align 8, !tbaa !8, !noalias !35 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fv = load double, ptr %i.fu, align 16, !tbaa !8, !noalias !38 ; 2 uses
  %i.fw = load <4 x double>, ptr %7, align 8, !tbaa !8, !noalias !35 ; 4 uses
  %i.fx = load double, ptr %i.fo, align 8, !tbaa !8, !noalias !35
  %i.fy = load double, ptr %i.fg, align 8, !tbaa !8, !noalias !35
  %i.fz = load <2 x double>, ptr %i.fh, align 8, !tbaa !8, !noalias !35 ; 2 uses
  %i.ga = load double, ptr %i.fi, align 8, !tbaa !8, !noalias !35
  %i.gb = shufflevector <2 x double> %i.fz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gc = shufflevector <4 x double> %i.fw, <4 x double> %i.gb, <2 x i32> <i32 1, i32 4>
  %i.gd = shufflevector <4 x double> %i.fw, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ge = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = shufflevector <4 x double> %i.fw, <4 x double> %i.gb, <2 x i32> <i32 2, i32 5>
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gi = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gj = insertelement <2 x double> %i.gi, double %i.fy, i64 0 ; 2 uses
  %i.gk = insertelement <2 x double> %i.gd, double %i.fx, i64 1 ; 2 uses
  %i.gl = shufflevector <4 x double> %i.fw, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.gm = insertelement <2 x double> %i.gl, double %i.ga, i64 1 ; 2 uses
  %i.gn = load <2 x double>, ptr %8, align 16, !tbaa !8, !noalias !38 ; 4 uses
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gp = fmul <2 x double> %i.gc, %i.go
  %i.gq = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gd, <2 x double> %i.gp)
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.gg, <2 x double> %i.gr) ; 4 uses
  %i.gt = load <2 x double>, ptr %i.gh, align 8, !tbaa !8, !noalias !38 ; 4 uses
  %i.gu = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = shufflevector <2 x double> %i.gn, <2 x double> %i.gt, <2 x i32> <i32 1, i32 3>
  %i.gx = fmul <2 x double> %i.gv, %i.gw
  %i.gy = shufflevector <2 x double> %i.gn, <2 x double> %i.gt, <2 x i32> <i32 0, i32 2>
  %i.gz = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.ha, <2 x double> %i.gx) ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0
  %i.hd = call double @llvm.fmuladd.f64(double %i.fv, double %i.ft, double %i.hc) ; 3 uses
  %i.he = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hf = fmul <2 x double> %i.gj, %i.he
  %i.hg = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.gk, <2 x double> %i.hf)
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !8, !noalias !38 ; 2 uses
  %i.hk = load double, ptr %i.fn, align 16, !tbaa !8, !noalias !38 ; 2 uses
  %i.hl = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = fmul <2 x double> %i.gj, %i.hm
  %i.ho = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = fmul double %i.fs, %i.hj
  %i.hr = load <2 x double>, ptr %i.fm, align 8, !tbaa !8, !noalias !38 ; 3 uses
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.gm, <2 x double> %i.hh) ; 4 uses
  %i.hu = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.gk, <2 x double> %i.hn)
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.gm, <2 x double> %i.hv) ; 4 uses
  %i.hx = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.fq, i64 1
  %i.hz = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ia = insertelement <2 x double> %i.hz, double %i.hq, i64 1
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.hy, <2 x double> %i.ia) ; 3 uses
  %i.ic = extractelement <2 x double> %i.ib, i64 1
  %i.id = call double @llvm.fmuladd.f64(double %i.hk, double %i.ft, double %i.ic) ; 3 uses
  %i.ie = icmp ne i64 %4, 1
  %or.cond = and i1 %5, %i.ie
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit224
  br i1 %i.h, label %.preheader220.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %bb.g
  %i.if = extractelement <2 x double> %i.bs, i64 0
  %i.ig = extractelement <2 x double> %i.bs, i64 1
  %i.ih = extractelement <2 x double> %i.bu, i64 1
  br label %.preheader221

.preheader220.preheader:                          ; preds = %bb.g
  %i.ii = extractelement <2 x double> %i.bs, i64 0
  %shift419 = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %.079286 = phi i64 [ %i.iy, %.preheader220 ], [ 0, %.preheader220.preheader ] ; 2 uses
  %.sroa.0110.0285 = phi double [ %i.iv, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ] ; 2 uses
  %.sroa.8.0284 = phi double [ %i.ix, %.preheader220 ], [ 0.000000e+00, %.preheader220.preheader ]
  %i.ij = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.079286 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !41
  %i.il = fpext float %i.ik to double
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.in = load <2 x float>, ptr %i.im, align 4, !tbaa !27
  %i.io = fpext <2 x float> %i.in to <2 x double> ; 2 uses
  %i.ip = fsub double %i.il, %i.ii                ; 2 uses
  %foldExtExtBinop420 = fsub <2 x double> %i.io, %shift419 ; 2 uses
  %foldExtExtBinop422 = fsub <2 x double> %i.io, %i.bu
  %i.iq = extractelement <2 x double> %foldExtExtBinop422, i64 1 ; 2 uses
  %foldExtExtBinop424 = fmul <2 x double> %foldExtExtBinop420, %foldExtExtBinop420
  %i.ir = extractelement <2 x double> %foldExtExtBinop424, i64 0
  %i.is = call double @llvm.fmuladd.f64(double %i.ip, double %i.ip, double %i.ir)
  %i.it = call noundef double @llvm.fmuladd.f64(double %i.iq, double %i.iq, double %i.is)
  %i.iu = fsub double %i.it, %.sroa.8.0284        ; 2 uses
  %i.iv = fadd double %.sroa.0110.0285, %i.iu     ; 3 uses
  %i.iw = fsub double %i.iv, %.sroa.0110.0285
  %i.ix = fsub double %i.iw, %i.iu
  %i.iy = add nuw i64 %.079286, 1                 ; 2 uses
  %exitcond343.not = icmp eq i64 %i.iy, %4
  br i1 %exitcond343.not, label %.loopexit, label %.preheader220, !llvm.loop !42

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %.078283 = phi i64 [ %i.jw, %.preheader221 ], [ 0, %.preheader221.preheader ] ; 3 uses
  %.sroa.0110.1282 = phi double [ %i.jt, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ] ; 2 uses
  %.sroa.8.1281 = phi double [ %i.jv, %.preheader221 ], [ 0.000000e+00, %.preheader221.preheader ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.078283
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !27
  %i.jb = fpext float %i.ja to double
  %i.jc = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.078283 ; 3 uses
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !41
  %i.je = fpext float %i.jd to double
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !43
  %i.jh = fpext float %i.jg to double
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !29
  %i.jk = fpext float %i.jj to double
  %i.jl = fsub double %i.je, %i.if                ; 2 uses
  %i.jm = fsub double %i.jh, %i.ig                ; 2 uses
  %i.jn = fsub double %i.jk, %i.ih                ; 2 uses
  %i.jo = fmul double %i.jm, %i.jm
  %i.jp = call double @llvm.fmuladd.f64(double %i.jl, double %i.jl, double %i.jo)
  %i.jq = call noundef double @llvm.fmuladd.f64(double %i.jn, double %i.jn, double %i.jp)
  %i.jr = fmul double %i.jq, %i.jb
  %i.js = fsub double %i.jr, %.sroa.8.1281        ; 2 uses
  %i.jt = fadd double %.sroa.0110.1282, %i.js     ; 3 uses
  %i.ju = fsub double %i.jt, %.sroa.0110.1282
  %i.jv = fsub double %i.ju, %i.js
  %i.jw = add nuw i64 %.078283, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.jw, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader221, !llvm.loop !44

.loopexit:                                        ; preds = %.preheader221, %.preheader220
  %.sroa.0110.2 = phi double [ %i.iv, %.preheader220 ], [ %i.jt, %.preheader221 ]
  %i.jx = load <2 x double>, ptr %6, align 16, !tbaa !8
end_hunk_1
