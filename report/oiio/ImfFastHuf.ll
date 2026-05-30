inline.NumInlined: 69
inline.NumDeleted: 43
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderC2ERPKciiii:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
          to label %bb.bd unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.am) #15
  br label %bb.ba

bb.f:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.g:                                             ; preds = %bb.b
  %i.ap = icmp slt i32 %.0155206, 6
  br i1 %i.ap, label %.lr.ph.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.aq = phi i32 [ %i.ay, %.lr.ph.i ], [ %.0155206, %bb.g ] ; 2 uses
  %i.ar = phi i64 [ %i.ax, %.lr.ph.i ], [ %.0157205, %bb.g ]
  %i.as = phi ptr [ %i.au, %.lr.ph.i ], [ %.0159204, %bb.g ] ; 2 uses
  %i.at = shl i64 %i.ar, 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.as, align 1, !tbaa !19
  %i.aw = zext i8 %i.av to i64
  %i.ax = or disjoint i64 %i.at, %i.aw            ; 2 uses
  %i.ay = add nsw i32 %i.aq, 8                    ; 2 uses
  %i.az = icmp slt i32 %i.aq, -2
  br i1 %i.az, label %.lr.ph.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit, !llvm.loop !20

_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit: ; preds = %.lr.ph.i, %bb.g
  %.2161 = phi ptr [ %.0159204, %bb.g ], [ %i.au, %.lr.ph.i ] ; 6 uses
  %.2 = phi i64 [ %.0157205, %bb.g ], [ %i.ax, %.lr.ph.i ] ; 6 uses
  %.lcssa.i = phi i32 [ %.0155206, %bb.g ], [ %i.ay, %.lr.ph.i ] ; 2 uses
  %i.ba = add nsw i32 %.lcssa.i, -6               ; 6 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %.2, %i.bb
  %i.bd = and i64 %i.bc, 63                       ; 10 uses
  %i.be = icmp eq i64 %i.bd, 63
  br i1 %i.be, label %bb.h, label %bb.s

bb.h:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit
  %i.bf = ptrtoint ptr %.2161 to i64
  %i.bg = sub i64 %i.bf, %i.ak
  %.not116 = icmp slt i64 %i.bg, %i.l
  br i1 %.not116, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull @.str)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
          to label %bb.bd unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.l:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bh) #15
  br label %bb.ba

bb.m:                                             ; preds = %bb.h
  %i.bk = icmp samesign ult i32 %.lcssa.i, 14
  br i1 %i.bk, label %.lr.ph.i131, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132

.lr.ph.i131:                                      ; preds = %bb.m, %.lr.ph.i131
  %i.bl = phi i32 [ %i.bt, %.lr.ph.i131 ], [ %i.ba, %bb.m ] ; 2 uses
  %i.bm = phi i64 [ %i.bs, %.lr.ph.i131 ], [ %.2, %bb.m ]
  %i.bn = phi ptr [ %i.bp, %.lr.ph.i131 ], [ %.2161, %bb.m ] ; 2 uses
  %i.bo = shl i64 %i.bm, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !19
  %i.br = zext i8 %i.bq to i64
  %i.bs = or disjoint i64 %i.bo, %i.br            ; 2 uses
  %i.bt = add nsw i32 %i.bl, 8                    ; 2 uses
  %i.bu = icmp slt i32 %i.bl, 0
  br i1 %i.bu, label %.lr.ph.i131, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132, !llvm.loop !20

