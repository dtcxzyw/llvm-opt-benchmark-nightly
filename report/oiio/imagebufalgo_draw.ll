inline.NumInlined: 7071
inline.NumDeleted: 2345
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_IfEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !364
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !399
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.b
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !366
  %i.al = load i32, ptr %i.h, align 8, !tbaa !367
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !148
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !134 ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !135
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.at = load i32, ptr %i.g, align 4, !tbaa !366
  %i.au = load i32, ptr %i.e, align 8, !tbaa !364 ; 4 uses
  %i.av = xor i32 %i.au, %i.at
  %i.aw = call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 14)
  %i.ax = sub i32 %i.av, %i.aw                    ; 4 uses
  %i.ay = xor i32 %i.ax, %.pre8.pre.i.i
  %i.az = call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 11)
  %i.ba = sub i32 %i.ay, %i.az                    ; 4 uses
  %i.bb = xor i32 %i.ba, %i.au
  %i.bc = call i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 25)
  %i.bd = sub i32 %i.bb, %i.bc                    ; 4 uses
  %i.be = xor i32 %i.bd, %i.ax
  %i.bf = call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 16)
  %i.bg = sub i32 %i.be, %i.bf                    ; 4 uses
  %i.bh = xor i32 %i.bg, %i.ba
  %i.bi = call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 4)
  %i.bj = sub i32 %i.bh, %i.bi                    ; 3 uses
  %i.bk = xor i32 %i.bj, %i.bd
  %i.bl = call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 14)
  %i.bm = sub i32 %i.bk, %i.bl                    ; 3 uses
  %i.bn = xor i32 %i.bm, %i.bg
  %i.bo = call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 24)
  %i.bp = sub i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = sext i32 %i.aq to i64
  br label %bb.q

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.w
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !363
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.br = phi i32 [ %.pre.i.i, %._crit_edge.i.loopexit.i.i ], [ %.pre8.pre.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i ]
  %i.bs = add nsw i32 %i.br, 1                    ; 7 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !363
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !390
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.m

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.r, align 1, !tbaa !391, !range !81, !noundef !82
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.g, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.f
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !364
  %.pre9.i.i = load i32, ptr %i.g, align 4, !tbaa !366
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !392, !range !81, !noundef !82
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !393
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !144
  %i.cc = load i32, ptr %i.v, align 8, !tbaa !394
  %.not.i.i3.i.i = icmp slt i32 %i.bs, %i.cc
  br i1 %.not.i.i3.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.i, !prof !155

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.y

bb.j:                                             ; preds = %bb.g
  %i.cd = load i8, ptr %i.t, align 2, !tbaa !395, !range !81, !noundef !82
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !393
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ch, ptr %i.o, align 8, !tbaa !144
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !394
  %i.cj = icmp slt i32 %i.bs, %i.ci               ; 3 uses
  %i.ck = load i32, ptr %i.w, align 4
  %i.cl = icmp sge i32 %i.bs, %i.ck
  %not..i.i.i.i = xor i1 %i.cj, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.cl, !prof !396
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.cn, !prof !396
  br i1 %i.co, label %bb.l, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !126

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %2, align 8, !tbaa !149
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !364
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !366
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !397
  %i.ct = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i32 noundef %i.bs, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i1 noundef zeroext %i.cj, i32 noundef %i.cs)
          to label %.noexc4.i.i unwind label %bb.y

.noexc4.i.i:                                      ; preds = %bb.l
  %i.cu = zext i1 %i.cj to i8
  store ptr %i.ct, ptr %i.o, align 8, !tbaa !144
  store i8 %i.cu, ptr %i.r, align 1, !tbaa !391
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !365 ; 3 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !363
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !364
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  store i32 %i.cx, ptr %i.e, align 8, !tbaa !364
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !398
  %.not.i.i.i = icmp slt i32 %i.cx, %i.cy
  %.pre10.i.i = load i32, ptr %i.g, align 4, !tbaa !366 ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !399 ; 2 uses
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !364
  %i.da = add nsw i32 %.pre10.i.i, 1              ; 3 uses
  store i32 %i.da, ptr %i.g, align 4, !tbaa !366
  %i.db = load i32, ptr %i.h, align 8, !tbaa !367
  %.not1.i.i.i = icmp slt i32 %i.da, %i.db
  br i1 %.not1.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.b, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i2.i.i
  %i.dc = phi i32 [ %.pre10.i.i, %bb.m ], [ %i.da, %bb.n ], [ %.pre9.i.i, %._crit_edge.i2.i.i ]
  %i.dd = phi i32 [ %i.cx, %bb.m ], [ %i.cz, %bb.n ], [ %.pre.i.i.i, %._crit_edge.i2.i.i ]
  %i.de = phi i32 [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.bs, %._crit_edge.i2.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.de, i32 noundef %i.dd, i32 noundef %i.dc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.y

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.p, %bb.o, %.noexc4.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.q:                                             ; preds = %bb.w, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  %.042.i.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.w ]
  %i.df = load i32, ptr %i.i, align 8, !tbaa !134
  %i.dg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 7 uses
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !1387, !nonnull !82
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !211, !range !81, !noundef !82
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !1388, !nonnull !82, !align !556
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !13
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !1389, !nonnull !82, !align !556
  %i.do = load float, ptr %i.dn, align 4, !tbaa !13
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !1390, !nonnull !82, !align !556
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 14) ; 2 uses
  br label %.noexc25.i.i.i

.noexc25.i.i.i:                                   ; preds = %.noexc25.i.i.i, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.s ], [ %i.dt, %.noexc25.i.i.i ] ; 2 uses
  %i.dt = add nsw i32 %.0.i.i.i.i, 1              ; 2 uses
  %i.du = xor i32 %i.dt, %i.dg
  %4 = sub i32 %i.du, %i.ds                       ; 4 uses
  %i.dv = xor i32 %4, %i.bp
  %5 = call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 11)
  %i.dw = sub i32 %i.dv, %5                       ; 4 uses
  %i.dx = xor i32 %i.dw, %i.dg
  %6 = call i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 25)
  %7 = sub i32 %i.dx, %6                          ; 4 uses
  %8 = xor i32 %7, %4
  %9 = call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 16)
  %i.dy = sub i32 %8, %9                          ; 4 uses
  %i.dz = xor i32 %i.dy, %i.dw
  %i.ea = call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 4)
  %10 = sub i32 %i.dz, %i.ea                      ; 3 uses
  %i.eb = xor i32 %10, %7
  %i.ec = call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 14)
  %i.ed = sub i32 %i.eb, %i.ec                    ; 2 uses
  %11 = xor i32 %i.ed, %i.dy
  %12 = lshr i32 %i.ed, 8
  %13 = sub i32 %11, %12
  %14 = and i32 %13, 1048575
  %15 = uitofp nneg i32 %14 to float
  %16 = fmul nnan float %15, f0x35800000
  %17 = fpext float %16 to double
  %18 = call double @llvm.fmuladd.f64(double %17, double 2.000000e+00, double -1.000000e+00)
  %19 = fptrunc double %18 to float               ; 3 uses
  %20 = add nsw i32 %.0.i.i.i.i, 140
  %21 = xor i32 %20, %i.dg
  %i.ee = sub i32 %21, %i.ds                      ; 4 uses
  %22 = xor i32 %i.ee, %i.bp
  %23 = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 11)
  %24 = sub i32 %22, %23                          ; 4 uses
  %i.ef = xor i32 %24, %i.dg
  %i.eg = call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 25)
  %25 = sub i32 %i.ef, %i.eg                      ; 4 uses
  %26 = xor i32 %25, %i.ee
  %27 = call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 16)
  %28 = sub i32 %26, %27                          ; 4 uses
  %29 = xor i32 %28, %24
  %30 = call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 4)
  %31 = sub i32 %29, %30                          ; 3 uses
  %32 = xor i32 %31, %25
  %33 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 14)
  %34 = sub i32 %32, %33                          ; 2 uses
  %35 = xor i32 %34, %28
  %36 = lshr i32 %34, 8
  %37 = sub i32 %35, %36
  %38 = and i32 %37, 1048575
  %39 = uitofp nneg i32 %38 to float
  %40 = fmul nnan float %39, f0x35800000
  %41 = fpext float %40 to double
  %42 = call double @llvm.fmuladd.f64(double %41, double 2.000000e+00, double -1.000000e+00)
  %i.eh = fptrunc double %42 to float             ; 2 uses
  %i.ei = fmul float %i.eh, %i.eh
  %i.ej = call float @llvm.fmuladd.f32(float %19, float %19, float %i.ei) ; 4 uses
  %i.ek = fcmp ogt float %i.ej, 1.000000e+00
  %i.el = fcmp oeq float %i.ej, 0.000000e+00
  %i.em = or i1 %i.ek, %i.el
  br i1 %i.em, label %.noexc25.i.i.i, label %bb.t, !llvm.loop !1391

