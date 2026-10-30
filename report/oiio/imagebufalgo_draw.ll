Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_draw?download=true
inline.NumInlined: 7071
inline.NumDeleted: 2345
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_IfEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.w
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !251
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.br = phi i32 [ %.pre.i.i, %._crit_edge.i.loopexit.i.i ], [ %.pre9.pre.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i ]
  %i.bs = add nsw i32 %i.br, 1                    ; 7 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !251
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !258
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.m

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.r, align 1, !tbaa !259, !range !117, !noundef !118
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.g, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.f
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !252
  %.pre10.i.i = load i32, ptr %i.g, align 4, !tbaa !254
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !260, !range !117, !noundef !118
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !261
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !151
  %i.cc = load i32, ptr %i.v, align 8, !tbaa !262
  %.not.i.i3.i.i = icmp slt i32 %i.bs, %i.cc
  br i1 %.not.i.i3.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.i, !prof !157

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  %i.cd = load i8, ptr %i.t, align 2, !tbaa !263, !range !117, !noundef !118
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !261
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ch, ptr %i.o, align 8, !tbaa !151
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !262
  %i.cj = icmp slt i32 %i.bs, %i.ci               ; 3 uses
  %i.ck = load i32, ptr %i.w, align 4
  %i.cl = icmp sge i32 %i.bs, %i.ck
  %not..i.i.i.i = xor i1 %i.cj, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.cl, !prof !264
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.cn, !prof !264
  br i1 %i.co, label %bb.l, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !135

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %2, align 8, !tbaa !153
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !252
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !254
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !265
  %i.ct = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i32 noundef %i.bs, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i1 noundef zeroext %i.cj, i32 noundef %i.cs)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %bb.l
  %i.cu = zext i1 %i.cj to i8
  store ptr %i.ct, ptr %i.o, align 8, !tbaa !151
  store i8 %i.cu, ptr %i.r, align 1, !tbaa !259
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !253 ; 3 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !251
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !252
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  store i32 %i.cx, ptr %i.e, align 8, !tbaa !252
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !266
  %.not.i.i.i = icmp slt i32 %i.cx, %i.cy
  %.pre11.i.i = load i32, ptr %i.g, align 4, !tbaa !254 ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !267 ; 2 uses
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !252
  %i.da = add nsw i32 %.pre11.i.i, 1              ; 3 uses
  store i32 %i.da, ptr %i.g, align 4, !tbaa !254
  %i.db = load i32, ptr %i.h, align 8, !tbaa !255
  %.not1.i.i.i = icmp slt i32 %i.da, %i.db
  br i1 %.not1.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.b, align 8, !tbaa !159
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i2.i.i
  %i.dc = phi i32 [ %.pre11.i.i, %bb.m ], [ %i.da, %bb.n ], [ %.pre10.i.i, %._crit_edge.i2.i.i ]
  %i.dd = phi i32 [ %i.cx, %bb.m ], [ %i.cz, %bb.n ], [ %.pre.i.i.i, %._crit_edge.i2.i.i ]
  %i.de = phi i32 [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.bs, %._crit_edge.i2.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.de, i32 noundef %i.dd, i32 noundef %i.dc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.p, %bb.o, %.noexc4.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.q:                                             ; preds = %bb.w, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  %.02041.i.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.121.i.i.i, %bb.w ]
  %i.df = load i32, ptr %i.i, align 8, !tbaa !143
  %i.dg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 7 uses
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !1392, !nonnull !118
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !164, !range !117, !noundef !118
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !1393, !nonnull !118, !align !334
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !60
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !1394, !nonnull !118, !align !334
  %i.do = load float, ptr %i.dn, align 4, !tbaa !60
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !1395, !nonnull !118, !align !334
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !52
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 14) ; 2 uses
  br label %.noexc25.i.i.i

.noexc25.i.i.i:                                   ; preds = %.noexc25.i.i.i, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.s ], [ %i.dt, %.noexc25.i.i.i ] ; 2 uses
  %i.dt = add nsw i32 %.0.i.i.i.i, 1              ; 2 uses
  %i.du = xor i32 %i.dt, %i.dg
  %i.dv = sub i32 %i.du, %i.ds                    ; 4 uses
  %i.dw = xor i32 %i.dv, %i.bp
  %i.dx = call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 11)
  %i.dy = sub i32 %i.dw, %i.dx                    ; 4 uses
  %i.dz = xor i32 %i.dy, %i.dg
  %i.ea = call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 25)
  %i.eb = sub i32 %i.dz, %i.ea                    ; 4 uses
  %i.ec = xor i32 %i.eb, %i.dv
  %i.ed = call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 16)
  %i.ee = sub i32 %i.ec, %i.ed                    ; 4 uses
  %i.ef = xor i32 %i.ee, %i.dy
  %i.eg = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 4)
  %i.eh = sub i32 %i.ef, %i.eg                    ; 3 uses
  %i.ei = xor i32 %i.eh, %i.eb
  %i.ej = call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 14)
  %i.ek = sub i32 %i.ei, %i.ej                    ; 2 uses
  %i.el = xor i32 %i.ek, %i.ee
  %i.em = lshr i32 %i.ek, 8
  %i.en = sub i32 %i.el, %i.em
  %i.eo = and i32 %i.en, 1048575
  %i.ep = uitofp nneg i32 %i.eo to float
  %i.eq = fmul nnan float %i.ep, f0x35800000
  %i.er = fpext float %i.eq to double
  %i.es = call double @llvm.fmuladd.f64(double %i.er, double 2.000000e+00, double -1.000000e+00)
  %i.et = fptrunc double %i.es to float           ; 3 uses
  %i.eu = add nsw i32 %.0.i.i.i.i, 140
  %i.ev = xor i32 %i.eu, %i.dg
  %i.ew = sub i32 %i.ev, %i.ds                    ; 4 uses
  %i.ex = xor i32 %i.ew, %i.bp
  %i.ey = call i32 @llvm.fshl.i32(i32 %i.ew, i32 %i.ew, i32 11)
  %i.ez = sub i32 %i.ex, %i.ey                    ; 4 uses
  %i.fa = xor i32 %i.ez, %i.dg
  %i.fb = call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 25)
  %i.fc = sub i32 %i.fa, %i.fb                    ; 4 uses
  %i.fd = xor i32 %i.fc, %i.ew
  %i.fe = call i32 @llvm.fshl.i32(i32 %i.fc, i32 %i.fc, i32 16)
  %i.ff = sub i32 %i.fd, %i.fe                    ; 4 uses
  %i.fg = xor i32 %i.ff, %i.ez
  %i.fh = call i32 @llvm.fshl.i32(i32 %i.ff, i32 %i.ff, i32 4)
  %i.fi = sub i32 %i.fg, %i.fh                    ; 3 uses
  %i.fj = xor i32 %i.fi, %i.fc
  %i.fk = call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 14)
  %i.fl = sub i32 %i.fj, %i.fk                    ; 2 uses
  %i.fm = xor i32 %i.fl, %i.ff
  %i.fn = lshr i32 %i.fl, 8
  %i.fo = sub i32 %i.fm, %i.fn
  %i.fp = and i32 %i.fo, 1048575
  %i.fq = uitofp nneg i32 %i.fp to float
  %i.fr = fmul nnan float %i.fq, f0x35800000
  %i.fs = fpext float %i.fr to double
  %i.ft = call double @llvm.fmuladd.f64(double %i.fs, double 2.000000e+00, double -1.000000e+00)
  %i.fu = fptrunc double %i.ft to float           ; 2 uses
  %i.fv = fmul float %i.fu, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.fv) ; 4 uses
  %i.fx = fcmp ogt float %i.fw, 1.000000e+00
  %i.fy = fcmp oeq float %i.fw, 0.000000e+00
  %i.fz = or i1 %i.fx, %i.fy
  br i1 %i.fz, label %.noexc25.i.i.i, label %bb.t, !llvm.loop !45

