inline.NumInlined: 246
inline.NumDeleted: 151
begin_hunk_0_@_ZN2v88internal8compiler10UnrollLoopEPNS1_4NodeEPNS0_16ZoneUnorderedSetIS3_NS_4base4hashIS3_EESt8equal_toIS3_EEEjPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS0_4ZoneEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
.lr.ph396.preheader:                              ; preds = %bb.ab, %bb.aa
  %i.eq = phi i64 [ %.pre.i.i, %bb.ab ], [ %i.en, %bb.aa ] ; 2 uses
  %i.er = inttoptr i64 %i.eq to ptr               ; 3 uses
  %i.es = add i64 %i.eq, %i.ai
  store i64 %i.es, ptr %i.ak, align 8
  store ptr %i.bk, ptr %i.er, align 8
  br label %.lr.ph396

._crit_edge397:                                   ; preds = %.lr.ph396
  %i.et = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.u) #7
  %i.eu = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef %i.et, i32 noundef %i.u, ptr noundef nonnull %i.er, i1 noundef zeroext false) #7 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %.not.i.i220 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i220, label %.loopexit386, label %.lr.ph405

.lr.ph405:                                        ; preds = %._crit_edge397
  %.not15.i238 = icmp eq ptr %i.eu, null
  br label %bb.ac

.lr.ph396:                                        ; preds = %.lr.ph396.preheader, %.lr.ph396
  %indvars.iv = phi i64 [ 1, %.lr.ph396.preheader ], [ %indvars.iv.next, %.lr.ph396 ] ; 4 uses
  %i.ex = trunc i64 %indvars.iv to i32
  %i.ey = add i32 %i.ex, -1
  %i.ez = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %i.bk, i32 noundef %i.ey) #7
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv
  store ptr %i.ez, ptr %i.fa, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not371.not = icmp samesign ult i64 %indvars.iv, %i.aq
  br i1 %.not371.not, label %.lr.ph396, label %._crit_edge397, !llvm.loop !9

bb.ac:                                            ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, %.lr.ph405
  %.sroa.0345.0403 = phi ptr [ %i.ew, %.lr.ph405 ], [ %.sroa.6.0404, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit ] ; 3 uses
  %.sroa.6.0404 = load ptr, ptr %.sroa.0345.0403, align 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0345.0403, i64 16
  %i.fc = load i32, ptr %i.fb, align 8            ; 2 uses
  %i.fd = lshr i32 %i.fc, 1                       ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0345.0403, i64 24
  %i.ff = zext nneg i32 %i.fd to i64              ; 3 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.ff ; 2 uses
  %i.fh = trunc i32 %i.fc to i1
  br i1 %i.fh, label %_ZNK2v88internal8compiler4Edge4fromEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = load ptr, ptr %i.fg, align 8
  br label %_ZNK2v88internal8compiler4Edge4fromEv.exit

_ZNK2v88internal8compiler4Edge4fromEv.exit:       ; preds = %bb.ac, %bb.ad
  %i.fj = phi ptr [ %i.fi, %bb.ad ], [ %i.fg, %bb.ac ] ; 16 uses
  %i.fk = load i64, ptr %i.n, align 8
  %.not.not.i.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not.not.i.i.i, label %.preheader380, label %bb.af

