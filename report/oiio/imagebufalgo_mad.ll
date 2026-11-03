Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_mad?download=true
inline.NumInlined: 4684
inline.NumDeleted: 1360
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8mad_implIhhEEbRNS1_8ImageBufERKS5_S8_S8_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 11
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 92 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 124
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.preheader.i.i.i
  %i.ct = load i8, ptr %i.h, align 8, !tbaa !287, !range !98, !noundef !99
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i
  %i.cv = load i32, ptr %i.i, align 4, !tbaa !288
  %i.cw = load i32, ptr %i.j, align 4, !tbaa !289
  %i.cx = icmp eq i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.cy = load i32, ptr %i.k, align 8, !tbaa !290
  %i.cz = load i32, ptr %i.l, align 4, !tbaa !291
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.db = load i32, ptr %i.m, align 4, !tbaa !292
  %i.dc = load i32, ptr %i.n, align 8, !tbaa !293
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.ba, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i
  %i.de = load i32, ptr %i.o, align 8, !tbaa !294 ; 2 uses
  %i.df = load i32, ptr %i.p, align 4, !tbaa !282
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.dh = sext i32 %i.de to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.s, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.di = load i32, ptr %i.i, align 4, !tbaa !288
  %i.dj = add nsw i32 %i.di, 1                    ; 7 uses
  store i32 %i.dj, ptr %i.i, align 4, !tbaa !288
  %i.dk = load i32, ptr %i.u, align 8, !tbaa !295
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.d, label %bb.k

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.dm = load i8, ptr %i.w, align 1, !tbaa !296, !range !98, !noundef !99
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.e, label %._crit_edge.i32.i.i

._crit_edge.i32.i.i:                              ; preds = %bb.d
  %.pre.i34.i.i = load i32, ptr %i.k, align 8, !tbaa !290
  %.pre.i.i = load i32, ptr %i.m, align 4, !tbaa !292
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.do = load i8, ptr %i.x, align 1, !tbaa !297, !range !98, !noundef !99
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.dq = load i64, ptr %i.z, align 8, !tbaa !298
  %i.dr = load ptr, ptr %i.t, align 8, !tbaa !299
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.dq
  store ptr %i.ds, ptr %i.t, align 8, !tbaa !299
  %i.dt = load i32, ptr %i.aa, align 8, !tbaa !300
  %.not.i.i37.i.i = icmp slt i32 %i.dj, %i.dt
  br i1 %.not.i.i37.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i, label %bb.g, !prof !58

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.du = load i8, ptr %i.y, align 2, !tbaa !301, !range !98, !noundef !99
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dw = load i64, ptr %i.z, align 8, !tbaa !298
  %i.dx = load ptr, ptr %i.t, align 8, !tbaa !299
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.dw
  store ptr %i.dy, ptr %i.t, align 8, !tbaa !299
  %i.dz = load i32, ptr %i.aa, align 8, !tbaa !300
  %i.ea = icmp slt i32 %i.dj, %i.dz               ; 3 uses
  %i.eb = load i32, ptr %i.ab, align 4
  %i.ec = icmp sge i32 %i.dj, %i.eb
  %not..i.i35.i.i = xor i1 %i.ea, true
  %or.cond.i.i36.i.i = select i1 %not..i.i35.i.i, i1 true, i1 %i.ec, !prof !302
  %i.ed = load ptr, ptr %i.ac, align 8
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = select i1 %or.cond.i.i36.i.i, i1 true, i1 %i.ee, !prof !302
  br i1 %i.ef, label %bb.j, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i, !prof !303

