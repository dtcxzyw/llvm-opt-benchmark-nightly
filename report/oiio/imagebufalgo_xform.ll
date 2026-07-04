inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L7resize_IffEEbRNS0_8ImageBufERKS2_PKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !189
  %i.r = sitofp i32 %i.q to float                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !190
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1022, !nonnull !48, !align !386
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !876
  %i.aa = fmul float %i.z, 5.000000e-01
  %i.ab = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>   ; 6 uses
  %i.ad = load <2 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>   ; 3 uses
  %i.af = fdiv <2 x float> %i.ae, %i.ac           ; 5 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = fdiv float 1.000000e+00, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fdiv float 1.000000e+00, %i.ai          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x float> %i.al, %i.af
  %i.an = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = extractelement <2 x i32> %i.ao, i64 0   ; 11 uses
  %i.aq = shl i32 %i.ap, 1                        ; 5 uses
  %i.ar = or disjoint i32 %i.aq, 1                ; 3 uses
  %i.as = extractelement <2 x i32> %i.ao, i64 1   ; 9 uses
  %i.at = shl i32 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.x) ; 2 uses
  %i.ay = or disjoint i32 %i.at, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = alloca i8, i64 %i.ba, align 16          ; 4 uses
  br i1 %i.ax, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %.loopexit423

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !180 ; 2 uses
  %i.be = load i32, ptr %1, align 8, !tbaa !71    ; 3 uses
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = mul nsw i32 %i.bf, %i.ar                ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i32 %i.bg, 0
  %i.bj = shl nsw i64 %i.bh, 2
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #34 ; 4 uses
  %i.bm = icmp sge i32 %i.be, %i.bd
  %.not309430 = icmp slt i32 %i.ap, 0
  %or.cond = select i1 %i.bm, i1 true, i1 %.not309430
  br i1 %or.cond, label %.loopexit423, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.bn = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.bn to i64   ; 2 uses
  %i.bo = extractelement <2 x float> %i.ac, i64 0
  %i.bp = extractelement <2 x float> %i.af, i64 0
  %min.iters.check = icmp slt i32 %i.aq, 4
  %i.bq = and i32 %smax, 2147483644
  %n.vec = zext nneg i32 %i.bq to i64             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit422
  %.0245436 = phi i32 [ %i.cz, %.loopexit422 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %i.br = load i32, ptr %1, align 8, !tbaa !71
  %i.bs = sub nsw i32 %.0245436, %i.br
  %i.bt = mul nsw i32 %i.bs, %i.ar
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu ; 3 uses
  %i.bw = sitofp i32 %.0245436 to float
  %i.bx = fsub nnan float %i.bw, %i.r
  %i.by = fadd nnan float %i.bx, 5.000000e-01
  %i.bz = fmul float %i.ah, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bo, float %i.j) ; 2 uses
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fadd float %i.cc, -5.000000e-01
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  %i.ce = fcmp oeq float %i.cu, 0.000000e+00
  br i1 %i.ce, label %.loopexit422, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %._crit_edge
  br i1 %min.iters.check, label %.lr.ph435.preheader688, label %vector.ph

.lr.ph435.preheader688:                           ; preds = %vector.body, %.lr.ph435.preheader
  %indvars.iv521.ph = phi i64 [ 0, %.lr.ph435.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph435

vector.ph:                                        ; preds = %.lr.ph435.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !77
  %i.cg = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.cg, ptr %i.cf, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.lr.ph435.preheader688, label %vector.body, !llvm.loop !1023

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.0248432 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cu, %bb.c ]
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1022, !nonnull !48, !align !386
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = sub i32 %i.ck, %i.ap
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = fsub float %i.cm, %i.cd
  %i.co = fmul float %i.bp, %i.cn
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef float %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.co)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store float %i.cs, ptr %i.ct, align 4, !tbaa !77
  %i.cu = fadd float %.0248432, %i.cs             ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1024

bb.d:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i379

.lr.ph435:                                        ; preds = %.lr.ph435.preheader688, %.lr.ph435
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %.lr.ph435 ], [ %indvars.iv521.ph, %.lr.ph435.preheader688 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv521 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !77
  %i.cy = fdiv float %i.cx, %i.cu
  store float %i.cy, ptr %i.cw, align 4, !tbaa !77
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count
  br i1 %exitcond525.not, label %.loopexit422, label %.lr.ph435, !llvm.loop !1025

.loopexit422:                                     ; preds = %.lr.ph435, %._crit_edge
  %i.cz = add nsw i32 %.0245436, 1                ; 2 uses
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !180
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph, label %.loopexit423, !llvm.loop !1026

.loopexit423:                                     ; preds = %.loopexit422, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, %bb.a
  %.sroa.0392.0 = phi ptr [ null, %bb.a ], [ %i.bl, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ %i.bl, %.loopexit422 ] ; 5 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit423
  %i.dc = sext i32 %i.g to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = alloca i8, i64 %i.dd, align 16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit423, %bb.e
  %i.df = phi ptr [ %i.de, %bb.e ], [ null, %.loopexit423 ] ; 8 uses
  br i1 %i.ax, label %bb.g, label %bb.bg

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !1021, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.l

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.dh = load ptr, ptr %0, align 8, !tbaa !1019, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !182 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !181
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %.lr.ph505, label %._crit_edge506

.lr.ph505:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_NS1_8WrapModeE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.do = icmp sgt i32 %i.g, 0                    ; 3 uses
  %i.dp = icmp slt <2 x i32> %i.ao, zeroinitializer ; 2 uses
  %i.dq = add nuw i32 %i.ap, 1
  %i.dr = add i32 %i.as, 1                        ; 2 uses
  %i.ds = sub i32 0, %i.as
  %i.dt = icmp slt i32 %i.g, 1
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fm = sext i32 %i.as to i64
  %smax549 = call i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.fn = or disjoint i32 %smax549, 1             ; 2 uses
  %i.fo = zext i32 %i.g to i64                    ; 6 uses
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %smax564 = call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.fq = or disjoint i32 %smax564, 1
  %i.fr = sext i32 %i.ds to i64
  %wide.trip.count550 = zext nneg i32 %i.fn to i64
  %wide.trip.count556 = zext nneg i32 %i.fn to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.fm
  %wide.trip.count576 = zext nneg i32 %i.fq to i64
  %i.fs = extractelement <2 x i1> %i.dp, i64 1    ; 2 uses
  %i.ft = extractelement <2 x float> %i.ac, i64 1
  %i.fu = or disjoint i32 %smax564, 1
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = extractelement <2 x float> %i.af, i64 1
  %min.iters.check670 = icmp slt i32 %i.at, 4
  %i.fx = and i32 %smax549, 2147483644
  %n.vec673 = zext nneg i32 %i.fx to i64          ; 2 uses
  %i.fy = extractelement <2 x i1> %i.dp, i64 0
  %i.fz = extractelement <2 x float> %i.ac, i64 0
  %xtraiter = and i64 %i.fv, 7
  %i.ga = icmp slt i32 %i.aq, 7
  %unroll_iter = and i64 %i.fv, 2147483640
  %min.iters.check653 = icmp ult i32 %i.g, 8
  %n.vec656 = and i64 %i.fo, 2147483640           ; 3 uses
  %cmp.n667 = icmp eq i64 %n.vec656, %i.fo
  br label %bb.n

._crit_edge506:                                   ; preds = %._crit_edge503, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_NS1_8WrapModeE.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.gc, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge506
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge506, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !230
  %.not.i314 = icmp eq ptr %i.gg, null
  br i1 %.not.i314, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.cv

bb.l:                                             ; preds = %bb.g
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit342

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit340

bb.n:                                             ; preds = %.lr.ph505, %._crit_edge503
  %.0257504 = phi i32 [ %i.dj, %.lr.ph505 ], [ %i.hv, %._crit_edge503 ] ; 2 uses
  %i.gl = sitofp i32 %.0257504 to float
  %i.gm = fsub nnan float %i.gl, %i.u
  %i.gn = fadd nnan float %i.gm, 5.000000e-01
  %i.go = fmul float %i.aj, %i.gn
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.ft, float %i.m) ; 2 uses
  %i.gq = call noundef float @llvm.floor.f32(float %i.gp) ; 2 uses
  %i.gr = fptosi float %i.gq to i32               ; 2 uses
  br i1 %i.fs, label %.loopexit415, label %.lr.ph470

.lr.ph470:                                        ; preds = %bb.n
  %i.gs = fsub float %i.gp, %i.gq
  %i.gt = fadd float %i.gs, -5.000000e-01
  br label %bb.o

._crit_edge471:                                   ; preds = %bb.p
  %i.gu = fcmp oeq float %i.hk, 0.000000e+00
  br i1 %i.gu, label %.loopexit415, label %.lr.ph475.preheader

.lr.ph475.preheader:                              ; preds = %._crit_edge471
  br i1 %min.iters.check670, label %.lr.ph475.preheader684, label %vector.ph671

.lr.ph475.preheader684:                           ; preds = %vector.body676, %.lr.ph475.preheader
  %indvars.iv552.ph = phi i64 [ 0, %.lr.ph475.preheader ], [ %n.vec673, %vector.body676 ]
  br label %.lr.ph475

vector.ph671:                                     ; preds = %.lr.ph475.preheader
  %broadcast.splatinsert674 = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat675 = shufflevector <4 x float> %broadcast.splatinsert674, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body676

