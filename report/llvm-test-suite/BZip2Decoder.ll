inline.NumInlined: 186
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN9NCompress6NBZip28CDecoder10DecodeFileERbP21ICompressProgressInfo:bb.a

.lr.ph.i.i.i.i.i.preheader.1:                     ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i, %._crit_edge
  %i.az = phi i32 [ %i.ak, %._crit_edge ], [ %i.ax, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i ] ; 2 uses
  %i.ba = phi i32 [ %i.ai, %._crit_edge ], [ %i.aw, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i ] ; 2 uses
  %i.bb = sub i32 8, %i.aj
  %i.bc = lshr i32 %i.ai, %i.bb
  %i.bd = add nuw nsw i32 %i.az, 8                ; 2 uses
  store i32 %i.bd, ptr %i.ae, align 8, !tbaa !27
  br label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.preheader.1
  %i.be = phi i32 [ %i.bp, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.1 ], [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.1 ]
  %i.bf = phi i32 [ %i.bo, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.1 ], [ %i.ba, %.lr.ph.i.i.i.i.i.preheader.1 ]
  %i.bg = shl i32 %i.bf, 8
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !28 ; 3 uses
  %i.bi = load ptr, ptr %i.ah, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.1 = icmp ult ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.1
  %i.bj = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ag)
  %.pre1.i.i.i.i.i.1 = load i32, ptr %i.ae, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.1

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bk, ptr %i.ag, align 8, !tbaa !28
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.1

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.1:        ; preds = %bb.i, %bb.h
  %i.bm = phi i32 [ %.pre1.i.i.i.i.i.1, %bb.h ], [ %i.be, %bb.i ] ; 4 uses
  %.0.i.i.i.i.i.i.1 = phi i8 [ %i.bj, %bb.h ], [ %i.bl, %bb.i ]
  %i.bn = zext i8 %.0.i.i.i.i.i.i.1 to i32
  %i.bo = or disjoint i32 %i.bg, %i.bn            ; 4 uses
  store i32 %i.bo, ptr %i.af, align 4, !tbaa !20
  %i.bp = add i32 %i.bm, -8                       ; 3 uses
  store i32 %i.bp, ptr %i.ae, align 8, !tbaa !27
  %i.bq = icmp ugt i32 %i.bp, 7
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.preheader.2, !llvm.loop !31

.lr.ph.i.i.i.i.i.preheader.2:                     ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.1
  %i.br = sub i32 8, %i.az
  %i.bs = lshr i32 %i.ba, %i.br
  store i32 %i.bm, ptr %i.ae, align 8, !tbaa !27
  br label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.preheader.2
  %i.bt = phi i32 [ %i.ce, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.2 ], [ %i.bm, %.lr.ph.i.i.i.i.i.preheader.2 ]
  %i.bu = phi i32 [ %i.cd, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.2 ], [ %i.bo, %.lr.ph.i.i.i.i.i.preheader.2 ]
  %i.bv = shl i32 %i.bu, 8
  %i.bw = load ptr, ptr %i.ag, align 8, !tbaa !28 ; 3 uses
  %i.bx = load ptr, ptr %i.ah, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.2 = icmp ult ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i.i.i.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.2
  %i.by = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ag)
  %.pre1.i.i.i.i.i.2 = load i32, ptr %i.ae, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.2

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.bz, ptr %i.ag, align 8, !tbaa !28
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.2

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.2:        ; preds = %bb.k, %bb.j
  %i.cb = phi i32 [ %.pre1.i.i.i.i.i.2, %bb.j ], [ %i.bt, %bb.k ] ; 4 uses
  %.0.i.i.i.i.i.i.2 = phi i8 [ %i.by, %bb.j ], [ %i.ca, %bb.k ]
  %i.cc = zext i8 %.0.i.i.i.i.i.i.2 to i32
  %i.cd = or disjoint i32 %i.bv, %i.cc            ; 4 uses
  store i32 %i.cd, ptr %i.af, align 4, !tbaa !20
  %i.ce = add i32 %i.cb, -8                       ; 3 uses
  store i32 %i.ce, ptr %i.ae, align 8, !tbaa !27
  %i.cf = icmp ugt i32 %i.ce, 7
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.2, label %.lr.ph.i.i.i.i.i.preheader.3, !llvm.loop !31

