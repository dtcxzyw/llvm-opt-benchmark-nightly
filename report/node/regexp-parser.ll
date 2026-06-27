inline.NumInlined: 2670
inline.NumDeleted: 831
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a

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
  %.0.i214 = phi i1 [ %i.wn, %bb.fu ], [ false, %bb.ft ], [ false, %bb.fq ], [ false, %bb.fq ], [ false, %bb.fr ], [ %i.wc, %bb.fs ]
  %i.wo = zext i1 %.0.i214 to i8                  ; 2 uses
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
  %i.yn = phi i8 [ %i.wo, %.lr.ph ], [ %4, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174 ] ; 2 uses
  %.val11.i110 = load i32, ptr %i.cj, align 4     ; 3 uses
  switch i32 %.val11.i110, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread [
    i32 93, label %bb.hj
    i32 38, label %bb.gi
  ]

bb.gi:                                            ; preds = %bb.gh
  %.val.i199 = load i32, ptr %i.ae, align 8       ; 3 uses
  %.val1.i200 = load i32, ptr %i.af, align 8      ; 3 uses
  %i.yo = icmp slt i32 %.val1.i200, %.val.i199
  br i1 %i.yo, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203: ; preds = %bb.gi
  %.val2.i202 = load ptr, ptr %i.vj, align 8
  %i.yp = sext i32 %.val1.i200 to i64
  %i.yq = getelementptr inbounds i8, ptr %.val2.i202, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1
  %.not7.i114 = icmp eq i8 %i.yr, 38
  br i1 %.not7.i114, label %bb.gk, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread: ; preds = %bb.gh, %bb.gi, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203
  %i.ys = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.gj

bb.gj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread
  store i8 1, ptr %i.qs, align 1
  store i32 30, ptr %i.yl, align 8
  %.val3.i194 = load i32, ptr %i.af, align 8
  %.not.i.i195 = icmp eq i32 %.val11.i110, 2097152
  %i.yu = icmp ult i32 %.val11.i110, 65536
  %i.yv = or i1 %.not.i.i195, %i.yu
  %.neg2.i.i196 = select i1 %i.yv, i32 -1, i32 -2
  %i.yw = add i32 %.val3.i194, %.neg2.i.i196
  store i32 %i.yw, ptr %i.ym, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i197 = load i32, ptr %i.ae, align 8
  store i32 %.val.i197, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.gk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203
  %i.yx = add nsw i32 %.val1.i200, 1              ; 2 uses
  store i32 %i.yx, ptr %i.af, align 8
  %i.yy = icmp slt i32 %i.yx, %.val.i199
  br i1 %i.yy, label %bb.gl, label %bb.gr

bb.gl:                                            ; preds = %bb.gk
  %i.yz = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.za = load i64, ptr %i.yk, align 8
  %i.zb = icmp ult i64 %i.yz, %i.za
  br i1 %i.zb, label %bb.gm, label %bb.gq

bb.gm:                                            ; preds = %bb.gl
  %i.zc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !5, !noundef !6
  %i.zd = trunc nuw i8 %i.zc to i1
  br i1 %i.zd, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.ze = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192thread-pre-split, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  store i8 1, ptr %i.qs, align 1
  store i32 1, ptr %i.yl, align 8
  %.val2.i.i.i187 = load i32, ptr %i.cj, align 4  ; 2 uses
  %.val3.i.i.i188 = load i32, ptr %i.af, align 8
  %.not.i.i.i.i189 = icmp eq i32 %.val2.i.i.i187, 2097152
  %i.zg = icmp ult i32 %.val2.i.i.i187, 65536
  %i.zh = or i1 %.not.i.i.i.i189, %i.zg
  %.neg2.i.i.i.i190 = select i1 %i.zh, i32 -1, i32 -2
  %i.zi = add i32 %.neg2.i.i.i.i190, %.val3.i.i.i188
  store i32 %i.zi, ptr %i.ym, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i.i.i191 = load i32, ptr %i.ae, align 8
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread.sink.split