vector.body676:                                   ; preds = %vector.body676, %vector.ph671
  %index677 = phi i64 [ 0, %vector.ph671 ], [ %index.next679, %vector.body676 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index677 ; 2 uses
  %wide.load678 = load <4 x float>, ptr %i.gv, align 16, !tbaa !77
  %i.gw = fdiv <4 x float> %wide.load678, %broadcast.splat675
  store <4 x float> %i.gw, ptr %i.gv, align 16, !tbaa !77
  %index.next679 = add nuw i64 %index677, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next679, %n.vec673
  br i1 %i.gx, label %.lr.ph475.preheader684, label %vector.body676, !llvm.loop !1027

bb.o:                                             ; preds = %.lr.ph470, %bb.p
  %indvars.iv546 = phi i64 [ 0, %.lr.ph470 ], [ %indvars.iv.next547, %bb.p ] ; 3 uses
  %.0259468 = phi float [ 0.000000e+00, %.lr.ph470 ], [ %i.hk, %bb.p ]
  %i.gy = load ptr, ptr %i.v, align 8, !tbaa !1022, !nonnull !48, !align !386
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !49 ; 2 uses
  %i.ha = trunc i64 %indvars.iv546 to i32
  %i.hb = sub i32 %i.ha, %i.as
  %i.hc = sitofp i32 %i.hb to float
  %i.hd = fsub float %i.hc, %i.gt
  %i.he = fmul float %i.fw, %i.hd
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef float %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, float noundef %i.he)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv546
  store float %i.hi, ptr %i.hj, align 4, !tbaa !77
  %i.hk = fadd float %.0259468, %i.hi             ; 4 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next547, %wide.trip.count550
  br i1 %exitcond551.not, label %._crit_edge471, label %bb.o, !llvm.loop !1028

bb.q:                                             ; preds = %bb.o
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph475:                                        ; preds = %.lr.ph475.preheader684, %.lr.ph475
  %indvars.iv552 = phi i64 [ %indvars.iv.next553, %.lr.ph475 ], [ %indvars.iv552.ph, %.lr.ph475.preheader684 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv552 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L7resize_IfhEEbRNS0_8ImageBufERKS2_PKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !189
  %i.r = sitofp i32 %i.q to float                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !190
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1048, !nonnull !48, !align !386
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !876
  %i.aa = fmul float %i.z, 5.000000e-01
  %i.ab = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>   ; 6 uses
  %i.ad = load <2 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>   ; 3 uses
  %i.af = fdiv <2 x float> %i.ae, %i.ac           ; 5 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = fdiv float 1.000000e+00, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fdiv float 1.000000e+00, %i.ai          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x float> %i.al, %i.af
  %i.an = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = extractelement <2 x i32> %i.ao, i64 0   ; 11 uses
  %i.aq = shl i32 %i.ap, 1                        ; 5 uses
  %i.ar = or disjoint i32 %i.aq, 1                ; 3 uses
  %i.as = extractelement <2 x i32> %i.ao, i64 1   ; 9 uses
  %i.at = shl i32 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.x) ; 2 uses
  %i.ay = or disjoint i32 %i.at, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = alloca i8, i64 %i.ba, align 16          ; 4 uses
  br i1 %i.ax, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %.loopexit423

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !180 ; 2 uses
  %i.be = load i32, ptr %1, align 8, !tbaa !71    ; 3 uses
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = mul nsw i32 %i.bf, %i.ar                ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i32 %i.bg, 0
  %i.bj = shl nsw i64 %i.bh, 2
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #34 ; 4 uses
  %i.bm = icmp sge i32 %i.be, %i.bd
  %.not309430 = icmp slt i32 %i.ap, 0
  %or.cond = select i1 %i.bm, i1 true, i1 %.not309430
  br i1 %or.cond, label %.loopexit423, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.bn = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.bn to i64   ; 2 uses
  %i.bo = extractelement <2 x float> %i.ac, i64 0
  %i.bp = extractelement <2 x float> %i.af, i64 0
  %min.iters.check = icmp slt i32 %i.aq, 4
  %i.bq = and i32 %smax, 2147483644
  %n.vec = zext nneg i32 %i.bq to i64             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit422
  %.0245436 = phi i32 [ %i.cz, %.loopexit422 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %i.br = load i32, ptr %1, align 8, !tbaa !71
  %i.bs = sub nsw i32 %.0245436, %i.br
  %i.bt = mul nsw i32 %i.bs, %i.ar
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu ; 3 uses
  %i.bw = sitofp i32 %.0245436 to float
  %i.bx = fsub nnan float %i.bw, %i.r
  %i.by = fadd nnan float %i.bx, 5.000000e-01
  %i.bz = fmul float %i.ah, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bo, float %i.j) ; 2 uses
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fadd float %i.cc, -5.000000e-01
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  %i.ce = fcmp oeq float %i.cu, 0.000000e+00
  br i1 %i.ce, label %.loopexit422, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %._crit_edge
  br i1 %min.iters.check, label %.lr.ph435.preheader688, label %vector.ph

.lr.ph435.preheader688:                           ; preds = %vector.body, %.lr.ph435.preheader
  %indvars.iv521.ph = phi i64 [ 0, %.lr.ph435.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph435

vector.ph:                                        ; preds = %.lr.ph435.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !77
  %i.cg = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.cg, ptr %i.cf, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.lr.ph435.preheader688, label %vector.body, !llvm.loop !1049

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.0248432 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cu, %bb.c ]
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1048, !nonnull !48, !align !386
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = sub i32 %i.ck, %i.ap
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = fsub float %i.cm, %i.cd
  %i.co = fmul float %i.bp, %i.cn
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef float %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.co)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store float %i.cs, ptr %i.ct, align 4, !tbaa !77
  %i.cu = fadd float %.0248432, %i.cs             ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1050

bb.d:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i379

.lr.ph435:                                        ; preds = %.lr.ph435.preheader688, %.lr.ph435
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %.lr.ph435 ], [ %indvars.iv521.ph, %.lr.ph435.preheader688 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv521 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !77
  %i.cy = fdiv float %i.cx, %i.cu
  store float %i.cy, ptr %i.cw, align 4, !tbaa !77
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count
  br i1 %exitcond525.not, label %.loopexit422, label %.lr.ph435, !llvm.loop !1051

.loopexit422:                                     ; preds = %.lr.ph435, %._crit_edge
  %i.cz = add nsw i32 %.0245436, 1                ; 2 uses
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !180
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph, label %.loopexit423, !llvm.loop !1052

.loopexit423:                                     ; preds = %.loopexit422, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, %bb.a
  %.sroa.0392.0 = phi ptr [ null, %bb.a ], [ %i.bl, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ %i.bl, %.loopexit422 ] ; 5 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit423
  %i.dc = sext i32 %i.g to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = alloca i8, i64 %i.dd, align 16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit423, %bb.e
  %i.df = phi ptr [ %i.de, %bb.e ], [ null, %.loopexit423 ] ; 8 uses
  br i1 %i.ax, label %bb.g, label %bb.bg

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !1047, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.l

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.dh = load ptr, ptr %0, align 8, !tbaa !1045, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !182 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !181
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %.lr.ph505, label %._crit_edge506

.lr.ph505:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.do = icmp sgt i32 %i.g, 0                    ; 3 uses
  %i.dp = icmp slt <2 x i32> %i.ao, zeroinitializer ; 2 uses
  %i.dq = add nuw i32 %i.ap, 1
  %i.dr = add i32 %i.as, 1                        ; 2 uses
  %i.ds = sub i32 0, %i.as
  %i.dt = icmp slt i32 %i.g, 1
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fm = sext i32 %i.as to i64
  %smax549 = call i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.fn = or disjoint i32 %smax549, 1             ; 2 uses
  %i.fo = zext i32 %i.g to i64                    ; 6 uses
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %smax564 = call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.fq = or disjoint i32 %smax564, 1
  %i.fr = sext i32 %i.ds to i64
  %wide.trip.count550 = zext nneg i32 %i.fn to i64
  %wide.trip.count556 = zext nneg i32 %i.fn to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.fm
  %wide.trip.count576 = zext nneg i32 %i.fq to i64
  %i.fs = extractelement <2 x i1> %i.dp, i64 1    ; 2 uses
  %i.ft = extractelement <2 x float> %i.ac, i64 1
  %i.fu = or disjoint i32 %smax564, 1
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = extractelement <2 x float> %i.af, i64 1
  %min.iters.check670 = icmp slt i32 %i.at, 4
  %i.fx = and i32 %smax549, 2147483644
  %n.vec673 = zext nneg i32 %i.fx to i64          ; 2 uses
  %i.fy = extractelement <2 x i1> %i.dp, i64 0
  %i.fz = extractelement <2 x float> %i.ac, i64 0
  %xtraiter = and i64 %i.fv, 7
  %i.ga = icmp slt i32 %i.aq, 7
  %unroll_iter = and i64 %i.fv, 2147483640
  %min.iters.check653 = icmp ult i32 %i.g, 8
  %n.vec656 = and i64 %i.fo, 2147483640           ; 3 uses
  %cmp.n667 = icmp eq i64 %n.vec656, %i.fo
  br label %bb.n

._crit_edge506:                                   ; preds = %._crit_edge503, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.gc, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge506
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge506, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !230
  %.not.i314 = icmp eq ptr %i.gg, null
  br i1 %.not.i314, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.cv

bb.l:                                             ; preds = %bb.g
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit342

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit340

bb.n:                                             ; preds = %.lr.ph505, %._crit_edge503
  %.0257504 = phi i32 [ %i.dj, %.lr.ph505 ], [ %i.hv, %._crit_edge503 ] ; 2 uses
  %i.gl = sitofp i32 %.0257504 to float
  %i.gm = fsub nnan float %i.gl, %i.u
  %i.gn = fadd nnan float %i.gm, 5.000000e-01
  %i.go = fmul float %i.aj, %i.gn
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.ft, float %i.m) ; 2 uses
  %i.gq = call noundef float @llvm.floor.f32(float %i.gp) ; 2 uses
  %i.gr = fptosi float %i.gq to i32               ; 2 uses
  br i1 %i.fs, label %.loopexit415, label %.lr.ph470

.lr.ph470:                                        ; preds = %bb.n
  %i.gs = fsub float %i.gp, %i.gq
  %i.gt = fadd float %i.gs, -5.000000e-01
  br label %bb.o

._crit_edge471:                                   ; preds = %bb.p
  %i.gu = fcmp oeq float %i.hk, 0.000000e+00
  br i1 %i.gu, label %.loopexit415, label %.lr.ph475.preheader

