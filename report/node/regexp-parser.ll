inline.NumInlined: 2666
inline.NumDeleted: 831
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  %i.ug = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24
  %i.uh = load i64, ptr %i.ug, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16 ; 3 uses
  %i.uj = load i64, ptr %i.ui, align 8            ; 2 uses
  %i.uk = sub i64 %i.uh, %i.uj
  %i.ul = icmp ugt i64 %i.uf, %i.uk
  br i1 %i.ul, label %bb.fe, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i, !prof !7

bb.fe:                                            ; preds = %bb.fd
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val12.i, i64 noundef %i.uf) #19
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ui, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i: ; preds = %bb.fe, %bb.fd
  %i.um = phi i64 [ %.pre.i.i.i.i.i.i, %bb.fe ], [ %i.uj, %bb.fd ] ; 2 uses
  %i.un = inttoptr i64 %i.um to ptr               ; 5 uses
  %i.uo = add i64 %i.um, %i.uf
  store i64 %i.uo, ptr %i.ui, align 8
  %i.up = load i32, ptr %i.sq, align 4            ; 3 uses
  %i.uq = icmp sgt i32 %i.up, 0
  br i1 %i.uq, label %bb.ff, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.ff:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i
  %i.ur = load ptr, ptr %i.sk, align 8            ; 3 uses
  switch i32 %i.up, label %bb.fi [
    i32 2, label %bb.fh
    i32 1, label %bb.fg
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.us = load i64, ptr %i.ur, align 1
  store i64 %i.us, ptr %i.un, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.un, ptr noundef nonnull align 1 dereferenceable(16) %i.ur, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.fi:                                            ; preds = %bb.ff
  %i.ut = zext nneg i32 %i.up to i64
  %i.uu = shl nuw nsw i64 %i.ut, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.un, ptr align 1 %i.ur, i64 %i.uu, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i: ; preds = %bb.fi, %bb.fh, %bb.fg, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i
  store ptr %i.un, ptr %i.sk, align 8
  store i32 %i.uc, ptr %i.sr, align 8
  %i.uv = load i32, ptr %i.sq, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit: ; preds = %bb.fa, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i
  %.sink12.i = phi i32 [ %i.uv, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.tx, %bb.fa ] ; 2 uses
  %.sink8.i = phi ptr [ %i.un, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.ua, %bb.fa ]
  %i.uw = add nsw i32 %.sink12.i, 1
  store i32 %i.uw, ptr %i.sq, align 4
  %i.ux = sext i32 %.sink12.i to i64
  %i.uy = getelementptr inbounds [8 x i8], ptr %.sink8.i, i64 %i.ux
  store ptr %i.tu, ptr %i.uy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  %.val17.i90 = load i8, ptr %i.sl, align 4, !range !5, !noundef !6
  %i.uz = trunc nuw i8 %.val17.i90 to i1
  br i1 %i.uz, label %bb.eo, label %.critedge.i, !llvm.loop !54

.critedge.i:                                      ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit, %bb.en
  %i.va = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.vb = trunc nuw i8 %i.va to i1
  br i1 %i.vb, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit142, label %bb.fj

bb.fj:                                            ; preds = %.critedge.i
  store i8 1, ptr %i.qs, align 1
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.vc, align 8
  %.val2.i123 = load i32, ptr %i.cj, align 4      ; 2 uses
  %.val3.i124 = load i32, ptr %i.af, align 8
  %.not.i.i125 = icmp eq i32 %.val2.i123, 2097152
  %i.vd = icmp ult i32 %.val2.i123, 65536
  %i.ve = or i1 %.not.i.i125, %i.vd
  %.neg2.i.i126 = select i1 %i.ve, i32 -1, i32 -2
  %i.vf = add i32 %.neg2.i.i126, %.val3.i124
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.vf, ptr %i.vg, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i127 = load i32, ptr %i.ae, align 8
  store i32 %.val.i127, ptr %i.af, align 8
  store i8 0, ptr %i.sl, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit142

bb.fk:                                            ; preds = %bb.eo
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !53
  %.val11.i = load ptr, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #19
  store i32 2, ptr %i.v, align 4
  %i.vh = call noundef ptr @_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbRKbRPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val11.i, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit142

.critedge9.i:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit142

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit142: ; preds = %bb.fj, %.critedge.i, %bb.eq, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit147.thread, %.critedge9.i, %bb.fk
  %.2.i = phi ptr [ null, %bb.eq ], [ null, %.critedge9.i ], [ %i.vh, %bb.fk ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit147.thread ], [ null, %.critedge.i ], [ null, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE21ParseClassSubtractionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE21ParseClassSubtractionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit: ; preds = %bb.em, %bb.el, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit142
  %.3.i = phi ptr [ %.2.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit142 ], [ null, %bb.el ], [ null, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.kt

bb.fl:                                            ; preds = %bb.dz
  %.val.i94 = load i32, ptr %i.ae, align 8
  %.val1.i95 = load i32, ptr %i.af, align 8       ; 2 uses
  %i.vi = icmp slt i32 %.val1.i95, %.val.i94
  br i1 %i.vi, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit98, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit98: ; preds = %bb.fl
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.val2.i97 = load ptr, ptr %i.vj, align 8
  %i.vk = sext i32 %.val1.i95 to i64
  %i.vl = getelementptr inbounds i8, ptr %.val2.i97, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1
  %i.vn = icmp eq i8 %i.vm, 38
  br i1 %i.vn, label %bb.fm, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread

bb.fm:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit98
  %i.vo = icmp eq ptr %i.qr, null
  %.pre = load i32, ptr %i.ab, align 4            ; 2 uses
  br i1 %i.vo, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  %i.vp = icmp eq i32 %.pre, 0
  br i1 %i.vp, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.vq = load ptr, ptr %i.aa, align 8
  %i.vr = load i32, ptr %i.ad, align 4
  %.sroa.2.0.insert.ext.i99 = zext i32 %i.vr to i64
  %.sroa.0.0.insert.insert.i100 = mul nuw i64 %.sroa.2.0.insert.ext.i99, 4294967297
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.vq, i64 %.sroa.0.0.insert.insert.i100)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.val25 = load ptr, ptr %i.ck, align 8
  %i.vs = call noundef ptr @_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val25, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fm
  %.120 = phi ptr [ %i.vs, %bb.fp ], [ %i.qr, %bb.fm ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.vt = zext i1 %i.ci to i8
  store i8 %i.vt, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  switch i32 %.pre, label %bb.fv [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216
    i32 3, label %bb.fr
    i32 1, label %bb.fr
    i32 2, label %bb.ft
  ]

bb.fr:                                            ; preds = %bb.fq, %bb.fq
  %i.vu = load ptr, ptr %.120, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 152
  %i.vw = load ptr, ptr %i.vv, align 8
  %i.vx = call noundef ptr %i.vw(ptr noundef nonnull align 8 dereferenceable(8) %.120) #19, !inline_history !55
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.vz = load ptr, ptr %i.vy, align 8            ; 2 uses
  %.not.i.i215 = icmp eq ptr %i.vz, null
  br i1 %.not.i.i215, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 48
  %i.wb = load i64, ptr %i.wa, align 8
  %i.wc = icmp ne i64 %i.wb, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216

bb.ft:                                            ; preds = %bb.fq
  %i.wd = load ptr, ptr %.120, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 144
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = call noundef zeroext i1 %i.wf(ptr noundef nonnull align 8 dereferenceable(8) %.120) #19, !inline_history !55
  br i1 %i.wg, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.wh = load ptr, ptr %.120, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 168
  %i.wj = load ptr, ptr %i.wi, align 8
  %i.wk = call noundef ptr %i.wj(ptr noundef nonnull align 8 dereferenceable(8) %.120) #19, !inline_history !55
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 13
  %i.wm = load i8, ptr %i.wl, align 1, !range !5, !noundef !6
  %i.wn = trunc nuw i8 %i.wm to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216

bb.fv:                                            ; preds = %bb.fq
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216: ; preds = %bb.fq, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu
  %.0.i214 = phi i1 [ %i.wn, %bb.fu ], [ false, %bb.ft ], [ false, %bb.fq ], [ false, %bb.fq ], [ false, %bb.fr ], [ %i.wc, %bb.fs ] ; 2 uses
  %i.wo = zext i1 %.0.i214 to i8
  store i8 %i.wo, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  %.val16.i101 = load ptr, ptr %i.ck, align 8     ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.val16.i101, i64 24 ; 2 uses
  %i.wq = load i64, ptr %i.wp, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %.val16.i101, i64 16 ; 6 uses
  %i.ws = load i64, ptr %i.wr, align 8            ; 2 uses
  %i.wt = sub i64 %i.wq, %i.ws
  %i.wu = icmp ult i64 %i.wt, 16
  br i1 %i.wu, label %bb.fw, label %bb.fx, !prof !7

bb.fw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val16.i101, i64 noundef 16) #19
  %.pre.i.i213 = load i64, ptr %i.wr, align 8
  br label %bb.fx

bb.fx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216, %bb.fw
  %i.wv = phi i64 [ %.pre.i.i213, %bb.fw ], [ %i.ws, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit216 ] ; 2 uses
  %i.ww = inttoptr i64 %i.wv to ptr               ; 10 uses
  %i.wx = add i64 %i.wv, 16
  store i64 %i.wx, ptr %i.wr, align 8
  store ptr null, ptr %i.ww, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 8 ; 5 uses
  store i32 2, ptr %i.wy, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ww, i64 12 ; 9 uses
  store i32 0, ptr %i.wz, align 4
  %i.xa = load i64, ptr %i.wp, align 8
  %i.xb = load i64, ptr %i.wr, align 8            ; 2 uses
  %i.xc = sub i64 %i.xa, %i.xb
  %i.xd = icmp ult i64 %i.xc, 16
  br i1 %i.xd, label %bb.fy, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit, !prof !7

bb.fy:                                            ; preds = %bb.fx
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val16.i101, i64 noundef 16) #19
  %.pre.i.i.i.i212 = load i64, ptr %i.wr, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit: ; preds = %bb.fx, %bb.fy
  %i.xe = phi i64 [ %.pre.i.i.i.i212, %bb.fy ], [ %i.xb, %bb.fx ] ; 2 uses
  %i.xf = inttoptr i64 %i.xe to ptr               ; 2 uses
  %i.xg = add i64 %i.xe, 16
  store i64 %i.xg, ptr %i.wr, align 8
  store ptr %i.xf, ptr %i.ww, align 8
  store ptr %i.ww, ptr %i.l, align 8
  %.val14.i103 = load ptr, ptr %i.ck, align 8     ; 3 uses
  %i.xh = load i32, ptr %i.wz, align 4            ; 2 uses
  %i.xi = load i32, ptr %i.wy, align 8            ; 3 uses
  %i.xj = icmp slt i32 %i.xh, %i.xi
  br i1 %i.xj, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit210, label %bb.fz

bb.fz:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit
  %i.xk = shl nsw i32 %i.xi, 1
  %i.xl = or disjoint i32 %i.xk, 1                ; 2 uses
  %i.xm = icmp sgt i32 %i.xi, -1
  br i1 %i.xm, label %bb.gb, label %bb.ga, !prof !11

bb.ga:                                            ; preds = %bb.fz
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.xn = zext nneg i32 %i.xl to i64
  %i.xo = shl nuw nsw i64 %i.xn, 3                ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.val14.i103, i64 24
  %i.xq = load i64, ptr %i.xp, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %.val14.i103, i64 16 ; 3 uses
  %i.xs = load i64, ptr %i.xr, align 8            ; 2 uses
  %i.xt = sub i64 %i.xq, %i.xs
  %i.xu = icmp ugt i64 %i.xo, %i.xt
  br i1 %i.xu, label %bb.gc, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i204, !prof !7

bb.gc:                                            ; preds = %bb.gb
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val14.i103, i64 noundef %i.xo) #19
  %.pre.i.i.i.i.i.i209 = load i64, ptr %i.xr, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i204

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i204: ; preds = %bb.gc, %bb.gb
  %i.xv = phi i64 [ %.pre.i.i.i.i.i.i209, %bb.gc ], [ %i.xs, %bb.gb ] ; 2 uses
  %i.xw = inttoptr i64 %i.xv to ptr               ; 5 uses
  %i.xx = add i64 %i.xv, %i.xo
  store i64 %i.xx, ptr %i.xr, align 8
  %i.xy = load i32, ptr %i.wz, align 4            ; 3 uses
  %i.xz = icmp sgt i32 %i.xy, 0
  br i1 %i.xz, label %bb.gd, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i205

bb.gd:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i204
  %i.ya = load ptr, ptr %i.ww, align 8            ; 3 uses
  switch i32 %i.xy, label %bb.gg [
    i32 2, label %bb.gf
    i32 1, label %bb.ge
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.yb = load i64, ptr %i.ya, align 1
  store i64 %i.yb, ptr %i.xw, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i205

bb.gf:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.xw, ptr noundef nonnull align 1 dereferenceable(16) %i.ya, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i205

bb.gg:                                            ; preds = %bb.gd
  %i.yc = zext nneg i32 %i.xy to i64
  %i.yd = shl nuw nsw i64 %i.yc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xw, ptr align 1 %i.ya, i64 %i.yd, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i205

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i205: ; preds = %bb.gg, %bb.gf, %bb.ge, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i204
  store ptr %i.xw, ptr %i.ww, align 8
  store i32 %i.xl, ptr %i.wy, align 8
  %i.ye = load i32, ptr %i.wz, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit210

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit210: ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i205
  %.sink12.i206 = phi i32 [ %i.ye, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i205 ], [ %i.xh, %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit ] ; 2 uses
  %.sink8.i207 = phi ptr [ %i.xw, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i205 ], [ %i.xf, %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit ]
  %i.yf = add nsw i32 %.sink12.i206, 1
  store i32 %i.yf, ptr %i.wz, align 4
  %i.yg = sext i32 %.sink12.i206 to i64
  %i.yh = getelementptr inbounds [8 x i8], ptr %.sink8.i207, i64 %i.yg
  store ptr %.120, ptr %i.yh, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 7 uses
  %.val18.i104395 = load i8, ptr %i.yi, align 4, !range !5, !noundef !6
  %i.yj = trunc nuw i8 %.val18.i104395 to i1
  br i1 %i.yj, label %.lr.ph, label %.critedge.i105

.lr.ph:                                           ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit210
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  br label %bb.gh

bb.gh:                                            ; preds = %.lr.ph, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174
  %1 = phi i1 [ %.0.i214, %.lr.ph ], [ %i.aar, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174 ] ; 2 uses
  %.val11.i110 = load i32, ptr %i.cj, align 4     ; 3 uses
  switch i32 %.val11.i110, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread [
    i32 93, label %bb.hk
    i32 38, label %bb.gi
  ]

bb.gi:                                            ; preds = %bb.gh
  %.val.i199 = load i32, ptr %i.ae, align 8       ; 3 uses
  %.val1.i200 = load i32, ptr %i.af, align 8      ; 3 uses
  %i.yn = icmp slt i32 %.val1.i200, %.val.i199
  br i1 %i.yn, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203: ; preds = %bb.gi
  %.val2.i202 = load ptr, ptr %i.vj, align 8
  %i.yo = sext i32 %.val1.i200 to i64
  %i.yp = getelementptr inbounds i8, ptr %.val2.i202, i64 %i.yo
  %i.yq = load i8, ptr %i.yp, align 1
  %.not7.i114 = icmp eq i8 %i.yq, 38
  br i1 %.not7.i114, label %bb.gk, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread: ; preds = %bb.gh, %bb.gi, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203
  %i.yr = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.ys = trunc nuw i8 %i.yr to i1
  br i1 %i.ys, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.gj

bb.gj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread
  store i8 1, ptr %i.qs, align 1
  store i32 30, ptr %i.yl, align 8
  %.val3.i194 = load i32, ptr %i.af, align 8
  %.not.i.i195 = icmp eq i32 %.val11.i110, 2097152
  %i.yt = icmp ult i32 %.val11.i110, 65536
  %i.yu = or i1 %.not.i.i195, %i.yt
  %.neg2.i.i196 = select i1 %i.yu, i32 -1, i32 -2
  %i.yv = add i32 %.val3.i194, %.neg2.i.i196
  store i32 %i.yv, ptr %i.ym, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i197 = load i32, ptr %i.ae, align 8
  store i32 %.val.i197, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.gk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203
  %i.yw = add nsw i32 %.val1.i200, 1              ; 2 uses
  store i32 %i.yw, ptr %i.af, align 8
  %i.yx = icmp slt i32 %i.yw, %.val.i199
  br i1 %i.yx, label %bb.gl, label %bb.gr

bb.gl:                                            ; preds = %bb.gk
  %i.yy = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.yz = load i64, ptr %i.yk, align 8
  %i.za = icmp ult i64 %i.yy, %i.yz
  br i1 %i.za, label %bb.gm, label %bb.gq

bb.gm:                                            ; preds = %bb.gl
  %i.zb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !5, !noundef !6
  %i.zc = trunc nuw i8 %i.zb to i1
  br i1 %i.zc, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.zd = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.ze = trunc nuw i8 %i.zd to i1
  br i1 %i.ze, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192thread-pre-split, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  store i8 1, ptr %i.qs, align 1
  store i32 1, ptr %i.yl, align 8
  %.val2.i.i.i187 = load i32, ptr %i.cj, align 4  ; 2 uses
  %.val3.i.i.i188 = load i32, ptr %i.af, align 8
  %.not.i.i.i.i189 = icmp eq i32 %.val2.i.i.i187, 2097152
  %i.zf = icmp ult i32 %.val2.i.i.i187, 65536
  %i.zg = or i1 %.not.i.i.i.i189, %i.zf
  %.neg2.i.i.i.i190 = select i1 %i.zg, i32 -1, i32 -2
  %i.zh = add i32 %.neg2.i.i.i.i190, %.val3.i.i.i188
  store i32 %i.zh, ptr %i.ym, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i.i.i191 = load i32, ptr %i.ae, align 8
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread.sink.split

bb.gq:                                            ; preds = %bb.gl
  %i.zi = load i32, ptr %i.af, align 8            ; 2 uses
  %.val.i3.i.i186 = load ptr, ptr %i.vj, align 8
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds i8, ptr %.val.i3.i.i186, i64 %i.zj
  %i.zl = load i8, ptr %i.zk, align 1
  %i.zm = add nsw i32 %i.zi, 1
  store i32 %i.zm, ptr %i.af, align 8
  %i.zn = zext i8 %i.zl to i32                    ; 2 uses
  store i32 %i.zn, ptr %i.cj, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192

bb.gr:                                            ; preds = %bb.gk
  store i32 2097152, ptr %i.cj, align 4
  %i.zo = add nsw i32 %.val.i199, 1
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread.sink.split

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192thread-pre-split: ; preds = %bb.go
  %.val.i115.pr = load i32, ptr %i.cj, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192thread-pre-split, %bb.gq
  %.val.i115 = phi i32 [ %.val.i115.pr, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192thread-pre-split ], [ %i.zn, %bb.gq ]
  %i.zp = icmp eq i32 %.val.i115, 38
  br i1 %i.zp, label %bb.gs, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread

bb.gs:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192
  %i.zq = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.zr = trunc nuw i8 %i.zq to i1
  br i1 %i.zr, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store i8 1, ptr %i.qs, align 1
  store i32 31, ptr %i.yl, align 8
  %.val3.i179 = load i32, ptr %i.af, align 8
  %i.zs = add i32 %.val3.i179, -1
  store i32 %i.zs, ptr %i.ym, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i182 = load i32, ptr %i.ae, align 8
  store i32 %.val.i182, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread.sink.split: ; preds = %bb.gp, %bb.gr
  %.sink = phi i32 [ %i.zo, %bb.gr ], [ %.val.i.i.i191, %bb.gp ]
  store i32 %.sink, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread.sink.split, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.zt = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.m) ; 7 uses
  %i.zu = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.zv = trunc nuw i8 %i.zu to i1
  br i1 %i.zv, label %.critedge9.i117, label %bb.gu