bb.j:                                             ; preds = %bb.i
  %i.eg = load ptr, ptr %2, align 8, !tbaa !304
  %i.eh = load i32, ptr %i.k, align 8, !tbaa !290
  %i.ei = load i32, ptr %i.m, align 4, !tbaa !292
  %i.ej = load i32, ptr %i.ah, align 8, !tbaa !305
  %i.ek = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i32 noundef %i.dj, i32 noundef %i.eh, i32 noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i1 noundef zeroext %i.ea, i32 noundef %i.ej)
          to label %.noexc39.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39.i.i:                                     ; preds = %bb.j
  %i.el = zext i1 %i.ea to i8
  store ptr %i.ek, ptr %i.t, align 8, !tbaa !299
  store i8 %i.el, ptr %i.w, align 1, !tbaa !296
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.em = load i32, ptr %i.j, align 4, !tbaa !289 ; 3 uses
  store i32 %i.em, ptr %i.i, align 4, !tbaa !288
  %i.en = load i32, ptr %i.k, align 8, !tbaa !290
  %i.eo = add nsw i32 %i.en, 1                    ; 3 uses
  store i32 %i.eo, ptr %i.k, align 8, !tbaa !290
  %i.ep = load i32, ptr %i.v, align 8, !tbaa !306
  %.not.i30.i.i = icmp slt i32 %i.eo, %i.ep
  %.pre43.i.i = load i32, ptr %i.m, align 4, !tbaa !292 ; 2 uses
  br i1 %.not.i30.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eq = load i32, ptr %i.l, align 4, !tbaa !291 ; 2 uses
  store i32 %i.eq, ptr %i.k, align 8, !tbaa !290
  %i.er = add nsw i32 %.pre43.i.i, 1              ; 3 uses
  store i32 %i.er, ptr %i.m, align 4, !tbaa !292
  %i.es = load i32, ptr %i.n, align 8, !tbaa !293
  %.not1.i31.i.i = icmp slt i32 %i.er, %i.es
  br i1 %.not1.i31.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.h, align 8, !tbaa !287
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i

bb.n:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i32.i.i
  %i.et = phi i32 [ %.pre43.i.i, %bb.k ], [ %i.er, %bb.l ], [ %.pre.i.i, %._crit_edge.i32.i.i ]
  %i.eu = phi i32 [ %i.eo, %bb.k ], [ %i.eq, %bb.l ], [ %.pre.i34.i.i, %._crit_edge.i32.i.i ]
  %i.ev = phi i32 [ %i.em, %bb.k ], [ %i.em, %bb.l ], [ %i.dj, %._crit_edge.i32.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ev, i32 noundef %i.eu, i32 noundef %i.et)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.a
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit19.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dh, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.s ] ; 5 uses
  %i.ez = load ptr, ptr %i.q, align 8, !tbaa !299
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 %indvars.iv.i.i.i
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !64
  %i.fc = uitofp i8 %i.fb to float
  %i.fd = fmul nnan float %i.fc, f0x3B808081
  %i.fe = load ptr, ptr %i.r, align 8, !tbaa !299
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %indvars.iv.i.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !64
  %i.fh = uitofp i8 %i.fg to float
  %i.fi = fmul nnan float %i.fh, f0x3B808081
  %i.fj = load ptr, ptr %i.s, align 8, !tbaa !299
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %indvars.iv.i.i.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !64
  %i.fm = uitofp i8 %i.fl to float
  %i.fn = fmul nnan float %i.fm, f0x3B808081
  %i.fo = call float @llvm.fmuladd.f32(float %i.fd, float %i.fi, float %i.fn)
  %i.fp = load ptr, ptr %2, align 8, !tbaa !304
  %i.fq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.fr = icmp eq i32 %i.fq, 3
  br i1 %i.fr, label %bb.r, label %bb.s, !prof !303

bb.r:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r, %.noexc.i.i.i
  %i.fs = load ptr, ptr %i.t, align 8, !tbaa !299
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %indvars.iv.i.i.i
  %i.fu = fmul float %i.fo, 2.550000e+02          ; 2 uses
  %7 = fcmp olt float %i.fu, 0.000000e+00
  %8 = select i1 %7, float -5.000000e-01, float 5.000000e-01
  %i.fv = fadd float %i.fu, %8                    ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.fv, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.fv, float 0.000000e+00 ; 2 uses
  %i.fw = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.fw, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.fx = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.fx, ptr %i.ft, align 1, !tbaa !64
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fy = load i32, ptr %i.p, align 4, !tbaa !282
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp slt i64 %indvars.iv.next.i.i.i, %i.fz
  br i1 %i.ga, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !808

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %.lr.ph.i.i.i, %bb.az, %bb.av, %bb.as, %bb.ao, %bb.ak, %bb.ah, %bb.ad, %bb.z, %bb.w, %bb.n, %bb.j, %bb.g
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %5) #28
  br label %bb.bj

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i: ; preds = %bb.n, %bb.m, %.noexc39.i.i, %bb.i, %bb.h, %bb.g, %bb.f
  %i.gb = load i32, ptr %i.ai, align 4, !tbaa !288
  %i.gc = add nsw i32 %i.gb, 1                    ; 7 uses
  store i32 %i.gc, ptr %i.ai, align 4, !tbaa !288
  %i.gd = load i32, ptr %i.aj, align 8, !tbaa !295
  %i.ge = icmp slt i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i
  %i.gf = load i8, ptr %i.ar, align 1, !tbaa !296, !range !98, !noundef !99
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.u, label %._crit_edge.i20.i.i