.lr.ph475.preheader:                              ; preds = %._crit_edge471
  br i1 %min.iters.check670, label %.lr.ph475.preheader684, label %vector.ph671

.lr.ph475.preheader684:                           ; preds = %vector.body676, %.lr.ph475.preheader
  %indvars.iv552.ph = phi i64 [ 0, %.lr.ph475.preheader ], [ %n.vec673, %vector.body676 ]
  br label %.lr.ph475

vector.ph671:                                     ; preds = %.lr.ph475.preheader
  %broadcast.splatinsert674 = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat675 = shufflevector <4 x float> %broadcast.splatinsert674, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body676

vector.body676:                                   ; preds = %vector.body676, %vector.ph671
  %index677 = phi i64 [ 0, %vector.ph671 ], [ %index.next679, %vector.body676 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index677 ; 2 uses
  %wide.load678 = load <4 x float>, ptr %i.gv, align 16, !tbaa !77
  %i.gw = fdiv <4 x float> %wide.load678, %broadcast.splat675
  store <4 x float> %i.gw, ptr %i.gv, align 16, !tbaa !77
  %index.next679 = add nuw i64 %index677, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next679, %n.vec673
  br i1 %i.gx, label %.lr.ph475.preheader684, label %vector.body676, !llvm.loop !1053

bb.o:                                             ; preds = %.lr.ph470, %bb.p
  %indvars.iv546 = phi i64 [ 0, %.lr.ph470 ], [ %indvars.iv.next547, %bb.p ] ; 3 uses
  %.0259468 = phi float [ 0.000000e+00, %.lr.ph470 ], [ %i.hk, %bb.p ]
  %i.gy = load ptr, ptr %i.v, align 8, !tbaa !1048, !nonnull !48, !align !386
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !49 ; 2 uses
  %i.ha = trunc i64 %indvars.iv546 to i32
  %i.hb = sub i32 %i.ha, %i.as
  %i.hc = sitofp i32 %i.hb to float
  %i.hd = fsub float %i.hc, %i.gt
  %i.he = fmul float %i.fw, %i.hd
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef float %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, float noundef %i.he)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv546
  store float %i.hi, ptr %i.hj, align 4, !tbaa !77
  %i.hk = fadd float %.0259468, %i.hi             ; 4 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next547, %wide.trip.count550
  br i1 %exitcond551.not, label %._crit_edge471, label %bb.o, !llvm.loop !1054

bb.q:                                             ; preds = %bb.o
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph475:                                        ; preds = %.lr.ph475.preheader684, %.lr.ph475
  %indvars.iv552 = phi i64 [ %indvars.iv.next553, %.lr.ph475 ], [ %indvars.iv552.ph, %.lr.ph475.preheader684 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv552 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L7resize_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_PKNS0_8Filter2DENS0_3ROIEiENKUlSB_E_clESB_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !189
  %i.r = sitofp i32 %i.q to float                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !190
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1074, !nonnull !48, !align !386
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !876
  %i.aa = fmul float %i.z, 5.000000e-01
  %i.ab = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>   ; 6 uses
  %i.ad = load <2 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>   ; 3 uses
  %i.af = fdiv <2 x float> %i.ae, %i.ac           ; 5 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = fdiv float 1.000000e+00, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fdiv float 1.000000e+00, %i.ai          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x float> %i.al, %i.af
  %i.an = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = extractelement <2 x i32> %i.ao, i64 0   ; 11 uses
  %i.aq = shl i32 %i.ap, 1                        ; 5 uses
  %i.ar = or disjoint i32 %i.aq, 1                ; 3 uses
  %i.as = extractelement <2 x i32> %i.ao, i64 1   ; 9 uses
  %i.at = shl i32 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.x) ; 2 uses
  %i.ay = or disjoint i32 %i.at, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = alloca i8, i64 %i.ba, align 16          ; 4 uses
  br i1 %i.ax, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %.loopexit427

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !180 ; 2 uses
  %i.be = load i32, ptr %1, align 8, !tbaa !71    ; 3 uses
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = mul nsw i32 %i.bf, %i.ar                ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i32 %i.bg, 0
  %i.bj = shl nsw i64 %i.bh, 2
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #34 ; 4 uses
  %i.bm = icmp sge i32 %i.be, %i.bd
  %.not309434 = icmp slt i32 %i.ap, 0
  %or.cond = select i1 %i.bm, i1 true, i1 %.not309434
  br i1 %or.cond, label %.loopexit427, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.bn = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.bn to i64   ; 2 uses
  %i.bo = extractelement <2 x float> %i.ac, i64 0
  %i.bp = extractelement <2 x float> %i.af, i64 0
  %min.iters.check = icmp slt i32 %i.aq, 4
  %i.bq = and i32 %smax, 2147483644
  %n.vec = zext nneg i32 %i.bq to i64             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit426
  %.0245440 = phi i32 [ %i.cz, %.loopexit426 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %i.br = load i32, ptr %1, align 8, !tbaa !71
  %i.bs = sub nsw i32 %.0245440, %i.br
  %i.bt = mul nsw i32 %i.bs, %i.ar
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu ; 3 uses
  %i.bw = sitofp i32 %.0245440 to float
  %i.bx = fsub nnan float %i.bw, %i.r
  %i.by = fadd nnan float %i.bx, 5.000000e-01
  %i.bz = fmul float %i.ah, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bo, float %i.j) ; 2 uses
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fadd float %i.cc, -5.000000e-01
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  %i.ce = fcmp oeq float %i.cu, 0.000000e+00
  br i1 %i.ce, label %.loopexit426, label %.lr.ph439.preheader

.lr.ph439.preheader:                              ; preds = %._crit_edge
  br i1 %min.iters.check, label %.lr.ph439.preheader696, label %vector.ph

.lr.ph439.preheader696:                           ; preds = %vector.body, %.lr.ph439.preheader
  %indvars.iv525.ph = phi i64 [ 0, %.lr.ph439.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph439

vector.ph:                                        ; preds = %.lr.ph439.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !77
  %i.cg = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.cg, ptr %i.cf, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.lr.ph439.preheader696, label %vector.body, !llvm.loop !1075

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.0248436 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cu, %bb.c ]
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1074, !nonnull !48, !align !386
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = sub i32 %i.ck, %i.ap
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = fsub float %i.cm, %i.cd
  %i.co = fmul float %i.bp, %i.cn
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef float %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.co)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store float %i.cs, ptr %i.ct, align 4, !tbaa !77
  %i.cu = fadd float %.0248436, %i.cs             ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1076

bb.d:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i383

.lr.ph439:                                        ; preds = %.lr.ph439.preheader696, %.lr.ph439
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %.lr.ph439 ], [ %indvars.iv525.ph, %.lr.ph439.preheader696 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv525 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !77
  %i.cy = fdiv float %i.cx, %i.cu
  store float %i.cy, ptr %i.cw, align 4, !tbaa !77
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %exitcond529.not = icmp eq i64 %indvars.iv.next526, %wide.trip.count
  br i1 %exitcond529.not, label %.loopexit426, label %.lr.ph439, !llvm.loop !1077

.loopexit426:                                     ; preds = %.lr.ph439, %._crit_edge
  %i.cz = add nsw i32 %.0245440, 1                ; 2 uses
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !180
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph, label %.loopexit427, !llvm.loop !1078

.loopexit427:                                     ; preds = %.loopexit426, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, %bb.a
  %.sroa.0396.0 = phi ptr [ null, %bb.a ], [ %i.bl, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ %i.bl, %.loopexit426 ] ; 5 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit427
  %i.dc = sext i32 %i.g to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = alloca i8, i64 %i.dd, align 16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit427, %bb.e
  %i.df = phi ptr [ %i.de, %bb.e ], [ null, %.loopexit427 ] ; 8 uses
  br i1 %i.ax, label %bb.g, label %bb.bm

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !1073, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.l

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.dh = load ptr, ptr %0, align 8, !tbaa !1071, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !182 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !181
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %.lr.ph509, label %._crit_edge510

.lr.ph509:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.do = icmp sgt i32 %i.g, 0                    ; 3 uses
  %i.dp = icmp slt <2 x i32> %i.ao, zeroinitializer ; 2 uses
  %i.dq = add nuw i32 %i.ap, 1
  %i.dr = add i32 %i.as, 1                        ; 2 uses
  %i.ds = sub i32 0, %i.as
  %i.dt = icmp slt i32 %i.g, 1
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fm = sext i32 %i.as to i64
  %smax553 = call i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.fn = or disjoint i32 %smax553, 1             ; 2 uses
  %i.fo = zext i32 %i.g to i64                    ; 6 uses
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %smax568 = call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.fq = or disjoint i32 %smax568, 1
  %i.fr = sext i32 %i.ds to i64
  %wide.trip.count554 = zext nneg i32 %i.fn to i64
  %wide.trip.count560 = zext nneg i32 %i.fn to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.fm
  %wide.trip.count580 = zext nneg i32 %i.fq to i64
  %i.fs = extractelement <2 x i1> %i.dp, i64 1    ; 2 uses
  %i.ft = extractelement <2 x float> %i.ac, i64 1
  %i.fu = or disjoint i32 %smax568, 1
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = extractelement <2 x float> %i.af, i64 1
  %min.iters.check678 = icmp slt i32 %i.at, 4
  %i.fx = and i32 %smax553, 2147483644
  %n.vec681 = zext nneg i32 %i.fx to i64          ; 2 uses
  %i.fy = extractelement <2 x i1> %i.dp, i64 0
  %i.fz = extractelement <2 x float> %i.ac, i64 0
  %xtraiter = and i64 %i.fv, 7
  %i.ga = icmp slt i32 %i.aq, 7
  %unroll_iter = and i64 %i.fv, 2147483640
  %min.iters.check660 = icmp ult i32 %i.g, 4
  %n.vec663 = and i64 %i.fo, 2147483644           ; 3 uses
  %cmp.n675 = icmp eq i64 %n.vec663, %i.fo
  br label %bb.n

._crit_edge510:                                   ; preds = %._crit_edge507, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.gc, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge510
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge510, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !230
  %.not.i314 = icmp eq ptr %i.gg, null
  br i1 %.not.i314, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.dh

bb.l:                                             ; preds = %bb.g
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit342

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit340

bb.n:                                             ; preds = %.lr.ph509, %._crit_edge507
  %.0257508 = phi i32 [ %i.dj, %.lr.ph509 ], [ %i.hv, %._crit_edge507 ] ; 2 uses
  %i.gl = sitofp i32 %.0257508 to float
  %i.gm = fsub nnan float %i.gl, %i.u
  %i.gn = fadd nnan float %i.gm, 5.000000e-01
  %i.go = fmul float %i.aj, %i.gn
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.ft, float %i.m) ; 2 uses
  %i.gq = call noundef float @llvm.floor.f32(float %i.gp) ; 2 uses
  %i.gr = fptosi float %i.gq to i32               ; 2 uses
  br i1 %i.fs, label %.loopexit419, label %.lr.ph474