bb.gq:                                            ; preds = %bb.gl
  %i.zj = load i32, ptr %i.af, align 8            ; 2 uses
  %.val.i3.i.i186 = load ptr, ptr %i.vj, align 8
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds i8, ptr %.val.i3.i.i186, i64 %i.zk
  %i.zm = load i8, ptr %i.zl, align 1
  %i.zn = add nsw i32 %i.zj, 1
  store i32 %i.zn, ptr %i.af, align 8
  %i.zo = zext i8 %i.zm to i32                    ; 2 uses
  store i32 %i.zo, ptr %i.cj, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192

bb.gr:                                            ; preds = %bb.gk
  store i32 2097152, ptr %i.cj, align 4
  %i.zp = add nsw i32 %.val.i199, 1
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread.sink.split

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192thread-pre-split: ; preds = %bb.go
  %.val.i115.pr = load i32, ptr %i.cj, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192thread-pre-split, %bb.gq
  %.val.i115 = phi i32 [ %.val.i115.pr, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192thread-pre-split ], [ %i.zo, %bb.gq ]
  %i.zq = icmp eq i32 %.val.i115, 38
  br i1 %i.zq, label %bb.gs, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread

bb.gs:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192
  %i.zr = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store i8 1, ptr %i.qs, align 1
  store i32 31, ptr %i.yl, align 8
  %.val3.i179 = load i32, ptr %i.af, align 8
  %i.zt = add i32 %.val3.i179, -1
  store i32 %i.zt, ptr %i.ym, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i182 = load i32, ptr %i.ae, align 8
  store i32 %.val.i182, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread.sink.split: ; preds = %bb.gp, %bb.gr
  %.sink = phi i32 [ %i.zp, %bb.gr ], [ %.val.i.i.i191, %bb.gp ]
  store i32 %.sink, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread.sink.split, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.zu = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.m) ; 7 uses
  %i.zv = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.zw = trunc nuw i8 %i.zv to i1
  br i1 %i.zw, label %.critedge9.i117, label %bb.gu

bb.gu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread
  %i.zx = load i32, ptr %i.m, align 4
  switch i32 %i.zx, label %bb.gy [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a
    i32 3, label %bb.gv
    i32 1, label %bb.gv
    i32 2, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu, %bb.gu
  %i.zy = load ptr, ptr %i.zu, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 152
  %i.aaa = load ptr, ptr %i.zz, align 8
  %i.aab = call noundef ptr %i.aaa(ptr noundef nonnull align 8 dereferenceable(8) %i.zu) #19, !inline_history !55
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8          ; 2 uses
  %.not.i.i176 = icmp eq ptr %i.aad, null
  br i1 %.not.i.i176, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177

bb.gw:                                            ; preds = %bb.gu
  %i.aae = load ptr, ptr %i.zu, align 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 144
  %i.aag = load ptr, ptr %i.aaf, align 8
  %i.aah = call noundef zeroext i1 %i.aag(ptr noundef nonnull align 8 dereferenceable(8) %i.zu) #19, !inline_history !55
  br i1 %i.aah, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aai = load ptr, ptr %i.zu, align 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 168
  %i.aak = load ptr, ptr %i.aaj, align 8
  %i.aal = call noundef ptr %i.aak(ptr noundef nonnull align 8 dereferenceable(8) %i.zu) #19, !inline_history !55
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 13
  %i.aan = load i8, ptr %i.aam, align 1, !range !5, !noundef !6
  %i.aao = trunc nuw i8 %i.aan to i1
  br i1 %i.aao, label %3, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a

bb.gy:                                            ; preds = %bb.gu
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177: ; preds = %bb.gv
  %1 = getelementptr inbounds nuw i8, ptr %i.aad, i64 48
  %2 = load i64, ptr %1, align 8
  %.fr = freeze i64 %2
  %.not356 = icmp eq i64 %.fr, 0
  br i1 %.not356, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a, label %3

3:                                                ; preds = %bb.gx, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a: ; preds = %bb.gv, %bb.gu, %bb.gu, %bb.gw, %bb.gx, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177, %3
  %4 = phi i8 [ %i.yn, %3 ], [ 0, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177 ], [ 0, %bb.gx ], [ 0, %bb.gw ], [ 0, %bb.gu ], [ 0, %bb.gu ], [ 0, %bb.gv ] ; 2 uses
  store i8 %4, ptr %i.k, align 1
  %.val13.i116 = load ptr, ptr %i.ck, align 8     ; 3 uses
  %i.aap = load i32, ptr %i.wz, align 4           ; 2 uses
  %i.aaq = load i32, ptr %i.wy, align 8           ; 3 uses
  %i.aar = icmp slt i32 %i.aap, %i.aaq
  br i1 %i.aar, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a
  %i.aas = load ptr, ptr %i.ww, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174

bb.ha:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a
  %i.aat = shl nsw i32 %i.aaq, 1
  %i.aau = or disjoint i32 %i.aat, 1              ; 2 uses
  %i.aav = icmp sgt i32 %i.aaq, -1
  br i1 %i.aav, label %bb.hc, label %bb.hb, !prof !11

bb.hb:                                            ; preds = %bb.ha
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.hc:                                            ; preds = %bb.ha
  %i.aaw = zext nneg i32 %i.aau to i64
  %i.aax = shl nuw nsw i64 %i.aaw, 3              ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.val13.i116, i64 24
  %i.aaz = load i64, ptr %i.aay, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %.val13.i116, i64 16 ; 3 uses
  %i.abb = load i64, ptr %i.aba, align 8          ; 2 uses
  %i.abc = sub i64 %i.aaz, %i.abb
  %i.abd = icmp ugt i64 %i.aax, %i.abc
  br i1 %i.abd, label %bb.hd, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168, !prof !7

bb.hd:                                            ; preds = %bb.hc
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val13.i116, i64 noundef %i.aax) #19
  %.pre.i.i.i.i.i.i173 = load i64, ptr %i.aba, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168: ; preds = %bb.hd, %bb.hc
  %i.abe = phi i64 [ %.pre.i.i.i.i.i.i173, %bb.hd ], [ %i.abb, %bb.hc ] ; 2 uses
  %i.abf = inttoptr i64 %i.abe to ptr             ; 5 uses
  %i.abg = add i64 %i.abe, %i.aax
  store i64 %i.abg, ptr %i.aba, align 8
  %i.abh = load i32, ptr %i.wz, align 4           ; 3 uses
  %i.abi = icmp sgt i32 %i.abh, 0
  br i1 %i.abi, label %bb.he, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169