._crit_edge.i20.i.i:                              ; preds = %bb.t
  %.pre.i22.i.i = load i32, ptr %i.al, align 8, !tbaa !290
  %.pre44.i.i = load i32, ptr %i.ao, align 4, !tbaa !292
  br label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.gh = load i8, ptr %i.as, align 1, !tbaa !297, !range !98, !noundef !99
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gj = load i64, ptr %i.au, align 8, !tbaa !298
  %i.gk = load ptr, ptr %i.q, align 8, !tbaa !299
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gj
  store ptr %i.gl, ptr %i.q, align 8, !tbaa !299
  %i.gm = load i32, ptr %i.av, align 8, !tbaa !300
  %.not.i.i25.i.i = icmp slt i32 %i.gc, %i.gm
  br i1 %.not.i.i25.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i, label %bb.w, !prof !58

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.u
  %i.gn = load i8, ptr %i.at, align 2, !tbaa !301, !range !98, !noundef !99
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gp = load i64, ptr %i.au, align 8, !tbaa !298
  %i.gq = load ptr, ptr %i.q, align 8, !tbaa !299
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gp
  store ptr %i.gr, ptr %i.q, align 8, !tbaa !299
  %i.gs = load i32, ptr %i.av, align 8, !tbaa !300
  %i.gt = icmp slt i32 %i.gc, %i.gs               ; 3 uses
  %i.gu = load i32, ptr %i.aw, align 4
  %i.gv = icmp sge i32 %i.gc, %i.gu
  %not..i.i23.i.i = xor i1 %i.gt, true
  %or.cond.i.i24.i.i = select i1 %not..i.i23.i.i, i1 true, i1 %i.gv, !prof !302
  %i.gw = load ptr, ptr %i.ax, align 8
  %i.gx = icmp eq ptr %i.gw, null
  %i.gy = select i1 %or.cond.i.i24.i.i, i1 true, i1 %i.gx, !prof !302
  br i1 %i.gy, label %bb.z, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i, !prof !303

bb.z:                                             ; preds = %bb.y
  %i.gz = load ptr, ptr %3, align 8, !tbaa !304
  %i.ha = load i32, ptr %i.al, align 8, !tbaa !290
  %i.hb = load i32, ptr %i.ao, align 4, !tbaa !292
  %i.hc = load i32, ptr %i.bc, align 8, !tbaa !305
  %i.hd = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i32 noundef %i.gc, i32 noundef %i.ha, i32 noundef %i.hb, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i1 noundef zeroext %i.gt, i32 noundef %i.hc)
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27.i.i:                                     ; preds = %bb.z
  %i.he = zext i1 %i.gt to i8
  store ptr %i.hd, ptr %i.q, align 8, !tbaa !299
  store i8 %i.he, ptr %i.ar, align 1, !tbaa !296
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i