.lr.ph474:                                        ; preds = %bb.n
  %i.gs = fsub float %i.gp, %i.gq
  %i.gt = fadd float %i.gs, -5.000000e-01
  br label %bb.o

._crit_edge475:                                   ; preds = %bb.p
  %i.gu = fcmp oeq float %i.hk, 0.000000e+00
  br i1 %i.gu, label %.loopexit419, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %._crit_edge475
  br i1 %min.iters.check678, label %.lr.ph479.preheader692, label %vector.ph679

.lr.ph479.preheader692:                           ; preds = %vector.body684, %.lr.ph479.preheader
  %indvars.iv556.ph = phi i64 [ 0, %.lr.ph479.preheader ], [ %n.vec681, %vector.body684 ]
  br label %.lr.ph479

vector.ph679:                                     ; preds = %.lr.ph479.preheader
  %broadcast.splatinsert682 = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat683 = shufflevector <4 x float> %broadcast.splatinsert682, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body684

vector.body684:                                   ; preds = %vector.body684, %vector.ph679
  %index685 = phi i64 [ 0, %vector.ph679 ], [ %index.next687, %vector.body684 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index685 ; 2 uses
  %wide.load686 = load <4 x float>, ptr %i.gv, align 16, !tbaa !77
  %i.gw = fdiv <4 x float> %wide.load686, %broadcast.splat683
  store <4 x float> %i.gw, ptr %i.gv, align 16, !tbaa !77
  %index.next687 = add nuw i64 %index685, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next687, %n.vec681
  br i1 %i.gx, label %.lr.ph479.preheader692, label %vector.body684, !llvm.loop !1079

bb.o:                                             ; preds = %.lr.ph474, %bb.p
  %indvars.iv550 = phi i64 [ 0, %.lr.ph474 ], [ %indvars.iv.next551, %bb.p ] ; 3 uses
  %.0259472 = phi float [ 0.000000e+00, %.lr.ph474 ], [ %i.hk, %bb.p ]
  %i.gy = load ptr, ptr %i.v, align 8, !tbaa !1074, !nonnull !48, !align !386
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !49 ; 2 uses
  %i.ha = trunc i64 %indvars.iv550 to i32
  %i.hb = sub i32 %i.ha, %i.as
  %i.hc = sitofp i32 %i.hb to float
  %i.hd = fsub float %i.hc, %i.gt
  %i.he = fmul float %i.fw, %i.hd
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef float %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, float noundef %i.he)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv550
  store float %i.hi, ptr %i.hj, align 4, !tbaa !77
  %i.hk = fadd float %.0259472, %i.hi             ; 4 uses
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next551, %wide.trip.count554
  br i1 %exitcond555.not, label %._crit_edge475, label %bb.o, !llvm.loop !1080

bb.q:                                             ; preds = %bb.o
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.lr.ph479:                                        ; preds = %.lr.ph479.preheader692, %.lr.ph479
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %.lr.ph479 ], [ %indvars.iv556.ph, %.lr.ph479.preheader692 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv556 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L7resize_IftEEbRNS0_8ImageBufERKS2_PKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !189
  %i.r = sitofp i32 %i.q to float                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !190
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1100, !nonnull !48, !align !386
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !876
  %i.aa = fmul float %i.z, 5.000000e-01
  %i.ab = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>   ; 6 uses
  %i.ad = load <2 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>   ; 3 uses
  %i.af = fdiv <2 x float> %i.ae, %i.ac           ; 5 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = fdiv float 1.000000e+00, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fdiv float 1.000000e+00, %i.ai          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x float> %i.al, %i.af
  %i.an = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = extractelement <2 x i32> %i.ao, i64 0   ; 11 uses
  %i.aq = shl i32 %i.ap, 1                        ; 5 uses
  %i.ar = or disjoint i32 %i.aq, 1                ; 3 uses
  %i.as = extractelement <2 x i32> %i.ao, i64 1   ; 9 uses
  %i.at = shl i32 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.x) ; 2 uses
  %i.ay = or disjoint i32 %i.at, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = alloca i8, i64 %i.ba, align 16          ; 4 uses
  br i1 %i.ax, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %.loopexit423

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !180 ; 2 uses
  %i.be = load i32, ptr %1, align 8, !tbaa !71    ; 3 uses
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = mul nsw i32 %i.bf, %i.ar                ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i32 %i.bg, 0
  %i.bj = shl nsw i64 %i.bh, 2
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #34 ; 4 uses
  %i.bm = icmp sge i32 %i.be, %i.bd
  %.not309430 = icmp slt i32 %i.ap, 0
  %or.cond = select i1 %i.bm, i1 true, i1 %.not309430
  br i1 %or.cond, label %.loopexit423, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.bn = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.bn to i64   ; 2 uses
  %i.bo = extractelement <2 x float> %i.ac, i64 0
  %i.bp = extractelement <2 x float> %i.af, i64 0
  %min.iters.check = icmp slt i32 %i.aq, 4
  %i.bq = and i32 %smax, 2147483644
  %n.vec = zext nneg i32 %i.bq to i64             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit422
  %.0245436 = phi i32 [ %i.cz, %.loopexit422 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %i.br = load i32, ptr %1, align 8, !tbaa !71
  %i.bs = sub nsw i32 %.0245436, %i.br
  %i.bt = mul nsw i32 %i.bs, %i.ar
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu ; 3 uses
  %i.bw = sitofp i32 %.0245436 to float
  %i.bx = fsub nnan float %i.bw, %i.r
  %i.by = fadd nnan float %i.bx, 5.000000e-01
  %i.bz = fmul float %i.ah, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bo, float %i.j) ; 2 uses
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fadd float %i.cc, -5.000000e-01
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  %i.ce = fcmp oeq float %i.cu, 0.000000e+00
  br i1 %i.ce, label %.loopexit422, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %._crit_edge
  br i1 %min.iters.check, label %.lr.ph435.preheader688, label %vector.ph

.lr.ph435.preheader688:                           ; preds = %vector.body, %.lr.ph435.preheader
  %indvars.iv521.ph = phi i64 [ 0, %.lr.ph435.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph435

vector.ph:                                        ; preds = %.lr.ph435.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !77
  %i.cg = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.cg, ptr %i.cf, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.lr.ph435.preheader688, label %vector.body, !llvm.loop !1101

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.0248432 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cu, %bb.c ]
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1100, !nonnull !48, !align !386
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = sub i32 %i.ck, %i.ap
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = fsub float %i.cm, %i.cd
  %i.co = fmul float %i.bp, %i.cn
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef float %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.co)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store float %i.cs, ptr %i.ct, align 4, !tbaa !77
  %i.cu = fadd float %.0248432, %i.cs             ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1102

bb.d:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i379