bb.he:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168
  %i.abj = load ptr, ptr %i.ww, align 8           ; 3 uses
  switch i32 %i.abh, label %bb.hh [
    i32 2, label %bb.hg
    i32 1, label %bb.hf
  ]

bb.hf:                                            ; preds = %bb.he
  %i.abk = load i64, ptr %i.abj, align 1
  store i64 %i.abk, ptr %i.abf, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169

bb.hg:                                            ; preds = %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.abf, ptr noundef nonnull align 1 dereferenceable(16) %i.abj, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169

bb.hh:                                            ; preds = %bb.he
  %i.abl = zext nneg i32 %i.abh to i64
  %i.abm = shl nuw nsw i64 %i.abl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abf, ptr align 1 %i.abj, i64 %i.abm, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169: ; preds = %bb.hh, %bb.hg, %bb.hf, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i168
  store ptr %i.abf, ptr %i.ww, align 8
  store i32 %i.aau, ptr %i.wy, align 8
  %i.abn = load i32, ptr %i.wz, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174: ; preds = %bb.gz, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169
  %.sink12.i170 = phi i32 [ %i.abn, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169 ], [ %i.aap, %bb.gz ] ; 2 uses
  %.sink8.i171 = phi ptr [ %i.abf, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i169 ], [ %i.aas, %bb.gz ]
  %i.abo = add nsw i32 %.sink12.i170, 1
  store i32 %i.abo, ptr %i.wz, align 4
  %i.abp = sext i32 %.sink12.i170 to i64
  %i.abq = getelementptr inbounds [8 x i8], ptr %.sink8.i171, i64 %i.abp
  store ptr %i.zu, ptr %i.abq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  %.val18.i104 = load i8, ptr %i.yi, align 4, !range !5, !noundef !6
  %i.abr = trunc nuw i8 %.val18.i104 to i1
  br i1 %i.abr, label %bb.gh, label %.critedge.i105, !llvm.loop !56