.lr.ph.i.i.i.i.i.preheader.3:                     ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.2
  %i.cg = sub nuw nsw i32 16, %i.bm
  %i.ch = lshr i32 %i.bo, %i.cg
  store i32 %i.cb, ptr %i.ae, align 8, !tbaa !27
  br label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.preheader.3
  %i.ci = phi i32 [ %i.ct, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.3 ], [ %i.cb, %.lr.ph.i.i.i.i.i.preheader.3 ]
  %i.cj = phi i32 [ %i.cs, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.3 ], [ %i.cd, %.lr.ph.i.i.i.i.i.preheader.3 ]
  %i.ck = shl i32 %i.cj, 8
  %i.cl = load ptr, ptr %i.ag, align 8, !tbaa !28 ; 3 uses
  %i.cm = load ptr, ptr %i.ah, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.3 = icmp ult ptr %i.cl, %i.cm
  br i1 %.not.i.i.i.i.i.i.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.3
  %i.cn = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ag)
  %.pre1.i.i.i.i.i.3 = load i32, ptr %i.ae, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.3

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.co, ptr %i.ag, align 8, !tbaa !28
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.3

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.3:        ; preds = %bb.m, %bb.l
  %i.cq = phi i32 [ %.pre1.i.i.i.i.i.3, %bb.l ], [ %i.ci, %bb.m ]
  %.0.i.i.i.i.i.i.3 = phi i8 [ %i.cn, %bb.l ], [ %i.cp, %bb.m ]
  %i.cr = zext i8 %.0.i.i.i.i.i.i.3 to i32
  %i.cs = or disjoint i32 %i.ck, %i.cr            ; 2 uses
  store i32 %i.cs, ptr %i.af, align 4, !tbaa !20
  %i.ct = add i32 %i.cq, -8                       ; 3 uses
  store i32 %i.ct, ptr %i.ae, align 8, !tbaa !27
  %i.cu = icmp ugt i32 %i.ct, 7
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.3, label %_ZN9NCompress6NBZip28CDecoder8ReadByteEv.exit.3, !llvm.loop !31

_ZN9NCompress6NBZip28CDecoder8ReadByteEv.exit.3:  ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i.3
  %i.cv = sub nuw nsw i32 16, %i.cb
  %i.cw = lshr i32 %i.cd, %i.cv
  %i.cx = lshr i32 %i.cw, 16                      ; 2 uses
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = and i32 %i.bc, 16711680
  %i.da = icmp ne i32 %i.cz, 4325376
  %i.db = and i32 %i.bs, 16711680
  %i.dc = icmp ne i32 %i.db, 5898240
  %or.cond = select i1 %i.da, i1 true, i1 %i.dc
  %i.dd = and i32 %i.ch, 16711680
  %i.de = icmp ne i32 %i.dd, 6815744
  %or.cond17 = select i1 %or.cond, i1 true, i1 %i.de
  %i.df = add i8 %i.cy, -58
  %i.dg = icmp ult i8 %i.df, -9
  %or.cond25 = select i1 %or.cond17, i1 true, i1 %i.dg
  br i1 %or.cond25, label %.thread128, label %bb.n

bb.n:                                             ; preds = %_ZN9NCompress6NBZip28CDecoder8ReadByteEv.exit.3
  store i8 1, ptr %1, align 1, !tbaa !71
  %i.dh = and i32 %i.cx, 255
  %i.di = mul nuw nsw i32 %i.dh, 100000
  %i.dj = add nsw i32 %i.di, -4800000             ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28684
  store i32 0, ptr %i.dk, align 4, !tbaa !44
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28860
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !62, !range !63, !noundef !64
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 28864
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 28872 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.do, i8 0, i64 7, i1 false)
  %i.dq = tail call noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.dp) ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 28696 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !47
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 248
  %i.du = tail call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.dt) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 28984
  store i32 %i.dj, ptr %i.dv, align 8, !tbaa !74
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 28980 ; 2 uses
  store i32 0, ptr %i.dw, align 4, !tbaa !75
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 28976 ; 2 uses
  store i32 0, ptr %i.dx, align 8, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 28712 ; 2 uses
  %i.dz = tail call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.dy) ; 0 uses
  %i.ea = load i32, ptr %i.l, align 8, !tbaa !58
  %.not162 = icmp eq i32 %i.ea, 0
  br i1 %.not162, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.o, %.lr.ph155
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %.lr.ph155 ], [ 0, %bb.o ] ; 2 uses
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw [608 x i8], ptr %i.eb, i64 %indvars.iv168
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = tail call noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.ed) ; 0 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.ef = load i32, ptr %i.l, align 8, !tbaa !58
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp samesign ult i64 %indvars.iv.next169, %i.eg
  br i1 %i.eh, label %.lr.ph155, label %._crit_edge156, !llvm.loop !77