bb.t:                                             ; preds = %.noexc25.i.i.i
  %i.en = fpext float %i.ej to double
  %i.eo = call ninf float @llvm.log.f32(float %i.ej)
  %i.ep = fpext ninf float %i.eo to double
  %i.eq = fmul double %i.ep, -2.000000e+00
  %i.er = fdiv double %i.eq, %i.en
  %i.es = call double @llvm.sqrt.f64(double %i.er)
  %i.et = fptrunc double %i.es to float
  %i.eu = fmul float %19, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.do, float %i.eu, float %i.dm)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.1.i.i.i = phi float [ %i.ev, %bb.t ], [ %.042.i.i.i, %bb.r ] ; 2 uses
  %i.ew = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %indvars.iv.i.i.i
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !13
  %i.ez = fadd float %.1.i.i.i, %i.ey
  %i.fa = load ptr, ptr %2, align 8, !tbaa !149
  %i.fb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %.noexc33.i.i.i unwind label %bb.x

.noexc33.i.i.i:                                   ; preds = %bb.u
  %i.fc = icmp eq i32 %i.fb, 3
  br i1 %i.fc, label %bb.v, label %bb.w, !prof !126

bb.v:                                             ; preds = %.noexc33.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v, %.noexc33.i.i.i
  %i.fd = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %indvars.iv.i.i.i
  store float %i.ez, ptr %i.fe, align 4, !tbaa !13
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ff = load i32, ptr %i.j, align 4, !tbaa !135
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next.i.i.i, %i.fg
  br i1 %i.fh, label %bb.q, label %._crit_edge.i.loopexit.i.i, !llvm.loop !1392

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.p, %bb.l, %bb.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.fj, %bb.y ], [ %i.fi, %bb.x ]
  %i.fk = load ptr, ptr %i.x, align 8, !tbaa !148
  %.not.i35.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i35.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #33
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_IfEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS0_8ImageBufEffbiNS0_3ROIEiEUlS4_E_, ptr %0, align 8, !tbaa !1042
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !102
  store ptr %.val, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1393
  store ptr %i.a, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !102 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #34
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #10

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_IhEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.233", align 8 ; 33 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !102   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1394, !nonnull !82, !align !575
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, %bb.a
  %i.ad = load i8, ptr %i.b, align 8, !tbaa !172, !range !81, !noundef !82
  %i.ae = icmp eq i8 %i.ad, 0
  %.pre8.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !363 ; 3 uses
  %i.af = load i32, ptr %i.d, align 4
  %i.ag = icmp eq i32 %.pre8.pre.i.i, %i.af
  %or.cond.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !364
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !399
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.b
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !366
  %i.al = load i32, ptr %i.h, align 8, !tbaa !367
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !148
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !134 ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !135
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.at = load i32, ptr %i.g, align 4, !tbaa !366
  %i.au = load i32, ptr %i.e, align 8, !tbaa !364 ; 4 uses
  %i.av = xor i32 %i.au, %i.at
  %i.aw = call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 14)
  %i.ax = sub i32 %i.av, %i.aw                    ; 4 uses
  %i.ay = xor i32 %i.ax, %.pre8.pre.i.i
  %i.az = call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 11)
  %i.ba = sub i32 %i.ay, %i.az                    ; 4 uses
  %i.bb = xor i32 %i.ba, %i.au
  %i.bc = call i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 25)
  %i.bd = sub i32 %i.bb, %i.bc                    ; 4 uses
  %i.be = xor i32 %i.bd, %i.ax
  %i.bf = call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 16)
  %i.bg = sub i32 %i.be, %i.bf                    ; 4 uses
  %i.bh = xor i32 %i.bg, %i.ba
  %i.bi = call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 4)
  %i.bj = sub i32 %i.bh, %i.bi                    ; 3 uses
  %i.bk = xor i32 %i.bj, %i.bd
  %i.bl = call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 14)
  %i.bm = sub i32 %i.bk, %i.bl                    ; 3 uses
  %i.bn = xor i32 %i.bm, %i.bg
  %i.bo = call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 24)
  %i.bp = sub i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = sext i32 %i.aq to i64
  br label %bb.q

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.w
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !363
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.br = phi i32 [ %.pre.i.i, %._crit_edge.i.loopexit.i.i ], [ %.pre8.pre.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i ]
  %i.bs = add nsw i32 %i.br, 1                    ; 7 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !363
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !390
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.m

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.r, align 1, !tbaa !391, !range !81, !noundef !82
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.g, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.f
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !364
  %.pre9.i.i = load i32, ptr %i.g, align 4, !tbaa !366
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !392, !range !81, !noundef !82
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !393
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !144
  %i.cc = load i32, ptr %i.v, align 8, !tbaa !394
  %.not.i.i3.i.i = icmp slt i32 %i.bs, %i.cc
  br i1 %.not.i.i3.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.i, !prof !155

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.y

bb.j:                                             ; preds = %bb.g
  %i.cd = load i8, ptr %i.t, align 2, !tbaa !395, !range !81, !noundef !82
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !393
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ch, ptr %i.o, align 8, !tbaa !144
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !394
  %i.cj = icmp slt i32 %i.bs, %i.ci               ; 3 uses
  %i.ck = load i32, ptr %i.w, align 4
  %i.cl = icmp sge i32 %i.bs, %i.ck
  %not..i.i.i.i = xor i1 %i.cj, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.cl, !prof !396
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.cn, !prof !396
  br i1 %i.co, label %bb.l, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !126

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %2, align 8, !tbaa !149
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !364
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !366
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !397
  %i.ct = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i32 noundef %i.bs, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i1 noundef zeroext %i.cj, i32 noundef %i.cs)
          to label %.noexc4.i.i unwind label %bb.y