bb.gu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread
  %i.zw = load i32, ptr %i.m, align 4
  switch i32 %i.zw, label %bb.gz [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177
    i32 3, label %bb.gv
    i32 1, label %bb.gv
    i32 2, label %bb.gx
  ]

bb.gv:                                            ; preds = %bb.gu, %bb.gu
  %i.zx = load ptr, ptr %i.zt, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 152
  %i.zz = load ptr, ptr %i.zy, align 8
  %i.aaa = call noundef ptr %i.zz(ptr noundef nonnull align 8 dereferenceable(8) %i.zt) #19, !inline_history !55
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aac = load ptr, ptr %i.aab, align 8          ; 2 uses
  %.not.i.i176 = icmp eq ptr %i.aac, null
  br i1 %.not.i.i176, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 48
  %i.aae = load i64, ptr %i.aad, align 8
  %i.aaf = icmp ne i64 %i.aae, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177

bb.gx:                                            ; preds = %bb.gu
  %i.aag = load ptr, ptr %i.zt, align 8
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 144
  %i.aai = load ptr, ptr %i.aah, align 8
  %i.aaj = call noundef zeroext i1 %i.aai(ptr noundef nonnull align 8 dereferenceable(8) %i.zt) #19, !inline_history !55
  br i1 %i.aaj, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aak = load ptr, ptr %i.zt, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 168
  %i.aam = load ptr, ptr %i.aal, align 8
  %i.aan = call noundef ptr %i.aam(ptr noundef nonnull align 8 dereferenceable(8) %i.zt) #19, !inline_history !55
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 13
  %i.aap = load i8, ptr %i.aao, align 1, !range !5, !noundef !6
  %i.aaq = trunc nuw i8 %i.aap to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177

bb.gz:                                            ; preds = %bb.gu
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177: ; preds = %bb.gu, %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy
  %.0.i175 = phi i1 [ %i.aaq, %bb.gy ], [ false, %bb.gx ], [ false, %bb.gu ], [ false, %bb.gu ], [ false, %bb.gv ], [ %i.aaf, %bb.gw ]
  %i.aar = and i1 %1, %.0.i175                    ; 2 uses
  %i.aas = zext i1 %i.aar to i8
  store i8 %i.aas, ptr %i.k, align 1
  %.val13.i116 = load ptr, ptr %i.ck, align 8     ; 3 uses
  %i.aat = load i32, ptr %i.wz, align 4           ; 2 uses
  %i.aau = load i32, ptr %i.wy, align 8           ; 3 uses
  %i.aav = icmp slt i32 %i.aat, %i.aau
  br i1 %i.aav, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177
  %i.aaw = load ptr, ptr %i.ww, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174

bb.hb:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177
  %i.aax = shl nsw i32 %i.aau, 1
  %i.aay = or disjoint i32 %i.aax, 1              ; 2 uses
  %i.aaz = icmp sgt i32 %i.aau, -1
  br i1 %i.aaz, label %bb.hd, label %bb.hc, !prof !11

bb.hc:                                            ; preds = %bb.hb
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.hd:                                            ; preds = %bb.hb
  %i.aba = zext nneg i32 %i.aay to i64
  %i.abb = shl nuw nsw i64 %i.aba, 3              ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.val13.i116, i64 24
  %i.abd = load i64, ptr %i.abc, align 8
  %i.abe = getelementptr inbounds nuw i8, ptr %.val13.i116, i64 16 ; 3 uses
  %i.abf = load i64, ptr %i.abe, align 8          ; 2 uses
  %i.abg = sub i64 %i.abd, %i.abf
  %i.abh = icmp ugt i64 %i.abb, %i.abg
  br i1 %i.abh, label %bb.he, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168, !prof !7

bb.he:                                            ; preds = %bb.hd
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val13.i116, i64 noundef %i.abb) #19
  %.pre.i.i.i.i.i.i173 = load i64, ptr %i.abe, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168: ; preds = %bb.he, %bb.hd
  %i.abi = phi i64 [ %.pre.i.i.i.i.i.i173, %bb.he ], [ %i.abf, %bb.hd ] ; 2 uses
  %i.abj = inttoptr i64 %i.abi to ptr             ; 5 uses
  %i.abk = add i64 %i.abi, %i.abb
  store i64 %i.abk, ptr %i.abe, align 8
  %i.abl = load i32, ptr %i.wz, align 4           ; 3 uses
  %i.abm = icmp sgt i32 %i.abl, 0
  br i1 %i.abm, label %bb.hf, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169

bb.hf:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168
  %i.abn = load ptr, ptr %i.ww, align 8           ; 3 uses
  switch i32 %i.abl, label %bb.hi [
    i32 2, label %bb.hh
    i32 1, label %bb.hg
  ]

bb.hg:                                            ; preds = %bb.hf
  %i.abo = load i64, ptr %i.abn, align 1
  store i64 %i.abo, ptr %i.abj, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169

bb.hh:                                            ; preds = %bb.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.abj, ptr noundef nonnull align 1 dereferenceable(16) %i.abn, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169

bb.hi:                                            ; preds = %bb.hf
  %i.abp = zext nneg i32 %i.abl to i64
  %i.abq = shl nuw nsw i64 %i.abp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abj, ptr align 1 %i.abn, i64 %i.abq, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169: ; preds = %bb.hi, %bb.hh, %bb.hg, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168
  store ptr %i.abj, ptr %i.ww, align 8
  store i32 %i.aay, ptr %i.wy, align 8
  %i.abr = load i32, ptr %i.wz, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174: ; preds = %bb.ha, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169
  %.sink12.i170 = phi i32 [ %i.abr, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169 ], [ %i.aat, %bb.ha ] ; 2 uses
  %.sink8.i171 = phi ptr [ %i.abj, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169 ], [ %i.aaw, %bb.ha ]
  %i.abs = add nsw i32 %.sink12.i170, 1
  store i32 %i.abs, ptr %i.wz, align 4
  %i.abt = sext i32 %.sink12.i170 to i64
  %i.abu = getelementptr inbounds [8 x i8], ptr %.sink8.i171, i64 %i.abt
  store ptr %i.zt, ptr %i.abu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  %.val18.i104 = load i8, ptr %i.yi, align 4, !range !5, !noundef !6
  %i.abv = trunc nuw i8 %.val18.i104 to i1
  br i1 %i.abv, label %bb.gh, label %.critedge.i105, !llvm.loop !56

.critedge.i105:                                   ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit210
  %i.abw = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.abx = trunc nuw i8 %i.abw to i1
  br i1 %i.abx, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.hj

bb.hj:                                            ; preds = %.critedge.i105
  store i8 1, ptr %i.qs, align 1
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.aby, align 8
  %.val2.i162 = load i32, ptr %i.cj, align 4      ; 2 uses
  %.val3.i163 = load i32, ptr %i.af, align 8
  %.not.i.i164 = icmp eq i32 %.val2.i162, 2097152
  %i.abz = icmp ult i32 %.val2.i162, 65536
  %i.aca = or i1 %.not.i.i164, %i.abz
  %.neg2.i.i165 = select i1 %i.aca, i32 -1, i32 -2
  %i.acb = add i32 %.neg2.i.i165, %.val3.i163
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.acb, ptr %i.acc, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i166 = load i32, ptr %i.ae, align 8
  store i32 %.val.i166, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.hk:                                            ; preds = %bb.gh
  %or.cond.i108 = select i1 %i.ci, i1 %1, i1 false
  br i1 %or.cond.i108, label %bb.hl, label %bb.hn

bb.hl:                                            ; preds = %bb.hk
  %i.acd = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.ace = trunc nuw i8 %i.acd to i1
  br i1 %i.ace, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  store i8 1, ptr %i.qs, align 1
  store i32 32, ptr %i.yl, align 8
  %.val3.i157 = load i32, ptr %i.af, align 8
  %i.acf = add i32 %.val3.i157, -1
  store i32 %i.acf, ptr %i.ym, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i160 = load i32, ptr %i.ae, align 8
  store i32 %.val.i160, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.hn:                                            ; preds = %bb.hk
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !57
  %.val12.i109 = load ptr, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  store i32 1, ptr %i.n, align 4
  %i.acg = call noundef ptr @_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbS5_RPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val12.i109, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

.critedge9.i117:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit: ; preds = %bb.hm, %bb.hl, %bb.hj, %.critedge.i105, %bb.gt, %bb.gs, %bb.gj, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread, %bb.hn, %.critedge9.i117
  %.2.i107 = phi ptr [ null, %bb.gt ], [ null, %bb.gj ], [ null, %.critedge9.i117 ], [ null, %bb.hj ], [ %i.acg, %bb.hn ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread ], [ null, %bb.gs ], [ null, %.critedge.i105 ], [ null, %bb.hl ], [ null, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.kt

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread: ; preds = %bb.fl, %bb.ea, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit98, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit, %bb.dz
  %i.ach = load i32, ptr %i.ab, align 4           ; 2 uses
  %i.aci = load ptr, ptr %i.aa, align 8           ; 3 uses
  %i.acj = load ptr, ptr %i.ac, align 8
  %i.ack = load i32, ptr %i.ad, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.acl = zext i1 %i.ci to i8
  store i8 %i.acl, ptr %i.a, align 1
  store ptr %i.aci, ptr %i.b, align 8
  store ptr %i.acj, ptr %i.c, align 8
  store i32 %i.ack, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %.val41.i = load ptr, ptr %i.ck, align 8        ; 4 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.val41.i, i64 24 ; 2 uses
  %i.acn = load i64, ptr %i.acm, align 8
  %i.aco = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16 ; 6 uses
  %i.acp = load i64, ptr %i.aco, align 8          ; 2 uses
  %i.acq = sub i64 %i.acn, %i.acp
  %i.acr = icmp ult i64 %i.acq, 16
  br i1 %i.acr, label %bb.ho, label %bb.hp, !prof !7

bb.ho:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val41.i, i64 noundef 16) #19
  %.pre.i.i314 = load i64, ptr %i.aco, align 8
  br label %bb.hp

bb.hp:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread, %bb.ho
  %i.acs = phi i64 [ %.pre.i.i314, %bb.ho ], [ %i.acp, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread ] ; 2 uses
  %i.act = inttoptr i64 %i.acs to ptr             ; 8 uses
  %i.acu = add i64 %i.acs, 16
  store i64 %i.acu, ptr %i.aco, align 8
  store ptr null, ptr %i.act, align 8
  %i.acv = getelementptr inbounds nuw i8, ptr %i.act, i64 8 ; 3 uses
  store i32 2, ptr %i.acv, align 8
  %i.acw = getelementptr inbounds nuw i8, ptr %i.act, i64 12 ; 5 uses
  store i32 0, ptr %i.acw, align 4
  %i.acx = load i64, ptr %i.acm, align 8
  %i.acy = load i64, ptr %i.aco, align 8          ; 2 uses
  %i.acz = sub i64 %i.acx, %i.acy
  %i.ada = icmp ult i64 %i.acz, 16
  br i1 %i.ada, label %bb.hq, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit315, !prof !7

bb.hq:                                            ; preds = %bb.hp
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val41.i, i64 noundef 16) #19
  %.pre.i.i.i.i313 = load i64, ptr %i.aco, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit315

_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit315: ; preds = %bb.hp, %bb.hq
  %i.adb = phi i64 [ %.pre.i.i.i.i313, %bb.hq ], [ %i.acy, %bb.hp ] ; 2 uses
  %i.adc = inttoptr i64 %i.adb to ptr
  %i.add = add i64 %i.adb, 16
  store i64 %i.add, ptr %i.aco, align 8
  store ptr %i.adc, ptr %i.act, align 8
  store ptr %i.act, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i8 0, ptr %i.f, align 1
  %.not.i118 = icmp eq ptr %i.qr, null
  br i1 %.not.i118, label %bb.ig, label %bb.hr

bb.hr:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit315
  switch i32 %i.ach, label %bb.hw [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit309
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit309
    i32 3, label %bb.hs
    i32 1, label %bb.hs
    i32 2, label %bb.hu
  ]

bb.hs:                                            ; preds = %bb.hr, %bb.hr
  %i.ade = load ptr, ptr %i.qr, align 8
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 152
  %i.adg = load ptr, ptr %i.adf, align 8
  %i.adh = tail call noundef ptr %i.adg(ptr noundef nonnull align 8 dereferenceable(8) %i.qr) #19, !inline_history !58
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %i.adj = load ptr, ptr %i.adi, align 8          ; 2 uses
  %.not.i.i308 = icmp eq ptr %i.adj, null
  br i1 %.not.i.i308, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit309, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 48
  %i.adl = load i64, ptr %i.adk, align 8
  %i.adm = icmp ne i64 %i.adl, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit309

bb.hu:                                            ; preds = %bb.hr
  %i.adn = load ptr, ptr %i.qr, align 8
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 144
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = tail call noundef zeroext i1 %i.adp(ptr noundef nonnull align 8 dereferenceable(8) %i.qr) #19, !inline_history !58
  br i1 %i.adq, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit309, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.adr = load ptr, ptr %i.qr, align 8
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 168
  %i.adt = load ptr, ptr %i.ads, align 8
  %i.adu = tail call noundef ptr %i.adt(ptr noundef nonnull align 8 dereferenceable(8) %i.qr) #19, !inline_history !58
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 13
  %i.adw = load i8, ptr %i.adv, align 1, !range !5, !noundef !6
  %i.adx = trunc nuw i8 %i.adw to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit309

bb.hw:                                            ; preds = %bb.hr
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit309: ; preds = %bb.hr, %bb.hr, %bb.hs, %bb.ht, %bb.hu, %bb.hv
  %.0.i307 = phi i1 [ %i.adx, %bb.hv ], [ false, %bb.hu ], [ false, %bb.hr ], [ false, %bb.hr ], [ false, %bb.hs ], [ %i.adm, %bb.ht ]
  %i.ady = zext i1 %.0.i307 to i8
  store i8 %i.ady, ptr %i.f, align 1
  %.val39.i = load ptr, ptr %i.ck, align 8        ; 3 uses
  %i.adz = load i32, ptr %i.acw, align 4          ; 2 uses
  %i.aea = load i32, ptr %i.acv, align 8          ; 3 uses
  %i.aeb = icmp slt i32 %i.adz, %i.aea
  br i1 %i.aeb, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit309
  %i.aec = load ptr, ptr %i.act, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit306

bb.hy:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit309
  %i.aed = shl nsw i32 %i.aea, 1
  %i.aee = or disjoint i32 %i.aed, 1              ; 2 uses
  %i.aef = icmp sgt i32 %i.aea, -1
  br i1 %i.aef, label %bb.ia, label %bb.hz, !prof !11

bb.hz:                                            ; preds = %bb.hy
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.ia:                                            ; preds = %bb.hy
  %i.aeg = zext nneg i32 %i.aee to i64
  %i.aeh = shl nuw nsw i64 %i.aeg, 3              ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.val39.i, i64 24
  %i.aej = load i64, ptr %i.aei, align 8
  %i.aek = getelementptr inbounds nuw i8, ptr %.val39.i, i64 16 ; 3 uses
  %i.ael = load i64, ptr %i.aek, align 8          ; 2 uses
  %i.aem = sub i64 %i.aej, %i.ael
  %i.aen = icmp ugt i64 %i.aeh, %i.aem
  br i1 %i.aen, label %bb.ib, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i300, !prof !7

bb.ib:                                            ; preds = %bb.ia
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val39.i, i64 noundef %i.aeh) #19
  %.pre.i.i.i.i.i.i305 = load i64, ptr %i.aek, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i300

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i300: ; preds = %bb.ib, %bb.ia
  %i.aeo = phi i64 [ %.pre.i.i.i.i.i.i305, %bb.ib ], [ %i.ael, %bb.ia ] ; 2 uses
  %i.aep = inttoptr i64 %i.aeo to ptr             ; 5 uses
  %i.aeq = add i64 %i.aeo, %i.aeh
  store i64 %i.aeq, ptr %i.aek, align 8
  %i.aer = load i32, ptr %i.acw, align 4          ; 3 uses
  %i.aes = icmp sgt i32 %i.aer, 0
  br i1 %i.aes, label %bb.ic, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i301

