inline.NumInlined: 69
inline.NumDeleted: 43
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderC2ERPKciiii:bb.a
  %i.cb = add i64 %i.ca, %.078210
  %i.cc = icmp ugt i64 %i.cb, %i.n
  br i1 %i.cc, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132
  %i.cd = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, ptr noundef nonnull @.str.1)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
          to label %bb.bd unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.q:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cd) #15
  br label %bb.ba

bb.r:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132
  %sext118 = add nuw nsw i64 %i.bz, 21474836480
  %i.cg = lshr exact i64 %sext118, 32
  %i.ch = add i64 %i.cg, %.078210
  br label %bb.ak

bb.s:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit
  %i.ci = icmp samesign ugt i64 %i.bd, 58
  br i1 %i.ci, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.cj = shl nuw nsw i64 %i.bd, 32               ; 2 uses
  %sext = add nsw i64 %i.cj, -244813135872
  %i.ck = lshr exact i64 %sext, 32
  %i.cl = add i64 %i.ck, %.078210
  %i.cm = icmp ugt i64 %i.cl, %i.n
  br i1 %i.cm, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull @.str.1)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
          to label %bb.bd unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cn) #15
  br label %bb.ba

bb.x:                                             ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.y:                                             ; preds = %bb.t
  %sext113 = add nsw i64 %i.cj, -249108103168
  %i.cq = lshr exact i64 %sext113, 32
  %i.cr = add i64 %i.cq, %.078210
  br label %bb.ak

bb.z:                                             ; preds = %bb.s
  %.not112 = icmp eq i64 %i.bd, 0
  br i1 %.not112, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = shl i64 %.078210, 6
  %i.ct = or disjoint i64 %i.bd, %i.cs            ; 2 uses
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
  %.pre337 = phi i8 [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre334, %bb.ab ]
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
  %.pre336 = phi i8 [ %i.dl, %bb.ag ], [ %.pre337, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
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
  %i.dy = zext i8 %i.dw to i64                    ; 7 uses
  %i.dz = zext i8 %i.ac to i64                    ; 5 uses
  %i.ea = add nuw nsw i32 %i.dx, 1
  %wide.trip.count = zext nneg i32 %i.ea to i64
  %6 = add nuw nsw i64 %i.dz, 1
  %7 = sub nsw i64 %6, %i.dy                      ; 3 uses
  %min.iters.check = icmp ult i64 %7, 2
  br i1 %min.iters.check, label %.lr.ph218.preheader403, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph218.preheader
  %n.vec = and i64 %7, -2                         ; 3 uses
  %i.eb = add nsw i64 %n.vec, %i.dy
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert398 = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %broadcast.splat399 = shufflevector <2 x i64> %broadcast.splatinsert398, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat399, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ec = add i64 %index, %i.dy                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ec
  %wide.load = load <2 x i64>, ptr %i.ed, align 8, !tbaa !16
  %i.ee = uitofp <2 x i64> %wide.load to <2 x double>
  %i.ef = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.eg = shl <2 x i64> splat (i64 2), %i.ef
  %i.eh = sitofp <2 x i64> %i.eg to <2 x double>
  %i.ei = fmul nnan <2 x double> %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ec
  store <2 x double> %i.ei, ptr %i.ej, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.lr.ph227.preheader, label %.lr.ph218.preheader403

.lr.ph218.preheader403:                           ; preds = %.lr.ph218.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dy, %.lr.ph218.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph218

.lr.ph227.preheader:                              ; preds = %.lr.ph218, %middle.block
  %i.el = zext i8 %i.dw to i64                    ; 2 uses
  %i.em = add nuw nsw i32 %i.dx, 1
  %i.en = zext i8 %i.ac to i64                    ; 2 uses
  %wide.trip.count275 = zext nneg i32 %i.em to i64 ; 2 uses
  %i.eo = sub nsw i64 %i.dy, %i.dz
  br label %.lr.ph227

bb.am:                                            ; preds = %.preheader166
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.lr.ph218:                                        ; preds = %.lr.ph218.preheader403, %.lr.ph218
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph218 ], [ %indvars.iv.ph, %.lr.ph218.preheader403 ] ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !16
  %i.es = uitofp i64 %i.er to double
  %i.et = sub nuw nsw i64 %i.dz, %indvars.iv
  %i.eu = shl i64 2, %i.et
  %i.ev = sitofp i64 %i.eu to double
  %i.ew = fmul nnan double %i.ev, %i.es
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  store double %i.ew, ptr %i.ex, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph227.preheader, label %.lr.ph218, !llvm.loop !28

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph227.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv272 = phi i64 [ %i.el, %.lr.ph227.preheader ], [ %indvars.iv.next273, %._crit_edge ] ; 4 uses
  %indvars.iv265.in = phi i64 [ %i.el, %.lr.ph227.preheader ], [ %indvars.iv265, %._crit_edge ]
  %indvars.iv265 = add nuw nsw i64 %indvars.iv265.in, 1 ; 3 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %.not110220.not = icmp samesign ult i64 %indvars.iv272, %i.en
  br i1 %.not110220.not, label %.lr.ph223.preheader, label %._crit_edge