bb.t:                                             ; preds = %.noexc25.i.i.i
  %i.ga = fpext float %i.fw to double
  %i.gb = call ninf float @llvm.log.f32(float %i.fw)
  %i.gc = fpext ninf float %i.gb to double
  %i.gd = fmul double %i.gc, -2.000000e+00
  %i.ge = fdiv double %i.gd, %i.ga
  %i.gf = call double @llvm.sqrt.f64(double %i.ge)
  %i.gg = fptrunc double %i.gf to float
  %i.gh = fmul float %i.et, %i.gg
  %i.gi = call float @llvm.fmuladd.f32(float %i.do, float %i.gh, float %i.dm)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.121.i.i.i = phi float [ %i.gi, %bb.t ], [ %.02041.i.i.i, %bb.r ] ; 2 uses
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %indvars.iv.i.i.i
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !60
  %i.gm = fadd float %.121.i.i.i, %i.gl
  %i.gn = load ptr, ptr %2, align 8, !tbaa !153
  %i.go = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn)
          to label %.noexc33.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33.i.i.i:                                   ; preds = %bb.u
  %i.gp = icmp eq i32 %i.go, 3
  br i1 %i.gp, label %bb.v, label %bb.w, !prof !135

bb.v:                                             ; preds = %.noexc33.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v, %.noexc33.i.i.i
  %i.gq = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %indvars.iv.i.i.i
  store float %i.gm, ptr %i.gr, align 4, !tbaa !60
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.gs = load i32, ptr %i.j, align 4, !tbaa !144
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvars.iv.next.i.i.i, %i.gt
  br i1 %i.gu, label %bb.q, label %._crit_edge.i.loopexit.i.i, !llvm.loop !1389

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.u, %bb.p, %bb.l, %bb.i
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  %i.gv = load ptr, ptr %i.x, align 8, !tbaa !152
  %.not.i35.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i35.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i, label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #33
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i: ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %lpad.loopexit.split-lp11

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
  store ptr @_ZTIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS0_8ImageBufEffbiNS0_3ROIEiEUlS4_E_, ptr %0, align 8, !tbaa !428
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !130
  store ptr %.val, ptr %0, align 8, !tbaa !130
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !460
  store ptr %i.a, ptr %0, align 8, !tbaa !130
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IfEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !130 ; 2 uses
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
  %.val = load ptr, ptr %0, align 8, !tbaa !130   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1398, !nonnull !118, !align !339
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
  %i.ad = load i8, ptr %i.b, align 8, !tbaa !159, !range !117, !noundef !118
  %i.ae = icmp eq i8 %i.ad, 0
  %.pre9.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !251 ; 3 uses
  %i.af = load i32, ptr %i.d, align 4
  %i.ag = icmp eq i32 %.pre9.pre.i.i, %i.af
  %or.cond.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !252
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !267
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.b
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !254
  %i.al = load i32, ptr %i.h, align 8, !tbaa !255
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !152
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
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !143 ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !144
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.at = load i32, ptr %i.g, align 4, !tbaa !254
  %i.au = load i32, ptr %i.e, align 8, !tbaa !252 ; 4 uses
  %i.av = xor i32 %i.au, %i.at
  %i.aw = call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 14)
  %i.ax = sub i32 %i.av, %i.aw                    ; 4 uses
  %i.ay = xor i32 %i.ax, %.pre9.pre.i.i
  %i.az = call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 11)
  %i.ba = sub i32 %i.ay, %i.az                    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_IhEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.w
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !251
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.br = phi i32 [ %.pre.i.i, %._crit_edge.i.loopexit.i.i ], [ %.pre9.pre.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i ]
  %i.bs = add nsw i32 %i.br, 1                    ; 7 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !251
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !258
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.m

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.r, align 1, !tbaa !259, !range !117, !noundef !118
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.g, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.f
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !252
  %.pre10.i.i = load i32, ptr %i.g, align 4, !tbaa !254
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !260, !range !117, !noundef !118
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !261
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !151
  %i.cc = load i32, ptr %i.v, align 8, !tbaa !262
  %.not.i.i3.i.i = icmp slt i32 %i.bs, %i.cc
  br i1 %.not.i.i3.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.i, !prof !157

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  %i.cd = load i8, ptr %i.t, align 2, !tbaa !263, !range !117, !noundef !118
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !261
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ch, ptr %i.o, align 8, !tbaa !151
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !262
  %i.cj = icmp slt i32 %i.bs, %i.ci               ; 3 uses
  %i.ck = load i32, ptr %i.w, align 4
  %i.cl = icmp sge i32 %i.bs, %i.ck
  %not..i.i.i.i = xor i1 %i.cj, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.cl, !prof !264
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.cn, !prof !264
  br i1 %i.co, label %bb.l, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !135

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %2, align 8, !tbaa !153
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !252
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !254
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !265
  %i.ct = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i32 noundef %i.bs, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i1 noundef zeroext %i.cj, i32 noundef %i.cs)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %bb.l
  %i.cu = zext i1 %i.cj to i8
  store ptr %i.ct, ptr %i.o, align 8, !tbaa !151
  store i8 %i.cu, ptr %i.r, align 1, !tbaa !259
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !253 ; 3 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !251
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !252
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  store i32 %i.cx, ptr %i.e, align 8, !tbaa !252
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !266
  %.not.i.i.i = icmp slt i32 %i.cx, %i.cy
  %.pre11.i.i = load i32, ptr %i.g, align 4, !tbaa !254 ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !267 ; 2 uses
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !252
  %i.da = add nsw i32 %.pre11.i.i, 1              ; 3 uses
  store i32 %i.da, ptr %i.g, align 4, !tbaa !254
  %i.db = load i32, ptr %i.h, align 8, !tbaa !255
  %.not1.i.i.i = icmp slt i32 %i.da, %i.db
  br i1 %.not1.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.b, align 8, !tbaa !159
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i2.i.i
  %i.dc = phi i32 [ %.pre11.i.i, %bb.m ], [ %i.da, %bb.n ], [ %.pre10.i.i, %._crit_edge.i2.i.i ]
  %i.dd = phi i32 [ %i.cx, %bb.m ], [ %i.cz, %bb.n ], [ %.pre.i.i.i, %._crit_edge.i2.i.i ]
  %i.de = phi i32 [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.bs, %._crit_edge.i2.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.de, i32 noundef %i.dd, i32 noundef %i.dc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.p, %bb.o, %.noexc4.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.q:                                             ; preds = %bb.w, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  %.02041.i.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.121.i.i.i, %bb.w ]
  %i.df = load i32, ptr %i.i, align 8, !tbaa !143
  %i.dg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 7 uses
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !1399, !nonnull !118
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !164, !range !117, !noundef !118
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !1400, !nonnull !118, !align !334
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !60
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !1401, !nonnull !118, !align !334
  %i.do = load float, ptr %i.dn, align 4, !tbaa !60
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !1402, !nonnull !118, !align !334
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !52
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 14) ; 2 uses
  br label %.noexc25.i.i.i