.preheader380:                                    ; preds = %_ZNK2v88internal8compiler4Edge4fromEv.exit, %bb.ae
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ae ], [ %i.ab, %_ZNK2v88internal8compiler4Edge4fromEv.exit ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 3 uses
  %i.fl = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.fl, label %.loopexit381, label %bb.ae

bb.ae:                                            ; preds = %.preheader380
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = icmp eq ptr %i.fj, %i.fn
  br i1 %i.fo, label %.loopexit382, label %.preheader380, !llvm.loop !10

bb.af:                                            ; preds = %_ZNK2v88internal8compiler4Edge4fromEv.exit
  %i.fp = ptrtoint ptr %i.fj to i64               ; 2 uses
  %i.fq = xor i64 %i.fp, -1
  %i.fr = shl i64 %i.fp, 21
  %i.fs = add i64 %i.fr, %i.fq                    ; 2 uses
  %i.ft = lshr i64 %i.fs, 24
  %i.fu = xor i64 %i.ft, %i.fs
  %i.fv = mul i64 %i.fu, 265                      ; 2 uses
  %i.fw = lshr i64 %i.fv, 14
  %i.fx = xor i64 %i.fw, %i.fv
  %i.fy = mul i64 %i.fx, 21                       ; 2 uses
  %i.fz = lshr i64 %i.fy, 28
  %i.ga = xor i64 %i.fz, %i.fy
  %i.gb = mul i64 %i.ga, 2147483649               ; 3 uses
  %i.gc = load i64, ptr %i.al, align 8            ; 2 uses
  %i.gd = urem i64 %i.gb, %i.gc                   ; 2 uses
  %i.ge = load ptr, ptr %i.am, align 8
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i, label %.loopexit381, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gh = load ptr, ptr %i.gg, align 8            ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = icmp eq i64 %i.gb, %i.gk
  %i.gm = load ptr, ptr %i.gi, align 8
  %i.gn = icmp eq ptr %i.fj, %i.gm
  %i.go = select i1 %i.gl, i1 %i.gn, i1 false
  br i1 %i.go, label %.loopexit382, label %.lr.ph.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ai
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gq = icmp eq i64 %i.gb, %i.gw
  %i.gr = load ptr, ptr %i.gp, align 8
  %i.gs = icmp eq ptr %i.fj, %i.gr
  %i.gt = select i1 %i.gq, i1 %i.gs, i1 false
  br i1 %i.gt, label %.loopexit382, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i = phi ptr [ %i.gu, %bb.ah ], [ %i.gh, %bb.ag ]
  %i.gu = load ptr, ptr %.020.i.i.i.i.i, align 8  ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit381, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load i64, ptr %i.gv, align 8            ; 2 uses
  %i.gx = urem i64 %i.gw, %i.gc
  %.not19.i.i.i.i.i = icmp eq i64 %i.gx, %i.gd
  br i1 %.not19.i.i.i.i.i, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !11

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.ai
  br label %.loopexit381, !llvm.loop !11

.loopexit382:                                     ; preds = %bb.ah, %bb.ae, %bb.ag
  %i.gy = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i16, ptr %i.gz, align 8
  %i.hb = icmp eq i16 %i.ha, 55
  br i1 %i.hb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.loopexit382
  %i.hc = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.u) #7
  br label %bb.al

bb.ak:                                            ; preds = %.loopexit382
  %i.hd = call noundef zeroext i8 @_ZN2v88internal8compiler29LoopExitValueRepresentationOfEPKNS1_8OperatorE(ptr noundef nonnull %i.gy) #7
  %i.he = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext %i.hd, i32 noundef %i.u) #7
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0191 = phi ptr [ %i.hc, %bb.aj ], [ %i.he, %bb.ak ]
  %i.hf = load i64, ptr %i.aj, align 8
  %i.hg = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = icmp ult i64 %i.hh, %i.ap
  br i1 %i.hi, label %bb.am, label %.lr.ph400.preheader, !prof !8

bb.am:                                            ; preds = %bb.al
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef %i.ap) #7
  %.pre.i.i229 = load i64, ptr %i.ak, align 8
  br label %.lr.ph400.preheader

.lr.ph400.preheader:                              ; preds = %bb.am, %bb.al
  %i.hj = phi i64 [ %.pre.i.i229, %bb.am ], [ %i.hg, %bb.al ] ; 2 uses
  %i.hk = inttoptr i64 %i.hj to ptr               ; 4 uses
  %i.hl = add i64 %i.hj, %i.ap
  store i64 %i.hl, ptr %i.ak, align 8
  store ptr %i.fj, ptr %i.hk, align 8
  br label %.lr.ph400