.critedge.i105:                                   ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit210
  %i.abs = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.abt = trunc nuw i8 %i.abs to i1
  br i1 %i.abt, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.hi

bb.hi:                                            ; preds = %.critedge.i105
  store i8 1, ptr %i.qs, align 1
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.abu, align 8
  %.val2.i162 = load i32, ptr %i.cj, align 4      ; 2 uses
  %.val3.i163 = load i32, ptr %i.af, align 8
  %.not.i.i164 = icmp eq i32 %.val2.i162, 2097152
  %i.abv = icmp ult i32 %.val2.i162, 65536
  %i.abw = or i1 %.not.i.i164, %i.abv
  %.neg2.i.i165 = select i1 %i.abw, i32 -1, i32 -2
  %i.abx = add i32 %.neg2.i.i165, %.val3.i163
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.abx, ptr %i.aby, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i166 = load i32, ptr %i.ae, align 8
  store i32 %.val.i166, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.hj:                                            ; preds = %bb.gh
  %i.abz = trunc nuw i8 %i.yn to i1
  %or.cond.i108 = select i1 %i.ci, i1 %i.abz, i1 false
  br i1 %or.cond.i108, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.aca = load i8, ptr %i.qs, align 1, !range !5, !noundef !6
  %i.acb = trunc nuw i8 %i.aca to i1
  br i1 %i.acb, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  store i8 1, ptr %i.qs, align 1
  store i32 32, ptr %i.yl, align 8
  %.val3.i157 = load i32, ptr %i.af, align 8
  %i.acc = add i32 %.val3.i157, -1
  store i32 %i.acc, ptr %i.ym, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i160 = load i32, ptr %i.ae, align 8
  store i32 %.val.i160, ptr %i.af, align 8
  store i8 0, ptr %i.yi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.hm:                                            ; preds = %bb.hj
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !57
  %.val12.i109 = load ptr, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  store i32 1, ptr %i.n, align 4
  %i.acd = call noundef ptr @_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbS5_RPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val12.i109, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

.critedge9.i117:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEi.exit192.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit: ; preds = %bb.hl, %bb.hk, %bb.hi, %.critedge.i105, %bb.gt, %bb.gs, %bb.gj, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread, %bb.hm, %.critedge9.i117
  %.2.i107 = phi ptr [ null, %bb.gt ], [ null, %bb.gj ], [ null, %.critedge9.i117 ], [ null, %bb.hi ], [ %i.acd, %bb.hm ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread ], [ null, %bb.gs ], [ null, %.critedge.i105 ], [ null, %bb.hk ], [ null, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ks

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread: ; preds = %bb.fl, %bb.ea, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit98, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit, %bb.dz
  %i.ace = load i32, ptr %i.ab, align 4           ; 2 uses
  %i.acf = load ptr, ptr %i.aa, align 8           ; 3 uses
  %i.acg = load ptr, ptr %i.ac, align 8
  %i.ach = load i32, ptr %i.ad, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aci = zext i1 %i.ci to i8
  store i8 %i.aci, ptr %i.a, align 1
  store ptr %i.acf, ptr %i.b, align 8
  store ptr %i.acg, ptr %i.c, align 8
  store i32 %i.ach, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %.val41.i = load ptr, ptr %i.ck, align 8        ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.val41.i, i64 24 ; 2 uses
  %i.ack = load i64, ptr %i.acj, align 8
  %i.acl = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16 ; 6 uses
  %i.acm = load i64, ptr %i.acl, align 8          ; 2 uses
  %i.acn = sub i64 %i.ack, %i.acm
  %i.aco = icmp ult i64 %i.acn, 16
  br i1 %i.aco, label %bb.hn, label %bb.ho, !prof !7

bb.hn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val41.i, i64 noundef 16) #19
  %.pre.i.i314 = load i64, ptr %i.acl, align 8
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread, %bb.hn
  %i.acp = phi i64 [ %.pre.i.i314, %bb.hn ], [ %i.acm, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread ] ; 2 uses
  %i.acq = inttoptr i64 %i.acp to ptr             ; 8 uses
  %i.acr = add i64 %i.acp, 16
  store i64 %i.acr, ptr %i.acl, align 8
  store ptr null, ptr %i.acq, align 8
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acq, i64 8 ; 3 uses
  store i32 2, ptr %i.acs, align 8
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 12 ; 5 uses
  store i32 0, ptr %i.act, align 4
  %i.acu = load i64, ptr %i.acj, align 8
  %i.acv = load i64, ptr %i.acl, align 8          ; 2 uses
  %i.acw = sub i64 %i.acu, %i.acv
  %i.acx = icmp ult i64 %i.acw, 16
  br i1 %i.acx, label %bb.hp, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit315, !prof !7

