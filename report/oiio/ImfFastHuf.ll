inline.NumInlined: 69
inline.NumDeleted: 43
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderC2ERPKciiii:bb.a
  %.not.i.i = icmp eq ptr %.sroa.9.0208, %.sroa.13.0207
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.ct, ptr %.sroa.9.0208, align 8, !tbaa !16
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cu = ptrtoint ptr %.sroa.9.0208 to i64
  %i.cv = ptrtoint ptr %.sroa.0148.0209 to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 6 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ad
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.cy = ashr exact i64 %i.cw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 1152921504606846975)
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #16
          to label %.noexc133 unwind label %.loopexit ; 4 uses

.noexc133:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  store i64 %i.ct, ptr %i.df, align 8, !tbaa !16
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ae:                                            ; preds = %.noexc133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 8 %.sroa.0148.0209, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ae, %.noexc133
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0148.0209, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0148.0209, i64 noundef %i.cw) #18
  %.pre.pre = load i8, ptr %i.f, align 8, !tbaa !13
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %.pre = phi i8 [ %.pre.pre, %bb.af ], [ %.pre334, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.ab
  %.pre337.a = phi i8 [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre334, %bb.ab ]
  %i.di = phi i8 [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ah, %bb.ab ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.dh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0207, %bb.ab ]
  %.pn = phi ptr [ %i.df, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0208, %bb.ab ]
  %.sroa.0148.2 = phi ptr [ %i.de, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0148.0209, %bb.ab ]
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.dj = zext i8 %i.di to i64
  %i.dk = icmp samesign ult i64 %i.bd, %i.dj
  br i1 %i.dk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.dl = trunc nuw nsw i64 %i.bd to i8           ; 3 uses
  store i8 %i.dl, ptr %i.f, align 8, !tbaa !13
  br label %bb.ah

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ah:                                            ; preds = %bb.ag, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.pre336 = phi i8 [ %i.dl, %bb.ag ], [ %.pre337.a, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %i.dm = phi i8 [ %i.dl, %bb.ag ], [ %i.di, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %i.dn = load i8, ptr %i.g, align 1, !tbaa !14
  %i.do = zext i8 %i.dn to i64
  %i.dp = icmp samesign ugt i64 %i.bd, %i.do
  br i1 %i.dp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dq = trunc nuw nsw i64 %i.bd to i8
  store i8 %i.dq, ptr %i.g, align 1, !tbaa !14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bd ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !16
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.y, %bb.aj, %bb.z, %bb.r
  %.pre335 = phi i8 [ %.pre334, %bb.r ], [ %.pre334, %bb.y ], [ %.pre334, %bb.z ], [ %.pre336, %bb.aj ]
  %i.du = phi i8 [ %i.ah, %bb.r ], [ %i.ah, %bb.y ], [ %i.ah, %bb.z ], [ %i.dm, %bb.aj ]
  %.1160 = phi ptr [ %.3162, %bb.r ], [ %.2161, %bb.y ], [ %.2161, %bb.z ], [ %.2161, %bb.aj ] ; 2 uses
  %.1158 = phi i64 [ %.3, %bb.r ], [ %.2, %bb.y ], [ %.2, %bb.z ], [ %.2, %bb.aj ]
  %.1156 = phi i32 [ %i.bv, %bb.r ], [ %i.ba, %bb.y ], [ %i.ba, %bb.z ], [ %i.ba, %bb.aj ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0207, %bb.r ], [ %.sroa.13.0207, %bb.y ], [ %.sroa.13.0207, %bb.z ], [ %.sroa.13.2, %bb.aj ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0208, %bb.r ], [ %.sroa.9.0208, %bb.y ], [ %.sroa.9.0208, %bb.z ], [ %.sroa.9.2, %bb.aj ] ; 2 uses
  %.sroa.0148.1 = phi ptr [ %.sroa.0148.0209, %bb.r ], [ %.sroa.0148.0209, %bb.y ], [ %.sroa.0148.0209, %bb.z ], [ %.sroa.0148.2, %bb.aj ] ; 2 uses
  %.1 = phi i64 [ %i.ch, %bb.r ], [ %i.cr, %bb.y ], [ %.078210, %bb.z ], [ %.078210, %bb.aj ]
  %i.dv = add i64 %.1, 1                          ; 2 uses
  %.not = icmp ugt i64 %i.dv, %i.j
  br i1 %.not, label %.preheader166.loopexit, label %bb.b, !llvm.loop !22

bb.al:                                            ; preds = %.preheader166
  %i.dw = load i8, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.dx = zext i8 %i.ac to i32                    ; 2 uses
  %.not103216 = icmp ugt i8 %i.dw, %i.ac
  br i1 %.not103216, label %._crit_edge228, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %bb.al
  %i.dy = zext i8 %i.dw to i64                    ; 6 uses
  %i.dz = zext i8 %i.ac to i64                    ; 4 uses
  %i.ea = add nuw nsw i32 %i.dx, 1
  %wide.trip.count = zext nneg i32 %i.ea to i64
  %i.eb = sub nsw i64 %i.dz, %i.dy                ; 2 uses
  %i.ec = add nsw i64 %i.eb, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ec, 2
  br i1 %min.iters.check, label %.lr.ph218.preheader403, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph218.preheader
  %n.vec = and i64 %i.ec, -2                      ; 3 uses
  %i.ed = add nsw i64 %n.vec, %i.dy
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert398 = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %broadcast.splat399 = shufflevector <2 x i64> %broadcast.splatinsert398, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat399, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ee = add i64 %index, %i.dy                   ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ee
  %wide.load = load <2 x i64>, ptr %i.ef, align 8, !tbaa !16
  %i.eg = uitofp <2 x i64> %wide.load to <2 x double>
  %i.eh = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ei = shl <2 x i64> splat (i64 2), %i.eh
  %i.ej = sitofp <2 x i64> %i.ei to <2 x double>
  %i.ek = fmul nnan <2 x double> %i.ej, %i.eg
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ee
  store <2 x double> %i.ek, ptr %i.el, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ec, %n.vec
  br i1 %cmp.n, label %.lr.ph227.preheader, label %.lr.ph218.preheader403

.lr.ph218.preheader403:                           ; preds = %.lr.ph218.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dy, %.lr.ph218.preheader ], [ %i.ed, %middle.block ]
  br label %.lr.ph218

.lr.ph227.preheader:                              ; preds = %.lr.ph218, %middle.block
  %i.en = zext i8 %i.dw to i64                    ; 2 uses
  %i.eo = add nuw nsw i32 %i.dx, 1
  %i.ep = zext i8 %i.ac to i64                    ; 2 uses
  %wide.trip.count275 = zext nneg i32 %i.eo to i64 ; 2 uses
  %i.eq = sub nsw i64 %i.dy, %i.dz
  br label %.lr.ph227

bb.am:                                            ; preds = %.preheader166
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.lr.ph218:                                        ; preds = %.lr.ph218.preheader403, %.lr.ph218
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph218 ], [ %indvars.iv.ph, %.lr.ph218.preheader403 ] ; 4 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.et = load i64, ptr %i.es, align 8, !tbaa !16
  %i.eu = uitofp i64 %i.et to double
  %i.ev = sub nuw nsw i64 %i.dz, %indvars.iv
  %i.ew = shl i64 2, %i.ev
  %i.ex = sitofp i64 %i.ew to double
  %i.ey = fmul nnan double %i.ex, %i.eu
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  store double %i.ey, ptr %i.ez, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph227.preheader, label %.lr.ph218, !llvm.loop !28

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph227.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv272 = phi i64 [ %i.en, %.lr.ph227.preheader ], [ %indvars.iv.next273, %._crit_edge ] ; 3 uses
  %indvars.iv265.in = phi i64 [ %i.en, %.lr.ph227.preheader ], [ %indvars.iv265, %._crit_edge ]
  %indvars.iv265 = add nuw nsw i64 %indvars.iv265.in, 1 ; 3 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 3 uses
  %.not110220 = icmp samesign ugt i64 %indvars.iv.next273, %i.ep
  br i1 %.not110220, label %._crit_edge, label %.lr.ph223.preheader

.lr.ph223.preheader:                              ; preds = %.lr.ph227
  %i.fa = sub i64 %i.eb, %indvar
  %xtraiter = and i64 %i.fa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph223.prol.loopexit, label %.lr.ph223.prol

.lr.ph223.prol:                                   ; preds = %.lr.ph223.preheader, %.lr.ph223.prol
  %indvars.iv267.prol = phi i64 [ %indvars.iv.next268.prol, %.lr.ph223.prol ], [ %indvars.iv265, %.lr.ph223.preheader ] ; 2 uses
  %.083221.prol = phi double [ %i.fd, %.lr.ph223.prol ], [ 0.000000e+00, %.lr.ph223.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph223.prol ], [ 0, %.lr.ph223.preheader ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267.prol
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !23
  %i.fd = fadd double %.083221.prol, %i.fc        ; 3 uses
  %indvars.iv.next268.prol = add nuw nsw i64 %indvars.iv267.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph223.prol.loopexit, label %.lr.ph223.prol, !llvm.loop !29

.lr.ph223.prol.loopexit:                          ; preds = %.lr.ph223.prol, %.lr.ph223.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph223.preheader ], [ %i.fd, %.lr.ph223.prol ]
  %indvars.iv267.unr = phi i64 [ %indvars.iv265, %.lr.ph223.preheader ], [ %indvars.iv.next268.prol, %.lr.ph223.prol ]
  %.083221.unr = phi double [ 0.000000e+00, %.lr.ph223.preheader ], [ %i.fd, %.lr.ph223.prol ]
  %i.fe = add i64 %i.eq, %indvar
  %i.ff = icmp ugt i64 %i.fe, -8
  br i1 %i.ff, label %._crit_edge, label %.lr.ph223

._crit_edge:                                      ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223, %.lr.ph227
  %.083.lcssa = phi double [ 0.000000e+00, %.lr.ph227 ], [ %.lcssa.unr, %.lr.ph223.prol.loopexit ], [ %i.gr, %.lr.ph223 ]
  %i.fg = sub nsw i64 %i.ep, %indvars.iv272
  %i.fh = shl i64 2, %i.fg
  %i.fi = sitofp i64 %i.fh to double
  %i.fj = fdiv double %.083.lcssa, %i.fi
  %i.fk = tail call double @llvm.ceil.f64(double %i.fj)
  %i.fl = fptoui double %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv272
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !16
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond276.not, label %._crit_edge228, label %.lr.ph227, !llvm.loop !31

.lr.ph223:                                        ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223
  %indvars.iv267 = phi i64 [ %indvars.iv.next268.7, %.lr.ph223 ], [ %indvars.iv267.unr, %.lr.ph223.prol.loopexit ] ; 9 uses
  %.083221 = phi double [ %i.gr, %.lr.ph223 ], [ %.083221.unr, %.lr.ph223.prol.loopexit ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !23
  %i.fp = fadd double %.083221, %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !23
  %i.ft = fadd double %i.fp, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !23
  %i.fx = fadd double %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !23
  %i.gb = fadd double %i.fx, %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !23
  %i.gf = fadd double %i.gb, %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !23
  %i.gj = fadd double %i.gf, %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !23
  %i.gn = fadd double %i.gj, %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !23
  %i.gr = fadd double %i.gn, %i.gq                ; 2 uses
  %indvars.iv.next268.7 = add nuw nsw i64 %indvars.iv267, 8 ; 2 uses
  %exitcond271.not.7 = icmp eq i64 %indvars.iv.next268.7, %wide.trip.count275
  br i1 %exitcond271.not.7, label %._crit_edge, label %.lr.ph223, !llvm.loop !32

._crit_edge228:                                   ; preds = %._crit_edge, %bb.al
  tail call void @_ZdaPv(ptr noundef nonnull %i.ag) #18
  %i.gs = load i8, ptr %i.g, align 1, !tbaa !14   ; 3 uses
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gt
  store i64 0, ptr %i.gu, align 8, !tbaa !16
  %6 = zext i8 %i.gs to i32                       ; 6 uses
  %i.gv = load i8, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %7 = zext i8 %i.gv to i32                       ; 4 uses
  %.081229 = add nsw i32 %6, -1                   ; 3 uses
  %.not105230 = icmp slt i32 %.081229, %7
  br i1 %.not105230, label %._crit_edge233, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %._crit_edge228
  %8 = sub nsw i32 %6, %7                         ; 2 uses
  %xtraiter431 = and i32 %8, 3                    ; 3 uses
  %9 = sub nsw i32 %7, %6
  %i.gw = icmp ugt i32 %9, -4
  br i1 %i.gw, label %.lr.ph232.epil.preheader, label %.lr.ph232.preheader.new

.lr.ph232.preheader.new:                          ; preds = %.lr.ph232.preheader
  %unroll_iter = and i32 %8, -4
  br label %.lr.ph232

._crit_edge233.loopexit.unr-lcssa:                ; preds = %.lr.ph232
  %lcmp.mod429.not = icmp eq i32 %xtraiter431, 0
  br i1 %lcmp.mod429.not, label %._crit_edge233, label %.lr.ph232.epil.preheader

.lr.ph232.epil.preheader:                         ; preds = %._crit_edge233.loopexit.unr-lcssa, %.lr.ph232.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph232.preheader ], [ %i.hx, %._crit_edge233.loopexit.unr-lcssa ]
  %.081232.epil.init = phi i32 [ %.081229, %.lr.ph232.preheader ], [ %.081.3, %._crit_edge233.loopexit.unr-lcssa ]
  %.081.in231.epil.init = phi i32 [ %6, %.lr.ph232.preheader ], [ %.081.2, %._crit_edge233.loopexit.unr-lcssa ]
  %lcmp.mod430 = icmp ne i32 %xtraiter431, 0
  tail call void @llvm.assume(i1 %lcmp.mod430)
  br label %.lr.ph232.epil

.lr.ph232.epil:                                   ; preds = %.lr.ph232.epil, %.lr.ph232.epil.preheader
  %i.gx = phi i64 [ %i.ha, %.lr.ph232.epil ], [ %.epil.init, %.lr.ph232.epil.preheader ]
  %.081232.epil = phi i32 [ %.081.epil, %.lr.ph232.epil ], [ %.081232.epil.init, %.lr.ph232.epil.preheader ] ; 3 uses
  %.081.in231.epil = phi i32 [ %.081232.epil, %.lr.ph232.epil ], [ %.081.in231.epil.init, %.lr.ph232.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph232.epil ], [ 0, %.lr.ph232.epil.preheader ]
  %10 = zext nneg i32 %.081.in231.epil to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %10
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !16
  %i.ha = add i64 %i.gz, %i.gx                    ; 2 uses
  %11 = zext nneg i32 %.081232.epil to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %11
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !16
  %.081.epil = add nsw i32 %.081232.epil, -1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter431
  br i1 %epil.iter.cmp.not, label %._crit_edge233, label %.lr.ph232.epil, !llvm.loop !33

._crit_edge233:                                   ; preds = %._crit_edge233.loopexit.unr-lcssa, %.lr.ph232.epil, %._crit_edge228
  %i.hc = load i32, ptr %i.e, align 4, !tbaa !12  ; 2 uses
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = icmp slt i32 %i.hc, 0
  %i.hf = shl nsw i64 %i.hd, 2
  %i.hg = select i1 %i.he, i64 -1, i64 %i.hf
  %i.hh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hg) #16
          to label %.preheader164 unwind label %bb.an ; 3 uses