_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder8readBitsEiRmRiRPKc.exit132: ; preds = %.lr.ph.i131, %bb.m
  %.3162 = phi ptr [ %.2161, %bb.m ], [ %i.bp, %.lr.ph.i131 ]
  %.3 = phi i64 [ %.2, %bb.m ], [ %i.bs, %.lr.ph.i131 ] ; 2 uses
  %.lcssa.i128 = phi i32 [ %i.ba, %bb.m ], [ %i.bt, %.lr.ph.i131 ]
  %i.bv = add nsw i32 %.lcssa.i128, -8            ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = lshr i64 %.3, %i.bw
  %i.by = shl i64 %i.bx, 32
  %i.bz = and i64 %i.by, 1095216660480            ; 2 uses
  %sext117 = add nuw nsw i64 %i.bz, 25769803776
  %i.ca = lshr exact i64 %sext117, 32
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
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 2 uses
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
  %i.eb = add nuw nsw i64 %i.dz, 1
  %i.ec = sub nsw i64 %i.eb, %i.dy                ; 3 uses
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
  %indvars.iv272 = phi i64 [ %i.en, %.lr.ph227.preheader ], [ %indvars.iv.next273, %._crit_edge ] ; 4 uses
  %indvars.iv265.in = phi i64 [ %i.en, %.lr.ph227.preheader ], [ %indvars.iv265, %._crit_edge ]
  %indvars.iv265 = add nuw nsw i64 %indvars.iv265.in, 1 ; 3 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %.not110220.not = icmp samesign ult i64 %indvars.iv272, %i.ep
  br i1 %.not110220.not, label %.lr.ph223.preheader, label %._crit_edge

.lr.ph223.preheader:                              ; preds = %.lr.ph227
  %i.fa = add i64 %indvar, %i.dy
  %i.fb = sub i64 %i.dz, %i.fa
  %xtraiter = and i64 %i.fb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph223.prol.loopexit, label %.lr.ph223.prol

.lr.ph223.prol:                                   ; preds = %.lr.ph223.preheader, %.lr.ph223.prol
  %indvars.iv267.prol = phi i64 [ %indvars.iv.next268.prol, %.lr.ph223.prol ], [ %indvars.iv265, %.lr.ph223.preheader ] ; 2 uses
  %.083221.prol = phi double [ %i.fe, %.lr.ph223.prol ], [ 0.000000e+00, %.lr.ph223.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph223.prol ], [ 0, %.lr.ph223.preheader ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv267.prol
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !23
  %i.fe = fadd double %.083221.prol, %i.fd        ; 3 uses
  %indvars.iv.next268.prol = add nuw nsw i64 %indvars.iv267.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph223.prol.loopexit, label %.lr.ph223.prol, !llvm.loop !29

.lr.ph223.prol.loopexit:                          ; preds = %.lr.ph223.prol, %.lr.ph223.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph223.preheader ], [ %i.fe, %.lr.ph223.prol ]
  %indvars.iv267.unr = phi i64 [ %indvars.iv265, %.lr.ph223.preheader ], [ %indvars.iv.next268.prol, %.lr.ph223.prol ]
  %.083221.unr = phi double [ 0.000000e+00, %.lr.ph223.preheader ], [ %i.fe, %.lr.ph223.prol ]
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6decodeEPKhiPti:bb.a
  %.4 = phi i32 [ %i.gp, %.loopexit ], [ %i.dh, %bb.ao ] ; 4 uses
  %i.gu = icmp slt i32 %.4, 12
  br i1 %i.gu, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gv = sub nsw i32 64, %.4                     ; 4 uses
  %i.gw = zext nneg i32 %.4 to i64
  %i.gx = lshr i64 %.4155, %i.gw
  %i.gy = or i64 %i.gx, %.4167                    ; 2 uses
  %i.gz = icmp slt i32 %.4149, %i.gv
  br i1 %i.gz, label %bb.ar, label %._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge

._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge: ; preds = %bb.aq
  %.pre250 = sub nsw i32 %.4149, %i.gv
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108

bb.ar:                                            ; preds = %bb.aq
  %i.ha = sub nsw i32 %i.gv, %.4149               ; 2 uses
  %i.hb = icmp sgt i32 %.4194, 63
  br i1 %i.hb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hc = load i64, ptr %.4176, align 8, !tbaa !16
  %i.hd = tail call i64 @llvm.bswap.i64(i64 %i.hc)
  %i.he = getelementptr inbounds nuw i8, ptr %.4176, i64 8
  %i.hf = add nsw i32 %.4194, -64
  br label %.sink.split.i101