bb.ic:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i300
  %i.aet = load ptr, ptr %i.act, align 8          ; 3 uses
  switch i32 %i.aer, label %bb.if [
    i32 2, label %bb.ie
    i32 1, label %bb.id
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  store i32 1, ptr %i.aff, align 8
  %.val2.i.i283 = load i32, ptr %i.cj, align 4    ; 2 uses
  %.val3.i.i284 = load i32, ptr %i.af, align 8
  %.not.i.i.i285 = icmp eq i32 %.val2.i.i283, 2097152
  %i.afy = icmp ult i32 %.val2.i.i283, 65536
  %i.afz = or i1 %.not.i.i.i285, %i.afy
  %.neg2.i.i.i286 = select i1 %i.afz, i32 -1, i32 -2
  %i.aga = add i32 %.neg2.i.i.i286, %.val3.i.i284
  store i32 %i.aga, ptr %i.afg, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i.i287 = load i32, ptr %i.ae, align 8
  store i32 %.val.i.i287, ptr %i.af, align 8
  store i8 0, ptr %i.afb, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit288

bb.iq:                                            ; preds = %bb.il
  %i.agb = load i32, ptr %i.af, align 8           ; 2 uses
  %.val.i3.i282 = load ptr, ptr %i.afd, align 8
  %i.agc = sext i32 %i.agb to i64
  %i.agd = getelementptr inbounds i8, ptr %.val.i3.i282, i64 %i.agc
  %i.age = load i8, ptr %i.agd, align 1
  %i.agf = add nsw i32 %i.agb, 1
  store i32 %i.agf, ptr %i.af, align 8
  %i.agg = zext i8 %i.age to i32
  store i32 %i.agg, ptr %i.cj, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit288

bb.ir:                                            ; preds = %bb.ii
  store i32 2097152, ptr %i.cj, align 4
  %i.agh = add nsw i32 %.val.i295, 1
  store i32 %i.agh, ptr %i.af, align 8
  store i8 0, ptr %i.afb, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit288

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit288: ; preds = %bb.io, %bb.ip, %bb.iq, %bb.ir
  %.val43.i = load i8, ptr %i.afb, align 4, !range !5, !noundef !6
  %i.agi = trunc nuw i8 %.val43.i to i1
  br i1 %i.agi, label %bb.is, label %.loopexit

bb.is:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit288
  %i.agj = load i32, ptr %i.g, align 4
  %.not21.i = icmp eq i32 %i.agj, 0
  br i1 %.not21.i, label %bb.iv, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.agk = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.agl = trunc nuw i8 %i.agk to i1
  br i1 %i.agl, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  store i8 1, ptr %i.qs, align 1
  store i32 27, ptr %i.aff, align 8
  %.val2.i273 = load i32, ptr %i.cj, align 4      ; 2 uses
  %.val3.i274 = load i32, ptr %i.af, align 8
  %.not.i.i275 = icmp eq i32 %.val2.i273, 2097152
  %i.agm = icmp ult i32 %.val2.i273, 65536
  %i.agn = or i1 %.not.i.i275, %i.agm
  %.neg2.i.i276 = select i1 %i.agn, i32 -1, i32 -2
  %i.ago = add i32 %.neg2.i.i276, %.val3.i274
  store i32 %i.ago, ptr %i.afg, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i277 = load i32, ptr %i.ae, align 8
  store i32 %.val.i277, ptr %i.af, align 8
  store i8 0, ptr %i.afb, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.iv:                                            ; preds = %bb.is
  %i.agp = load i32, ptr %i.d, align 4            ; 2 uses
  %i.agq = load ptr, ptr %i.c, align 8
  %i.agr = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEPj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.g, ptr noundef %i.afi, ptr noundef %i.agq, ptr noundef %i.d) ; 0 uses
  %i.ags = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.agt = trunc nuw i8 %i.ags to i1
  br i1 %i.agt, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.agu = load i32, ptr %i.g, align 4
  %.not22.i = icmp eq i32 %i.agu, 0
  br i1 %.not22.i, label %bb.ix, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit272

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit272: ; preds = %bb.iw
  store i8 1, ptr %i.qs, align 1
  store i32 27, ptr %i.aff, align 8
  %.val2.i267 = load i32, ptr %i.cj, align 4      ; 2 uses
  %.val3.i268 = load i32, ptr %i.af, align 8
  %.not.i.i269 = icmp eq i32 %.val2.i267, 2097152
  %i.agv = icmp ult i32 %.val2.i267, 65536
  %i.agw = or i1 %.not.i.i269, %i.agv
  %.neg2.i.i270 = select i1 %i.agw, i32 -1, i32 -2
  %i.agx = add i32 %.neg2.i.i270, %.val3.i268
  store i32 %i.agx, ptr %i.afg, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i271 = load i32, ptr %i.ae, align 8
  store i32 %.val.i271, ptr %i.af, align 8
  store i8 0, ptr %i.afb, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.ix:                                            ; preds = %bb.iw
  %i.agy = load i32, ptr %i.d, align 4            ; 2 uses
  %i.agz = icmp ugt i32 %i.agp, %i.agy
  br i1 %i.agz, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit266, label %.critedge24.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit266: ; preds = %bb.ix
  store i8 1, ptr %i.qs, align 1
  store i32 29, ptr %i.aff, align 8
  %.val2.i261 = load i32, ptr %i.cj, align 4      ; 2 uses
  %.val3.i262 = load i32, ptr %i.af, align 8
  %.not.i.i263 = icmp eq i32 %.val2.i261, 2097152
  %i.aha = icmp ult i32 %.val2.i261, 65536
  %i.ahb = or i1 %.not.i.i263, %i.aha
  %.neg2.i.i264 = select i1 %i.ahb, i32 -1, i32 -2
  %i.ahc = add i32 %.neg2.i.i264, %.val3.i262
  store i32 %i.ahc, ptr %i.afg, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i265 = load i32, ptr %i.ae, align 8
  store i32 %.val.i265, ptr %i.af, align 8
  store i8 0, ptr %i.afb, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

.critedge24.i:                                    ; preds = %bb.ix
  %i.ahd = load ptr, ptr %i.b, align 8            ; 3 uses
  %.sroa.2.0.insert.ext.i259 = zext i32 %i.agy to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i259, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.agp to i64
  %.sroa.0.0.insert.insert.i260 = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.ahd, i64 %.sroa.0.0.insert.insert.i260), !inline_history !59
  store i32 4, ptr %i.g, align 4
  br label %bb.ki

bb.iy:                                            ; preds = %bb.ih
  %i.ahe = load i32, ptr %i.g, align 4
  %i.ahf = icmp eq i32 %i.ahe, 0
  br i1 %i.ahf, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.ahg = load i32, ptr %i.d, align 4
  %.sroa.2.0.insert.ext.i257 = zext i32 %i.ahg to i64
  %.sroa.0.0.insert.insert.i258 = mul nuw i64 %.sroa.2.0.insert.ext.i257, 4294967297
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.afi, i64 %.sroa.0.0.insert.insert.i258), !inline_history !59
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.ahh = load ptr, ptr %i.c, align 8            ; 3 uses
  %i.ahi = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEPj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.g, ptr noundef %i.afi, ptr noundef %i.ahh, ptr noundef %i.d) ; 8 uses
  %i.ahj = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.ahk = trunc nuw i8 %i.ahj to i1
  br i1 %i.ahk, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %.not20.i = icmp eq ptr %i.ahi, null
  br i1 %.not20.i, label %bb.ki, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.ahl = load i32, ptr %i.g, align 4
  switch i32 %i.ahl, label %bb.jh [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256
    i32 3, label %bb.jd
    i32 1, label %bb.jd
    i32 2, label %bb.jf
  ]

bb.jd:                                            ; preds = %bb.jc, %bb.jc
  %i.ahm = load ptr, ptr %i.ahi, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 152
  %i.aho = load ptr, ptr %i.ahn, align 8
  %i.ahp = tail call noundef ptr %i.aho(ptr noundef nonnull align 8 dereferenceable(8) %i.ahi) #19, !inline_history !58
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 16
  %i.ahr = load ptr, ptr %i.ahq, align 8          ; 2 uses
  %.not.i.i255 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i255, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 48
  %i.aht = load i64, ptr %i.ahs, align 8
  %i.ahu = icmp ne i64 %i.aht, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256

bb.jf:                                            ; preds = %bb.jc
  %i.ahv = load ptr, ptr %i.ahi, align 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 144
  %i.ahx = load ptr, ptr %i.ahw, align 8
  %i.ahy = tail call noundef zeroext i1 %i.ahx(ptr noundef nonnull align 8 dereferenceable(8) %i.ahi) #19, !inline_history !58
  br i1 %i.ahy, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.ahz = load ptr, ptr %i.ahi, align 8
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 168
  %i.aib = load ptr, ptr %i.aia, align 8
  %i.aic = tail call noundef ptr %i.aib(ptr noundef nonnull align 8 dereferenceable(8) %i.ahi) #19, !inline_history !58
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 13
  %i.aie = load i8, ptr %i.aid, align 1, !range !5, !noundef !6
  %i.aif = trunc nuw i8 %i.aie to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256

bb.jh:                                            ; preds = %bb.jc
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256: ; preds = %bb.jc, %bb.jc, %bb.jd, %bb.je, %bb.jf, %bb.jg
  %.0.i254 = phi i1 [ %i.aif, %bb.jg ], [ false, %bb.jf ], [ false, %bb.jc ], [ false, %bb.jc ], [ false, %bb.jd ], [ %i.ahu, %bb.je ]
  %i.aig = load i8, ptr %i.f, align 1, !range !5, !noundef !6
  %2 = trunc nuw i8 %i.aig to i1
  %3 = or i1 %.0.i254, %2                         ; 2 uses
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.f, align 1
  %i.aih = getelementptr inbounds nuw i8, ptr %i.afh, i64 12
  %i.aii = load i32, ptr %i.aih, align 4
  %i.aij = icmp eq i32 %i.aii, 0
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahh, i64 48
  %i.ail = load i64, ptr %i.aik, align 8          ; 2 uses
  br i1 %i.aij, label %bb.ji, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256._crit_edge

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256._crit_edge: ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256
  %i.aim = icmp ne i64 %i.ail, 0
  %5 = or i1 %3, %i.aim
  %i.ain = zext i1 %5 to i8
  br label %bb.jj

bb.ji:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256
  %i.aio = icmp eq i64 %i.ail, 0
  br i1 %i.aio, label %._crit_edge, label %bb.jj

._crit_edge:                                      ; preds = %bb.ji
  %.pre429 = load ptr, ptr %i.e, align 8
  br label %bb.jy

bb.jj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256._crit_edge, %bb.ji
  %i.aip = phi i8 [ %i.ain, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256._crit_edge ], [ 1, %bb.ji ]
  store i8 %i.aip, ptr %i.f, align 1
  %i.aiq = load ptr, ptr %i.e, align 8            ; 6 uses
  %.val38.i = load ptr, ptr %i.ck, align 8        ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.val38.i, i64 24
  %i.ais = load i64, ptr %i.air, align 8
  %i.ait = getelementptr inbounds nuw i8, ptr %.val38.i, i64 16 ; 3 uses
  %i.aiu = load i64, ptr %i.ait, align 8          ; 2 uses
  %i.aiv = sub i64 %i.ais, %i.aiu
  %i.aiw = icmp ult i64 %i.aiv, 32
  br i1 %i.aiw, label %bb.jk, label %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit, !prof !7

bb.jk:                                            ; preds = %bb.jj
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val38.i, i64 noundef 32) #19
  %.pre.i.i253 = load i64, ptr %i.ait, align 8
  br label %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit: ; preds = %bb.jj, %bb.jk
  %i.aix = phi i64 [ %.pre.i.i253, %bb.jk ], [ %i.aiu, %bb.jj ] ; 2 uses
  %i.aiy = inttoptr i64 %i.aix to ptr             ; 2 uses
  %i.aiz = add i64 %i.aix, 32
  store i64 %i.aiz, ptr %i.ait, align 8
  tail call void @_ZN2v88internal21RegExpClassSetOperandC1EPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.aiy, ptr noundef nonnull %i.afh, ptr noundef nonnull %i.ahh) #19
  %.val37.i = load ptr, ptr %i.ck, align 8        ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiq, i64 12 ; 4 uses
  %i.ajb = load i32, ptr %i.aja, align 4          ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8 ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 8          ; 3 uses
  %i.aje = icmp slt i32 %i.ajb, %i.ajd
  br i1 %i.aje, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit
  %i.ajf = load ptr, ptr %i.aiq, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit252

bb.jm:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit
  %i.ajg = shl nsw i32 %i.ajd, 1
  %i.ajh = or disjoint i32 %i.ajg, 1              ; 2 uses
  %i.aji = icmp sgt i32 %i.ajd, -1
  br i1 %i.aji, label %bb.jo, label %bb.jn, !prof !11

bb.jn:                                            ; preds = %bb.jm
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.jo:                                            ; preds = %bb.jm
  %i.ajj = zext nneg i32 %i.ajh to i64
  %i.ajk = shl nuw nsw i64 %i.ajj, 3              ; 3 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.val37.i, i64 24
  %i.ajm = load i64, ptr %i.ajl, align 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %.val37.i, i64 16 ; 3 uses
  %i.ajo = load i64, ptr %i.ajn, align 8          ; 2 uses
  %i.ajp = sub i64 %i.ajm, %i.ajo
  %i.ajq = icmp ugt i64 %i.ajk, %i.ajp
  br i1 %i.ajq, label %bb.jp, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i246, !prof !7

bb.jp:                                            ; preds = %bb.jo
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val37.i, i64 noundef %i.ajk) #19
  %.pre.i.i.i.i.i.i251 = load i64, ptr %i.ajn, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i246

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i246: ; preds = %bb.jp, %bb.jo
  %i.ajr = phi i64 [ %.pre.i.i.i.i.i.i251, %bb.jp ], [ %i.ajo, %bb.jo ] ; 2 uses
  %i.ajs = inttoptr i64 %i.ajr to ptr             ; 5 uses
  %i.ajt = add i64 %i.ajr, %i.ajk
  store i64 %i.ajt, ptr %i.ajn, align 8
  %i.aju = load i32, ptr %i.aja, align 4          ; 3 uses
  %i.ajv = icmp sgt i32 %i.aju, 0
  br i1 %i.ajv, label %bb.jq, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i247

bb.jq:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i246
  %i.ajw = load ptr, ptr %i.aiq, align 8          ; 3 uses
  switch i32 %i.aju, label %bb.jt [
    i32 2, label %bb.js
    i32 1, label %bb.jr
  ]

bb.jr:                                            ; preds = %bb.jq
  %i.ajx = load i64, ptr %i.ajw, align 1
  store i64 %i.ajx, ptr %i.ajs, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i247

bb.js:                                            ; preds = %bb.jq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ajs, ptr noundef nonnull align 1 dereferenceable(16) %i.ajw, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i247

bb.jt:                                            ; preds = %bb.jq
  %i.ajy = zext nneg i32 %i.aju to i64
  %i.ajz = shl nuw nsw i64 %i.ajy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajs, ptr align 1 %i.ajw, i64 %i.ajz, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i247

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i247: ; preds = %bb.jt, %bb.js, %bb.jr, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i246
  store ptr %i.ajs, ptr %i.aiq, align 8
  store i32 %i.ajh, ptr %i.ajc, align 8
  %i.aka = load i32, ptr %i.aja, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit252

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit252: ; preds = %bb.jl, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i247
  %.sink12.i248 = phi i32 [ %i.aka, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i247 ], [ %i.ajb, %bb.jl ] ; 2 uses
  %.sink8.i249 = phi ptr [ %i.ajs, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i247 ], [ %i.ajf, %bb.jl ]
  %i.akb = add nsw i32 %.sink12.i248, 1
  store i32 %i.akb, ptr %i.aja, align 4
  %i.akc = sext i32 %.sink12.i248 to i64
  %i.akd = getelementptr inbounds [8 x i8], ptr %.sink8.i249, i64 %i.akc
  store ptr %i.aiy, ptr %i.akd, align 8
  %.val36.i = load ptr, ptr %i.ck, align 8        ; 4 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.val36.i, i64 24 ; 2 uses
  %i.akf = load i64, ptr %i.ake, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %.val36.i, i64 16 ; 6 uses
  %i.akh = load i64, ptr %i.akg, align 8          ; 2 uses
  %i.aki = sub i64 %i.akf, %i.akh
  %i.akj = icmp ult i64 %i.aki, 16
  br i1 %i.akj, label %bb.ju, label %bb.jv, !prof !7

bb.ju:                                            ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit252
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val36.i, i64 noundef 16) #19
  %.pre.i.i244 = load i64, ptr %i.akg, align 8
  br label %bb.jv

bb.jv:                                            ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit252, %bb.ju
  %i.akk = phi i64 [ %.pre.i.i244, %bb.ju ], [ %i.akh, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit252 ] ; 2 uses
  %i.akl = inttoptr i64 %i.akk to ptr             ; 6 uses
  %i.akm = add i64 %i.akk, 16
  store i64 %i.akm, ptr %i.akg, align 8
  store ptr null, ptr %i.akl, align 8
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  store i32 2, ptr %i.akn, align 8
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 12
  store i32 0, ptr %i.ako, align 4
  %i.akp = load i64, ptr %i.ake, align 8
  %i.akq = load i64, ptr %i.akg, align 8          ; 2 uses
  %i.akr = sub i64 %i.akp, %i.akq
  %i.aks = icmp ult i64 %i.akr, 16
  br i1 %i.aks, label %bb.jw, label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit245, !prof !7

bb.jw:                                            ; preds = %bb.jv
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val36.i, i64 noundef 16) #19
  %.pre.i.i.i.i243 = load i64, ptr %i.akg, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit245

_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit245: ; preds = %bb.jv, %bb.jw
  %i.akt = phi i64 [ %.pre.i.i.i.i243, %bb.jw ], [ %i.akq, %bb.jv ] ; 2 uses
  %i.aku = inttoptr i64 %i.akt to ptr
  %i.akv = add i64 %i.akt, 16
  store i64 %i.akv, ptr %i.akg, align 8
  store ptr %i.aku, ptr %i.akl, align 8
  store ptr %i.akl, ptr %i.b, align 8
  %.val34.i = load ptr, ptr %i.ck, align 8        ; 4 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.val34.i, i64 24
  %i.akx = load i64, ptr %i.akw, align 8
  %i.aky = getelementptr inbounds nuw i8, ptr %.val34.i, i64 16 ; 3 uses
  %i.akz = load i64, ptr %i.aky, align 8          ; 2 uses
  %i.ala = sub i64 %i.akx, %i.akz
  %i.alb = icmp ult i64 %i.ala, 56
  br i1 %i.alb, label %bb.jx, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit239, !prof !7

bb.jx:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit245
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val34.i, i64 noundef 56) #19
  %.pre.i.i238 = load i64, ptr %i.aky, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit239

_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit239: ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit245, %bb.jx
  %i.alc = phi i64 [ %.pre.i.i238, %bb.jx ], [ %i.akz, %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit245 ] ; 2 uses
  %i.ald = inttoptr i64 %i.alc to ptr             ; 7 uses
  %i.ale = add i64 %i.alc, 56
  store i64 %i.ale, ptr %i.aky, align 8
  %i.alf = ptrtoint ptr %.val34.i to i64
  store i64 %i.alf, ptr %i.ald, align 8
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ald, i64 16 ; 3 uses
  store i32 0, ptr %i.alg, align 8
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ald, i64 24
  store ptr null, ptr %i.alh, align 8
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ald, i64 32
  store ptr %i.alg, ptr %i.ali, align 8
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ald, i64 40
  store ptr %i.alg, ptr %i.alj, align 8
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ald, i64 48
  store i64 0, ptr %i.alk, align 8
  store ptr %i.ald, ptr %i.c, align 8
  br label %bb.jy

bb.jy:                                            ; preds = %._crit_edge, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit239
  %i.all = phi ptr [ %i.aiq, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit239 ], [ %.pre429, %._crit_edge ] ; 5 uses
  %i.alm = phi ptr [ %i.akl, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit239 ], [ %i.afh, %._crit_edge ] ; 2 uses
  %.val32.i = load ptr, ptr %i.ck, align 8        ; 3 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.all, i64 12 ; 4 uses
  %i.alo = load i32, ptr %i.aln, align 4          ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.all, i64 8 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 8          ; 3 uses
  %i.alr = icmp slt i32 %i.alo, %i.alq
  br i1 %i.alr, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.als = load ptr, ptr %i.all, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit237

bb.ka:                                            ; preds = %bb.jy
  %i.alt = shl nsw i32 %i.alq, 1
  %i.alu = or disjoint i32 %i.alt, 1              ; 2 uses
  %i.alv = icmp sgt i32 %i.alq, -1
  br i1 %i.alv, label %bb.kc, label %bb.kb, !prof !11

bb.kb:                                            ; preds = %bb.ka
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.kc:                                            ; preds = %bb.ka
  %i.alw = zext nneg i32 %i.alu to i64
  %i.alx = shl nuw nsw i64 %i.alw, 3              ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.val32.i, i64 24
  %i.alz = load i64, ptr %i.aly, align 8
  %i.ama = getelementptr inbounds nuw i8, ptr %.val32.i, i64 16 ; 3 uses
  %i.amb = load i64, ptr %i.ama, align 8          ; 2 uses
  %i.amc = sub i64 %i.alz, %i.amb
  %i.amd = icmp ugt i64 %i.alx, %i.amc
  br i1 %i.amd, label %bb.kd, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i231, !prof !7

bb.kd:                                            ; preds = %bb.kc
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val32.i, i64 noundef %i.alx) #19
  %.pre.i.i.i.i.i.i236 = load i64, ptr %i.ama, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i231

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i231: ; preds = %bb.kd, %bb.kc
  %i.ame = phi i64 [ %.pre.i.i.i.i.i.i236, %bb.kd ], [ %i.amb, %bb.kc ] ; 2 uses
  %i.amf = inttoptr i64 %i.ame to ptr             ; 5 uses
  %i.amg = add i64 %i.ame, %i.alx
  store i64 %i.amg, ptr %i.ama, align 8
  %i.amh = load i32, ptr %i.aln, align 4          ; 3 uses
  %i.ami = icmp sgt i32 %i.amh, 0
  br i1 %i.ami, label %bb.ke, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i232