.noexc25.i.i.i:                                   ; preds = %.noexc25.i.i.i, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.s ], [ %i.dt, %.noexc25.i.i.i ] ; 2 uses
  %i.dt = add nsw i32 %.0.i.i.i.i, 1              ; 2 uses
  %i.du = xor i32 %i.dt, %i.dg
  %i.dv = sub i32 %i.du, %i.ds                    ; 4 uses
  %i.dw = xor i32 %i.dv, %i.bp
  %i.dx = call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 11)
  %i.dy = sub i32 %i.dw, %i.dx                    ; 4 uses
  %i.dz = xor i32 %i.dy, %i.dg
  %i.ea = call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 25)
  %i.eb = sub i32 %i.dz, %i.ea                    ; 4 uses
  %i.ec = xor i32 %i.eb, %i.dv
  %i.ed = call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 16)
  %i.ee = sub i32 %i.ec, %i.ed                    ; 4 uses
  %i.ef = xor i32 %i.ee, %i.dy
  %i.eg = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 4)
  %i.eh = sub i32 %i.ef, %i.eg                    ; 3 uses
  %i.ei = xor i32 %i.eh, %i.eb
  %i.ej = call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 14)
  %i.ek = sub i32 %i.ei, %i.ej                    ; 2 uses
  %i.el = xor i32 %i.ek, %i.ee
  %i.em = lshr i32 %i.ek, 8
  %i.en = sub i32 %i.el, %i.em
  %i.eo = and i32 %i.en, 1048575
  %i.ep = uitofp nneg i32 %i.eo to float
  %i.eq = fmul nnan float %i.ep, f0x35800000
  %i.er = fpext float %i.eq to double
  %i.es = call double @llvm.fmuladd.f64(double %i.er, double 2.000000e+00, double -1.000000e+00)
  %i.et = fptrunc double %i.es to float           ; 3 uses
  %i.eu = add nsw i32 %.0.i.i.i.i, 140
  %i.ev = xor i32 %i.eu, %i.dg
  %i.ew = sub i32 %i.ev, %i.ds                    ; 4 uses
  %i.ex = xor i32 %i.ew, %i.bp
  %i.ey = call i32 @llvm.fshl.i32(i32 %i.ew, i32 %i.ew, i32 11)
  %i.ez = sub i32 %i.ex, %i.ey                    ; 4 uses
  %i.fa = xor i32 %i.ez, %i.dg
  %i.fb = call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 25)
  %i.fc = sub i32 %i.fa, %i.fb                    ; 4 uses
  %i.fd = xor i32 %i.fc, %i.ew
  %i.fe = call i32 @llvm.fshl.i32(i32 %i.fc, i32 %i.fc, i32 16)
  %i.ff = sub i32 %i.fd, %i.fe                    ; 4 uses
  %i.fg = xor i32 %i.ff, %i.ez
  %i.fh = call i32 @llvm.fshl.i32(i32 %i.ff, i32 %i.ff, i32 4)
  %i.fi = sub i32 %i.fg, %i.fh                    ; 3 uses
  %i.fj = xor i32 %i.fi, %i.fc
  %i.fk = call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 14)
  %i.fl = sub i32 %i.fj, %i.fk                    ; 2 uses
  %i.fm = xor i32 %i.fl, %i.ff
  %i.fn = lshr i32 %i.fl, 8
  %i.fo = sub i32 %i.fm, %i.fn
  %i.fp = and i32 %i.fo, 1048575
  %i.fq = uitofp nneg i32 %i.fp to float
  %i.fr = fmul nnan float %i.fq, f0x35800000
  %i.fs = fpext float %i.fr to double
  %i.ft = call double @llvm.fmuladd.f64(double %i.fs, double 2.000000e+00, double -1.000000e+00)
  %i.fu = fptrunc double %i.ft to float           ; 2 uses
  %i.fv = fmul float %i.fu, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.fv) ; 4 uses
  %i.fx = fcmp ogt float %i.fw, 1.000000e+00
  %i.fy = fcmp oeq float %i.fw, 0.000000e+00
  %i.fz = or i1 %i.fx, %i.fy
  br i1 %i.fz, label %.noexc25.i.i.i, label %bb.t, !llvm.loop !45