bb.at:                                            ; preds = %bb.ar
  %i.hg = icmp sgt i32 %.4194, 0
  br i1 %i.hg, label %.lr.ph.i106.preheader, label %.sink.split.i101

.lr.ph.i106.preheader:                            ; preds = %bb.at
  %i.hh = add nsw i32 %.4194, -1
  %i.hi = lshr i32 %i.hh, 3
  %i.hj = add nuw nsw i32 %i.hi, 1                ; 2 uses
  %xtraiter296 = and i32 %i.hj, 3                 ; 3 uses
  %i.hk = icmp ult i32 %.4194, 25
  br i1 %i.hk, label %.lr.ph.i106.epil.preheader, label %.lr.ph.i106.preheader.new

.lr.ph.i106.preheader.new:                        ; preds = %.lr.ph.i106.preheader
  %unroll_iter307 = and i32 %i.hj, 1073741820
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106, %.lr.ph.i106.preheader.new
  %.039.i107 = phi i64 [ 56, %.lr.ph.i106.preheader.new ], [ %i.ik, %.lr.ph.i106 ] ; 5 uses
  %i.hl = phi ptr [ %.4176, %.lr.ph.i106.preheader.new ], [ %i.ij, %.lr.ph.i106 ] ; 5 uses
  %i.hm = phi i64 [ 0, %.lr.ph.i106.preheader.new ], [ %i.ii, %.lr.ph.i106 ]
  %niter308 = phi i32 [ 0, %.lr.ph.i106.preheader.new ], [ %niter308.next.3, %.lr.ph.i106 ]
  %i.hn = load i8, ptr %i.hl, align 1, !tbaa !19
  %i.ho = zext i8 %i.hn to i64
  %i.hp = shl i64 %i.ho, %.039.i107
  %i.hq = or i64 %i.hp, %i.hm
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  %i.hs = add nsw i64 %.039.i107, -8
  %i.ht = load i8, ptr %i.hr, align 1, !tbaa !19
  %i.hu = zext i8 %i.ht to i64
  %i.hv = shl i64 %i.hu, %i.hs
  %i.hw = or i64 %i.hv, %i.hq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hy = add nsw i64 %.039.i107, -16
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !19
  %i.ia = zext i8 %i.hz to i64
  %i.ib = shl i64 %i.ia, %i.hy
  %i.ic = or i64 %i.ib, %i.hw
  %i.id = getelementptr inbounds nuw i8, ptr %i.hl, i64 3
  %i.ie = add nsw i64 %.039.i107, -24
  %i.if = load i8, ptr %i.id, align 1, !tbaa !19
  %i.ig = zext i8 %i.if to i64
  %i.ih = shl i64 %i.ig, %i.ie
  %i.ii = or i64 %i.ih, %i.ic                     ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 2 uses
  %i.ik = add nsw i64 %.039.i107, -32             ; 2 uses
  %niter308.next.3 = add i32 %niter308, 4         ; 2 uses
  %niter308.ncmp.3.not = icmp eq i32 %niter308.next.3, %unroll_iter307
  br i1 %niter308.ncmp.3.not, label %._crit_edge.i98.loopexit.unr-lcssa, label %.lr.ph.i106, !llvm.loop !47

._crit_edge.i98.loopexit.unr-lcssa:               ; preds = %.lr.ph.i106
  %lcmp.mod304.not = icmp eq i32 %xtraiter296, 0
  br i1 %lcmp.mod304.not, label %._crit_edge.i98.loopexit, label %.lr.ph.i106.epil.preheader