bb.aa:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i
  %i.hf = load i32, ptr %i.ak, align 4, !tbaa !289 ; 3 uses
  store i32 %i.hf, ptr %i.ai, align 4, !tbaa !288
  %i.hg = load i32, ptr %i.al, align 8, !tbaa !290
  %i.hh = add nsw i32 %i.hg, 1                    ; 3 uses
  store i32 %i.hh, ptr %i.al, align 8, !tbaa !290
  %i.hi = load i32, ptr %i.am, align 8, !tbaa !306
  %.not.i18.i.i = icmp slt i32 %i.hh, %i.hi
  %.pre45.i.i = load i32, ptr %i.ao, align 4, !tbaa !292 ; 2 uses
  br i1 %.not.i18.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = load i32, ptr %i.an, align 4, !tbaa !291 ; 2 uses
  store i32 %i.hj, ptr %i.al, align 8, !tbaa !290
  %i.hk = add nsw i32 %.pre45.i.i, 1              ; 3 uses
  store i32 %i.hk, ptr %i.ao, align 4, !tbaa !292
  %i.hl = load i32, ptr %i.ap, align 8, !tbaa !293
  %.not1.i19.i.i = icmp slt i32 %i.hk, %i.hl
  br i1 %.not1.i19.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.aq, align 8, !tbaa !287
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i20.i.i
  %i.hm = phi i32 [ %.pre45.i.i, %bb.aa ], [ %i.hk, %bb.ab ], [ %.pre44.i.i, %._crit_edge.i20.i.i ]
  %i.hn = phi i32 [ %i.hh, %bb.aa ], [ %i.hj, %bb.ab ], [ %.pre.i22.i.i, %._crit_edge.i20.i.i ]
  %i.ho = phi i32 [ %i.hf, %bb.aa ], [ %i.hf, %bb.ab ], [ %i.gc, %._crit_edge.i20.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.ho, i32 noundef %i.hn, i32 noundef %i.hm)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i: ; preds = %bb.ad, %bb.ac, %.noexc27.i.i, %bb.y, %bb.x, %bb.w, %bb.v
  %i.hp = load i32, ptr %i.bd, align 4, !tbaa !288
  %i.hq = add nsw i32 %i.hp, 1                    ; 7 uses
  store i32 %i.hq, ptr %i.bd, align 4, !tbaa !288
  %i.hr = load i32, ptr %i.be, align 8, !tbaa !295
  %i.hs = icmp slt i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i
  %i.ht = load i8, ptr %i.bm, align 1, !tbaa !296, !range !98, !noundef !99
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.af, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.ae
  %.pre.i10.i.i = load i32, ptr %i.bg, align 8, !tbaa !290
  %.pre46.i.i = load i32, ptr %i.bj, align 4, !tbaa !292
  br label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.hv = load i8, ptr %i.bn, align 1, !tbaa !297, !range !98, !noundef !99
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hx = load i64, ptr %i.bp, align 8, !tbaa !298
  %i.hy = load ptr, ptr %i.r, align 8, !tbaa !299
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 %i.hx
  store ptr %i.hz, ptr %i.r, align 8, !tbaa !299
  %i.ia = load i32, ptr %i.bq, align 8, !tbaa !300
  %.not.i.i13.i.i = icmp slt i32 %i.hq, %i.ia
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.ah, !prof !58

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.af
  %i.ib = load i8, ptr %i.bo, align 2, !tbaa !301, !range !98, !noundef !99
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.id = load i64, ptr %i.bp, align 8, !tbaa !298
  %i.ie = load ptr, ptr %i.r, align 8, !tbaa !299
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 %i.id
  store ptr %i.if, ptr %i.r, align 8, !tbaa !299
  %i.ig = load i32, ptr %i.bq, align 8, !tbaa !300
  %i.ih = icmp slt i32 %i.hq, %i.ig               ; 3 uses
  %i.ii = load i32, ptr %i.br, align 4
  %i.ij = icmp sge i32 %i.hq, %i.ii
  %not..i.i11.i.i = xor i1 %i.ih, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.ij, !prof !302
  %i.ik = load ptr, ptr %i.bs, align 8
  %i.il = icmp eq ptr %i.ik, null
  %i.im = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.il, !prof !302
  br i1 %i.im, label %bb.ak, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, !prof !303

bb.ak:                                            ; preds = %bb.aj
  %i.in = load ptr, ptr %4, align 8, !tbaa !304
  %i.io = load i32, ptr %i.bg, align 8, !tbaa !290
  %i.ip = load i32, ptr %i.bj, align 4, !tbaa !292
  %i.iq = load i32, ptr %i.bx, align 8, !tbaa !305
  %i.ir = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i32 noundef %i.hq, i32 noundef %i.io, i32 noundef %i.ip, ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 1 dereferenceable(1) %i.bw, i1 noundef zeroext %i.ih, i32 noundef %i.iq)
          to label %.noexc15.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15.i.i:                                     ; preds = %bb.ak
  %i.is = zext i1 %i.ih to i8
  store ptr %i.ir, ptr %i.r, align 8, !tbaa !299
  store i8 %i.is, ptr %i.bm, align 1, !tbaa !296
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i
  %i.it = load i32, ptr %i.bf, align 4, !tbaa !289 ; 3 uses
  store i32 %i.it, ptr %i.bd, align 4, !tbaa !288
  %i.iu = load i32, ptr %i.bg, align 8, !tbaa !290
  %i.iv = add nsw i32 %i.iu, 1                    ; 3 uses
  store i32 %i.iv, ptr %i.bg, align 8, !tbaa !290
  %i.iw = load i32, ptr %i.bh, align 8, !tbaa !306
  %.not.i6.i.i = icmp slt i32 %i.iv, %i.iw
  %.pre47.i.i = load i32, ptr %i.bj, align 4, !tbaa !292 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ix = load i32, ptr %i.bi, align 4, !tbaa !291 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8mad_implIttEEbRNS1_8ImageBufERKS5_S8_S8_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 11
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 92 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 124
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.preheader.i.i.i
  %i.ct = load i8, ptr %i.h, align 8, !tbaa !287, !range !98, !noundef !99
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i
  %i.cv = load i32, ptr %i.i, align 4, !tbaa !288
  %i.cw = load i32, ptr %i.j, align 4, !tbaa !289
  %i.cx = icmp eq i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.cy = load i32, ptr %i.k, align 8, !tbaa !290
  %i.cz = load i32, ptr %i.l, align 4, !tbaa !291
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.db = load i32, ptr %i.m, align 4, !tbaa !292
  %i.dc = load i32, ptr %i.n, align 8, !tbaa !293
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.ba, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit20.i.i.i
  %i.de = load i32, ptr %i.o, align 8, !tbaa !294 ; 2 uses
  %i.df = load i32, ptr %i.p, align 4, !tbaa !282
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.dh = sext i32 %i.de to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.s, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.di = load i32, ptr %i.i, align 4, !tbaa !288
  %i.dj = add nsw i32 %i.di, 1                    ; 7 uses
  store i32 %i.dj, ptr %i.i, align 4, !tbaa !288
  %i.dk = load i32, ptr %i.u, align 8, !tbaa !295
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.d, label %bb.k

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.dm = load i8, ptr %i.w, align 1, !tbaa !296, !range !98, !noundef !99
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.e, label %._crit_edge.i32.i.i

