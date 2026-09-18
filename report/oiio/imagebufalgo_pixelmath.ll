Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_pixelmath?download=true
inline.NumInlined: 12592
inline.NumDeleted: 3317
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IfhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.es, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !85

bb.ah:                                            ; preds = %bb.ag
  %i.et = load ptr, ptr %2, align 8, !tbaa !333
  %i.eu = load i32, ptr %i.y, align 8, !tbaa !329
  %i.ev = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.ew = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.ex = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i32 noundef %i.dw, i32 noundef %i.eu, i32 noundef %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.en, i32 noundef %i.ew)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.ey = zext i1 %i.en to i8
  store ptr %i.ex, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.ey, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.ez = load i32, ptr %i.x, align 4, !tbaa !331 ; 3 uses
  store i32 %i.ez, ptr %i.w, align 4, !tbaa !328
  %i.fa = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fb = add nsw i32 %i.fa, 1                    ; 3 uses
  store i32 %i.fb, ptr %i.y, align 8, !tbaa !329
  %i.fc = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i19.i.i = icmp slt i32 %i.fb, %i.fc
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = load i32, ptr %i.z, align 4, !tbaa !344 ; 2 uses
  store i32 %i.fd, ptr %i.y, align 8, !tbaa !329
  %i.fe = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fe, ptr %i.aa, align 4, !tbaa !330
  %i.ff = load i32, ptr %i.ab, align 8, !tbaa !345
  %.not1.i20.i.i = icmp slt i32 %i.fe, %i.ff
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.fg = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fe, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.fh = phi i32 [ %i.fb, %bb.ai ], [ %i.fd, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fi = phi i32 [ %i.ez, %bb.ai ], [ %i.ez, %bb.aj ], [ %i.dw, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fi, i32 noundef %i.fh, i32 noundef %i.fg)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn126.pn.pn.i.i.i = phi { ptr, i32 } [ %i.du, %bb.aa ], [ %i.fj, %bb.am ], [ %i.cv, %bb.t ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cr

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.fk = load ptr, ptr %i.r, align 8, !tbaa !1319, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext228.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.he = load i8, ptr %i.fl, align 8, !tbaa !327, !range !109, !noundef !110
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.hg = load i32, ptr %i.fm, align 4, !tbaa !328
  %i.hh = load i32, ptr %i.fn, align 4, !tbaa !331
  %i.hi = icmp eq i32 %i.hg, %i.hh
  br i1 %i.hi, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hj = load i32, ptr %i.fo, align 8, !tbaa !329
  %i.hk = load i32, ptr %i.fp, align 4, !tbaa !344
  %i.hl = icmp eq i32 %i.hj, %i.hk
  br i1 %i.hl, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.i.i.i: ; preds = %bb.aq
  %i.hm = load i32, ptr %i.fq, align 4, !tbaa !330
  %i.hn = load i32, ptr %i.fr, align 8, !tbaa !345
  %i.ho = icmp eq i32 %i.hm, %i.hn
  br i1 %i.ho, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.i.i.i
  %i.hp = load ptr, ptr %i.gd, align 8, !tbaa !332
  %.not.i158.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i158.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.hs = load ptr, ptr %i.gy, align 8, !tbaa !332
  %.not.i160.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i160.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit161.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit161.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit161.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14rangecompress_IfhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.hw = load ptr, ptr %i.fs, align 8, !tbaa !1318, !nonnull !110
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !115, !range !109, !noundef !110
  %i.hy = trunc nuw i8 %i.hx to i1
  %i.hz = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.hy, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i
  %i.ia = load ptr, ptr %i.ft, align 8, !tbaa !338
  %i.ib = sext i32 %i.hz to i64                   ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ia, i64 %i.ib  ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !84
  %i.ie = uitofp i8 %i.id to float
  %i.if = fmul nnan float %i.ie, f0x3B808081
  %i.ig = getelementptr i8, ptr %i.ic, i64 1
  %i.ih = load <2 x i8>, ptr %i.ig, align 1, !tbaa !84
  %i.ii = uitofp <2 x i8> %i.ih to <2 x float>
  %6 = fmul nnan <2 x float> %i.ii, <float f0x3B808081, float 1.000000e+00>
  %7 = fmul nnan <2 x float> %6, <float 7.151700e-01, float f0x3B808081> ; 2 uses
  %i.ij = extractelement <2 x float> %7, i64 0
  %8 = call float @llvm.fmuladd.f32(float %i.if, float 2.126400e-01, float %i.ij)
  %9 = extractelement <2 x float> %7, i64 1
  %i.ik = call float @llvm.fmuladd.f32(float %9, float 7.219000e-02, float %8) ; 5 uses
  %i.il = fcmp ogt float %i.ik, 0.000000e+00
  br i1 %i.il, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.im = fcmp ugt float %i.ik, 1.800000e-01
  br i1 %i.im, label %bb.az, label %_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.in = call float @llvm.fmuladd.f32(float %i.ik, float f0x438E2DCC, float 1.000000e+00)
  %i.io = call float @llvm.log.f32(float %i.in)
  %i.ip = call float @llvm.fmuladd.f32(float %i.io, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.iq = call float @llvm.fabs.f32(float %i.ip)
  br label %_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i

_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i162.i.i.i = phi float [ %i.iq, %bb.az ], [ %i.ik, %bb.ay ]
  %i.ir = fdiv float %.0.i162.i.i.i, %i.ik
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i, %bb.ax
  %i.is = phi float [ %i.ir, %_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.it = load i32, ptr %i.g, align 4, !tbaa !58
  %i.iu = icmp slt i32 %i.hz, %i.it
  br i1 %i.iu, label %.lr.ph221.i.i.i, label %.loopexit217.i.i.i

.lr.ph221.i.i.i:                                  ; preds = %bb.ba, %bb.bh
  %indvars.iv230.i.i.i = phi i64 [ %indvars.iv.next231.i.i.i, %bb.bh ], [ %i.ib, %bb.ba ] ; 5 uses
  %i.iv = icmp eq i64 %indvars.iv230.i.i.i, %sext228.i.i.i
  %i.iw = icmp eq i64 %indvars.iv230.i.i.i, %sext.i.i.i
  %or.cond136.i.i.i = select i1 %i.iv, i1 true, i1 %i.iw
  %i.ix = load ptr, ptr %i.ft, align 8, !tbaa !338
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 %indvars.iv230.i.i.i
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !84
  %i.ja = uitofp i8 %i.iz to float
  %i.jb = fmul nnan float %i.ja, f0x3B808081      ; 3 uses
  br i1 %or.cond136.i.i.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.lr.ph221.i.i.i
  %i.jc = load ptr, ptr %4, align 8, !tbaa !333
  %i.jd = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jc)
          to label %.noexc166.i.i.i unwind label %bb.bd

.noexc166.i.i.i:                                  ; preds = %bb.bb
  %i.je = icmp eq i32 %i.jd, 3
  br i1 %i.je, label %bb.bc, label %bb.bh, !prof !85

bb.bc:                                            ; preds = %.noexc166.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.be:                                            ; preds = %.lr.ph221.i.i.i
  %i.jg = fmul float %i.is, %i.jb                 ; 2 uses
  %i.jh = load ptr, ptr %4, align 8, !tbaa !333
  %i.ji = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jh)
          to label %.noexc171.i.i.i unwind label %bb.bg

.noexc171.i.i.i:                                  ; preds = %bb.be
  %i.jj = icmp eq i32 %i.ji, 3
  br i1 %i.jj, label %bb.bf, label %bb.bh, !prof !85

bb.bf:                                            ; preds = %.noexc171.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bh:                                            ; preds = %bb.bf, %.noexc171.i.i.i, %bb.bc, %.noexc166.i.i.i
  %.sink.i.i.i = phi float [ %i.jb, %bb.bc ], [ %i.jb, %.noexc166.i.i.i ], [ %i.jg, %.noexc171.i.i.i ], [ %i.jg, %bb.bf ]
  %i.jl = load ptr, ptr %i.fu, align 8, !tbaa !338
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %indvars.iv230.i.i.i
  store float %.sink.i.i.i, ptr %i.jm, align 4, !tbaa !92
  %indvars.iv.next231.i.i.i = add nsw i64 %indvars.iv230.i.i.i, 1 ; 2 uses
  %i.jn = load i32, ptr %i.g, align 4, !tbaa !58
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp slt i64 %indvars.iv.next231.i.i.i, %i.jo
  br i1 %i.jp, label %.lr.ph221.i.i.i, label %.loopexit217.i.i.i, !llvm.loop !1314

bb.bi:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i
  %i.jq = load i32, ptr %i.g, align 4, !tbaa !58
  %i.jr = icmp slt i32 %i.hz, %i.jq
  br i1 %i.jr, label %.lr.ph.preheader.i.i.i, label %.loopexit217.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bi
  %i.js = sext i32 %i.hz to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.js, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.br ] ; 5 uses
  %i.jt = icmp eq i64 %indvars.iv.i.i.i, %sext228.i.i.i
  %i.ju = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond137.i.i.i = select i1 %i.jt, i1 true, i1 %i.ju
  %i.jv = load ptr, ptr %i.ft, align 8, !tbaa !338
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %indvars.iv.i.i.i
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !84
  %i.jy = uitofp i8 %i.jx to float
  %i.jz = fmul nnan float %i.jy, f0x3B808081      ; 5 uses
  br i1 %or.cond137.i.i.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.ka = load ptr, ptr %4, align 8, !tbaa !333
  %i.kb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ka)
          to label %.noexc176.i.i.i unwind label %bb.bl

.noexc176.i.i.i:                                  ; preds = %bb.bj
  %i.kc = icmp eq i32 %i.kb, 3
  br i1 %i.kc, label %bb.bk, label %bb.br, !prof !85

bb.bk:                                            ; preds = %.noexc176.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bm:                                            ; preds = %.lr.ph.i.i.i
  %i.ke = fcmp ugt float %i.jz, 1.800000e-01
  br i1 %i.ke, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kf = call float @llvm.fmuladd.f32(float %i.jz, float f0x438E2DCC, float 1.000000e+00)
  %i.kg = call float @llvm.log.f32(float %i.kf)
  %i.kh = call float @llvm.fmuladd.f32(float %i.kg, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.ki = call float @llvm.fabs.f32(float %i.kh)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0.i179.i.i.i = phi float [ %i.ki, %bb.bn ], [ %i.jz, %bb.bm ] ; 2 uses
  %i.kj = load ptr, ptr %4, align 8, !tbaa !333
  %i.kk = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kj)
          to label %.noexc183.i.i.i unwind label %bb.bq

.noexc183.i.i.i:                                  ; preds = %bb.bo
  %i.kl = icmp eq i32 %i.kk, 3
  br i1 %i.kl, label %bb.bp, label %bb.br, !prof !85

bb.bp:                                            ; preds = %.noexc183.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.br:                                            ; preds = %bb.bp, %.noexc183.i.i.i, %bb.bk, %.noexc176.i.i.i
  %.sink259.i.i.i = phi float [ %i.jz, %bb.bk ], [ %i.jz, %.noexc176.i.i.i ], [ %.0.i179.i.i.i, %.noexc183.i.i.i ], [ %.0.i179.i.i.i, %bb.bp ]
  %i.kn = load ptr, ptr %i.fu, align 8, !tbaa !338
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %indvars.iv.i.i.i
  store float %.sink259.i.i.i, ptr %i.ko, align 4, !tbaa !92
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.kp = load i32, ptr %i.g, align 4, !tbaa !58
  %i.kq = sext i32 %i.kp to i64
  %i.kr = icmp slt i64 %indvars.iv.next.i.i.i, %i.kq
  br i1 %i.kr, label %.lr.ph.i.i.i, label %.loopexit217.i.i.i, !llvm.loop !1315

.loopexit217.i.i.i:                               ; preds = %bb.br, %bb.bh, %bb.bi, %bb.ba
  %i.ks = load i32, ptr %i.fm, align 4, !tbaa !328
  %i.kt = add nsw i32 %i.ks, 1                    ; 7 uses
  store i32 %i.kt, ptr %i.fm, align 4, !tbaa !328
  %i.ku = load i32, ptr %i.fv, align 8, !tbaa !334
  %i.kv = icmp slt i32 %i.kt, %i.ku
  br i1 %i.kv, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %.loopexit217.i.i.i
  %i.kw = load i8, ptr %i.fx, align 1, !tbaa !335, !range !109, !noundef !110
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.bt, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.bs
  %.pre.i11.i.i = load i32, ptr %i.fo, align 8, !tbaa !329
  %.pre.i.i = load i32, ptr %i.fq, align 4, !tbaa !330
  br label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.ky = load i8, ptr %i.fy, align 1, !tbaa !336, !range !109, !noundef !110
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.la = load i64, ptr %i.ga, align 8, !tbaa !337
  %i.lb = load ptr, ptr %i.fu, align 8, !tbaa !338
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %i.la
  store ptr %i.lc, ptr %i.fu, align 8, !tbaa !338
  %i.ld = load i32, ptr %i.gb, align 8, !tbaa !339
  %.not.i.i14.i.i = icmp slt i32 %i.kt, %i.ld
  br i1 %.not.i.i14.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bv, !prof !59

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.co
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.es, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !85

bb.ah:                                            ; preds = %bb.ag
  %i.et = load ptr, ptr %2, align 8, !tbaa !333
  %i.eu = load i32, ptr %i.y, align 8, !tbaa !329
  %i.ev = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.ew = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.ex = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i32 noundef %i.dw, i32 noundef %i.eu, i32 noundef %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.en, i32 noundef %i.ew)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.ey = zext i1 %i.en to i8
  store ptr %i.ex, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.ey, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.ez = load i32, ptr %i.x, align 4, !tbaa !331 ; 3 uses
  store i32 %i.ez, ptr %i.w, align 4, !tbaa !328
  %i.fa = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fb = add nsw i32 %i.fa, 1                    ; 3 uses
  store i32 %i.fb, ptr %i.y, align 8, !tbaa !329
  %i.fc = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i19.i.i = icmp slt i32 %i.fb, %i.fc
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = load i32, ptr %i.z, align 4, !tbaa !344 ; 2 uses
  store i32 %i.fd, ptr %i.y, align 8, !tbaa !329
  %i.fe = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fe, ptr %i.aa, align 4, !tbaa !330
  %i.ff = load i32, ptr %i.ab, align 8, !tbaa !345
  %.not1.i20.i.i = icmp slt i32 %i.fe, %i.ff
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.fg = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fe, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.fh = phi i32 [ %i.fb, %bb.ai ], [ %i.fd, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fi = phi i32 [ %i.ez, %bb.ai ], [ %i.ez, %bb.aj ], [ %i.dw, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fi, i32 noundef %i.fh, i32 noundef %i.fg)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn126.pn.pn.i.i.i = phi { ptr, i32 } [ %i.du, %bb.aa ], [ %i.fj, %bb.am ], [ %i.cv, %bb.t ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cr

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.fk = load ptr, ptr %i.r, align 8, !tbaa !1335, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext228.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.he = load i8, ptr %i.fl, align 8, !tbaa !327, !range !109, !noundef !110
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.hg = load i32, ptr %i.fm, align 4, !tbaa !328
  %i.hh = load i32, ptr %i.fn, align 4, !tbaa !331
  %i.hi = icmp eq i32 %i.hg, %i.hh
  br i1 %i.hi, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hj = load i32, ptr %i.fo, align 8, !tbaa !329
  %i.hk = load i32, ptr %i.fp, align 4, !tbaa !344
  %i.hl = icmp eq i32 %i.hj, %i.hk
  br i1 %i.hl, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.i.i.i: ; preds = %bb.aq
  %i.hm = load i32, ptr %i.fq, align 4, !tbaa !330
  %i.hn = load i32, ptr %i.fr, align 8, !tbaa !345
  %i.ho = icmp eq i32 %i.hm, %i.hn
  br i1 %i.ho, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.i.i.i
  %i.hp = load ptr, ptr %i.gd, align 8, !tbaa !332
  %.not.i158.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i158.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.hs = load ptr, ptr %i.gy, align 8, !tbaa !332
  %.not.i160.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i160.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit161.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit161.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit161.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit159.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.hw = load ptr, ptr %i.fs, align 8, !tbaa !1334, !nonnull !110
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !115, !range !109, !noundef !110
  %i.hy = trunc nuw i8 %i.hx to i1
  %i.hz = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.hy, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i
  %i.ia = load ptr, ptr %i.ft, align 8, !tbaa !338
  %i.ib = sext i32 %i.hz to i64                   ; 2 uses
  %i.ic = getelementptr [2 x i8], ptr %i.ia, i64 %i.ib ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !349
  %i.ie = uitofp i16 %i.id to float
  %i.if = fmul nnan float %i.ie, f0x37800080
  %i.ig = getelementptr i8, ptr %i.ic, i64 2
  %i.ih = load <2 x i16>, ptr %i.ig, align 2, !tbaa !349
  %i.ii = uitofp <2 x i16> %i.ih to <2 x float>
  %6 = fmul nnan <2 x float> %i.ii, <float f0x37800080, float 1.000000e+00>
  %7 = fmul nnan <2 x float> %6, <float 7.151700e-01, float f0x37800080> ; 2 uses
  %i.ij = extractelement <2 x float> %7, i64 0
  %8 = call float @llvm.fmuladd.f32(float %i.if, float 2.126400e-01, float %i.ij)
  %9 = extractelement <2 x float> %7, i64 1
  %i.ik = call float @llvm.fmuladd.f32(float %9, float 7.219000e-02, float %8) ; 5 uses
  %i.il = fcmp ogt float %i.ik, 0.000000e+00
  br i1 %i.il, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.im = fcmp ugt float %i.ik, 1.800000e-01
  br i1 %i.im, label %bb.az, label %_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.in = call float @llvm.fmuladd.f32(float %i.ik, float f0x438E2DCC, float 1.000000e+00)
  %i.io = call float @llvm.log.f32(float %i.in)
  %i.ip = call float @llvm.fmuladd.f32(float %i.io, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.iq = call float @llvm.fabs.f32(float %i.ip)
  br label %_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i

_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i162.i.i.i = phi float [ %i.iq, %bb.az ], [ %i.ik, %bb.ay ]
  %i.ir = fdiv float %.0.i162.i.i.i, %i.ik
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i, %bb.ax
  %i.is = phi float [ %i.ir, %_ZN11OpenImageIO4v3_113rangecompressEf.exit163.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.it = load i32, ptr %i.g, align 4, !tbaa !58
  %i.iu = icmp slt i32 %i.hz, %i.it
  br i1 %i.iu, label %.lr.ph221.i.i.i, label %.loopexit217.i.i.i

.lr.ph221.i.i.i:                                  ; preds = %bb.ba, %bb.bh
  %indvars.iv230.i.i.i = phi i64 [ %indvars.iv.next231.i.i.i, %bb.bh ], [ %i.ib, %bb.ba ] ; 5 uses
  %i.iv = icmp eq i64 %indvars.iv230.i.i.i, %sext228.i.i.i
  %i.iw = icmp eq i64 %indvars.iv230.i.i.i, %sext.i.i.i
  %or.cond136.i.i.i = select i1 %i.iv, i1 true, i1 %i.iw
  %i.ix = load ptr, ptr %i.ft, align 8, !tbaa !338
  %i.iy = getelementptr inbounds [2 x i8], ptr %i.ix, i64 %indvars.iv230.i.i.i
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !349
  %i.ja = uitofp i16 %i.iz to float
  %i.jb = fmul nnan float %i.ja, f0x37800080      ; 3 uses
  br i1 %or.cond136.i.i.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.lr.ph221.i.i.i
  %i.jc = load ptr, ptr %4, align 8, !tbaa !333
  %i.jd = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jc)
          to label %.noexc166.i.i.i unwind label %bb.bd

.noexc166.i.i.i:                                  ; preds = %bb.bb
  %i.je = icmp eq i32 %i.jd, 3
  br i1 %i.je, label %bb.bc, label %bb.bh, !prof !85

bb.bc:                                            ; preds = %.noexc166.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.be:                                            ; preds = %.lr.ph221.i.i.i
  %i.jg = fmul float %i.is, %i.jb                 ; 2 uses
  %i.jh = load ptr, ptr %4, align 8, !tbaa !333
  %i.ji = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jh)
          to label %.noexc171.i.i.i unwind label %bb.bg

.noexc171.i.i.i:                                  ; preds = %bb.be
  %i.jj = icmp eq i32 %i.ji, 3
  br i1 %i.jj, label %bb.bf, label %bb.bh, !prof !85

bb.bf:                                            ; preds = %.noexc171.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bh:                                            ; preds = %bb.bf, %.noexc171.i.i.i, %bb.bc, %.noexc166.i.i.i
  %.sink.i.i.i = phi float [ %i.jb, %bb.bc ], [ %i.jb, %.noexc166.i.i.i ], [ %i.jg, %.noexc171.i.i.i ], [ %i.jg, %bb.bf ]
  %i.jl = load ptr, ptr %i.fu, align 8, !tbaa !338
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %indvars.iv230.i.i.i
  store float %.sink.i.i.i, ptr %i.jm, align 4, !tbaa !92
  %indvars.iv.next231.i.i.i = add nsw i64 %indvars.iv230.i.i.i, 1 ; 2 uses
  %i.jn = load i32, ptr %i.g, align 4, !tbaa !58
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp slt i64 %indvars.iv.next231.i.i.i, %i.jo
  br i1 %i.jp, label %.lr.ph221.i.i.i, label %.loopexit217.i.i.i, !llvm.loop !1330

bb.bi:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit157.thread.i.i.i
  %i.jq = load i32, ptr %i.g, align 4, !tbaa !58
  %i.jr = icmp slt i32 %i.hz, %i.jq
  br i1 %i.jr, label %.lr.ph.preheader.i.i.i, label %.loopexit217.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bi
  %i.js = sext i32 %i.hz to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.js, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.br ] ; 5 uses
  %i.jt = icmp eq i64 %indvars.iv.i.i.i, %sext228.i.i.i
  %i.ju = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond137.i.i.i = select i1 %i.jt, i1 true, i1 %i.ju
  %i.jv = load ptr, ptr %i.ft, align 8, !tbaa !338
  %i.jw = getelementptr inbounds [2 x i8], ptr %i.jv, i64 %indvars.iv.i.i.i
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !349
  %i.jy = uitofp i16 %i.jx to float
  %i.jz = fmul nnan float %i.jy, f0x37800080      ; 5 uses
  br i1 %or.cond137.i.i.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.ka = load ptr, ptr %4, align 8, !tbaa !333
  %i.kb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ka)
          to label %.noexc176.i.i.i unwind label %bb.bl

.noexc176.i.i.i:                                  ; preds = %bb.bj
  %i.kc = icmp eq i32 %i.kb, 3
  br i1 %i.kc, label %bb.bk, label %bb.br, !prof !85

bb.bk:                                            ; preds = %.noexc176.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bm:                                            ; preds = %.lr.ph.i.i.i
  %i.ke = fcmp ugt float %i.jz, 1.800000e-01
  br i1 %i.ke, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kf = call float @llvm.fmuladd.f32(float %i.jz, float f0x438E2DCC, float 1.000000e+00)
  %i.kg = call float @llvm.log.f32(float %i.kf)
  %i.kh = call float @llvm.fmuladd.f32(float %i.kg, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.ki = call float @llvm.fabs.f32(float %i.kh)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0.i179.i.i.i = phi float [ %i.ki, %bb.bn ], [ %i.jz, %bb.bm ] ; 2 uses
  %i.kj = load ptr, ptr %4, align 8, !tbaa !333
  %i.kk = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kj)
          to label %.noexc183.i.i.i unwind label %bb.bq