.lr.ph223.preheader:                              ; preds = %.lr.ph227
  %8 = add i64 %indvar, %i.dy
  %i.ey = sub i64 %i.dz, %8
  %xtraiter = and i64 %i.ey, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph223.prol.loopexit, label %.lr.ph223.prol

.lr.ph223.prol:                                   ; preds = %.lr.ph223.preheader, %.lr.ph223.prol
  %indvars.iv267.prol = phi i64 [ %indvars.iv.next268.prol, %.lr.ph223.prol ], [ %indvars.iv265, %.lr.ph223.preheader ] ; 2 uses
  %.083221.prol = phi double [ %i.fb, %.lr.ph223.prol ], [ 0.000000e+00, %.lr.ph223.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph223.prol ], [ 0, %.lr.ph223.preheader ]
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267.prol
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !23
  %i.fb = fadd double %.083221.prol, %i.fa        ; 3 uses
  %indvars.iv.next268.prol = add nuw nsw i64 %indvars.iv267.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph223.prol.loopexit, label %.lr.ph223.prol, !llvm.loop !29

.lr.ph223.prol.loopexit:                          ; preds = %.lr.ph223.prol, %.lr.ph223.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph223.preheader ], [ %i.fb, %.lr.ph223.prol ]
  %indvars.iv267.unr = phi i64 [ %indvars.iv265, %.lr.ph223.preheader ], [ %indvars.iv.next268.prol, %.lr.ph223.prol ]
  %.083221.unr = phi double [ 0.000000e+00, %.lr.ph223.preheader ], [ %i.fb, %.lr.ph223.prol ]
  %i.fc = add i64 %i.eo, %indvar
  %i.fd = icmp ugt i64 %i.fc, -8
  br i1 %i.fd, label %._crit_edge, label %.lr.ph223

._crit_edge:                                      ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223, %.lr.ph227
  %.083.lcssa = phi double [ 0.000000e+00, %.lr.ph227 ], [ %.lcssa.unr, %.lr.ph223.prol.loopexit ], [ %i.gp, %.lr.ph223 ]
  %i.fe = sub nsw i64 %i.en, %indvars.iv272
  %i.ff = shl i64 2, %i.fe
  %i.fg = sitofp i64 %i.ff to double
  %i.fh = fdiv double %.083.lcssa, %i.fg
  %i.fi = tail call double @llvm.ceil.f64(double %i.fh)
  %i.fj = fptoui double %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv272
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !16
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond276.not, label %._crit_edge228, label %.lr.ph227, !llvm.loop !31