.noexc4.i.i:                                      ; preds = %bb.l
  %i.cu = zext i1 %i.cj to i8
  store ptr %i.ct, ptr %i.o, align 8, !tbaa !144
  store i8 %i.cu, ptr %i.r, align 1, !tbaa !391
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !365 ; 3 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !363
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !364
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  store i32 %i.cx, ptr %i.e, align 8, !tbaa !364
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !398
  %.not.i.i.i = icmp slt i32 %i.cx, %i.cy
  %.pre10.i.i = load i32, ptr %i.g, align 4, !tbaa !366 ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !399 ; 2 uses
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !364
  %i.da = add nsw i32 %.pre10.i.i, 1              ; 3 uses
  store i32 %i.da, ptr %i.g, align 4, !tbaa !366
  %i.db = load i32, ptr %i.h, align 8, !tbaa !367
  %.not1.i.i.i = icmp slt i32 %i.da, %i.db
  br i1 %.not1.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.b, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i2.i.i
  %i.dc = phi i32 [ %.pre10.i.i, %bb.m ], [ %i.da, %bb.n ], [ %.pre9.i.i, %._crit_edge.i2.i.i ]
  %i.dd = phi i32 [ %i.cx, %bb.m ], [ %i.cz, %bb.n ], [ %.pre.i.i.i, %._crit_edge.i2.i.i ]
  %i.de = phi i32 [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.bs, %._crit_edge.i2.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.de, i32 noundef %i.dd, i32 noundef %i.dc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.y

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.p, %bb.o, %.noexc4.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.q:                                             ; preds = %bb.w, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  %.042.i.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.w ]
  %i.df = load i32, ptr %i.i, align 8, !tbaa !134
  %i.dg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 7 uses
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !1396, !nonnull !82
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !211, !range !81, !noundef !82
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !1397, !nonnull !82, !align !556
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !13
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !1398, !nonnull !82, !align !556
  %i.do = load float, ptr %i.dn, align 4, !tbaa !13
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !1399, !nonnull !82, !align !556
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 14) ; 2 uses
  br label %.noexc25.i.i.i

.noexc25.i.i.i:                                   ; preds = %.noexc25.i.i.i, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.s ], [ %i.dt, %.noexc25.i.i.i ] ; 2 uses
  %i.dt = add nsw i32 %.0.i.i.i.i, 1              ; 2 uses
  %i.du = xor i32 %i.dt, %i.dg
  %4 = sub i32 %i.du, %i.ds                       ; 4 uses
  %i.dv = xor i32 %4, %i.bp
  %5 = call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 11)
  %i.dw = sub i32 %i.dv, %5                       ; 4 uses
  %i.dx = xor i32 %i.dw, %i.dg
  %6 = call i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 25)
  %7 = sub i32 %i.dx, %6                          ; 4 uses
  %8 = xor i32 %7, %4
  %9 = call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 16)
  %i.dy = sub i32 %8, %9                          ; 4 uses
  %i.dz = xor i32 %i.dy, %i.dw
  %i.ea = call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 4)
  %10 = sub i32 %i.dz, %i.ea                      ; 3 uses
  %i.eb = xor i32 %10, %7
  %i.ec = call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 14)
  %i.ed = sub i32 %i.eb, %i.ec                    ; 2 uses
  %11 = xor i32 %i.ed, %i.dy
  %12 = lshr i32 %i.ed, 8
  %13 = sub i32 %11, %12
  %14 = and i32 %13, 1048575
  %15 = uitofp nneg i32 %14 to float
  %16 = fmul nnan float %15, f0x35800000
  %17 = fpext float %16 to double
  %18 = call double @llvm.fmuladd.f64(double %17, double 2.000000e+00, double -1.000000e+00)
  %19 = fptrunc double %18 to float               ; 3 uses
  %20 = add nsw i32 %.0.i.i.i.i, 140
  %21 = xor i32 %20, %i.dg
  %i.ee = sub i32 %21, %i.ds                      ; 4 uses
  %22 = xor i32 %i.ee, %i.bp
  %23 = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 11)
  %24 = sub i32 %22, %23                          ; 4 uses
  %i.ef = xor i32 %24, %i.dg
  %i.eg = call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 25)
  %25 = sub i32 %i.ef, %i.eg                      ; 4 uses
  %26 = xor i32 %25, %i.ee
  %27 = call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 16)
  %28 = sub i32 %26, %27                          ; 4 uses
  %29 = xor i32 %28, %24
  %30 = call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 4)
  %31 = sub i32 %29, %30                          ; 3 uses
  %32 = xor i32 %31, %25
  %33 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 14)
  %34 = sub i32 %32, %33                          ; 2 uses
  %35 = xor i32 %34, %28
  %36 = lshr i32 %34, 8
  %37 = sub i32 %35, %36
  %38 = and i32 %37, 1048575
  %39 = uitofp nneg i32 %38 to float
  %40 = fmul nnan float %39, f0x35800000
  %41 = fpext float %40 to double
  %42 = call double @llvm.fmuladd.f64(double %41, double 2.000000e+00, double -1.000000e+00)
  %i.eh = fptrunc double %42 to float             ; 2 uses
  %i.ei = fmul float %i.eh, %i.eh
  %i.ej = call float @llvm.fmuladd.f32(float %19, float %19, float %i.ei) ; 4 uses
  %i.ek = fcmp ogt float %i.ej, 1.000000e+00
  %i.el = fcmp oeq float %i.ej, 0.000000e+00
  %i.em = or i1 %i.ek, %i.el
  br i1 %i.em, label %.noexc25.i.i.i, label %bb.t, !llvm.loop !1391

bb.t:                                             ; preds = %.noexc25.i.i.i
  %i.en = fpext float %i.ej to double
  %i.eo = call ninf float @llvm.log.f32(float %i.ej)
  %i.ep = fpext ninf float %i.eo to double
  %i.eq = fmul double %i.ep, -2.000000e+00
  %i.er = fdiv double %i.eq, %i.en
  %i.es = call double @llvm.sqrt.f64(double %i.er)
  %i.et = fptrunc double %i.es to float
  %i.eu = fmul float %19, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.do, float %i.eu, float %i.dm)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.1.i.i.i = phi float [ %i.ev, %bb.t ], [ %.042.i.i.i, %bb.r ] ; 2 uses
  %i.ew = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %indvars.iv.i.i.i
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !67
  %i.ez = uitofp i8 %i.ey to float
  %i.fa = fmul nnan float %i.ez, f0x3B808081
  %i.fb = fadd float %.1.i.i.i, %i.fa
  %i.fc = load ptr, ptr %2, align 8, !tbaa !149
  %i.fd = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc)
          to label %.noexc33.i.i.i unwind label %bb.x

.noexc33.i.i.i:                                   ; preds = %bb.u
  %i.fe = icmp eq i32 %i.fd, 3
  br i1 %i.fe, label %bb.v, label %bb.w, !prof !126