.noexc183.i.i.i:                                  ; preds = %bb.bo
  %i.kl = icmp eq i32 %i.kk, 3
  br i1 %i.kl, label %bb.bp, label %bb.br, !prof !85

bb.bp:                                            ; preds = %.noexc183.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.br:                                            ; preds = %bb.bp, %.noexc183.i.i.i, %bb.bk, %.noexc176.i.i.i
  %.sink259.i.i.i = phi float [ %i.jz, %bb.bk ], [ %i.jz, %.noexc176.i.i.i ], [ %.0.i179.i.i.i, %.noexc183.i.i.i ], [ %.0.i179.i.i.i, %bb.bp ]
  %i.kn = load ptr, ptr %i.fu, align 8, !tbaa !338
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %indvars.iv.i.i.i
  store float %.sink259.i.i.i, ptr %i.ko, align 4, !tbaa !92
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.kp = load i32, ptr %i.g, align 4, !tbaa !58
  %i.kq = sext i32 %i.kp to i64
  %i.kr = icmp slt i64 %indvars.iv.next.i.i.i, %i.kq
  br i1 %i.kr, label %.lr.ph.i.i.i, label %.loopexit217.i.i.i, !llvm.loop !1331

.loopexit217.i.i.i:                               ; preds = %bb.br, %bb.bh, %bb.bi, %bb.ba
  %i.ks = load i32, ptr %i.fm, align 4, !tbaa !328
  %i.kt = add nsw i32 %i.ks, 1                    ; 7 uses
  store i32 %i.kt, ptr %i.fm, align 4, !tbaa !328
  %i.ku = load i32, ptr %i.fv, align 8, !tbaa !334
  %i.kv = icmp slt i32 %i.kt, %i.ku
  br i1 %i.kv, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %.loopexit217.i.i.i
  %i.kw = load i8, ptr %i.fx, align 1, !tbaa !335, !range !109, !noundef !110
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.bt, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.bs
  %.pre.i11.i.i = load i32, ptr %i.fo, align 8, !tbaa !329
  %.pre.i.i = load i32, ptr %i.fq, align 4, !tbaa !330
  br label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.ky = load i8, ptr %i.fy, align 1, !tbaa !336, !range !109, !noundef !110
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.la = load i64, ptr %i.ga, align 8, !tbaa !337
  %i.lb = load ptr, ptr %i.fu, align 8, !tbaa !338
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %i.la
  store ptr %i.lc, ptr %i.fu, align 8, !tbaa !338
  %i.ld = load i32, ptr %i.gb, align 8, !tbaa !339
  %.not.i.i14.i.i = icmp slt i32 %i.kt, %i.ld
  br i1 %.not.i.i14.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bv, !prof !59

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.co
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.cp:                                            ; preds = %bb.co, %bb.bq, %bb.bl, %bb.bg, %bb.bd
  %.pn116.pn.pn.i.i.i = phi { ptr, i32 } [ %i.jk, %bb.bg ], [ %i.nu, %bb.co ], [ %i.km, %bb.bq ], [ %i.jf, %bb.bd ], [ %i.kd, %bb.bl ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.aw
  %.pn116.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn116.pn.pn.i.i.i, %bb.cp ], [ %i.hv, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.an
  %.pn126.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn126.pn.pn.i.i.i, %bb.an ], [ %.pn116.pn.pn.pn.i.i.i, %bb.cq ]
  resume { ptr, i32 } %.pn126.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit161.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !353
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !76 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IhhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.99", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.95", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.99", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1341, !nonnull !110, !align !230
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !145  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not114.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond133.i.i.i = select i1 %.not114.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond133.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1342, !nonnull !110
  store i8 0, ptr %i.q, align 1, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1343, !nonnull !110, !align !230 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1341, !nonnull !110, !align !230 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  %sext252.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext253.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !327, !range !109, !noundef !110
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !328
  %i.av = load i32, ptr %i.x, align 4, !tbaa !331
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !329
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !344
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !345
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !332
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14rangecompress_IhhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1342, !nonnull !110
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !115, !range !109, !noundef !110
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl  ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !84
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = fmul nnan float %i.bo, f0x3B808081
  %i.bq = getelementptr i8, ptr %i.bm, i64 1
  %i.br = load <2 x i8>, ptr %i.bq, align 1, !tbaa !84
  %i.bs = uitofp <2 x i8> %i.br to <2 x float>
  %6 = fmul nnan <2 x float> %i.bs, <float f0x3B808081, float 1.000000e+00>
  %7 = fmul nnan <2 x float> %6, <float 7.151700e-01, float f0x3B808081> ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  %i.bt = call float @llvm.fmuladd.f32(float %i.bp, float 2.126400e-01, float %8)
  %i.bu = extractelement <2 x float> %7, i64 1
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float 7.219000e-02, float %i.bt) ; 5 uses
  %i.bw = fcmp ogt float %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = fcmp ugt float %i.bv, 1.800000e-01
  br i1 %i.bx, label %bb.n, label %_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.by = call float @llvm.fmuladd.f32(float %i.bv, float f0x438E2DCC, float 1.000000e+00)
  %i.bz = call float @llvm.log.f32(float %i.by)
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.cb = call float @llvm.fabs.f32(float %i.ca)
  br label %_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i