.lr.ph435:                                        ; preds = %.lr.ph435.preheader688, %.lr.ph435
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %.lr.ph435 ], [ %indvars.iv521.ph, %.lr.ph435.preheader688 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv521 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !77
  %i.cy = fdiv float %i.cx, %i.cu
  store float %i.cy, ptr %i.cw, align 4, !tbaa !77
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count
  br i1 %exitcond525.not, label %.loopexit422, label %.lr.ph435, !llvm.loop !1103

.loopexit422:                                     ; preds = %.lr.ph435, %._crit_edge
  %i.cz = add nsw i32 %.0245436, 1                ; 2 uses
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !180
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph, label %.loopexit423, !llvm.loop !1104

.loopexit423:                                     ; preds = %.loopexit422, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, %bb.a
  %.sroa.0392.0 = phi ptr [ null, %bb.a ], [ %i.bl, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ %i.bl, %.loopexit422 ] ; 5 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit423
  %i.dc = sext i32 %i.g to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = alloca i8, i64 %i.dd, align 16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit423, %bb.e
  %i.df = phi ptr [ %i.de, %bb.e ], [ null, %.loopexit423 ] ; 8 uses
  br i1 %i.ax, label %bb.g, label %bb.bg

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !1099, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.l

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.dh = load ptr, ptr %0, align 8, !tbaa !1097, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !182 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !181
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %.lr.ph505, label %._crit_edge506

.lr.ph505:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.do = icmp sgt i32 %i.g, 0                    ; 3 uses
  %i.dp = icmp slt <2 x i32> %i.ao, zeroinitializer ; 2 uses
  %i.dq = add nuw i32 %i.ap, 1
  %i.dr = add i32 %i.as, 1                        ; 2 uses
  %i.ds = sub i32 0, %i.as
  %i.dt = icmp slt i32 %i.g, 1
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fm = sext i32 %i.as to i64
  %smax549 = call i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.fn = or disjoint i32 %smax549, 1             ; 2 uses
  %i.fo = zext i32 %i.g to i64                    ; 6 uses
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %smax564 = call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.fq = or disjoint i32 %smax564, 1
  %i.fr = sext i32 %i.ds to i64
  %wide.trip.count550 = zext nneg i32 %i.fn to i64
  %wide.trip.count556 = zext nneg i32 %i.fn to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.fm
  %wide.trip.count576 = zext nneg i32 %i.fq to i64
  %i.fs = extractelement <2 x i1> %i.dp, i64 1    ; 2 uses
  %i.ft = extractelement <2 x float> %i.ac, i64 1
  %i.fu = or disjoint i32 %smax564, 1
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = extractelement <2 x float> %i.af, i64 1
  %min.iters.check670 = icmp slt i32 %i.at, 4
  %i.fx = and i32 %smax549, 2147483644
  %n.vec673 = zext nneg i32 %i.fx to i64          ; 2 uses
  %i.fy = extractelement <2 x i1> %i.dp, i64 0
  %i.fz = extractelement <2 x float> %i.ac, i64 0
  %xtraiter = and i64 %i.fv, 7
  %i.ga = icmp slt i32 %i.aq, 7
  %unroll_iter = and i64 %i.fv, 2147483640
  %min.iters.check653 = icmp ult i32 %i.g, 8
  %n.vec656 = and i64 %i.fo, 2147483640           ; 3 uses
  %cmp.n667 = icmp eq i64 %n.vec656, %i.fo
  br label %bb.n

._crit_edge506:                                   ; preds = %._crit_edge503, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.gc, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge506
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge506, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !230
  %.not.i314 = icmp eq ptr %i.gg, null
  br i1 %.not.i314, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.cv

bb.l:                                             ; preds = %bb.g
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit342

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit340

bb.n:                                             ; preds = %.lr.ph505, %._crit_edge503
  %.0257504 = phi i32 [ %i.dj, %.lr.ph505 ], [ %i.hv, %._crit_edge503 ] ; 2 uses
  %i.gl = sitofp i32 %.0257504 to float
  %i.gm = fsub nnan float %i.gl, %i.u
  %i.gn = fadd nnan float %i.gm, 5.000000e-01
  %i.go = fmul float %i.aj, %i.gn
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.ft, float %i.m) ; 2 uses
  %i.gq = call noundef float @llvm.floor.f32(float %i.gp) ; 2 uses
  %i.gr = fptosi float %i.gq to i32               ; 2 uses
  br i1 %i.fs, label %.loopexit415, label %.lr.ph470

.lr.ph470:                                        ; preds = %bb.n
  %i.gs = fsub float %i.gp, %i.gq
  %i.gt = fadd float %i.gs, -5.000000e-01
  br label %bb.o

._crit_edge471:                                   ; preds = %bb.p
  %i.gu = fcmp oeq float %i.hk, 0.000000e+00
  br i1 %i.gu, label %.loopexit415, label %.lr.ph475.preheader

.lr.ph475.preheader:                              ; preds = %._crit_edge471
  br i1 %min.iters.check670, label %.lr.ph475.preheader684, label %vector.ph671

.lr.ph475.preheader684:                           ; preds = %vector.body676, %.lr.ph475.preheader
  %indvars.iv552.ph = phi i64 [ 0, %.lr.ph475.preheader ], [ %n.vec673, %vector.body676 ]
  br label %.lr.ph475

vector.ph671:                                     ; preds = %.lr.ph475.preheader
  %broadcast.splatinsert674 = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat675 = shufflevector <4 x float> %broadcast.splatinsert674, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body676

vector.body676:                                   ; preds = %vector.body676, %vector.ph671
  %index677 = phi i64 [ 0, %vector.ph671 ], [ %index.next679, %vector.body676 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index677 ; 2 uses
  %wide.load678 = load <4 x float>, ptr %i.gv, align 16, !tbaa !77
  %i.gw = fdiv <4 x float> %wide.load678, %broadcast.splat675
  store <4 x float> %i.gw, ptr %i.gv, align 16, !tbaa !77
  %index.next679 = add nuw i64 %index677, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next679, %n.vec673
  br i1 %i.gx, label %.lr.ph475.preheader684, label %vector.body676, !llvm.loop !1105

bb.o:                                             ; preds = %.lr.ph470, %bb.p
  %indvars.iv546 = phi i64 [ 0, %.lr.ph470 ], [ %indvars.iv.next547, %bb.p ] ; 3 uses
  %.0259468 = phi float [ 0.000000e+00, %.lr.ph470 ], [ %i.hk, %bb.p ]
  %i.gy = load ptr, ptr %i.v, align 8, !tbaa !1100, !nonnull !48, !align !386
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !49 ; 2 uses
  %i.ha = trunc i64 %indvars.iv546 to i32
  %i.hb = sub i32 %i.ha, %i.as
  %i.hc = sitofp i32 %i.hb to float
  %i.hd = fsub float %i.hc, %i.gt
  %i.he = fmul float %i.fw, %i.hd
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef float %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, float noundef %i.he)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv546
  store float %i.hi, ptr %i.hj, align 4, !tbaa !77
  %i.hk = fadd float %.0259468, %i.hi             ; 4 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next547, %wide.trip.count550
  br i1 %exitcond551.not, label %._crit_edge471, label %bb.o, !llvm.loop !1106

bb.q:                                             ; preds = %bb.o
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph475:                                        ; preds = %.lr.ph475.preheader684, %.lr.ph475
  %indvars.iv552 = phi i64 [ %indvars.iv.next553, %.lr.ph475 ], [ %indvars.iv552.ph, %.lr.ph475.preheader684 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv552 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZZN11OpenImageIO4v3_1L7resize_IhhEEbRNS0_8ImageBufERKS2_PKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !189
  %i.r = sitofp i32 %i.q to float                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !190
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1126, !nonnull !48, !align !386
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !876
  %i.aa = fmul float %i.z, 5.000000e-01
  %i.ab = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>   ; 6 uses
  %i.ad = load <2 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>   ; 3 uses
  %i.af = fdiv <2 x float> %i.ae, %i.ac           ; 5 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = fdiv float 1.000000e+00, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fdiv float 1.000000e+00, %i.ai          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x float> %i.al, %i.af
  %i.an = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = extractelement <2 x i32> %i.ao, i64 0   ; 11 uses
  %i.aq = shl i32 %i.ap, 1                        ; 5 uses
  %i.ar = or disjoint i32 %i.aq, 1                ; 3 uses
  %i.as = extractelement <2 x i32> %i.ao, i64 1   ; 9 uses
  %i.at = shl i32 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.x) ; 2 uses
  %i.ay = or disjoint i32 %i.at, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = alloca i8, i64 %i.ba, align 16          ; 4 uses
  br i1 %i.ax, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %.loopexit426

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !180 ; 2 uses
  %i.be = load i32, ptr %1, align 8, !tbaa !71    ; 3 uses
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = mul nsw i32 %i.bf, %i.ar                ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i32 %i.bg, 0
  %i.bj = shl nsw i64 %i.bh, 2
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #34 ; 4 uses
  %i.bm = icmp sge i32 %i.be, %i.bd
  %.not309433 = icmp slt i32 %i.ap, 0
  %or.cond = select i1 %i.bm, i1 true, i1 %.not309433
  br i1 %or.cond, label %.loopexit426, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.bn = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.bn to i64   ; 2 uses
  %i.bo = extractelement <2 x float> %i.ac, i64 0
  %i.bp = extractelement <2 x float> %i.af, i64 0
  %min.iters.check = icmp slt i32 %i.aq, 4
  %i.bq = and i32 %smax, 2147483644
  %n.vec = zext nneg i32 %i.bq to i64             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit425
  %.0245439 = phi i32 [ %i.cz, %.loopexit425 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %i.br = load i32, ptr %1, align 8, !tbaa !71
  %i.bs = sub nsw i32 %.0245439, %i.br
  %i.bt = mul nsw i32 %i.bs, %i.ar
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu ; 3 uses
  %i.bw = sitofp i32 %.0245439 to float
  %i.bx = fsub nnan float %i.bw, %i.r
  %i.by = fadd nnan float %i.bx, 5.000000e-01
  %i.bz = fmul float %i.ah, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bo, float %i.j) ; 2 uses
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fadd float %i.cc, -5.000000e-01
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  %i.ce = fcmp oeq float %i.cu, 0.000000e+00
  br i1 %i.ce, label %.loopexit425, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %._crit_edge
  br i1 %min.iters.check, label %.lr.ph438.preheader691, label %vector.ph

.lr.ph438.preheader691:                           ; preds = %vector.body, %.lr.ph438.preheader
  %indvars.iv524.ph = phi i64 [ 0, %.lr.ph438.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph438

vector.ph:                                        ; preds = %.lr.ph438.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !77
  %i.cg = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.cg, ptr %i.cf, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.lr.ph438.preheader691, label %vector.body, !llvm.loop !1127

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.0248435 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cu, %bb.c ]
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1126, !nonnull !48, !align !386
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = sub i32 %i.ck, %i.ap
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = fsub float %i.cm, %i.cd
  %i.co = fmul float %i.bp, %i.cn
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef float %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.co)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store float %i.cs, ptr %i.ct, align 4, !tbaa !77
  %i.cu = fadd float %.0248435, %i.cs             ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1128

bb.d:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i382