bb.t:                                             ; preds = %.noexc25.i.i.i
  %i.ga = fpext float %i.fw to double
  %i.gb = call ninf float @llvm.log.f32(float %i.fw)
  %i.gc = fpext ninf float %i.gb to double
  %i.gd = fmul double %i.gc, -2.000000e+00
  %i.ge = fdiv double %i.gd, %i.ga
  %i.gf = call double @llvm.sqrt.f64(double %i.ge)
  %i.gg = fptrunc double %i.gf to float
  %i.gh = fmul float %i.et, %i.gg
  %i.gi = call float @llvm.fmuladd.f32(float %i.do, float %i.gh, float %i.dm)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.121.i.i.i = phi float [ %i.gi, %bb.t ], [ %.02041.i.i.i, %bb.r ] ; 2 uses
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv.i.i.i
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !109
  %i.gm = uitofp i8 %i.gl to float
  %i.gn = fmul nnan float %i.gm, f0x3B808081
  %i.go = fadd float %.121.i.i.i, %i.gn
  %i.gp = load ptr, ptr %2, align 8, !tbaa !153
  %i.gq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp)
          to label %.noexc33.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33.i.i.i:                                   ; preds = %bb.u
  %i.gr = icmp eq i32 %i.gq, 3
  br i1 %i.gr, label %bb.v, label %bb.w, !prof !135

bb.v:                                             ; preds = %.noexc33.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v, %.noexc33.i.i.i
  %i.gs = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %indvars.iv.i.i.i
  %i.gu = fmul float %i.go, 2.550000e+02          ; 2 uses
  %i.gv = fcmp olt float %i.gu, 0.000000e+00
  %i.gw = select i1 %i.gv, float -5.000000e-01, float 5.000000e-01
  %i.gx = fadd float %i.gu, %i.gw                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.gx, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.gx, float 0.000000e+00 ; 2 uses
  %i.gy = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.gy, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.gz = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.gz, ptr %i.gt, align 1, !tbaa !109
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ha = load i32, ptr %i.j, align 4, !tbaa !144
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp slt i64 %indvars.iv.next.i.i.i, %i.hb
  br i1 %i.hc, label %bb.q, label %._crit_edge.i.loopexit.i.i, !llvm.loop !1396

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.u, %bb.p, %bb.l, %bb.i
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  %i.hd = load ptr, ptr %i.x, align 8, !tbaa !152
  %.not.i35.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i35.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i, label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i: ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %lpad.loopexit.split-lp11

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
  store ptr @_ZTIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS0_8ImageBufEffbiNS0_3ROIEiEUlS4_E_, ptr %0, align 8, !tbaa !428
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !130
  store ptr %.val, ptr %0, align 8, !tbaa !130
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !460
  store ptr %i.a, ptr %0, align 8, !tbaa !130
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IhEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !130 ; 2 uses
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
  %.val = load ptr, ptr %0, align 8, !tbaa !130   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1405, !nonnull !118, !align !339
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
  %i.ad = load i8, ptr %i.b, align 8, !tbaa !159, !range !117, !noundef !118
  %i.ae = icmp eq i8 %i.ad, 0
  %.pre9.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !251 ; 3 uses
  %i.af = load i32, ptr %i.d, align 4
  %i.ag = icmp eq i32 %.pre9.pre.i.i, %i.af
  %or.cond.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !252
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !267
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.b
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !254
  %i.al = load i32, ptr %i.h, align 8, !tbaa !255
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !152
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
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !143 ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !144
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_IN9Imath_3_14halfEEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.am
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !251
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.br = phi i32 [ %.pre.i.i, %._crit_edge.i.loopexit.i.i ], [ %.pre9.pre.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i ]
  %i.bs = add nsw i32 %i.br, 1                    ; 7 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !251
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !258
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.m

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.r, align 1, !tbaa !259, !range !117, !noundef !118
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.g, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.f
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !252
  %.pre10.i.i = load i32, ptr %i.g, align 4, !tbaa !254
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !260, !range !117, !noundef !118
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !261
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !151
  %i.cc = load i32, ptr %i.v, align 8, !tbaa !262
  %.not.i.i3.i.i = icmp slt i32 %i.bs, %i.cc
  br i1 %.not.i.i3.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.i, !prof !157

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  %i.cd = load i8, ptr %i.t, align 2, !tbaa !263, !range !117, !noundef !118
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !261
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ch, ptr %i.o, align 8, !tbaa !151
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !262
  %i.cj = icmp slt i32 %i.bs, %i.ci               ; 3 uses
  %i.ck = load i32, ptr %i.w, align 4
  %i.cl = icmp sge i32 %i.bs, %i.ck
  %not..i.i.i.i = xor i1 %i.cj, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.cl, !prof !264
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.cn, !prof !264
  br i1 %i.co, label %bb.l, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !135

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %2, align 8, !tbaa !153
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !252
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !254
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !265
  %i.ct = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i32 noundef %i.bs, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i1 noundef zeroext %i.cj, i32 noundef %i.cs)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %bb.l
  %i.cu = zext i1 %i.cj to i8
  store ptr %i.ct, ptr %i.o, align 8, !tbaa !151
  store i8 %i.cu, ptr %i.r, align 1, !tbaa !259
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !253 ; 3 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !251
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !252
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  store i32 %i.cx, ptr %i.e, align 8, !tbaa !252
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !266
  %.not.i.i.i = icmp slt i32 %i.cx, %i.cy
  %.pre11.i.i = load i32, ptr %i.g, align 4, !tbaa !254 ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !267 ; 2 uses
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !252
  %i.da = add nsw i32 %.pre11.i.i, 1              ; 3 uses
  store i32 %i.da, ptr %i.g, align 4, !tbaa !254
  %i.db = load i32, ptr %i.h, align 8, !tbaa !255
  %.not1.i.i.i = icmp slt i32 %i.da, %i.db
  br i1 %.not1.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.b, align 8, !tbaa !159
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i2.i.i
  %i.dc = phi i32 [ %.pre11.i.i, %bb.m ], [ %i.da, %bb.n ], [ %.pre10.i.i, %._crit_edge.i2.i.i ]
  %i.dd = phi i32 [ %i.cx, %bb.m ], [ %i.cz, %bb.n ], [ %.pre.i.i.i, %._crit_edge.i2.i.i ]
  %i.de = phi i32 [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.bs, %._crit_edge.i2.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.de, i32 noundef %i.dd, i32 noundef %i.dc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.p, %bb.o, %.noexc4.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.q:                                             ; preds = %bb.am, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.am ] ; 4 uses
  %.02042.i.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.121.i.i.i, %bb.am ]
  %i.df = load i32, ptr %i.i, align 8, !tbaa !143
  %i.dg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 7 uses
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !1406, !nonnull !118
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !164, !range !117, !noundef !118
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !1407, !nonnull !118, !align !334
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !60
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !1408, !nonnull !118, !align !334
  %i.do = load float, ptr %i.dn, align 4, !tbaa !60
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !1409, !nonnull !118, !align !334
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !52
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 14) ; 2 uses
  br label %.noexc25.i.i.i