bb.hp:                                            ; preds = %bb.ho
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val41.i, i64 noundef 16) #19
  %.pre.i.i.i.i313 = load i64, ptr %i.acl, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
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
  %.0.i180 = phi i1 [ %i.sg, %bb.ei ], [ false, %bb.eh ], [ false, %bb.ee ], [ false, %bb.ee ], [ false, %bb.ef ], [ %i.rv, %bb.eg ]
  %i.sh = zext i1 %.0.i180 to i8                  ; 2 uses
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
  %i.ud = phi i8 [ %4, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143 ], [ %i.sh, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176 ] ; 2 uses
  %.val11.i81 = load i32, ptr %i.ae, align 4      ; 3 uses
  switch i32 %.val11.i81, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread [
    i32 93, label %bb.fr
    i32 38, label %bb.ev
  ]

bb.ev:                                            ; preds = %.lr.ph
  %.val.i159 = load i32, ptr %i.qs, align 8       ; 2 uses
  %.val1.i160 = load i32, ptr %i.qt, align 8      ; 3 uses
  %i.ue = icmp slt i32 %.val1.i160, %.val.i159
  br i1 %i.ue, label %bb.ew, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread

bb.ew:                                            ; preds = %bb.ev
  %.val13.i.i162 = load ptr, ptr %i.qv, align 8
  %i.uf = sext i32 %.val1.i160 to i64
  %i.ug = getelementptr inbounds [2 x i8], ptr %.val13.i.i162, i64 %i.uf
  %i.uh = load i16, ptr %i.ug, align 2            ; 2 uses
  %i.ui = add nsw i32 %.val1.i160, 1              ; 2 uses
  %.val14.i.i163 = load i32, ptr %i.bm, align 8
  %.val15.i.i164 = load i8, ptr %i.ra, align 4
  %i.uj = and i32 %.val14.i.i163, 272
  %or.cond.i.i.i165 = icmp ne i32 %i.uj, 0
  %i.uk = trunc nuw i8 %.val15.i.i164 to i1
  %spec.select.i.i.i166 = select i1 %or.cond.i.i.i165, i1 true, i1 %i.uk
  %i.ul = icmp sge i32 %i.ui, %.val.i159
  %not.spec.select.i.i.i166 = xor i1 %spec.select.i.i.i166, true
  %or.cond.i.i167 = select i1 %not.spec.select.i.i.i166, i1 true, i1 %i.ul
  %i.um = and i16 %i.uh, -1024
  %i.un = icmp ne i16 %i.um, -10240
  %or.cond18.i.i168 = select i1 %or.cond.i.i167, i1 true, i1 %i.un
  %.not7.i85 = icmp eq i16 %i.uh, 38
  %or.cond316 = select i1 %or.cond18.i.i168, i1 %.not7.i85, i1 false
  br i1 %or.cond316, label %bb.ey, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread: ; preds = %bb.ew, %.lr.ph, %bb.ev
  %i.uo = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.up = trunc nuw i8 %i.uo to i1
  br i1 %i.up, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread
  store i8 1, ptr %i.mh, align 1
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 30, ptr %i.uq, align 8
  %.val3.i154 = load i32, ptr %i.qt, align 8
  %.not.i.i155 = icmp eq i32 %.val11.i81, 2097152
  %i.ur = icmp ult i32 %.val11.i81, 65536
  %i.us = or i1 %.not.i.i155, %i.ur
  %.neg2.i.i156 = select i1 %i.us, i32 -1, i32 -2
  %i.ut = add i32 %.val3.i154, %.neg2.i.i156
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ut, ptr %i.uu, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i157 = load i32, ptr %i.qs, align 8
  store i32 %.val.i157, ptr %i.qt, align 8
  store i8 0, ptr %i.ub, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.ey:                                            ; preds = %bb.ew
  store i32 %i.ui, ptr %i.qt, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %.val.i86 = load i32, ptr %i.ae, align 4
  %i.uv = icmp eq i32 %.val.i86, 38
  br i1 %i.uv, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.uw = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store i8 1, ptr %i.mh, align 1
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 31, ptr %i.uy, align 8
  %.val3.i148 = load i32, ptr %i.qt, align 8
  %i.uz = add i32 %.val3.i148, -1
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.uz, ptr %i.va, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i151 = load i32, ptr %i.qs, align 8
  store i32 %.val.i151, ptr %i.qt, align 8
  store i8 0, ptr %i.ub, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.fb:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.vb = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.m) ; 7 uses
  %i.vc = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %.critedge9.i88, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ve = load i32, ptr %i.m, align 4
  switch i32 %i.ve, label %bb.fg [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a
    i32 3, label %bb.fd
    i32 1, label %bb.fd
    i32 2, label %bb.fe
  ]