._crit_edge401:                                   ; preds = %.lr.ph400
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.ah
  store ptr %i.eu, ptr %i.hm, align 8
  %i.hn = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef %.0191, i32 noundef %i.an, ptr noundef nonnull %i.hk, i1 noundef zeroext false) #7 ; 4 uses
  call void @_ZN2v88internal8compiler4Node11ReplaceUsesEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef %i.hn) #7
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = and i32 %i.hp, 251658240
  %.not.i.i231 = icmp eq i32 %i.hq, 251658240
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = add i64 %i.hr, 32
  %i.ht = inttoptr i64 %i.hs to ptr               ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8            ; 4 uses
  br i1 %.not.i.i231, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %._crit_edge401
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = add i64 %i.hv, 16
  %i.hx = inttoptr i64 %i.hw to ptr               ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %.not.i232 = icmp eq ptr %i.hy, %i.fj
  br i1 %.not.i232, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %._crit_edge401
  %.not18.i = icmp eq ptr %i.hu, %i.fj
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.hz = phi ptr [ %i.ht, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.hx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ia = phi ptr [ %i.hu, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.hy, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.ib = phi ptr [ %i.hn, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.hu, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -24 ; 2 uses
  %.not14.i = icmp eq ptr %i.ia, null
  br i1 %.not14.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ia, ptr noundef nonnull %i.ic) #7
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i, %bb.an
  store ptr %i.fj, ptr %i.hz, align 8
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull %i.ic) #7
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

.lr.ph400:                                        ; preds = %.lr.ph400.preheader, %.lr.ph400
  %indvars.iv454 = phi i64 [ 1, %.lr.ph400.preheader ], [ %indvars.iv.next455, %.lr.ph400 ] ; 4 uses
  %i.id = trunc i64 %indvars.iv454 to i32
  %i.ie = add i32 %i.id, -1
  %i.if = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %i.fj, i32 noundef %i.ie) #7
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv454
  store ptr %i.if, ptr %i.ig, align 8
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1
  %.not373.not = icmp samesign ult i64 %indvars.iv454, %i.aq
  br i1 %.not373.not, label %.lr.ph400, label %._crit_edge401, !llvm.loop !12

.loopexit381:                                     ; preds = %.lr.ph.i.i.i.i.i, %.preheader380, %..loopexit_crit_edge21.i.i.i.i.i, %bb.af
  %.not202 = icmp eq ptr %i.fj, %i.eu
  br i1 %.not202, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.ap

bb.ap:                                            ; preds = %.loopexit381
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = and i32 %i.ii, 251658240
  %.not.i.i233 = icmp eq i32 %i.ij, 251658240
  %i.ik = ptrtoint ptr %i.fj to i64
  %i.il = add i64 %i.ik, 32
  %i.im = inttoptr i64 %i.il to ptr               ; 2 uses
  br i1 %.not.i.i233, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i239, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i234

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i239: ; preds = %bb.ap
  %i.in = load ptr, ptr %i.im, align 8            ; 2 uses
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = add i64 %i.io, 16
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.ff ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  %.not.i240 = icmp eq ptr %i.is, %i.eu
  br i1 %.not.i240, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i236

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i234: ; preds = %bb.ap
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ff ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8            ; 2 uses
  %.not18.i235 = icmp eq ptr %i.iu, %i.eu
  br i1 %.not18.i235, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i236

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i236: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i234, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i239
  %i.iv = phi ptr [ %i.it, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i234 ], [ %i.ir, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i239 ]
  %i.iw = phi ptr [ %i.iu, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i234 ], [ %i.is, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i239 ] ; 2 uses
  %i.ix = phi ptr [ %i.fj, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i234 ], [ %i.in, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i239 ]
  %i.iy = xor i32 %i.fd, -1
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [24 x i8], ptr %i.ix, i64 %i.iz ; 2 uses
  %.not14.i237 = icmp eq ptr %i.iw, null
  br i1 %.not14.i237, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i236
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.iw, ptr noundef nonnull %i.ja) #7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i236
  store ptr %i.eu, ptr %i.iv, align 8
  br i1 %.not15.i238, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull %i.ja) #7
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %bb.as, %bb.ar, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i234, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i239, %bb.ao, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %.loopexit381
  %.not.i242 = icmp eq ptr %.sroa.6.0404, null
  br i1 %.not.i242, label %.loopexit386, label %bb.ac

.lr.ph393:                                        ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit, %.lr.ph393
  %.0193392 = phi i32 [ %i.jc, %.lr.ph393 ], [ 0, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit ] ; 2 uses
  %i.jb = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %i.bk, i32 noundef %.0193392) #7
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.jb) #7
  %i.jc = add nuw nsw i32 %.0193392, 1            ; 2 uses
  %i.jd = icmp samesign ult i32 %i.jc, %.sroa.speculated
  br i1 %i.jd, label %.lr.ph393, label %.loopexit386, !llvm.loop !13