bb.v:                                             ; preds = %.noexc33.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v, %.noexc33.i.i.i
  %i.ff = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %indvars.iv.i.i.i
  %i.fh = fmul float %i.fb, 2.550000e+02          ; 2 uses
  %i.fi = fcmp olt float %i.fh, 0.000000e+00
  %i.fj = select i1 %i.fi, float -5.000000e-01, float 5.000000e-01
  %i.fk = fadd float %i.fh, %i.fj                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.fk, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.fk, float 0.000000e+00 ; 2 uses
  %i.fl = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.fl, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.fm = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.fm, ptr %i.fg, align 1, !tbaa !67
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fn = load i32, ptr %i.j, align 4, !tbaa !135
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next.i.i.i, %i.fo
  br i1 %i.fp, label %bb.q, label %._crit_edge.i.loopexit.i.i, !llvm.loop !1400

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.p, %bb.l, %bb.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.fr, %bb.y ], [ %i.fq, %bb.x ]
  %i.fs = load ptr, ptr %i.x, align 8, !tbaa !148
  %.not.i35.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i35.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #33
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_IhEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS0_8ImageBufEffbiNS0_3ROIEiEUlS4_E_, ptr %0, align 8, !tbaa !1042
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !102
  store ptr %.val, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1393
  store ptr %i.a, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !102 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #34
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_IN9Imath_3_14halfEEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.238", align 8 ; 33 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !102   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1401, !nonnull !82, !align !575
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, %bb.a
  %i.ad = load i8, ptr %i.b, align 8, !tbaa !172, !range !81, !noundef !82
  %i.ae = icmp eq i8 %i.ad, 0
  %.pre8.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !363 ; 3 uses
  %i.af = load i32, ptr %i.d, align 4
  %i.ag = icmp eq i32 %.pre8.pre.i.i, %i.af
  %or.cond.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !364
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !399
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.b
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !366
  %i.al = load i32, ptr %i.h, align 8, !tbaa !367
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !148
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_IN9Imath_3_14halfEEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_IN9Imath_3_14halfEEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !134 ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !135
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.at = load i32, ptr %i.g, align 4, !tbaa !366
  %i.au = load i32, ptr %i.e, align 8, !tbaa !364 ; 4 uses
  %i.av = xor i32 %i.au, %i.at
  %i.aw = call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 14)
  %i.ax = sub i32 %i.av, %i.aw                    ; 4 uses
  %i.ay = xor i32 %i.ax, %.pre8.pre.i.i
  %i.az = call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 11)
  %i.ba = sub i32 %i.ay, %i.az                    ; 4 uses
  %i.bb = xor i32 %i.ba, %i.au
  %i.bc = call i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 25)
  %i.bd = sub i32 %i.bb, %i.bc                    ; 4 uses
  %i.be = xor i32 %i.bd, %i.ax
  %i.bf = call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 16)
  %i.bg = sub i32 %i.be, %i.bf                    ; 4 uses
  %i.bh = xor i32 %i.bg, %i.ba
  %i.bi = call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 4)
  %i.bj = sub i32 %i.bh, %i.bi                    ; 3 uses
  %i.bk = xor i32 %i.bj, %i.bd
  %i.bl = call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 14)
  %i.bm = sub i32 %i.bk, %i.bl                    ; 3 uses
  %i.bn = xor i32 %i.bm, %i.bg
  %i.bo = call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 24)
  %i.bp = sub i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = sext i32 %i.aq to i64
  br label %bb.q

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.am
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !363
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.br = phi i32 [ %.pre.i.i, %._crit_edge.i.loopexit.i.i ], [ %.pre8.pre.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i ]
  %i.bs = add nsw i32 %i.br, 1                    ; 7 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !363
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !390
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.m

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.r, align 1, !tbaa !391, !range !81, !noundef !82
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.g, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.f
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !364
  %.pre9.i.i = load i32, ptr %i.g, align 4, !tbaa !366
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !392, !range !81, !noundef !82
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !393
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !144
  %i.cc = load i32, ptr %i.v, align 8, !tbaa !394
  %.not.i.i3.i.i = icmp slt i32 %i.bs, %i.cc
  br i1 %.not.i.i3.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.i, !prof !155

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.ao

bb.j:                                             ; preds = %bb.g
  %i.cd = load i8, ptr %i.t, align 2, !tbaa !395, !range !81, !noundef !82
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !393
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ch, ptr %i.o, align 8, !tbaa !144
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !394
  %i.cj = icmp slt i32 %i.bs, %i.ci               ; 3 uses
  %i.ck = load i32, ptr %i.w, align 4
  %i.cl = icmp sge i32 %i.bs, %i.ck
  %not..i.i.i.i = xor i1 %i.cj, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.cl, !prof !396
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.cn, !prof !396
  br i1 %i.co, label %bb.l, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !126

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %2, align 8, !tbaa !149
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !364
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !366
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !397
  %i.ct = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i32 noundef %i.bs, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i1 noundef zeroext %i.cj, i32 noundef %i.cs)
          to label %.noexc4.i.i unwind label %bb.ao

.noexc4.i.i:                                      ; preds = %bb.l
  %i.cu = zext i1 %i.cj to i8
  store ptr %i.ct, ptr %i.o, align 8, !tbaa !144
  store i8 %i.cu, ptr %i.r, align 1, !tbaa !391
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !365 ; 3 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !363
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !364
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  store i32 %i.cx, ptr %i.e, align 8, !tbaa !364
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !398
  %.not.i.i.i = icmp slt i32 %i.cx, %i.cy
  %.pre10.i.i = load i32, ptr %i.g, align 4, !tbaa !366 ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !399 ; 2 uses
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !364
  %i.da = add nsw i32 %.pre10.i.i, 1              ; 3 uses
  store i32 %i.da, ptr %i.g, align 4, !tbaa !366
  %i.db = load i32, ptr %i.h, align 8, !tbaa !367
  %.not1.i.i.i = icmp slt i32 %i.da, %i.db
  br i1 %.not1.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.b, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i2.i.i
  %i.dc = phi i32 [ %.pre10.i.i, %bb.m ], [ %i.da, %bb.n ], [ %.pre9.i.i, %._crit_edge.i2.i.i ]
  %i.dd = phi i32 [ %i.cx, %bb.m ], [ %i.cz, %bb.n ], [ %.pre.i.i.i, %._crit_edge.i2.i.i ]
  %i.de = phi i32 [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.bs, %._crit_edge.i2.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.de, i32 noundef %i.dd, i32 noundef %i.dc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.ao

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.p, %bb.o, %.noexc4.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.q:                                             ; preds = %bb.am, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.am ] ; 4 uses
  %.043.i.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.am ]
  %i.df = load i32, ptr %i.i, align 8, !tbaa !134
  %i.dg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 7 uses
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !1403, !nonnull !82
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !211, !range !81, !noundef !82
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !1404, !nonnull !82, !align !556
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !13
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !1405, !nonnull !82, !align !556
  %i.do = load float, ptr %i.dn, align 4, !tbaa !13
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !1406, !nonnull !82, !align !556
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 14) ; 2 uses
  br label %.noexc25.i.i.i