_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi float [ %i.cb, %bb.n ], [ %i.bv, %bb.m ]
  %i.cc = fdiv float %.0.i.i.i.i, %i.bv
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i, %bb.l
  %i.cd = phi float [ %i.cc, %_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.ce = load i32, ptr %i.g, align 4, !tbaa !58  ; 2 uses
  %i.cf = icmp slt i32 %i.bj, %i.ce
  br i1 %i.cf, label %.lr.ph240.i.i.i, label %.loopexit.i.i.i

.lr.ph240.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.cg = phi i32 [ %i.da, %bb.s ], [ %i.ce, %bb.o ]
  %indvars.iv255.i.i.i = phi i64 [ %indvars.iv.next256.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.ch = icmp eq i64 %indvars.iv255.i.i.i, %sext253.i.i.i
  %i.ci = icmp eq i64 %indvars.iv255.i.i.i, %sext252.i.i.i
  %or.cond134.i.i.i = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond134.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph240.i.i.i
  %i.cj = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %indvars.iv255.i.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !84
  %i.cm = uitofp i8 %i.cl to float
  %i.cn = fmul nnan float %i.cm, f0x3B808081
  %i.co = fmul float %i.cd, %i.cn
  %i.cp = load ptr, ptr %2, align 8, !tbaa !333
  %i.cq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.cr = icmp eq i32 %i.cq, 3
  br i1 %i.cr, label %bb.q, label %bb.r, !prof !85

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.cs = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %indvars.iv255.i.i.i
  %i.cu = fmul float %i.co, 2.550000e+02          ; 2 uses
  %i.cv = fcmp olt float %i.cu, 0.000000e+00
  %i.cw = select i1 %i.cv, float -5.000000e-01, float 5.000000e-01
  %i.cx = fadd float %i.cu, %i.cw                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.cx, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.cx, float 0.000000e+00 ; 2 uses
  %i.cy = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.cy, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.cz = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.cz, ptr %i.ct, align 1, !tbaa !84
  %.pre260.i.i.i = load i32, ptr %i.g, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph240.i.i.i
  %i.da = phi i32 [ %i.cg, %.lr.ph240.i.i.i ], [ %.pre260.i.i.i, %bb.r ] ; 2 uses
  %indvars.iv.next256.i.i.i = add nsw i64 %indvars.iv255.i.i.i, 1 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next256.i.i.i, %i.db
  br i1 %i.dc, label %.lr.ph240.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1336

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.de = load i32, ptr %i.g, align 4, !tbaa !58  ; 2 uses
  %i.df = icmp slt i32 %i.bj, %i.de
  br i1 %i.df, label %.lr.ph238.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph238.preheader.i.i.i:                        ; preds = %bb.u
  %i.dg = sext i32 %i.bj to i64
  br label %.lr.ph238.i.i.i

.lr.ph238.i.i.i:                                  ; preds = %bb.z, %.lr.ph238.preheader.i.i.i
  %i.dh = phi i32 [ %i.de, %.lr.ph238.preheader.i.i.i ], [ %i.ed, %bb.z ]
  %indvars.iv250.i.i.i = phi i64 [ %i.dg, %.lr.ph238.preheader.i.i.i ], [ %indvars.iv.next251.i.i.i, %bb.z ] ; 5 uses
  %i.di = icmp eq i64 %indvars.iv250.i.i.i, %sext253.i.i.i
  %i.dj = icmp eq i64 %indvars.iv250.i.i.i, %sext252.i.i.i
  %or.cond135.i.i.i = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond135.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph238.i.i.i
  %i.dk = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %indvars.iv250.i.i.i
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !84
  %i.dn = uitofp i8 %i.dm to float
  %i.do = fmul nnan float %i.dn, f0x3B808081      ; 3 uses
  %i.dp = fcmp ugt float %i.do, 1.800000e-01
  br i1 %i.dp, label %bb.w, label %_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dq = call float @llvm.fmuladd.f32(float %i.do, float f0x438E2DCC, float 1.000000e+00)
  %i.dr = call float @llvm.log.f32(float %i.dq)
  %i.ds = call float @llvm.fmuladd.f32(float %i.dr, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.dt = call float @llvm.fabs.f32(float %i.ds)
  br label %_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i

_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i149.i.i.i = phi float [ %i.dt, %bb.w ], [ %i.do, %bb.v ]
  %i.du = load ptr, ptr %2, align 8, !tbaa !333
  %i.dv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du)
          to label %.noexc156.i.i.i unwind label %bb.aa

.noexc156.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i
  %i.dw = icmp eq i32 %i.dv, 3
  br i1 %i.dw, label %bb.x, label %bb.y, !prof !85

bb.x:                                             ; preds = %.noexc156.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc156.i.i.i
  %i.dx = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %indvars.iv250.i.i.i
  %i.dz = fmul float %.0.i149.i.i.i, 2.550000e+02
  %i.ea = fadd float %i.dz, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i153.i.i.i = fcmp oge float %i.ea, 0.000000e+00
  %.0.i.i.i.i.i.i154.i.i.i = select i1 %.inv.i.i.i.i.i153.i.i.i, float %i.ea, float 0.000000e+00 ; 2 uses
  %i.eb = fcmp ogt float %.0.i.i.i.i.i.i154.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i155.i.i.i = select i1 %i.eb, float 2.550000e+02, float %.0.i.i.i.i.i.i154.i.i.i
  %i.ec = fptoui float %.1.i.i.i.i.i.i155.i.i.i to i8
  store i8 %i.ec, ptr %i.dy, align 1, !tbaa !84
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !58
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph238.i.i.i
  %i.ed = phi i32 [ %i.dh, %.lr.ph238.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next251.i.i.i = add nsw i64 %indvars.iv250.i.i.i, 1 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %indvars.iv.next251.i.i.i, %i.ee
  br i1 %i.ef, label %.lr.ph238.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1337

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.eh = load i32, ptr %i.w, align 4, !tbaa !328
  %i.ei = add nsw i32 %i.eh, 1                    ; 7 uses
  store i32 %i.ei, ptr %i.w, align 4, !tbaa !328
  %i.ej = load i32, ptr %i.ae, align 8, !tbaa !334
  %i.ek = icmp slt i32 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.el = load i8, ptr %i.ag, align 1, !tbaa !335, !range !109, !noundef !110
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !329
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !330
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.en = load i8, ptr %i.ah, align 1, !tbaa !336, !range !109, !noundef !110
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ep = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.eq = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ep
  store ptr %i.er, ptr %i.ad, align 8, !tbaa !338
  %i.es = load i32, ptr %i.ak, align 8, !tbaa !339
  %.not.i.i26.i.i = icmp slt i32 %i.ei, %i.es
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ae, !prof !59

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.et = load i8, ptr %i.ai, align 2, !tbaa !340, !range !109, !noundef !110
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ev = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.ew = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.ev
  store ptr %i.ex, ptr %i.ad, align 8, !tbaa !338
  %i.ey = load i32, ptr %i.ak, align 8, !tbaa !339
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IhhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.fe, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !85

bb.ah:                                            ; preds = %bb.ag
  %i.ff = load ptr, ptr %2, align 8, !tbaa !333
  %i.fg = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fh = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.fi = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.fj = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i32 noundef %i.ei, i32 noundef %i.fg, i32 noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.ez, i32 noundef %i.fi)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fk = zext i1 %i.ez to i8
  store ptr %i.fj, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.fk, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.fl = load i32, ptr %i.x, align 4, !tbaa !331 ; 3 uses
  store i32 %i.fl, ptr %i.w, align 4, !tbaa !328
  %i.fm = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fn = add nsw i32 %i.fm, 1                    ; 3 uses
  store i32 %i.fn, ptr %i.y, align 8, !tbaa !329
  %i.fo = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i19.i.i = icmp slt i32 %i.fn, %i.fo
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load i32, ptr %i.z, align 4, !tbaa !344 ; 2 uses
  store i32 %i.fp, ptr %i.y, align 8, !tbaa !329
  %i.fq = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fq, ptr %i.aa, align 4, !tbaa !330
  %i.fr = load i32, ptr %i.ab, align 8, !tbaa !345
  %.not1.i20.i.i = icmp slt i32 %i.fq, %i.fr
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.fs = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fq, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.ft = phi i32 [ %i.fn, %bb.ai ], [ %i.fp, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fu = phi i32 [ %i.fl, %bb.ai ], [ %i.fl, %bb.aj ], [ %i.ei, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fu, i32 noundef %i.ft, i32 noundef %i.fs)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn126.pn.pn.i.i.i = phi { ptr, i32 } [ %i.eg, %bb.aa ], [ %i.fv, %bb.am ], [ %i.dd, %bb.t ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cv

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.fw = load ptr, ptr %i.r, align 8, !tbaa !1343, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 9 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext243.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.hq = load i8, ptr %i.fx, align 8, !tbaa !327, !range !109, !noundef !110
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.hs = load i32, ptr %i.fy, align 4, !tbaa !328
  %i.ht = load i32, ptr %i.fz, align 4, !tbaa !331
  %i.hu = icmp eq i32 %i.hs, %i.ht
  br i1 %i.hu, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hv = load i32, ptr %i.ga, align 8, !tbaa !329
  %i.hw = load i32, ptr %i.gb, align 4, !tbaa !344
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.i.i.i: ; preds = %bb.aq
  %i.hy = load i32, ptr %i.gc, align 4, !tbaa !330
  %i.hz = load i32, ptr %i.gd, align 8, !tbaa !345
  %i.ia = icmp eq i32 %i.hy, %i.hz
  br i1 %i.ia, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.i.i.i
  %i.ib = load ptr, ptr %i.gp, align 8, !tbaa !332
  %.not.i161.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i161.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ie = load ptr, ptr %i.hk, align 8, !tbaa !332
  %.not.i163.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i163.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14rangecompress_IhhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ii = load ptr, ptr %i.ge, align 8, !tbaa !1342, !nonnull !110
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !115, !range !109, !noundef !110
  %i.ik = trunc nuw i8 %i.ij to i1
  %i.il = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.ik, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i
  %i.im = load ptr, ptr %i.gf, align 8, !tbaa !338
  %i.in = sext i32 %i.il to i64                   ; 2 uses
  %i.io = getelementptr i8, ptr %i.im, i64 %i.in  ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !84
  %i.iq = uitofp i8 %i.ip to float
  %i.ir = fmul nnan float %i.iq, f0x3B808081
  %i.is = getelementptr i8, ptr %i.io, i64 1
  %i.it = load <2 x i8>, ptr %i.is, align 1, !tbaa !84
  %i.iu = uitofp <2 x i8> %i.it to <2 x float>
  %9 = fmul nnan <2 x float> %i.iu, <float f0x3B808081, float 1.000000e+00>
  %10 = fmul nnan <2 x float> %9, <float 7.151700e-01, float f0x3B808081> ; 2 uses
  %i.iv = extractelement <2 x float> %10, i64 0
  %11 = call float @llvm.fmuladd.f32(float %i.ir, float 2.126400e-01, float %i.iv)
  %12 = extractelement <2 x float> %10, i64 1
  %i.iw = call float @llvm.fmuladd.f32(float %12, float 7.219000e-02, float %11) ; 5 uses
  %i.ix = fcmp ogt float %i.iw, 0.000000e+00
  br i1 %i.ix, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.iy = fcmp ugt float %i.iw, 1.800000e-01
  br i1 %i.iy, label %bb.az, label %_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.iz = call float @llvm.fmuladd.f32(float %i.iw, float f0x438E2DCC, float 1.000000e+00)
  %i.ja = call float @llvm.log.f32(float %i.iz)
  %i.jb = call float @llvm.fmuladd.f32(float %i.ja, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.jc = call float @llvm.fabs.f32(float %i.jb)
  br label %_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i

_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i165.i.i.i = phi float [ %i.jc, %bb.az ], [ %i.iw, %bb.ay ]
  %i.jd = fdiv float %.0.i165.i.i.i, %i.iw
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i, %bb.ax
  %i.je = phi float [ %i.jd, %_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.jf = load i32, ptr %i.g, align 4, !tbaa !58
  %i.jg = icmp slt i32 %i.il, %i.jf
  br i1 %i.jg, label %.lr.ph236.i.i.i, label %.loopexit232.i.i.i

.lr.ph236.i.i.i:                                  ; preds = %bb.ba, %bb.bj
  %indvars.iv245.i.i.i = phi i64 [ %indvars.iv.next246.i.i.i, %bb.bj ], [ %i.in, %bb.ba ] ; 6 uses
  %i.jh = icmp eq i64 %indvars.iv245.i.i.i, %sext243.i.i.i
  %i.ji = icmp eq i64 %indvars.iv245.i.i.i, %sext.i.i.i
  %or.cond136.i.i.i = select i1 %i.jh, i1 true, i1 %i.ji
  %i.jj = load ptr, ptr %i.gf, align 8, !tbaa !338
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %indvars.iv245.i.i.i
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !84
  %i.jm = uitofp i8 %i.jl to float
  %i.jn = fmul nnan float %i.jm, f0x3B808081      ; 2 uses
  br i1 %or.cond136.i.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %.lr.ph236.i.i.i
  %i.jo = load ptr, ptr %4, align 8, !tbaa !333
  %i.jp = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo)
          to label %.noexc172.i.i.i unwind label %bb.be

.noexc172.i.i.i:                                  ; preds = %bb.bb
  %i.jq = icmp eq i32 %i.jp, 3
  br i1 %i.jq, label %bb.bc, label %bb.bd, !prof !85

bb.bc:                                            ; preds = %.noexc172.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.noexc172.i.i.i
  %i.jr = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv245.i.i.i
  %i.jt = fmul nnan float %i.jn, 2.550000e+02
  %i.ju = fadd float %i.jt, 5.000000e-01          ; 2 uses
  %i.jv = fcmp ogt float %i.ju, 2.550000e+02
  %.1.i.i.i.i.i.i171.i.i.i = select i1 %i.jv, float 2.550000e+02, float %i.ju
  %i.jw = fptoui float %.1.i.i.i.i.i.i171.i.i.i to i8
  store i8 %i.jw, ptr %i.js, align 1, !tbaa !84
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bf:                                            ; preds = %.lr.ph236.i.i.i
  %i.jy = fmul float %i.je, %i.jn
  %i.jz = load ptr, ptr %4, align 8, !tbaa !333
  %i.ka = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jz)
          to label %.noexc180.i.i.i unwind label %bb.bi

.noexc180.i.i.i:                                  ; preds = %bb.bf
  %i.kb = icmp eq i32 %i.ka, 3
  br i1 %i.kb, label %bb.bg, label %bb.bh, !prof !85

bb.bg:                                            ; preds = %.noexc180.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.noexc180.i.i.i
  %i.kc = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %indvars.iv245.i.i.i
  %i.ke = fmul float %i.jy, 2.550000e+02          ; 2 uses
  %i.kf = fcmp olt float %i.ke, 0.000000e+00
  %i.kg = select i1 %i.kf, float -5.000000e-01, float 5.000000e-01
  %i.kh = fadd float %i.ke, %i.kg                 ; 2 uses
  %.inv.i.i.i.i.i177.i.i.i = fcmp oge float %i.kh, 0.000000e+00
  %.0.i.i.i.i.i.i178.i.i.i = select i1 %.inv.i.i.i.i.i177.i.i.i, float %i.kh, float 0.000000e+00 ; 2 uses
  %i.ki = fcmp ogt float %.0.i.i.i.i.i.i178.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i179.i.i.i = select i1 %i.ki, float 2.550000e+02, float %.0.i.i.i.i.i.i178.i.i.i
  %i.kj = fptoui float %.1.i.i.i.i.i.i179.i.i.i to i8
  store i8 %i.kj, ptr %i.kd, align 1, !tbaa !84
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bj:                                            ; preds = %bb.bh, %bb.bd
  %indvars.iv.next246.i.i.i = add nsw i64 %indvars.iv245.i.i.i, 1 ; 2 uses
  %i.kl = load i32, ptr %i.g, align 4, !tbaa !58
  %i.km = sext i32 %i.kl to i64
  %i.kn = icmp slt i64 %indvars.iv.next246.i.i.i, %i.km
  br i1 %i.kn, label %.lr.ph236.i.i.i, label %.loopexit232.i.i.i, !llvm.loop !1338

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i
  %i.ko = load i32, ptr %i.g, align 4, !tbaa !58
  %i.kp = icmp slt i32 %i.il, %i.ko
  br i1 %i.kp, label %.lr.ph.preheader.i.i.i, label %.loopexit232.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bk
  %i.kq = sext i32 %i.il to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.kq, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bv ] ; 6 uses
  %i.kr = icmp eq i64 %indvars.iv.i.i.i, %sext243.i.i.i
  %i.ks = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond137.i.i.i = select i1 %i.kr, i1 true, i1 %i.ks
  %i.kt = load ptr, ptr %i.gf, align 8, !tbaa !338
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %indvars.iv.i.i.i
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !84
  %i.kw = uitofp i8 %i.kv to float
  %i.kx = fmul nnan float %i.kw, f0x3B808081      ; 4 uses
  br i1 %or.cond137.i.i.i, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %.lr.ph.i.i.i
  %i.ky = load ptr, ptr %4, align 8, !tbaa !333
  %i.kz = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ky)
          to label %.noexc188.i.i.i unwind label %bb.bo

.noexc188.i.i.i:                                  ; preds = %bb.bl
  %i.la = icmp eq i32 %i.kz, 3
  br i1 %i.la, label %bb.bm, label %bb.bn, !prof !85

bb.bm:                                            ; preds = %.noexc188.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %.noexc188.i.i.i
  %i.lb = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %indvars.iv.i.i.i
  %i.ld = fmul nnan float %i.kx, 2.550000e+02
  %i.le = fadd float %i.ld, 5.000000e-01          ; 2 uses
  %i.lf = fcmp ogt float %i.le, 2.550000e+02
  %.1.i.i.i.i.i.i187.i.i.i = select i1 %i.lf, float 2.550000e+02, float %i.le
  %i.lg = fptoui float %.1.i.i.i.i.i.i187.i.i.i to i8
  store i8 %i.lg, ptr %i.lc, align 1, !tbaa !84
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.li = fcmp ugt float %i.kx, 1.800000e-01
  br i1 %i.li, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lj = call float @llvm.fmuladd.f32(float %i.kx, float f0x438E2DCC, float 1.000000e+00)
  %i.lk = call float @llvm.log.f32(float %i.lj)
  %i.ll = call float @llvm.fmuladd.f32(float %i.lk, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.lm = call float @llvm.fabs.f32(float %i.ll)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0.i191.i.i.i = phi float [ %i.lm, %bb.bq ], [ %i.kx, %bb.bp ]
  %i.ln = load ptr, ptr %4, align 8, !tbaa !333
  %i.lo = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln)
          to label %.noexc198.i.i.i unwind label %bb.bu

.noexc198.i.i.i:                                  ; preds = %bb.br
  %i.lp = icmp eq i32 %i.lo, 3
  br i1 %i.lp, label %bb.bs, label %bb.bt, !prof !85

bb.bs:                                            ; preds = %.noexc198.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %.noexc198.i.i.i
  %i.lq = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %indvars.iv.i.i.i
  %i.ls = fmul float %.0.i191.i.i.i, 2.550000e+02
  %i.lt = fadd float %i.ls, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i195.i.i.i = fcmp oge float %i.lt, 0.000000e+00
  %.0.i.i.i.i.i.i196.i.i.i = select i1 %.inv.i.i.i.i.i195.i.i.i, float %i.lt, float 0.000000e+00 ; 2 uses
  %i.lu = fcmp ogt float %.0.i.i.i.i.i.i196.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i197.i.i.i = select i1 %i.lu, float 2.550000e+02, float %.0.i.i.i.i.i.i196.i.i.i
  %i.lv = fptoui float %.1.i.i.i.i.i.i197.i.i.i to i8
  store i8 %i.lv, ptr %i.lr, align 1, !tbaa !84
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.hr:                                            ; preds = %bb.hq, %bb.gs, %bb.fx, %bb.fc, %bb.ej
  %.pn116.pn.pn.i.i.i = phi { ptr, i32 } [ %i.we, %bb.fc ], [ %i.aew, %bb.hq ], [ %i.abp, %bb.gs ], [ %i.tw, %bb.ej ], [ %i.zb, %bb.fx ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.cu
  %.pn116.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn116.pn.pn.i.i.i, %bb.hr ], [ %i.oi, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.cl
  %.pn126.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn126.pn.pn.i.i.i, %bb.cl ], [ %.pn116.pn.pn.pn.i.i.i, %bb.hs ]
  resume { ptr, i32 } %.pn126.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14rangecompress_IN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_bNS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit173.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L14rangecompress_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_bNS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !353
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !76 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IttEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.117", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.113", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.117", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1357, !nonnull !110, !align !230
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !145  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not114.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond133.i.i.i = select i1 %.not114.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond133.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1358, !nonnull !110
  store i8 0, ptr %i.q, align 1, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1359, !nonnull !110, !align !230 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1357, !nonnull !110, !align !230 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 9 uses
  %sext252.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext253.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !327, !range !109, !noundef !110
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !328
  %i.av = load i32, ptr %i.x, align 4, !tbaa !331
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !329
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !344
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !345
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !332
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1358, !nonnull !110
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !115, !range !109, !noundef !110
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !338 ; 2 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr [2 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !349
  %i.bo = uitofp i16 %i.bn to float
  %i.bp = fmul nnan float %i.bo, f0x37800080
  %i.bq = getelementptr i8, ptr %i.bm, i64 2
  %i.br = load <2 x i16>, ptr %i.bq, align 2, !tbaa !349
  %i.bs = uitofp <2 x i16> %i.br to <2 x float>
  %6 = fmul nnan <2 x float> %i.bs, <float f0x37800080, float 1.000000e+00>
  %7 = fmul nnan <2 x float> %6, <float 7.151700e-01, float f0x37800080> ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  %i.bt = call float @llvm.fmuladd.f32(float %i.bp, float 2.126400e-01, float %8)
  %i.bu = extractelement <2 x float> %7, i64 1
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float 7.219000e-02, float %i.bt) ; 5 uses
  %i.bw = fcmp ogt float %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = fcmp ugt float %i.bv, 1.800000e-01
  br i1 %i.bx, label %bb.n, label %_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.by = call float @llvm.fmuladd.f32(float %i.bv, float f0x438E2DCC, float 1.000000e+00)
  %i.bz = call float @llvm.log.f32(float %i.by)
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.cb = call float @llvm.fabs.f32(float %i.ca)
  br label %_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i

_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi float [ %i.cb, %bb.n ], [ %i.bv, %bb.m ]
  %i.cc = fdiv float %.0.i.i.i.i, %i.bv
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i, %bb.l
  %i.cd = phi float [ %i.cc, %_ZN11OpenImageIO4v3_113rangecompressEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.ce = load i32, ptr %i.g, align 4, !tbaa !58  ; 2 uses
  %i.cf = icmp slt i32 %i.bj, %i.ce
  br i1 %i.cf, label %.lr.ph240.i.i.i, label %.loopexit.i.i.i

.lr.ph240.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.cg = phi i32 [ %i.da, %bb.s ], [ %i.ce, %bb.o ]
  %i.ch = phi ptr [ %i.db, %bb.s ], [ %i.bk, %bb.o ] ; 2 uses
  %indvars.iv255.i.i.i = phi i64 [ %indvars.iv.next256.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.ci = icmp eq i64 %indvars.iv255.i.i.i, %sext253.i.i.i
  %i.cj = icmp eq i64 %indvars.iv255.i.i.i, %sext252.i.i.i
  %or.cond134.i.i.i = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond134.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph240.i.i.i
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %indvars.iv255.i.i.i
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !349
  %i.cm = uitofp i16 %i.cl to float
  %i.cn = fmul nnan float %i.cm, f0x37800080
  %i.co = fmul float %i.cd, %i.cn
  %i.cp = load ptr, ptr %2, align 8, !tbaa !333
  %i.cq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.cr = icmp eq i32 %i.cq, 3
  br i1 %i.cr, label %bb.q, label %bb.r, !prof !85

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.cs = load ptr, ptr %i.ad, align 8, !tbaa !338 ; 2 uses
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %indvars.iv255.i.i.i
  %i.cu = fmul float %i.co, 6.553500e+04          ; 2 uses
  %i.cv = fcmp olt float %i.cu, 0.000000e+00
  %i.cw = select i1 %i.cv, float -5.000000e-01, float 5.000000e-01
  %i.cx = fadd float %i.cu, %i.cw                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.cx, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.cx, float 0.000000e+00 ; 2 uses
  %i.cy = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.cy, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.cz = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.cz, ptr %i.ct, align 2, !tbaa !349
  %.pre260.i.i.i = load i32, ptr %i.g, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph240.i.i.i
  %i.da = phi i32 [ %i.cg, %.lr.ph240.i.i.i ], [ %.pre260.i.i.i, %bb.r ] ; 2 uses
  %i.db = phi ptr [ %i.ch, %.lr.ph240.i.i.i ], [ %i.cs, %bb.r ]
  %indvars.iv.next256.i.i.i = add nsw i64 %indvars.iv255.i.i.i, 1 ; 2 uses
  %i.dc = sext i32 %i.da to i64
  %i.dd = icmp slt i64 %indvars.iv.next256.i.i.i, %i.dc
  br i1 %i.dd, label %.lr.ph240.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1352

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.df = load i32, ptr %i.g, align 4, !tbaa !58  ; 2 uses
  %i.dg = icmp slt i32 %i.bj, %i.df
  br i1 %i.dg, label %.lr.ph238.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph238.preheader.i.i.i:                        ; preds = %bb.u
  %i.dh = sext i32 %i.bj to i64
  br label %.lr.ph238.i.i.i

.lr.ph238.i.i.i:                                  ; preds = %bb.z, %.lr.ph238.preheader.i.i.i
  %i.di = phi i32 [ %i.df, %.lr.ph238.preheader.i.i.i ], [ %i.ee, %bb.z ]
  %indvars.iv250.i.i.i = phi i64 [ %i.dh, %.lr.ph238.preheader.i.i.i ], [ %indvars.iv.next251.i.i.i, %bb.z ] ; 5 uses
  %i.dj = icmp eq i64 %indvars.iv250.i.i.i, %sext253.i.i.i
  %i.dk = icmp eq i64 %indvars.iv250.i.i.i, %sext252.i.i.i
  %or.cond135.i.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond135.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph238.i.i.i
  %i.dl = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %indvars.iv250.i.i.i
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !349
  %i.do = uitofp i16 %i.dn to float
  %i.dp = fmul nnan float %i.do, f0x37800080      ; 3 uses
  %i.dq = fcmp ugt float %i.dp, 1.800000e-01
  br i1 %i.dq, label %bb.w, label %_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dr = call float @llvm.fmuladd.f32(float %i.dp, float f0x438E2DCC, float 1.000000e+00)
  %i.ds = call float @llvm.log.f32(float %i.dr)
  %i.dt = call float @llvm.fmuladd.f32(float %i.ds, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.du = call float @llvm.fabs.f32(float %i.dt)
  br label %_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i

_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i149.i.i.i = phi float [ %i.du, %bb.w ], [ %i.dp, %bb.v ]
  %i.dv = load ptr, ptr %2, align 8, !tbaa !333
  %i.dw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv)
          to label %.noexc156.i.i.i unwind label %bb.aa

.noexc156.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i
  %i.dx = icmp eq i32 %i.dw, 3
  br i1 %i.dx, label %bb.x, label %bb.y, !prof !85

bb.x:                                             ; preds = %.noexc156.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc156.i.i.i
  %i.dy = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %indvars.iv250.i.i.i
  %i.ea = fmul float %.0.i149.i.i.i, 6.553500e+04
  %i.eb = fadd float %i.ea, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i153.i.i.i = fcmp oge float %i.eb, 0.000000e+00
  %.0.i.i.i.i.i.i154.i.i.i = select i1 %.inv.i.i.i.i.i153.i.i.i, float %i.eb, float 0.000000e+00 ; 2 uses
  %i.ec = fcmp ogt float %.0.i.i.i.i.i.i154.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i155.i.i.i = select i1 %i.ec, float 6.553500e+04, float %.0.i.i.i.i.i.i154.i.i.i
  %i.ed = fptoui float %.1.i.i.i.i.i.i155.i.i.i to i16
  store i16 %i.ed, ptr %i.dz, align 2, !tbaa !349
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !58
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph238.i.i.i
  %i.ee = phi i32 [ %i.di, %.lr.ph238.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next251.i.i.i = add nsw i64 %indvars.iv250.i.i.i, 1 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv.next251.i.i.i, %i.ef
  br i1 %i.eg, label %.lr.ph238.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1353

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_113rangecompressEf.exit150.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.ei = load i32, ptr %i.w, align 4, !tbaa !328
  %i.ej = add nsw i32 %i.ei, 1                    ; 7 uses
  store i32 %i.ej, ptr %i.w, align 4, !tbaa !328
  %i.ek = load i32, ptr %i.ae, align 8, !tbaa !334
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.em = load i8, ptr %i.ag, align 1, !tbaa !335, !range !109, !noundef !110
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !329
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !330
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.eo = load i8, ptr %i.ah, align 1, !tbaa !336, !range !109, !noundef !110
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eq = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.er = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.eq
  store ptr %i.es, ptr %i.ad, align 8, !tbaa !338
  %i.et = load i32, ptr %i.ak, align 8, !tbaa !339
  %.not.i.i26.i.i = icmp slt i32 %i.ej, %i.et
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ae, !prof !59

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.eu = load i8, ptr %i.ai, align 2, !tbaa !340, !range !109, !noundef !110
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.ex = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %i.ew
  store ptr %i.ey, ptr %i.ad, align 8, !tbaa !338
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IttEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.ff, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !85

bb.ah:                                            ; preds = %bb.ag
  %i.fg = load ptr, ptr %2, align 8, !tbaa !333
  %i.fh = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fi = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.fj = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.fk = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i32 noundef %i.ej, i32 noundef %i.fh, i32 noundef %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.fa, i32 noundef %i.fj)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fl = zext i1 %i.fa to i8
  store ptr %i.fk, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.fl, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.fm = load i32, ptr %i.x, align 4, !tbaa !331 ; 3 uses
  store i32 %i.fm, ptr %i.w, align 4, !tbaa !328
  %i.fn = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fo = add nsw i32 %i.fn, 1                    ; 3 uses
  store i32 %i.fo, ptr %i.y, align 8, !tbaa !329
  %i.fp = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i19.i.i = icmp slt i32 %i.fo, %i.fp
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fq = load i32, ptr %i.z, align 4, !tbaa !344 ; 2 uses
  store i32 %i.fq, ptr %i.y, align 8, !tbaa !329
  %i.fr = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fr, ptr %i.aa, align 4, !tbaa !330
  %i.fs = load i32, ptr %i.ab, align 8, !tbaa !345
  %.not1.i20.i.i = icmp slt i32 %i.fr, %i.fs
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.ft = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fr, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.fu = phi i32 [ %i.fo, %bb.ai ], [ %i.fq, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fv = phi i32 [ %i.fm, %bb.ai ], [ %i.fm, %bb.aj ], [ %i.ej, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fv, i32 noundef %i.fu, i32 noundef %i.ft)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn126.pn.pn.i.i.i = phi { ptr, i32 } [ %i.eh, %bb.aa ], [ %i.fw, %bb.am ], [ %i.de, %bb.t ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cv

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.fx = load ptr, ptr %i.r, align 8, !tbaa !1359, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 9 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext243.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.hr = load i8, ptr %i.fy, align 8, !tbaa !327, !range !109, !noundef !110
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ht = load i32, ptr %i.fz, align 4, !tbaa !328
  %i.hu = load i32, ptr %i.ga, align 4, !tbaa !331
  %i.hv = icmp eq i32 %i.ht, %i.hu
  br i1 %i.hv, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hw = load i32, ptr %i.gb, align 8, !tbaa !329
  %i.hx = load i32, ptr %i.gc, align 4, !tbaa !344
  %i.hy = icmp eq i32 %i.hw, %i.hx
  br i1 %i.hy, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.i.i.i: ; preds = %bb.aq
  %i.hz = load i32, ptr %i.gd, align 4, !tbaa !330
  %i.ia = load i32, ptr %i.ge, align 8, !tbaa !345
  %i.ib = icmp eq i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.i.i.i
  %i.ic = load ptr, ptr %i.gq, align 8, !tbaa !332
  %.not.i161.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i161.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.if = load ptr, ptr %i.hl, align 8, !tbaa !332
  %.not.i163.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i163.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit162.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ij = load ptr, ptr %i.gf, align 8, !tbaa !1358, !nonnull !110
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !115, !range !109, !noundef !110
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.il, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i
  %i.in = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.io = sext i32 %i.im to i64                   ; 2 uses
  %i.ip = getelementptr [2 x i8], ptr %i.in, i64 %i.io ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !349
  %i.ir = uitofp i16 %i.iq to float
  %i.is = fmul nnan float %i.ir, f0x37800080
  %i.it = getelementptr i8, ptr %i.ip, i64 2
  %i.iu = load <2 x i16>, ptr %i.it, align 2, !tbaa !349
  %i.iv = uitofp <2 x i16> %i.iu to <2 x float>
  %9 = fmul nnan <2 x float> %i.iv, <float f0x37800080, float 1.000000e+00>
  %10 = fmul nnan <2 x float> %9, <float 7.151700e-01, float f0x37800080> ; 2 uses
  %i.iw = extractelement <2 x float> %10, i64 0
  %11 = call float @llvm.fmuladd.f32(float %i.is, float 2.126400e-01, float %i.iw)
  %12 = extractelement <2 x float> %10, i64 1
  %i.ix = call float @llvm.fmuladd.f32(float %12, float 7.219000e-02, float %11) ; 5 uses
  %i.iy = fcmp ogt float %i.ix, 0.000000e+00
  br i1 %i.iy, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.iz = fcmp ugt float %i.ix, 1.800000e-01
  br i1 %i.iz, label %bb.az, label %_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ja = call float @llvm.fmuladd.f32(float %i.ix, float f0x438E2DCC, float 1.000000e+00)
  %i.jb = call float @llvm.log.f32(float %i.ja)
  %i.jc = call float @llvm.fmuladd.f32(float %i.jb, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.jd = call float @llvm.fabs.f32(float %i.jc)
  br label %_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i

_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i165.i.i.i = phi float [ %i.jd, %bb.az ], [ %i.ix, %bb.ay ]
  %i.je = fdiv float %.0.i165.i.i.i, %i.ix
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i, %bb.ax
  %i.jf = phi float [ %i.je, %_ZN11OpenImageIO4v3_113rangecompressEf.exit166.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.jg = load i32, ptr %i.g, align 4, !tbaa !58
  %i.jh = icmp slt i32 %i.im, %i.jg
  br i1 %i.jh, label %.lr.ph236.i.i.i, label %.loopexit232.i.i.i

.lr.ph236.i.i.i:                                  ; preds = %bb.ba, %bb.bj
  %indvars.iv245.i.i.i = phi i64 [ %indvars.iv.next246.i.i.i, %bb.bj ], [ %i.io, %bb.ba ] ; 6 uses
  %i.ji = icmp eq i64 %indvars.iv245.i.i.i, %sext243.i.i.i
  %i.jj = icmp eq i64 %indvars.iv245.i.i.i, %sext.i.i.i
  %or.cond136.i.i.i = select i1 %i.ji, i1 true, i1 %i.jj
  %i.jk = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.jl = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %indvars.iv245.i.i.i
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !349
  %i.jn = uitofp i16 %i.jm to float
  %i.jo = fmul nnan float %i.jn, f0x37800080      ; 2 uses
  br i1 %or.cond136.i.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %.lr.ph236.i.i.i
  %i.jp = load ptr, ptr %4, align 8, !tbaa !333
  %i.jq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp)
          to label %.noexc172.i.i.i unwind label %bb.be

.noexc172.i.i.i:                                  ; preds = %bb.bb
  %i.jr = icmp eq i32 %i.jq, 3
  br i1 %i.jr, label %bb.bc, label %bb.bd, !prof !85

bb.bc:                                            ; preds = %.noexc172.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.noexc172.i.i.i
  %i.js = load ptr, ptr %i.gh, align 8, !tbaa !338
  %i.jt = getelementptr inbounds [2 x i8], ptr %i.js, i64 %indvars.iv245.i.i.i
  %i.ju = fmul nnan float %i.jo, 6.553500e+04
  %i.jv = fadd float %i.ju, 5.000000e-01          ; 2 uses
  %i.jw = fcmp ogt float %i.jv, 6.553500e+04
  %.1.i.i.i.i.i.i171.i.i.i = select i1 %i.jw, float 6.553500e+04, float %i.jv
  %i.jx = fptoui float %.1.i.i.i.i.i.i171.i.i.i to i16
  store i16 %i.jx, ptr %i.jt, align 2, !tbaa !349
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bf:                                            ; preds = %.lr.ph236.i.i.i
  %i.jz = fmul float %i.jf, %i.jo
  %i.ka = load ptr, ptr %4, align 8, !tbaa !333
  %i.kb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ka)
          to label %.noexc180.i.i.i unwind label %bb.bi

.noexc180.i.i.i:                                  ; preds = %bb.bf
  %i.kc = icmp eq i32 %i.kb, 3
  br i1 %i.kc, label %bb.bg, label %bb.bh, !prof !85

bb.bg:                                            ; preds = %.noexc180.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.noexc180.i.i.i
  %i.kd = load ptr, ptr %i.gh, align 8, !tbaa !338
  %i.ke = getelementptr inbounds [2 x i8], ptr %i.kd, i64 %indvars.iv245.i.i.i
  %i.kf = fmul float %i.jz, 6.553500e+04          ; 2 uses
  %i.kg = fcmp olt float %i.kf, 0.000000e+00
  %i.kh = select i1 %i.kg, float -5.000000e-01, float 5.000000e-01
  %i.ki = fadd float %i.kf, %i.kh                 ; 2 uses
  %.inv.i.i.i.i.i177.i.i.i = fcmp oge float %i.ki, 0.000000e+00
  %.0.i.i.i.i.i.i178.i.i.i = select i1 %.inv.i.i.i.i.i177.i.i.i, float %i.ki, float 0.000000e+00 ; 2 uses
  %i.kj = fcmp ogt float %.0.i.i.i.i.i.i178.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i179.i.i.i = select i1 %i.kj, float 6.553500e+04, float %.0.i.i.i.i.i.i178.i.i.i
  %i.kk = fptoui float %.1.i.i.i.i.i.i179.i.i.i to i16
  store i16 %i.kk, ptr %i.ke, align 2, !tbaa !349
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bj:                                            ; preds = %bb.bh, %bb.bd
  %indvars.iv.next246.i.i.i = add nsw i64 %indvars.iv245.i.i.i, 1 ; 2 uses
  %i.km = load i32, ptr %i.g, align 4, !tbaa !58
  %i.kn = sext i32 %i.km to i64
  %i.ko = icmp slt i64 %indvars.iv.next246.i.i.i, %i.kn
  br i1 %i.ko, label %.lr.ph236.i.i.i, label %.loopexit232.i.i.i, !llvm.loop !1354

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit160.thread.i.i.i
  %i.kp = load i32, ptr %i.g, align 4, !tbaa !58
  %i.kq = icmp slt i32 %i.im, %i.kp
  br i1 %i.kq, label %.lr.ph.preheader.i.i.i, label %.loopexit232.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bk
  %i.kr = sext i32 %i.im to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.kr, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bv ] ; 6 uses
  %i.ks = icmp eq i64 %indvars.iv.i.i.i, %sext243.i.i.i
  %i.kt = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond137.i.i.i = select i1 %i.ks, i1 true, i1 %i.kt
  %i.ku = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.ku, i64 %indvars.iv.i.i.i
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !349
  %i.kx = uitofp i16 %i.kw to float
  %i.ky = fmul nnan float %i.kx, f0x37800080      ; 4 uses
  br i1 %or.cond137.i.i.i, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %.lr.ph.i.i.i
  %i.kz = load ptr, ptr %4, align 8, !tbaa !333
  %i.la = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kz)
          to label %.noexc188.i.i.i unwind label %bb.bo

.noexc188.i.i.i:                                  ; preds = %bb.bl
  %i.lb = icmp eq i32 %i.la, 3
  br i1 %i.lb, label %bb.bm, label %bb.bn, !prof !85

bb.bm:                                            ; preds = %.noexc188.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %.noexc188.i.i.i
  %i.lc = load ptr, ptr %i.gh, align 8, !tbaa !338
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.lc, i64 %indvars.iv.i.i.i
  %i.le = fmul nnan float %i.ky, 6.553500e+04
  %i.lf = fadd float %i.le, 5.000000e-01          ; 2 uses
  %i.lg = fcmp ogt float %i.lf, 6.553500e+04
  %.1.i.i.i.i.i.i187.i.i.i = select i1 %i.lg, float 6.553500e+04, float %i.lf
  %i.lh = fptoui float %.1.i.i.i.i.i.i187.i.i.i to i16
  store i16 %i.lh, ptr %i.ld, align 2, !tbaa !349
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.lj = fcmp ugt float %i.ky, 1.800000e-01
  br i1 %i.lj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lk = call float @llvm.fmuladd.f32(float %i.ky, float f0x438E2DCC, float 1.000000e+00)
  %i.ll = call float @llvm.log.f32(float %i.lk)
  %i.lm = call float @llvm.fmuladd.f32(float %i.ll, float f0x3E3BEBCD, float f0xBF0BB782)
  %i.ln = call float @llvm.fabs.f32(float %i.lm)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0.i191.i.i.i = phi float [ %i.ln, %bb.bq ], [ %i.ky, %bb.bp ]
  %i.lo = load ptr, ptr %4, align 8, !tbaa !333
  %i.lp = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo)
          to label %.noexc198.i.i.i unwind label %bb.bu

.noexc198.i.i.i:                                  ; preds = %bb.br
  %i.lq = icmp eq i32 %i.lp, 3
  br i1 %i.lq, label %bb.bs, label %bb.bt, !prof !85

bb.bs:                                            ; preds = %.noexc198.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %.noexc198.i.i.i
  %i.lr = load ptr, ptr %i.gh, align 8, !tbaa !338
  %i.ls = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %indvars.iv.i.i.i
  %i.lt = fmul float %.0.i191.i.i.i, 6.553500e+04
  %i.lu = fadd float %i.lt, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i195.i.i.i = fcmp oge float %i.lu, 0.000000e+00
  %.0.i.i.i.i.i.i196.i.i.i = select i1 %.inv.i.i.i.i.i195.i.i.i, float %i.lu, float 0.000000e+00 ; 2 uses
  %i.lv = fcmp ogt float %.0.i.i.i.i.i.i196.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i197.i.i.i = select i1 %i.lv, float 6.553500e+04, float %.0.i.i.i.i.i.i196.i.i.i
  %i.lw = fptoui float %.1.i.i.i.i.i.i197.i.i.i to i16
  store i16 %i.lw, ptr %i.ls, align 2, !tbaa !349
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

end_hunk_5
begin_hunk_6_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IfhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.ff, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !85

bb.ah:                                            ; preds = %bb.ag
  %i.fg = load ptr, ptr %2, align 8, !tbaa !333
  %i.fh = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fi = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.fj = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.fk = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i32 noundef %i.ej, i32 noundef %i.fh, i32 noundef %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.fa, i32 noundef %i.fj)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fl = zext i1 %i.fa to i8
  store ptr %i.fk, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.fl, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.fm = load i32, ptr %i.x, align 4, !tbaa !331 ; 3 uses
  store i32 %i.fm, ptr %i.w, align 4, !tbaa !328
  %i.fn = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fo = add nsw i32 %i.fn, 1                    ; 3 uses
  store i32 %i.fo, ptr %i.y, align 8, !tbaa !329
  %i.fp = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i19.i.i = icmp slt i32 %i.fo, %i.fp
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fq = load i32, ptr %i.z, align 4, !tbaa !344 ; 2 uses
  store i32 %i.fq, ptr %i.y, align 8, !tbaa !329
  %i.fr = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fr, ptr %i.aa, align 4, !tbaa !330
  %i.fs = load i32, ptr %i.ab, align 8, !tbaa !345
  %.not1.i20.i.i = icmp slt i32 %i.fr, %i.fs
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.ft = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fr, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.fu = phi i32 [ %i.fo, %bb.ai ], [ %i.fq, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fv = phi i32 [ %i.fm, %bb.ai ], [ %i.fm, %bb.aj ], [ %i.ej, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fv, i32 noundef %i.fu, i32 noundef %i.ft)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dc, %bb.t ], [ %i.fw, %bb.am ], [ %i.eh, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cr

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.fx = load ptr, ptr %i.r, align 8, !tbaa !1375, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext235.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.hr = load i8, ptr %i.fy, align 8, !tbaa !327, !range !109, !noundef !110
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ht = load i32, ptr %i.fz, align 4, !tbaa !328
  %i.hu = load i32, ptr %i.ga, align 4, !tbaa !331
  %i.hv = icmp eq i32 %i.ht, %i.hu
  br i1 %i.hv, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hw = load i32, ptr %i.gb, align 8, !tbaa !329
  %i.hx = load i32, ptr %i.gc, align 4, !tbaa !344
  %i.hy = icmp eq i32 %i.hw, %i.hx
  br i1 %i.hy, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i: ; preds = %bb.aq
  %i.hz = load i32, ptr %i.gd, align 4, !tbaa !330
  %i.ia = load i32, ptr %i.ge, align 8, !tbaa !345
  %i.ib = icmp eq i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i
  %i.ic = load ptr, ptr %i.gq, align 8, !tbaa !332
  %.not.i163.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i163.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.if = load ptr, ptr %i.hl, align 8, !tbaa !332
  %.not.i165.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i165.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ij = load ptr, ptr %i.gf, align 8, !tbaa !1374, !nonnull !110
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !115, !range !109, !noundef !110
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.il, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.in = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.io = sext i32 %i.im to i64                   ; 2 uses
  %i.ip = getelementptr i8, ptr %i.in, i64 %i.io  ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !84
  %i.ir = uitofp i8 %i.iq to float
  %i.is = fmul nnan float %i.ir, f0x3B808081
  %i.it = getelementptr i8, ptr %i.ip, i64 1
  %i.iu = load <2 x i8>, ptr %i.it, align 1, !tbaa !84
  %i.iv = uitofp <2 x i8> %i.iu to <2 x float>
  %6 = fmul nnan <2 x float> %i.iv, <float f0x3B808081, float 1.000000e+00>
  %7 = fmul nnan <2 x float> %6, <float 7.151700e-01, float f0x3B808081> ; 2 uses
  %i.iw = extractelement <2 x float> %7, i64 0
  %8 = call float @llvm.fmuladd.f32(float %i.is, float 2.126400e-01, float %i.iw)
  %9 = extractelement <2 x float> %7, i64 1
  %i.ix = call float @llvm.fmuladd.f32(float %9, float 7.219000e-02, float %8) ; 5 uses
  %i.iy = fcmp ogt float %i.ix, 0.000000e+00
  br i1 %i.iy, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.iz = fcmp ugt float %i.ix, 1.800000e-01
  br i1 %i.iz, label %bb.az, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ja = fadd float %i.ix, f0x3F0BB782
  %i.jb = fdiv float %i.ja, f0x3E3BEBCD
  %i.jc = call float @llvm.exp.f32(float %i.jb)   ; 2 uses
  %i.jd = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.jc, i64 0
  %i.je = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.jc, i64 1
  %i.jf = fsub <2 x float> %i.jd, %i.je
  %i.jg = fdiv <2 x float> %i.jf, splat (float f0x438E2DCC) ; 2 uses
  %i.jh = extractelement <2 x float> %i.jg, i64 0 ; 2 uses
  %i.ji = fcmp olt float %i.jh, 1.800000e-01
  %i.jj = extractelement <2 x float> %i.jg, i64 1
  %.0.i168.i.i.i = select i1 %i.ji, float %i.jj, float %i.jh
  %i.jk = call float @llvm.fabs.f32(float %.0.i168.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i: ; preds = %bb.az, %bb.ay
  %.010.i167.i.i.i = phi float [ %i.jk, %bb.az ], [ %i.ix, %bb.ay ]
  %i.jl = fdiv float %.010.i167.i.i.i, %i.ix
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i, %bb.ax
  %i.jm = phi float [ %i.jl, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.jn = load i32, ptr %i.g, align 4, !tbaa !58
  %i.jo = icmp slt i32 %i.im, %i.jn
  br i1 %i.jo, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i

.lr.ph228.i.i.i:                                  ; preds = %bb.ba, %bb.bh
  %indvars.iv237.i.i.i = phi i64 [ %indvars.iv.next238.i.i.i, %bb.bh ], [ %i.io, %bb.ba ] ; 5 uses
  %i.jp = icmp eq i64 %indvars.iv237.i.i.i, %sext235.i.i.i
  %i.jq = icmp eq i64 %indvars.iv237.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.jp, i1 true, i1 %i.jq
  %i.jr = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv237.i.i.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !84
  %i.ju = uitofp i8 %i.jt to float
  %i.jv = fmul nnan float %i.ju, f0x3B808081      ; 3 uses
  br i1 %or.cond140.i.i.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.lr.ph228.i.i.i
  %i.jw = load ptr, ptr %4, align 8, !tbaa !333
  %i.jx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jw)
          to label %.noexc172.i.i.i unwind label %bb.bd

.noexc172.i.i.i:                                  ; preds = %bb.bb
  %i.jy = icmp eq i32 %i.jx, 3
  br i1 %i.jy, label %bb.bc, label %bb.bh, !prof !85

bb.bc:                                            ; preds = %.noexc172.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.be:                                            ; preds = %.lr.ph228.i.i.i
  %i.ka = fmul float %i.jm, %i.jv                 ; 2 uses
  %i.kb = load ptr, ptr %4, align 8, !tbaa !333
  %i.kc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb)
          to label %.noexc177.i.i.i unwind label %bb.bg

.noexc177.i.i.i:                                  ; preds = %bb.be
  %i.kd = icmp eq i32 %i.kc, 3
  br i1 %i.kd, label %bb.bf, label %bb.bh, !prof !85

bb.bf:                                            ; preds = %.noexc177.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bh:                                            ; preds = %bb.bf, %.noexc177.i.i.i, %bb.bc, %.noexc172.i.i.i
  %.sink.i.i.i = phi float [ %i.jv, %bb.bc ], [ %i.jv, %.noexc172.i.i.i ], [ %i.ka, %.noexc177.i.i.i ], [ %i.ka, %bb.bf ]
  %i.kf = load ptr, ptr %i.gh, align 8, !tbaa !338
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %indvars.iv237.i.i.i
  store float %.sink.i.i.i, ptr %i.kg, align 4, !tbaa !92
  %indvars.iv.next238.i.i.i = add nsw i64 %indvars.iv237.i.i.i, 1 ; 2 uses
  %i.kh = load i32, ptr %i.g, align 4, !tbaa !58
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next238.i.i.i, %i.ki
  br i1 %i.kj, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1370

bb.bi:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.kk = load i32, ptr %i.g, align 4, !tbaa !58
  %i.kl = icmp slt i32 %i.im, %i.kk
  br i1 %i.kl, label %.lr.ph.preheader.i.i.i, label %.loopexit224.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bi
  %i.km = sext i32 %i.im to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.km, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.br ] ; 5 uses
  %i.kn = icmp eq i64 %indvars.iv.i.i.i, %sext235.i.i.i
  %i.ko = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.kn, i1 true, i1 %i.ko
  %i.kp = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 %indvars.iv.i.i.i
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !84
  %i.ks = uitofp i8 %i.kr to float
  %i.kt = fmul nnan float %i.ks, f0x3B808081      ; 5 uses
  br i1 %or.cond141.i.i.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.ku = load ptr, ptr %4, align 8, !tbaa !333
  %i.kv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku)
          to label %.noexc182.i.i.i unwind label %bb.bl

.noexc182.i.i.i:                                  ; preds = %bb.bj
  %i.kw = icmp eq i32 %i.kv, 3
  br i1 %i.kw, label %bb.bk, label %bb.br, !prof !85

bb.bk:                                            ; preds = %.noexc182.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bm:                                            ; preds = %.lr.ph.i.i.i
  %i.ky = fcmp ugt float %i.kt, 1.800000e-01
  br i1 %i.ky, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kz = fadd float %i.kt, f0x3F0BB782
  %i.la = fdiv float %i.kz, f0x3E3BEBCD
  %i.lb = call float @llvm.exp.f32(float %i.la)   ; 2 uses
  %i.lc = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.lb, i64 0
  %i.ld = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.lb, i64 1
  %i.le = fsub <2 x float> %i.lc, %i.ld
  %i.lf = fdiv <2 x float> %i.le, splat (float f0x438E2DCC) ; 2 uses
  %i.lg = extractelement <2 x float> %i.lf, i64 0 ; 2 uses
  %i.lh = fcmp olt float %i.lg, 1.800000e-01
  %i.li = extractelement <2 x float> %i.lf, i64 1
  %.0.i186.i.i.i = select i1 %i.lh, float %i.li, float %i.lg
  %i.lj = call float @llvm.fabs.f32(float %.0.i186.i.i.i)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.010.i185.i.i.i = phi float [ %i.lj, %bb.bn ], [ %i.kt, %bb.bm ] ; 2 uses
  %i.lk = load ptr, ptr %4, align 8, !tbaa !333
  %i.ll = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk)
          to label %.noexc190.i.i.i unwind label %bb.bq