bb.ke:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i231
  %i.amj = load ptr, ptr %i.all, align 8          ; 3 uses
  switch i32 %i.amh, label %bb.kh [
    i32 2, label %bb.kg
    i32 1, label %bb.kf
  ]

bb.kf:                                            ; preds = %bb.ke
  %i.amk = load i64, ptr %i.amj, align 1
  store i64 %i.amk, ptr %i.amf, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i232

bb.kg:                                            ; preds = %bb.ke
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.amf, ptr noundef nonnull align 1 dereferenceable(16) %i.amj, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i232

bb.kh:                                            ; preds = %bb.ke
  %i.aml = zext nneg i32 %i.amh to i64
  %i.amm = shl nuw nsw i64 %i.aml, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amf, ptr align 1 %i.amj, i64 %i.amm, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i232

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i232: ; preds = %bb.kh, %bb.kg, %bb.kf, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i231
  store ptr %i.amf, ptr %i.all, align 8
  store i32 %i.alu, ptr %i.alp, align 8
  %i.amn = load i32, ptr %i.aln, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit237

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit237: ; preds = %bb.jz, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i232
  %.sink12.i233 = phi i32 [ %i.amn, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i232 ], [ %i.alo, %bb.jz ] ; 2 uses
  %.sink8.i234 = phi ptr [ %i.amf, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i232 ], [ %i.als, %bb.jz ]
  %i.amo = add nsw i32 %.sink12.i233, 1
  store i32 %i.amo, ptr %i.aln, align 4
  %i.amp = sext i32 %.sink12.i233 to i64
  %i.amq = getelementptr inbounds [8 x i8], ptr %.sink8.i234, i64 %i.amp
  store ptr %i.ahi, ptr %i.amq, align 8
  br label %bb.ki

bb.ki:                                            ; preds = %bb.jb, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit237, %.critedge24.i
  %i.amr = phi ptr [ %i.afh, %bb.jb ], [ %i.alm, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit237 ], [ %i.ahd, %.critedge24.i ]
  %i.ams = phi ptr [ %i.afi, %bb.jb ], [ %i.alm, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit237 ], [ %i.ahd, %.critedge24.i ]
  %.val44.i = load i8, ptr %i.afb, align 4, !range !5, !noundef !6
  %i.amt = trunc nuw i8 %.val44.i to i1
  br i1 %i.amt, label %bb.ih, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit288, %bb.ki, %bb.ig
  %i.amu = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.amv = trunc nuw i8 %i.amu to i1
  br i1 %i.amv, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.kj

bb.kj:                                            ; preds = %.loopexit
  store i8 1, ptr %i.qs, align 1
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.amw, align 8
  %.val2.i225 = load i32, ptr %i.cj, align 4      ; 2 uses
  %.val3.i226 = load i32, ptr %i.af, align 8
  %.not.i.i227 = icmp eq i32 %.val2.i225, 2097152
  %i.amx = icmp ult i32 %.val2.i225, 65536
  %i.amy = or i1 %.not.i.i227, %i.amx
  %.neg2.i.i228 = select i1 %i.amy, i32 -1, i32 -2
  %i.amz = add i32 %.neg2.i.i228, %.val3.i226
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.amz, ptr %i.ana, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i229 = load i32, ptr %i.ae, align 8
  store i32 %.val.i229, ptr %i.af, align 8
  store i8 0, ptr %i.afb, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

.critedge.i119:                                   ; preds = %bb.ih
  %i.anb = load i32, ptr %i.g, align 4
  %i.anc = icmp eq i32 %i.anb, 0
  br i1 %i.anc, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %.critedge.i119
  %i.and = load i32, ptr %i.d, align 4
  %.sroa.2.0.insert.ext.i223 = zext i32 %i.and to i64
  %.sroa.0.0.insert.insert.i224 = mul nuw i64 %.sroa.2.0.insert.ext.i223, 4294967297
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.afh, i64 %.sroa.0.0.insert.insert.i224), !inline_history !59
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %.critedge.i119
  %i.ane = getelementptr inbounds nuw i8, ptr %i.afh, i64 12
  %i.anf = load i32, ptr %i.ane, align 4
  %i.ang = icmp eq i32 %i.anf, 0
  %.pre433 = load ptr, ptr %i.c, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %.pre433, i64 48
  %i.ani = load i64, ptr %i.anh, align 8          ; 2 uses
  br i1 %i.ang, label %bb.km, label %._crit_edge434

._crit_edge434:                                   ; preds = %bb.kl
  %.pre439 = load i8, ptr %i.f, align 1, !range !5
  %i.anj = icmp ne i64 %i.ani, 0
  br label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.ank = icmp eq i64 %i.ani, 0
  %.pre440 = load i8, ptr %i.f, align 1, !range !5 ; 2 uses
  br i1 %i.ank, label %._crit_edge437, label %bb.kn

._crit_edge437:                                   ; preds = %bb.km
  %6 = trunc nuw i8 %.pre440 to i1
  br label %._crit_edge437.a

bb.kn:                                            ; preds = %._crit_edge434, %bb.km
  %i.anl = phi i8 [ %.pre439, %._crit_edge434 ], [ %.pre440, %bb.km ]
  %7 = phi i1 [ %i.anj, %._crit_edge434 ], [ true, %bb.km ]
  %8 = trunc nuw i8 %i.anl to i1
  %9 = or i1 %7, %8                               ; 2 uses
  %10 = zext i1 %9 to i8
  store i8 %10, ptr %i.f, align 1
  %i.anm = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %.val31.i = load ptr, ptr %i.ck, align 8
  %i.ann = call noundef ptr @_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val31.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !59
  store ptr %i.ann, ptr %i.h, align 8
  %.val30.i = load ptr, ptr %i.ck, align 8
  call void @_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.anm, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %.val30.i), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %._crit_edge437.a

._crit_edge437.a:                                 ; preds = %._crit_edge437, %bb.kn
  %11 = phi i1 [ %6, %._crit_edge437 ], [ %9, %bb.kn ]
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !59
  %i.ano = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.anp = trunc nuw i8 %i.ano to i1              ; 2 uses
  %or.cond.i120 = select i1 %i.anp, i1 %11, i1 false
  br i1 %or.cond.i120, label %bb.ko, label %bb.kq