.lr.ph.i106.epil.preheader:                       ; preds = %._crit_edge.i98.loopexit.unr-lcssa, %.lr.ph.i106.preheader
  %.039.i107.epil.init = phi i64 [ 56, %.lr.ph.i106.preheader ], [ %i.ik, %._crit_edge.i98.loopexit.unr-lcssa ]
  %.epil.init301 = phi ptr [ %.4176, %.lr.ph.i106.preheader ], [ %i.ij, %._crit_edge.i98.loopexit.unr-lcssa ]
  %.epil.init303 = phi i64 [ 0, %.lr.ph.i106.preheader ], [ %i.ii, %._crit_edge.i98.loopexit.unr-lcssa ]
  %lcmp.mod306 = icmp ne i32 %xtraiter296, 0
  tail call void @llvm.assume(i1 %lcmp.mod306)
  br label %.lr.ph.i106.epil

.lr.ph.i106.epil:                                 ; preds = %.lr.ph.i106.epil, %.lr.ph.i106.epil.preheader
  %.039.i107.epil = phi i64 [ %i.is, %.lr.ph.i106.epil ], [ %.039.i107.epil.init, %.lr.ph.i106.epil.preheader ] ; 2 uses
  %i.il = phi ptr [ %i.ir, %.lr.ph.i106.epil ], [ %.epil.init301, %.lr.ph.i106.epil.preheader ] ; 2 uses
  %i.im = phi i64 [ %i.iq, %.lr.ph.i106.epil ], [ %.epil.init303, %.lr.ph.i106.epil.preheader ]
  %epil.iter297 = phi i32 [ %epil.iter297.next, %.lr.ph.i106.epil ], [ 0, %.lr.ph.i106.epil.preheader ]
  %i.in = load i8, ptr %i.il, align 1, !tbaa !19
  %i.io = zext i8 %i.in to i64
  %i.ip = shl i64 %i.io, %.039.i107.epil
  %i.iq = or i64 %i.ip, %i.im                     ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.is = add nsw i64 %.039.i107.epil, -8
  %epil.iter297.next = add i32 %epil.iter297, 1   ; 2 uses
  %epil.iter297.cmp.not = icmp eq i32 %epil.iter297.next, %xtraiter296
  br i1 %epil.iter297.cmp.not, label %._crit_edge.i98.loopexit, label %.lr.ph.i106.epil, !llvm.loop !57

._crit_edge.i98.loopexit:                         ; preds = %.lr.ph.i106.epil, %._crit_edge.i98.loopexit.unr-lcssa
  %.lcssa276 = phi i64 [ %i.ii, %._crit_edge.i98.loopexit.unr-lcssa ], [ %i.iq, %.lr.ph.i106.epil ]
  %scevgep245 = getelementptr i8, ptr %.4176, i64 1
  %i.it = add nsw i32 %.4194, -1
  %i.iu = lshr i32 %i.it, 3
  %i.iv = zext nneg i32 %i.iu to i64
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.iv
  br label %.sink.split.i101

.sink.split.i101:                                 ; preds = %bb.at, %._crit_edge.i98.loopexit, %bb.as
  %.13203 = phi i32 [ %i.hf, %bb.as ], [ 0, %bb.at ], [ 0, %._crit_edge.i98.loopexit ]
  %.15187 = phi ptr [ %i.he, %bb.as ], [ %.4176, %bb.at ], [ %scevgep246, %._crit_edge.i98.loopexit ]
  %i.iw = phi i64 [ %i.hd, %bb.as ], [ 0, %bb.at ], [ %.lcssa276, %._crit_edge.i98.loopexit ] ; 2 uses
  %i.ix = sub nsw i32 64, %i.ha                   ; 2 uses
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = lshr i64 %i.iw, %i.iy
  %i.ja = or i64 %i.iz, %i.gy
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108