.noexc190.i.i.i:                                  ; preds = %bb.bo
  %i.lm = icmp eq i32 %i.ll, 3
  br i1 %i.lm, label %bb.bp, label %bb.br, !prof !85

bb.bp:                                            ; preds = %.noexc190.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.br:                                            ; preds = %bb.bp, %.noexc190.i.i.i, %bb.bk, %.noexc182.i.i.i
  %.sink266.i.i.i = phi float [ %i.kt, %bb.bk ], [ %i.kt, %.noexc182.i.i.i ], [ %.010.i185.i.i.i, %.noexc190.i.i.i ], [ %.010.i185.i.i.i, %bb.bp ]
  %i.lo = load ptr, ptr %i.gh, align 8, !tbaa !338
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %indvars.iv.i.i.i
  store float %.sink266.i.i.i, ptr %i.lp, align 4, !tbaa !92
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.lq = load i32, ptr %i.g, align 4, !tbaa !58
  %i.lr = sext i32 %i.lq to i64
  %i.ls = icmp slt i64 %indvars.iv.next.i.i.i, %i.lr
  br i1 %i.ls, label %.lr.ph.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1371

.loopexit224.i.i.i:                               ; preds = %bb.br, %bb.bh, %bb.bi, %bb.ba
  %i.lt = load i32, ptr %i.fz, align 4, !tbaa !328
  %i.lu = add nsw i32 %i.lt, 1                    ; 7 uses
  store i32 %i.lu, ptr %i.fz, align 4, !tbaa !328
  %i.lv = load i32, ptr %i.gi, align 8, !tbaa !334
  %i.lw = icmp slt i32 %i.lu, %i.lv
  br i1 %i.lw, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %.loopexit224.i.i.i
  %i.lx = load i8, ptr %i.gk, align 1, !tbaa !335, !range !109, !noundef !110
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.bt, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.bs
  %.pre.i11.i.i = load i32, ptr %i.gb, align 8, !tbaa !329
  %.pre.i.i = load i32, ptr %i.gd, align 4, !tbaa !330
  br label %bb.cc

bb.bt:                                            ; preds = %bb.bs
end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.ff, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !85

bb.ah:                                            ; preds = %bb.ag
  %i.fg = load ptr, ptr %2, align 8, !tbaa !333
  %i.fh = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fi = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.fj = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.fk = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i32 noundef %i.ej, i32 noundef %i.fh, i32 noundef %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.fa, i32 noundef %i.fj)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fl = zext i1 %i.fa to i8
  store ptr %i.fk, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.fl, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.fm = load i32, ptr %i.x, align 4, !tbaa !331 ; 3 uses
  store i32 %i.fm, ptr %i.w, align 4, !tbaa !328
  %i.fn = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fo = add nsw i32 %i.fn, 1                    ; 3 uses
  store i32 %i.fo, ptr %i.y, align 8, !tbaa !329
  %i.fp = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i19.i.i = icmp slt i32 %i.fo, %i.fp
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fq = load i32, ptr %i.z, align 4, !tbaa !344 ; 2 uses
  store i32 %i.fq, ptr %i.y, align 8, !tbaa !329
  %i.fr = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fr, ptr %i.aa, align 4, !tbaa !330
  %i.fs = load i32, ptr %i.ab, align 8, !tbaa !345
  %.not1.i20.i.i = icmp slt i32 %i.fr, %i.fs
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.ft = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fr, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.fu = phi i32 [ %i.fo, %bb.ai ], [ %i.fq, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fv = phi i32 [ %i.fm, %bb.ai ], [ %i.fm, %bb.aj ], [ %i.ej, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fv, i32 noundef %i.fu, i32 noundef %i.ft)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dc, %bb.t ], [ %i.fw, %bb.am ], [ %i.eh, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cr

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.fx = load ptr, ptr %i.r, align 8, !tbaa !1391, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext235.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.hr = load i8, ptr %i.fy, align 8, !tbaa !327, !range !109, !noundef !110
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ht = load i32, ptr %i.fz, align 4, !tbaa !328
  %i.hu = load i32, ptr %i.ga, align 4, !tbaa !331
  %i.hv = icmp eq i32 %i.ht, %i.hu
  br i1 %i.hv, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hw = load i32, ptr %i.gb, align 8, !tbaa !329
  %i.hx = load i32, ptr %i.gc, align 4, !tbaa !344
  %i.hy = icmp eq i32 %i.hw, %i.hx
  br i1 %i.hy, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i: ; preds = %bb.aq
  %i.hz = load i32, ptr %i.gd, align 4, !tbaa !330
  %i.ia = load i32, ptr %i.ge, align 8, !tbaa !345
  %i.ib = icmp eq i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i
  %i.ic = load ptr, ptr %i.gq, align 8, !tbaa !332
  %.not.i163.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i163.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.if = load ptr, ptr %i.hl, align 8, !tbaa !332
  %.not.i165.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i165.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ij = load ptr, ptr %i.gf, align 8, !tbaa !1390, !nonnull !110
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !115, !range !109, !noundef !110
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.il, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.in = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.io = sext i32 %i.im to i64                   ; 2 uses
  %i.ip = getelementptr [2 x i8], ptr %i.in, i64 %i.io ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !349
  %i.ir = uitofp i16 %i.iq to float
  %i.is = fmul nnan float %i.ir, f0x37800080
  %i.it = getelementptr i8, ptr %i.ip, i64 2
  %i.iu = load <2 x i16>, ptr %i.it, align 2, !tbaa !349
  %i.iv = uitofp <2 x i16> %i.iu to <2 x float>
  %6 = fmul nnan <2 x float> %i.iv, <float f0x37800080, float 1.000000e+00>
  %7 = fmul nnan <2 x float> %6, <float 7.151700e-01, float f0x37800080> ; 2 uses
  %i.iw = extractelement <2 x float> %7, i64 0
  %8 = call float @llvm.fmuladd.f32(float %i.is, float 2.126400e-01, float %i.iw)
  %9 = extractelement <2 x float> %7, i64 1
  %i.ix = call float @llvm.fmuladd.f32(float %9, float 7.219000e-02, float %8) ; 5 uses
  %i.iy = fcmp ogt float %i.ix, 0.000000e+00
  br i1 %i.iy, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.iz = fcmp ugt float %i.ix, 1.800000e-01
  br i1 %i.iz, label %bb.az, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ja = fadd float %i.ix, f0x3F0BB782
  %i.jb = fdiv float %i.ja, f0x3E3BEBCD
  %i.jc = call float @llvm.exp.f32(float %i.jb)   ; 2 uses
  %i.jd = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.jc, i64 0
  %i.je = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.jc, i64 1
  %i.jf = fsub <2 x float> %i.jd, %i.je
  %i.jg = fdiv <2 x float> %i.jf, splat (float f0x438E2DCC) ; 2 uses
  %i.jh = extractelement <2 x float> %i.jg, i64 0 ; 2 uses
  %i.ji = fcmp olt float %i.jh, 1.800000e-01
  %i.jj = extractelement <2 x float> %i.jg, i64 1
  %.0.i168.i.i.i = select i1 %i.ji, float %i.jj, float %i.jh
  %i.jk = call float @llvm.fabs.f32(float %.0.i168.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i: ; preds = %bb.az, %bb.ay
  %.010.i167.i.i.i = phi float [ %i.jk, %bb.az ], [ %i.ix, %bb.ay ]
  %i.jl = fdiv float %.010.i167.i.i.i, %i.ix
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i, %bb.ax
  %i.jm = phi float [ %i.jl, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.jn = load i32, ptr %i.g, align 4, !tbaa !58
  %i.jo = icmp slt i32 %i.im, %i.jn
  br i1 %i.jo, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i

.lr.ph228.i.i.i:                                  ; preds = %bb.ba, %bb.bh
  %indvars.iv237.i.i.i = phi i64 [ %indvars.iv.next238.i.i.i, %bb.bh ], [ %i.io, %bb.ba ] ; 5 uses
  %i.jp = icmp eq i64 %indvars.iv237.i.i.i, %sext235.i.i.i
  %i.jq = icmp eq i64 %indvars.iv237.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.jp, i1 true, i1 %i.jq
  %i.jr = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.js = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv237.i.i.i
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !349
  %i.ju = uitofp i16 %i.jt to float
  %i.jv = fmul nnan float %i.ju, f0x37800080      ; 3 uses
  br i1 %or.cond140.i.i.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.lr.ph228.i.i.i
  %i.jw = load ptr, ptr %4, align 8, !tbaa !333
  %i.jx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jw)
          to label %.noexc172.i.i.i unwind label %bb.bd

.noexc172.i.i.i:                                  ; preds = %bb.bb
  %i.jy = icmp eq i32 %i.jx, 3
  br i1 %i.jy, label %bb.bc, label %bb.bh, !prof !85

bb.bc:                                            ; preds = %.noexc172.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.be:                                            ; preds = %.lr.ph228.i.i.i
  %i.ka = fmul float %i.jm, %i.jv                 ; 2 uses
  %i.kb = load ptr, ptr %4, align 8, !tbaa !333
  %i.kc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb)
          to label %.noexc177.i.i.i unwind label %bb.bg

.noexc177.i.i.i:                                  ; preds = %bb.be
  %i.kd = icmp eq i32 %i.kc, 3
  br i1 %i.kd, label %bb.bf, label %bb.bh, !prof !85

bb.bf:                                            ; preds = %.noexc177.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bh:                                            ; preds = %bb.bf, %.noexc177.i.i.i, %bb.bc, %.noexc172.i.i.i
  %.sink.i.i.i = phi float [ %i.jv, %bb.bc ], [ %i.jv, %.noexc172.i.i.i ], [ %i.ka, %.noexc177.i.i.i ], [ %i.ka, %bb.bf ]
  %i.kf = load ptr, ptr %i.gh, align 8, !tbaa !338
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %indvars.iv237.i.i.i
  store float %.sink.i.i.i, ptr %i.kg, align 4, !tbaa !92
  %indvars.iv.next238.i.i.i = add nsw i64 %indvars.iv237.i.i.i, 1 ; 2 uses
  %i.kh = load i32, ptr %i.g, align 4, !tbaa !58
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next238.i.i.i, %i.ki
  br i1 %i.kj, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1386

bb.bi:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.kk = load i32, ptr %i.g, align 4, !tbaa !58
  %i.kl = icmp slt i32 %i.im, %i.kk
  br i1 %i.kl, label %.lr.ph.preheader.i.i.i, label %.loopexit224.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bi
  %i.km = sext i32 %i.im to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.km, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.br ] ; 5 uses
  %i.kn = icmp eq i64 %indvars.iv.i.i.i, %sext235.i.i.i
  %i.ko = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.kn, i1 true, i1 %i.ko
  %i.kp = load ptr, ptr %i.gg, align 8, !tbaa !338
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.kp, i64 %indvars.iv.i.i.i
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !349
  %i.ks = uitofp i16 %i.kr to float
  %i.kt = fmul nnan float %i.ks, f0x37800080      ; 5 uses
  br i1 %or.cond141.i.i.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.ku = load ptr, ptr %4, align 8, !tbaa !333
  %i.kv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku)
          to label %.noexc182.i.i.i unwind label %bb.bl

.noexc182.i.i.i:                                  ; preds = %bb.bj
  %i.kw = icmp eq i32 %i.kv, 3
  br i1 %i.kw, label %bb.bk, label %bb.br, !prof !85