.noexc25.i.i.i:                                   ; preds = %.noexc25.i.i.i, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.s ], [ %i.dt, %.noexc25.i.i.i ] ; 2 uses
  %i.dt = add nsw i32 %.0.i.i.i.i, 1              ; 2 uses
  %i.du = xor i32 %i.dt, %i.dg
  %4 = sub i32 %i.du, %i.ds                       ; 4 uses
  %i.dv = xor i32 %4, %i.bp
  %5 = call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 11)
  %i.dw = sub i32 %i.dv, %5                       ; 4 uses
  %i.dx = xor i32 %i.dw, %i.dg
  %6 = call i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 25)
  %7 = sub i32 %i.dx, %6                          ; 4 uses
  %8 = xor i32 %7, %4
  %9 = call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 16)
  %i.dy = sub i32 %8, %9                          ; 4 uses
  %i.dz = xor i32 %i.dy, %i.dw
  %i.ea = call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 4)
  %10 = sub i32 %i.dz, %i.ea                      ; 3 uses
  %i.eb = xor i32 %10, %7
  %i.ec = call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 14)
  %i.ed = sub i32 %i.eb, %i.ec                    ; 2 uses
  %11 = xor i32 %i.ed, %i.dy
  %12 = lshr i32 %i.ed, 8
  %13 = sub i32 %11, %12
  %14 = and i32 %13, 1048575
  %15 = uitofp nneg i32 %14 to float
  %16 = fmul nnan float %15, f0x35800000
  %17 = fpext float %16 to double
  %18 = call double @llvm.fmuladd.f64(double %17, double 2.000000e+00, double -1.000000e+00)
  %19 = fptrunc double %18 to float               ; 3 uses
  %20 = add nsw i32 %.0.i.i.i.i, 140
  %21 = xor i32 %20, %i.dg
  %i.ee = sub i32 %21, %i.ds                      ; 4 uses
  %22 = xor i32 %i.ee, %i.bp
  %23 = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 11)
  %24 = sub i32 %22, %23                          ; 4 uses
  %i.ef = xor i32 %24, %i.dg
  %i.eg = call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 25)
  %25 = sub i32 %i.ef, %i.eg                      ; 4 uses
  %26 = xor i32 %25, %i.ee
  %27 = call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 16)
  %28 = sub i32 %26, %27                          ; 4 uses
  %29 = xor i32 %28, %24
  %30 = call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 4)
  %31 = sub i32 %29, %30                          ; 3 uses
  %32 = xor i32 %31, %25
  %33 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 14)
  %34 = sub i32 %32, %33                          ; 2 uses
  %35 = xor i32 %34, %28
  %36 = lshr i32 %34, 8
  %37 = sub i32 %35, %36
  %38 = and i32 %37, 1048575
  %39 = uitofp nneg i32 %38 to float
  %40 = fmul nnan float %39, f0x35800000
  %41 = fpext float %40 to double
  %42 = call double @llvm.fmuladd.f64(double %41, double 2.000000e+00, double -1.000000e+00)
  %i.eh = fptrunc double %42 to float             ; 2 uses
  %i.ei = fmul float %i.eh, %i.eh
  %i.ej = call float @llvm.fmuladd.f32(float %19, float %19, float %i.ei) ; 4 uses
  %i.ek = fcmp ogt float %i.ej, 1.000000e+00
  %i.el = fcmp oeq float %i.ej, 0.000000e+00
  %i.em = or i1 %i.ek, %i.el
  br i1 %i.em, label %.noexc25.i.i.i, label %bb.t, !llvm.loop !1391

bb.t:                                             ; preds = %.noexc25.i.i.i
  %i.en = fpext float %i.ej to double
  %i.eo = call ninf float @llvm.log.f32(float %i.ej)
  %i.ep = fpext ninf float %i.eo to double
  %i.eq = fmul double %i.ep, -2.000000e+00
  %i.er = fdiv double %i.eq, %i.en
  %i.es = call double @llvm.sqrt.f64(double %i.er)
  %i.et = fptrunc double %i.es to float
  %i.eu = fmul float %19, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.do, float %i.eu, float %i.dm)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.1.i.i.i = phi float [ %i.ev, %bb.t ], [ %.043.i.i.i, %bb.r ] ; 2 uses
  %i.ew = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.ew, i64 %indvars.iv.i.i.i
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !152 ; 2 uses
  %i.ez = zext i16 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 13
  %i.fb = and i32 %i.fa, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i.i = sext i16 %i.ey to i32
  %i.fc = and i32 %.signext.i.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.fd = icmp samesign ugt i32 %i.fb, 8388607
  br i1 %i.fd, label %bb.v, label %bb.y, !prof !155

bb.v:                                             ; preds = %bb.u
  %i.fe = or disjoint i32 %i.fb, %i.fc            ; 2 uses
  %i.ff = icmp samesign ult i32 %i.fb, 260046848
  br i1 %i.ff, label %bb.w, label %bb.x, !prof !155

bb.w:                                             ; preds = %bb.v
  %i.fg = add nuw nsw i32 %i.fe, 939524096
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.fh = or i32 %i.fe, 2139095040
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fi = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.fb, i1 true)
  %i.fj = add nsw i32 %i.fi, -8                   ; 2 uses
  %i.fk = shl i32 %i.fb, %i.fj
  %i.fl = or i32 %i.fc, %i.fk
  %i.fm = or i32 %i.fl, 947912704
  %i.fn = shl nuw nsw i32 %i.fj, 23
  %i.fo = sub nuw i32 %i.fm, %i.fn
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fg, %bb.w ], [ %i.fh, %bb.x ], [ %i.fo, %bb.z ], [ %i.fc, %bb.y ]
  %i.fp = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i to float
  %i.fq = fadd float %.1.i.i.i, %i.fp             ; 2 uses
  %i.fr = load ptr, ptr %2, align 8, !tbaa !149
  %i.fs = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %.noexc36.i.i.i unwind label %bb.an

.noexc36.i.i.i:                                   ; preds = %bb.aa
  %i.ft = icmp eq i32 %i.fs, 3
  br i1 %i.ft, label %bb.ab, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i, !prof !126

bb.ab:                                            ; preds = %.noexc36.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i unwind label %bb.an

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i: ; preds = %bb.ab, %.noexc36.i.i.i
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.fv = bitcast float %i.fq to i32
  %i.fw = call float @llvm.fabs.f32(float %i.fq)
  %i.fx = bitcast float %i.fw to i32              ; 10 uses
  %i.fy = lshr i32 %i.fv, 16                      ; 3 uses
  %i.fz = trunc nuw i32 %i.fy to i16
  %i.ga = and i16 %i.fz, -32768                   ; 3 uses
  %i.gb = icmp samesign ugt i32 %i.fx, 947912703
  br i1 %i.gb, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i
  %i.gc = icmp samesign ugt i32 %i.fx, 2139095039
  br i1 %i.gc, label %bb.ad, label %bb.af, !prof !126

bb.ad:                                            ; preds = %bb.ac
  %i.gd = or disjoint i16 %i.ga, 31744            ; 2 uses
  %i.ge = icmp eq i32 %i.fx, 2139095040
  br i1 %i.ge, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gf = lshr i32 %i.fx, 13
  %i.gg = and i32 %i.gf, 1023                     ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  %i.gi = zext i1 %i.gh to i16
  %i.gj = trunc nuw nsw i32 %i.gg to i16
  %i.gk = or i16 %i.gj, %i.gi
  %i.gl = or disjoint i16 %i.gk, %i.gd
  br label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.gm = icmp samesign ugt i32 %i.fx, 1199566847
  br i1 %i.gm, label %bb.ag, label %bb.ah, !prof !126

bb.ag:                                            ; preds = %bb.af
  %i.gn = or disjoint i16 %i.ga, 31744
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.go = add nuw nsw i32 %i.fx, 134221823
  %i.gp = lshr i32 %i.fx, 13
  %i.gq = and i32 %i.gp, 1
  %i.gr = add nuw nsw i32 %i.go, %i.gq
  %i.gs = lshr i32 %i.gr, 13
  %i.gt = and i32 %i.fy, 32768
  %i.gu = or i32 %i.gs, %i.gt
  %i.gv = trunc i32 %i.gu to i16
  br label %bb.am