bb.ko:                                            ; preds = %._crit_edge437.a
  %i.anq = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.anr = trunc nuw i8 %i.anq to i1
  br i1 %i.anr, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  store i8 1, ptr %i.qs, align 1
  store i32 32, ptr %i.aff, align 8
  %.val2.i217 = load i32, ptr %i.cj, align 4      ; 2 uses
  %.val3.i218 = load i32, ptr %i.af, align 8
  %.not.i.i219 = icmp eq i32 %.val2.i217, 2097152
  %i.ans = icmp ult i32 %.val2.i217, 65536
  %i.ant = or i1 %.not.i.i219, %i.ans
  %.neg2.i.i220 = select i1 %i.ant, i32 -1, i32 -2
  %i.anu = add i32 %.neg2.i.i220, %.val3.i218
  store i32 %i.anu, ptr %i.afg, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i221 = load i32, ptr %i.ae, align 8
  store i32 %.val.i221, ptr %i.af, align 8
  store i8 0, ptr %i.afb, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.kq:                                            ; preds = %._crit_edge437.a
  %i.anv = load ptr, ptr %i.e, align 8
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 12
  %i.anx = load i32, ptr %i.anw, align 4
  %i.any = icmp eq i32 %i.anx, 0
  %.val29.i = load ptr, ptr %i.ck, align 8        ; 2 uses
  br i1 %i.any, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.anz = call noundef ptr @_ZN2v88internal24RegExpClassSetExpression5EmptyEPNS0_4ZoneEb(ptr noundef %.val29.i, i1 noundef zeroext %i.anp) #19, !inline_history !59
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.ks:                                            ; preds = %bb.kq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i32 0, ptr %i.i, align 4
  %i.aoa = call noundef ptr @_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbS5_RPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val29.i, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit: ; preds = %bb.ja, %bb.iv, %bb.kp, %bb.ko, %bb.kj, %.loopexit, %bb.iu, %bb.it, %bb.ik, %bb.ij, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit272, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit266, %bb.kr, %bb.ks
  %.4.i = phi ptr [ null, %bb.kp ], [ null, %bb.ik ], [ null, %bb.iu ], [ null, %bb.kj ], [ %i.anz, %bb.kr ], [ %i.aoa, %bb.ks ], [ null, %bb.it ], [ null, %bb.ko ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit266 ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit272 ], [ null, %bb.ij ], [ null, %.loopexit ], [ null, %bb.iv ], [ null, %bb.ja ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.kt

bb.kt:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE21ParseClassSubtractionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit
  %.1 = phi ptr [ %.2.i107, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit ], [ %.4.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit ], [ %.3.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE21ParseClassSubtractionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit ], [ null, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #19
  br label %bb.ku

bb.ku:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit, %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit81, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit, %bb.kt, %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit, %bb.ab
  %.2 = phi ptr [ %i.ef, %bb.ab ], [ %i.en, %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit ], [ %.1, %bb.kt ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit ], [ %i.py, %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit81 ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #19
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi(ptr noundef nonnull align 8 captures(none) dereferenceable(112) %0, i32 noundef range(i32 -2, 3) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = add nsw i32 %i.a, %i.c                   ; 2 uses
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val1.i = load i32, ptr %i.e, align 8          ; 2 uses
  %i.f = icmp slt i32 %i.d, %.val1.i
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !range !5, !noundef !6
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.val2.i.i = load i32, ptr %i.q, align 4        ; 2 uses
  %.val3.i.i = load i32, ptr %i.b, align 8
  %.not.i.i.i = icmp eq i32 %.val2.i.i, 2097152
  %i.r = icmp ult i32 %.val2.i.i, 65536
  %i.s = or i1 %.not.i.i.i, %i.r
  %.neg2.i.i.i = select i1 %i.s, i32 -1, i32 -2
  %i.t = add i32 %.neg2.i.i.i, %.val3.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.t, ptr %i.u, align 4
  store i32 2097152, ptr %i.q, align 4
  %.val.i.i = load i32, ptr %i.e, align 8
  store i32 %.val.i.i, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.v, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit

bb.g:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.b, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i3.i = load ptr, ptr %i.x, align 8
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %.val.i3.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = add nsw i32 %i.w, 1
  store i32 %i.ab, ptr %i.b, align 8
  %i.ac = zext i8 %i.aa to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ac, ptr %i.ad, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit

bb.h:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 2097152, ptr %i.ae, align 4
  %i.af = add nsw i32 %.val1.i, 1
  store i32 %i.af, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.ag, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE17ParseOctalLiteralEv(ptr noundef nonnull align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 15 uses
  %.val10 = load i32, ptr %i.a, align 4
  %i.b = add i32 %.val10, -48                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %.val1.i = load i32, ptr %i.c, align 8          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 18 uses
  %.val2.i = load i32, ptr %i.d, align 8
  %i.e = icmp slt i32 %.val2.i, %.val1.i
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.l, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.o, align 8
  %.val2.i.i = load i32, ptr %i.a, align 4        ; 2 uses
  %.val3.i.i = load i32, ptr %i.d, align 8
  %.not.i.i.i = icmp eq i32 %.val2.i.i, 2097152
  %i.p = icmp ult i32 %.val2.i.i, 65536
  %i.q = or i1 %.not.i.i.i, %i.p
  %.neg2.i.i.i = select i1 %i.q, i32 -1, i32 -2
  %i.r = add i32 %.neg2.i.i.i, %.val3.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.r, ptr %i.s, align 4
  store i32 2097152, ptr %i.a, align 4
  %.val.i.i = load i32, ptr %i.c, align 8
  store i32 %.val.i.i, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.t, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit28

bb.g:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.d, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i3.i = load ptr, ptr %i.v, align 8
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds i8, ptr %.val.i3.i, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %i.z = add nsw i32 %i.u, 1
  store i32 %i.z, ptr %i.d, align 8
  %i.aa = zext i8 %i.y to i32                     ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit

bb.h:                                             ; preds = %bb.a
  store i32 2097152, ptr %i.a, align 4
  %i.ab = add nsw i32 %.val1.i, 1
  store i32 %i.ab, ptr %i.d, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.ac, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit28

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exitthread-pre-split: ; preds = %bb.e
  %.val9.pr = load i32, ptr %i.a, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exitthread-pre-split, %bb.g
  %.val9 = phi i32 [ %.val9.pr, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exitthread-pre-split ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ad = and i32 %.val9, -8
  %or.cond = icmp eq i32 %i.ad, 48
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  store i64 %i.py, ptr %i.ps, align 8
  %i.pz = load i32, ptr %i.ol, align 4            ; 3 uses
  %i.qa = icmp sgt i32 %i.pz, 0
  br i1 %i.qa, label %bb.ds, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.ds:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i
  %i.qb = load ptr, ptr %i.oi, align 8            ; 3 uses
  switch i32 %i.pz, label %bb.dv [
    i32 2, label %bb.du
    i32 1, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.qc = load i64, ptr %i.qb, align 1
  store i64 %i.qc, ptr %i.px, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.du:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.px, ptr noundef nonnull align 1 dereferenceable(16) %i.qb, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.dv:                                            ; preds = %bb.ds
  %i.qd = zext nneg i32 %i.pz to i64
  %i.qe = shl nuw nsw i64 %i.qd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.px, ptr align 1 %i.qb, i64 %i.qe, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i: ; preds = %bb.dv, %bb.du, %bb.dt, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i
  store ptr %i.px, ptr %i.oi, align 8
  store i32 %i.pm, ptr %i.om, align 8
  %i.qf = load i32, ptr %i.ol, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit: ; preds = %bb.dn, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i
  %.sink12.i = phi i32 [ %i.qf, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.ph, %bb.dn ] ; 2 uses
  %.sink8.i = phi ptr [ %i.px, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.pk, %bb.dn ]
  %i.qg = add nsw i32 %.sink12.i, 1
  store i32 %i.qg, ptr %i.ol, align 4
  %i.qh = sext i32 %.sink12.i to i64
  %i.qi = getelementptr inbounds [8 x i8], ptr %.sink8.i, i64 %i.qh
  store ptr %i.pe, ptr %i.qi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  %.val17.i55 = load i8, ptr %i.oj, align 4, !range !5, !noundef !6
  %i.qj = trunc nuw i8 %.val17.i55 to i1
  br i1 %i.qj, label %bb.dh, label %.critedge.i, !llvm.loop !106

.critedge.i:                                      ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit, %bb.dg
  %i.qk = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit105, label %bb.dw

bb.dw:                                            ; preds = %.critedge.i
  store i8 1, ptr %i.mh, align 1
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.qm, align 8
  %.val2.i94 = load i32, ptr %i.ae, align 4       ; 2 uses
  %.val3.i95 = load i32, ptr %i.ml, align 8
  %.not.i.i96 = icmp eq i32 %.val2.i94, 2097152
  %i.qn = icmp ult i32 %.val2.i94, 65536
  %i.qo = or i1 %.not.i.i96, %i.qn
  %.neg2.i.i97 = select i1 %i.qo, i32 -1, i32 -2
  %i.qp = add i32 %.neg2.i.i97, %.val3.i95
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.qp, ptr %i.qq, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i98 = load i32, ptr %i.mk, align 8
  store i32 %.val.i98, ptr %i.ml, align 8
  store i8 0, ptr %i.oj, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit105

bb.dx:                                            ; preds = %bb.dh
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !105
  %.val11.i = load ptr, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #19
  store i32 2, ptr %i.v, align 4
  %i.qr = call noundef ptr @_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbRKbRPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val11.i, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit105

.critedge9.i:                                     ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit105

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit105: ; preds = %bb.dw, %.critedge.i, %bb.dk, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit116.thread, %.critedge9.i, %bb.dx
  %.2.i = phi ptr [ null, %bb.dk ], [ null, %.critedge9.i ], [ %i.qr, %bb.dx ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit116.thread ], [ null, %.critedge.i ], [ null, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE21ParseClassSubtractionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE21ParseClassSubtractionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit: ; preds = %bb.df, %bb.de, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit105
  %.3.i = phi ptr [ %.2.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit105 ], [ null, %bb.de ], [ null, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.iv

bb.dy:                                            ; preds = %bb.cr
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %.val.i59 = load i32, ptr %i.qs, align 8        ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %.val1.i60 = load i32, ptr %i.qt, align 8       ; 3 uses
  %i.qu = icmp slt i32 %.val1.i60, %.val.i59
  br i1 %i.qu, label %bb.dz, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread

bb.dz:                                            ; preds = %bb.dy
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val13.i.i62 = load ptr, ptr %i.qv, align 8
  %i.qw = sext i32 %.val1.i60 to i64
  %i.qx = getelementptr inbounds [2 x i8], ptr %.val13.i.i62, i64 %i.qw
  %i.qy = load i16, ptr %i.qx, align 2            ; 2 uses
  %i.qz = add nsw i32 %.val1.i60, 1
  %.val14.i.i63 = load i32, ptr %i.bm, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.val15.i.i64 = load i8, ptr %i.ra, align 4
  %i.rb = and i32 %.val14.i.i63, 272
  %or.cond.i.i.i65 = icmp ne i32 %i.rb, 0
  %i.rc = trunc nuw i8 %.val15.i.i64 to i1
  %spec.select.i.i.i66 = select i1 %or.cond.i.i.i65, i1 true, i1 %i.rc
  %i.rd = icmp sge i32 %i.qz, %.val.i59
  %not.spec.select.i.i.i66 = xor i1 %spec.select.i.i.i66, true
  %or.cond.i.i67 = select i1 %not.spec.select.i.i.i66, i1 true, i1 %i.rd
  %i.re = and i16 %i.qy, -1024
  %i.rf = icmp ne i16 %i.re, -10240
  %or.cond18.i.i68 = select i1 %or.cond.i.i67, i1 true, i1 %i.rf
  %i.rg = icmp eq i16 %i.qy, 38
  %or.cond315 = select i1 %or.cond18.i.i68, i1 %i.rg, i1 false
  br i1 %or.cond315, label %bb.ea, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread

bb.ea:                                            ; preds = %bb.dz
  %i.rh = icmp eq ptr %i.mg, null
  %.pre = load i32, ptr %i.ab, align 4            ; 2 uses
  br i1 %i.rh, label %bb.eb, label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  %i.ri = icmp eq i32 %.pre, 0
  br i1 %i.ri, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.rj = load ptr, ptr %i.aa, align 8
  %i.rk = load i32, ptr %i.ad, align 4
  %.sroa.2.0.insert.ext.i70 = zext i32 %i.rk to i64
  %.sroa.0.0.insert.insert.i71 = mul nuw i64 %.sroa.2.0.insert.ext.i70, 4294967297
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.rj, i64 %.sroa.0.0.insert.insert.i71)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.val27 = load ptr, ptr %i.ag, align 8
  %i.rl = call noundef ptr @_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val27, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ea
  %.120 = phi ptr [ %i.rl, %bb.ed ], [ %i.mg, %bb.ea ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.rm = zext i1 %i.af to i8
  store i8 %i.rm, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  switch i32 %.pre, label %bb.ej [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182
    i32 3, label %bb.ef
    i32 1, label %bb.ef
    i32 2, label %bb.eh
  ]

bb.ef:                                            ; preds = %bb.ee, %bb.ee
  %i.rn = load ptr, ptr %.120, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 152
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = call noundef ptr %i.rp(ptr noundef nonnull align 8 dereferenceable(8) %.120) #19, !inline_history !107
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8            ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.rs, null
  br i1 %.not.i.i181, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 48
  %i.ru = load i64, ptr %i.rt, align 8
  %i.rv = icmp ne i64 %i.ru, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182

bb.eh:                                            ; preds = %bb.ee
  %i.rw = load ptr, ptr %.120, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 144
  %i.ry = load ptr, ptr %i.rx, align 8
  %i.rz = call noundef zeroext i1 %i.ry(ptr noundef nonnull align 8 dereferenceable(8) %.120) #19, !inline_history !107
  br i1 %i.rz, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.sa = load ptr, ptr %.120, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 168
  %i.sc = load ptr, ptr %i.sb, align 8
  %i.sd = call noundef ptr %i.sc(ptr noundef nonnull align 8 dereferenceable(8) %.120) #19, !inline_history !107
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 13
  %i.sf = load i8, ptr %i.se, align 1, !range !5, !noundef !6
  %i.sg = trunc nuw i8 %i.sf to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182

bb.ej:                                            ; preds = %bb.ee
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182: ; preds = %bb.ee, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.ei
  %.0.i180 = phi i1 [ %i.sg, %bb.ei ], [ false, %bb.eh ], [ false, %bb.ee ], [ false, %bb.ee ], [ false, %bb.ef ], [ %i.rv, %bb.eg ] ; 2 uses
  %i.sh = zext i1 %.0.i180 to i8
  store i8 %i.sh, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  %.val16.i72 = load ptr, ptr %i.ag, align 8      ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.val16.i72, i64 24 ; 2 uses
  %i.sj = load i64, ptr %i.si, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %.val16.i72, i64 16 ; 6 uses
  %i.sl = load i64, ptr %i.sk, align 8            ; 2 uses
  %i.sm = sub i64 %i.sj, %i.sl
  %i.sn = icmp ult i64 %i.sm, 16
  br i1 %i.sn, label %bb.ek, label %bb.el, !prof !7

bb.ek:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val16.i72, i64 noundef 16) #19
  %.pre.i.i179 = load i64, ptr %i.sk, align 8
  br label %bb.el

bb.el:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182, %bb.ek
  %i.so = phi i64 [ %.pre.i.i179, %bb.ek ], [ %i.sl, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit182 ] ; 2 uses
  %i.sp = inttoptr i64 %i.so to ptr               ; 10 uses
  %i.sq = add i64 %i.so, 16
  store i64 %i.sq, ptr %i.sk, align 8
  store ptr null, ptr %i.sp, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 8 ; 5 uses
  store i32 2, ptr %i.sr, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 12 ; 9 uses
  store i32 0, ptr %i.ss, align 4
  %i.st = load i64, ptr %i.si, align 8
  %i.su = load i64, ptr %i.sk, align 8            ; 2 uses
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = icmp ult i64 %i.sv, 16
  br i1 %i.sw, label %bb.em, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit, !prof !7

bb.em:                                            ; preds = %bb.el
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val16.i72, i64 noundef 16) #19
  %.pre.i.i.i.i178 = load i64, ptr %i.sk, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit: ; preds = %bb.el, %bb.em
  %i.sx = phi i64 [ %.pre.i.i.i.i178, %bb.em ], [ %i.su, %bb.el ] ; 2 uses
  %i.sy = inttoptr i64 %i.sx to ptr               ; 2 uses
  %i.sz = add i64 %i.sx, 16
  store i64 %i.sz, ptr %i.sk, align 8
  store ptr %i.sy, ptr %i.sp, align 8
  store ptr %i.sp, ptr %i.l, align 8
  %.val14.i74 = load ptr, ptr %i.ag, align 8      ; 3 uses
  %i.ta = load i32, ptr %i.ss, align 4            ; 2 uses
  %i.tb = load i32, ptr %i.sr, align 8            ; 3 uses
  %i.tc = icmp slt i32 %i.ta, %i.tb
  br i1 %i.tc, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176, label %bb.en

bb.en:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit
  %i.td = shl nsw i32 %i.tb, 1
  %i.te = or disjoint i32 %i.td, 1                ; 2 uses
  %i.tf = icmp sgt i32 %i.tb, -1
  br i1 %i.tf, label %bb.ep, label %bb.eo, !prof !11

bb.eo:                                            ; preds = %bb.en
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.tg = zext nneg i32 %i.te to i64
  %i.th = shl nuw nsw i64 %i.tg, 3                ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.val14.i74, i64 24
  %i.tj = load i64, ptr %i.ti, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %.val14.i74, i64 16 ; 3 uses
  %i.tl = load i64, ptr %i.tk, align 8            ; 2 uses
  %i.tm = sub i64 %i.tj, %i.tl
  %i.tn = icmp ugt i64 %i.th, %i.tm
  br i1 %i.tn, label %bb.eq, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i170, !prof !7

bb.eq:                                            ; preds = %bb.ep
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val14.i74, i64 noundef %i.th) #19
  %.pre.i.i.i.i.i.i175 = load i64, ptr %i.tk, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i170

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i170: ; preds = %bb.eq, %bb.ep
  %i.to = phi i64 [ %.pre.i.i.i.i.i.i175, %bb.eq ], [ %i.tl, %bb.ep ] ; 2 uses
  %i.tp = inttoptr i64 %i.to to ptr               ; 5 uses
  %i.tq = add i64 %i.to, %i.th
  store i64 %i.tq, ptr %i.tk, align 8
  %i.tr = load i32, ptr %i.ss, align 4            ; 3 uses
  %i.ts = icmp sgt i32 %i.tr, 0
  br i1 %i.ts, label %bb.er, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i171

bb.er:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i170
  %i.tt = load ptr, ptr %i.sp, align 8            ; 3 uses
  switch i32 %i.tr, label %bb.eu [
    i32 2, label %bb.et
    i32 1, label %bb.es
  ]

bb.es:                                            ; preds = %bb.er
  %i.tu = load i64, ptr %i.tt, align 1
  store i64 %i.tu, ptr %i.tp, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i171

bb.et:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.tp, ptr noundef nonnull align 1 dereferenceable(16) %i.tt, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i171

bb.eu:                                            ; preds = %bb.er
  %i.tv = zext nneg i32 %i.tr to i64
  %i.tw = shl nuw nsw i64 %i.tv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tp, ptr align 1 %i.tt, i64 %i.tw, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i171

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i171: ; preds = %bb.eu, %bb.et, %bb.es, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i170
  store ptr %i.tp, ptr %i.sp, align 8
  store i32 %i.te, ptr %i.sr, align 8
  %i.tx = load i32, ptr %i.ss, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176: ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i171
  %.sink12.i172 = phi i32 [ %i.tx, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i171 ], [ %i.ta, %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit ] ; 2 uses
  %.sink8.i173 = phi ptr [ %i.tp, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i171 ], [ %i.sy, %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit ]
  %i.ty = add nsw i32 %.sink12.i172, 1
  store i32 %i.ty, ptr %i.ss, align 4
  %i.tz = sext i32 %.sink12.i172 to i64
  %i.ua = getelementptr inbounds [8 x i8], ptr %.sink8.i173, i64 %i.tz
  store ptr %.120, ptr %i.ua, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 6 uses
  %.val18.i75361 = load i8, ptr %i.ub, align 4, !range !5, !noundef !6
  %i.uc = trunc nuw i8 %.val18.i75361 to i1
  br i1 %i.uc, label %.lr.ph, label %.critedge.i76

.lr.ph:                                           ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143
  %1 = phi i1 [ %i.vy, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143 ], [ %.0.i180, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176 ] ; 2 uses
  %.val11.i81 = load i32, ptr %i.ae, align 4      ; 3 uses
  switch i32 %.val11.i81, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread [
    i32 93, label %bb.fs
    i32 38, label %bb.ev
  ]

bb.ev:                                            ; preds = %.lr.ph
  %.val.i159 = load i32, ptr %i.qs, align 8       ; 2 uses
  %.val1.i160 = load i32, ptr %i.qt, align 8      ; 3 uses
  %i.ud = icmp slt i32 %.val1.i160, %.val.i159
  br i1 %i.ud, label %bb.ew, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread

bb.ew:                                            ; preds = %bb.ev
  %.val13.i.i162 = load ptr, ptr %i.qv, align 8
  %i.ue = sext i32 %.val1.i160 to i64
  %i.uf = getelementptr inbounds [2 x i8], ptr %.val13.i.i162, i64 %i.ue
  %i.ug = load i16, ptr %i.uf, align 2            ; 2 uses
  %i.uh = add nsw i32 %.val1.i160, 1              ; 2 uses
  %.val14.i.i163 = load i32, ptr %i.bm, align 8
  %.val15.i.i164 = load i8, ptr %i.ra, align 4
  %i.ui = and i32 %.val14.i.i163, 272
  %or.cond.i.i.i165 = icmp ne i32 %i.ui, 0
  %i.uj = trunc nuw i8 %.val15.i.i164 to i1
  %spec.select.i.i.i166 = select i1 %or.cond.i.i.i165, i1 true, i1 %i.uj
  %i.uk = icmp sge i32 %i.uh, %.val.i159
  %not.spec.select.i.i.i166 = xor i1 %spec.select.i.i.i166, true
  %or.cond.i.i167 = select i1 %not.spec.select.i.i.i166, i1 true, i1 %i.uk
  %i.ul = and i16 %i.ug, -1024
  %i.um = icmp ne i16 %i.ul, -10240
  %or.cond18.i.i168 = select i1 %or.cond.i.i167, i1 true, i1 %i.um
  %.not7.i85 = icmp eq i16 %i.ug, 38
  %or.cond316 = select i1 %or.cond18.i.i168, i1 %.not7.i85, i1 false
  br i1 %or.cond316, label %bb.ey, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread: ; preds = %bb.ew, %.lr.ph, %bb.ev
  %i.un = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread
  store i8 1, ptr %i.mh, align 1
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 30, ptr %i.up, align 8
  %.val3.i154 = load i32, ptr %i.qt, align 8
  %.not.i.i155 = icmp eq i32 %.val11.i81, 2097152
  %i.uq = icmp ult i32 %.val11.i81, 65536
  %i.ur = or i1 %.not.i.i155, %i.uq
  %.neg2.i.i156 = select i1 %i.ur, i32 -1, i32 -2
  %i.us = add i32 %.val3.i154, %.neg2.i.i156
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.us, ptr %i.ut, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i157 = load i32, ptr %i.qs, align 8
  store i32 %.val.i157, ptr %i.qt, align 8
  store i8 0, ptr %i.ub, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.ey:                                            ; preds = %bb.ew
  store i32 %i.uh, ptr %i.qt, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %.val.i86 = load i32, ptr %i.ae, align 4
  %i.uu = icmp eq i32 %.val.i86, 38
  br i1 %i.uu, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.uv = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.uw = trunc nuw i8 %i.uv to i1
  br i1 %i.uw, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store i8 1, ptr %i.mh, align 1
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 31, ptr %i.ux, align 8
  %.val3.i148 = load i32, ptr %i.qt, align 8
  %i.uy = add i32 %.val3.i148, -1
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.uy, ptr %i.uz, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i151 = load i32, ptr %i.qs, align 8
  store i32 %.val.i151, ptr %i.qt, align 8
  store i8 0, ptr %i.ub, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.fb:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.va = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.m) ; 7 uses
  %i.vb = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.vc = trunc nuw i8 %i.vb to i1
  br i1 %i.vc, label %.critedge9.i88, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.vd = load i32, ptr %i.m, align 4
  switch i32 %i.vd, label %bb.fh [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146
    i32 3, label %bb.fd
    i32 1, label %bb.fd
    i32 2, label %bb.ff
  ]

bb.fd:                                            ; preds = %bb.fc, %bb.fc
  %i.ve = load ptr, ptr %i.va, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 152
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = call noundef ptr %i.vg(ptr noundef nonnull align 8 dereferenceable(8) %i.va) #19, !inline_history !107
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vj = load ptr, ptr %i.vi, align 8            ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i145, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 48
  %i.vl = load i64, ptr %i.vk, align 8
  %i.vm = icmp ne i64 %i.vl, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146

bb.ff:                                            ; preds = %bb.fc
  %i.vn = load ptr, ptr %i.va, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 144
  %i.vp = load ptr, ptr %i.vo, align 8
  %i.vq = call noundef zeroext i1 %i.vp(ptr noundef nonnull align 8 dereferenceable(8) %i.va) #19, !inline_history !107
  br i1 %i.vq, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.vr = load ptr, ptr %i.va, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 168
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = call noundef ptr %i.vt(ptr noundef nonnull align 8 dereferenceable(8) %i.va) #19, !inline_history !107
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 13
  %i.vw = load i8, ptr %i.vv, align 1, !range !5, !noundef !6
  %i.vx = trunc nuw i8 %i.vw to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146

bb.fh:                                            ; preds = %bb.fc
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146: ; preds = %bb.fc, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg
  %.0.i144 = phi i1 [ %i.vx, %bb.fg ], [ false, %bb.ff ], [ false, %bb.fc ], [ false, %bb.fc ], [ false, %bb.fd ], [ %i.vm, %bb.fe ]
  %i.vy = and i1 %1, %.0.i144                     ; 2 uses
  %i.vz = zext i1 %i.vy to i8
  store i8 %i.vz, ptr %i.k, align 1
  %.val13.i87 = load ptr, ptr %i.ag, align 8      ; 3 uses
  %i.wa = load i32, ptr %i.ss, align 4            ; 2 uses
  %i.wb = load i32, ptr %i.sr, align 8            ; 3 uses
  %i.wc = icmp slt i32 %i.wa, %i.wb
  br i1 %i.wc, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146
  %i.wd = load ptr, ptr %i.sp, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143

bb.fj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146
  %i.we = shl nsw i32 %i.wb, 1
  %i.wf = or disjoint i32 %i.we, 1                ; 2 uses
  %i.wg = icmp sgt i32 %i.wb, -1
  br i1 %i.wg, label %bb.fl, label %bb.fk, !prof !11

bb.fk:                                            ; preds = %bb.fj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.fl:                                            ; preds = %bb.fj
  %i.wh = zext nneg i32 %i.wf to i64
  %i.wi = shl nuw nsw i64 %i.wh, 3                ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.val13.i87, i64 24
  %i.wk = load i64, ptr %i.wj, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %.val13.i87, i64 16 ; 3 uses
  %i.wm = load i64, ptr %i.wl, align 8            ; 2 uses
  %i.wn = sub i64 %i.wk, %i.wm
  %i.wo = icmp ugt i64 %i.wi, %i.wn
  br i1 %i.wo, label %bb.fm, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137, !prof !7

bb.fm:                                            ; preds = %bb.fl
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val13.i87, i64 noundef %i.wi) #19
  %.pre.i.i.i.i.i.i142 = load i64, ptr %i.wl, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137: ; preds = %bb.fm, %bb.fl
  %i.wp = phi i64 [ %.pre.i.i.i.i.i.i142, %bb.fm ], [ %i.wm, %bb.fl ] ; 2 uses
  %i.wq = inttoptr i64 %i.wp to ptr               ; 5 uses
  %i.wr = add i64 %i.wp, %i.wi
  store i64 %i.wr, ptr %i.wl, align 8
  %i.ws = load i32, ptr %i.ss, align 4            ; 3 uses
  %i.wt = icmp sgt i32 %i.ws, 0
  br i1 %i.wt, label %bb.fn, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138

bb.fn:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137
  %i.wu = load ptr, ptr %i.sp, align 8            ; 3 uses
  switch i32 %i.ws, label %bb.fq [
    i32 2, label %bb.fp
    i32 1, label %bb.fo
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.wv = load i64, ptr %i.wu, align 1
  store i64 %i.wv, ptr %i.wq, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138

bb.fp:                                            ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.wq, ptr noundef nonnull align 1 dereferenceable(16) %i.wu, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138

bb.fq:                                            ; preds = %bb.fn
  %i.ww = zext nneg i32 %i.ws to i64
  %i.wx = shl nuw nsw i64 %i.ww, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wq, ptr align 1 %i.wu, i64 %i.wx, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138: ; preds = %bb.fq, %bb.fp, %bb.fo, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137
  store ptr %i.wq, ptr %i.sp, align 8
  store i32 %i.wf, ptr %i.sr, align 8
  %i.wy = load i32, ptr %i.ss, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143: ; preds = %bb.fi, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138
  %.sink12.i139 = phi i32 [ %i.wy, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138 ], [ %i.wa, %bb.fi ] ; 2 uses
  %.sink8.i140 = phi ptr [ %i.wq, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138 ], [ %i.wd, %bb.fi ]
  %i.wz = add nsw i32 %.sink12.i139, 1
  store i32 %i.wz, ptr %i.ss, align 4
  %i.xa = sext i32 %.sink12.i139 to i64
  %i.xb = getelementptr inbounds [8 x i8], ptr %.sink8.i140, i64 %i.xa
  store ptr %i.va, ptr %i.xb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  %.val18.i75 = load i8, ptr %i.ub, align 4, !range !5, !noundef !6
  %i.xc = trunc nuw i8 %.val18.i75 to i1
  br i1 %i.xc, label %.lr.ph, label %.critedge.i76, !llvm.loop !108

.critedge.i76:                                    ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176
  %i.xd = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.fr

bb.fr:                                            ; preds = %.critedge.i76
  store i8 1, ptr %i.mh, align 1
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.xf, align 8
  %.val2.i131 = load i32, ptr %i.ae, align 4      ; 2 uses
  %.val3.i132 = load i32, ptr %i.qt, align 8
  %.not.i.i133 = icmp eq i32 %.val2.i131, 2097152
  %i.xg = icmp ult i32 %.val2.i131, 65536
  %i.xh = or i1 %.not.i.i133, %i.xg
  %.neg2.i.i134 = select i1 %i.xh, i32 -1, i32 -2
  %i.xi = add i32 %.neg2.i.i134, %.val3.i132
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.xi, ptr %i.xj, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i135 = load i32, ptr %i.qs, align 8
  store i32 %.val.i135, ptr %i.qt, align 8
  store i8 0, ptr %i.ub, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.fs:                                            ; preds = %.lr.ph
  %or.cond.i79 = select i1 %i.af, i1 %1, i1 false
  br i1 %or.cond.i79, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.xk = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.xl = trunc nuw i8 %i.xk to i1
  br i1 %i.xl, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  store i8 1, ptr %i.mh, align 1
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 32, ptr %i.xm, align 8
  %.val3.i126 = load i32, ptr %i.qt, align 8
  %i.xn = add i32 %.val3.i126, -1
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.xn, ptr %i.xo, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i129 = load i32, ptr %i.qs, align 8
  store i32 %.val.i129, ptr %i.qt, align 8
  store i8 0, ptr %i.ub, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.fv:                                            ; preds = %bb.fs
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !109
  %.val12.i80 = load ptr, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  store i32 1, ptr %i.n, align 4
  %i.xp = call noundef ptr @_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbS5_RPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val12.i80, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

.critedge9.i88:                                   ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit: ; preds = %bb.fu, %bb.ft, %bb.fr, %.critedge.i76, %bb.fa, %bb.ez, %bb.ex, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread, %bb.fv, %.critedge9.i88
  %.2.i78 = phi ptr [ null, %bb.fa ], [ null, %bb.ex ], [ null, %.critedge9.i88 ], [ null, %bb.fr ], [ %i.xp, %bb.fv ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread ], [ null, %bb.ez ], [ null, %.critedge.i76 ], [ null, %bb.ft ], [ null, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.iv

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread: ; preds = %bb.dz, %bb.ct, %bb.dy, %bb.cs, %bb.cr
  %i.xq = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.xr = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.xs = load ptr, ptr %i.ac, align 8
  %i.xt = load i32, ptr %i.ad, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.xu = zext i1 %i.af to i8
  store i8 %i.xu, ptr %i.a, align 1
  store ptr %i.xr, ptr %i.b, align 8
  store ptr %i.xs, ptr %i.c, align 8
  store i32 %i.xt, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %.val41.i = load ptr, ptr %i.ag, align 8        ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.val41.i, i64 24 ; 2 uses
  %i.xw = load i64, ptr %i.xv, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16 ; 6 uses
  %i.xy = load i64, ptr %i.xx, align 8            ; 2 uses
  %i.xz = sub i64 %i.xw, %i.xy
  %i.ya = icmp ult i64 %i.xz, 16
  br i1 %i.ya, label %bb.fw, label %bb.fx, !prof !7

bb.fw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val41.i, i64 noundef 16) #19
  %.pre.i.i276 = load i64, ptr %i.xx, align 8
  br label %bb.fx

bb.fx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread, %bb.fw
  %i.yb = phi i64 [ %.pre.i.i276, %bb.fw ], [ %i.xy, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread ] ; 2 uses
  %i.yc = inttoptr i64 %i.yb to ptr               ; 8 uses
  %i.yd = add i64 %i.yb, 16
  store i64 %i.yd, ptr %i.xx, align 8
  store ptr null, ptr %i.yc, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 3 uses
  store i32 2, ptr %i.ye, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yc, i64 12 ; 5 uses
  store i32 0, ptr %i.yf, align 4
  %i.yg = load i64, ptr %i.xv, align 8
  %i.yh = load i64, ptr %i.xx, align 8            ; 2 uses
  %i.yi = sub i64 %i.yg, %i.yh
  %i.yj = icmp ult i64 %i.yi, 16
  br i1 %i.yj, label %bb.fy, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit277, !prof !7

bb.fy:                                            ; preds = %bb.fx
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val41.i, i64 noundef 16) #19
  %.pre.i.i.i.i275 = load i64, ptr %i.xx, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit277

_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit277: ; preds = %bb.fx, %bb.fy
  %i.yk = phi i64 [ %.pre.i.i.i.i275, %bb.fy ], [ %i.yh, %bb.fx ] ; 2 uses
  %i.yl = inttoptr i64 %i.yk to ptr
  %i.ym = add i64 %i.yk, 16
  store i64 %i.ym, ptr %i.xx, align 8
  store ptr %i.yl, ptr %i.yc, align 8
  store ptr %i.yc, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i8 0, ptr %i.f, align 1
  %.not.i89 = icmp eq ptr %i.mg, null
  br i1 %.not.i89, label %bb.go, label %bb.fz

bb.fz:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit277
  switch i32 %i.xq, label %bb.ge [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit271
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit271
    i32 3, label %bb.ga
    i32 1, label %bb.ga
    i32 2, label %bb.gc
  ]

bb.ga:                                            ; preds = %bb.fz, %bb.fz
  %i.yn = load ptr, ptr %i.mg, align 8
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 152
  %i.yp = load ptr, ptr %i.yo, align 8
  %i.yq = tail call noundef ptr %i.yp(ptr noundef nonnull align 8 dereferenceable(8) %i.mg) #19, !inline_history !110
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8            ; 2 uses
  %.not.i.i270 = icmp eq ptr %i.ys, null
  br i1 %.not.i.i270, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit271, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 48
  %i.yu = load i64, ptr %i.yt, align 8
  %i.yv = icmp ne i64 %i.yu, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit271

bb.gc:                                            ; preds = %bb.fz
  %i.yw = load ptr, ptr %i.mg, align 8
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 144
  %i.yy = load ptr, ptr %i.yx, align 8
  %i.yz = tail call noundef zeroext i1 %i.yy(ptr noundef nonnull align 8 dereferenceable(8) %i.mg) #19, !inline_history !110
  br i1 %i.yz, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit271, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.za = load ptr, ptr %i.mg, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 168
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = tail call noundef ptr %i.zc(ptr noundef nonnull align 8 dereferenceable(8) %i.mg) #19, !inline_history !110
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 13
  %i.zf = load i8, ptr %i.ze, align 1, !range !5, !noundef !6
  %i.zg = trunc nuw i8 %i.zf to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit271

bb.ge:                                            ; preds = %bb.fz
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit271: ; preds = %bb.fz, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd
  %.0.i269 = phi i1 [ %i.zg, %bb.gd ], [ false, %bb.gc ], [ false, %bb.fz ], [ false, %bb.fz ], [ false, %bb.ga ], [ %i.yv, %bb.gb ]
  %i.zh = zext i1 %.0.i269 to i8
  store i8 %i.zh, ptr %i.f, align 1
  %.val39.i = load ptr, ptr %i.ag, align 8        ; 3 uses
  %i.zi = load i32, ptr %i.yf, align 4            ; 2 uses
  %i.zj = load i32, ptr %i.ye, align 8            ; 3 uses
  %i.zk = icmp slt i32 %i.zi, %i.zj
  br i1 %i.zk, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit271
  %i.zl = load ptr, ptr %i.yc, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit268

bb.gg:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit271
  %i.zm = shl nsw i32 %i.zj, 1
  %i.zn = or disjoint i32 %i.zm, 1                ; 2 uses
  %i.zo = icmp sgt i32 %i.zj, -1
  br i1 %i.zo, label %bb.gi, label %bb.gh, !prof !11

bb.gh:                                            ; preds = %bb.gg
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.gi:                                            ; preds = %bb.gg
  %i.zp = zext nneg i32 %i.zn to i64
  %i.zq = shl nuw nsw i64 %i.zp, 3                ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.val39.i, i64 24
  %i.zs = load i64, ptr %i.zr, align 8
  %i.zt = getelementptr inbounds nuw i8, ptr %.val39.i, i64 16 ; 3 uses
  %i.zu = load i64, ptr %i.zt, align 8            ; 2 uses
  %i.zv = sub i64 %i.zs, %i.zu
  %i.zw = icmp ugt i64 %i.zq, %i.zv
  br i1 %i.zw, label %bb.gj, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i262, !prof !7

bb.gj:                                            ; preds = %bb.gi
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val39.i, i64 noundef %i.zq) #19
  %.pre.i.i.i.i.i.i267 = load i64, ptr %i.zt, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i262

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i262: ; preds = %bb.gj, %bb.gi
  %i.zx = phi i64 [ %.pre.i.i.i.i.i.i267, %bb.gj ], [ %i.zu, %bb.gi ] ; 2 uses
  %i.zy = inttoptr i64 %i.zx to ptr               ; 5 uses
  %i.zz = add i64 %i.zx, %i.zq
  store i64 %i.zz, ptr %i.zt, align 8
  %i.aaa = load i32, ptr %i.yf, align 4           ; 3 uses
  %i.aab = icmp sgt i32 %i.aaa, 0
  br i1 %i.aab, label %bb.gk, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i263

bb.gk:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i262
  %i.aac = load ptr, ptr %i.yc, align 8           ; 3 uses
  switch i32 %i.aaa, label %bb.gn [
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  %i.aaz = icmp sge i32 %i.aaw, %.val.i251
  %not.spec.select.i.i.i258 = xor i1 %spec.select.i.i.i258, true
  %or.cond.i.i259 = select i1 %not.spec.select.i.i.i258, i1 true, i1 %i.aaz
  %i.aba = and i16 %i.aav, -1024
  %i.abb = icmp ne i16 %i.aba, -10240
  %or.cond18.i.i260 = select i1 %or.cond.i.i259, i1 true, i1 %i.abb
  %i.abc = icmp eq i16 %i.aav, 45
  %or.cond317 = select i1 %or.cond18.i.i260, i1 %i.abc, i1 false
  br i1 %or.cond317, label %bb.gs, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit261.thread

bb.gs:                                            ; preds = %bb.gr
  %i.abd = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.abe = trunc nuw i8 %i.abd to i1
  br i1 %i.abe, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store i8 1, ptr %i.mh, align 1
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 30, ptr %i.abf, align 8
  %i.abg = add i32 %.val1.i252, -1
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.abg, ptr %i.abh, align 4
  store i32 2097152, ptr %i.ae, align 4
  store i32 %.val.i251, ptr %i.aan, align 8
  store i8 0, ptr %i.aak, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit261.thread: ; preds = %bb.gr, %bb.gq
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !111
  %.val43.i = load i8, ptr %i.aak, align 4, !range !5, !noundef !6
  %i.abi = trunc nuw i8 %.val43.i to i1
  br i1 %i.abi, label %bb.gu, label %.loopexit

bb.gu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit261.thread
  %i.abj = load i32, ptr %i.g, align 4
  %.not21.i = icmp eq i32 %i.abj, 0
  br i1 %.not21.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.abk = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.abl = trunc nuw i8 %i.abk to i1
  br i1 %i.abl, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  store i8 1, ptr %i.mh, align 1
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 27, ptr %i.abm, align 8
  %.val2.i239 = load i32, ptr %i.ae, align 4      ; 2 uses
  %.val3.i240 = load i32, ptr %i.aan, align 8
  %.not.i.i241 = icmp eq i32 %.val2.i239, 2097152
  %i.abn = icmp ult i32 %.val2.i239, 65536
  %i.abo = or i1 %.not.i.i241, %i.abn
  %.neg2.i.i242 = select i1 %i.abo, i32 -1, i32 -2
  %i.abp = add i32 %.neg2.i.i242, %.val3.i240
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.abp, ptr %i.abq, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i243 = load i32, ptr %i.aam, align 8
  store i32 %.val.i243, ptr %i.aan, align 8
  store i8 0, ptr %i.aak, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.gx:                                            ; preds = %bb.gu
  %i.abr = load i32, ptr %i.d, align 4            ; 2 uses
  %i.abs = load ptr, ptr %i.c, align 8
  %i.abt = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEPj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.g, ptr noundef %i.aar, ptr noundef %i.abs, ptr noundef %i.d) ; 0 uses
  %i.abu = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.abv = trunc nuw i8 %i.abu to i1
  br i1 %i.abv, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.abw = load i32, ptr %i.g, align 4
  %.not22.i = icmp eq i32 %i.abw, 0
  br i1 %.not22.i, label %bb.gz, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit238

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit238: ; preds = %bb.gy
  store i8 1, ptr %i.mh, align 1
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 27, ptr %i.abx, align 8
  %.val2.i233 = load i32, ptr %i.ae, align 4      ; 2 uses
  %.val3.i234 = load i32, ptr %i.aan, align 8
  %.not.i.i235 = icmp eq i32 %.val2.i233, 2097152
  %i.aby = icmp ult i32 %.val2.i233, 65536
  %i.abz = or i1 %.not.i.i235, %i.aby
  %.neg2.i.i236 = select i1 %i.abz, i32 -1, i32 -2
  %i.aca = add i32 %.neg2.i.i236, %.val3.i234
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aca, ptr %i.acb, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i237 = load i32, ptr %i.aam, align 8
  store i32 %.val.i237, ptr %i.aan, align 8
  store i8 0, ptr %i.aak, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.gz:                                            ; preds = %bb.gy
  %i.acc = load i32, ptr %i.d, align 4            ; 2 uses
  %i.acd = icmp ugt i32 %i.abr, %i.acc
  br i1 %i.acd, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit232, label %.critedge24.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit232: ; preds = %bb.gz
  store i8 1, ptr %i.mh, align 1
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 29, ptr %i.ace, align 8
  %.val2.i227 = load i32, ptr %i.ae, align 4      ; 2 uses
  %.val3.i228 = load i32, ptr %i.aan, align 8
  %.not.i.i229 = icmp eq i32 %.val2.i227, 2097152
  %i.acf = icmp ult i32 %.val2.i227, 65536
  %i.acg = or i1 %.not.i.i229, %i.acf
  %.neg2.i.i230 = select i1 %i.acg, i32 -1, i32 -2
  %i.ach = add i32 %.neg2.i.i230, %.val3.i228
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ach, ptr %i.aci, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i231 = load i32, ptr %i.aam, align 8
  store i32 %.val.i231, ptr %i.aan, align 8
  store i8 0, ptr %i.aak, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

.critedge24.i:                                    ; preds = %bb.gz
  %i.acj = load ptr, ptr %i.b, align 8            ; 3 uses
  %.sroa.2.0.insert.ext.i225 = zext i32 %i.acc to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i225, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.abr to i64
  %.sroa.0.0.insert.insert.i226 = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.acj, i64 %.sroa.0.0.insert.insert.i226), !inline_history !111
  store i32 4, ptr %i.g, align 4
  br label %bb.ik

bb.ha:                                            ; preds = %bb.gp
  %i.ack = load i32, ptr %i.g, align 4
  %i.acl = icmp eq i32 %i.ack, 0
  br i1 %i.acl, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.acm = load i32, ptr %i.d, align 4
  %.sroa.2.0.insert.ext.i223 = zext i32 %i.acm to i64
  %.sroa.0.0.insert.insert.i224 = mul nuw i64 %.sroa.2.0.insert.ext.i223, 4294967297
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.aar, i64 %.sroa.0.0.insert.insert.i224), !inline_history !111
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.acn = load ptr, ptr %i.c, align 8            ; 3 uses
  %i.aco = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEPj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.g, ptr noundef %i.aar, ptr noundef %i.acn, ptr noundef %i.d) ; 8 uses
  %i.acp = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.acq = trunc nuw i8 %i.acp to i1
  br i1 %i.acq, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %.not20.i = icmp eq ptr %i.aco, null
  br i1 %.not20.i, label %bb.ik, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.acr = load i32, ptr %i.g, align 4
  switch i32 %i.acr, label %bb.hj [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222
    i32 3, label %bb.hf
    i32 1, label %bb.hf
    i32 2, label %bb.hh
  ]