._crit_edge.i32.i.i:                              ; preds = %bb.d
  %.pre.i34.i.i = load i32, ptr %i.k, align 8, !tbaa !290
  %.pre.i.i = load i32, ptr %i.m, align 4, !tbaa !292
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.do = load i8, ptr %i.x, align 1, !tbaa !297, !range !98, !noundef !99
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.dq = load i64, ptr %i.z, align 8, !tbaa !298
  %i.dr = load ptr, ptr %i.t, align 8, !tbaa !299
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.dq
  store ptr %i.ds, ptr %i.t, align 8, !tbaa !299
  %i.dt = load i32, ptr %i.aa, align 8, !tbaa !300
  %.not.i.i37.i.i = icmp slt i32 %i.dj, %i.dt
  br i1 %.not.i.i37.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i, label %bb.g, !prof !58

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.du = load i8, ptr %i.y, align 2, !tbaa !301, !range !98, !noundef !99
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dw = load i64, ptr %i.z, align 8, !tbaa !298
  %i.dx = load ptr, ptr %i.t, align 8, !tbaa !299
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.dw
  store ptr %i.dy, ptr %i.t, align 8, !tbaa !299
  %i.dz = load i32, ptr %i.aa, align 8, !tbaa !300
  %i.ea = icmp slt i32 %i.dj, %i.dz               ; 3 uses
  %i.eb = load i32, ptr %i.ab, align 4
  %i.ec = icmp sge i32 %i.dj, %i.eb
  %not..i.i35.i.i = xor i1 %i.ea, true
  %or.cond.i.i36.i.i = select i1 %not..i.i35.i.i, i1 true, i1 %i.ec, !prof !302
  %i.ed = load ptr, ptr %i.ac, align 8
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = select i1 %or.cond.i.i36.i.i, i1 true, i1 %i.ee, !prof !302
  br i1 %i.ef, label %bb.j, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i, !prof !303

bb.j:                                             ; preds = %bb.i
  %i.eg = load ptr, ptr %2, align 8, !tbaa !304
  %i.eh = load i32, ptr %i.k, align 8, !tbaa !290
  %i.ei = load i32, ptr %i.m, align 4, !tbaa !292
  %i.ej = load i32, ptr %i.ah, align 8, !tbaa !305
  %i.ek = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i32 noundef %i.dj, i32 noundef %i.eh, i32 noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i1 noundef zeroext %i.ea, i32 noundef %i.ej)
          to label %.noexc39.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39.i.i:                                     ; preds = %bb.j
  %i.el = zext i1 %i.ea to i8
  store ptr %i.ek, ptr %i.t, align 8, !tbaa !299
  store i8 %i.el, ptr %i.w, align 1, !tbaa !296
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.em = load i32, ptr %i.j, align 4, !tbaa !289 ; 3 uses
  store i32 %i.em, ptr %i.i, align 4, !tbaa !288
  %i.en = load i32, ptr %i.k, align 8, !tbaa !290
  %i.eo = add nsw i32 %i.en, 1                    ; 3 uses
  store i32 %i.eo, ptr %i.k, align 8, !tbaa !290
  %i.ep = load i32, ptr %i.v, align 8, !tbaa !306
  %.not.i30.i.i = icmp slt i32 %i.eo, %i.ep
  %.pre43.i.i = load i32, ptr %i.m, align 4, !tbaa !292 ; 2 uses
  br i1 %.not.i30.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eq = load i32, ptr %i.l, align 4, !tbaa !291 ; 2 uses
  store i32 %i.eq, ptr %i.k, align 8, !tbaa !290
  %i.er = add nsw i32 %.pre43.i.i, 1              ; 3 uses
  store i32 %i.er, ptr %i.m, align 4, !tbaa !292
  %i.es = load i32, ptr %i.n, align 8, !tbaa !293
  %.not1.i31.i.i = icmp slt i32 %i.er, %i.es
  br i1 %.not1.i31.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.h, align 8, !tbaa !287
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i