bb.bk:                                            ; preds = %.noexc182.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bm:                                            ; preds = %.lr.ph.i.i.i
  %i.ky = fcmp ugt float %i.kt, 1.800000e-01
  br i1 %i.ky, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kz = fadd float %i.kt, f0x3F0BB782
  %i.la = fdiv float %i.kz, f0x3E3BEBCD
  %i.lb = call float @llvm.exp.f32(float %i.la)   ; 2 uses
  %i.lc = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.lb, i64 0
  %i.ld = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.lb, i64 1
  %i.le = fsub <2 x float> %i.lc, %i.ld
  %i.lf = fdiv <2 x float> %i.le, splat (float f0x438E2DCC) ; 2 uses
  %i.lg = extractelement <2 x float> %i.lf, i64 0 ; 2 uses
  %i.lh = fcmp olt float %i.lg, 1.800000e-01
  %i.li = extractelement <2 x float> %i.lf, i64 1
  %.0.i186.i.i.i = select i1 %i.lh, float %i.li, float %i.lg
  %i.lj = call float @llvm.fabs.f32(float %.0.i186.i.i.i)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.010.i185.i.i.i = phi float [ %i.lj, %bb.bn ], [ %i.kt, %bb.bm ] ; 2 uses
  %i.lk = load ptr, ptr %4, align 8, !tbaa !333
  %i.ll = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk)
          to label %.noexc190.i.i.i unwind label %bb.bq

.noexc190.i.i.i:                                  ; preds = %bb.bo
  %i.lm = icmp eq i32 %i.ll, 3
  br i1 %i.lm, label %bb.bp, label %bb.br, !prof !85

bb.bp:                                            ; preds = %.noexc190.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.br:                                            ; preds = %bb.bp, %.noexc190.i.i.i, %bb.bk, %.noexc182.i.i.i
  %.sink266.i.i.i = phi float [ %i.kt, %bb.bk ], [ %i.kt, %.noexc182.i.i.i ], [ %.010.i185.i.i.i, %.noexc190.i.i.i ], [ %.010.i185.i.i.i, %bb.bp ]
  %i.lo = load ptr, ptr %i.gh, align 8, !tbaa !338
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %indvars.iv.i.i.i
  store float %.sink266.i.i.i, ptr %i.lp, align 4, !tbaa !92
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.lq = load i32, ptr %i.g, align 4, !tbaa !58
  %i.lr = sext i32 %i.lq to i64
  %i.ls = icmp slt i64 %indvars.iv.next.i.i.i, %i.lr
  br i1 %i.ls, label %.lr.ph.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1387

.loopexit224.i.i.i:                               ; preds = %bb.br, %bb.bh, %bb.bi, %bb.ba
  %i.lt = load i32, ptr %i.fz, align 4, !tbaa !328
  %i.lu = add nsw i32 %i.lt, 1                    ; 7 uses
  store i32 %i.lu, ptr %i.fz, align 4, !tbaa !328
  %i.lv = load i32, ptr %i.gi, align 8, !tbaa !334
  %i.lw = icmp slt i32 %i.lu, %i.lv
  br i1 %i.lw, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %.loopexit224.i.i.i
  %i.lx = load i8, ptr %i.gk, align 1, !tbaa !335, !range !109, !noundef !110
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.bt, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.bs
  %.pre.i11.i.i = load i32, ptr %i.gb, align 8, !tbaa !329
  %.pre.i.i = load i32, ptr %i.gd, align 4, !tbaa !330
  br label %bb.cc