.noexc25.i.i.i:                                   ; preds = %.noexc25.i.i.i, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.s ], [ %i.dt, %.noexc25.i.i.i ] ; 2 uses
  %i.dt = add nsw i32 %.0.i.i.i.i, 1              ; 2 uses
  %i.du = xor i32 %i.dt, %i.dg
  %i.dv = sub i32 %i.du, %i.ds                    ; 4 uses
  %i.dw = xor i32 %i.dv, %i.bp
  %i.dx = call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 11)
  %i.dy = sub i32 %i.dw, %i.dx                    ; 4 uses
  %i.dz = xor i32 %i.dy, %i.dg
  %i.ea = call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 25)
  %i.eb = sub i32 %i.dz, %i.ea                    ; 4 uses
  %i.ec = xor i32 %i.eb, %i.dv
  %i.ed = call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 16)
  %i.ee = sub i32 %i.ec, %i.ed                    ; 4 uses
  %i.ef = xor i32 %i.ee, %i.dy
  %i.eg = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 4)
  %i.eh = sub i32 %i.ef, %i.eg                    ; 3 uses
  %i.ei = xor i32 %i.eh, %i.eb
  %i.ej = call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 14)
  %i.ek = sub i32 %i.ei, %i.ej                    ; 2 uses
  %i.el = xor i32 %i.ek, %i.ee
  %i.em = lshr i32 %i.ek, 8
  %i.en = sub i32 %i.el, %i.em
  %i.eo = and i32 %i.en, 1048575
  %i.ep = uitofp nneg i32 %i.eo to float
  %i.eq = fmul nnan float %i.ep, f0x35800000
  %i.er = fpext float %i.eq to double
  %i.es = call double @llvm.fmuladd.f64(double %i.er, double 2.000000e+00, double -1.000000e+00)
  %i.et = fptrunc double %i.es to float           ; 3 uses
  %i.eu = add nsw i32 %.0.i.i.i.i, 140
  %i.ev = xor i32 %i.eu, %i.dg
  %i.ew = sub i32 %i.ev, %i.ds                    ; 4 uses
  %i.ex = xor i32 %i.ew, %i.bp
  %i.ey = call i32 @llvm.fshl.i32(i32 %i.ew, i32 %i.ew, i32 11)
  %i.ez = sub i32 %i.ex, %i.ey                    ; 4 uses
  %i.fa = xor i32 %i.ez, %i.dg
  %i.fb = call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 25)
  %i.fc = sub i32 %i.fa, %i.fb                    ; 4 uses
  %i.fd = xor i32 %i.fc, %i.ew
  %i.fe = call i32 @llvm.fshl.i32(i32 %i.fc, i32 %i.fc, i32 16)
  %i.ff = sub i32 %i.fd, %i.fe                    ; 4 uses
  %i.fg = xor i32 %i.ff, %i.ez
  %i.fh = call i32 @llvm.fshl.i32(i32 %i.ff, i32 %i.ff, i32 4)
  %i.fi = sub i32 %i.fg, %i.fh                    ; 3 uses
  %i.fj = xor i32 %i.fi, %i.fc
  %i.fk = call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 14)
  %i.fl = sub i32 %i.fj, %i.fk                    ; 2 uses
  %i.fm = xor i32 %i.fl, %i.ff
  %i.fn = lshr i32 %i.fl, 8
  %i.fo = sub i32 %i.fm, %i.fn
  %i.fp = and i32 %i.fo, 1048575
  %i.fq = uitofp nneg i32 %i.fp to float
  %i.fr = fmul nnan float %i.fq, f0x35800000
  %i.fs = fpext float %i.fr to double
  %i.ft = call double @llvm.fmuladd.f64(double %i.fs, double 2.000000e+00, double -1.000000e+00)
  %i.fu = fptrunc double %i.ft to float           ; 2 uses
  %i.fv = fmul float %i.fu, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.fv) ; 4 uses
  %i.fx = fcmp ogt float %i.fw, 1.000000e+00
  %i.fy = fcmp oeq float %i.fw, 0.000000e+00
  %i.fz = or i1 %i.fx, %i.fy
  br i1 %i.fz, label %.noexc25.i.i.i, label %bb.t, !llvm.loop !45