bb.n:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i32.i.i
  %i.et = phi i32 [ %.pre43.i.i, %bb.k ], [ %i.er, %bb.l ], [ %.pre.i.i, %._crit_edge.i32.i.i ]
  %i.eu = phi i32 [ %i.eo, %bb.k ], [ %i.eq, %bb.l ], [ %.pre.i34.i.i, %._crit_edge.i32.i.i ]
  %i.ev = phi i32 [ %i.em, %bb.k ], [ %i.em, %bb.l ], [ %i.dj, %._crit_edge.i32.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ev, i32 noundef %i.eu, i32 noundef %i.et)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.a
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit19.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dh, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.s ] ; 5 uses
  %i.ez = load ptr, ptr %i.q, align 8, !tbaa !299
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.ez, i64 %indvars.iv.i.i.i
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !311
  %i.fc = uitofp i16 %i.fb to float
  %i.fd = fmul nnan float %i.fc, f0x37800080
  %i.fe = load ptr, ptr %i.r, align 8, !tbaa !299
  %i.ff = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %indvars.iv.i.i.i
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !311
  %i.fh = uitofp i16 %i.fg to float
  %i.fi = fmul nnan float %i.fh, f0x37800080
  %i.fj = load ptr, ptr %i.s, align 8, !tbaa !299
  %i.fk = getelementptr inbounds [2 x i8], ptr %i.fj, i64 %indvars.iv.i.i.i
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !311
  %i.fm = uitofp i16 %i.fl to float
  %i.fn = fmul nnan float %i.fm, f0x37800080
  %i.fo = call float @llvm.fmuladd.f32(float %i.fd, float %i.fi, float %i.fn)
  %i.fp = load ptr, ptr %2, align 8, !tbaa !304
  %i.fq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.fr = icmp eq i32 %i.fq, 3
  br i1 %i.fr, label %bb.r, label %bb.s, !prof !303

bb.r:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r, %.noexc.i.i.i
  %i.fs = load ptr, ptr %i.t, align 8, !tbaa !299
  %i.ft = getelementptr inbounds [2 x i8], ptr %i.fs, i64 %indvars.iv.i.i.i
  %i.fu = fmul float %i.fo, 6.553500e+04          ; 2 uses
  %7 = fcmp olt float %i.fu, 0.000000e+00
  %8 = select i1 %7, float -5.000000e-01, float 5.000000e-01
  %i.fv = fadd float %i.fu, %8                    ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.fv, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.fv, float 0.000000e+00 ; 2 uses
  %i.fw = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.fw, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.fx = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.fx, ptr %i.ft, align 2, !tbaa !311
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fy = load i32, ptr %i.p, align 4, !tbaa !282
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp slt i64 %indvars.iv.next.i.i.i, %i.fz
  br i1 %i.ga, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !823

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %.lr.ph.i.i.i, %bb.az, %bb.av, %bb.as, %bb.ao, %bb.ak, %bb.ah, %bb.ad, %bb.z, %bb.w, %bb.n, %bb.j, %bb.g
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %5) #28
  br label %bb.bj

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i: ; preds = %bb.n, %bb.m, %.noexc39.i.i, %bb.i, %bb.h, %bb.g, %bb.f
  %i.gb = load i32, ptr %i.ai, align 4, !tbaa !288
  %i.gc = add nsw i32 %i.gb, 1                    ; 7 uses
  store i32 %i.gc, ptr %i.ai, align 4, !tbaa !288
  %i.gd = load i32, ptr %i.aj, align 8, !tbaa !295
  %i.ge = icmp slt i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i
  %i.gf = load i8, ptr %i.ar, align 1, !tbaa !296, !range !98, !noundef !99
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.u, label %._crit_edge.i20.i.i