bb.hf:                                            ; preds = %bb.he, %bb.he
  %i.acs = load ptr, ptr %i.aco, align 8
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 152
  %i.acu = load ptr, ptr %i.act, align 8
  %i.acv = tail call noundef ptr %i.acu(ptr noundef nonnull align 8 dereferenceable(8) %i.aco) #19, !inline_history !110
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.acx = load ptr, ptr %i.acw, align 8          ; 2 uses
  %.not.i.i221 = icmp eq ptr %i.acx, null
  br i1 %.not.i.i221, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 48
  %i.acz = load i64, ptr %i.acy, align 8
  %i.ada = icmp ne i64 %i.acz, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222

bb.hh:                                            ; preds = %bb.he
  %i.adb = load ptr, ptr %i.aco, align 8
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 144
  %i.add = load ptr, ptr %i.adc, align 8
  %i.ade = tail call noundef zeroext i1 %i.add(ptr noundef nonnull align 8 dereferenceable(8) %i.aco) #19, !inline_history !110
  br i1 %i.ade, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.adf = load ptr, ptr %i.aco, align 8
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 168
  %i.adh = load ptr, ptr %i.adg, align 8
  %i.adi = tail call noundef ptr %i.adh(ptr noundef nonnull align 8 dereferenceable(8) %i.aco) #19, !inline_history !110
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 13
  %i.adk = load i8, ptr %i.adj, align 1, !range !5, !noundef !6
  %i.adl = trunc nuw i8 %i.adk to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222

bb.hj:                                            ; preds = %bb.he
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222: ; preds = %bb.he, %bb.he, %bb.hf, %bb.hg, %bb.hh, %bb.hi
  %.0.i220 = phi i1 [ %i.adl, %bb.hi ], [ false, %bb.hh ], [ false, %bb.he ], [ false, %bb.he ], [ false, %bb.hf ], [ %i.ada, %bb.hg ]
  %i.adm = load i8, ptr %i.f, align 1, !range !5, !noundef !6
  %2 = trunc nuw i8 %i.adm to i1
  %3 = or i1 %.0.i220, %2                         ; 2 uses
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.f, align 1
  %i.adn = getelementptr inbounds nuw i8, ptr %i.aaq, i64 12
  %i.ado = load i32, ptr %i.adn, align 4
  %i.adp = icmp eq i32 %i.ado, 0
  %i.adq = getelementptr inbounds nuw i8, ptr %i.acn, i64 48
  %i.adr = load i64, ptr %i.adq, align 8          ; 2 uses
  br i1 %i.adp, label %bb.hk, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222._crit_edge

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222._crit_edge: ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222
  %i.ads = icmp ne i64 %i.adr, 0
  %5 = or i1 %3, %i.ads
  %i.adt = zext i1 %5 to i8
  br label %bb.hl

bb.hk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222
  %i.adu = icmp eq i64 %i.adr, 0
  br i1 %i.adu, label %._crit_edge, label %bb.hl

._crit_edge:                                      ; preds = %bb.hk
  %.pre387 = load ptr, ptr %i.e, align 8
  br label %bb.ia

bb.hl:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222._crit_edge, %bb.hk
  %i.adv = phi i8 [ %i.adt, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222._crit_edge ], [ 1, %bb.hk ]
  store i8 %i.adv, ptr %i.f, align 1
  %i.adw = load ptr, ptr %i.e, align 8            ; 6 uses
  %.val38.i = load ptr, ptr %i.ag, align 8        ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.val38.i, i64 24
  %i.ady = load i64, ptr %i.adx, align 8
  %i.adz = getelementptr inbounds nuw i8, ptr %.val38.i, i64 16 ; 3 uses
  %i.aea = load i64, ptr %i.adz, align 8          ; 2 uses
  %i.aeb = sub i64 %i.ady, %i.aea
  %i.aec = icmp ult i64 %i.aeb, 32
  br i1 %i.aec, label %bb.hm, label %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit, !prof !7

bb.hm:                                            ; preds = %bb.hl
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val38.i, i64 noundef 32) #19
  %.pre.i.i219 = load i64, ptr %i.adz, align 8
  br label %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit: ; preds = %bb.hl, %bb.hm
  %i.aed = phi i64 [ %.pre.i.i219, %bb.hm ], [ %i.aea, %bb.hl ] ; 2 uses
  %i.aee = inttoptr i64 %i.aed to ptr             ; 2 uses
  %i.aef = add i64 %i.aed, 32
  store i64 %i.aef, ptr %i.adz, align 8
  tail call void @_ZN2v88internal21RegExpClassSetOperandC1EPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.aee, ptr noundef nonnull %i.aaq, ptr noundef nonnull %i.acn) #19
  %.val37.i = load ptr, ptr %i.ag, align 8        ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adw, i64 12 ; 4 uses
  %i.aeh = load i32, ptr %i.aeg, align 4          ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adw, i64 8 ; 2 uses
  %i.aej = load i32, ptr %i.aei, align 8          ; 3 uses
  %i.aek = icmp slt i32 %i.aeh, %i.aej
  br i1 %i.aek, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit
  %i.ael = load ptr, ptr %i.adw, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit218

bb.ho:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit
  %i.aem = shl nsw i32 %i.aej, 1
  %i.aen = or disjoint i32 %i.aem, 1              ; 2 uses
  %i.aeo = icmp sgt i32 %i.aej, -1
  br i1 %i.aeo, label %bb.hq, label %bb.hp, !prof !11

bb.hp:                                            ; preds = %bb.ho
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.hq:                                            ; preds = %bb.ho
  %i.aep = zext nneg i32 %i.aen to i64
  %i.aeq = shl nuw nsw i64 %i.aep, 3              ; 3 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.val37.i, i64 24
  %i.aes = load i64, ptr %i.aer, align 8
  %i.aet = getelementptr inbounds nuw i8, ptr %.val37.i, i64 16 ; 3 uses
  %i.aeu = load i64, ptr %i.aet, align 8          ; 2 uses
  %i.aev = sub i64 %i.aes, %i.aeu
  %i.aew = icmp ugt i64 %i.aeq, %i.aev
  br i1 %i.aew, label %bb.hr, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i212, !prof !7