.lr.ph232:                                        ; preds = %.lr.ph232, %.lr.ph232.preheader.new
  %i.hi = phi i64 [ 0, %.lr.ph232.preheader.new ], [ %i.hx, %.lr.ph232 ]
  %.081232 = phi i32 [ %.081229, %.lr.ph232.preheader.new ], [ %.081.3, %.lr.ph232 ] ; 6 uses
  %.081.in231 = phi i32 [ %6, %.lr.ph232.preheader.new ], [ %.081.2, %.lr.ph232 ]
  %niter = phi i32 [ 0, %.lr.ph232.preheader.new ], [ %niter.next.3, %.lr.ph232 ]
  %12 = zext nneg i32 %.081.in231 to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %12
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !16
  %i.hl = add i64 %i.hk, %i.hi                    ; 2 uses
  %13 = zext nneg i32 %.081232 to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %13
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !16
  %.081 = add nsw i32 %.081232, -1                ; 2 uses
  %14 = zext nneg i32 %.081232 to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %14
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !16
  %i.hp = add i64 %i.ho, %i.hl                    ; 2 uses
  %15 = zext nneg i32 %.081 to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %15
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !16
  %.081.1 = add nsw i32 %.081232, -2              ; 2 uses
  %16 = zext nneg i32 %.081 to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !16
  %i.ht = add i64 %i.hs, %i.hp                    ; 2 uses
  %17 = zext nneg i32 %.081.1 to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %17
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !16
  %.081.2 = add nsw i32 %.081232, -3              ; 3 uses
  %18 = zext nneg i32 %.081.1 to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %18
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !16
  %i.hx = add i64 %i.hw, %i.ht                    ; 3 uses
  %19 = zext nneg i32 %.081.2 to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %19
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !16
  %.081.3 = add nsw i32 %.081232, -4              ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge233.loopexit.unr-lcssa, label %.lr.ph232, !llvm.loop !34