.lr.ph438:                                        ; preds = %.lr.ph438.preheader691, %.lr.ph438
  %indvars.iv524 = phi i64 [ %indvars.iv.next525, %.lr.ph438 ], [ %indvars.iv524.ph, %.lr.ph438.preheader691 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv524 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !77
  %i.cy = fdiv float %i.cx, %i.cu
  store float %i.cy, ptr %i.cw, align 4, !tbaa !77
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count
  br i1 %exitcond528.not, label %.loopexit425, label %.lr.ph438, !llvm.loop !1129

.loopexit425:                                     ; preds = %.lr.ph438, %._crit_edge
  %i.cz = add nsw i32 %.0245439, 1                ; 2 uses
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !180
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph, label %.loopexit426, !llvm.loop !1130

.loopexit426:                                     ; preds = %.loopexit425, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, %bb.a
  %.sroa.0395.0 = phi ptr [ null, %bb.a ], [ %i.bl, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ %i.bl, %.loopexit425 ] ; 5 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit426
  %i.dc = sext i32 %i.g to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = alloca i8, i64 %i.dd, align 16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit426, %bb.e
  %i.df = phi ptr [ %i.de, %bb.e ], [ null, %.loopexit426 ] ; 8 uses
  br i1 %i.ax, label %bb.g, label %bb.bg

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !1125, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.l

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.dh = load ptr, ptr %0, align 8, !tbaa !1123, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !182 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !181
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %.lr.ph508, label %._crit_edge509

.lr.ph508:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.do = icmp sgt i32 %i.g, 0                    ; 3 uses
  %i.dp = icmp slt <2 x i32> %i.ao, zeroinitializer ; 2 uses
  %i.dq = add nuw i32 %i.ap, 1
  %i.dr = add i32 %i.as, 1                        ; 2 uses
  %i.ds = sub i32 0, %i.as
  %i.dt = icmp slt i32 %i.g, 1
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fm = sext i32 %i.as to i64
  %smax552 = call i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.fn = or disjoint i32 %smax552, 1             ; 2 uses
  %i.fo = zext i32 %i.g to i64                    ; 6 uses
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %smax567 = call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.fq = or disjoint i32 %smax567, 1
  %i.fr = sext i32 %i.ds to i64
  %wide.trip.count553 = zext nneg i32 %i.fn to i64
  %wide.trip.count559 = zext nneg i32 %i.fn to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.fm
  %wide.trip.count579 = zext nneg i32 %i.fq to i64
  %i.fs = extractelement <2 x i1> %i.dp, i64 1    ; 2 uses
  %i.ft = extractelement <2 x float> %i.ac, i64 1
  %i.fu = or disjoint i32 %smax567, 1
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = extractelement <2 x float> %i.af, i64 1
  %min.iters.check673 = icmp slt i32 %i.at, 4
  %i.fx = and i32 %smax552, 2147483644
  %n.vec676 = zext nneg i32 %i.fx to i64          ; 2 uses
  %i.fy = extractelement <2 x i1> %i.dp, i64 0
  %i.fz = extractelement <2 x float> %i.ac, i64 0
  %xtraiter = and i64 %i.fv, 7
  %i.ga = icmp slt i32 %i.aq, 7
  %unroll_iter = and i64 %i.fv, 2147483640
  %min.iters.check656 = icmp ult i32 %i.g, 8
  %n.vec659 = and i64 %i.fo, 2147483640           ; 3 uses
  %cmp.n670 = icmp eq i64 %n.vec659, %i.fo
  br label %bb.n

._crit_edge509:                                   ; preds = %._crit_edge506, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.gc, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge509
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge509, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !230
  %.not.i314 = icmp eq ptr %i.gg, null
  br i1 %.not.i314, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.cv

bb.l:                                             ; preds = %bb.g
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit342

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit340

bb.n:                                             ; preds = %.lr.ph508, %._crit_edge506
  %.0257507 = phi i32 [ %i.dj, %.lr.ph508 ], [ %i.hv, %._crit_edge506 ] ; 2 uses
  %i.gl = sitofp i32 %.0257507 to float
  %i.gm = fsub nnan float %i.gl, %i.u
  %i.gn = fadd nnan float %i.gm, 5.000000e-01
  %i.go = fmul float %i.aj, %i.gn
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.ft, float %i.m) ; 2 uses
  %i.gq = call noundef float @llvm.floor.f32(float %i.gp) ; 2 uses
  %i.gr = fptosi float %i.gq to i32               ; 2 uses
  br i1 %i.fs, label %.loopexit418, label %.lr.ph473

.lr.ph473:                                        ; preds = %bb.n
  %i.gs = fsub float %i.gp, %i.gq
  %i.gt = fadd float %i.gs, -5.000000e-01
  br label %bb.o

._crit_edge474:                                   ; preds = %bb.p
  %i.gu = fcmp oeq float %i.hk, 0.000000e+00
  br i1 %i.gu, label %.loopexit418, label %.lr.ph478.preheader

.lr.ph478.preheader:                              ; preds = %._crit_edge474
  br i1 %min.iters.check673, label %.lr.ph478.preheader687, label %vector.ph674

.lr.ph478.preheader687:                           ; preds = %vector.body679, %.lr.ph478.preheader
  %indvars.iv555.ph = phi i64 [ 0, %.lr.ph478.preheader ], [ %n.vec676, %vector.body679 ]
  br label %.lr.ph478

vector.ph674:                                     ; preds = %.lr.ph478.preheader
  %broadcast.splatinsert677 = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat678 = shufflevector <4 x float> %broadcast.splatinsert677, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body679

vector.body679:                                   ; preds = %vector.body679, %vector.ph674
  %index680 = phi i64 [ 0, %vector.ph674 ], [ %index.next682, %vector.body679 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index680 ; 2 uses
  %wide.load681 = load <4 x float>, ptr %i.gv, align 16, !tbaa !77
  %i.gw = fdiv <4 x float> %wide.load681, %broadcast.splat678
  store <4 x float> %i.gw, ptr %i.gv, align 16, !tbaa !77
  %index.next682 = add nuw i64 %index680, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next682, %n.vec676
  br i1 %i.gx, label %.lr.ph478.preheader687, label %vector.body679, !llvm.loop !1131

bb.o:                                             ; preds = %.lr.ph473, %bb.p
  %indvars.iv549 = phi i64 [ 0, %.lr.ph473 ], [ %indvars.iv.next550, %bb.p ] ; 3 uses
  %.0259471 = phi float [ 0.000000e+00, %.lr.ph473 ], [ %i.hk, %bb.p ]
  %i.gy = load ptr, ptr %i.v, align 8, !tbaa !1126, !nonnull !48, !align !386
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !49 ; 2 uses
  %i.ha = trunc i64 %indvars.iv549 to i32
  %i.hb = sub i32 %i.ha, %i.as
  %i.hc = sitofp i32 %i.hb to float
  %i.hd = fsub float %i.hc, %i.gt
  %i.he = fmul float %i.fw, %i.hd
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef float %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, float noundef %i.he)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv549
  store float %i.hi, ptr %i.hj, align 4, !tbaa !77
  %i.hk = fadd float %.0259471, %i.hi             ; 4 uses
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1 ; 2 uses
  %exitcond554.not = icmp eq i64 %indvars.iv.next550, %wide.trip.count553
  br i1 %exitcond554.not, label %._crit_edge474, label %bb.o, !llvm.loop !1132

bb.q:                                             ; preds = %bb.o
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph478:                                        ; preds = %.lr.ph478.preheader687, %.lr.ph478
  %indvars.iv555 = phi i64 [ %indvars.iv.next556, %.lr.ph478 ], [ %indvars.iv555.ph, %.lr.ph478.preheader687 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv555 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZZN11OpenImageIO4v3_1L7resize_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_PKNS0_8Filter2DENS0_3ROIEiENKUlSB_E_clESB_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !189
  %i.r = sitofp i32 %i.q to float                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !190
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1152, !nonnull !48, !align !386
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !876
  %i.aa = fmul float %i.z, 5.000000e-01
  %i.ab = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>   ; 6 uses
  %i.ad = load <2 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>   ; 3 uses
  %i.af = fdiv <2 x float> %i.ae, %i.ac           ; 5 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = fdiv float 1.000000e+00, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fdiv float 1.000000e+00, %i.ai          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x float> %i.al, %i.af
  %i.an = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = extractelement <2 x i32> %i.ao, i64 0   ; 11 uses
  %i.aq = shl i32 %i.ap, 1                        ; 5 uses
  %i.ar = or disjoint i32 %i.aq, 1                ; 3 uses
  %i.as = extractelement <2 x i32> %i.ao, i64 1   ; 9 uses
  %i.at = shl i32 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.x) ; 2 uses
  %i.ay = or disjoint i32 %i.at, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = alloca i8, i64 %i.ba, align 16          ; 4 uses
  br i1 %i.ax, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %.loopexit441

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !180 ; 2 uses
  %i.be = load i32, ptr %1, align 8, !tbaa !71    ; 3 uses
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = mul nsw i32 %i.bf, %i.ar                ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i32 %i.bg, 0
  %i.bj = shl nsw i64 %i.bh, 2
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #34 ; 4 uses
  %i.bm = icmp sge i32 %i.be, %i.bd
  %.not309448 = icmp slt i32 %i.ap, 0
  %or.cond = select i1 %i.bm, i1 true, i1 %.not309448
  br i1 %or.cond, label %.loopexit441, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.bn = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.bn to i64   ; 2 uses
  %i.bo = extractelement <2 x float> %i.ac, i64 0
  %i.bp = extractelement <2 x float> %i.af, i64 0
  %min.iters.check = icmp slt i32 %i.aq, 4
  %i.bq = and i32 %smax, 2147483644
  %n.vec = zext nneg i32 %i.bq to i64             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit440
  %.0245454 = phi i32 [ %i.cz, %.loopexit440 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %i.br = load i32, ptr %1, align 8, !tbaa !71
  %i.bs = sub nsw i32 %.0245454, %i.br
  %i.bt = mul nsw i32 %i.bs, %i.ar
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu ; 3 uses
  %i.bw = sitofp i32 %.0245454 to float
  %i.bx = fsub nnan float %i.bw, %i.r
  %i.by = fadd nnan float %i.bx, 5.000000e-01
  %i.bz = fmul float %i.ah, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bo, float %i.j) ; 2 uses
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fadd float %i.cc, -5.000000e-01
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  %i.ce = fcmp oeq float %i.cu, 0.000000e+00
  br i1 %i.ce, label %.loopexit440, label %.lr.ph453.preheader

.lr.ph453.preheader:                              ; preds = %._crit_edge
  br i1 %min.iters.check, label %.lr.ph453.preheader715, label %vector.ph