bb.t:                                             ; preds = %.noexc25.i.i.i
  %i.ga = fpext float %i.fw to double
  %i.gb = call ninf float @llvm.log.f32(float %i.fw)
  %i.gc = fpext ninf float %i.gb to double
  %i.gd = fmul double %i.gc, -2.000000e+00
  %i.ge = fdiv double %i.gd, %i.ga
  %i.gf = call double @llvm.sqrt.f64(double %i.ge)
  %i.gg = fptrunc double %i.gf to float
  %i.gh = fmul float %i.et, %i.gg
  %i.gi = call float @llvm.fmuladd.f32(float %i.do, float %i.gh, float %i.dm)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.121.i.i.i = phi float [ %i.gi, %bb.t ], [ %.02042.i.i.i, %bb.r ] ; 2 uses
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gj, i64 %indvars.iv.i.i.i
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !156 ; 2 uses
  %i.gm = zext i16 %i.gl to i32
  %i.gn = shl nuw nsw i32 %i.gm, 13
  %i.go = and i32 %i.gn, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i.i = sext i16 %i.gl to i32
  %i.gp = and i32 %.signext.i.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.gq = icmp samesign ugt i32 %i.go, 8388607
  br i1 %i.gq, label %bb.v, label %bb.y, !prof !157

bb.v:                                             ; preds = %bb.u
  %i.gr = or disjoint i32 %i.go, %i.gp            ; 2 uses
  %i.gs = icmp samesign ult i32 %i.go, 260046848
  br i1 %i.gs, label %bb.w, label %bb.x, !prof !157

bb.w:                                             ; preds = %bb.v
  %i.gt = add nuw nsw i32 %i.gr, 939524096
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.gu = or i32 %i.gr, 2139095040
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.go, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gv = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.go, i1 true)
  %i.gw = add nsw i32 %i.gv, -8                   ; 2 uses
  %i.gx = shl i32 %i.go, %i.gw
  %i.gy = or i32 %i.gp, %i.gx
  %i.gz = or i32 %i.gy, 947912704
  %i.ha = shl nuw nsw i32 %i.gw, 23
  %i.hb = sub nuw i32 %i.gz, %i.ha
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gt, %bb.w ], [ %i.gu, %bb.x ], [ %i.hb, %bb.z ], [ %i.gp, %bb.y ]
  %i.hc = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i to float
  %i.hd = fadd float %.121.i.i.i, %i.hc           ; 2 uses
  %i.he = load ptr, ptr %2, align 8, !tbaa !153
  %i.hf = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.he)
          to label %.noexc36.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36.i.i.i:                                   ; preds = %bb.aa
  %i.hg = icmp eq i32 %i.hf, 3
  br i1 %i.hg, label %bb.ab, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i, !prof !135

bb.ab:                                            ; preds = %.noexc36.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i: ; preds = %bb.ab, %.noexc36.i.i.i
  %i.hh = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.hi = bitcast float %i.hd to i32
  %i.hj = call float @llvm.fabs.f32(float %i.hd)
  %i.hk = bitcast float %i.hj to i32              ; 10 uses
  %i.hl = lshr i32 %i.hi, 16                      ; 3 uses
  %i.hm = trunc nuw i32 %i.hl to i16
  %i.hn = and i16 %i.hm, -32768                   ; 3 uses
  %i.ho = icmp samesign ugt i32 %i.hk, 947912703
  br i1 %i.ho, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i
  %i.hp = icmp samesign ugt i32 %i.hk, 2139095039
  br i1 %i.hp, label %bb.ad, label %bb.af, !prof !135

bb.ad:                                            ; preds = %bb.ac
  %i.hq = or disjoint i16 %i.hn, 31744            ; 2 uses
  %i.hr = icmp eq i32 %i.hk, 2139095040
  br i1 %i.hr, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hs = lshr i32 %i.hk, 13
  %i.ht = and i32 %i.hs, 1023                     ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 0
  %i.hv = zext i1 %i.hu to i16
  %i.hw = trunc nuw nsw i32 %i.ht to i16
  %i.hx = or i16 %i.hw, %i.hv
  %i.hy = or disjoint i16 %i.hx, %i.hq
  br label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.hz = icmp samesign ugt i32 %i.hk, 1199566847
  br i1 %i.hz, label %bb.ag, label %bb.ah, !prof !135

bb.ag:                                            ; preds = %bb.af
  %i.ia = or disjoint i16 %i.hn, 31744
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.ib = add nuw nsw i32 %i.hk, 134221823
  %i.ic = lshr i32 %i.hk, 13
  %i.id = and i32 %i.ic, 1
  %i.ie = add nuw nsw i32 %i.ib, %i.id
  %i.if = lshr i32 %i.ie, 13
  %i.ig = and i32 %i.hl, 32768
  %i.ih = or i32 %i.if, %i.ig
  %i.ii = trunc i32 %i.ih to i16
  br label %bb.am

bb.ai:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i
  %i.ij = icmp samesign ult i32 %i.hk, 855638017
  br i1 %i.ij, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ik = lshr i32 %i.hk, 23                      ; 2 uses
  %i.il = sub nuw nsw i32 126, %i.ik
  %i.im = and i32 %i.hk, 8388607
  %i.in = or disjoint i32 %i.im, 8388608          ; 2 uses
  %i.io = add nsw i32 %i.ik, -94
  %i.ip = shl i32 %i.in, %i.io                    ; 2 uses
  %i.iq = lshr i32 %i.in, %i.il                   ; 2 uses
  %i.ir = and i32 %i.hl, 32768
  %i.is = or i32 %i.iq, %i.ir
  %i.it = trunc nuw i32 %i.is to i16              ; 2 uses
  %i.iu = icmp ugt i32 %i.ip, -2147483648
  br i1 %i.iu, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iv = icmp ne i32 %i.ip, -2147483648
  %i.iw = and i32 %i.iq, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.iw, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.iv, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ix = add nuw i16 %i.it, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %.033.i.i.i.i.i.i.i.i = phi i16 [ %i.hn, %bb.ai ], [ %i.hy, %bb.ae ], [ %i.ia, %bb.ag ], [ %i.ii, %bb.ah ], [ %i.hq, %bb.ad ], [ %i.ix, %bb.al ], [ %i.it, %bb.ak ]
  %i.iy = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %indvars.iv.i.i.i
  store i16 %.033.i.i.i.i.i.i.i.i, ptr %i.iy, align 2, !tbaa !158
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.iz = load i32, ptr %i.j, align 4, !tbaa !144
  %i.ja = sext i32 %i.iz to i64
  %i.jb = icmp slt i64 %indvars.iv.next.i.i.i, %i.ja
  br i1 %i.jb, label %bb.q, label %._crit_edge.i.loopexit.i.i, !llvm.loop !1403

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.aa, %bb.p, %bb.l, %bb.i
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  %i.jc = load ptr, ptr %i.x, align 8, !tbaa !152
  %.not.i34.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i34.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit35.i.i.i, label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit35.i.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #33
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit35.i.i.i: ; preds = %bb.an, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %lpad.loopexit.split-lp14

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
  store ptr @_ZTIZN11OpenImageIO4v3_1L15noise_gaussian_IN9Imath_3_14halfEEEbRNS0_8ImageBufEffbiNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !428
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IN9Imath_3_14halfEEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !130
  store ptr %.val, ptr %0, align 8, !tbaa !130
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_IN9Imath_3_14halfEEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15noise_gaussian_ItEEbRNS1_8ImageBufEffbiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