.preheader164:                                    ; preds = %._crit_edge233
  store ptr %i.hh, ptr %i.h, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.d, i8 -1, i64 472, i1 false), !tbaa !16
  %.not106236 = icmp ugt i8 %i.gv, %i.gs
  br i1 %.not106236, label %.preheader, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %.preheader164
  %i.hz = zext i8 %i.gv to i64
  %i.ia = shl nuw nsw i64 %i.hz, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.ia
  %scevgep283 = getelementptr i8, ptr %i.b, i64 %i.ia
  %20 = sub nsw i32 %6, %7
  %i.ib = zext i32 %20 to i64
  %i.ic = shl nuw nsw i64 %i.ib, 3
  %i.id = add nuw nsw i64 %i.ic, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep283, i64 %i.id, i1 false), !tbaa !16
  br label %.preheader

bb.an:                                            ; preds = %._crit_edge233
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.preheader:                                       ; preds = %.lr.ph238.preheader, %.preheader164
  %.not163239 = icmp eq ptr %.sroa.0148.0.lcssa, %.sroa.9.0.lcssa
  br i1 %.not163239, label %._crit_edge242, label %.lr.ph241

._crit_edge242:                                   ; preds = %bb.as, %.preheader
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder11buildTablesEPmS1_(ptr noundef nonnull align 8 dereferenceable(21456) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.ax unwind label %bb.at

.lr.ph241:                                        ; preds = %.preheader, %bb.as
  %.sroa.0137.0240 = phi ptr [ %i.iq, %bb.as ], [ %.sroa.0148.0.lcssa, %.preheader ] ; 2 uses
  %i.if = load i64, ptr %.sroa.0137.0240, align 8, !tbaa !16 ; 2 uses
  %i.ig = and i64 %i.if, 63
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ig ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !16 ; 3 uses
  %.not107 = icmp ult i64 %i.ii, %i.hd
  br i1 %.not107, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph241
  tail call void @_ZdaPv(ptr noundef nonnull %i.hh) #18
  store ptr null, ptr %i.h, align 8, !tbaa !15
  %i.ij = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ij, ptr noundef nonnull @.str.2)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.ij, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
          to label %bb.bd unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ik = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ij) #15
  br label %bb.az