.lr.ph453.preheader715:                           ; preds = %vector.body, %.lr.ph453.preheader
  %indvars.iv539.ph = phi i64 [ 0, %.lr.ph453.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph453

vector.ph:                                        ; preds = %.lr.ph453.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !77
  %i.cg = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.cg, ptr %i.cf, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.lr.ph453.preheader715, label %vector.body, !llvm.loop !1153

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.0248450 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cu, %bb.c ]
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1152, !nonnull !48, !align !386
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = sub i32 %i.ck, %i.ap
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = fsub float %i.cm, %i.cd
  %i.co = fmul float %i.bp, %i.cn
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef float %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.co)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store float %i.cs, ptr %i.ct, align 4, !tbaa !77
  %i.cu = fadd float %.0248450, %i.cs             ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1154

bb.d:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i379

.lr.ph453:                                        ; preds = %.lr.ph453.preheader715, %.lr.ph453
  %indvars.iv539 = phi i64 [ %indvars.iv.next540, %.lr.ph453 ], [ %indvars.iv539.ph, %.lr.ph453.preheader715 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv539 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !77
  %i.cy = fdiv float %i.cx, %i.cu
  store float %i.cy, ptr %i.cw, align 4, !tbaa !77
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next540, %wide.trip.count
  br i1 %exitcond543.not, label %.loopexit440, label %.lr.ph453, !llvm.loop !1155

.loopexit440:                                     ; preds = %.lr.ph453, %._crit_edge
  %i.cz = add nsw i32 %.0245454, 1                ; 2 uses
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !180
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph, label %.loopexit441, !llvm.loop !1156

.loopexit441:                                     ; preds = %.loopexit440, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, %bb.a
  %.sroa.0410.0 = phi ptr [ null, %bb.a ], [ %i.bl, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ %i.bl, %.loopexit440 ] ; 5 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit441
  %i.dc = sext i32 %i.g to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = alloca i8, i64 %i.dd, align 16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit441, %bb.e
  %i.df = phi ptr [ %i.de, %bb.e ], [ null, %.loopexit441 ] ; 8 uses
  br i1 %i.ax, label %bb.g, label %bb.bw

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !1151, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.l

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.dh = load ptr, ptr %0, align 8, !tbaa !1149, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !182 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !181
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %.lr.ph523, label %._crit_edge524

.lr.ph523:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.do = icmp sgt i32 %i.g, 0                    ; 3 uses
  %i.dp = icmp slt <2 x i32> %i.ao, zeroinitializer ; 2 uses
  %i.dq = add nuw i32 %i.ap, 1
  %i.dr = add i32 %i.as, 1                        ; 2 uses
  %i.ds = sub i32 0, %i.as
  %i.dt = icmp slt i32 %i.g, 1
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fm = sext i32 %i.as to i64
  %smax567 = call i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.fn = or disjoint i32 %smax567, 1             ; 2 uses
  %i.fo = zext i32 %i.g to i64                    ; 6 uses
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %smax582 = call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.fq = or disjoint i32 %smax582, 1
  %i.fr = sext i32 %i.ds to i64
  %wide.trip.count568 = zext nneg i32 %i.fn to i64
  %wide.trip.count574 = zext nneg i32 %i.fn to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.fm
  %wide.trip.count594 = zext nneg i32 %i.fq to i64
  %i.fs = extractelement <2 x i1> %i.dp, i64 1    ; 2 uses
  %i.ft = extractelement <2 x float> %i.ac, i64 1
  %i.fu = or disjoint i32 %smax582, 1
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = extractelement <2 x float> %i.af, i64 1
  %min.iters.check697 = icmp slt i32 %i.at, 4
  %i.fx = and i32 %smax567, 2147483644
  %n.vec700 = zext nneg i32 %i.fx to i64          ; 2 uses
  %i.fy = extractelement <2 x i1> %i.dp, i64 0
  %i.fz = extractelement <2 x float> %i.ac, i64 0
  %xtraiter = and i64 %i.fv, 7
  %i.ga = icmp slt i32 %i.aq, 7
  %unroll_iter = and i64 %i.fv, 2147483640
  %min.iters.check679 = icmp ult i32 %i.g, 4
  %n.vec682 = and i64 %i.fo, 2147483644           ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec682, %i.fo
  br label %bb.n

._crit_edge524:                                   ; preds = %._crit_edge521, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.gc, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge524
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge524, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !230
  %.not.i314 = icmp eq ptr %i.gg, null
  br i1 %.not.i314, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.eb

bb.l:                                             ; preds = %bb.g
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit340

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit338

bb.n:                                             ; preds = %.lr.ph523, %._crit_edge521
  %.0257522 = phi i32 [ %i.dj, %.lr.ph523 ], [ %i.hv, %._crit_edge521 ] ; 2 uses
  %i.gl = sitofp i32 %.0257522 to float
  %i.gm = fsub nnan float %i.gl, %i.u
  %i.gn = fadd nnan float %i.gm, 5.000000e-01
  %i.go = fmul float %i.aj, %i.gn
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.ft, float %i.m) ; 2 uses
  %i.gq = call noundef float @llvm.floor.f32(float %i.gp) ; 2 uses
  %i.gr = fptosi float %i.gq to i32               ; 2 uses
  br i1 %i.fs, label %.loopexit433, label %.lr.ph488

.lr.ph488:                                        ; preds = %bb.n
  %i.gs = fsub float %i.gp, %i.gq
  %i.gt = fadd float %i.gs, -5.000000e-01
  br label %bb.o

._crit_edge489:                                   ; preds = %bb.p
  %i.gu = fcmp oeq float %i.hk, 0.000000e+00
  br i1 %i.gu, label %.loopexit433, label %.lr.ph493.preheader

.lr.ph493.preheader:                              ; preds = %._crit_edge489
  br i1 %min.iters.check697, label %.lr.ph493.preheader711, label %vector.ph698

.lr.ph493.preheader711:                           ; preds = %vector.body703, %.lr.ph493.preheader
  %indvars.iv570.ph = phi i64 [ 0, %.lr.ph493.preheader ], [ %n.vec700, %vector.body703 ]
  br label %.lr.ph493

vector.ph698:                                     ; preds = %.lr.ph493.preheader
  %broadcast.splatinsert701 = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat702 = shufflevector <4 x float> %broadcast.splatinsert701, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body703

vector.body703:                                   ; preds = %vector.body703, %vector.ph698
  %index704 = phi i64 [ 0, %vector.ph698 ], [ %index.next706, %vector.body703 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index704 ; 2 uses
  %wide.load705 = load <4 x float>, ptr %i.gv, align 16, !tbaa !77
  %i.gw = fdiv <4 x float> %wide.load705, %broadcast.splat702
  store <4 x float> %i.gw, ptr %i.gv, align 16, !tbaa !77
  %index.next706 = add nuw i64 %index704, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next706, %n.vec700
  br i1 %i.gx, label %.lr.ph493.preheader711, label %vector.body703, !llvm.loop !1157

bb.o:                                             ; preds = %.lr.ph488, %bb.p
  %indvars.iv564 = phi i64 [ 0, %.lr.ph488 ], [ %indvars.iv.next565, %bb.p ] ; 3 uses
  %.0259486 = phi float [ 0.000000e+00, %.lr.ph488 ], [ %i.hk, %bb.p ]
  %i.gy = load ptr, ptr %i.v, align 8, !tbaa !1152, !nonnull !48, !align !386
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !49 ; 2 uses
  %i.ha = trunc i64 %indvars.iv564 to i32
  %i.hb = sub i32 %i.ha, %i.as
  %i.hc = sitofp i32 %i.hb to float
  %i.hd = fsub float %i.hc, %i.gt
  %i.he = fmul float %i.fw, %i.hd
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef float %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, float noundef %i.he)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv564
  store float %i.hi, ptr %i.hj, align 4, !tbaa !77
  %i.hk = fadd float %.0259486, %i.hi             ; 4 uses
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next565, %wide.trip.count568
  br i1 %exitcond569.not, label %._crit_edge489, label %bb.o, !llvm.loop !1158

bb.q:                                             ; preds = %bb.o
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.lr.ph493:                                        ; preds = %.lr.ph493.preheader711, %.lr.ph493
  %indvars.iv570 = phi i64 [ %indvars.iv.next571, %.lr.ph493 ], [ %indvars.iv570.ph, %.lr.ph493.preheader711 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv570 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZZN11OpenImageIO4v3_1L7resize_IttEEbRNS0_8ImageBufERKS2_PKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !189
  %i.r = sitofp i32 %i.q to float                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !190
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1178, !nonnull !48, !align !386
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !876
  %i.aa = fmul float %i.z, 5.000000e-01
  %i.ab = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>   ; 6 uses
  %i.ad = load <2 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>   ; 3 uses
  %i.af = fdiv <2 x float> %i.ae, %i.ac           ; 5 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = fdiv float 1.000000e+00, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fdiv float 1.000000e+00, %i.ai          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x float> %i.al, %i.af
  %i.an = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = extractelement <2 x i32> %i.ao, i64 0   ; 11 uses
  %i.aq = shl i32 %i.ap, 1                        ; 5 uses
  %i.ar = or disjoint i32 %i.aq, 1                ; 3 uses
  %i.as = extractelement <2 x i32> %i.ao, i64 1   ; 9 uses
  %i.at = shl i32 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.x) ; 2 uses
  %i.ay = or disjoint i32 %i.at, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = alloca i8, i64 %i.ba, align 16          ; 4 uses
  br i1 %i.ax, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %.loopexit426

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !180 ; 2 uses
  %i.be = load i32, ptr %1, align 8, !tbaa !71    ; 3 uses
  %i.bf = sub nsw i32 %i.bd, %i.be
  %i.bg = mul nsw i32 %i.bf, %i.ar                ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i32 %i.bg, 0
  %i.bj = shl nsw i64 %i.bh, 2
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #34 ; 4 uses
  %i.bm = icmp sge i32 %i.be, %i.bd
  %.not309433 = icmp slt i32 %i.ap, 0
  %or.cond = select i1 %i.bm, i1 true, i1 %.not309433
  br i1 %or.cond, label %.loopexit426, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.bn = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.bn to i64   ; 2 uses
  %i.bo = extractelement <2 x float> %i.ac, i64 0
  %i.bp = extractelement <2 x float> %i.af, i64 0
  %min.iters.check = icmp slt i32 %i.aq, 4
  %i.bq = and i32 %smax, 2147483644
  %n.vec = zext nneg i32 %i.bq to i64             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit425
  %.0245439 = phi i32 [ %i.cz, %.loopexit425 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %i.br = load i32, ptr %1, align 8, !tbaa !71
  %i.bs = sub nsw i32 %.0245439, %i.br
  %i.bt = mul nsw i32 %i.bs, %i.ar
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu ; 3 uses
  %i.bw = sitofp i32 %.0245439 to float
  %i.bx = fsub nnan float %i.bw, %i.r
  %i.by = fadd nnan float %i.bx, 5.000000e-01
  %i.bz = fmul float %i.ah, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bo, float %i.j) ; 2 uses
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = fsub float %i.ca, %i.cb
  %i.cd = fadd float %i.cc, -5.000000e-01
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  %i.ce = fcmp oeq float %i.cu, 0.000000e+00
  br i1 %i.ce, label %.loopexit425, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %._crit_edge
  br i1 %min.iters.check, label %.lr.ph438.preheader691, label %vector.ph