bb.hr:                                            ; preds = %bb.hq
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val37.i, i64 noundef %i.aeq) #19
  %.pre.i.i.i.i.i.i217 = load i64, ptr %i.aet, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i212

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i212: ; preds = %bb.hr, %bb.hq
  %i.aex = phi i64 [ %.pre.i.i.i.i.i.i217, %bb.hr ], [ %i.aeu, %bb.hq ] ; 2 uses
  %i.aey = inttoptr i64 %i.aex to ptr             ; 5 uses
  %i.aez = add i64 %i.aex, %i.aeq
  store i64 %i.aez, ptr %i.aet, align 8
  %i.afa = load i32, ptr %i.aeg, align 4          ; 3 uses
  %i.afb = icmp sgt i32 %i.afa, 0
  br i1 %i.afb, label %bb.hs, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i213

bb.hs:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i212
  %i.afc = load ptr, ptr %i.adw, align 8          ; 3 uses
  switch i32 %i.afa, label %bb.hv [
    i32 2, label %bb.hu
    i32 1, label %bb.ht
  ]

bb.ht:                                            ; preds = %bb.hs
  %i.afd = load i64, ptr %i.afc, align 1
  store i64 %i.afd, ptr %i.aey, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i213

bb.hu:                                            ; preds = %bb.hs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aey, ptr noundef nonnull align 1 dereferenceable(16) %i.afc, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i213

bb.hv:                                            ; preds = %bb.hs
  %i.afe = zext nneg i32 %i.afa to i64
  %i.aff = shl nuw nsw i64 %i.afe, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aey, ptr align 1 %i.afc, i64 %i.aff, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i213

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i213: ; preds = %bb.hv, %bb.hu, %bb.ht, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i212
  store ptr %i.aey, ptr %i.adw, align 8
  store i32 %i.aen, ptr %i.aei, align 8
  %i.afg = load i32, ptr %i.aeg, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit218

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit218: ; preds = %bb.hn, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i213
  %.sink12.i214 = phi i32 [ %i.afg, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i213 ], [ %i.aeh, %bb.hn ] ; 2 uses
  %.sink8.i215 = phi ptr [ %i.aey, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i213 ], [ %i.ael, %bb.hn ]
  %i.afh = add nsw i32 %.sink12.i214, 1
  store i32 %i.afh, ptr %i.aeg, align 4
  %i.afi = sext i32 %.sink12.i214 to i64
  %i.afj = getelementptr inbounds [8 x i8], ptr %.sink8.i215, i64 %i.afi
  store ptr %i.aee, ptr %i.afj, align 8
  %.val36.i = load ptr, ptr %i.ag, align 8        ; 4 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.val36.i, i64 24 ; 2 uses
  %i.afl = load i64, ptr %i.afk, align 8
  %i.afm = getelementptr inbounds nuw i8, ptr %.val36.i, i64 16 ; 6 uses
  %i.afn = load i64, ptr %i.afm, align 8          ; 2 uses
  %i.afo = sub i64 %i.afl, %i.afn
  %i.afp = icmp ult i64 %i.afo, 16
  br i1 %i.afp, label %bb.hw, label %bb.hx, !prof !7

bb.hw:                                            ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit218
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val36.i, i64 noundef 16) #19
  %.pre.i.i210 = load i64, ptr %i.afm, align 8
  br label %bb.hx

bb.hx:                                            ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit218, %bb.hw
  %i.afq = phi i64 [ %.pre.i.i210, %bb.hw ], [ %i.afn, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit218 ] ; 2 uses
  %i.afr = inttoptr i64 %i.afq to ptr             ; 6 uses
  %i.afs = add i64 %i.afq, 16
  store i64 %i.afs, ptr %i.afm, align 8
  store ptr null, ptr %i.afr, align 8
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  store i32 2, ptr %i.aft, align 8
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 12
  store i32 0, ptr %i.afu, align 4
  %i.afv = load i64, ptr %i.afk, align 8
  %i.afw = load i64, ptr %i.afm, align 8          ; 2 uses
  %i.afx = sub i64 %i.afv, %i.afw
  %i.afy = icmp ult i64 %i.afx, 16
  br i1 %i.afy, label %bb.hy, label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit211, !prof !7

bb.hy:                                            ; preds = %bb.hx
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val36.i, i64 noundef 16) #19
  %.pre.i.i.i.i209 = load i64, ptr %i.afm, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit211

_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit211: ; preds = %bb.hx, %bb.hy
  %i.afz = phi i64 [ %.pre.i.i.i.i209, %bb.hy ], [ %i.afw, %bb.hx ] ; 2 uses
  %i.aga = inttoptr i64 %i.afz to ptr
  %i.agb = add i64 %i.afz, 16
  store i64 %i.agb, ptr %i.afm, align 8
  store ptr %i.aga, ptr %i.afr, align 8
  store ptr %i.afr, ptr %i.b, align 8
  %.val34.i = load ptr, ptr %i.ag, align 8        ; 4 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.val34.i, i64 24
  %i.agd = load i64, ptr %i.agc, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %.val34.i, i64 16 ; 3 uses
  %i.agf = load i64, ptr %i.age, align 8          ; 2 uses
  %i.agg = sub i64 %i.agd, %i.agf
  %i.agh = icmp ult i64 %i.agg, 56
  br i1 %i.agh, label %bb.hz, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit205, !prof !7

bb.hz:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit211
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val34.i, i64 noundef 56) #19
  %.pre.i.i204 = load i64, ptr %i.age, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit205

_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit205: ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit211, %bb.hz
  %i.agi = phi i64 [ %.pre.i.i204, %bb.hz ], [ %i.agf, %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit211 ] ; 2 uses
  %i.agj = inttoptr i64 %i.agi to ptr             ; 7 uses
  %i.agk = add i64 %i.agi, 56
  store i64 %i.agk, ptr %i.age, align 8
  %i.agl = ptrtoint ptr %.val34.i to i64
  store i64 %i.agl, ptr %i.agj, align 8
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 16 ; 3 uses
  store i32 0, ptr %i.agm, align 8
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agj, i64 24
  store ptr null, ptr %i.agn, align 8
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agj, i64 32
  store ptr %i.agm, ptr %i.ago, align 8
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agj, i64 40
  store ptr %i.agm, ptr %i.agp, align 8
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agj, i64 48
  store i64 0, ptr %i.agq, align 8
  store ptr %i.agj, ptr %i.c, align 8
  br label %bb.ia

bb.ia:                                            ; preds = %._crit_edge, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit205
  %i.agr = phi ptr [ %i.adw, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit205 ], [ %.pre387, %._crit_edge ] ; 5 uses
  %i.ags = phi ptr [ %i.afr, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit205 ], [ %i.aaq, %._crit_edge ] ; 2 uses
  %.val32.i = load ptr, ptr %i.ag, align 8        ; 3 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 12 ; 4 uses
  %i.agu = load i32, ptr %i.agt, align 4          ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agr, i64 8 ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 8          ; 3 uses
  %i.agx = icmp slt i32 %i.agu, %i.agw
  br i1 %i.agx, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.agy = load ptr, ptr %i.agr, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit203

bb.ic:                                            ; preds = %bb.ia
  %i.agz = shl nsw i32 %i.agw, 1
  %i.aha = or disjoint i32 %i.agz, 1              ; 2 uses
  %i.ahb = icmp sgt i32 %i.agw, -1
  br i1 %i.ahb, label %bb.ie, label %bb.id, !prof !11

bb.id:                                            ; preds = %bb.ic
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.ie:                                            ; preds = %bb.ic
  %i.ahc = zext nneg i32 %i.aha to i64
  %i.ahd = shl nuw nsw i64 %i.ahc, 3              ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.val32.i, i64 24
  %i.ahf = load i64, ptr %i.ahe, align 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %.val32.i, i64 16 ; 3 uses
  %i.ahh = load i64, ptr %i.ahg, align 8          ; 2 uses
  %i.ahi = sub i64 %i.ahf, %i.ahh
  %i.ahj = icmp ugt i64 %i.ahd, %i.ahi
  br i1 %i.ahj, label %bb.if, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i197, !prof !7

bb.if:                                            ; preds = %bb.ie
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val32.i, i64 noundef %i.ahd) #19
  %.pre.i.i.i.i.i.i202 = load i64, ptr %i.ahg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i197

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i197: ; preds = %bb.if, %bb.ie
  %i.ahk = phi i64 [ %.pre.i.i.i.i.i.i202, %bb.if ], [ %i.ahh, %bb.ie ] ; 2 uses
  %i.ahl = inttoptr i64 %i.ahk to ptr             ; 5 uses
  %i.ahm = add i64 %i.ahk, %i.ahd
  store i64 %i.ahm, ptr %i.ahg, align 8
  %i.ahn = load i32, ptr %i.agt, align 4          ; 3 uses
  %i.aho = icmp sgt i32 %i.ahn, 0
  br i1 %i.aho, label %bb.ig, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i198

bb.ig:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i197
  %i.ahp = load ptr, ptr %i.agr, align 8          ; 3 uses
  switch i32 %i.ahn, label %bb.ij [
    i32 2, label %bb.ii
    i32 1, label %bb.ih
  ]

bb.ih:                                            ; preds = %bb.ig
  %i.ahq = load i64, ptr %i.ahp, align 1
  store i64 %i.ahq, ptr %i.ahl, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i198

bb.ii:                                            ; preds = %bb.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ahl, ptr noundef nonnull align 1 dereferenceable(16) %i.ahp, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i198

bb.ij:                                            ; preds = %bb.ig
  %i.ahr = zext nneg i32 %i.ahn to i64
  %i.ahs = shl nuw nsw i64 %i.ahr, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahl, ptr align 1 %i.ahp, i64 %i.ahs, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i198

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i198: ; preds = %bb.ij, %bb.ii, %bb.ih, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i197
  store ptr %i.ahl, ptr %i.agr, align 8
  store i32 %i.aha, ptr %i.agv, align 8
  %i.aht = load i32, ptr %i.agt, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit203

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit203: ; preds = %bb.ib, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i198
  %.sink12.i199 = phi i32 [ %i.aht, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i198 ], [ %i.agu, %bb.ib ] ; 2 uses
  %.sink8.i200 = phi ptr [ %i.ahl, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i198 ], [ %i.agy, %bb.ib ]
  %i.ahu = add nsw i32 %.sink12.i199, 1
  store i32 %i.ahu, ptr %i.agt, align 4
  %i.ahv = sext i32 %.sink12.i199 to i64
  %i.ahw = getelementptr inbounds [8 x i8], ptr %.sink8.i200, i64 %i.ahv
  store ptr %i.aco, ptr %i.ahw, align 8
  br label %bb.ik

bb.ik:                                            ; preds = %bb.hd, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit203, %.critedge24.i
  %i.ahx = phi ptr [ %i.aaq, %bb.hd ], [ %i.ags, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit203 ], [ %i.acj, %.critedge24.i ]
  %i.ahy = phi ptr [ %i.aar, %bb.hd ], [ %i.ags, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit203 ], [ %i.acj, %.critedge24.i ]
  %.val44.i = load i8, ptr %i.aak, align 4, !range !5, !noundef !6
  %i.ahz = trunc nuw i8 %.val44.i to i1
  br i1 %i.ahz, label %bb.gp, label %.loopexit, !llvm.loop !112

.loopexit:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit261.thread, %bb.ik, %bb.go
  %i.aia = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.aib = trunc nuw i8 %i.aia to i1
  br i1 %i.aib, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.il

bb.il:                                            ; preds = %.loopexit
  store i8 1, ptr %i.mh, align 1
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.aic, align 8
  %.val2.i191 = load i32, ptr %i.ae, align 4      ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val3.i192 = load i32, ptr %i.aid, align 8
  %.not.i.i193 = icmp eq i32 %.val2.i191, 2097152
  %i.aie = icmp ult i32 %.val2.i191, 65536
  %i.aif = or i1 %.not.i.i193, %i.aie
  %.neg2.i.i194 = select i1 %i.aif, i32 -1, i32 -2
  %i.aig = add i32 %.neg2.i.i194, %.val3.i192
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aig, ptr %i.aih, align 4
  store i32 2097152, ptr %i.ae, align 4
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i195 = load i32, ptr %i.aii, align 8
  store i32 %.val.i195, ptr %i.aid, align 8
  store i8 0, ptr %i.aak, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

.critedge.i90:                                    ; preds = %bb.gp
  %i.aij = load i32, ptr %i.g, align 4
  %i.aik = icmp eq i32 %i.aij, 0
  br i1 %i.aik, label %bb.im, label %bb.in

bb.im:                                            ; preds = %.critedge.i90
  %i.ail = load i32, ptr %i.d, align 4
  %.sroa.2.0.insert.ext.i189 = zext i32 %i.ail to i64
  %.sroa.0.0.insert.insert.i190 = mul nuw i64 %.sroa.2.0.insert.ext.i189, 4294967297
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.aaq, i64 %.sroa.0.0.insert.insert.i190), !inline_history !111
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %.critedge.i90
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aaq, i64 12
  %i.ain = load i32, ptr %i.aim, align 4
  %i.aio = icmp eq i32 %i.ain, 0
  %.pre391 = load ptr, ptr %i.c, align 8
  %i.aip = getelementptr inbounds nuw i8, ptr %.pre391, i64 48
  %i.aiq = load i64, ptr %i.aip, align 8          ; 2 uses
  br i1 %i.aio, label %bb.io, label %._crit_edge392

._crit_edge392:                                   ; preds = %bb.in
  %.pre397 = load i8, ptr %i.f, align 1, !range !5
  %i.air = icmp ne i64 %i.aiq, 0
  br label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.ais = icmp eq i64 %i.aiq, 0
  %.pre398 = load i8, ptr %i.f, align 1, !range !5 ; 2 uses
  br i1 %i.ais, label %._crit_edge395, label %bb.ip

._crit_edge395:                                   ; preds = %bb.io
  %6 = trunc nuw i8 %.pre398 to i1
  br label %._crit_edge395.a

bb.ip:                                            ; preds = %._crit_edge392, %bb.io
  %i.ait = phi i8 [ %.pre397, %._crit_edge392 ], [ %.pre398, %bb.io ]
  %7 = phi i1 [ %i.air, %._crit_edge392 ], [ true, %bb.io ]
  %8 = trunc nuw i8 %i.ait to i1
  %9 = or i1 %7, %8                               ; 2 uses
  %10 = zext i1 %9 to i8
  store i8 %10, ptr %i.f, align 1
  %i.aiu = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %.val31.i = load ptr, ptr %i.ag, align 8
  %i.aiv = call noundef ptr @_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val31.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !111
  store ptr %i.aiv, ptr %i.h, align 8
  %.val30.i = load ptr, ptr %i.ag, align 8
  call void @_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.aiu, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %.val30.i), !inline_history !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %._crit_edge395.a

._crit_edge395.a:                                 ; preds = %._crit_edge395, %bb.ip
  %11 = phi i1 [ %6, %._crit_edge395 ], [ %9, %bb.ip ]
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !111
  %i.aiw = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.aix = trunc nuw i8 %i.aiw to i1              ; 2 uses
  %or.cond.i91 = select i1 %i.aix, i1 %11, i1 false
  br i1 %or.cond.i91, label %bb.iq, label %bb.is