bb.bt:                                            ; preds = %bb.bs
end_hunk_7
begin_hunk_8_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.cp:                                            ; preds = %bb.co, %bb.bq, %bb.bl, %bb.bg, %bb.bd
  %.pn118.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ke, %bb.bg ], [ %i.ov, %bb.co ], [ %i.ln, %bb.bq ], [ %i.kx, %bb.bl ], [ %i.jz, %bb.bd ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.aw
  %.pn118.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn118.pn.pn.pn.i.i.i, %bb.cp ], [ %i.ii, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.an
  %.pn129.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn129.pn.pn.pn.i.i.i, %bb.an ], [ %.pn118.pn.pn.pn.pn.i.i.i, %bb.cq ]
  resume { ptr, i32 } %.pn129.pn.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !353
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !76 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IhhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.99", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.95", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.99", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1397, !nonnull !110, !align !230
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !145  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not116.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond137.i.i.i = select i1 %.not116.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond137.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1398, !nonnull !110
  store i8 0, ptr %i.q, align 1, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1399, !nonnull !110, !align !230 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1397, !nonnull !110, !align !230 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  %sext259.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext260.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !327, !range !109, !noundef !110
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !328
  %i.av = load i32, ptr %i.x, align 4, !tbaa !331
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !329
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !344
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !345
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !332
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IhhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1398, !nonnull !110
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !115, !range !109, !noundef !110
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl  ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !84
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = fmul nnan float %i.bo, f0x3B808081
  %i.bq = getelementptr i8, ptr %i.bm, i64 1
  %i.br = load <2 x i8>, ptr %i.bq, align 1, !tbaa !84
  %i.bs = uitofp <2 x i8> %i.br to <2 x float>
  %6 = fmul nnan <2 x float> %i.bs, <float f0x3B808081, float 1.000000e+00>
  %7 = fmul nnan <2 x float> %6, <float 7.151700e-01, float f0x3B808081> ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  %i.bt = call float @llvm.fmuladd.f32(float %i.bp, float 2.126400e-01, float %8)
  %i.bu = extractelement <2 x float> %7, i64 1
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float 7.219000e-02, float %i.bt) ; 5 uses
  %i.bw = fcmp ogt float %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = fcmp ugt float %i.bv, 1.800000e-01
  br i1 %i.bx, label %bb.n, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.by = fadd float %i.bv, f0x3F0BB782
  %i.bz = fdiv float %i.by, f0x3E3BEBCD
  %i.ca = call float @llvm.exp.f32(float %i.bz)   ; 2 uses
  %i.cb = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.ca, i64 0
  %i.cc = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ca, i64 1
  %i.cd = fsub <2 x float> %i.cb, %i.cc
  %i.ce = fdiv <2 x float> %i.cd, splat (float f0x438E2DCC) ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.cg = fcmp olt float %i.cf, 1.800000e-01
  %i.ch = extractelement <2 x float> %i.ce, i64 1
  %.0.i.i.i.i = select i1 %i.cg, float %i.ch, float %i.cf
  %i.ci = call float @llvm.fabs.f32(float %.0.i.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i:  ; preds = %bb.n, %bb.m
  %.010.i.i.i.i = phi float [ %i.ci, %bb.n ], [ %i.bv, %bb.m ]
  %i.cj = fdiv float %.010.i.i.i.i, %i.bv
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i, %bb.l
  %i.ck = phi float [ %i.cj, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !58  ; 2 uses
  %i.cm = icmp slt i32 %i.bj, %i.cl
  br i1 %i.cm, label %.lr.ph247.i.i.i, label %.loopexit.i.i.i

.lr.ph247.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.cn = phi i32 [ %i.dh, %bb.s ], [ %i.cl, %bb.o ]
  %indvars.iv262.i.i.i = phi i64 [ %indvars.iv.next263.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.co = icmp eq i64 %indvars.iv262.i.i.i, %sext260.i.i.i
  %i.cp = icmp eq i64 %indvars.iv262.i.i.i, %sext259.i.i.i
  %or.cond138.i.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond138.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph247.i.i.i
  %i.cq = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %indvars.iv262.i.i.i
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !84
  %i.ct = uitofp i8 %i.cs to float
  %i.cu = fmul nnan float %i.ct, f0x3B808081
  %i.cv = fmul float %i.ck, %i.cu
  %i.cw = load ptr, ptr %2, align 8, !tbaa !333
  %i.cx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.cy = icmp eq i32 %i.cx, 3
  br i1 %i.cy, label %bb.q, label %bb.r, !prof !85

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.cz = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv262.i.i.i
  %i.db = fmul float %i.cv, 2.550000e+02          ; 2 uses
  %i.dc = fcmp olt float %i.db, 0.000000e+00
  %i.dd = select i1 %i.dc, float -5.000000e-01, float 5.000000e-01
  %i.de = fadd float %i.db, %i.dd                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.de, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.de, float 0.000000e+00 ; 2 uses
  %i.df = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.df, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.dg = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.dg, ptr %i.da, align 1, !tbaa !84
  %.pre267.i.i.i = load i32, ptr %i.g, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph247.i.i.i
  %i.dh = phi i32 [ %i.cn, %.lr.ph247.i.i.i ], [ %.pre267.i.i.i, %bb.r ] ; 2 uses
  %indvars.iv.next263.i.i.i = add nsw i64 %indvars.iv262.i.i.i, 1 ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next263.i.i.i, %i.di
  br i1 %i.dj, label %.lr.ph247.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1392

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.dl = load i32, ptr %i.g, align 4, !tbaa !58  ; 2 uses
  %i.dm = icmp slt i32 %i.bj, %i.dl
  br i1 %i.dm, label %.lr.ph245.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph245.preheader.i.i.i:                        ; preds = %bb.u
  %i.dn = sext i32 %i.bj to i64
  br label %.lr.ph245.i.i.i

.lr.ph245.i.i.i:                                  ; preds = %bb.z, %.lr.ph245.preheader.i.i.i
  %i.do = phi i32 [ %i.dl, %.lr.ph245.preheader.i.i.i ], [ %i.er, %bb.z ]
  %indvars.iv257.i.i.i = phi i64 [ %i.dn, %.lr.ph245.preheader.i.i.i ], [ %indvars.iv.next258.i.i.i, %bb.z ] ; 5 uses
  %i.dp = icmp eq i64 %indvars.iv257.i.i.i, %sext260.i.i.i
  %i.dq = icmp eq i64 %indvars.iv257.i.i.i, %sext259.i.i.i
  %or.cond139.i.i.i = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %or.cond139.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph245.i.i.i
  %i.dr = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %indvars.iv257.i.i.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !84
  %i.du = uitofp i8 %i.dt to float
  %i.dv = fmul nnan float %i.du, f0x3B808081      ; 3 uses
  %i.dw = fcmp ugt float %i.dv, 1.800000e-01
  br i1 %i.dw, label %bb.w, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dx = fadd float %i.dv, f0x3F0BB782
  %i.dy = fdiv float %i.dx, f0x3E3BEBCD
  %i.dz = call float @llvm.exp.f32(float %i.dy)   ; 2 uses
  %i.ea = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.dz, i64 0
  %i.eb = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.dz, i64 1
  %i.ec = fsub <2 x float> %i.ea, %i.eb
  %i.ed = fdiv <2 x float> %i.ec, splat (float f0x438E2DCC) ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0 ; 2 uses
  %i.ef = fcmp olt float %i.ee, 1.800000e-01
  %i.eg = extractelement <2 x float> %i.ed, i64 1
  %.0.i154.i.i.i = select i1 %i.ef, float %i.eg, float %i.ee
  %i.eh = call float @llvm.fabs.f32(float %.0.i154.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i: ; preds = %bb.w, %bb.v
  %.010.i153.i.i.i = phi float [ %i.eh, %bb.w ], [ %i.dv, %bb.v ]
  %i.ei = load ptr, ptr %2, align 8, !tbaa !333
  %i.ej = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei)
          to label %.noexc161.i.i.i unwind label %bb.aa

.noexc161.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.ek = icmp eq i32 %i.ej, 3
  br i1 %i.ek, label %bb.x, label %bb.y, !prof !85

bb.x:                                             ; preds = %.noexc161.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc161.i.i.i
  %i.el = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %indvars.iv257.i.i.i
  %i.en = fmul float %.010.i153.i.i.i, 2.550000e+02
  %i.eo = fadd float %i.en, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i158.i.i.i = fcmp oge float %i.eo, 0.000000e+00
  %.0.i.i.i.i.i.i159.i.i.i = select i1 %.inv.i.i.i.i.i158.i.i.i, float %i.eo, float 0.000000e+00 ; 2 uses
  %i.ep = fcmp ogt float %.0.i.i.i.i.i.i159.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i160.i.i.i = select i1 %i.ep, float 2.550000e+02, float %.0.i.i.i.i.i.i159.i.i.i
  %i.eq = fptoui float %.1.i.i.i.i.i.i160.i.i.i to i8
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !84
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !58
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph245.i.i.i
  %i.er = phi i32 [ %i.do, %.lr.ph245.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next258.i.i.i = add nsw i64 %indvars.iv257.i.i.i, 1 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next258.i.i.i, %i.es
  br i1 %i.et, label %.lr.ph245.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1393

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.ev = load i32, ptr %i.w, align 4, !tbaa !328
  %i.ew = add nsw i32 %i.ev, 1                    ; 7 uses
  store i32 %i.ew, ptr %i.w, align 4, !tbaa !328
  %i.ex = load i32, ptr %i.ae, align 8, !tbaa !334
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.ez = load i8, ptr %i.ag, align 1, !tbaa !335, !range !109, !noundef !110
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !329
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !330
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.fb = load i8, ptr %i.ah, align 1, !tbaa !336, !range !109, !noundef !110
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fd = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.fe = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.fd
  store ptr %i.ff, ptr %i.ad, align 8, !tbaa !338
  %i.fg = load i32, ptr %i.ak, align 8, !tbaa !339
  %.not.i.i26.i.i = icmp slt i32 %i.ew, %i.fg
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ae, !prof !59
end_hunk_8
begin_hunk_9_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IhhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.fs, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !85

bb.ah:                                            ; preds = %bb.ag
  %i.ft = load ptr, ptr %2, align 8, !tbaa !333
  %i.fu = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fv = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.fw = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.fx = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i32 noundef %i.ew, i32 noundef %i.fu, i32 noundef %i.fv, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.fn, i32 noundef %i.fw)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fy = zext i1 %i.fn to i8
  store ptr %i.fx, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.fy, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.fz = load i32, ptr %i.x, align 4, !tbaa !331 ; 3 uses
  store i32 %i.fz, ptr %i.w, align 4, !tbaa !328
  %i.ga = load i32, ptr %i.y, align 8, !tbaa !329
  %i.gb = add nsw i32 %i.ga, 1                    ; 3 uses
  store i32 %i.gb, ptr %i.y, align 8, !tbaa !329
  %i.gc = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i19.i.i = icmp slt i32 %i.gb, %i.gc
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gd = load i32, ptr %i.z, align 4, !tbaa !344 ; 2 uses
  store i32 %i.gd, ptr %i.y, align 8, !tbaa !329
  %i.ge = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.ge, ptr %i.aa, align 4, !tbaa !330
  %i.gf = load i32, ptr %i.ab, align 8, !tbaa !345
  %.not1.i20.i.i = icmp slt i32 %i.ge, %i.gf
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.gg = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.ge, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.gh = phi i32 [ %i.gb, %bb.ai ], [ %i.gd, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.gi = phi i32 [ %i.fz, %bb.ai ], [ %i.fz, %bb.aj ], [ %i.ew, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gi, i32 noundef %i.gh, i32 noundef %i.gg)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dk, %bb.t ], [ %i.gj, %bb.am ], [ %i.eu, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cv

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.gk = load ptr, ptr %i.r, align 8, !tbaa !1399, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 9 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext250.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.ie = load i8, ptr %i.gl, align 8, !tbaa !327, !range !109, !noundef !110
  %i.if = icmp eq i8 %i.ie, 0
  br i1 %i.if, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ig = load i32, ptr %i.gm, align 4, !tbaa !328
  %i.ih = load i32, ptr %i.gn, align 4, !tbaa !331
  %i.ii = icmp eq i32 %i.ig, %i.ih
  br i1 %i.ii, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ij = load i32, ptr %i.go, align 8, !tbaa !329
  %i.ik = load i32, ptr %i.gp, align 4, !tbaa !344
  %i.il = icmp eq i32 %i.ij, %i.ik
  br i1 %i.il, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i: ; preds = %bb.aq
  %i.im = load i32, ptr %i.gq, align 4, !tbaa !330
  %i.in = load i32, ptr %i.gr, align 8, !tbaa !345
  %i.io = icmp eq i32 %i.im, %i.in
  br i1 %i.io, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i
  %i.ip = load ptr, ptr %i.hd, align 8, !tbaa !332
  %.not.i166.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i166.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.is = load ptr, ptr %i.hy, align 8, !tbaa !332
  %.not.i168.i.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i168.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IhhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.iw = load ptr, ptr %i.gs, align 8, !tbaa !1398, !nonnull !110
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !115, !range !109, !noundef !110
  %i.iy = trunc nuw i8 %i.ix to i1
  %i.iz = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.iy, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i
  %i.ja = load ptr, ptr %i.gt, align 8, !tbaa !338
  %i.jb = sext i32 %i.iz to i64                   ; 2 uses
  %i.jc = getelementptr i8, ptr %i.ja, i64 %i.jb  ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !84
  %i.je = uitofp i8 %i.jd to float
  %i.jf = fmul nnan float %i.je, f0x3B808081
  %i.jg = getelementptr i8, ptr %i.jc, i64 1
  %i.jh = load <2 x i8>, ptr %i.jg, align 1, !tbaa !84
  %i.ji = uitofp <2 x i8> %i.jh to <2 x float>
  %9 = fmul nnan <2 x float> %i.ji, <float f0x3B808081, float 1.000000e+00>
  %10 = fmul nnan <2 x float> %9, <float 7.151700e-01, float f0x3B808081> ; 2 uses
  %i.jj = extractelement <2 x float> %10, i64 0
  %11 = call float @llvm.fmuladd.f32(float %i.jf, float 2.126400e-01, float %i.jj)
  %12 = extractelement <2 x float> %10, i64 1
  %i.jk = call float @llvm.fmuladd.f32(float %12, float 7.219000e-02, float %11) ; 5 uses
  %i.jl = fcmp ogt float %i.jk, 0.000000e+00
  br i1 %i.jl, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.jm = fcmp ugt float %i.jk, 1.800000e-01
  br i1 %i.jm, label %bb.az, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jn = fadd float %i.jk, f0x3F0BB782
  %i.jo = fdiv float %i.jn, f0x3E3BEBCD
  %i.jp = call float @llvm.exp.f32(float %i.jo)   ; 2 uses
  %i.jq = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.jp, i64 0
  %i.jr = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.jp, i64 1
  %i.js = fsub <2 x float> %i.jq, %i.jr
  %i.jt = fdiv <2 x float> %i.js, splat (float f0x438E2DCC) ; 2 uses
  %i.ju = extractelement <2 x float> %i.jt, i64 0 ; 2 uses
  %i.jv = fcmp olt float %i.ju, 1.800000e-01
  %i.jw = extractelement <2 x float> %i.jt, i64 1
  %.0.i171.i.i.i = select i1 %i.jv, float %i.jw, float %i.ju
  %i.jx = call float @llvm.fabs.f32(float %.0.i171.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i: ; preds = %bb.az, %bb.ay
  %.010.i170.i.i.i = phi float [ %i.jx, %bb.az ], [ %i.jk, %bb.ay ]
  %i.jy = fdiv float %.010.i170.i.i.i, %i.jk
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i, %bb.ax
  %i.jz = phi float [ %i.jy, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.ka = load i32, ptr %i.g, align 4, !tbaa !58
  %i.kb = icmp slt i32 %i.iz, %i.ka
  br i1 %i.kb, label %.lr.ph243.i.i.i, label %.loopexit239.i.i.i

.lr.ph243.i.i.i:                                  ; preds = %bb.ba, %bb.bj
  %indvars.iv252.i.i.i = phi i64 [ %indvars.iv.next253.i.i.i, %bb.bj ], [ %i.jb, %bb.ba ] ; 6 uses
  %i.kc = icmp eq i64 %indvars.iv252.i.i.i, %sext250.i.i.i
  %i.kd = icmp eq i64 %indvars.iv252.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.kc, i1 true, i1 %i.kd
  %i.ke = load ptr, ptr %i.gt, align 8, !tbaa !338
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 %indvars.iv252.i.i.i
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !84
  %i.kh = uitofp i8 %i.kg to float
  %i.ki = fmul nnan float %i.kh, f0x3B808081      ; 2 uses
  br i1 %or.cond140.i.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %.lr.ph243.i.i.i
  %i.kj = load ptr, ptr %4, align 8, !tbaa !333
  %i.kk = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kj)
          to label %.noexc178.i.i.i unwind label %bb.be

.noexc178.i.i.i:                                  ; preds = %bb.bb
  %i.kl = icmp eq i32 %i.kk, 3
  br i1 %i.kl, label %bb.bc, label %bb.bd, !prof !85

bb.bc:                                            ; preds = %.noexc178.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.noexc178.i.i.i
  %i.km = load ptr, ptr %i.gu, align 8, !tbaa !338
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 %indvars.iv252.i.i.i
  %i.ko = fmul nnan float %i.ki, 2.550000e+02
  %i.kp = fadd float %i.ko, 5.000000e-01          ; 2 uses
  %i.kq = fcmp ogt float %i.kp, 2.550000e+02
  %.1.i.i.i.i.i.i177.i.i.i = select i1 %i.kq, float 2.550000e+02, float %i.kp
  %i.kr = fptoui float %.1.i.i.i.i.i.i177.i.i.i to i8
  store i8 %i.kr, ptr %i.kn, align 1, !tbaa !84
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bf:                                            ; preds = %.lr.ph243.i.i.i
  %i.kt = fmul float %i.jz, %i.ki
  %i.ku = load ptr, ptr %4, align 8, !tbaa !333
  %i.kv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku)
          to label %.noexc186.i.i.i unwind label %bb.bi

.noexc186.i.i.i:                                  ; preds = %bb.bf
  %i.kw = icmp eq i32 %i.kv, 3
  br i1 %i.kw, label %bb.bg, label %bb.bh, !prof !85

bb.bg:                                            ; preds = %.noexc186.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.noexc186.i.i.i
  %i.kx = load ptr, ptr %i.gu, align 8, !tbaa !338
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 %indvars.iv252.i.i.i
  %i.kz = fmul float %i.kt, 2.550000e+02          ; 2 uses
  %i.la = fcmp olt float %i.kz, 0.000000e+00
  %i.lb = select i1 %i.la, float -5.000000e-01, float 5.000000e-01
  %i.lc = fadd float %i.kz, %i.lb                 ; 2 uses
  %.inv.i.i.i.i.i183.i.i.i = fcmp oge float %i.lc, 0.000000e+00
  %.0.i.i.i.i.i.i184.i.i.i = select i1 %.inv.i.i.i.i.i183.i.i.i, float %i.lc, float 0.000000e+00 ; 2 uses
  %i.ld = fcmp ogt float %.0.i.i.i.i.i.i184.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i185.i.i.i = select i1 %i.ld, float 2.550000e+02, float %.0.i.i.i.i.i.i184.i.i.i
  %i.le = fptoui float %.1.i.i.i.i.i.i185.i.i.i to i8
  store i8 %i.le, ptr %i.ky, align 1, !tbaa !84
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bj:                                            ; preds = %bb.bh, %bb.bd
  %indvars.iv.next253.i.i.i = add nsw i64 %indvars.iv252.i.i.i, 1 ; 2 uses
  %i.lg = load i32, ptr %i.g, align 4, !tbaa !58
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv.next253.i.i.i, %i.lh
  br i1 %i.li, label %.lr.ph243.i.i.i, label %.loopexit239.i.i.i, !llvm.loop !1394

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i
  %i.lj = load i32, ptr %i.g, align 4, !tbaa !58
  %i.lk = icmp slt i32 %i.iz, %i.lj
  br i1 %i.lk, label %.lr.ph.preheader.i.i.i, label %.loopexit239.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bk
  %i.ll = sext i32 %i.iz to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.ll, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bv ] ; 6 uses
  %i.lm = icmp eq i64 %indvars.iv.i.i.i, %sext250.i.i.i
  %i.ln = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.lm, i1 true, i1 %i.ln
  %i.lo = load ptr, ptr %i.gt, align 8, !tbaa !338
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 %indvars.iv.i.i.i
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !84
  %i.lr = uitofp i8 %i.lq to float
  %i.ls = fmul nnan float %i.lr, f0x3B808081      ; 4 uses
  br i1 %or.cond141.i.i.i, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %.lr.ph.i.i.i
  %i.lt = load ptr, ptr %4, align 8, !tbaa !333
  %i.lu = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lt)
          to label %.noexc194.i.i.i unwind label %bb.bo

.noexc194.i.i.i:                                  ; preds = %bb.bl
  %i.lv = icmp eq i32 %i.lu, 3
  br i1 %i.lv, label %bb.bm, label %bb.bn, !prof !85

bb.bm:                                            ; preds = %.noexc194.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %.noexc194.i.i.i
  %i.lw = load ptr, ptr %i.gu, align 8, !tbaa !338
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 %indvars.iv.i.i.i
  %i.ly = fmul nnan float %i.ls, 2.550000e+02
  %i.lz = fadd float %i.ly, 5.000000e-01          ; 2 uses
  %i.ma = fcmp ogt float %i.lz, 2.550000e+02
  %.1.i.i.i.i.i.i193.i.i.i = select i1 %i.ma, float 2.550000e+02, float %i.lz
  %i.mb = fptoui float %.1.i.i.i.i.i.i193.i.i.i to i8
  store i8 %i.mb, ptr %i.lx, align 1, !tbaa !84
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.md = fcmp ugt float %i.ls, 1.800000e-01
  br i1 %i.md, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.me = fadd float %i.ls, f0x3F0BB782
  %i.mf = fdiv float %i.me, f0x3E3BEBCD
  %i.mg = call float @llvm.exp.f32(float %i.mf)   ; 2 uses
  %i.mh = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.mg, i64 0
  %i.mi = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.mg, i64 1
  %i.mj = fsub <2 x float> %i.mh, %i.mi
  %i.mk = fdiv <2 x float> %i.mj, splat (float f0x438E2DCC) ; 2 uses
  %i.ml = extractelement <2 x float> %i.mk, i64 0 ; 2 uses
  %i.mm = fcmp olt float %i.ml, 1.800000e-01
  %i.mn = extractelement <2 x float> %i.mk, i64 1
  %.0.i198.i.i.i = select i1 %i.mm, float %i.mn, float %i.ml
  %i.mo = call float @llvm.fabs.f32(float %.0.i198.i.i.i)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.010.i197.i.i.i = phi float [ %i.mo, %bb.bq ], [ %i.ls, %bb.bp ]
  %i.mp = load ptr, ptr %4, align 8, !tbaa !333
  %i.mq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mp)
          to label %.noexc205.i.i.i unwind label %bb.bu

.noexc205.i.i.i:                                  ; preds = %bb.br
  %i.mr = icmp eq i32 %i.mq, 3
  br i1 %i.mr, label %bb.bs, label %bb.bt, !prof !85

bb.bs:                                            ; preds = %.noexc205.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %.noexc205.i.i.i
  %i.ms = load ptr, ptr %i.gu, align 8, !tbaa !338
end_hunk_9
begin_hunk_10_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.hr:                                            ; preds = %bb.hq, %bb.gs, %bb.fx, %bb.fc, %bb.ej
  %.pn118.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.wy, %bb.fc ], [ %i.afw, %bb.hq ], [ %i.acp, %bb.gs ], [ %i.zv, %bb.fx ], [ %i.uq, %bb.ej ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #31
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.cu
  %.pn118.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn118.pn.pn.pn.i.i.i, %bb.hr ], [ %i.ov, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.cl
  %.pn129.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn129.pn.pn.pn.i.i.i, %bb.cl ], [ %.pn118.pn.pn.pn.pn.i.i.i, %bb.hs ]
  resume { ptr, i32 } %.pn129.pn.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_bNS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit178.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_bNS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !353
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !76 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IttEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.117", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.113", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.117", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1413, !nonnull !110, !align !230
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !145  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not116.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond137.i.i.i = select i1 %.not116.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond137.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1414, !nonnull !110
  store i8 0, ptr %i.q, align 1, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1415, !nonnull !110, !align !230 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1413, !nonnull !110, !align !230 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 9 uses
  %sext259.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext260.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !327, !range !109, !noundef !110
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !328
  %i.av = load i32, ptr %i.x, align 4, !tbaa !331
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !329
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !344
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !345
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !332
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IttEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1414, !nonnull !110
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !115, !range !109, !noundef !110
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !338 ; 2 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr [2 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !349
  %i.bo = uitofp i16 %i.bn to float
  %i.bp = fmul nnan float %i.bo, f0x37800080
  %i.bq = getelementptr i8, ptr %i.bm, i64 2
  %i.br = load <2 x i16>, ptr %i.bq, align 2, !tbaa !349
  %i.bs = uitofp <2 x i16> %i.br to <2 x float>
  %6 = fmul nnan <2 x float> %i.bs, <float f0x37800080, float 1.000000e+00>
  %7 = fmul nnan <2 x float> %6, <float 7.151700e-01, float f0x37800080> ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  %i.bt = call float @llvm.fmuladd.f32(float %i.bp, float 2.126400e-01, float %8)
  %i.bu = extractelement <2 x float> %7, i64 1
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float 7.219000e-02, float %i.bt) ; 5 uses
  %i.bw = fcmp ogt float %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = fcmp ugt float %i.bv, 1.800000e-01
  br i1 %i.bx, label %bb.n, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.by = fadd float %i.bv, f0x3F0BB782
  %i.bz = fdiv float %i.by, f0x3E3BEBCD
  %i.ca = call float @llvm.exp.f32(float %i.bz)   ; 2 uses
  %i.cb = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.ca, i64 0
  %i.cc = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ca, i64 1
  %i.cd = fsub <2 x float> %i.cb, %i.cc
  %i.ce = fdiv <2 x float> %i.cd, splat (float f0x438E2DCC) ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.cg = fcmp olt float %i.cf, 1.800000e-01
  %i.ch = extractelement <2 x float> %i.ce, i64 1
  %.0.i.i.i.i = select i1 %i.cg, float %i.ch, float %i.cf
  %i.ci = call float @llvm.fabs.f32(float %.0.i.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i:  ; preds = %bb.n, %bb.m
  %.010.i.i.i.i = phi float [ %i.ci, %bb.n ], [ %i.bv, %bb.m ]
  %i.cj = fdiv float %.010.i.i.i.i, %i.bv
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i, %bb.l
  %i.ck = phi float [ %i.cj, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !58  ; 2 uses
  %i.cm = icmp slt i32 %i.bj, %i.cl
  br i1 %i.cm, label %.lr.ph247.i.i.i, label %.loopexit.i.i.i

.lr.ph247.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.cn = phi i32 [ %i.dh, %bb.s ], [ %i.cl, %bb.o ]
  %i.co = phi ptr [ %i.di, %bb.s ], [ %i.bk, %bb.o ] ; 2 uses
  %indvars.iv262.i.i.i = phi i64 [ %indvars.iv.next263.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.cp = icmp eq i64 %indvars.iv262.i.i.i, %sext260.i.i.i
  %i.cq = icmp eq i64 %indvars.iv262.i.i.i, %sext259.i.i.i
  %or.cond138.i.i.i = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond138.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph247.i.i.i
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.co, i64 %indvars.iv262.i.i.i
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !349
  %i.ct = uitofp i16 %i.cs to float
  %i.cu = fmul nnan float %i.ct, f0x37800080
  %i.cv = fmul float %i.ck, %i.cu
  %i.cw = load ptr, ptr %2, align 8, !tbaa !333
  %i.cx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.cy = icmp eq i32 %i.cx, 3
  br i1 %i.cy, label %bb.q, label %bb.r, !prof !85

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.cz = load ptr, ptr %i.ad, align 8, !tbaa !338 ; 2 uses
  %i.da = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %indvars.iv262.i.i.i
  %i.db = fmul float %i.cv, 6.553500e+04          ; 2 uses
  %i.dc = fcmp olt float %i.db, 0.000000e+00
  %i.dd = select i1 %i.dc, float -5.000000e-01, float 5.000000e-01
  %i.de = fadd float %i.db, %i.dd                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.de, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.de, float 0.000000e+00 ; 2 uses
  %i.df = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.df, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.dg = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.dg, ptr %i.da, align 2, !tbaa !349
  %.pre267.i.i.i = load i32, ptr %i.g, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph247.i.i.i
  %i.dh = phi i32 [ %i.cn, %.lr.ph247.i.i.i ], [ %.pre267.i.i.i, %bb.r ] ; 2 uses
  %i.di = phi ptr [ %i.co, %.lr.ph247.i.i.i ], [ %i.cz, %bb.r ]
  %indvars.iv.next263.i.i.i = add nsw i64 %indvars.iv262.i.i.i, 1 ; 2 uses
  %i.dj = sext i32 %i.dh to i64
  %i.dk = icmp slt i64 %indvars.iv.next263.i.i.i, %i.dj
  br i1 %i.dk, label %.lr.ph247.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1408

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.dm = load i32, ptr %i.g, align 4, !tbaa !58  ; 2 uses
  %i.dn = icmp slt i32 %i.bj, %i.dm
  br i1 %i.dn, label %.lr.ph245.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph245.preheader.i.i.i:                        ; preds = %bb.u
  %i.do = sext i32 %i.bj to i64
  br label %.lr.ph245.i.i.i

.lr.ph245.i.i.i:                                  ; preds = %bb.z, %.lr.ph245.preheader.i.i.i
  %i.dp = phi i32 [ %i.dm, %.lr.ph245.preheader.i.i.i ], [ %i.es, %bb.z ]
  %indvars.iv257.i.i.i = phi i64 [ %i.do, %.lr.ph245.preheader.i.i.i ], [ %indvars.iv.next258.i.i.i, %bb.z ] ; 5 uses
  %i.dq = icmp eq i64 %indvars.iv257.i.i.i, %sext260.i.i.i
  %i.dr = icmp eq i64 %indvars.iv257.i.i.i, %sext259.i.i.i
  %or.cond139.i.i.i = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond139.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph245.i.i.i
  %i.ds = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %indvars.iv257.i.i.i
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !349
  %i.dv = uitofp i16 %i.du to float
  %i.dw = fmul nnan float %i.dv, f0x37800080      ; 3 uses
  %i.dx = fcmp ugt float %i.dw, 1.800000e-01
  br i1 %i.dx, label %bb.w, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dy = fadd float %i.dw, f0x3F0BB782
  %i.dz = fdiv float %i.dy, f0x3E3BEBCD
  %i.ea = call float @llvm.exp.f32(float %i.dz)   ; 2 uses
  %i.eb = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.ea, i64 0
  %i.ec = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ea, i64 1
  %i.ed = fsub <2 x float> %i.eb, %i.ec
  %i.ee = fdiv <2 x float> %i.ed, splat (float f0x438E2DCC) ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.eg = fcmp olt float %i.ef, 1.800000e-01
  %i.eh = extractelement <2 x float> %i.ee, i64 1
  %.0.i154.i.i.i = select i1 %i.eg, float %i.eh, float %i.ef
  %i.ei = call float @llvm.fabs.f32(float %.0.i154.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i: ; preds = %bb.w, %bb.v
  %.010.i153.i.i.i = phi float [ %i.ei, %bb.w ], [ %i.dw, %bb.v ]
  %i.ej = load ptr, ptr %2, align 8, !tbaa !333
  %i.ek = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
          to label %.noexc161.i.i.i unwind label %bb.aa

.noexc161.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.el = icmp eq i32 %i.ek, 3
  br i1 %i.el, label %bb.x, label %bb.y, !prof !85

bb.x:                                             ; preds = %.noexc161.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc161.i.i.i
  %i.em = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.en = getelementptr inbounds [2 x i8], ptr %i.em, i64 %indvars.iv257.i.i.i
  %i.eo = fmul float %.010.i153.i.i.i, 6.553500e+04
  %i.ep = fadd float %i.eo, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i158.i.i.i = fcmp oge float %i.ep, 0.000000e+00
  %.0.i.i.i.i.i.i159.i.i.i = select i1 %.inv.i.i.i.i.i158.i.i.i, float %i.ep, float 0.000000e+00 ; 2 uses
  %i.eq = fcmp ogt float %.0.i.i.i.i.i.i159.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i160.i.i.i = select i1 %i.eq, float 6.553500e+04, float %.0.i.i.i.i.i.i159.i.i.i
  %i.er = fptoui float %.1.i.i.i.i.i.i160.i.i.i to i16
  store i16 %i.er, ptr %i.en, align 2, !tbaa !349
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !58
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph245.i.i.i
  %i.es = phi i32 [ %i.dp, %.lr.ph245.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next258.i.i.i = add nsw i64 %indvars.iv257.i.i.i, 1 ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %indvars.iv.next258.i.i.i, %i.et
  br i1 %i.eu, label %.lr.ph245.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1409

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.ew = load i32, ptr %i.w, align 4, !tbaa !328
  %i.ex = add nsw i32 %i.ew, 1                    ; 7 uses
  store i32 %i.ex, ptr %i.w, align 4, !tbaa !328
  %i.ey = load i32, ptr %i.ae, align 8, !tbaa !334
  %i.ez = icmp slt i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.fa = load i8, ptr %i.ag, align 1, !tbaa !335, !range !109, !noundef !110
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !329
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !330
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.fc = load i8, ptr %i.ah, align 1, !tbaa !336, !range !109, !noundef !110
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fe = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.ff = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.fe
  store ptr %i.fg, ptr %i.ad, align 8, !tbaa !338
  %i.fh = load i32, ptr %i.ak, align 8, !tbaa !339
  %.not.i.i26.i.i = icmp slt i32 %i.ex, %i.fh
end_hunk_10
begin_hunk_11_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IttEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.ft, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !85

bb.ah:                                            ; preds = %bb.ag
  %i.fu = load ptr, ptr %2, align 8, !tbaa !333
  %i.fv = load i32, ptr %i.y, align 8, !tbaa !329
  %i.fw = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.fx = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.fy = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i32 noundef %i.ex, i32 noundef %i.fv, i32 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.fo, i32 noundef %i.fx)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fz = zext i1 %i.fo to i8
  store ptr %i.fy, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.fz, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.ga = load i32, ptr %i.x, align 4, !tbaa !331 ; 3 uses
  store i32 %i.ga, ptr %i.w, align 4, !tbaa !328
  %i.gb = load i32, ptr %i.y, align 8, !tbaa !329
  %i.gc = add nsw i32 %i.gb, 1                    ; 3 uses
  store i32 %i.gc, ptr %i.y, align 8, !tbaa !329
  %i.gd = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i19.i.i = icmp slt i32 %i.gc, %i.gd
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ge = load i32, ptr %i.z, align 4, !tbaa !344 ; 2 uses
  store i32 %i.ge, ptr %i.y, align 8, !tbaa !329
  %i.gf = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.gf, ptr %i.aa, align 4, !tbaa !330
  %i.gg = load i32, ptr %i.ab, align 8, !tbaa !345
  %.not1.i20.i.i = icmp slt i32 %i.gf, %i.gg
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.gh = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.gf, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.gi = phi i32 [ %i.gc, %bb.ai ], [ %i.ge, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.gj = phi i32 [ %i.ga, %bb.ai ], [ %i.ga, %bb.aj ], [ %i.ex, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gj, i32 noundef %i.gi, i32 noundef %i.gh)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dl, %bb.t ], [ %i.gk, %bb.am ], [ %i.ev, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cv

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.gl = load ptr, ptr %i.r, align 8, !tbaa !1415, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 9 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext250.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.if = load i8, ptr %i.gm, align 8, !tbaa !327, !range !109, !noundef !110
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ih = load i32, ptr %i.gn, align 4, !tbaa !328
  %i.ii = load i32, ptr %i.go, align 4, !tbaa !331
  %i.ij = icmp eq i32 %i.ih, %i.ii
  br i1 %i.ij, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ik = load i32, ptr %i.gp, align 8, !tbaa !329
  %i.il = load i32, ptr %i.gq, align 4, !tbaa !344
  %i.im = icmp eq i32 %i.ik, %i.il
  br i1 %i.im, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i: ; preds = %bb.aq
  %i.in = load i32, ptr %i.gr, align 4, !tbaa !330
  %i.io = load i32, ptr %i.gs, align 8, !tbaa !345
  %i.ip = icmp eq i32 %i.in, %i.io
  br i1 %i.ip, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i
  %i.iq = load ptr, ptr %i.he, align 8, !tbaa !332
  %.not.i166.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i166.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.it = load ptr, ptr %i.hz, align 8, !tbaa !332
  %.not.i168.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i168.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IttEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ix = load ptr, ptr %i.gt, align 8, !tbaa !1414, !nonnull !110
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !115, !range !109, !noundef !110
  %i.iz = trunc nuw i8 %i.iy to i1
  %i.ja = load i32, ptr %i.i, align 8, !tbaa !86  ; 4 uses
  br i1 %i.iz, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i
  %i.jb = load ptr, ptr %i.gu, align 8, !tbaa !338
  %i.jc = sext i32 %i.ja to i64                   ; 2 uses
  %i.jd = getelementptr [2 x i8], ptr %i.jb, i64 %i.jc ; 2 uses
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !349
  %i.jf = uitofp i16 %i.je to float
  %i.jg = fmul nnan float %i.jf, f0x37800080
  %i.jh = getelementptr i8, ptr %i.jd, i64 2
  %i.ji = load <2 x i16>, ptr %i.jh, align 2, !tbaa !349
  %i.jj = uitofp <2 x i16> %i.ji to <2 x float>
  %9 = fmul nnan <2 x float> %i.jj, <float f0x37800080, float 1.000000e+00>
  %10 = fmul nnan <2 x float> %9, <float 7.151700e-01, float f0x37800080> ; 2 uses
  %i.jk = extractelement <2 x float> %10, i64 0
  %11 = call float @llvm.fmuladd.f32(float %i.jg, float 2.126400e-01, float %i.jk)
  %12 = extractelement <2 x float> %10, i64 1
  %i.jl = call float @llvm.fmuladd.f32(float %12, float 7.219000e-02, float %11) ; 5 uses
  %i.jm = fcmp ogt float %i.jl, 0.000000e+00
  br i1 %i.jm, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.jn = fcmp ugt float %i.jl, 1.800000e-01
  br i1 %i.jn, label %bb.az, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jo = fadd float %i.jl, f0x3F0BB782
  %i.jp = fdiv float %i.jo, f0x3E3BEBCD
  %i.jq = call float @llvm.exp.f32(float %i.jp)   ; 2 uses
  %i.jr = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.jq, i64 0
  %i.js = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.jq, i64 1
  %i.jt = fsub <2 x float> %i.jr, %i.js
  %i.ju = fdiv <2 x float> %i.jt, splat (float f0x438E2DCC) ; 2 uses
  %i.jv = extractelement <2 x float> %i.ju, i64 0 ; 2 uses
  %i.jw = fcmp olt float %i.jv, 1.800000e-01
  %i.jx = extractelement <2 x float> %i.ju, i64 1
  %.0.i171.i.i.i = select i1 %i.jw, float %i.jx, float %i.jv
  %i.jy = call float @llvm.fabs.f32(float %.0.i171.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i: ; preds = %bb.az, %bb.ay
  %.010.i170.i.i.i = phi float [ %i.jy, %bb.az ], [ %i.jl, %bb.ay ]
  %i.jz = fdiv float %.010.i170.i.i.i, %i.jl
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i, %bb.ax
  %i.ka = phi float [ %i.jz, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.kb = load i32, ptr %i.g, align 4, !tbaa !58
  %i.kc = icmp slt i32 %i.ja, %i.kb
  br i1 %i.kc, label %.lr.ph243.i.i.i, label %.loopexit239.i.i.i

.lr.ph243.i.i.i:                                  ; preds = %bb.ba, %bb.bj
  %indvars.iv252.i.i.i = phi i64 [ %indvars.iv.next253.i.i.i, %bb.bj ], [ %i.jc, %bb.ba ] ; 6 uses
  %i.kd = icmp eq i64 %indvars.iv252.i.i.i, %sext250.i.i.i
  %i.ke = icmp eq i64 %indvars.iv252.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.kd, i1 true, i1 %i.ke
  %i.kf = load ptr, ptr %i.gu, align 8, !tbaa !338
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.kf, i64 %indvars.iv252.i.i.i
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !349
  %i.ki = uitofp i16 %i.kh to float
  %i.kj = fmul nnan float %i.ki, f0x37800080      ; 2 uses
  br i1 %or.cond140.i.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %.lr.ph243.i.i.i
  %i.kk = load ptr, ptr %4, align 8, !tbaa !333
  %i.kl = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kk)
          to label %.noexc178.i.i.i unwind label %bb.be

.noexc178.i.i.i:                                  ; preds = %bb.bb
  %i.km = icmp eq i32 %i.kl, 3
  br i1 %i.km, label %bb.bc, label %bb.bd, !prof !85

bb.bc:                                            ; preds = %.noexc178.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.noexc178.i.i.i
  %i.kn = load ptr, ptr %i.gv, align 8, !tbaa !338
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.kn, i64 %indvars.iv252.i.i.i
  %i.kp = fmul nnan float %i.kj, 6.553500e+04
  %i.kq = fadd float %i.kp, 5.000000e-01          ; 2 uses
  %i.kr = fcmp ogt float %i.kq, 6.553500e+04
  %.1.i.i.i.i.i.i177.i.i.i = select i1 %i.kr, float 6.553500e+04, float %i.kq
  %i.ks = fptoui float %.1.i.i.i.i.i.i177.i.i.i to i16
  store i16 %i.ks, ptr %i.ko, align 2, !tbaa !349
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bf:                                            ; preds = %.lr.ph243.i.i.i
  %i.ku = fmul float %i.ka, %i.kj
  %i.kv = load ptr, ptr %4, align 8, !tbaa !333
  %i.kw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kv)
          to label %.noexc186.i.i.i unwind label %bb.bi

.noexc186.i.i.i:                                  ; preds = %bb.bf
  %i.kx = icmp eq i32 %i.kw, 3
  br i1 %i.kx, label %bb.bg, label %bb.bh, !prof !85

bb.bg:                                            ; preds = %.noexc186.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.noexc186.i.i.i
  %i.ky = load ptr, ptr %i.gv, align 8, !tbaa !338
  %i.kz = getelementptr inbounds [2 x i8], ptr %i.ky, i64 %indvars.iv252.i.i.i
  %i.la = fmul float %i.ku, 6.553500e+04          ; 2 uses
  %i.lb = fcmp olt float %i.la, 0.000000e+00
  %i.lc = select i1 %i.lb, float -5.000000e-01, float 5.000000e-01
  %i.ld = fadd float %i.la, %i.lc                 ; 2 uses
  %.inv.i.i.i.i.i183.i.i.i = fcmp oge float %i.ld, 0.000000e+00
  %.0.i.i.i.i.i.i184.i.i.i = select i1 %.inv.i.i.i.i.i183.i.i.i, float %i.ld, float 0.000000e+00 ; 2 uses
  %i.le = fcmp ogt float %.0.i.i.i.i.i.i184.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i185.i.i.i = select i1 %i.le, float 6.553500e+04, float %.0.i.i.i.i.i.i184.i.i.i
  %i.lf = fptoui float %.1.i.i.i.i.i.i185.i.i.i to i16
  store i16 %i.lf, ptr %i.kz, align 2, !tbaa !349
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bj:                                            ; preds = %bb.bh, %bb.bd
  %indvars.iv.next253.i.i.i = add nsw i64 %indvars.iv252.i.i.i, 1 ; 2 uses
  %i.lh = load i32, ptr %i.g, align 4, !tbaa !58
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp slt i64 %indvars.iv.next253.i.i.i, %i.li
  br i1 %i.lj, label %.lr.ph243.i.i.i, label %.loopexit239.i.i.i, !llvm.loop !1410

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i
  %i.lk = load i32, ptr %i.g, align 4, !tbaa !58
  %i.ll = icmp slt i32 %i.ja, %i.lk
  br i1 %i.ll, label %.lr.ph.preheader.i.i.i, label %.loopexit239.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bk
  %i.lm = sext i32 %i.ja to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.lm, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bv ] ; 6 uses
  %i.ln = icmp eq i64 %indvars.iv.i.i.i, %sext250.i.i.i
  %i.lo = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.ln, i1 true, i1 %i.lo
  %i.lp = load ptr, ptr %i.gu, align 8, !tbaa !338
  %i.lq = getelementptr inbounds [2 x i8], ptr %i.lp, i64 %indvars.iv.i.i.i
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !349
  %i.ls = uitofp i16 %i.lr to float
  %i.lt = fmul nnan float %i.ls, f0x37800080      ; 4 uses
  br i1 %or.cond141.i.i.i, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %.lr.ph.i.i.i
  %i.lu = load ptr, ptr %4, align 8, !tbaa !333
  %i.lv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lu)
          to label %.noexc194.i.i.i unwind label %bb.bo

.noexc194.i.i.i:                                  ; preds = %bb.bl
  %i.lw = icmp eq i32 %i.lv, 3
  br i1 %i.lw, label %bb.bm, label %bb.bn, !prof !85

bb.bm:                                            ; preds = %.noexc194.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %.noexc194.i.i.i
  %i.lx = load ptr, ptr %i.gv, align 8, !tbaa !338
  %i.ly = getelementptr inbounds [2 x i8], ptr %i.lx, i64 %indvars.iv.i.i.i
  %i.lz = fmul nnan float %i.lt, 6.553500e+04
  %i.ma = fadd float %i.lz, 5.000000e-01          ; 2 uses
  %i.mb = fcmp ogt float %i.ma, 6.553500e+04
  %.1.i.i.i.i.i.i193.i.i.i = select i1 %i.mb, float 6.553500e+04, float %i.ma
  %i.mc = fptoui float %.1.i.i.i.i.i.i193.i.i.i to i16
  store i16 %i.mc, ptr %i.ly, align 2, !tbaa !349
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.me = fcmp ugt float %i.lt, 1.800000e-01
  br i1 %i.me, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mf = fadd float %i.lt, f0x3F0BB782
  %i.mg = fdiv float %i.mf, f0x3E3BEBCD
  %i.mh = call float @llvm.exp.f32(float %i.mg)   ; 2 uses
  %i.mi = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.mh, i64 0
  %i.mj = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.mh, i64 1
  %i.mk = fsub <2 x float> %i.mi, %i.mj
  %i.ml = fdiv <2 x float> %i.mk, splat (float f0x438E2DCC) ; 2 uses
  %i.mm = extractelement <2 x float> %i.ml, i64 0 ; 2 uses
  %i.mn = fcmp olt float %i.mm, 1.800000e-01
  %i.mo = extractelement <2 x float> %i.ml, i64 1
  %.0.i198.i.i.i = select i1 %i.mn, float %i.mo, float %i.mm
  %i.mp = call float @llvm.fabs.f32(float %.0.i198.i.i.i)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.010.i197.i.i.i = phi float [ %i.mp, %bb.bq ], [ %i.lt, %bb.bp ]
  %i.mq = load ptr, ptr %4, align 8, !tbaa !333
  %i.mr = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mq)
          to label %.noexc205.i.i.i unwind label %bb.bu

.noexc205.i.i.i:                                  ; preds = %bb.br
  %i.ms = icmp eq i32 %i.mr, 3
  br i1 %i.ms, label %bb.bs, label %bb.bt, !prof !85

bb.bs:                                            ; preds = %.noexc205.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %.noexc205.i.i.i
  %i.mt = load ptr, ptr %i.gv, align 8, !tbaa !338
end_hunk_11
begin_hunk_12_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IffEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IffEEbRNS1_8ImageBufERKS3_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #34
  unreachable

bb.aq:                                            ; preds = %bb.ak, %bb.y
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.hf, %bb.ak ], [ %i.fq, %bb.y ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.u
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %bb.aq ], [ %i.eh, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IffEEbRNS1_8ImageBufERKS3_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IffEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IffEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10color_map_IffEEbRNS0_8ImageBufERKS2_iiiNS0_4spanIKfLm18446744073709551615EEENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IffEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IffEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !358
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IffEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !76 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IffEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IffEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IffEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #23

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IfhEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.95", align 8 ; 31 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1734, !nonnull !110, !align !225
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1735, !nonnull !110, !align !230
  %i.f = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.g = icmp slt i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.val, align 8, !tbaa !1734, !nonnull !110, !align !225
  store i32 0, ptr %i.h, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1736, !nonnull !110, !align !225
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43
  %i.m = load i32, ptr %i.i, align 4, !tbaa !43
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.m)
  store i32 %i.n, ptr %i.i, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1737, !nonnull !110, !align !230
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1735, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.u

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.bn = load i8, ptr %i.s, align 8, !tbaa !327, !range !109, !noundef !110
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bp = load i32, ptr %i.t, align 4, !tbaa !328
  %i.bq = load i32, ptr %i.u, align 4, !tbaa !331
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.f, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.v, align 8, !tbaa !329
  %i.bt = load i32, ptr %i.w, align 4, !tbaa !344
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.f
  %i.bv = load i32, ptr %i.x, align 4, !tbaa !330
  %i.bw = load i32, ptr %i.y, align 8, !tbaa !345
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.al, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.f, %bb.e, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.by = load ptr, ptr %.val, align 8, !tbaa !1734, !nonnull !110, !align !225
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !43 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  %i.cb = load ptr, ptr %i.z, align 8, !tbaa !338 ; 3 uses
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !84
  %i.cd = uitofp i8 %i.cc to float
  %i.ce = fmul nnan float %i.cd, f0x3B808081
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cg = load <2 x i8>, ptr %i.cf, align 1, !tbaa !84
  %i.ch = uitofp <2 x i8> %i.cg to <2 x float>
  %5 = fmul nnan <2 x float> %i.ch, <float f0x3B808081, float 1.000000e+00>
  %6 = fmul nnan <2 x float> %5, <float 7.152000e-01, float f0x3B808081> ; 2 uses
  %i.ci = extractelement <2 x float> %6, i64 0
  %7 = call float @llvm.fmuladd.f32(float %i.ce, float 2.126000e-01, float %i.ci)
  %8 = extractelement <2 x float> %6, i64 1
  %i.cj = call float @llvm.fmuladd.f32(float %8, float 7.220000e-02, float %7)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.ck = zext nneg i32 %i.bz to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !84
  %i.cn = uitofp i8 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x3B808081
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cp = phi float [ %i.cj, %bb.g ], [ %i.co, %bb.h ] ; 2 uses
  %i.cq = load i32, ptr %i.aa, align 8, !tbaa !86 ; 2 uses
  %i.cr = load i32, ptr %i.i, align 4, !tbaa !58
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ct = fcmp ogt float %i.cp, 1.000000e+00
  %.1.i.i.i.i.i = select i1 %i.ct, float 1.000000e+00, float %i.cp
  %i.cu = sext i32 %i.cq to i64
  br label %bb.v

._crit_edge.i.i.i:                                ; preds = %bb.x, %bb.i
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !328
  %i.cw = add nsw i32 %i.cv, 1                    ; 7 uses
  store i32 %i.cw, ptr %i.t, align 4, !tbaa !328
  %i.cx = load i32, ptr %i.ae, align 8, !tbaa !334
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.j, label %bb.q

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.cz = load i8, ptr %i.ag, align 1, !tbaa !335, !range !109, !noundef !110
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.k, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.j
  %.pre.i10.i.i = load i32, ptr %i.v, align 8, !tbaa !329
  %.pre.i.i = load i32, ptr %i.x, align 4, !tbaa !330
  br label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.db = load i8, ptr %i.ah, align 1, !tbaa !336, !range !109, !noundef !110
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dd = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.de = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.dd
  store ptr %i.df, ptr %i.ad, align 8, !tbaa !338
  %i.dg = load i32, ptr %i.ak, align 8, !tbaa !339
  %.not.i.i13.i.i = icmp slt i32 %i.cw, %i.dg
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.m, !prof !59

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %bb.ak

bb.n:                                             ; preds = %bb.k
  %i.dh = load i8, ptr %i.ai, align 2, !tbaa !340, !range !109, !noundef !110
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.dk = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dj
  store ptr %i.dl, ptr %i.ad, align 8, !tbaa !338
  %i.dm = load i32, ptr %i.ak, align 8, !tbaa !339
  %i.dn = icmp slt i32 %i.cw, %i.dm               ; 3 uses
  %i.do = load i32, ptr %i.al, align 4
  %i.dp = icmp sge i32 %i.cw, %i.do
  %not..i.i11.i.i = xor i1 %i.dn, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.dp, !prof !341
  %i.dq = load ptr, ptr %i.am, align 8
  %i.dr = icmp eq ptr %i.dq, null
  %i.ds = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.dr, !prof !341
  br i1 %i.ds, label %bb.p, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, !prof !85

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %2, align 8, !tbaa !333
  %i.du = load i32, ptr %i.v, align 8, !tbaa !329
  %i.dv = load i32, ptr %i.x, align 4, !tbaa !330
  %i.dw = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.dx = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i32 noundef %i.cw, i32 noundef %i.du, i32 noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.dn, i32 noundef %i.dw)
          to label %.noexc15.i.i unwind label %bb.ak