.lr.ph438.preheader691:                           ; preds = %vector.body, %.lr.ph438.preheader
  %indvars.iv524.ph = phi i64 [ 0, %.lr.ph438.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph438

vector.ph:                                        ; preds = %.lr.ph438.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !77
  %i.cg = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.cg, ptr %i.cf, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.lr.ph438.preheader691, label %vector.body, !llvm.loop !1179

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.0248435 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cu, %bb.c ]
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1178, !nonnull !48, !align !386
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = sub i32 %i.ck, %i.ap
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = fsub float %i.cm, %i.cd
  %i.co = fmul float %i.bp, %i.cn
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef float %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.co)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store float %i.cs, ptr %i.ct, align 4, !tbaa !77
  %i.cu = fadd float %.0248435, %i.cs             ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1180

bb.d:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i382

.lr.ph438:                                        ; preds = %.lr.ph438.preheader691, %.lr.ph438
  %indvars.iv524 = phi i64 [ %indvars.iv.next525, %.lr.ph438 ], [ %indvars.iv524.ph, %.lr.ph438.preheader691 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv524 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !77
  %i.cy = fdiv float %i.cx, %i.cu
  store float %i.cy, ptr %i.cw, align 4, !tbaa !77
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count
  br i1 %exitcond528.not, label %.loopexit425, label %.lr.ph438, !llvm.loop !1181

.loopexit425:                                     ; preds = %.lr.ph438, %._crit_edge
  %i.cz = add nsw i32 %.0245439, 1                ; 2 uses
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !180
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph, label %.loopexit426, !llvm.loop !1182

.loopexit426:                                     ; preds = %.loopexit425, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, %bb.a
  %.sroa.0395.0 = phi ptr [ null, %bb.a ], [ %i.bl, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ %i.bl, %.loopexit425 ] ; 5 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit426
  %i.dc = sext i32 %i.g to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = alloca i8, i64 %i.dd, align 16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit426, %bb.e
  %i.df = phi ptr [ %i.de, %bb.e ], [ null, %.loopexit426 ] ; 8 uses
  br i1 %i.ax, label %bb.g, label %bb.bg

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !1177, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.l

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.dh = load ptr, ptr %0, align 8, !tbaa !1175, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !182 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !181
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %.lr.ph508, label %._crit_edge509

.lr.ph508:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.do = icmp sgt i32 %i.g, 0                    ; 3 uses
  %i.dp = icmp slt <2 x i32> %i.ao, zeroinitializer ; 2 uses
  %i.dq = add nuw i32 %i.ap, 1
  %i.dr = add i32 %i.as, 1                        ; 2 uses
  %i.ds = sub i32 0, %i.as
  %i.dt = icmp slt i32 %i.g, 1
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fm = sext i32 %i.as to i64
  %smax552 = call i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.fn = or disjoint i32 %smax552, 1             ; 2 uses
  %i.fo = zext i32 %i.g to i64                    ; 6 uses
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %smax567 = call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 2 uses
  %i.fq = or disjoint i32 %smax567, 1
  %i.fr = sext i32 %i.ds to i64
  %wide.trip.count553 = zext nneg i32 %i.fn to i64
  %wide.trip.count559 = zext nneg i32 %i.fn to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.fm
  %wide.trip.count579 = zext nneg i32 %i.fq to i64
  %i.fs = extractelement <2 x i1> %i.dp, i64 1    ; 2 uses
  %i.ft = extractelement <2 x float> %i.ac, i64 1
  %i.fu = or disjoint i32 %smax567, 1
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = extractelement <2 x float> %i.af, i64 1
  %min.iters.check673 = icmp slt i32 %i.at, 4
  %i.fx = and i32 %smax552, 2147483644
  %n.vec676 = zext nneg i32 %i.fx to i64          ; 2 uses
  %i.fy = extractelement <2 x i1> %i.dp, i64 0
  %i.fz = extractelement <2 x float> %i.ac, i64 0
  %xtraiter = and i64 %i.fv, 7
  %i.ga = icmp slt i32 %i.aq, 7
  %unroll_iter = and i64 %i.fv, 2147483640
  %min.iters.check656 = icmp ult i32 %i.g, 8
  %n.vec659 = and i64 %i.fo, 2147483640           ; 3 uses
  %cmp.n670 = icmp eq i64 %n.vec659, %i.fo
  br label %bb.n

._crit_edge509:                                   ; preds = %._crit_edge506, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.gc, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge509
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge509, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !230
  %.not.i314 = icmp eq ptr %i.gg, null
  br i1 %.not.i314, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit315: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.cv

bb.l:                                             ; preds = %bb.g
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit342

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit340

bb.n:                                             ; preds = %.lr.ph508, %._crit_edge506
  %.0257507 = phi i32 [ %i.dj, %.lr.ph508 ], [ %i.hv, %._crit_edge506 ] ; 2 uses
  %i.gl = sitofp i32 %.0257507 to float
  %i.gm = fsub nnan float %i.gl, %i.u
  %i.gn = fadd nnan float %i.gm, 5.000000e-01
  %i.go = fmul float %i.aj, %i.gn
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.ft, float %i.m) ; 2 uses
  %i.gq = call noundef float @llvm.floor.f32(float %i.gp) ; 2 uses
  %i.gr = fptosi float %i.gq to i32               ; 2 uses
  br i1 %i.fs, label %.loopexit418, label %.lr.ph473

.lr.ph473:                                        ; preds = %bb.n
  %i.gs = fsub float %i.gp, %i.gq
  %i.gt = fadd float %i.gs, -5.000000e-01
  br label %bb.o

._crit_edge474:                                   ; preds = %bb.p
  %i.gu = fcmp oeq float %i.hk, 0.000000e+00
  br i1 %i.gu, label %.loopexit418, label %.lr.ph478.preheader

.lr.ph478.preheader:                              ; preds = %._crit_edge474
  br i1 %min.iters.check673, label %.lr.ph478.preheader687, label %vector.ph674

.lr.ph478.preheader687:                           ; preds = %vector.body679, %.lr.ph478.preheader
  %indvars.iv555.ph = phi i64 [ 0, %.lr.ph478.preheader ], [ %n.vec676, %vector.body679 ]
  br label %.lr.ph478

vector.ph674:                                     ; preds = %.lr.ph478.preheader
  %broadcast.splatinsert677 = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat678 = shufflevector <4 x float> %broadcast.splatinsert677, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body679

vector.body679:                                   ; preds = %vector.body679, %vector.ph674
  %index680 = phi i64 [ 0, %vector.ph674 ], [ %index.next682, %vector.body679 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index680 ; 2 uses
  %wide.load681 = load <4 x float>, ptr %i.gv, align 16, !tbaa !77
  %i.gw = fdiv <4 x float> %wide.load681, %broadcast.splat678
  store <4 x float> %i.gw, ptr %i.gv, align 16, !tbaa !77
  %index.next682 = add nuw i64 %index680, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next682, %n.vec676
  br i1 %i.gx, label %.lr.ph478.preheader687, label %vector.body679, !llvm.loop !1183

bb.o:                                             ; preds = %.lr.ph473, %bb.p
  %indvars.iv549 = phi i64 [ 0, %.lr.ph473 ], [ %indvars.iv.next550, %bb.p ] ; 3 uses
  %.0259471 = phi float [ 0.000000e+00, %.lr.ph473 ], [ %i.hk, %bb.p ]
  %i.gy = load ptr, ptr %i.v, align 8, !tbaa !1178, !nonnull !48, !align !386
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !49 ; 2 uses
  %i.ha = trunc i64 %indvars.iv549 to i32
  %i.hb = sub i32 %i.ha, %i.as
  %i.hc = sitofp i32 %i.hb to float
  %i.hd = fsub float %i.hc, %i.gt
  %i.he = fmul float %i.fw, %i.hd
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef float %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, float noundef %i.he)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv549
  store float %i.hi, ptr %i.hj, align 4, !tbaa !77
  %i.hk = fadd float %.0259471, %i.hi             ; 4 uses
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1 ; 2 uses
  %exitcond554.not = icmp eq i64 %indvars.iv.next550, %wide.trip.count553
  br i1 %exitcond554.not, label %._crit_edge474, label %bb.o, !llvm.loop !1184

bb.q:                                             ; preds = %bb.o
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph478:                                        ; preds = %.lr.ph478.preheader687, %.lr.ph478
  %indvars.iv555 = phi i64 [ %indvars.iv.next556, %.lr.ph478 ], [ %indvars.iv555.ph, %.lr.ph478.preheader687 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv555 ; 2 uses
end_hunk_6