bb.ar:                                            ; preds = %bb.ap
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.as:                                            ; preds = %.lr.ph241
  %i.im = lshr i64 %i.if, 6
  %i.in = trunc i64 %i.im to i32
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ii
  store i32 %i.in, ptr %i.io, align 4, !tbaa !3
  %i.ip = add nuw i64 %i.ii, 1
  store i64 %i.ip, ptr %i.ih, align 8, !tbaa !16
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0137.0240, i64 8 ; 2 uses
  %.not163 = icmp eq ptr %i.iq, %.sroa.9.0.lcssa
  br i1 %.not163, label %._crit_edge242, label %.lr.ph241, !llvm.loop !35

bb.at:                                            ; preds = %._crit_edge242
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  %i.it = tail call ptr @__cxa_begin_catch(ptr %i.is) #15 ; 0 uses
  %i.iu = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_ZdaPv(ptr noundef nonnull %i.iu) #18
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  store ptr null, ptr %i.h, align 8, !tbaa !15
  invoke void @__cxa_rethrow() #17
          to label %bb.bd unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.bc

bb.ax:                                            ; preds = %._crit_edge242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not.i.i.i = icmp eq ptr %.sroa.0148.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ix = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.iy = ptrtoint ptr %.sroa.0148.0.lcssa to i64
  %i.iz = sub i64 %i.ix, %i.iy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0148.0.lcssa, i64 noundef %i.iz) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ax, %bb.ay
  ret void