.noexc15.i.i:                                     ; preds = %bb.p
  %i.dy = zext i1 %i.dn to i8
  store ptr %i.dx, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.dy, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.dz = load i32, ptr %i.u, align 4, !tbaa !331 ; 3 uses
  store i32 %i.dz, ptr %i.t, align 4, !tbaa !328
  %i.ea = load i32, ptr %i.v, align 8, !tbaa !329
  %i.eb = add nsw i32 %i.ea, 1                    ; 3 uses
  store i32 %i.eb, ptr %i.v, align 8, !tbaa !329
  %i.ec = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i6.i.i = icmp slt i32 %i.eb, %i.ec
  %.pre18.i.i = load i32, ptr %i.x, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = load i32, ptr %i.w, align 4, !tbaa !344 ; 2 uses
  store i32 %i.ed, ptr %i.v, align 8, !tbaa !329
  %i.ee = add nsw i32 %.pre18.i.i, 1              ; 3 uses
  store i32 %i.ee, ptr %i.x, align 4, !tbaa !330
  %i.ef = load i32, ptr %i.y, align 8, !tbaa !345
  %.not1.i7.i.i = icmp slt i32 %i.ee, %i.ef
  br i1 %.not1.i7.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.s, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.t:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i8.i.i
  %i.eg = phi i32 [ %.pre18.i.i, %bb.q ], [ %i.ee, %bb.r ], [ %.pre.i.i, %._crit_edge.i8.i.i ]
  %i.eh = phi i32 [ %i.eb, %bb.q ], [ %i.ed, %bb.r ], [ %.pre.i10.i.i, %._crit_edge.i8.i.i ]
  %i.ei = phi i32 [ %i.dz, %bb.q ], [ %i.dz, %bb.r ], [ %i.cw, %._crit_edge.i8.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ei, i32 noundef %i.eh, i32 noundef %i.eg)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %bb.ak

bb.u:                                             ; preds = %bb.d
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.v:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.x ] ; 3 uses
  %i.ek = load ptr, ptr %i.ab, align 8, !tbaa !1738, !nonnull !110, !align !230
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !121
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i ; 2 uses
  %i.en = load ptr, ptr %i.ac, align 8, !tbaa !1739, !nonnull !110, !align !225
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !43
  %i.ep = load ptr, ptr %i.j, align 8, !tbaa !1736, !nonnull !110, !align !225
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !43
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = add nsw i32 %i.eo, -1                   ; 2 uses
  %i.et = sitofp i32 %i.es to float
  %i.eu = fmul nnan float %.1.i.i.i.i.i, %i.et    ; 2 uses
  %i.ev = call noundef float @llvm.floor.f32(float %i.eu) ; 2 uses
  %i.ew = fptosi float %i.ev to i32               ; 2 uses
  %i.ex = fsub float %i.eu, %i.ev                 ; 2 uses
  %i.ey = add nsw i32 %i.ew, 1
  %.sroa.speculated.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.es, i32 %i.ey)
  %i.ez = sext i32 %i.ew to i64
  %i.fa = mul nsw i64 %i.ez, %i.er
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fa
  %i.fc = sext i32 %.sroa.speculated.i.i.i.i to i64
  %i.fd = mul nsw i64 %i.fc, %i.er
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fd
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !92
  %i.fg = fsub float 1.000000e+00, %i.ex
  %i.fh = load float, ptr %i.fe, align 4, !tbaa !92
  %i.fi = fmul float %i.fh, %i.ex
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.fg, float %i.fi)
  %i.fk = load ptr, ptr %2, align 8, !tbaa !333
  %i.fl = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk)
          to label %.noexc.i.i.i unwind label %bb.y

.noexc.i.i.i:                                     ; preds = %bb.v
  %i.fm = icmp eq i32 %i.fl, 3
  br i1 %i.fm, label %bb.w, label %bb.x, !prof !85

bb.w:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %.noexc.i.i.i
  %i.fn = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %indvars.iv.i.i.i
  store float %i.fj, ptr %i.fo, align 4, !tbaa !92
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fp = load i32, ptr %i.i, align 4, !tbaa !58
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next.i.i.i, %i.fq
  br i1 %i.fr, label %bb.v, label %._crit_edge.i.i.i, !llvm.loop !1732

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i: ; preds = %bb.t, %bb.s, %.noexc15.i.i, %bb.o, %bb.n, %bb.m, %bb.l
  %i.ft = load i32, ptr %i.as, align 4, !tbaa !328
  %i.fu = add nsw i32 %i.ft, 1                    ; 7 uses
  store i32 %i.fu, ptr %i.as, align 4, !tbaa !328
  %i.fv = load i32, ptr %i.at, align 8, !tbaa !334
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i
  %i.fx = load i8, ptr %i.bb, align 1, !tbaa !335, !range !109, !noundef !110
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.aa, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.z
end_hunk_12
begin_hunk_13_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %.not.i30.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSC_E_JSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSC_E_JSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #34
  unreachable

bb.bn:                                            ; preds = %bb.bh, %bb.av
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.jv, %bb.bh ], [ %i.ig, %bb.av ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #31
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ar
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %bb.bn ], [ %i.gx, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSC_E_JSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_iiiNS0_4spanIKfLm18446744073709551615EEENS0_3ROIEiEUlSB_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !358
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !76 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IftEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.113", align 8 ; 31 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1750, !nonnull !110, !align !225
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1751, !nonnull !110, !align !230
  %i.f = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.g = icmp slt i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.val, align 8, !tbaa !1750, !nonnull !110, !align !225
  store i32 0, ptr %i.h, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1752, !nonnull !110, !align !225
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43
  %i.m = load i32, ptr %i.i, align 4, !tbaa !43
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.m)
  store i32 %i.n, ptr %i.i, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1753, !nonnull !110, !align !230
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1751, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.u

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.bn = load i8, ptr %i.s, align 8, !tbaa !327, !range !109, !noundef !110
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bp = load i32, ptr %i.t, align 4, !tbaa !328
  %i.bq = load i32, ptr %i.u, align 4, !tbaa !331
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.f, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.v, align 8, !tbaa !329
  %i.bt = load i32, ptr %i.w, align 4, !tbaa !344
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.f
  %i.bv = load i32, ptr %i.x, align 4, !tbaa !330
  %i.bw = load i32, ptr %i.y, align 8, !tbaa !345
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.al, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.f, %bb.e, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.by = load ptr, ptr %.val, align 8, !tbaa !1750, !nonnull !110, !align !225
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !43 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  %i.cb = load ptr, ptr %i.z, align 8, !tbaa !338 ; 3 uses
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !349
  %i.cd = uitofp i16 %i.cc to float
  %i.ce = fmul nnan float %i.cd, f0x37800080
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cg = load <2 x i16>, ptr %i.cf, align 2, !tbaa !349
  %i.ch = uitofp <2 x i16> %i.cg to <2 x float>
  %5 = fmul nnan <2 x float> %i.ch, <float f0x37800080, float 1.000000e+00>
  %6 = fmul nnan <2 x float> %5, <float 7.152000e-01, float f0x37800080> ; 2 uses
  %i.ci = extractelement <2 x float> %6, i64 0
  %7 = call float @llvm.fmuladd.f32(float %i.ce, float 2.126000e-01, float %i.ci)
  %8 = extractelement <2 x float> %6, i64 1
  %i.cj = call float @llvm.fmuladd.f32(float %8, float 7.220000e-02, float %7)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.ck = zext nneg i32 %i.bz to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !349
  %i.cn = uitofp i16 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x37800080
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cp = phi float [ %i.cj, %bb.g ], [ %i.co, %bb.h ] ; 2 uses
  %i.cq = load i32, ptr %i.aa, align 8, !tbaa !86 ; 2 uses
  %i.cr = load i32, ptr %i.i, align 4, !tbaa !58
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ct = fcmp ogt float %i.cp, 1.000000e+00
  %.1.i.i.i.i.i = select i1 %i.ct, float 1.000000e+00, float %i.cp
  %i.cu = sext i32 %i.cq to i64
  br label %bb.v

._crit_edge.i.i.i:                                ; preds = %bb.x, %bb.i
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !328
  %i.cw = add nsw i32 %i.cv, 1                    ; 7 uses
  store i32 %i.cw, ptr %i.t, align 4, !tbaa !328
  %i.cx = load i32, ptr %i.ae, align 8, !tbaa !334
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.j, label %bb.q

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.cz = load i8, ptr %i.ag, align 1, !tbaa !335, !range !109, !noundef !110
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.k, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.j
  %.pre.i10.i.i = load i32, ptr %i.v, align 8, !tbaa !329
  %.pre.i.i = load i32, ptr %i.x, align 4, !tbaa !330
  br label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.db = load i8, ptr %i.ah, align 1, !tbaa !336, !range !109, !noundef !110
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dd = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.de = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.dd
  store ptr %i.df, ptr %i.ad, align 8, !tbaa !338
  %i.dg = load i32, ptr %i.ak, align 8, !tbaa !339
  %.not.i.i13.i.i = icmp slt i32 %i.cw, %i.dg
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.m, !prof !59

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %bb.ak

bb.n:                                             ; preds = %bb.k
  %i.dh = load i8, ptr %i.ai, align 2, !tbaa !340, !range !109, !noundef !110
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.dk = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dj
  store ptr %i.dl, ptr %i.ad, align 8, !tbaa !338
  %i.dm = load i32, ptr %i.ak, align 8, !tbaa !339
  %i.dn = icmp slt i32 %i.cw, %i.dm               ; 3 uses
  %i.do = load i32, ptr %i.al, align 4
  %i.dp = icmp sge i32 %i.cw, %i.do
  %not..i.i11.i.i = xor i1 %i.dn, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.dp, !prof !341
  %i.dq = load ptr, ptr %i.am, align 8
  %i.dr = icmp eq ptr %i.dq, null
  %i.ds = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.dr, !prof !341
  br i1 %i.ds, label %bb.p, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, !prof !85

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %2, align 8, !tbaa !333
  %i.du = load i32, ptr %i.v, align 8, !tbaa !329
  %i.dv = load i32, ptr %i.x, align 4, !tbaa !330
  %i.dw = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.dx = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i32 noundef %i.cw, i32 noundef %i.du, i32 noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.dn, i32 noundef %i.dw)
          to label %.noexc15.i.i unwind label %bb.ak

.noexc15.i.i:                                     ; preds = %bb.p
  %i.dy = zext i1 %i.dn to i8
  store ptr %i.dx, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.dy, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.dz = load i32, ptr %i.u, align 4, !tbaa !331 ; 3 uses
  store i32 %i.dz, ptr %i.t, align 4, !tbaa !328
  %i.ea = load i32, ptr %i.v, align 8, !tbaa !329
  %i.eb = add nsw i32 %i.ea, 1                    ; 3 uses
  store i32 %i.eb, ptr %i.v, align 8, !tbaa !329
  %i.ec = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i6.i.i = icmp slt i32 %i.eb, %i.ec
  %.pre18.i.i = load i32, ptr %i.x, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = load i32, ptr %i.w, align 4, !tbaa !344 ; 2 uses
  store i32 %i.ed, ptr %i.v, align 8, !tbaa !329
  %i.ee = add nsw i32 %.pre18.i.i, 1              ; 3 uses
  store i32 %i.ee, ptr %i.x, align 4, !tbaa !330
  %i.ef = load i32, ptr %i.y, align 8, !tbaa !345
  %.not1.i7.i.i = icmp slt i32 %i.ee, %i.ef
  br i1 %.not1.i7.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.s, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.t:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i8.i.i
  %i.eg = phi i32 [ %.pre18.i.i, %bb.q ], [ %i.ee, %bb.r ], [ %.pre.i.i, %._crit_edge.i8.i.i ]
  %i.eh = phi i32 [ %i.eb, %bb.q ], [ %i.ed, %bb.r ], [ %.pre.i10.i.i, %._crit_edge.i8.i.i ]
  %i.ei = phi i32 [ %i.dz, %bb.q ], [ %i.dz, %bb.r ], [ %i.cw, %._crit_edge.i8.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ei, i32 noundef %i.eh, i32 noundef %i.eg)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %bb.ak

bb.u:                                             ; preds = %bb.d
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.v:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.x ] ; 3 uses
  %i.ek = load ptr, ptr %i.ab, align 8, !tbaa !1754, !nonnull !110, !align !230
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !121
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i ; 2 uses
  %i.en = load ptr, ptr %i.ac, align 8, !tbaa !1755, !nonnull !110, !align !225
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !43
  %i.ep = load ptr, ptr %i.j, align 8, !tbaa !1752, !nonnull !110, !align !225
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !43
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = add nsw i32 %i.eo, -1                   ; 2 uses
  %i.et = sitofp i32 %i.es to float
  %i.eu = fmul nnan float %.1.i.i.i.i.i, %i.et    ; 2 uses
  %i.ev = call noundef float @llvm.floor.f32(float %i.eu) ; 2 uses
  %i.ew = fptosi float %i.ev to i32               ; 2 uses
  %i.ex = fsub float %i.eu, %i.ev                 ; 2 uses
  %i.ey = add nsw i32 %i.ew, 1
  %.sroa.speculated.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.es, i32 %i.ey)
  %i.ez = sext i32 %i.ew to i64
  %i.fa = mul nsw i64 %i.ez, %i.er
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fa
  %i.fc = sext i32 %.sroa.speculated.i.i.i.i to i64
  %i.fd = mul nsw i64 %i.fc, %i.er
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fd
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !92
  %i.fg = fsub float 1.000000e+00, %i.ex
  %i.fh = load float, ptr %i.fe, align 4, !tbaa !92
  %i.fi = fmul float %i.fh, %i.ex
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.fg, float %i.fi)
  %i.fk = load ptr, ptr %2, align 8, !tbaa !333
  %i.fl = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk)
          to label %.noexc.i.i.i unwind label %bb.y