.loopexit386:                                     ; preds = %.lr.ph393, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, %._crit_edge410, %._crit_edge397, %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit, %_ZNK2v88internal8compiler4Node7InputAtEi.exit219
  %.sroa.0360.0 = load ptr, ptr %.sroa.0360.0415, align 8 ; 2 uses
  %.not369 = icmp eq ptr %.sroa.0360.0, null
  br i1 %.not369, label %.preheader379, label %bb.h

bb.at:                                            ; preds = %.preheader379, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit269
  %indvars.iv457 = phi i64 [ 1, %.preheader379 ], [ %indvars.iv.next458, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit269 ] ; 14 uses
  %i.je = load i32, ptr %i.a, align 4             ; 2 uses
  %i.jf = and i32 %i.je, 251658240
  %.not.i244 = icmp eq i32 %i.jf, 251658240
  br i1 %.not.i244, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jg = lshr i32 %i.je, 24
  %i.jh = and i32 %i.jg, 15
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit245

bb.av:                                            ; preds = %bb.at
  %i.ji = load ptr, ptr %i.ba, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i32, ptr %i.jj, align 8
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit245

_ZNK2v88internal8compiler4Node10InputCountEv.exit245: ; preds = %bb.au, %bb.av
  %i.jl = phi i32 [ %i.jh, %bb.au ], [ %i.jk, %bb.av ]
  %i.jm = sext i32 %i.jl to i64
  %i.jn = icmp slt i64 %indvars.iv457, %i.jm
  br i1 %i.jn, label %bb.aw, label %.lr.ph423

bb.aw:                                            ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit245
  %i.jo = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %0, i32 noundef %i.bb) #7 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = and i32 %i.jq, 251658240
  %.not.i.i246 = icmp eq i32 %i.jr, 251658240
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = add i64 %i.js, 32
  %i.ju = inttoptr i64 %i.jt to ptr               ; 2 uses
  br i1 %.not.i.i246, label %bb.ax, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit248

bb.ax:                                            ; preds = %bb.aw
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = add i64 %i.jw, 16
  %i.jy = inttoptr i64 %i.jx to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit248

_ZNK2v88internal8compiler4Node7InputAtEi.exit248: ; preds = %bb.aw, %bb.ax
  %.sink.i.i247 = phi ptr [ %i.jy, %bb.ax ], [ %i.ju, %bb.aw ]
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i247, i64 %indvars.iv457
  %i.ka = load ptr, ptr %i.jz, align 8            ; 5 uses
  br i1 %.not201418, label %._crit_edge421, label %.lr.ph420

.lr.ph420:                                        ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit248
  %i.kb = xor i64 %indvars.iv457, -1
  br label %bb.bf

._crit_edge421:                                   ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit281, %_ZNK2v88internal8compiler4Node7InputAtEi.exit248
  %i.kc = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %0, i32 noundef 0) #7 ; 3 uses
  %i.kd = load i32, ptr %i.a, align 4
  %i.ke = and i32 %i.kd, 251658240
  %.not.i.i249 = icmp eq i32 %i.ke, 251658240
  br i1 %.not.i.i249, label %bb.ay, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit251

bb.ay:                                            ; preds = %._crit_edge421
  %i.kf = load ptr, ptr %i.ba, align 8
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = add i64 %i.kg, 16
  %i.ki = inttoptr i64 %i.kh to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit251