bb.fd:                                            ; preds = %bb.fc, %bb.fc
  %i.vf = load ptr, ptr %i.vb, align 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 152
  %i.vh = load ptr, ptr %i.vg, align 8
  %i.vi = call noundef ptr %i.vh(ptr noundef nonnull align 8 dereferenceable(8) %i.vb) #19, !inline_history !107
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8            ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.vk, null
  br i1 %.not.i.i145, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146

bb.fe:                                            ; preds = %bb.fc
  %i.vl = load ptr, ptr %i.vb, align 8
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 144
  %i.vn = load ptr, ptr %i.vm, align 8
  %i.vo = call noundef zeroext i1 %i.vn(ptr noundef nonnull align 8 dereferenceable(8) %i.vb) #19, !inline_history !107
  br i1 %i.vo, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.vp = load ptr, ptr %i.vb, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 168
  %i.vr = load ptr, ptr %i.vq, align 8
  %i.vs = call noundef ptr %i.vr(ptr noundef nonnull align 8 dereferenceable(8) %i.vb) #19, !inline_history !107
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 13
  %i.vu = load i8, ptr %i.vt, align 1, !range !5, !noundef !6
  %i.vv = trunc nuw i8 %i.vu to i1
  br i1 %i.vv, label %3, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a

bb.fg:                                            ; preds = %bb.fc
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146: ; preds = %bb.fd
  %1 = getelementptr inbounds nuw i8, ptr %i.vk, i64 48
  %2 = load i64, ptr %1, align 8
  %.fr = freeze i64 %2
  %.not321 = icmp eq i64 %.fr, 0
  br i1 %.not321, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a, label %3

3:                                                ; preds = %bb.ff, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a: ; preds = %bb.fd, %bb.fc, %bb.fc, %bb.fe, %bb.ff, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146, %3
  %4 = phi i8 [ %i.ud, %3 ], [ 0, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146 ], [ 0, %bb.ff ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fc ], [ 0, %bb.fd ] ; 2 uses
  store i8 %4, ptr %i.k, align 1
  %.val13.i87 = load ptr, ptr %i.ag, align 8      ; 3 uses
  %i.vw = load i32, ptr %i.ss, align 4            ; 2 uses
  %i.vx = load i32, ptr %i.sr, align 8            ; 3 uses
  %i.vy = icmp slt i32 %i.vw, %i.vx
  br i1 %i.vy, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a
  %i.vz = load ptr, ptr %i.sp, align 8
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143

bb.fi:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a
  %i.wa = shl nsw i32 %i.vx, 1
  %i.wb = or disjoint i32 %i.wa, 1                ; 2 uses
  %i.wc = icmp sgt i32 %i.vx, -1
  br i1 %i.wc, label %bb.fk, label %bb.fj, !prof !11

bb.fj:                                            ; preds = %bb.fi
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.fk:                                            ; preds = %bb.fi
  %i.wd = zext nneg i32 %i.wb to i64
  %i.we = shl nuw nsw i64 %i.wd, 3                ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.val13.i87, i64 24
  %i.wg = load i64, ptr %i.wf, align 8
  %i.wh = getelementptr inbounds nuw i8, ptr %.val13.i87, i64 16 ; 3 uses
  %i.wi = load i64, ptr %i.wh, align 8            ; 2 uses
  %i.wj = sub i64 %i.wg, %i.wi
  %i.wk = icmp ugt i64 %i.we, %i.wj
  br i1 %i.wk, label %bb.fl, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137, !prof !7