.noexc.i.i.i:                                     ; preds = %bb.v
  %i.fm = icmp eq i32 %i.fl, 3
  br i1 %i.fm, label %bb.w, label %bb.x, !prof !85

bb.w:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %.noexc.i.i.i
  %i.fn = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %indvars.iv.i.i.i
  store float %i.fj, ptr %i.fo, align 4, !tbaa !92
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fp = load i32, ptr %i.i, align 4, !tbaa !58
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next.i.i.i, %i.fq
  br i1 %i.fr, label %bb.v, label %._crit_edge.i.i.i, !llvm.loop !1748

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i: ; preds = %bb.t, %bb.s, %.noexc15.i.i, %bb.o, %bb.n, %bb.m, %bb.l
  %i.ft = load i32, ptr %i.as, align 4, !tbaa !328
  %i.fu = add nsw i32 %i.ft, 1                    ; 7 uses
  store i32 %i.fu, ptr %i.as, align 4, !tbaa !328
  %i.fv = load i32, ptr %i.at, align 8, !tbaa !334
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i
  %i.fx = load i8, ptr %i.bb, align 1, !tbaa !335, !range !109, !noundef !110
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.aa, label %._crit_edge.i2.i.i

._crit_edge.i2.i.i:                               ; preds = %bb.z
end_hunk_13
begin_hunk_14_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IftEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %.not.i18.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IftEEbRNS1_8ImageBufERKS3_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IftEEbRNS1_8ImageBufERKS3_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #34
  unreachable

bb.aq:                                            ; preds = %bb.ak, %bb.y
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.hh, %bb.ak ], [ %i.fs, %bb.y ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.u
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %bb.aq ], [ %i.ej, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IftEEbRNS1_8ImageBufERKS3_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IftEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IftEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10color_map_IftEEbRNS0_8ImageBufERKS2_iiiNS0_4spanIKfLm18446744073709551615EEENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IftEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IftEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !358
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IftEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !76 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IftEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IftEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IftEEbRNS2_8ImageBufERKS4_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IhhEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.99", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.95", align 8 ; 31 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1758, !nonnull !110, !align !225
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1759, !nonnull !110, !align !230
  %i.f = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.g = icmp slt i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.val, align 8, !tbaa !1758, !nonnull !110, !align !225
  store i32 0, ptr %i.h, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1760, !nonnull !110, !align !225
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43
  %i.m = load i32, ptr %i.i, align 4, !tbaa !43
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.m)
  store i32 %i.n, ptr %i.i, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1761, !nonnull !110, !align !230
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1759, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.u

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.bn = load i8, ptr %i.s, align 8, !tbaa !327, !range !109, !noundef !110
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bp = load i32, ptr %i.t, align 4, !tbaa !328
  %i.bq = load i32, ptr %i.u, align 4, !tbaa !331
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.f, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.v, align 8, !tbaa !329
  %i.bt = load i32, ptr %i.w, align 4, !tbaa !344
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.f
  %i.bv = load i32, ptr %i.x, align 4, !tbaa !330
  %i.bw = load i32, ptr %i.y, align 8, !tbaa !345
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.al, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.f, %bb.e, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.by = load ptr, ptr %.val, align 8, !tbaa !1758, !nonnull !110, !align !225
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !43 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  %i.cb = load ptr, ptr %i.z, align 8, !tbaa !338 ; 3 uses
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !84
  %i.cd = uitofp i8 %i.cc to float
  %i.ce = fmul nnan float %i.cd, f0x3B808081
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cg = load <2 x i8>, ptr %i.cf, align 1, !tbaa !84
  %i.ch = uitofp <2 x i8> %i.cg to <2 x float>
  %5 = fmul nnan <2 x float> %i.ch, <float f0x3B808081, float 1.000000e+00>
  %6 = fmul nnan <2 x float> %5, <float 7.152000e-01, float f0x3B808081> ; 2 uses
  %i.ci = extractelement <2 x float> %6, i64 0
  %7 = call float @llvm.fmuladd.f32(float %i.ce, float 2.126000e-01, float %i.ci)
  %8 = extractelement <2 x float> %6, i64 1
  %i.cj = call float @llvm.fmuladd.f32(float %8, float 7.220000e-02, float %7)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.ck = zext nneg i32 %i.bz to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !84
  %i.cn = uitofp i8 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x3B808081
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cp = phi float [ %i.cj, %bb.g ], [ %i.co, %bb.h ] ; 2 uses
  %i.cq = load i32, ptr %i.aa, align 8, !tbaa !86 ; 2 uses
  %i.cr = load i32, ptr %i.i, align 4, !tbaa !58
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ct = fcmp ogt float %i.cp, 1.000000e+00
  %.1.i.i.i.i.i = select i1 %i.ct, float 1.000000e+00, float %i.cp
  %i.cu = sext i32 %i.cq to i64
  br label %bb.v

._crit_edge.i.i.i:                                ; preds = %bb.x, %bb.i
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !328
  %i.cw = add nsw i32 %i.cv, 1                    ; 7 uses
  store i32 %i.cw, ptr %i.t, align 4, !tbaa !328
  %i.cx = load i32, ptr %i.ae, align 8, !tbaa !334
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.j, label %bb.q

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.cz = load i8, ptr %i.ag, align 1, !tbaa !335, !range !109, !noundef !110
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.k, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.j
  %.pre.i10.i.i = load i32, ptr %i.v, align 8, !tbaa !329
  %.pre.i.i = load i32, ptr %i.x, align 4, !tbaa !330
  br label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.db = load i8, ptr %i.ah, align 1, !tbaa !336, !range !109, !noundef !110
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dd = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.de = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.dd
  store ptr %i.df, ptr %i.ad, align 8, !tbaa !338
  %i.dg = load i32, ptr %i.ak, align 8, !tbaa !339
  %.not.i.i13.i.i = icmp slt i32 %i.cw, %i.dg
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.m, !prof !59

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %bb.ak

bb.n:                                             ; preds = %bb.k
  %i.dh = load i8, ptr %i.ai, align 2, !tbaa !340, !range !109, !noundef !110
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.dk = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dj
  store ptr %i.dl, ptr %i.ad, align 8, !tbaa !338
  %i.dm = load i32, ptr %i.ak, align 8, !tbaa !339
  %i.dn = icmp slt i32 %i.cw, %i.dm               ; 3 uses
  %i.do = load i32, ptr %i.al, align 4
  %i.dp = icmp sge i32 %i.cw, %i.do
  %not..i.i11.i.i = xor i1 %i.dn, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.dp, !prof !341
  %i.dq = load ptr, ptr %i.am, align 8
  %i.dr = icmp eq ptr %i.dq, null
  %i.ds = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.dr, !prof !341
  br i1 %i.ds, label %bb.p, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, !prof !85

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %2, align 8, !tbaa !333
  %i.du = load i32, ptr %i.v, align 8, !tbaa !329
  %i.dv = load i32, ptr %i.x, align 4, !tbaa !330
  %i.dw = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.dx = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i32 noundef %i.cw, i32 noundef %i.du, i32 noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.dn, i32 noundef %i.dw)
          to label %.noexc15.i.i unwind label %bb.ak

.noexc15.i.i:                                     ; preds = %bb.p
  %i.dy = zext i1 %i.dn to i8
  store ptr %i.dx, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.dy, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.dz = load i32, ptr %i.u, align 4, !tbaa !331 ; 3 uses
  store i32 %i.dz, ptr %i.t, align 4, !tbaa !328
  %i.ea = load i32, ptr %i.v, align 8, !tbaa !329
  %i.eb = add nsw i32 %i.ea, 1                    ; 3 uses
  store i32 %i.eb, ptr %i.v, align 8, !tbaa !329
  %i.ec = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i6.i.i = icmp slt i32 %i.eb, %i.ec
  %.pre18.i.i = load i32, ptr %i.x, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = load i32, ptr %i.w, align 4, !tbaa !344 ; 2 uses
  store i32 %i.ed, ptr %i.v, align 8, !tbaa !329
  %i.ee = add nsw i32 %.pre18.i.i, 1              ; 3 uses
  store i32 %i.ee, ptr %i.x, align 4, !tbaa !330
  %i.ef = load i32, ptr %i.y, align 8, !tbaa !345
  %.not1.i7.i.i = icmp slt i32 %i.ee, %i.ef
  br i1 %.not1.i7.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.s, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.t:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i8.i.i
  %i.eg = phi i32 [ %.pre18.i.i, %bb.q ], [ %i.ee, %bb.r ], [ %.pre.i.i, %._crit_edge.i8.i.i ]
  %i.eh = phi i32 [ %i.eb, %bb.q ], [ %i.ed, %bb.r ], [ %.pre.i10.i.i, %._crit_edge.i8.i.i ]
  %i.ei = phi i32 [ %i.dz, %bb.q ], [ %i.dz, %bb.r ], [ %i.cw, %._crit_edge.i8.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ei, i32 noundef %i.eh, i32 noundef %i.eg)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %bb.ak

bb.u:                                             ; preds = %bb.d
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.v:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.x ] ; 3 uses
  %i.ek = load ptr, ptr %i.ab, align 8, !tbaa !1762, !nonnull !110, !align !230
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !121
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i ; 2 uses
  %i.en = load ptr, ptr %i.ac, align 8, !tbaa !1763, !nonnull !110, !align !225
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !43
  %i.ep = load ptr, ptr %i.j, align 8, !tbaa !1760, !nonnull !110, !align !225
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !43
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = add nsw i32 %i.eo, -1                   ; 2 uses
  %i.et = sitofp i32 %i.es to float
  %i.eu = fmul nnan float %.1.i.i.i.i.i, %i.et    ; 2 uses
  %i.ev = call noundef float @llvm.floor.f32(float %i.eu) ; 2 uses
  %i.ew = fptosi float %i.ev to i32               ; 2 uses
  %i.ex = fsub float %i.eu, %i.ev                 ; 2 uses
  %i.ey = add nsw i32 %i.ew, 1
  %.sroa.speculated.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.es, i32 %i.ey)
  %i.ez = sext i32 %i.ew to i64
  %i.fa = mul nsw i64 %i.ez, %i.er
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fa
  %i.fc = sext i32 %.sroa.speculated.i.i.i.i to i64
  %i.fd = mul nsw i64 %i.fc, %i.er
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fd
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !92
  %i.fg = fsub float 1.000000e+00, %i.ex
  %i.fh = load float, ptr %i.fe, align 4, !tbaa !92
  %i.fi = fmul float %i.fh, %i.ex
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.fg, float %i.fi)
  %i.fk = load ptr, ptr %2, align 8, !tbaa !333
  %i.fl = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk)
          to label %.noexc.i.i.i unwind label %bb.y

.noexc.i.i.i:                                     ; preds = %bb.v
  %i.fm = icmp eq i32 %i.fl, 3
  br i1 %i.fm, label %bb.w, label %bb.x, !prof !85

bb.w:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %.noexc.i.i.i
  %i.fn = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %indvars.iv.i.i.i
  %i.fp = fmul float %i.fj, 2.550000e+02          ; 2 uses
  %i.fq = fcmp olt float %i.fp, 0.000000e+00
  %i.fr = select i1 %i.fq, float -5.000000e-01, float 5.000000e-01
  %i.fs = fadd float %i.fp, %i.fr                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.fs, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.fs, float 0.000000e+00 ; 2 uses
  %i.ft = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.ft, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.fu = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.fu, ptr %i.fo, align 1, !tbaa !84
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fv = load i32, ptr %i.i, align 4, !tbaa !58
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next.i.i.i, %i.fw
  br i1 %i.fx, label %bb.v, label %._crit_edge.i.i.i, !llvm.loop !1756

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i: ; preds = %bb.t, %bb.s, %.noexc15.i.i, %bb.o, %bb.n, %bb.m, %bb.l
  %i.fz = load i32, ptr %i.as, align 4, !tbaa !328
  %i.ga = add nsw i32 %i.fz, 1                    ; 7 uses
  store i32 %i.ga, ptr %i.as, align 4, !tbaa !328
  %i.gb = load i32, ptr %i.at, align 8, !tbaa !334
end_hunk_14
begin_hunk_15_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %.not.i29.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSC_E_JSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSC_E_JSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #34
  unreachable

bb.bx:                                            ; preds = %bb.br, %bb.bf
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ll, %bb.br ], [ %i.jw, %bb.bf ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #31
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.ar
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %bb.bx ], [ %i.gx, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEENS1_3ROIEiEUlSC_E_JSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_iiiNS0_4spanIKfLm18446744073709551615EEENS0_3ROIEiEUlSB_E_, ptr %0, align 8, !tbaa !323
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %.val, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !358
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !76 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10color_map_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiiNS2_4spanIKfLm18446744073709551615EEENS2_3ROIEiEUlSD_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10color_map_IttEEbRNS1_8ImageBufERKS5_iiiNS1_4spanIKfLm18446744073709551615EEES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.117", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.113", align 8 ; 31 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1774, !nonnull !110, !align !225
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1775, !nonnull !110, !align !230
  %i.f = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.g = icmp slt i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.val, align 8, !tbaa !1774, !nonnull !110, !align !225
  store i32 0, ptr %i.h, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1776, !nonnull !110, !align !225
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43
  %i.m = load i32, ptr %i.i, align 4, !tbaa !43
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.m)
  store i32 %i.n, ptr %i.i, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1777, !nonnull !110, !align !230
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1775, !nonnull !110, !align !230
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.u

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.bn = load i8, ptr %i.s, align 8, !tbaa !327, !range !109, !noundef !110
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bp = load i32, ptr %i.t, align 4, !tbaa !328
  %i.bq = load i32, ptr %i.u, align 4, !tbaa !331
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.f, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.v, align 8, !tbaa !329
  %i.bt = load i32, ptr %i.w, align 4, !tbaa !344
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.f
  %i.bv = load i32, ptr %i.x, align 4, !tbaa !330
  %i.bw = load i32, ptr %i.y, align 8, !tbaa !345
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.al, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.f, %bb.e, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.by = load ptr, ptr %.val, align 8, !tbaa !1774, !nonnull !110, !align !225
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !43 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  %i.cb = load ptr, ptr %i.z, align 8, !tbaa !338 ; 3 uses
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !349
  %i.cd = uitofp i16 %i.cc to float
  %i.ce = fmul nnan float %i.cd, f0x37800080
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cg = load <2 x i16>, ptr %i.cf, align 2, !tbaa !349
  %i.ch = uitofp <2 x i16> %i.cg to <2 x float>
  %5 = fmul nnan <2 x float> %i.ch, <float f0x37800080, float 1.000000e+00>
  %6 = fmul nnan <2 x float> %5, <float 7.152000e-01, float f0x37800080> ; 2 uses
  %i.ci = extractelement <2 x float> %6, i64 0
  %7 = call float @llvm.fmuladd.f32(float %i.ce, float 2.126000e-01, float %i.ci)
  %8 = extractelement <2 x float> %6, i64 1
  %i.cj = call float @llvm.fmuladd.f32(float %8, float 7.220000e-02, float %7)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.ck = zext nneg i32 %i.bz to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !349
  %i.cn = uitofp i16 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x37800080
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cp = phi float [ %i.cj, %bb.g ], [ %i.co, %bb.h ] ; 2 uses
  %i.cq = load i32, ptr %i.aa, align 8, !tbaa !86 ; 2 uses
  %i.cr = load i32, ptr %i.i, align 4, !tbaa !58
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ct = fcmp ogt float %i.cp, 1.000000e+00
  %.1.i.i.i.i.i = select i1 %i.ct, float 1.000000e+00, float %i.cp
  %i.cu = sext i32 %i.cq to i64
  br label %bb.v

._crit_edge.i.i.i:                                ; preds = %bb.x, %bb.i
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !328
  %i.cw = add nsw i32 %i.cv, 1                    ; 7 uses
  store i32 %i.cw, ptr %i.t, align 4, !tbaa !328
  %i.cx = load i32, ptr %i.ae, align 8, !tbaa !334
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.j, label %bb.q

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.cz = load i8, ptr %i.ag, align 1, !tbaa !335, !range !109, !noundef !110
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.k, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.j
  %.pre.i10.i.i = load i32, ptr %i.v, align 8, !tbaa !329
  %.pre.i.i = load i32, ptr %i.x, align 4, !tbaa !330
  br label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.db = load i8, ptr %i.ah, align 1, !tbaa !336, !range !109, !noundef !110
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dd = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.de = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.dd
  store ptr %i.df, ptr %i.ad, align 8, !tbaa !338
  %i.dg = load i32, ptr %i.ak, align 8, !tbaa !339
  %.not.i.i13.i.i = icmp slt i32 %i.cw, %i.dg
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.m, !prof !59

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %bb.ak

bb.n:                                             ; preds = %bb.k
  %i.dh = load i8, ptr %i.ai, align 2, !tbaa !340, !range !109, !noundef !110
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = load i64, ptr %i.aj, align 8, !tbaa !337
  %i.dk = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dj
  store ptr %i.dl, ptr %i.ad, align 8, !tbaa !338
  %i.dm = load i32, ptr %i.ak, align 8, !tbaa !339
  %i.dn = icmp slt i32 %i.cw, %i.dm               ; 3 uses
  %i.do = load i32, ptr %i.al, align 4
  %i.dp = icmp sge i32 %i.cw, %i.do
  %not..i.i11.i.i = xor i1 %i.dn, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.dp, !prof !341
  %i.dq = load ptr, ptr %i.am, align 8
  %i.dr = icmp eq ptr %i.dq, null
  %i.ds = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.dr, !prof !341
  br i1 %i.ds, label %bb.p, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i, !prof !85

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %2, align 8, !tbaa !333
  %i.du = load i32, ptr %i.v, align 8, !tbaa !329
  %i.dv = load i32, ptr %i.x, align 4, !tbaa !330
  %i.dw = load i32, ptr %i.ar, align 8, !tbaa !342
  %i.dx = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i32 noundef %i.cw, i32 noundef %i.du, i32 noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.dn, i32 noundef %i.dw)
          to label %.noexc15.i.i unwind label %bb.ak

.noexc15.i.i:                                     ; preds = %bb.p
  %i.dy = zext i1 %i.dn to i8
  store ptr %i.dx, ptr %i.ad, align 8, !tbaa !338
  store i8 %i.dy, ptr %i.ag, align 1, !tbaa !335
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.dz = load i32, ptr %i.u, align 4, !tbaa !331 ; 3 uses
  store i32 %i.dz, ptr %i.t, align 4, !tbaa !328
  %i.ea = load i32, ptr %i.v, align 8, !tbaa !329
  %i.eb = add nsw i32 %i.ea, 1                    ; 3 uses
  store i32 %i.eb, ptr %i.v, align 8, !tbaa !329
  %i.ec = load i32, ptr %i.af, align 8, !tbaa !343
  %.not.i6.i.i = icmp slt i32 %i.eb, %i.ec
  %.pre18.i.i = load i32, ptr %i.x, align 4, !tbaa !330 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = load i32, ptr %i.w, align 4, !tbaa !344 ; 2 uses
  store i32 %i.ed, ptr %i.v, align 8, !tbaa !329
  %i.ee = add nsw i32 %.pre18.i.i, 1              ; 3 uses
  store i32 %i.ee, ptr %i.x, align 4, !tbaa !330
  %i.ef = load i32, ptr %i.y, align 8, !tbaa !345
  %.not1.i7.i.i = icmp slt i32 %i.ee, %i.ef
  br i1 %.not1.i7.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.s, align 8, !tbaa !327
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i

bb.t:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i8.i.i
  %i.eg = phi i32 [ %.pre18.i.i, %bb.q ], [ %i.ee, %bb.r ], [ %.pre.i.i, %._crit_edge.i8.i.i ]
  %i.eh = phi i32 [ %i.eb, %bb.q ], [ %i.ed, %bb.r ], [ %.pre.i10.i.i, %._crit_edge.i8.i.i ]
  %i.ei = phi i32 [ %i.dz, %bb.q ], [ %i.dz, %bb.r ], [ %i.cw, %._crit_edge.i8.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ei, i32 noundef %i.eh, i32 noundef %i.eg)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i unwind label %bb.ak

bb.u:                                             ; preds = %bb.d
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.v:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.x ] ; 3 uses
  %i.ek = load ptr, ptr %i.ab, align 8, !tbaa !1778, !nonnull !110, !align !230
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !121
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i ; 2 uses
  %i.en = load ptr, ptr %i.ac, align 8, !tbaa !1779, !nonnull !110, !align !225
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !43
  %i.ep = load ptr, ptr %i.j, align 8, !tbaa !1776, !nonnull !110, !align !225
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !43
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = add nsw i32 %i.eo, -1                   ; 2 uses
  %i.et = sitofp i32 %i.es to float
  %i.eu = fmul nnan float %.1.i.i.i.i.i, %i.et    ; 2 uses
  %i.ev = call noundef float @llvm.floor.f32(float %i.eu) ; 2 uses
  %i.ew = fptosi float %i.ev to i32               ; 2 uses
  %i.ex = fsub float %i.eu, %i.ev                 ; 2 uses
  %i.ey = add nsw i32 %i.ew, 1
  %.sroa.speculated.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.es, i32 %i.ey)
  %i.ez = sext i32 %i.ew to i64
  %i.fa = mul nsw i64 %i.ez, %i.er
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fa
  %i.fc = sext i32 %.sroa.speculated.i.i.i.i to i64
  %i.fd = mul nsw i64 %i.fc, %i.er
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fd
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !92
  %i.fg = fsub float 1.000000e+00, %i.ex
  %i.fh = load float, ptr %i.fe, align 4, !tbaa !92
  %i.fi = fmul float %i.fh, %i.ex
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.fg, float %i.fi)
  %i.fk = load ptr, ptr %2, align 8, !tbaa !333
  %i.fl = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk)
          to label %.noexc.i.i.i unwind label %bb.y

.noexc.i.i.i:                                     ; preds = %bb.v
  %i.fm = icmp eq i32 %i.fl, 3
  br i1 %i.fm, label %bb.w, label %bb.x, !prof !85

bb.w:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %.noexc.i.i.i
  %i.fn = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.fo = getelementptr inbounds [2 x i8], ptr %i.fn, i64 %indvars.iv.i.i.i
  %i.fp = fmul float %i.fj, 6.553500e+04          ; 2 uses
  %i.fq = fcmp olt float %i.fp, 0.000000e+00
  %i.fr = select i1 %i.fq, float -5.000000e-01, float 5.000000e-01
  %i.fs = fadd float %i.fp, %i.fr                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.fs, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.fs, float 0.000000e+00 ; 2 uses
  %i.ft = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.ft, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.fu = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.fu, ptr %i.fo, align 2, !tbaa !349
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fv = load i32, ptr %i.i, align 4, !tbaa !58
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next.i.i.i, %i.fw
  br i1 %i.fx, label %bb.v, label %._crit_edge.i.i.i, !llvm.loop !1772

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i: ; preds = %bb.t, %bb.s, %.noexc15.i.i, %bb.o, %bb.n, %bb.m, %bb.l
  %i.fz = load i32, ptr %i.as, align 4, !tbaa !328
  %i.ga = add nsw i32 %i.fz, 1                    ; 7 uses
  store i32 %i.ga, ptr %i.as, align 4, !tbaa !328
  %i.gb = load i32, ptr %i.at, align 8, !tbaa !334
end_hunk_15