.lr.ph223:                                        ; preds = %.lr.ph223.prol.loopexit, %.lr.ph223
  %indvars.iv267 = phi i64 [ %indvars.iv.next268.7, %.lr.ph223 ], [ %indvars.iv267.unr, %.lr.ph223.prol.loopexit ] ; 9 uses
  %.083221 = phi double [ %i.gp, %.lr.ph223 ], [ %.083221.unr, %.lr.ph223.prol.loopexit ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !23
  %i.fn = fadd double %.083221, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !23
  %i.fr = fadd double %i.fn, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !23
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !23
  %i.fz = fadd double %i.fv, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !23
  %i.gd = fadd double %i.fz, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !23
  %i.gh = fadd double %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !23
  %i.gl = fadd double %i.gh, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.go = load double, ptr %i.gn, align 8, !tbaa !23
  %i.gp = fadd double %i.gl, %i.go                ; 2 uses
  %indvars.iv.next268.7 = add nuw nsw i64 %indvars.iv267, 8 ; 2 uses
  %exitcond271.not.7 = icmp eq i64 %indvars.iv.next268.7, %wide.trip.count275
  br i1 %exitcond271.not.7, label %._crit_edge, label %.lr.ph223, !llvm.loop !32

._crit_edge228:                                   ; preds = %._crit_edge, %bb.al
  tail call void @_ZdaPv(ptr noundef nonnull %i.ag) #18
  %i.gq = load i8, ptr %i.g, align 1, !tbaa !14   ; 4 uses
  %i.gr = zext i8 %i.gq to i64                    ; 5 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gr
  store i64 0, ptr %i.gs, align 8, !tbaa !16
  %i.gt = load i8, ptr %i.f, align 8, !tbaa !13   ; 5 uses
  %.not105.not229 = icmp ugt i8 %i.gq, %i.gt
  br i1 %.not105.not229, label %.lr.ph232.preheader, label %._crit_edge233

.lr.ph232.preheader:                              ; preds = %._crit_edge228
  %i.gu = zext i8 %i.gt to i64                    ; 2 uses
  %i.gv = sub nsw i64 %i.gr, %i.gu                ; 2 uses
  %xtraiter428 = and i64 %i.gv, 3                 ; 3 uses
  %i.gw = sub nsw i64 %i.gu, %i.gr
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %.lr.ph232.epil.preheader, label %.lr.ph232.preheader.new

.lr.ph232.preheader.new:                          ; preds = %.lr.ph232.preheader
  %unroll_iter = and i64 %i.gv, -4
  br label %.lr.ph232

._crit_edge233.loopexit.unr-lcssa:                ; preds = %.lr.ph232
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %._crit_edge233, label %.lr.ph232.epil.preheader

.lr.ph232.epil.preheader:                         ; preds = %._crit_edge233.loopexit.unr-lcssa, %.lr.ph232.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph232.preheader ], [ %i.hy, %._crit_edge233.loopexit.unr-lcssa ]
  %indvars.iv277.epil.init = phi i64 [ %i.gr, %.lr.ph232.preheader ], [ %indvars.iv.next278.3, %._crit_edge233.loopexit.unr-lcssa ]
  %lcmp.mod430 = icmp ne i64 %xtraiter428, 0
  tail call void @llvm.assume(i1 %lcmp.mod430)
  br label %.lr.ph232.epil

.lr.ph232.epil:                                   ; preds = %.lr.ph232.epil, %.lr.ph232.epil.preheader
  %i.gy = phi i64 [ %.epil.init, %.lr.ph232.epil.preheader ], [ %i.hb, %.lr.ph232.epil ]
  %indvars.iv277.epil = phi i64 [ %indvars.iv277.epil.init, %.lr.ph232.epil.preheader ], [ %indvars.iv.next278.epil, %.lr.ph232.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph232.epil.preheader ], [ %epil.iter.next, %.lr.ph232.epil ]
  %indvars.iv.next278.epil = add nsw i64 %indvars.iv277.epil, -1 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv277.epil
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !16
  %i.hb = add i64 %i.ha, %i.gy                    ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next278.epil
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter428
  br i1 %epil.iter.cmp.not, label %._crit_edge233, label %.lr.ph232.epil, !llvm.loop !33

