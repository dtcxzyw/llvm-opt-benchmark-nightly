Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LzxDecoder?download=true
inline.NumInlined: 92
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN9NCompress4NLzx8CDecoder10ReadTablesEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i, %.lr.ph.i.i.i.i
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !44  ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i.i = icmp ult ptr %i.au, %i.av
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre5.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !45
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.ax, ptr %i.o, align 8, !tbaa !44
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !46
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i:            ; preds = %bb.l, %bb.k
  %i.az = phi ptr [ %.pre5.i.i.i.i, %bb.k ], [ %i.av, %bb.l ]
  %i.ba = phi ptr [ %.pre.i.i.i.i, %bb.k ], [ %i.ax, %bb.l ] ; 3 uses
  %.0.i.i.i.i.i = phi i8 [ %i.aw, %bb.k ], [ %i.ay, %bb.l ]
  %.not.i2.i.i.i.i = icmp ult ptr %i.ba, %i.az
  br i1 %.not.i2.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i
  %i.bb = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i

bb.n:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bc, ptr %i.o, align 8, !tbaa !44
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !46
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i:           ; preds = %bb.n, %bb.m
  %.0.i3.i.i.i.i = phi i8 [ %i.bb, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.bf = zext i8 %.0.i3.i.i.i.i to i32
  %i.bg = shl i32 %i.be, 16
  %i.bh = shl nuw nsw i32 %i.bf, 8
  %i.bi = or disjoint i32 %i.bg, %i.bh
  %i.bj = zext i8 %.0.i.i.i.i.i to i32
  %i.bk = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  store i32 %i.bk, ptr %i.aq, align 8, !tbaa !42
  %i.bl = load i32, ptr %i.p, align 4, !tbaa !43
  %i.bm = add i32 %i.bl, -16                      ; 3 uses
  store i32 %i.bm, ptr %i.p, align 4, !tbaa !43
  %i.bn = icmp ugt i32 %i.bm, 15
  br i1 %i.bn, label %bb.j, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit, !llvm.loop !1

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit:      ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i, %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit
  %i.bo = phi i32 [ %i.ar, %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit ], [ %i.bm, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i ] ; 3 uses
  %i.bp = phi i32 [ %i.ap, %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit ], [ %i.bk, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i ] ; 2 uses
  %i.bq = sub nuw nsw i32 15, %i.ao
  %i.br = lshr i32 %i.ap, %i.bq
  %i.bs = lshr i32 %i.br, 14
  %i.bt = and i32 %i.bs, 7                        ; 3 uses
  %i.bu = icmp samesign ugt i32 %i.bt, 3
  br i1 %i.bu, label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit.thread98, label %bb.o

bb.o:                                             ; preds = %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 7413
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39, !range !48, !noundef !49
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.by = add nuw nsw i32 %i.bo, 1                ; 2 uses
  store i32 %i.by, ptr %i.p, align 4, !tbaa !43
  %i.bz = icmp samesign ugt i32 %i.bo, 14
  br i1 %i.bz, label %.lr.ph.i.i.i.i28, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37

.lr.ph.i.i.i.i28:                                 ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35, %.lr.ph.i.i.i.i28
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !44  ; 3 uses
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i.i29 = icmp ult ptr %i.cb, %i.cc
  br i1 %.not.i.i.i.i.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i.i30 = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre5.i.i.i.i31 = load ptr, ptr %i.ca, align 8, !tbaa !45
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32

bb.s:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  store ptr %i.ce, ptr %i.o, align 8, !tbaa !44
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !46
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32:          ; preds = %bb.s, %bb.r
  %i.cg = phi ptr [ %.pre5.i.i.i.i31, %bb.r ], [ %i.cc, %bb.s ]
  %i.ch = phi ptr [ %.pre.i.i.i.i30, %bb.r ], [ %i.ce, %bb.s ] ; 3 uses
  %.0.i.i.i.i.i33 = phi i8 [ %i.cd, %bb.r ], [ %i.cf, %bb.s ]
  %.not.i2.i.i.i.i34 = icmp ult ptr %i.ch, %i.cg
  br i1 %.not.i2.i.i.i.i34, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32
  %i.ci = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35

bb.u:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.cj, ptr %i.o, align 8, !tbaa !44
  %i.ck = load i8, ptr %i.ch, align 1, !tbaa !46
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35:         ; preds = %bb.u, %bb.t
  %.0.i3.i.i.i.i36 = phi i8 [ %i.ci, %bb.t ], [ %i.ck, %bb.u ]
  %i.cl = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.cm = zext i8 %.0.i3.i.i.i.i36 to i32
  %i.cn = shl i32 %i.cl, 16
  %i.co = shl nuw nsw i32 %i.cm, 8
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = zext i8 %.0.i.i.i.i.i33 to i32
  %i.cr = or disjoint i32 %i.cp, %i.cq            ; 2 uses
  store i32 %i.cr, ptr %i.aq, align 8, !tbaa !42
  %i.cs = load i32, ptr %i.p, align 4, !tbaa !43
  %i.ct = add i32 %i.cs, -16                      ; 3 uses
  store i32 %i.ct, ptr %i.p, align 4, !tbaa !43
  %i.cu = icmp ugt i32 %i.ct, 15
  br i1 %i.cu, label %bb.q, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37, !llvm.loop !1

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37:    ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35, %bb.p
  %i.cv = phi i32 [ %i.by, %bb.p ], [ %i.ct, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35 ] ; 2 uses
  %i.cw = phi i32 [ %i.bp, %bb.p ], [ %i.cr, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35 ]
  %i.cx = lshr exact i32 -2147483648, %i.bo
  %i.cy = and i32 %i.cx, %i.bp
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.lr.ph.i.i.i.i38, label %bb.ab

.lr.ph.i.i.i.i38:                                 ; preds = %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37
  %i.cz = add nuw nsw i32 %i.cv, 16
  store i32 %i.cz, ptr %i.p, align 4, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45, %.lr.ph.i.i.i.i38
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !44  ; 3 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i.i39 = icmp ult ptr %i.db, %i.dc
  br i1 %.not.i.i.i.i.i39, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i.i40 = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre5.i.i.i.i41 = load ptr, ptr %i.da, align 8, !tbaa !45
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42

bb.x:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.de, ptr %i.o, align 8, !tbaa !44
  %i.df = load i8, ptr %i.db, align 1, !tbaa !46
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42:          ; preds = %bb.x, %bb.w
  %i.dg = phi ptr [ %.pre5.i.i.i.i41, %bb.w ], [ %i.dc, %bb.x ]
  %i.dh = phi ptr [ %.pre.i.i.i.i40, %bb.w ], [ %i.de, %bb.x ] ; 3 uses
  %.0.i.i.i.i.i43 = phi i8 [ %i.dd, %bb.w ], [ %i.df, %bb.x ]
  %.not.i2.i.i.i.i44 = icmp ult ptr %i.dh, %i.dg
  br i1 %.not.i2.i.i.i.i44, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42
  %i.di = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45

bb.z:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store ptr %i.dj, ptr %i.o, align 8, !tbaa !44
  %i.dk = load i8, ptr %i.dh, align 1, !tbaa !46
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45:         ; preds = %bb.z, %bb.y
  %.0.i3.i.i.i.i46 = phi i8 [ %i.di, %bb.y ], [ %i.dk, %bb.z ]
  %i.dl = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.dm = zext i8 %.0.i3.i.i.i.i46 to i32
  %i.dn = shl i32 %i.dl, 16
  %i.do = shl nuw nsw i32 %i.dm, 8
  %i.dp = or disjoint i32 %i.dn, %i.do
  %i.dq = zext i8 %.0.i.i.i.i.i43 to i32
  %i.dr = or disjoint i32 %i.dp, %i.dq
  store i32 %i.dr, ptr %i.aq, align 8, !tbaa !42
  %i.ds = load i32, ptr %i.p, align 4, !tbaa !43
  %i.dt = add i32 %i.ds, -16                      ; 2 uses
  store i32 %i.dt, ptr %i.p, align 4, !tbaa !43
  %i.du = icmp ugt i32 %i.dt, 15
  br i1 %i.du, label %bb.v, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit47, !llvm.loop !1

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit47:    ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45
  %i.dv = sub nuw nsw i32 15, %i.cv
  %i.dw = lshr i32 %i.cw, %i.dv
  %i.dx = lshr i32 %i.dw, 1
  %i.dy = and i32 %i.dx, 65535                    ; 2 uses
  br label %bb.ab

bb.aa:                                            ; preds = %bb.o
  %i.dz = tail call noundef i32 @_ZN9NCompress4NLzx10NBitStream8CDecoder11ReadBitsBigEj(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i32 noundef 24) ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit47, %bb.aa
  %.sink = phi i32 [ %i.dz, %bb.aa ], [ %i.dy, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit47 ], [ 32768, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37 ]
  %1 = phi i32 [ %i.dz, %bb.aa ], [ %i.dy, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit47 ], [ 0, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 7400
  store i32 %.sink, ptr %i.ea, align 8, !tbaa !50
  %i.eb = icmp eq i32 %i.bt, 3                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ed = zext i1 %i.eb to i8
  store i8 %i.ed, ptr %i.ec, align 8, !tbaa !51
  br i1 %i.eb, label %bb.ac, label %bb.ay

bb.ac:                                            ; preds = %bb.ab
  %i.ee = trunc i32 %1 to i8
  %i.ef = and i8 %i.ee, 1
  store i8 %i.ef, ptr %i.f, align 4, !tbaa !38
  %i.eg = load i32, ptr %i.p, align 4, !tbaa !43
  %reass.sub = and i32 %i.eg, -16
  %i.eh = add i32 %reass.sub, 16                  ; 2 uses
  store i32 %i.eh, ptr %i.p, align 4, !tbaa !43
  %.not102 = icmp eq i32 %i.eh, 0
  br i1 %.not102, label %.preheader, label %.lr.ph.i.i.i.i48

.lr.ph.i.i.i.i48:                                 ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55, %.lr.ph.i.i.i.i48
  %i.ej = load ptr, ptr %i.o, align 8, !tbaa !44  ; 3 uses
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i.i49 = icmp ult ptr %i.ej, %i.ek
  br i1 %.not.i.i.i.i.i49, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i.i50 = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre5.i.i.i.i51 = load ptr, ptr %i.ei, align 8, !tbaa !45
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52

bb.af:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 2 uses
  store ptr %i.em, ptr %i.o, align 8, !tbaa !44
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !46
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52:          ; preds = %bb.af, %bb.ae
  %i.eo = phi ptr [ %.pre5.i.i.i.i51, %bb.ae ], [ %i.ek, %bb.af ]
  %i.ep = phi ptr [ %.pre.i.i.i.i50, %bb.ae ], [ %i.em, %bb.af ] ; 3 uses
  %.0.i.i.i.i.i53 = phi i8 [ %i.el, %bb.ae ], [ %i.en, %bb.af ]
  %.not.i2.i.i.i.i54 = icmp ult ptr %i.ep, %i.eo
  br i1 %.not.i2.i.i.i.i54, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52
  %i.eq = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55

bb.ah:                                            ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.er, ptr %i.o, align 8, !tbaa !44
  %i.es = load i8, ptr %i.ep, align 1, !tbaa !46
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55:         ; preds = %bb.ah, %bb.ag
  %.0.i3.i.i.i.i56 = phi i8 [ %i.eq, %bb.ag ], [ %i.es, %bb.ah ]
  %i.et = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.eu = zext i8 %.0.i3.i.i.i.i56 to i32
  %i.ev = shl i32 %i.et, 16
  %i.ew = shl nuw nsw i32 %i.eu, 8
  %i.ex = or disjoint i32 %i.ev, %i.ew
  %i.ey = zext i8 %.0.i.i.i.i.i53 to i32
  %i.ez = or disjoint i32 %i.ex, %i.ey
  store i32 %i.ez, ptr %i.aq, align 8, !tbaa !42
  %i.fa = load i32, ptr %i.p, align 4, !tbaa !43
  %i.fb = add i32 %i.fa, -16                      ; 3 uses
  store i32 %i.fb, ptr %i.p, align 4, !tbaa !43
  %i.fc = icmp ugt i32 %i.fb, 15
  br i1 %i.fc, label %bb.ad, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit57, !llvm.loop !1

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit57:    ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55
  %i.fd = icmp eq i32 %i.fb, 0
  br i1 %i.fd, label %.preheader, label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit.thread98

.preheader:                                       ; preds = %bb.ac, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit57
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ff = load i32, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.fg = tail call i32 @llvm.fshl.i32(i32 %i.ff, i32 %i.ff, i32 16)
  store i32 32, ptr %i.p, align 4, !tbaa !43
  %i.fh = add i32 %i.fg, -1
  store i32 %i.fh, ptr %i.fe, align 8, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.fj = load ptr, ptr %i.o, align 8, !tbaa !44  ; 3 uses
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !45 ; 2 uses
  %.not.i.i58 = icmp ult ptr %i.fj, %i.fk
  br i1 %.not.i.i58, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader
  %i.fl = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre129 = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre130 = load ptr, ptr %i.fi, align 8, !tbaa !45
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61

bb.aj:                                            ; preds = %.preheader
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 2 uses
  store ptr %i.fm, ptr %i.o, align 8, !tbaa !44
  %i.fn = load i8, ptr %i.fj, align 1, !tbaa !46
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61: ; preds = %bb.ai, %bb.aj
  %i.fo = phi ptr [ %.pre130, %bb.ai ], [ %i.fk, %bb.aj ] ; 2 uses
  %i.fp = phi ptr [ %.pre129, %bb.ai ], [ %i.fm, %bb.aj ] ; 3 uses
  %.0.i.i60 = phi i8 [ %i.fl, %bb.ai ], [ %i.fn, %bb.aj ]
  %i.fq = zext i8 %.0.i.i60 to i32
  %.not.i.i58.1 = icmp ult ptr %i.fp, %i.fo
  br i1 %.not.i.i58.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61
  %i.fr = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre131 = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre132 = load ptr, ptr %i.fi, align 8, !tbaa !45
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1

bb.al:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  store ptr %i.fs, ptr %i.o, align 8, !tbaa !44
  %i.ft = load i8, ptr %i.fp, align 1, !tbaa !46
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1: ; preds = %bb.al, %bb.ak
  %i.fu = phi ptr [ %.pre132, %bb.ak ], [ %i.fo, %bb.al ] ; 2 uses
  %i.fv = phi ptr [ %.pre131, %bb.ak ], [ %i.fs, %bb.al ] ; 3 uses
  %.0.i.i60.1 = phi i8 [ %i.fr, %bb.ak ], [ %i.ft, %bb.al ]
  %i.fw = zext i8 %.0.i.i60.1 to i32
  %i.fx = shl nuw nsw i32 %i.fw, 8
  %i.fy = or disjoint i32 %i.fx, %i.fq
  %.not.i.i58.2 = icmp ult ptr %i.fv, %i.fu
  br i1 %.not.i.i58.2, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1
  %i.fz = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre133 = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre134 = load ptr, ptr %i.fi, align 8, !tbaa !45
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2

bb.an:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 2 uses
  store ptr %i.ga, ptr %i.o, align 8, !tbaa !44
  %i.gb = load i8, ptr %i.fv, align 1, !tbaa !46
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2: ; preds = %bb.an, %bb.am
  %i.gc = phi ptr [ %.pre134, %bb.am ], [ %i.fu, %bb.an ] ; 2 uses
  %i.gd = phi ptr [ %.pre133, %bb.am ], [ %i.ga, %bb.an ] ; 3 uses
  %.0.i.i60.2 = phi i8 [ %i.fz, %bb.am ], [ %i.gb, %bb.an ]
  %i.ge = zext i8 %.0.i.i60.2 to i32
  %i.gf = shl nuw nsw i32 %i.ge, 16
  %i.gg = or disjoint i32 %i.gf, %i.fy
  %.not.i.i58.3 = icmp ult ptr %i.gd, %i.gc
  br i1 %.not.i.i58.3, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2
  %i.gh = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre135 = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre136 = load ptr, ptr %i.fi, align 8, !tbaa !45
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3

bb.ap:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 2 uses
  store ptr %i.gi, ptr %i.o, align 8, !tbaa !44
  %i.gj = load i8, ptr %i.gd, align 1, !tbaa !46
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3: ; preds = %bb.ap, %bb.ao
  %i.gk = phi ptr [ %.pre136, %bb.ao ], [ %i.gc, %bb.ap ] ; 2 uses
  %i.gl = phi ptr [ %.pre135, %bb.ao ], [ %i.gi, %bb.ap ] ; 3 uses
  %.0.i.i60.3 = phi i8 [ %i.gh, %bb.ao ], [ %i.gj, %bb.ap ]
  %i.gm = zext i8 %.0.i.i60.3 to i32
  %i.gn = shl nuw i32 %i.gm, 24
  %i.go = or disjoint i32 %i.gn, %i.gg
  %i.gp = add i32 %i.go, -1
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !9
  %.not.i.i58.1124 = icmp ult ptr %i.gl, %i.gk
  br i1 %.not.i.i58.1124, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3
  %i.gr = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre137 = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre138 = load ptr, ptr %i.fi, align 8, !tbaa !45
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126

bb.ar:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 1 ; 2 uses
  store ptr %i.gs, ptr %i.o, align 8, !tbaa !44
  %i.gt = load i8, ptr %i.gl, align 1, !tbaa !46
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126: ; preds = %bb.ar, %bb.aq
  %i.gu = phi ptr [ %.pre138, %bb.aq ], [ %i.gk, %bb.ar ] ; 2 uses
  %i.gv = phi ptr [ %.pre137, %bb.aq ], [ %i.gs, %bb.ar ] ; 3 uses
  %.0.i.i60.1125 = phi i8 [ %i.gr, %bb.aq ], [ %i.gt, %bb.ar ]
  %i.gw = zext i8 %.0.i.i60.1125 to i32
  %.not.i.i58.1.1 = icmp ult ptr %i.gv, %i.gu
  br i1 %.not.i.i58.1.1, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126
  %i.gx = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre139 = load ptr, ptr %i.o, align 8, !tbaa !44
  %.pre140 = load ptr, ptr %i.fi, align 8, !tbaa !45
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1.1

bb.at:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1 ; 2 uses
  store ptr %i.gy, ptr %i.o, align 8, !tbaa !44
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !46
end_hunk_0