_ZNK2v88internal8compiler4Node7InputAtEi.exit251: ; preds = %._crit_edge421, %bb.ay
  %.sink.i.i250 = phi ptr [ %i.ki, %bb.ay ], [ %i.ba, %._crit_edge421 ]
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i250, i64 %indvars.iv457
  %i.kk = load ptr, ptr %i.kj, align 8            ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = and i32 %i.km, 251658240
  %.not.i.i252 = icmp eq i32 %i.kn, 251658240
  %i.ko = ptrtoint ptr %i.kc to i64
  %i.kp = add i64 %i.ko, 32
  %i.kq = inttoptr i64 %i.kp to ptr               ; 2 uses
  br i1 %.not.i.i252, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i258, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i253

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i258: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit251
  %i.kr = load ptr, ptr %i.kq, align 8            ; 2 uses
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = add i64 %i.ks, 16
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv457 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8            ; 2 uses
  %.not.i259 = icmp eq ptr %i.kw, %i.kk
  br i1 %.not.i259, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit260, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i255

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i253: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit251
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv457 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8            ; 2 uses
  %.not18.i254 = icmp eq ptr %i.ky, %i.kk
  br i1 %.not18.i254, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit260, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i255

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i255: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i253, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i258
  %i.kz = phi ptr [ %i.kx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i253 ], [ %i.kv, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i258 ]
  %i.la = phi ptr [ %i.ky, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i253 ], [ %i.kw, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i258 ] ; 2 uses
  %i.lb = phi ptr [ %i.kc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i253 ], [ %i.kr, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i258 ]
  %i.lc = xor i64 %indvars.iv457, -1
  %i.ld = getelementptr inbounds [24 x i8], ptr %i.lb, i64 %i.lc ; 2 uses
  %.not14.i256 = icmp eq ptr %i.la, null
  br i1 %.not14.i256, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i255
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.la, ptr noundef nonnull %i.ld) #7
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i255
  store ptr %i.kk, ptr %i.kz, align 8
  %.not15.i257 = icmp eq ptr %i.kk, null
  br i1 %.not15.i257, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit260, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.kk, ptr noundef nonnull %i.ld) #7
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit260

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit260: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i258, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i253, %bb.ba, %bb.bb
  %i.le = load i32, ptr %i.a, align 4
  %i.lf = and i32 %i.le, 251658240
  %.not.i.i261 = icmp eq i32 %i.lf, 251658240
  br i1 %.not.i.i261, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i267, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i262

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i267: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit260
  %i.lg = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = add i64 %i.lh, 16
  %i.lj = inttoptr i64 %i.li to ptr
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv457 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8            ; 2 uses
  %.not.i268 = icmp eq ptr %i.ll, %i.ka
  br i1 %.not.i268, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit269, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i264

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i262: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit260
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv457 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8            ; 2 uses
  %.not18.i263 = icmp eq ptr %i.ln, %i.ka
  br i1 %.not18.i263, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit269, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i264

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i264: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i262, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i267
  %i.lo = phi ptr [ %i.lm, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i262 ], [ %i.lk, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i267 ]
  %i.lp = phi ptr [ %i.ln, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i262 ], [ %i.ll, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i267 ] ; 2 uses
  %i.lq = phi ptr [ %0, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i262 ], [ %i.lg, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i267 ]
  %i.lr = xor i64 %indvars.iv457, -1
  %i.ls = getelementptr inbounds [24 x i8], ptr %i.lq, i64 %i.lr ; 2 uses
  %.not14.i265 = icmp eq ptr %i.lp, null
  br i1 %.not14.i265, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i264
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.lp, ptr noundef nonnull %i.ls) #7
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i264
  store ptr %i.ka, ptr %i.lo, align 8
  %.not15.i266 = icmp eq ptr %i.ka, null
  br i1 %.not15.i266, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit269, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ka, ptr noundef nonnull %i.ls) #7
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit269

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit269: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i267, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i262, %bb.bd, %bb.be
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1
  br label %bb.at, !llvm.loop !14

bb.bf:                                            ; preds = %.lr.ph420, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit281
  %.0190419 = phi i32 [ %i.bb, %.lr.ph420 ], [ %i.lu, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit281 ] ; 2 uses
  %i.lt = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %0, i32 noundef %.0190419) #7 ; 3 uses
  %i.lu = add i32 %.0190419, -1                   ; 3 uses
  %i.lv = call noundef ptr @_ZN2v88internal8compiler10NodeCopier3mapEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %0, i32 noundef %i.lu) #7 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 20
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = and i32 %i.lx, 251658240
  %.not.i.i270 = icmp eq i32 %i.ly, 251658240
  %i.lz = ptrtoint ptr %i.lv to i64
  %i.ma = add i64 %i.lz, 32
  %i.mb = inttoptr i64 %i.ma to ptr               ; 2 uses
  br i1 %.not.i.i270, label %bb.bg, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit272

bb.bg:                                            ; preds = %bb.bf
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = add i64 %i.md, 16
  %i.mf = inttoptr i64 %i.me to ptr
end_hunk_0