._crit_edge.i.loopexit.i.i:                       ; preds = %bb.w
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !251
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.br = phi i32 [ %.pre.i.i, %._crit_edge.i.loopexit.i.i ], [ %.pre9.pre.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i ]
  %i.bs = add nsw i32 %i.br, 1                    ; 7 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !251
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !258
  %i.bu = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.m

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.r, align 1, !tbaa !259, !range !117, !noundef !118
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.g, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.f
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !252
  %.pre10.i.i = load i32, ptr %i.g, align 4, !tbaa !254
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !260, !range !117, !noundef !118
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !261
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !151
  %i.cc = load i32, ptr %i.v, align 8, !tbaa !262
  %.not.i.i3.i.i = icmp slt i32 %i.bs, %i.cc
  br i1 %.not.i.i3.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.i, !prof !157

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  %i.cd = load i8, ptr %i.t, align 2, !tbaa !263, !range !117, !noundef !118
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !261
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ch, ptr %i.o, align 8, !tbaa !151
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !262
  %i.cj = icmp slt i32 %i.bs, %i.ci               ; 3 uses
  %i.ck = load i32, ptr %i.w, align 4
  %i.cl = icmp sge i32 %i.bs, %i.ck
  %not..i.i.i.i = xor i1 %i.cj, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.cl, !prof !264
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.cn, !prof !264
  br i1 %i.co, label %bb.l, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !135

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %2, align 8, !tbaa !153
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !252
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !254
  %i.cs = load i32, ptr %i.ac, align 8, !tbaa !265
  %i.ct = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i32 noundef %i.bs, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i1 noundef zeroext %i.cj, i32 noundef %i.cs)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %bb.l
  %i.cu = zext i1 %i.cj to i8
  store ptr %i.ct, ptr %i.o, align 8, !tbaa !151
  store i8 %i.cu, ptr %i.r, align 1, !tbaa !259
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !253 ; 3 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !251
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !252
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  store i32 %i.cx, ptr %i.e, align 8, !tbaa !252
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !266
  %.not.i.i.i = icmp slt i32 %i.cx, %i.cy
  %.pre11.i.i = load i32, ptr %i.g, align 4, !tbaa !254 ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !267 ; 2 uses
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !252
  %i.da = add nsw i32 %.pre11.i.i, 1              ; 3 uses
  store i32 %i.da, ptr %i.g, align 4, !tbaa !254
  %i.db = load i32, ptr %i.h, align 8, !tbaa !255
  %.not1.i.i.i = icmp slt i32 %i.da, %i.db
  br i1 %.not1.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.b, align 8, !tbaa !159
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i2.i.i
  %i.dc = phi i32 [ %.pre11.i.i, %bb.m ], [ %i.da, %bb.n ], [ %.pre10.i.i, %._crit_edge.i2.i.i ]
  %i.dd = phi i32 [ %i.cx, %bb.m ], [ %i.cz, %bb.n ], [ %.pre.i.i.i, %._crit_edge.i2.i.i ]
  %i.de = phi i32 [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.bs, %._crit_edge.i2.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.de, i32 noundef %i.dd, i32 noundef %i.dc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.p, %bb.o, %.noexc4.i.i, %bb.k, %bb.j, %bb.i, %bb.h
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.q:                                             ; preds = %bb.w, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  %.02041.i.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.121.i.i.i, %bb.w ]
  %i.df = load i32, ptr %i.i, align 8, !tbaa !143
  %i.dg = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 7 uses
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !1413, !nonnull !118
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !164, !range !117, !noundef !118
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !1414, !nonnull !118, !align !334
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !60
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !1415, !nonnull !118, !align !334
  %i.do = load float, ptr %i.dn, align 4, !tbaa !60
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !1416, !nonnull !118, !align !334
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !52
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 14) ; 2 uses
  br label %.noexc25.i.i.i