._crit_edge.i20.i.i:                              ; preds = %bb.t
  %.pre.i22.i.i = load i32, ptr %i.al, align 8, !tbaa !290
  %.pre44.i.i = load i32, ptr %i.ao, align 4, !tbaa !292
  br label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.gh = load i8, ptr %i.as, align 1, !tbaa !297, !range !98, !noundef !99
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gj = load i64, ptr %i.au, align 8, !tbaa !298
  %i.gk = load ptr, ptr %i.q, align 8, !tbaa !299
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gj
  store ptr %i.gl, ptr %i.q, align 8, !tbaa !299
  %i.gm = load i32, ptr %i.av, align 8, !tbaa !300
  %.not.i.i25.i.i = icmp slt i32 %i.gc, %i.gm
  br i1 %.not.i.i25.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i, label %bb.w, !prof !58

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.u
  %i.gn = load i8, ptr %i.at, align 2, !tbaa !301, !range !98, !noundef !99
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gp = load i64, ptr %i.au, align 8, !tbaa !298
  %i.gq = load ptr, ptr %i.q, align 8, !tbaa !299
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gp
  store ptr %i.gr, ptr %i.q, align 8, !tbaa !299
  %i.gs = load i32, ptr %i.av, align 8, !tbaa !300
  %i.gt = icmp slt i32 %i.gc, %i.gs               ; 3 uses
  %i.gu = load i32, ptr %i.aw, align 4
  %i.gv = icmp sge i32 %i.gc, %i.gu
  %not..i.i23.i.i = xor i1 %i.gt, true
  %or.cond.i.i24.i.i = select i1 %not..i.i23.i.i, i1 true, i1 %i.gv, !prof !302
  %i.gw = load ptr, ptr %i.ax, align 8
  %i.gx = icmp eq ptr %i.gw, null
  %i.gy = select i1 %or.cond.i.i24.i.i, i1 true, i1 %i.gx, !prof !302
  br i1 %i.gy, label %bb.z, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i, !prof !303

bb.z:                                             ; preds = %bb.y
  %i.gz = load ptr, ptr %3, align 8, !tbaa !304
  %i.ha = load i32, ptr %i.al, align 8, !tbaa !290
  %i.hb = load i32, ptr %i.ao, align 4, !tbaa !292
  %i.hc = load i32, ptr %i.bc, align 8, !tbaa !305
  %i.hd = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i32 noundef %i.gc, i32 noundef %i.ha, i32 noundef %i.hb, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i1 noundef zeroext %i.gt, i32 noundef %i.hc)
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27.i.i:                                     ; preds = %bb.z
  %i.he = zext i1 %i.gt to i8
  store ptr %i.hd, ptr %i.q, align 8, !tbaa !299
  store i8 %i.he, ptr %i.ar, align 1, !tbaa !296
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i