bb.fl:                                            ; preds = %bb.fk
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val13.i87, i64 noundef %i.we) #19
  %.pre.i.i.i.i.i.i142 = load i64, ptr %i.wh, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137: ; preds = %bb.fl, %bb.fk
  %i.wl = phi i64 [ %.pre.i.i.i.i.i.i142, %bb.fl ], [ %i.wi, %bb.fk ] ; 2 uses
  %i.wm = inttoptr i64 %i.wl to ptr               ; 5 uses
  %i.wn = add i64 %i.wl, %i.we
  store i64 %i.wn, ptr %i.wh, align 8
  %i.wo = load i32, ptr %i.ss, align 4            ; 3 uses
  %i.wp = icmp sgt i32 %i.wo, 0
  br i1 %i.wp, label %bb.fm, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138

bb.fm:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137
  %i.wq = load ptr, ptr %i.sp, align 8            ; 3 uses
  switch i32 %i.wo, label %bb.fp [
    i32 2, label %bb.fo
    i32 1, label %bb.fn
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.wr = load i64, ptr %i.wq, align 1
  store i64 %i.wr, ptr %i.wm, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.wm, ptr noundef nonnull align 1 dereferenceable(16) %i.wq, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138

bb.fp:                                            ; preds = %bb.fm
  %i.ws = zext nneg i32 %i.wo to i64
  %i.wt = shl nuw nsw i64 %i.ws, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wm, ptr align 1 %i.wq, i64 %i.wt, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138: ; preds = %bb.fp, %bb.fo, %bb.fn, %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i.i.i.i137
  store ptr %i.wm, ptr %i.sp, align 8
  store i32 %i.wb, ptr %i.sr, align 8
  %i.wu = load i32, ptr %i.ss, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143: ; preds = %bb.fh, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138
  %.sink12.i139 = phi i32 [ %i.wu, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138 ], [ %i.vw, %bb.fh ] ; 2 uses
  %.sink8.i140 = phi ptr [ %i.wm, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i138 ], [ %i.vz, %bb.fh ]
  %i.wv = add nsw i32 %.sink12.i139, 1
  store i32 %i.wv, ptr %i.ss, align 4
  %i.ww = sext i32 %.sink12.i139 to i64
  %i.wx = getelementptr inbounds [8 x i8], ptr %.sink8.i140, i64 %i.ww
  store ptr %i.vb, ptr %i.wx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  %.val18.i75 = load i8, ptr %i.ub, align 4, !range !5, !noundef !6
  %i.wy = trunc nuw i8 %.val18.i75 to i1
  br i1 %i.wy, label %.lr.ph, label %.critedge.i76, !llvm.loop !108

.critedge.i76:                                    ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176
  %i.wz = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.xa = trunc nuw i8 %i.wz to i1
  br i1 %i.xa, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.fq

bb.fq:                                            ; preds = %.critedge.i76
  store i8 1, ptr %i.mh, align 1
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.xb, align 8
  %.val2.i131 = load i32, ptr %i.ae, align 4      ; 2 uses
  %.val3.i132 = load i32, ptr %i.qt, align 8
  %.not.i.i133 = icmp eq i32 %.val2.i131, 2097152
  %i.xc = icmp ult i32 %.val2.i131, 65536
  %i.xd = or i1 %.not.i.i133, %i.xc
  %.neg2.i.i134 = select i1 %i.xd, i32 -1, i32 -2
  %i.xe = add i32 %.neg2.i.i134, %.val3.i132
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.xe, ptr %i.xf, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i135 = load i32, ptr %i.qs, align 8
  store i32 %.val.i135, ptr %i.qt, align 8
  store i8 0, ptr %i.ub, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.fr:                                            ; preds = %.lr.ph
  %i.xg = trunc nuw i8 %i.ud to i1
  %or.cond.i79 = select i1 %i.af, i1 %i.xg, i1 false
  br i1 %or.cond.i79, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  %i.xh = load i8, ptr %i.mh, align 1, !range !5, !noundef !6
  %i.xi = trunc nuw i8 %i.xh to i1
  br i1 %i.xi, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  store i8 1, ptr %i.mh, align 1
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 32, ptr %i.xj, align 8
  %.val3.i126 = load i32, ptr %i.qt, align 8
  %i.xk = add i32 %.val3.i126, -1
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.xk, ptr %i.xl, align 4
  store i32 2097152, ptr %i.ae, align 4
  %.val.i129 = load i32, ptr %i.qs, align 8
  store i32 %.val.i129, ptr %i.qt, align 8
  store i8 0, ptr %i.ub, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

bb.fu:                                            ; preds = %bb.fr
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !109
  %.val12.i80 = load ptr, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  store i32 1, ptr %i.n, align 4
  %i.xm = call noundef ptr @_ZN2v88internal4Zone3NewINS0_24RegExpClassSetExpressionEJNS3_13OperationTypeERbS5_RPNS0_8ZoneListIPNS0_10RegExpTreeEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val12.i80, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

.critedge9.i88:                                   ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassIntersectionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit: ; preds = %bb.ft, %bb.fs, %bb.fq, %.critedge.i76, %bb.fa, %bb.ez, %bb.ex, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread, %bb.fu, %.critedge9.i88
  %.2.i78 = phi ptr [ null, %bb.fa ], [ null, %bb.ex ], [ null, %.critedge9.i88 ], [ null, %bb.fq ], [ %i.xm, %bb.fu ], [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread ], [ null, %bb.ez ], [ null, %.critedge.i76 ], [ null, %bb.fs ], [ null, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.iu

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread: ; preds = %bb.dz, %bb.ct, %bb.dy, %bb.cs, %bb.cr
  %i.xn = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.xo = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.xp = load ptr, ptr %i.ac, align 8
  %i.xq = load i32, ptr %i.ad, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.xr = zext i1 %i.af to i8
  store i8 %i.xr, ptr %i.a, align 1
  store ptr %i.xo, ptr %i.b, align 8
  store ptr %i.xp, ptr %i.c, align 8
  store i32 %i.xq, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %.val41.i = load ptr, ptr %i.ag, align 8        ; 4 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.val41.i, i64 24 ; 2 uses
  %i.xt = load i64, ptr %i.xs, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16 ; 6 uses
  %i.xv = load i64, ptr %i.xu, align 8            ; 2 uses
  %i.xw = sub i64 %i.xt, %i.xv
  %i.xx = icmp ult i64 %i.xw, 16
  br i1 %i.xx, label %bb.fv, label %bb.fw, !prof !7

bb.fv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val41.i, i64 noundef 16) #19
  %.pre.i.i276 = load i64, ptr %i.xu, align 8
  br label %bb.fw

bb.fw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread, %bb.fv
  %i.xy = phi i64 [ %.pre.i.i276, %bb.fv ], [ %i.xv, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread ] ; 2 uses
  %i.xz = inttoptr i64 %i.xy to ptr               ; 8 uses
  %i.ya = add i64 %i.xy, 16
  store i64 %i.ya, ptr %i.xu, align 8
  store ptr null, ptr %i.xz, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 8 ; 3 uses
  store i32 2, ptr %i.yb, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 12 ; 5 uses
  store i32 0, ptr %i.yc, align 4
  %i.yd = load i64, ptr %i.xs, align 8
  %i.ye = load i64, ptr %i.xu, align 8            ; 2 uses
  %i.yf = sub i64 %i.yd, %i.ye
  %i.yg = icmp ult i64 %i.yf, 16
  br i1 %i.yg, label %bb.fx, label %_ZN2v88internal4Zone3NewINS0_8ZoneListIPNS0_10RegExpTreeEEEJiPS1_EEEPT_DpOT0_.exit277, !prof !7

bb.fx:                                            ; preds = %bb.fw
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE22ParseClassSetCharacterEv:bb.a
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
define internal fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %1) unnamed_addr #0 align 2 {
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
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ScanForCapturesENS1_18InClassEscapeStateE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 align 2 {
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
end_hunk_2