.noexc25.i.i.i:                                   ; preds = %.noexc25.i.i.i, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.s ], [ %i.dt, %.noexc25.i.i.i ] ; 2 uses
  %i.dt = add nsw i32 %.0.i.i.i.i, 1              ; 2 uses
  %i.du = xor i32 %i.dt, %i.dg
  %i.dv = sub i32 %i.du, %i.ds                    ; 4 uses
  %i.dw = xor i32 %i.dv, %i.bp
  %i.dx = call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 11)
  %i.dy = sub i32 %i.dw, %i.dx                    ; 4 uses
  %i.dz = xor i32 %i.dy, %i.dg
  %i.ea = call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 25)
  %i.eb = sub i32 %i.dz, %i.ea                    ; 4 uses
  %i.ec = xor i32 %i.eb, %i.dv
  %i.ed = call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 16)
  %i.ee = sub i32 %i.ec, %i.ed                    ; 4 uses
  %i.ef = xor i32 %i.ee, %i.dy
  %i.eg = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 4)
  %i.eh = sub i32 %i.ef, %i.eg                    ; 3 uses
  %i.ei = xor i32 %i.eh, %i.eb
  %i.ej = call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 14)
  %i.ek = sub i32 %i.ei, %i.ej                    ; 2 uses
  %i.el = xor i32 %i.ek, %i.ee
  %i.em = lshr i32 %i.ek, 8
  %i.en = sub i32 %i.el, %i.em
  %i.eo = and i32 %i.en, 1048575
  %i.ep = uitofp nneg i32 %i.eo to float
  %i.eq = fmul nnan float %i.ep, f0x35800000
  %i.er = fpext float %i.eq to double
  %i.es = call double @llvm.fmuladd.f64(double %i.er, double 2.000000e+00, double -1.000000e+00)
  %i.et = fptrunc double %i.es to float           ; 3 uses
  %i.eu = add nsw i32 %.0.i.i.i.i, 140
  %i.ev = xor i32 %i.eu, %i.dg
  %i.ew = sub i32 %i.ev, %i.ds                    ; 4 uses
  %i.ex = xor i32 %i.ew, %i.bp
  %i.ey = call i32 @llvm.fshl.i32(i32 %i.ew, i32 %i.ew, i32 11)
  %i.ez = sub i32 %i.ex, %i.ey                    ; 4 uses
  %i.fa = xor i32 %i.ez, %i.dg
  %i.fb = call i32 @llvm.fshl.i32(i32 %i.ez, i32 %i.ez, i32 25)
  %i.fc = sub i32 %i.fa, %i.fb                    ; 4 uses
  %i.fd = xor i32 %i.fc, %i.ew
  %i.fe = call i32 @llvm.fshl.i32(i32 %i.fc, i32 %i.fc, i32 16)
  %i.ff = sub i32 %i.fd, %i.fe                    ; 4 uses
  %i.fg = xor i32 %i.ff, %i.ez
  %i.fh = call i32 @llvm.fshl.i32(i32 %i.ff, i32 %i.ff, i32 4)
  %i.fi = sub i32 %i.fg, %i.fh                    ; 3 uses
  %i.fj = xor i32 %i.fi, %i.fc
  %i.fk = call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 14)
  %i.fl = sub i32 %i.fj, %i.fk                    ; 2 uses
  %i.fm = xor i32 %i.fl, %i.ff
  %i.fn = lshr i32 %i.fl, 8
  %i.fo = sub i32 %i.fm, %i.fn
  %i.fp = and i32 %i.fo, 1048575
  %i.fq = uitofp nneg i32 %i.fp to float
  %i.fr = fmul nnan float %i.fq, f0x35800000
  %i.fs = fpext float %i.fr to double
  %i.ft = call double @llvm.fmuladd.f64(double %i.fs, double 2.000000e+00, double -1.000000e+00)
  %i.fu = fptrunc double %i.ft to float           ; 2 uses
  %i.fv = fmul float %i.fu, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.fv) ; 4 uses
  %i.fx = fcmp ogt float %i.fw, 1.000000e+00
  %i.fy = fcmp oeq float %i.fw, 0.000000e+00
  %i.fz = or i1 %i.fx, %i.fy
  br i1 %i.fz, label %.noexc25.i.i.i, label %bb.t, !llvm.loop !45

bb.t:                                             ; preds = %.noexc25.i.i.i
  %i.ga = fpext float %i.fw to double
  %i.gb = call ninf float @llvm.log.f32(float %i.fw)
  %i.gc = fpext ninf float %i.gb to double
  %i.gd = fmul double %i.gc, -2.000000e+00
  %i.ge = fdiv double %i.gd, %i.ga
  %i.gf = call double @llvm.sqrt.f64(double %i.ge)
  %i.gg = fptrunc double %i.gf to float
  %i.gh = fmul float %i.et, %i.gg
  %i.gi = call float @llvm.fmuladd.f32(float %i.do, float %i.gh, float %i.dm)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.121.i.i.i = phi float [ %i.gi, %bb.t ], [ %.02041.i.i.i, %bb.r ] ; 2 uses
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gj, i64 %indvars.iv.i.i.i
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !158
  %i.gm = uitofp i16 %i.gl to float
  %i.gn = fmul nnan float %i.gm, f0x37800080
  %i.go = fadd float %.121.i.i.i, %i.gn
  %i.gp = load ptr, ptr %2, align 8, !tbaa !153
  %i.gq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp)
          to label %.noexc33.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33.i.i.i:                                   ; preds = %bb.u
  %i.gr = icmp eq i32 %i.gq, 3
  br i1 %i.gr, label %bb.v, label %bb.w, !prof !135

bb.v:                                             ; preds = %.noexc33.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v, %.noexc33.i.i.i
  %i.gs = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %indvars.iv.i.i.i
  %i.gu = fmul float %i.go, 6.553500e+04          ; 2 uses
  %i.gv = fcmp olt float %i.gu, 0.000000e+00
  %i.gw = select i1 %i.gv, float -5.000000e-01, float 5.000000e-01
  %i.gx = fadd float %i.gu, %i.gw                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.gx, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.gx, float 0.000000e+00 ; 2 uses
  %i.gy = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.gy, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.gz = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.gz, ptr %i.gt, align 2, !tbaa !158
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ha = load i32, ptr %i.j, align 4, !tbaa !144
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp slt i64 %indvars.iv.next.i.i.i, %i.hb
  br i1 %i.hc, label %bb.q, label %._crit_edge.i.loopexit.i.i, !llvm.loop !1410

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.u, %bb.p, %bb.l, %bb.i
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  %i.hd = load ptr, ptr %i.x, align 8, !tbaa !152
  %.not.i35.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i35.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i, label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit36.i.i.i: ; preds = %bb.x, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %lpad.loopexit.split-lp11

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
  store ptr @_ZTIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS0_8ImageBufEffbiNS0_3ROIEiEUlS4_E_, ptr %0, align 8, !tbaa !428
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !130
  store ptr %.val, ptr %0, align 8, !tbaa !130
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !460
  store ptr %i.a, ptr %0, align 8, !tbaa !130
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15noise_gaussian_ItEEbRNS2_8ImageBufEffbiNS2_3ROIEiEUlS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !130 ; 2 uses
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
  %.val = load ptr, ptr %0, align 8, !tbaa !130   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1419, !nonnull !118, !align !339
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
  %i.ad = load i8, ptr %i.b, align 8, !tbaa !159, !range !117, !noundef !118
  %i.ae = icmp eq i8 %i.ad, 0
  %.pre7.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !251 ; 3 uses
  %i.af = load i32, ptr %i.d, align 4
  %i.ag = icmp eq i32 %.pre7.pre.i.i, %i.af
  %or.cond.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !252
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !267
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.b
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !254
  %i.al = load i32, ptr %i.h, align 8, !tbaa !255
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !152
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
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !143 ; 2 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !144
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
end_hunk_3