bb.iq:                                            ; preds = %._crit_edge395.a
  %i.aiy = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.aiz = trunc nuw i8 %i.aiy to i1
  br i1 %i.aiz, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  store i8 1, ptr %i.mh, align 1
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 32, ptr %i.aja, align 8
  %.val2.i183 = load i32, ptr %i.ae, align 4      ; 2 uses
  %.val3.i184 = load i32, ptr %i.aan, align 8
  %.not.i.i185 = icmp eq i32 %.val2.i183, 2097152
  %i.ajb = icmp ult i32 %.val2.i183, 65536
  %i.ajc = or i1 %.not.i.i185, %i.ajb
  %.neg2.i.i186 = select i1 %i.ajc, i32 -1, i32 -2
  %i.ajd = add i32 %.neg2.i.i186, %.val3.i184
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ajd, ptr %i.aje, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i187 = load i32, ptr %i.aam, align 8
  store i32 %.val.i187, ptr %i.aan, align 8
  store i8 0, ptr %i.aak, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.is:                                            ; preds = %._crit_edge395.a
  %i.ajf = load ptr, ptr %i.e, align 8
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 12
  %i.ajh = load i32, ptr %i.ajg, align 4
  %i.aji = icmp eq i32 %i.ajh, 0
  %.val29.i = load ptr, ptr %i.ag, align 8        ; 2 uses
  br i1 %i.aji, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.ajj = call noundef ptr @_ZN2v88internal24RegExpClassSetExpression5EmptyEPNS0_4ZoneEb(ptr noundef %.val29.i, i1 noundef zeroext %i.aix) #19, !inline_history !111
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.iu:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i32 0, ptr %i.i, align 4
  %i.ajk = call noundef ptr @_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbS5_RPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val29.i, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit: ; preds = %bb.hc, %bb.gx, %bb.ir, %bb.iq, %bb.il, %.loopexit, %bb.gw, %bb.gv, %bb.gt, %bb.gs, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit238, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit232, %bb.it, %bb.iu
  %.4.i = phi ptr [ null, %bb.ir ], [ null, %bb.gt ], [ null, %bb.gw ], [ null, %bb.il ], [ %i.ajj, %bb.it ], [ %i.ajk, %bb.iu ], [ null, %bb.gv ], [ null, %bb.iq ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit232 ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit238 ], [ null, %bb.gs ], [ null, %.loopexit ], [ null, %bb.gx ], [ null, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.iv

bb.iv:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE21ParseClassSubtractionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit
  %.1 = phi ptr [ %.2.i78, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit ], [ %.4.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit ], [ %.3.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE21ParseClassSubtractionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit ], [ null, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #19
  br label %bb.iw

bb.iw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit, %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit47, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit, %bb.iv, %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit, %bb.h
  %.2 = phi ptr [ %i.bc, %bb.h ], [ %i.bk, %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit ], [ %.1, %bb.iv ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit ], [ %i.ln, %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit47 ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #19
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE28TryParseCharacterClassEscapeEjNS1_18InClassEscapeStateEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEPNS0_4ZoneEb(ptr noundef nonnull align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::ZoneVector.521", align 8 ; 8 uses
  %8 = alloca %"class.v8::internal::ZoneVector.521", align 8 ; 11 uses
  switch i32 %1, label %bb.ah [
    i32 100, label %bb.b
    i32 68, label %bb.b
    i32 115, label %bb.b
    i32 83, label %bb.b
    i32 119, label %bb.b
    i32 87, label %bb.b
    i32 112, label %bb.c
    i32 80, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = trunc nuw nsw i32 %1 to i8
  tail call void @_ZN2v88internal14CharacterRange14AddClassEscapeENS0_20StandardCharacterSetEPNS0_8ZoneListIS1_EEbPNS0_4ZoneE(i8 noundef signext %i.a, ptr noundef %3, i1 noundef zeroext %6, ptr noundef %5) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %bb.ah

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.val = load i32, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.val13 = load i8, ptr %i.f, align 4
  %i.g = and i32 %.val, 272
  %or.cond.i = icmp ne i32 %i.g, 0
  %i.h = trunc nuw i8 %.val13 to i1
  %spec.select.i = select i1 %or.cond.i, i1 true, i1 %i.h
  br i1 %spec.select.i, label %bb.d, label %bb.ah

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %5, ptr %7, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %5, ptr %8, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %.val19.i = load i32, ptr %i.n, align 4
  %i.o = icmp eq i32 %.val19.i, 123
  br i1 %i.o, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParsePropertyClassNameEPNS0_10ZoneVectorIcEES6_.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal10ZoneVectorIcE9push_backEOc.exit.i, %bb.e
  %.val18.i = load i32, ptr %i.n, align 4         ; 2 uses
  switch i32 %.val18.i, label %bb.g [
    i32 125, label %.critedge.i
    i32 61, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = trunc i32 %.val18.i to i8                ; 4 uses
  %i.t = and i8 %i.s, -33
  %i.u = add i8 %i.t, -65
  %or.cond15.i.i = icmp ult i8 %i.u, 26
  %i.v = add i8 %i.s, -48
  %or.cond8.i.i = icmp ult i8 %i.v, 10
  %or.cond16.i.i = or i1 %or.cond8.i.i, %or.cond15.i.i
  %i.w = icmp eq i8 %i.s, 95
  %.0.i.i = or i1 %i.w, %or.cond16.i.i
  br i1 %.0.i.i, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParsePropertyClassNameEPNS0_10ZoneVectorIcEES6_.exit.thread

bb.h:                                             ; preds = %bb.g
  %.val9.i = load i32, ptr %i.p, align 8
  %.val10.i = load i32, ptr %i.i, align 8
  %i.x = icmp slt i32 %.val10.i, %.val9.i
  br i1 %i.x, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParsePropertyClassNameEPNS0_10ZoneVectorIcEES6_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.aa = icmp ult ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN2v88internal10ZoneVectorIcE9push_backEOc.exit.i, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = add i64 %i.ac, 1
  %i.af = sub i64 %i.ae, %i.ad
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIcE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.af)
  %.pre.i.i.i = load ptr, ptr %i.q, align 8
  br label %_ZN2v88internal10ZoneVectorIcE9push_backEOc.exit.i

_ZN2v88internal10ZoneVectorIcE9push_backEOc.exit.i: ; preds = %bb.j, %bb.i
  %i.ag = phi ptr [ %i.y, %bb.i ], [ %.pre.i.i.i, %bb.j ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.q, align 8
  store i8 %i.s, ptr %i.ag, align 1
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %bb.f, !llvm.loop !113

bb.k:                                             ; preds = %bb.f
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %.val1337.i = load i32, ptr %i.n, align 4       ; 2 uses
  %.not738.i = icmp eq i32 %.val1337.i, 125
  br i1 %.not738.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorIcE9push_backEOc.exit25.i, %.lr.ph.i
  %.val1339.i = phi i32 [ %.val1337.i, %.lr.ph.i ], [ %.val13.i, %_ZN2v88internal10ZoneVectorIcE9push_backEOc.exit25.i ]
  %i.ak = trunc i32 %.val1339.i to i8             ; 4 uses
  %i.al = and i8 %i.ak, -33
  %i.am = add i8 %i.al, -65
  %or.cond15.i20.i = icmp ult i8 %i.am, 26
  %i.an = add i8 %i.ak, -48
  %or.cond8.i21.i = icmp ult i8 %i.an, 10
  %or.cond16.i22.i = or i1 %or.cond8.i21.i, %or.cond15.i20.i
  %i.ao = icmp eq i8 %i.ak, 95
  %.0.i23.i = or i1 %i.ao, %or.cond16.i22.i
  br i1 %.0.i23.i, label %bb.m, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParsePropertyClassNameEPNS0_10ZoneVectorIcEES6_.exit.thread

bb.m:                                             ; preds = %bb.l
  %.val.i = load i32, ptr %i.p, align 8
  %.val8.i = load i32, ptr %i.i, align 8
  %i.ap = icmp slt i32 %.val8.i, %.val.i
  br i1 %i.ap, label %bb.n, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParsePropertyClassNameEPNS0_10ZoneVectorIcEES6_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ar = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN2v88internal10ZoneVectorIcE9push_backEOc.exit25.i, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.m, align 8
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = add i64 %i.au, 1
  %i.ax = sub i64 %i.aw, %i.av
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIcE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ax)
  %.pre.i.i24.i = load ptr, ptr %i.ai, align 8
  br label %_ZN2v88internal10ZoneVectorIcE9push_backEOc.exit25.i

_ZN2v88internal10ZoneVectorIcE9push_backEOc.exit25.i: ; preds = %bb.o, %bb.n
  %i.ay = phi ptr [ %i.aq, %bb.n ], [ %.pre.i.i24.i, %bb.o ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.ai, align 8
  store i8 %i.ak, ptr %i.ay, align 1
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %.val13.i = load i32, ptr %i.n, align 4         ; 2 uses
  %.not7.i = icmp eq i32 %.val13.i, 125
  br i1 %.not7.i, label %._crit_edge.i, label %bb.l, !llvm.loop !114
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassSetCharacterEv:bb.a
  %.val.i189.i = load i32, ptr %i.lk, align 8     ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i190.i = load i32, ptr %i.ll, align 8    ; 4 uses
  %i.lm = icmp slt i32 %.val1.i190.i, %.val.i189.i
  br i1 %i.lm, label %bb.as, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE34IsClassSetReservedDoublePunctuatorEj.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val13.i.i192.i = load ptr, ptr %i.ln, align 8
  %i.lo = sext i32 %.val1.i190.i to i64
  %i.lp = getelementptr inbounds [2 x i8], ptr %.val13.i.i192.i, i64 %i.lo
  %i.lq = load i16, ptr %i.lp, align 2            ; 2 uses
  %i.lr = add nsw i32 %.val1.i190.i, 1
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val14.i.i193.i = load i32, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.val15.i.i194.i = load i8, ptr %i.lt, align 4
  %i.lu = and i32 %.val14.i.i193.i, 272
  %or.cond.i.i.i195.i = icmp ne i32 %i.lu, 0
  %i.lv = trunc nuw i8 %.val15.i.i194.i to i1
  %spec.select.i.i.i196.i = select i1 %or.cond.i.i.i195.i, i1 true, i1 %i.lv
  %i.lw = icmp sge i32 %i.lr, %.val.i189.i
  %not.spec.select.i.i.i196.i = xor i1 %spec.select.i.i.i196.i, true
  %or.cond.i.i197.i = select i1 %not.spec.select.i.i.i196.i, i1 true, i1 %i.lw
  %i.lx = and i16 %i.lq, -1024
  %i.ly = icmp ne i16 %i.lx, -10240
  %or.cond18.i.i198.i = select i1 %or.cond.i.i197.i, i1 true, i1 %i.ly
  %i.lz = icmp eq i16 %i.lq, 126
  %or.cond62 = select i1 %or.cond18.i.i198.i, i1 %i.lz, i1 false
  br i1 %or.cond62, label %bb.at, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE34IsClassSetReservedDoublePunctuatorEj.exit.thread

bb.at:                                            ; preds = %bb.i, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k
  %.val.i21 = phi i32 [ %.val.i.i, %bb.i ], [ %.val.i189.i, %bb.as ], [ %.val.i178.i, %bb.aq ], [ %.val.i167.i, %bb.ao ], [ %.val.i156.i, %bb.am ], [ %.val.i145.i, %bb.ak ], [ %.val.i134.i, %bb.ai ], [ %.val.i123.i, %bb.ag ], [ %.val.i112.i, %bb.ae ], [ %.val.i101.i, %bb.ac ], [ %.val.i90.i, %bb.aa ], [ %.val.i79.i, %bb.y ], [ %.val.i68.i, %bb.w ], [ %.val.i57.i, %bb.u ], [ %.val.i46.i, %bb.s ], [ %.val.i35.i, %bb.q ], [ %.val.i24.i, %bb.o ], [ %.val.i13.i, %bb.m ], [ %.val.i2.i, %bb.k ]
  %.val3.i18 = phi i32 [ %.val1.i.i, %bb.i ], [ %.val1.i190.i, %bb.as ], [ %.val1.i179.i, %bb.aq ], [ %.val1.i168.i, %bb.ao ], [ %.val1.i157.i, %bb.am ], [ %.val1.i146.i, %bb.ak ], [ %.val1.i135.i, %bb.ai ], [ %.val1.i124.i, %bb.ag ], [ %.val1.i113.i, %bb.ae ], [ %.val1.i102.i, %bb.ac ], [ %.val1.i91.i, %bb.aa ], [ %.val1.i80.i, %bb.y ], [ %.val1.i69.i, %bb.w ], [ %.val1.i58.i, %bb.u ], [ %.val1.i47.i, %bb.s ], [ %.val1.i36.i, %bb.q ], [ %.val1.i25.i, %bb.o ], [ %.val1.i14.i, %bb.m ], [ %.val1.i3.i, %bb.k ]
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !range !5, !noundef !6
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.ma, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 30, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.mf = add i32 %.val3.i18, -1
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.mf, ptr %i.mg, align 4
  store i32 2097152, ptr %i.b, align 4
  store i32 %.val.i21, ptr %i.me, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.mh, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE34IsClassSetReservedDoublePunctuatorEj.exit.thread: ; preds = %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.a, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit: ; preds = %bb.au, %bb.at, %bb.g, %bb.f, %bb.e, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread, %bb.d, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread66, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE34IsClassSetReservedDoublePunctuatorEj.exit.thread
  %.1 = phi i32 [ %.val, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE34IsClassSetReservedDoublePunctuatorEj.exit.thread ], [ 0, %bb.e ], [ 0, %bb.g ], [ %i.y, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread66 ], [ 8, %bb.d ], [ 0, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread ], [ 0, %bb.f ], [ 0, %bb.at ], [ 0, %bb.au ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull captures(none) initializes((0, 4)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val12 = load ptr, ptr %i.b, align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val12, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val12, i64 16 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 16
  br i1 %i.h, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val12, i64 noundef 16) #19
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 7 uses
  %i.k = add i64 %i.i, 16
  store i64 %i.k, ptr %i.e, align 8
  store ptr null, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = load i64, ptr %i.c, align 8
  %i.o = load i64, ptr %i.e, align 8              ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, 8
  br i1 %i.q, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val12, i64 noundef 8) #19
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = add i64 %i.r, 8
  store i64 %i.t, ptr %i.e, align 8
  store ptr %i.s, ptr %i.j, align 8
  %.val10 = load ptr, ptr %i.b, align 8           ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val10, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ult i64 %i.y, 56
  br i1 %i.z, label %bb.e, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val10, i64 noundef 56) #19
  %.pre.i.i13 = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit, %bb.e
  %i.aa = phi i64 [ %.pre.i.i13, %bb.e ], [ %i.x, %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 8 uses
  %i.ac = add i64 %i.aa, 56
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = ptrtoint ptr %.val10 to i64
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 0, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.aj = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEPj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ab, ptr noundef %i.a) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.al = load i8, ptr %i.ak, align 1, !range !5, !noundef !6
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit
  %i.an = icmp eq ptr %i.aj, null
  br i1 %i.an, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %1, align 4
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %i.a, align 4
  %.sroa.2.0.insert.ext.i = zext i32 %i.aq to i64
  %.sroa.0.0.insert.insert.i = mul nuw i64 %.sroa.2.0.insert.ext.i, 4294967297
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.j, i64 %.sroa.0.0.insert.insert.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ult i64 %i.av, 32
  br i1 %i.aw, label %bb.j, label %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val, i64 noundef 32) #19
  %.pre.i.i14 = load i64, ptr %i.at, align 8
  br label %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit: ; preds = %bb.i, %bb.j
  %i.ax = phi i64 [ %.pre.i.i14, %bb.j ], [ %i.au, %bb.i ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = add i64 %i.ax, 32
  store i64 %i.az, ptr %i.at, align 8
  tail call void @_ZN2v88internal21RegExpClassSetOperandC1EPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ab) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit
  %.0 = phi ptr [ null, %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit ], [ %i.ay, %_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_.exit ], [ %i.aj, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ScanForCapturesENS1_18InClassEscapeStateE(ptr noundef nonnull align 8 captures(none) dereferenceable(112) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 13 uses
  %.val27 = load i32, ptr %i.a, align 4           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.val28 = load i32, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.val29 = load i32, ptr %i.c, align 4           ; 3 uses
  %2 = trunc nuw i32 %1 to i1
  %.not36 = icmp eq i32 %.val27, 2097152          ; 2 uses
  %or.cond = select i1 %2, i1 true, i1 %.not36
  br i1 %or.cond, label %.loopexit33, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.val2637 = phi i32 [ %.val26, %bb.c ], [ %.val27, %bb.a ]
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  switch i32 %.val2637, label %bb.c [
    i32 92, label %bb.b
    i32 93, label %.lr.ph..loopexit33.loopexit_crit_edge
  ]

.lr.ph..loopexit33.loopexit_crit_edge:            ; preds = %.lr.ph
  %.val2545.pre.pre = load i32, ptr %i.a, align 4
  br label %.loopexit33

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.val26 = load i32, ptr %i.a, align 4           ; 2 uses
  %.not = icmp eq i32 %.val26, 2097152
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120

.loopexit33:                                      ; preds = %.lr.ph..loopexit33.loopexit_crit_edge, %bb.a
  %.val2545 = phi i32 [ %.val27, %bb.a ], [ %.val2545.pre.pre, %.lr.ph..loopexit33.loopexit_crit_edge ] ; 2 uses
  %.not1846 = icmp eq i32 %.val2545, 2097152
  br i1 %.not1846, label %._crit_edge, label %.lr.ph49

.lr.ph49:                                         ; preds = %.loopexit33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph49, %.loopexit
  %.val2548 = phi i32 [ %.val2545, %.lr.ph49 ], [ %.val25, %.loopexit ]
  %.047 = phi i32 [ %.val29, %.lr.ph49 ], [ %.1, %.loopexit ] ; 9 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  switch i32 %.val2548, label %.loopexitthread-pre-split [
    i32 92, label %bb.e
    i32 91, label %.preheader
    i32 40, label %bb.t
  ]

.preheader:                                       ; preds = %bb.d
  %.val2439 = load i32, ptr %i.a, align 4         ; 2 uses
  %.not2040 = icmp eq i32 %.val2439, 2097152
  br i1 %.not2040, label %._crit_edge, label %.lr.ph43

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.loopexitthread-pre-split

.lr.ph43:                                         ; preds = %.preheader, %bb.s
  %.val2442 = phi i32 [ %.val24, %bb.s ], [ %.val2439, %.preheader ]
  %.01341 = phi i32 [ %.114, %bb.s ], [ 0, %.preheader ] ; 5 uses
  %.val1.i = load i32, ptr %i.e, align 8          ; 2 uses
  %.val2.i = load i32, ptr %i.b, align 8
  %i.n = icmp slt i32 %.val2.i, %.val1.i
  br i1 %i.n, label %bb.f, label %bb.n

bb.f:                                             ; preds = %.lr.ph43
  %i.o = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.p = load i64, ptr %i.g, align 8
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !5, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = load i8, ptr %i.k, align 1, !range !5, !noundef !6
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.k, align 1
  store i32 1, ptr %i.l, align 8
  %.val2.i.i = load i32, ptr %i.a, align 4        ; 2 uses
  %.val3.i.i = load i32, ptr %i.b, align 8
  %.not.i.i.i = icmp eq i32 %.val2.i.i, 2097152
  %i.v = icmp ult i32 %.val2.i.i, 65536
  %i.w = or i1 %.not.i.i.i, %i.v
  %.neg2.i.i.i = select i1 %i.w, i32 -1, i32 -2
  %i.x = add i32 %.neg2.i.i.i, %.val3.i.i
  store i32 %i.x, ptr %i.m, align 4
  store i32 2097152, ptr %i.a, align 4
  %.val.i.i = load i32, ptr %i.e, align 8
  store i32 %.val.i.i, ptr %i.b, align 8
  store i8 0, ptr %i.f, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit

bb.k:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.b, align 8              ; 3 uses
  %.val17.i.i = load ptr, ptr %i.h, align 8       ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %.val17.i.i, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32                   ; 4 uses
  %i.ad = add nsw i32 %i.y, 1                     ; 4 uses
  %.val18.i.i = load i32, ptr %i.i, align 8
  %.val19.i.i = load i8, ptr %i.j, align 4
  %i.ae = and i32 %.val18.i.i, 272
  %or.cond.i.i.i = icmp ne i32 %i.ae, 0
  %i.af = trunc nuw i8 %.val19.i.i to i1
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %i.af
  %.val.i3.i = load i32, ptr %i.e, align 8
  %i.ag = icmp slt i32 %i.ad, %.val.i3.i
  %or.cond.i.i = select i1 %spec.select.i.i.i, i1 %i.ag, i1 false
  %i.ah = and i32 %i.ac, 64512
  %i.ai = icmp eq i32 %i.ah, 55296
  %or.cond22.i.i = select i1 %or.cond.i.i, i1 %i.ai, i1 false
  br i1 %or.cond22.i.i, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %.val17.i.i, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = and i32 %i.am, 64512
  %i.ao = icmp eq i32 %i.an, 56320
  br i1 %i.ao, label %bb.m, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ap = shl nuw nsw i32 %i.ac, 10
  %i.aq = and i32 %i.ap, 1047552
  %i.ar = add nuw nsw i32 %i.aq, 65536
  %i.as = and i32 %i.am, 1023
  %i.at = or disjoint i32 %i.as, %i.ar
  %i.au = add nsw i32 %i.y, 2
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %.113.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.at, %bb.m ], [ %i.ac, %bb.l ]
  %.1.i.i = phi i32 [ %i.ad, %bb.k ], [ %i.au, %bb.m ], [ %i.ad, %bb.l ]
  store i32 %.1.i.i, ptr %i.b, align 8
  store i32 %.113.i.i, ptr %i.a, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit

bb.n:                                             ; preds = %.lr.ph43
  store i32 2097152, ptr %i.a, align 4
  %i.av = add nsw i32 %.val1.i, 1
  store i32 %i.av, ptr %i.b, align 8
  store i8 0, ptr %i.f, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit: ; preds = %bb.i, %bb.j, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i, %bb.n
  switch i32 %.val2442, label %bb.s [
    i32 92, label %bb.o
    i32 91, label %bb.p
    i32 93, label %bb.q
  ]

bb.o:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %bb.s

bb.p:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit
  %.val30 = load i32, ptr %i.i, align 8
  %i.aw = lshr i32 %.val30, 8
  %i.ax = and i32 %i.aw, 1
  %spec.select = add nsw i32 %i.ax, %.01341
  br label %bb.s

bb.q:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit
  %i.ay = icmp eq i32 %.01341, 0
  br i1 %i.ay, label %.loopexitthread-pre-split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = add nsw i32 %.01341, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit, %bb.r, %bb.o
  %.114 = phi i32 [ %.01341, %bb.o ], [ %.01341, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit ], [ %spec.select, %bb.p ], [ %i.az, %bb.r ]
  %.val24 = load i32, ptr %i.a, align 4           ; 2 uses
  %.not20 = icmp eq i32 %.val24, 2097152
  br i1 %.not20, label %._crit_edge, label %.lr.ph43, !llvm.loop !121

bb.t:                                             ; preds = %bb.d
  %.val23 = load i32, ptr %i.a, align 4
  %i.ba = icmp eq i32 %.val23, 63
  br i1 %i.ba, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
end_hunk_4