_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108: ; preds = %._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge, %.sink.split.i101
  %.pre-phi251 = phi i32 [ %.pre250, %._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge ], [ %i.ix, %.sink.split.i101 ]
  %.14204 = phi i32 [ %.4194, %._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge ], [ %.13203, %.sink.split.i101 ]
  %.17189 = phi ptr [ %.4176, %._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge ], [ %.15187, %.sink.split.i101 ]
  %.8171 = phi i64 [ %i.gy, %._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge ], [ %i.ja, %.sink.split.i101 ]
  %.17 = phi i64 [ %.4155, %._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge ], [ %i.iw, %.sink.split.i101 ]
  %i.jb = phi i32 [ %.4149, %._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge ], [ 64, %.sink.split.i101 ]
  %.034.i93 = phi i32 [ %i.gv, %._ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108_crit_edge ], [ %i.ha, %.sink.split.i101 ] ; 2 uses
  %.not.i94 = icmp sgt i32 %i.jb, %.034.i93
  %i.jc = zext nneg i32 %.034.i93 to i64
  %i.jd = shl i64 %.17, %i.jc
  %storemerge.i95 = select i1 %.not.i94, i64 %i.jd, i64 0
  br label %bb.au

bb.au:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108, %bb.ap
  %.5195 = phi i32 [ %.14204, %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108 ], [ %.4194, %bb.ap ] ; 2 uses
  %.5177 = phi ptr [ %.17189, %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108 ], [ %.4176, %bb.ap ]
  %.5168 = phi i64 [ %.8171, %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108 ], [ %.4167, %bb.ap ]
  %.5156 = phi i64 [ %storemerge.i95, %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108 ], [ %.4155, %bb.ap ]
  %.5150 = phi i32 [ %.pre-phi251, %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108 ], [ %.4149, %bb.ap ]
  %.5 = phi i32 [ 64, %_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoder6refillERmiS1_RiRPKhS2_.exit108 ], [ %.4, %bb.ap ]
  %i.je = icmp slt i32 %.160, %4
  br i1 %i.je, label %bb.f, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.au, %bb.e
  %.0190.lcssa = phi i32 [ %i.d, %bb.e ], [ %.5195, %bb.au ]
  %.not = icmp eq i32 %.0190.lcssa, 0
  br i1 %.not, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %._crit_edge
  %i.jf = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.jf, ptr noundef nonnull @.str.9)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @__cxa_throw(ptr nonnull %i.jf, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #17
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge
  ret void

bb.az:                                            ; preds = %bb.ax, %bb.af, %bb.aj, %bb.an, %bb.v, %bb.q, %bb.d
  %.sink = phi ptr [ %i.jf, %bb.ax ], [ %i.fv, %bb.af ], [ %i.ga, %bb.aj ], [ %i.gm, %bb.an ], [ %i.dd, %bb.v ], [ %i.ct, %bb.q ], [ %i.b, %bb.d ]
  %.pn73 = phi { ptr, i32 } [ %i.jg, %bb.ax ], [ %i.fw, %bb.af ], [ %i.gb, %bb.aj ], [ %i.gn, %bb.an ], [ %i.de, %bb.v ], [ %i.cu, %bb.q ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #15
  resume { ptr, i32 } %.pn73
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v24i64(<24 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v32i64(<32 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderE", !4, i64 0, !4, i64 4, !5, i64 8, !5, i64 9, !9, i64 16, !5, i64 24, !5, i64 496, !5, i64 968, !5, i64 17352, !11, i64 21448}
!9 = !{!"p1 int", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!8, !4, i64 4}
!13 = !{!8, !5, i64 8}
!14 = !{!8, !5, i64 9}
!15 = !{!8, !9, i64 16}
!16 = !{!11, !11, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !10, i64 0}
!19 = !{!5, !5, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !5, i64 0}
!25 = distinct !{!25, !21, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !21, !27, !26}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !21, !26, !27}
!42 = distinct !{!42, !21, !26, !27}
!43 = distinct !{!43, !21, !26}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21}
!46 = !{!8, !11, i64 21448}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !30}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !5, i64 0}
!53 = distinct !{!53, !21, !26, !27}
!54 = !{!"branch_weights", i32 4, i32 12}
!55 = distinct !{!55, !21, !26, !27}
!56 = distinct !{!56, !21, !27, !26}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !21}
end_hunk_1