bb.ai:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i
  %i.gw = icmp samesign ult i32 %i.fx, 855638017
  br i1 %i.gw, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gx = lshr i32 %i.fx, 23                      ; 2 uses
  %i.gy = sub nuw nsw i32 126, %i.gx
  %i.gz = and i32 %i.fx, 8388607
  %i.ha = or disjoint i32 %i.gz, 8388608          ; 2 uses
  %i.hb = add nsw i32 %i.gx, -94
  %i.hc = shl i32 %i.ha, %i.hb                    ; 2 uses
  %i.hd = lshr i32 %i.ha, %i.gy                   ; 2 uses
  %i.he = and i32 %i.fy, 32768
  %i.hf = or i32 %i.hd, %i.he
  %i.hg = trunc nuw i32 %i.hf to i16              ; 2 uses
  %i.hh = icmp ugt i32 %i.hc, -2147483648
  br i1 %i.hh, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hi = icmp ne i32 %i.hc, -2147483648
  %i.hj = and i32 %i.hd, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.hj, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.hi, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hk = add nuw i16 %i.hg, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i = phi i16 [ %i.ga, %bb.ai ], [ %i.gl, %bb.ae ], [ %i.gn, %bb.ag ], [ %i.gv, %bb.ah ], [ %i.gd, %bb.ad ], [ %i.hk, %bb.al ], [ %i.hg, %bb.ak ]
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.fu, i64 %indvars.iv.i.i.i
  store i16 %.0.i.i.i.i.i.i.i.i, ptr %i.hl, align 2, !tbaa !157
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.hm = load i32, ptr %i.j, align 4, !tbaa !135
  %i.hn = sext i32 %i.hm to i64
  %i.ho = icmp slt i64 %indvars.iv.next.i.i.i, %i.hn
  br i1 %i.ho, label %bb.q, label %._crit_edge.i.loopexit.i.i, !llvm.loop !1407

bb.an:                                            ; preds = %bb.ab, %bb.aa
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.p, %bb.l, %bb.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.hq, %bb.ao ], [ %i.hp, %bb.an ]
  %i.hr = load ptr, ptr %i.x, align 8, !tbaa !148
  %.not.i34.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i34.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit35.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit35.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #33
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit35.i.i.i: ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_IN9Imath_3_14halfEEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_IN9Imath_3_14halfEEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IN9Imath_3_14halfEEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L15noise_gaussian_IN9Imath_3_14halfEEEbRNS0_8ImageBufEffbiNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !1042
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IN9Imath_3_14halfEEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !102
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_ItEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !364
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !399
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.b
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !366
  %i.al = load i32, ptr %i.h, align 8, !tbaa !367
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !148
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !134 ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !135
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.at = load i32, ptr %i.g, align 4, !tbaa !366
  %i.au = load i32, ptr %i.e, align 8, !tbaa !364 ; 4 uses
  %i.av = xor i32 %i.au, %i.at
  %i.aw = call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 14)
  %i.ax = sub i32 %i.av, %i.aw                    ; 4 uses
  %i.ay = xor i32 %i.ax, %.pre8.pre.i.i
  %i.az = call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 11)
  %i.ba = sub i32 %i.ay, %i.az                    ; 4 uses
  %i.bb = xor i32 %i.ba, %i.au
  %i.bc = call i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 25)
  %i.bd = sub i32 %i.bb, %i.bc                    ; 4 uses
  %i.be = xor i32 %i.bd, %i.ax
  %i.bf = call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 16)
  %i.bg = sub i32 %i.be, %i.bf                    ; 4 uses
  %i.bh = xor i32 %i.bg, %i.ba
  %i.bi = call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 4)
  %i.bj = sub i32 %i.bh, %i.bi                    ; 3 uses
  %i.bk = xor i32 %i.bj, %i.bd
  %i.bl = call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 14)
  %i.bm = sub i32 %i.bk, %i.bl                    ; 3 uses
  %i.bn = xor i32 %i.bm, %i.bg
  %i.bo = call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 24)
  %i.bp = sub i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = sext i32 %i.aq to i64
  br label %bb.q

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.w
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !363
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.br = phi i32 [ %.pre.i.i, %._crit_edge.i.loopexit.i.i ], [ %.pre8.pre.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i ]
  %i.bs = add nsw i32 %i.br, 1                    ; 7 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !363
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !390
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.m

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.r, align 1, !tbaa !391, !range !81, !noundef !82
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.g, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.f
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !364
  %.pre9.i.i = load i32, ptr %i.g, align 4, !tbaa !366
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !392, !range !81, !noundef !82
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !393
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !144
  %i.cc = load i32, ptr %i.v, align 8, !tbaa !394
  %.not.i.i3.i.i = icmp slt i32 %i.bs, %i.cc
  br i1 %.not.i.i3.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.i, !prof !155

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.y

bb.j:                                             ; preds = %bb.g
  %i.cd = load i8, ptr %i.t, align 2, !tbaa !395, !range !81, !noundef !82
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !393
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ch, ptr %i.o, align 8, !tbaa !144
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !394
  %i.cj = icmp slt i32 %i.bs, %i.ci               ; 3 uses
  %i.ck = load i32, ptr %i.w, align 4
  %i.cl = icmp sge i32 %i.bs, %i.ck
  %not..i.i.i.i = xor i1 %i.cj, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.cl, !prof !396
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.cn, !prof !396
  br i1 %i.co, label %bb.l, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !126

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %2, align 8, !tbaa !149
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !364
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !366
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !397
  %i.ct = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i32 noundef %i.bs, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i1 noundef zeroext %i.cj, i32 noundef %i.cs)
          to label %.noexc4.i.i unwind label %bb.y

.noexc4.i.i:                                      ; preds = %bb.l
  %i.cu = zext i1 %i.cj to i8
  store ptr %i.ct, ptr %i.o, align 8, !tbaa !144
  store i8 %i.cu, ptr %i.r, align 1, !tbaa !391
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !365 ; 3 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !363
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !364
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  store i32 %i.cx, ptr %i.e, align 8, !tbaa !364
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !398
  %.not.i.i.i = icmp slt i32 %i.cx, %i.cy
  %.pre10.i.i = load i32, ptr %i.g, align 4, !tbaa !366 ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !399 ; 2 uses
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !364
  %i.da = add nsw i32 %.pre10.i.i, 1              ; 3 uses
  store i32 %i.da, ptr %i.g, align 4, !tbaa !366
  %i.db = load i32, ptr %i.h, align 8, !tbaa !367
  %.not1.i.i.i = icmp slt i32 %i.da, %i.db
  br i1 %.not1.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.b, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i2.i.i
  %i.dc = phi i32 [ %.pre10.i.i, %bb.m ], [ %i.da, %bb.n ], [ %.pre9.i.i, %._crit_edge.i2.i.i ]
  %i.dd = phi i32 [ %i.cx, %bb.m ], [ %i.cz, %bb.n ], [ %.pre.i.i.i, %._crit_edge.i2.i.i ]
  %i.de = phi i32 [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.bs, %._crit_edge.i2.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.de, i32 noundef %i.dd, i32 noundef %i.dc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.y

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.p, %bb.o, %.noexc4.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.q:                                             ; preds = %bb.w, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  %.042.i.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.w ]
  %i.df = load i32, ptr %i.i, align 8, !tbaa !134
  %i.dg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 7 uses
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !1410, !nonnull !82
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !211, !range !81, !noundef !82
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !1411, !nonnull !82, !align !556
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !13
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !1412, !nonnull !82, !align !556
  %i.do = load float, ptr %i.dn, align 4, !tbaa !13
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !1413, !nonnull !82, !align !556
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 14) ; 2 uses
  br label %.noexc25.i.i.i