._crit_edge156:                                   ; preds = %.lr.ph155, %bb.o
  %i.ei = tail call noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.dy) ; 0 uses
  %i.ej = tail call noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.dp) ; 0 uses
  %i.ek = load i32, ptr %i.l, align 8, !tbaa !58
  %.not163 = icmp eq i32 %i.ek, 0
  br i1 %.not163, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %._crit_edge156, %.lr.ph159
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph159 ], [ 0, %._crit_edge156 ] ; 2 uses
  %i.el = load ptr, ptr %i.dr, align 8, !tbaa !47
  %i.em = getelementptr inbounds nuw [608 x i8], ptr %i.el, i64 %indvars.iv171
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 144
  %i.eo = tail call noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.en) ; 0 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.ep = load i32, ptr %i.l, align 8, !tbaa !58
  %i.eq = zext i32 %i.ep to i64
  %i.er = icmp samesign ult i64 %indvars.iv.next172, %i.eq
  br i1 %i.er, label %.lr.ph159, label %._crit_edge160, !llvm.loop !78

._crit_edge160:                                   ; preds = %.lr.ph159, %._crit_edge156
  %i.es = tail call noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.dp) ; 0 uses
  %i.et = load i32, ptr %i.dw, align 4, !tbaa !75 ; 2 uses
  %.not115.a = icmp eq i32 %i.et, 0
  br i1 %.not115.a, label %3, label %.thread128

3:                                                ; preds = %._crit_edge160
  %4 = load i32, ptr %i.dx, align 8, !tbaa !76    ; 2 uses
  %.not115 = icmp eq i32 %4, 0
  br i1 %.not115, label %bb.ab, label %.thread128

bb.p:                                             ; preds = %bb.n
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 28696
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !47 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 28672
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 18396
  br label %bb.q

bb.q:                                             ; preds = %bb.aa, %bb.p
  %i.fc = load i64, ptr %i.ew, align 8, !tbaa !79
  %i.fd = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.fe = load ptr, ptr %i.ex, align 8, !tbaa !80
  %i.ff = load i32, ptr %i.ae, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fg = load ptr, ptr %i.j, align 8, !tbaa !72
  %.not.i116 = icmp eq ptr %i.fg, null
  br i1 %.not.i116, label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit.thread, label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit

_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit.thread: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit: ; preds = %bb.q
  %i.fh = ptrtoint ptr %i.fd to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i32 32, %i.ff
  %i.fk = lshr i32 %i.fj, 3
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = load i64, ptr %i.ey, align 8, !tbaa !81
  %.neg142 = add i64 %i.fc, %i.fh
  %i.fn = add i64 %i.fi, %i.fl
  %i.fo = add i64 %i.fn, %i.fm
  %i.fp = sub i64 %.neg142, %i.fo
  store i64 %i.fp, ptr %i.c, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.fq = call noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ez)
  store i64 %i.fq, ptr %i.d, align 8, !tbaa !82
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !72  ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call noundef i32 %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d), !inline_history !83 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not110 = icmp eq i32 %i.fv, 0
  br i1 %.not110, label %bb.r, label %.thread128