._crit_edge233:                                   ; preds = %._crit_edge233.loopexit.unr-lcssa, %.lr.ph232.epil, %._crit_edge228
  %i.hd = load i32, ptr %i.e, align 4, !tbaa !12  ; 2 uses
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = icmp slt i32 %i.hd, 0
  %i.hg = shl nsw i64 %i.he, 2
  %i.hh = select i1 %i.hf, i64 -1, i64 %i.hg
  %i.hi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hh) #16
          to label %.preheader164 unwind label %bb.an ; 3 uses

.lr.ph232:                                        ; preds = %.lr.ph232, %.lr.ph232.preheader.new
  %i.hj = phi i64 [ 0, %.lr.ph232.preheader.new ], [ %i.hy, %.lr.ph232 ]
  %indvars.iv277 = phi i64 [ %i.gr, %.lr.ph232.preheader.new ], [ %indvars.iv.next278.3, %.lr.ph232 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph232.preheader.new ], [ %niter.next.3, %.lr.ph232 ]
  %indvars.iv.next278 = add nsw i64 %indvars.iv277, -1 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv277
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !16
  %i.hm = add i64 %i.hl, %i.hj                    ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next278
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !16
  %indvars.iv.next278.1 = add nsw i64 %indvars.iv277, -2 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next278
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !16
  %i.hq = add i64 %i.hp, %i.hm                    ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next278.1
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !16
  %indvars.iv.next278.2 = add nsw i64 %indvars.iv277, -3 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next278.1
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !16
  %i.hu = add i64 %i.ht, %i.hq                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next278.2
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !16
  %indvars.iv.next278.3 = add nsw i64 %indvars.iv277, -4 ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next278.2
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !16
  %i.hy = add i64 %i.hx, %i.hu                    ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next278.3
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !16
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge233.loopexit.unr-lcssa, label %.lr.ph232, !llvm.loop !34

.preheader164:                                    ; preds = %._crit_edge233
  store ptr %i.hi, ptr %i.h, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.d, i8 -1, i64 472, i1 false), !tbaa !16
  %.not106236 = icmp ugt i8 %i.gt, %i.gq
  br i1 %.not106236, label %.preheader, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %.preheader164
  %i.ia = zext i8 %i.gt to i64
  %i.ib = shl nuw nsw i64 %i.ia, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.ib
  %scevgep283 = getelementptr i8, ptr %i.b, i64 %i.ib
  %narrow = sub nuw i8 %i.gq, %i.gt
  %i.ic = zext i8 %narrow to i64
  %i.id = shl nuw nsw i64 %i.ic, 3
  %i.ie = add nuw nsw i64 %i.id, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep283, i64 %i.ie, i1 false), !tbaa !16
  br label %.preheader

bb.an:                                            ; preds = %._crit_edge233
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.preheader:                                       ; preds = %.lr.ph238.preheader, %.preheader164
  %.not163239 = icmp eq ptr %.sroa.0148.0.lcssa, %.sroa.9.0.lcssa
  br i1 %.not163239, label %._crit_edge242, label %.lr.ph241

._crit_edge242:                                   ; preds = %bb.as, %.preheader
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder11buildTablesEPmS1_(ptr noundef nonnull align 8 dereferenceable(21456) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.ax unwind label %bb.at

.lr.ph241:                                        ; preds = %.preheader, %bb.as
  %.sroa.0137.0240 = phi ptr [ %i.ir, %bb.as ], [ %.sroa.0148.0.lcssa, %.preheader ] ; 2 uses
  %i.ig = load i64, ptr %.sroa.0137.0240, align 8, !tbaa !16 ; 2 uses
  %i.ih = and i64 %i.ig, 63
end_hunk_0