.noexc25.i.i.i:                                   ; preds = %.noexc25.i.i.i, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.s ], [ %i.dt, %.noexc25.i.i.i ] ; 2 uses
  %i.dt = add nsw i32 %.0.i.i.i.i, 1              ; 2 uses
  %i.du = xor i32 %i.dt, %i.dg
  %4 = sub i32 %i.du, %i.ds                       ; 4 uses
  %i.dv = xor i32 %4, %i.bp
  %5 = call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 11)
  %i.dw = sub i32 %i.dv, %5                       ; 4 uses
  %i.dx = xor i32 %i.dw, %i.dg
  %6 = call i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 25)
  %7 = sub i32 %i.dx, %6                          ; 4 uses
  %8 = xor i32 %7, %4
  %9 = call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 16)
  %i.dy = sub i32 %8, %9                          ; 4 uses
  %i.dz = xor i32 %i.dy, %i.dw
  %i.ea = call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 4)
  %10 = sub i32 %i.dz, %i.ea                      ; 3 uses
  %i.eb = xor i32 %10, %7
  %i.ec = call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 14)
  %i.ed = sub i32 %i.eb, %i.ec                    ; 2 uses
  %11 = xor i32 %i.ed, %i.dy
  %12 = lshr i32 %i.ed, 8
  %13 = sub i32 %11, %12
  %14 = and i32 %13, 1048575
  %15 = uitofp nneg i32 %14 to float
  %16 = fmul nnan float %15, f0x35800000
  %17 = fpext float %16 to double
  %18 = call double @llvm.fmuladd.f64(double %17, double 2.000000e+00, double -1.000000e+00)
  %19 = fptrunc double %18 to float               ; 3 uses
  %20 = add nsw i32 %.0.i.i.i.i, 140
  %21 = xor i32 %20, %i.dg
  %i.ee = sub i32 %21, %i.ds                      ; 4 uses
  %22 = xor i32 %i.ee, %i.bp
  %23 = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 11)
  %24 = sub i32 %22, %23                          ; 4 uses
  %i.ef = xor i32 %24, %i.dg
  %i.eg = call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 25)
  %25 = sub i32 %i.ef, %i.eg                      ; 4 uses
  %26 = xor i32 %25, %i.ee
  %27 = call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 16)
  %28 = sub i32 %26, %27                          ; 4 uses
  %29 = xor i32 %28, %24
  %30 = call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 4)
  %31 = sub i32 %29, %30                          ; 3 uses
  %32 = xor i32 %31, %25
  %33 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 14)
  %34 = sub i32 %32, %33                          ; 2 uses
  %35 = xor i32 %34, %28
  %36 = lshr i32 %34, 8
  %37 = sub i32 %35, %36
  %38 = and i32 %37, 1048575
  %39 = uitofp nneg i32 %38 to float
  %40 = fmul nnan float %39, f0x35800000
  %41 = fpext float %40 to double
  %42 = call double @llvm.fmuladd.f64(double %41, double 2.000000e+00, double -1.000000e+00)
  %i.eh = fptrunc double %42 to float             ; 2 uses
  %i.ei = fmul float %i.eh, %i.eh
  %i.ej = call float @llvm.fmuladd.f32(float %19, float %19, float %i.ei) ; 4 uses
  %i.ek = fcmp ogt float %i.ej, 1.000000e+00
  %i.el = fcmp oeq float %i.ej, 0.000000e+00
  %i.em = or i1 %i.ek, %i.el
  br i1 %i.em, label %.noexc25.i.i.i, label %bb.t, !llvm.loop !1391

bb.t:                                             ; preds = %.noexc25.i.i.i
  %i.en = fpext float %i.ej to double
  %i.eo = call ninf float @llvm.log.f32(float %i.ej)
  %i.ep = fpext ninf float %i.eo to double
  %i.eq = fmul double %i.ep, -2.000000e+00
  %i.er = fdiv double %i.eq, %i.en
  %i.es = call double @llvm.sqrt.f64(double %i.er)
  %i.et = fptrunc double %i.es to float
  %i.eu = fmul float %19, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.do, float %i.eu, float %i.dm)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.1.i.i.i = phi float [ %i.ev, %bb.t ], [ %.042.i.i.i, %bb.r ] ; 2 uses
  %i.ew = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.ew, i64 %indvars.iv.i.i.i
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !157
  %i.ez = uitofp i16 %i.ey to float
  %i.fa = fmul nnan float %i.ez, f0x37800080
  %i.fb = fadd float %.1.i.i.i, %i.fa
  %i.fc = load ptr, ptr %2, align 8, !tbaa !149
  %i.fd = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc)
          to label %.noexc33.i.i.i unwind label %bb.x

.noexc33.i.i.i:                                   ; preds = %bb.u
  %i.fe = icmp eq i32 %i.fd, 3
  br i1 %i.fe, label %bb.v, label %bb.w, !prof !126