bb.r:                                             ; preds = %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit.thread, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.fw = call noundef i32 @_ZN9NCompress6NBZip28CDecoder14ReadSignaturesERbRj(ptr noundef nonnull align 8 dereferenceable(28988) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %.not111 = icmp eq i32 %i.fw, 0
  br i1 %.not111, label %bb.s, label %.thread136

bb.s:                                             ; preds = %bb.r
  %i.fx = load i8, ptr %i.e, align 1, !tbaa !71, !range !63, !noundef !64
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %.thread136, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.fz = load ptr, ptr %i.ev, align 8, !tbaa !8
  %i.ga = call fastcc noundef i32 @_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb(ptr noundef nonnull %i.ae, ptr noundef %i.fz, i32 noundef %i.dj, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fb, ptr noundef %i.g, ptr noundef %i.h, ptr noundef nonnull %i.i)
  %.not112 = icmp eq i32 %i.ga, 0
  br i1 %.not112, label %bb.u, label %.thread139.a

.thread139.a:                                     ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.thread128

bb.u:                                             ; preds = %bb.t
  %i.gb = load ptr, ptr %i.ev, align 8, !tbaa !8  ; 8 uses
  %i.gc = load i32, ptr %i.g, align 4, !tbaa !4   ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 1024 ; 8 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %i.gc, i32 1) ; 2 uses
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ge = icmp ult i32 %i.gc, 2
  br i1 %i.ge, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.v
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %bb.u
  %indvars.iv.i = phi i64 [ 0, %bb.u ], [ %indvars.iv.next.i.3, %bb.w ] ; 5 uses
  %.01720.i = phi i32 [ 0, %bb.u ], [ %i.gt, %bb.w ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !4
  %i.gh = add i32 %i.gg, %.01720.i                ; 2 uses
  store i32 %.01720.i, ptr %i.gf, align 4, !tbaa !4
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.gl = add i32 %i.gk, %i.gh                    ; 2 uses
  store i32 %i.gh, ptr %i.gj, align 4, !tbaa !4
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !4
  %i.gp = add i32 %i.go, %i.gl                    ; 2 uses
  store i32 %i.gl, ptr %i.gn, align 4, !tbaa !4
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 12 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !4
  %i.gt = add i32 %i.gs, %i.gp
  store i32 %i.gp, ptr %i.gr, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %bb.v, label %bb.w, !llvm.loop !84

bb.x:                                             ; preds = %bb.x, %.new
  %indvars.iv22.i = phi i64 [ 0, %.new ], [ %indvars.iv.next23.i.1, %bb.x ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.x ]
  %i.gu = trunc nuw i64 %indvars.iv22.i to i32
  %i.gv = shl i32 %i.gu, 8
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv22.i
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !4
  %i.gy = and i32 %i.gx, 255
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gz ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4  ; 2 uses
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !4
  %i.hd = zext i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = or i32 %i.hf, %i.gv
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !4
  %indvars.iv.next23.i = or disjoint i64 %indvars.iv22.i, 1 ; 2 uses
  %i.hh = trunc nuw i64 %indvars.iv.next23.i to i32
  %i.hi = shl i32 %i.hh, 8
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next23.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !4
  %i.hl = and i32 %i.hk, 255
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4  ; 2 uses
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !4
  %i.hq = zext i32 %i.ho to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !4
  %i.ht = or i32 %i.hs, %i.hi
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !4
  %indvars.iv.next23.i.1 = add nuw nsw i64 %indvars.iv22.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, label %bb.x, !llvm.loop !85

_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, %bb.v
  %indvars.iv22.i.epil.init = phi i64 [ 0, %bb.v ], [ %indvars.iv.next23.i.1, %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod209 = trunc i32 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod209)
  %i.hu = trunc nuw i64 %indvars.iv22.i.epil.init to i32
  %i.hv = shl i32 %i.hu, 8
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv22.i.epil.init
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.hy = and i32 %i.hx, 255
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4  ; 2 uses
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !4
  %i.id = zext i32 %i.ib to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.id ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !4
  %i.ig = or i32 %i.if, %i.hv
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !4
  br label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit

_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit:     ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, %.epil.preheader
  %i.ih = load i8, ptr %i.i, align 1, !tbaa !71, !range !63, !noundef !64
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = load i32, ptr %i.h, align 4, !tbaa !4   ; 2 uses
  br i1 %i.ii, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit
  %i.ik = call fastcc noundef i32 @_ZN9NCompress6NBZip2L16DecodeBlock2RandEPKjjjR10COutBuffer(ptr noundef nonnull %i.gd, i32 noundef %i.gc, i32 noundef %i.ij, ptr noundef nonnull align 8 dereferenceable(49) %i.ez)
  br label %bb.aa

bb.z:                                             ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit
  %i.il = call fastcc noundef i32 @_ZN9NCompress6NBZip2L12DecodeBlock2EPKjjjR10COutBuffer(ptr noundef nonnull %i.gd, i32 noundef %i.gc, i32 noundef %i.ij, ptr noundef nonnull align 8 dereferenceable(49) %i.ez)
  br label %bb.aa

.thread136:                                       ; preds = %bb.r, %bb.s
  %.16.ph = phi i32 [ 0, %bb.s ], [ 1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.thread128

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.im = phi i32 [ %i.ik, %bb.y ], [ %i.il, %bb.z ]
  %i.in = load i32, ptr %i.f, align 4, !tbaa !4
  %.not113 = icmp eq i32 %i.im, %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br i1 %.not113, label %bb.q, label %.thread128, !llvm.loop !86

bb.ab:                                            ; preds = %3
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !79
  %i.iq = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !80
  %i.it = load i32, ptr %i.ae, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.iu = load ptr, ptr %i.j, align 8, !tbaa !72
  %.not.i118 = icmp eq ptr %i.iu, null
  br i1 %.not.i118, label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iv = ptrtoint ptr %i.iq to i64
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = sub i32 32, %i.it
  %i.iy = lshr i32 %i.ix, 3
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 28672
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !81
  %.neg147 = add i64 %i.ip, %i.iv
  %i.jc = add i64 %i.iw, %i.iz
  %i.jd = add i64 %i.jc, %i.jb
  %i.je = sub i64 %.neg147, %i.jd
  store i64 %i.je, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jg = tail call noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jf)
  store i64 %i.jg, ptr %i.b, align 8, !tbaa !82
  %i.jh = load ptr, ptr %i.j, align 8, !tbaa !72  ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !35
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = call noundef i32 %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b), !inline_history !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120