bb.az:                                            ; preds = %bb.aq, %bb.ar, %bb.aw
  %.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.aw ], [ %i.il, %bb.ar ], [ %i.ik, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.e, %bb.f, %bb.w, %bb.x, %bb.p, %bb.q, %bb.l, %bb.k, %bb.az, %bb.an, %bb.am
  %.sroa.13.0194 = phi ptr [ %.sroa.13.0.lcssa, %bb.am ], [ %.sroa.13.0.lcssa, %bb.az ], [ %.sroa.13.0.lcssa, %bb.an ], [ %.sroa.13.0207, %bb.f ], [ %.sroa.13.0207, %bb.e ], [ %.sroa.13.0207, %bb.k ], [ %.sroa.13.0207, %bb.l ], [ %.sroa.13.0207, %bb.w ], [ %.sroa.13.0207, %bb.q ], [ %.sroa.13.0207, %bb.p ], [ %.sroa.13.0207, %bb.x ], [ %.sroa.9.0208, %.loopexit ], [ %.sroa.9.0208, %.loopexit.split-lp ]
  %.sroa.0148.0180 = phi ptr [ %.sroa.0148.0.lcssa, %bb.am ], [ %.sroa.0148.0.lcssa, %bb.az ], [ %.sroa.0148.0.lcssa, %bb.an ], [ %.sroa.0148.0209, %bb.f ], [ %.sroa.0148.0209, %bb.e ], [ %.sroa.0148.0209, %bb.k ], [ %.sroa.0148.0209, %bb.l ], [ %.sroa.0148.0209, %bb.w ], [ %.sroa.0148.0209, %bb.q ], [ %.sroa.0148.0209, %bb.p ], [ %.sroa.0148.0209, %bb.x ], [ %.sroa.0148.0209, %.loopexit ], [ %.sroa.0148.0209, %.loopexit.split-lp ] ; 3 uses
  %.pn123.pn = phi { ptr, i32 } [ %i.er, %bb.am ], [ %.pn.pn, %bb.az ], [ %i.ie, %bb.an ], [ %i.ao, %bb.f ], [ %i.an, %bb.e ], [ %i.bi, %bb.k ], [ %i.bj, %bb.l ], [ %i.co, %bb.w ], [ %i.cf, %bb.q ], [ %i.ce, %bb.p ], [ %i.cp, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not.i.i.i134 = icmp eq ptr %.sroa.0148.0180, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorImSaImEED2Ev.exit135, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ja = ptrtoint ptr %.sroa.13.0194 to i64
  %i.jb = ptrtoint ptr %.sroa.0148.0180 to i64
  %i.jc = sub i64 %i.ja, %i.jb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0148.0180, i64 noundef %i.jc) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit135

_ZNSt6vectorImSaImEED2Ev.exit135:                 ; preds = %bb.ba, %bb.bb
  resume { ptr, i32 } %.pn123.pn

bb.bc:                                            ; preds = %bb.aw
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  tail call void @__clang_call_terminate(ptr %i.je) #19
  unreachable

bb.bd:                                            ; preds = %bb.av, %bb.ap, %bb.v, %bb.o, %bb.j, %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_38InputExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder11buildTablesEPmS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(21456) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  br label %bb.b

vector.memcheck:                                  ; preds = %bb.b
  %i.b = load i64, ptr %2, align 8, !tbaa !16
  %i.c = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 5 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !16
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %scevgep99 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %scevgep100 = getelementptr i8, ptr %2, i64 8
  %scevgep101 = getelementptr i8, ptr %2, i64 472
  %bound0 = icmp ult ptr %scevgep, %scevgep101
  %bound1 = icmp ult ptr %scevgep100, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader.new, label %vector.body

scalar.ph.preheader.new:                          ; preds = %vector.body, %vector.memcheck
  %indvars.iv66.ph = phi i64 [ 1, %vector.memcheck ], [ 57, %vector.body ]
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 1, i64 2>, %vector.memcheck ] ; 3 uses
  %i.f = or disjoint i64 %index, 1                ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !16, !alias.scope !36
  %wide.load102 = load <2 x i64>, ptr %i.h, align 8, !tbaa !16, !alias.scope !36
end_hunk_0