bb.aa:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit41.i.i
  %i.hf = load i32, ptr %i.ak, align 4, !tbaa !289 ; 3 uses
  store i32 %i.hf, ptr %i.ai, align 4, !tbaa !288
  %i.hg = load i32, ptr %i.al, align 8, !tbaa !290
  %i.hh = add nsw i32 %i.hg, 1                    ; 3 uses
  store i32 %i.hh, ptr %i.al, align 8, !tbaa !290
  %i.hi = load i32, ptr %i.am, align 8, !tbaa !306
  %.not.i18.i.i = icmp slt i32 %i.hh, %i.hi
  %.pre45.i.i = load i32, ptr %i.ao, align 4, !tbaa !292 ; 2 uses
  br i1 %.not.i18.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = load i32, ptr %i.an, align 4, !tbaa !291 ; 2 uses
  store i32 %i.hj, ptr %i.al, align 8, !tbaa !290
  %i.hk = add nsw i32 %.pre45.i.i, 1              ; 3 uses
  store i32 %i.hk, ptr %i.ao, align 4, !tbaa !292
  %i.hl = load i32, ptr %i.ap, align 8, !tbaa !293
  %.not1.i19.i.i = icmp slt i32 %i.hk, %i.hl
  br i1 %.not1.i19.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.aq, align 8, !tbaa !287
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i20.i.i
  %i.hm = phi i32 [ %.pre45.i.i, %bb.aa ], [ %i.hk, %bb.ab ], [ %.pre44.i.i, %._crit_edge.i20.i.i ]
  %i.hn = phi i32 [ %i.hh, %bb.aa ], [ %i.hj, %bb.ab ], [ %.pre.i22.i.i, %._crit_edge.i20.i.i ]
  %i.ho = phi i32 [ %i.hf, %bb.aa ], [ %i.hf, %bb.ab ], [ %i.gc, %._crit_edge.i20.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.ho, i32 noundef %i.hn, i32 noundef %i.hm)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i: ; preds = %bb.ad, %bb.ac, %.noexc27.i.i, %bb.y, %bb.x, %bb.w, %bb.v
  %i.hp = load i32, ptr %i.bd, align 4, !tbaa !288
  %i.hq = add nsw i32 %i.hp, 1                    ; 7 uses
  store i32 %i.hq, ptr %i.bd, align 4, !tbaa !288
  %i.hr = load i32, ptr %i.be, align 8, !tbaa !295
  %i.hs = icmp slt i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i
  %i.ht = load i8, ptr %i.bm, align 1, !tbaa !296, !range !98, !noundef !99
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.af, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.ae
  %.pre.i10.i.i = load i32, ptr %i.bg, align 8, !tbaa !290
  %.pre46.i.i = load i32, ptr %i.bj, align 4, !tbaa !292
  br label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.hv = load i8, ptr %i.bn, align 1, !tbaa !297, !range !98, !noundef !99
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hx = load i64, ptr %i.bp, align 8, !tbaa !298
  %i.hy = load ptr, ptr %i.r, align 8, !tbaa !299
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 %i.hx
  store ptr %i.hz, ptr %i.r, align 8, !tbaa !299
  %i.ia = load i32, ptr %i.bq, align 8, !tbaa !300
  %.not.i.i13.i.i = icmp slt i32 %i.hq, %i.ia
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.ah, !prof !58

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.af
  %i.ib = load i8, ptr %i.bo, align 2, !tbaa !301, !range !98, !noundef !99
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.id = load i64, ptr %i.bp, align 8, !tbaa !298
  %i.ie = load ptr, ptr %i.r, align 8, !tbaa !299
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 %i.id
  store ptr %i.if, ptr %i.r, align 8, !tbaa !299
  %i.ig = load i32, ptr %i.bq, align 8, !tbaa !300
  %i.ih = icmp slt i32 %i.hq, %i.ig               ; 3 uses
  %i.ii = load i32, ptr %i.br, align 4
  %i.ij = icmp sge i32 %i.hq, %i.ii
  %not..i.i11.i.i = xor i1 %i.ih, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.ij, !prof !302
  %i.ik = load ptr, ptr %i.bs, align 8
  %i.il = icmp eq ptr %i.ik, null
  %i.im = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.il, !prof !302
  br i1 %i.im, label %bb.ak, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, !prof !303

bb.ak:                                            ; preds = %bb.aj
  %i.in = load ptr, ptr %4, align 8, !tbaa !304
  %i.io = load i32, ptr %i.bg, align 8, !tbaa !290
  %i.ip = load i32, ptr %i.bj, align 4, !tbaa !292
  %i.iq = load i32, ptr %i.bx, align 8, !tbaa !305
  %i.ir = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i32 noundef %i.hq, i32 noundef %i.io, i32 noundef %i.ip, ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 1 dereferenceable(1) %i.bw, i1 noundef zeroext %i.ih, i32 noundef %i.iq)
          to label %.noexc15.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15.i.i:                                     ; preds = %bb.ak
  %i.is = zext i1 %i.ih to i8
  store ptr %i.ir, ptr %i.r, align 8, !tbaa !299
  store i8 %i.is, ptr %i.bm, align 1, !tbaa !296
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit29.i.i
  %i.it = load i32, ptr %i.bf, align 4, !tbaa !289 ; 3 uses
  store i32 %i.it, ptr %i.bd, align 4, !tbaa !288
  %i.iu = load i32, ptr %i.bg, align 8, !tbaa !290
  %i.iv = add nsw i32 %i.iu, 1                    ; 3 uses
  store i32 %i.iv, ptr %i.bg, align 8, !tbaa !290
  %i.iw = load i32, ptr %i.bh, align 8, !tbaa !306
  %.not.i6.i.i = icmp slt i32 %i.iv, %i.iw
  %.pre47.i.i = load i32, ptr %i.bj, align 4, !tbaa !292 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ix = load i32, ptr %i.bi, align 4, !tbaa !291 ; 2 uses
end_hunk_1