bb.v:                                             ; preds = %.noexc33.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v, %.noexc33.i.i.i
  %i.ff = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.fg = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv.i.i.i
  %i.fh = fmul float %i.fb, 6.553500e+04          ; 2 uses
  %i.fi = fcmp olt float %i.fh, 0.000000e+00
  %i.fj = select i1 %i.fi, float -5.000000e-01, float 5.000000e-01
  %i.fk = fadd float %i.fh, %i.fj                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.fk, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.fk, float 0.000000e+00 ; 2 uses
  %i.fl = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.fl, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.fm = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.fm, ptr %i.fg, align 2, !tbaa !157
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fn = load i32, ptr %i.j, align 4, !tbaa !135
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next.i.i.i, %i.fo
  br i1 %i.fp, label %bb.q, label %._crit_edge.i.loopexit.i.i, !llvm.loop !1414

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.p, %bb.l, %bb.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.fr, %bb.y ], [ %i.fq, %bb.x ]
  %i.fs = load ptr, ptr %i.x, align 8, !tbaa !148
  %.not.i35.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i35.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #33
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_ItEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS0_8ImageBufEffbiNS0_3ROIEiEUlS4_E_, ptr %0, align 8, !tbaa !1042
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !102
  store ptr %.val, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1393
  store ptr %i.a, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !102 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #34
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14noise_uniform_IfEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 33 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !102   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1415, !nonnull !82, !align !575
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, %bb.a
  %i.ad = load i8, ptr %i.b, align 8, !tbaa !172, !range !81, !noundef !82
  %i.ae = icmp eq i8 %i.ad, 0
  %.pre6.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !363 ; 3 uses
  %i.af = load i32, ptr %i.d, align 4
  %i.ag = icmp eq i32 %.pre6.pre.i.i, %i.af
  %or.cond.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !364
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !399
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.b
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !366
  %i.al = load i32, ptr %i.h, align 8, !tbaa !367
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !148
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14noise_uniform_IfEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14noise_uniform_IfEEbRNS1_8ImageBufEffbiNS1_3ROIEiEUlS5_E_JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !134 ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !135
  %i.as = icmp slt i32 %i.aq, %i.ar
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !281 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !1500

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !65
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !240  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !239
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !285 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !281 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !286 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !281 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load i64, ptr %i.am, align 8, !tbaa !286 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !1135

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !65
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !74
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !281 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !286 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !1135

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIS6_SaIS6_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_imagebufalgo_draw.cpp() #29 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11OpenImageIO4v3_1L16font_search_dirsB5cxx11E, i8 0, i64 24, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_1L16font_search_dirsB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11OpenImageIO4v3_1L14all_font_filesB5cxx11E, i8 0, i64 24, i1 false)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_1L14all_font_filesB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11OpenImageIO4v3_1L9all_fontsB5cxx11E, i8 0, i64 24, i1 false)
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_1L9all_fontsB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13font_file_mapB5cxx11E, i64 48), ptr @_ZN11OpenImageIO4v3_1L13font_file_mapB5cxx11E, align 8, !tbaa !284
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13font_file_mapB5cxx11E, i64 8), align 8, !tbaa !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13font_file_mapB5cxx11E, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13font_file_mapB5cxx11E, i64 32), align 8, !tbaa !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13font_file_mapB5cxx11E, i64 40), i8 0, i64 16, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_1L13font_file_mapB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11OpenImageIO4v3_1L15s_font_familiesB5cxx11E, i8 0, i64 24, i1 false)
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_1L15s_font_familiesB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13s_font_stylesB5cxx11E, i64 48), ptr @_ZN11OpenImageIO4v3_1L13s_font_stylesB5cxx11E, align 8, !tbaa !239
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13s_font_stylesB5cxx11E, i64 8), align 8, !tbaa !240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13s_font_stylesB5cxx11E, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13s_font_stylesB5cxx11E, i64 32), align 8, !tbaa !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L13s_font_stylesB5cxx11E, i64 40), i8 0, i64 16, i1 false)
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_1L13s_font_stylesB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L26s_font_filename_per_familyB5cxx11E, i64 48), ptr @_ZN11OpenImageIO4v3_1L26s_font_filename_per_familyB5cxx11E, align 8, !tbaa !284
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L26s_font_filename_per_familyB5cxx11E, i64 8), align 8, !tbaa !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L26s_font_filename_per_familyB5cxx11E, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L26s_font_filename_per_familyB5cxx11E, i64 32), align 8, !tbaa !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L26s_font_filename_per_familyB5cxx11E, i64 40), i8 0, i64 16, i1 false)
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_1L26s_font_filename_per_familyB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { cold nounwind }
attributes #37 = { noreturn }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { nounwind allocsize(0) }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!8, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !20}
!22 = !{!23, !5, i64 64}
!23 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !24, i64 64, !25, i64 72, !30, i64 96, !4, i64 120, !4, i64 124, !35, i64 128, !36, i64 136}
!24 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!25 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !10, i64 0}
!30 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!35 = !{!"bool", !5, i64 0}
!36 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !37, i64 0}
!37 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !10, i64 0}
!42 = !{!43, !4, i64 0}
!43 = !{!"_ZTSN11OpenImageIO4v3_16paroptE", !4, i64 0, !44, i64 4, !45, i64 6, !11, i64 8, !46, i64 16, !35, i64 24}
!44 = !{!"_ZTSN11OpenImageIO4v3_16paropt11ParStrategyE", !5, i64 0}
!45 = !{!"_ZTSN11OpenImageIO4v3_16paropt8SplitDirE", !5, i64 0}
!46 = !{!"p1 _ZTSN11OpenImageIO4v3_111thread_poolE", !10, i64 0}
!47 = !{!43, !44, i64 4}
!48 = !{!43, !45, i64 6}
!49 = !{!43, !11, i64 8}
!50 = !{!43, !46, i64 16}
!51 = !{!43, !35, i64 24}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSN11OpenImageIO4v3_18ImageBufE", !10, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 float", !10, i64 0}
!56 = !{!57, !10, i64 24}
!57 = !{!"_ZTSSt8functionIFvN11OpenImageIO4v3_13ROIEEE", !58, i64 0, !10, i64 24}
!58 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!59 = !{!58, !10, i64 16}
!60 = !{!61, !35, i64 0}
!61 = !{!"_ZTSN11OpenImageIO4v3_15TimerE", !35, i64 0, !35, i64 1, !11, i64 8, !11, i64 16, !9, i64 24}
!62 = !{!61, !35, i64 1}
!63 = !{!64, !9, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!65 = !{!66, !11, i64 8}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !64, i64 0, !11, i64 8, !5, i64 16}
!67 = !{!5, !5, i64 0}
!68 = !{!69, !4, i64 64}
!69 = !{!"_ZTSN11OpenImageIO4v3_13pvt11LoggedTimerE", !61, i64 0, !66, i64 32, !4, i64 64}
!70 = !{!71, !11, i64 0}
!71 = !{!"_ZTS8timespec", !11, i64 0, !11, i64 8}
!72 = !{!71, !11, i64 8}
!73 = !{!61, !11, i64 8}
!74 = !{!66, !9, i64 0}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA39_cJRA5_KcRKNS0_8TypeDescEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!77 = distinct !{!77, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA39_cJRA5_KcRKNS0_8TypeDescEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJA5_KcKN11OpenImageIO4v3_18TypeDescEELi2ELi0ELy252EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!80 = distinct !{!80, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJA5_KcKN11OpenImageIO4v3_18TypeDescEELi2ELi0ELy252EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!81 = !{i8 0, i8 2}
!82 = !{}
!83 = !{!61, !9, i64 24}
!84 = !{!61, !11, i64 16}
!85 = !{!86, !86, i64 0}
!86 = !{!"double", !5, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!89 = distinct !{!89, !16, !17}
!90 = distinct !{!90, !16, !17}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !16, !17}
!94 = distinct !{!94, !16, !17}
!95 = distinct !{!95, !20}
!96 = distinct !{!96, !20}
!97 = !{!98, !98, i64 0}
!98 = !{!"p1 _ZTSN11OpenImageIO4v3_13ROIE", !10, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"p2 float", !101, i64 0}
!101 = !{!"any p2 pointer", !10, i64 0}
!102 = !{!10, !10, i64 0}
!103 = distinct !{!103, !16, !17}
!104 = distinct !{!104, !16, !17}
!105 = distinct !{!105, !20}
!106 = distinct !{!106, !20}
!107 = distinct !{!107, !16, !17}
!108 = distinct !{!108, !16, !17}
!109 = distinct !{!109, !20}
!110 = distinct !{!110, !20}
!111 = !{!112, !11, i64 8}
!112 = !{!"_ZTSN11OpenImageIO4v3_14spanIKfLm18446744073709551615EEE", !55, i64 0, !11, i64 8}
!113 = distinct !{!113, !16, !17}
!114 = distinct !{!114, !20}
!115 = distinct !{!115, !20}
!116 = !{!11, !11, i64 0}
!117 = distinct !{!117, !16, !17}
!118 = distinct !{!118, !16, !17}
!119 = distinct !{!119, !20}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !16, !17}
!122 = !{!112, !55, i64 0}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA11_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!125 = distinct !{!125, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA11_cJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!126 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!127 = !{!128, !4, i64 0}
!128 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!129 = !{!128, !4, i64 4}
!130 = !{!128, !4, i64 8}
!131 = !{!128, !4, i64 12}
!132 = !{!128, !4, i64 16}
!133 = !{!128, !4, i64 20}
!134 = !{!128, !4, i64 24}
!135 = !{!128, !4, i64 28}
!136 = distinct !{null}
!137 = !{!138, !138, i64 0}
!138 = !{!"p1 _ZTSSt8functionIFvN11OpenImageIO4v3_13ROIEEE", !10, i64 0}
!139 = !{!140, !10, i64 24}
!140 = !{!"_ZTSSt8functionIFvllllEE", !58, i64 0, !10, i64 24}
!141 = distinct !{!141, !20}
!142 = distinct !{!142, !16, !17}
!143 = !{!23, !4, i64 120}
!144 = !{!145, !9, i64 112}
!145 = !{!"_ZTSN11OpenImageIO4v3_18ImageBuf12IteratorBaseE", !53, i64 0, !35, i64 8, !35, i64 9, !35, i64 10, !35, i64 11, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !146, i64 72, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !11, i64 104, !9, i64 112, !147, i64 120, !35, i64 124, !5, i64 125}
!146 = !{!"p1 _ZTSN11OpenImageIO4v3_114ImageCacheTileE", !10, i64 0}
!147 = !{!"_ZTSN11OpenImageIO4v3_18ImageBuf8WrapModeE", !5, i64 0}
!148 = !{!145, !146, i64 72}
!149 = !{!145, !53, i64 0}
!150 = distinct !{!150, !16}
!151 = distinct !{!151, !16}
!152 = !{!153, !154, i64 0}
!153 = !{!"_ZTSN9Imath_3_14halfE", !154, i64 0}
end_hunk_2