_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120: ; preds = %bb.ab, %bb.ac
  %.0.i119 = phi i32 [ %i.jl, %bb.ac ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread128

.thread128:                                       ; preds = %bb.c, %bb.d, %_ZN9NCompress6NBZip26CState5AllocEv.exit, %bb.e, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit, %bb.aa, %_ZN9NCompress6NBZip28CDecoder8ReadByteEv.exit.3, %3, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120, %.thread136, %.thread139.a, %._crit_edge160, %bb.a
  %.20 = phi i32 [ %i.fv, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit ], [ %i.k, %bb.a ], [ 0, %_ZN9NCompress6NBZip28CDecoder8ReadByteEv.exit.3 ], [ %.0.i119, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120 ], [ %4, %3 ], [ %.16.ph, %.thread136 ], [ %i.et, %._crit_edge160 ], [ 1, %.thread139.a ], [ 1, %bb.aa ], [ %i.w, %bb.c ], [ %i.aa, %bb.e ], [ -2147024882, %_ZN9NCompress6NBZip26CState5AllocEv.exit ], [ %i.y, %bb.d ]
  ret i32 %.20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy(ptr noundef nonnull align 8 dereferenceable(28988) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28672
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %i.g = sub i64 %1, %i.f
  store i64 %i.g, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
  store i64 %i.i, ptr %i.b, align 8, !tbaa !82
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %"struct.NCompress::CMtf8Decoder", align 8 ; 6 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 18 uses
  %i.c = alloca [258 x i8], align 16              ; 6 uses
  %.not = icmp eq ptr %7, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !20 ; 4 uses
  %.pre326 = load i32, ptr %0, align 8, !tbaa !27 ; 3 uses
  br i1 %.not, label %._crit_edge325, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %.pre326, 1                      ; 4 uses
  store i32 %i.d, ptr %0, align 8, !tbaa !27
  %i.e = icmp ugt i32 %i.d, 7
  br i1 %i.e, label %.lr.ph.i.i.i.i, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.h = phi i32 [ %i.d, %.lr.ph.i.i.i.i ], [ %i.s, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.i = phi i32 [ %.pre, %.lr.ph.i.i.i.i ], [ %i.r, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.j = shl i32 %i.i, 8
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !29
  %.not.i.i.i.i.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.f)
  %.pre1.i.i.i.i = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.n, ptr %i.f, align 8, !tbaa !28
  %i.o = load i8, ptr %i.k, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i:            ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %.pre1.i.i.i.i, %bb.d ], [ %i.h, %bb.e ]
  %.0.i.i.i.i.i = phi i8 [ %i.m, %bb.d ], [ %i.o, %bb.e ]
  %i.q = zext i8 %.0.i.i.i.i.i to i32
  %i.r = or disjoint i32 %i.j, %i.q               ; 3 uses
  store i32 %i.r, ptr %.phi.trans.insert, align 4, !tbaa !20
  %i.s = add i32 %i.p, -8                         ; 4 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !27
  %i.t = icmp ugt i32 %i.s, 7
  br i1 %i.t, label %bb.c, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit, !llvm.loop !31

_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i, %bb.b
  %i.u = phi i32 [ %i.d, %bb.b ], [ %i.s, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.v = phi i32 [ %.pre, %bb.b ], [ %i.r, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.w = sub i32 8, %.pre326
  %i.x = shl i32 8388608, %i.w
  %i.y = and i32 %i.x, %.pre
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %7, align 1, !tbaa !71
  br label %._crit_edge325

._crit_edge325:                                   ; preds = %bb.a, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit
  %i.ab = phi i32 [ %i.u, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit ], [ %.pre326, %bb.a ] ; 2 uses
  %i.ac = phi i32 [ %i.v, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit ], [ %.pre, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 11 uses
  %i.ae = add i32 %i.ab, 24                       ; 3 uses
  store i32 %i.ae, ptr %0, align 8, !tbaa !27
  %i.af = icmp ugt i32 %i.ae, 7
  br i1 %i.af, label %.lr.ph.i.i.i.i188, label %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit

.lr.ph.i.i.i.i188:                                ; preds = %._crit_edge325
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191, %.lr.ph.i.i.i.i188
  %i.ai = phi i32 [ %i.ae, %.lr.ph.i.i.i.i188 ], [ %i.at, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191 ]
  %i.aj = phi i32 [ %i.ac, %.lr.ph.i.i.i.i188 ], [ %i.as, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191 ]
  %i.ak = shl i32 %i.aj, 8
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !28 ; 3 uses
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !29
  %.not.i.i.i.i.i189 = icmp ult ptr %i.al, %i.am
  br i1 %.not.i.i.i.i.i189, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ag)
  %.pre1.i.i.i.i190 = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !28
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191:         ; preds = %bb.h, %bb.g
  %i.aq = phi i32 [ %.pre1.i.i.i.i190, %bb.g ], [ %i.ai, %bb.h ]
  %.0.i.i.i.i.i192 = phi i8 [ %i.an, %bb.g ], [ %i.ap, %bb.h ]
  %i.ar = zext i8 %.0.i.i.i.i.i192 to i32
  %i.as = or disjoint i32 %i.ak, %i.ar            ; 2 uses
  store i32 %i.as, ptr %i.ad, align 4, !tbaa !20
  %i.at = add i32 %i.aq, -8                       ; 3 uses
  store i32 %i.at, ptr %0, align 8, !tbaa !27
  %i.au = icmp ugt i32 %i.at, 7
  br i1 %i.au, label %bb.f, label %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit, !llvm.loop !31

_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191, %._crit_edge325
  %i.av = sub i32 8, %i.ab
  %i.aw = lshr i32 %i.ac, %i.av
  %i.ax = and i32 %i.aw, 16777215                 ; 2 uses
  store i32 %i.ax, ptr %6, align 4, !tbaa !4
  %.not172 = icmp ult i32 %i.ax, %2
  br i1 %.not172, label %bb.i, label %bb.be

bb.i:                                             ; preds = %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %8, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.pre327 = load i32, ptr %i.ad, align 4, !tbaa !20
  %.pre328 = load i32, ptr %0, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198
  %i.ba = phi i32 [ %.pre328, %bb.i ], [ %i.br, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 2 uses
  %i.bb = phi i32 [ %.pre327, %bb.i ], [ %i.bs, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 2 uses
  %i.bc = add i32 %i.ba, 1                        ; 4 uses
  store i32 %i.bc, ptr %0, align 8, !tbaa !27
  %i.bd = icmp ugt i32 %i.bc, 7
  br i1 %i.bd, label %.lr.ph.i.i.i.i193, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198

.lr.ph.i.i.i.i193:                                ; preds = %bb.j, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196
  %i.be = phi i32 [ %i.bp, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196 ], [ %i.bc, %bb.j ]
  %i.bf = phi i32 [ %i.bo, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196 ], [ %i.bb, %bb.j ]
  %i.bg = shl i32 %i.bf, 8
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !29
  %.not.i.i.i.i.i194 = icmp ult ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i194, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i193
  %i.bj = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ay)
  %.pre1.i.i.i.i195 = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196

bb.l:                                             ; preds = %.lr.ph.i.i.i.i193
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !28
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196:         ; preds = %bb.l, %bb.k
  %i.bm = phi i32 [ %.pre1.i.i.i.i195, %bb.k ], [ %i.be, %bb.l ]
  %.0.i.i.i.i.i197 = phi i8 [ %i.bj, %bb.k ], [ %i.bl, %bb.l ]
  %i.bn = zext i8 %.0.i.i.i.i.i197 to i32
  %i.bo = or disjoint i32 %i.bg, %i.bn            ; 3 uses
  store i32 %i.bo, ptr %i.ad, align 4, !tbaa !20
  %i.bp = add i32 %i.bm, -8                       ; 4 uses
end_hunk_0
