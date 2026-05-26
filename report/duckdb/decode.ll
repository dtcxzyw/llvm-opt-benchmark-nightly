inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0_@_ZN13duckdb_brotliL15ReadHuffmanCodeEmmPNS_11HuffmanCodeEPmPNS_24BrotliDecoderStateStructE:.peel.begin
.lr.ph78.i:                                       ; preds = %.loopexit.i, %.lr.ph80.i
  %.23579.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.bu, %.loopexit.i ] ; 2 uses
  %i.bu = add nuw i64 %.23579.i, 1                ; 3 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %.23579.i
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !145
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.bx = add i64 %.076.i, 1                      ; 2 uses
  %.not38.i = icmp ugt i64 %i.bx, %i.az
  br i1 %.not38.i, label %.loopexit.i, label %bb.h, !llvm.loop !147

bb.h:                                             ; preds = %bb.g, %.lr.ph78.i
  %.076.i = phi i64 [ %i.bu, %.lr.ph78.i ], [ %i.bx, %bb.g ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %.076.i
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !145
  %i.ca = icmp eq i16 %i.bw, %i.bz
  br i1 %i.ca, label %.critedge, label %bb.g

_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit.loopexit214: ; preds = %.peel.begin
  %.phi.trans.insert256 = getelementptr inbounds nuw i8, ptr %4, i64 888
  %.pre257 = load i64, ptr %.phi.trans.insert256, align 8, !tbaa !144
  br label %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit: ; preds = %.loopexit.i, %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit.loopexit214
  %.pre259.a = phi i64 [ %.pre257, %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit.loopexit214 ], [ %i.az, %.loopexit.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 888
  %i.cc = icmp eq i64 %.pre259.a, 3
  br i1 %i.cc, label %.preheader, label %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit._crit_edge

.preheader:                                       ; preds = %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit
  %.promoted204 = load i64, ptr %i.d, align 8, !tbaa !53 ; 2 uses
  %i.cd = icmp eq i64 %.promoted204, 0
  br i1 %i.cd, label %.lr.ph205.split, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre258 = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ce = add i64 %.promoted204, -1
  br label %bb.i

.lr.ph205.split:                                  ; preds = %.preheader
  %.promoted209 = load ptr, ptr %i.e, align 8, !tbaa !47 ; 3 uses
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.cg = icmp eq ptr %.promoted209, %i.cf
  br i1 %i.cg, label %.thread, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit99

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit99: ; preds = %.lr.ph205.split
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ci = load i8, ptr %.promoted209, align 1, !tbaa !51
  %i.cj = zext i8 %i.ci to i64
  %i.ck = or i64 %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.promoted209, i64 1
  store ptr %i.cl, ptr %i.e, align 8, !tbaa !47
  br label %bb.i

.thread:                                          ; preds = %.lr.ph205.split
  store i32 3, ptr %i.b, align 8, !tbaa !69
  br label %.critedge

bb.i:                                             ; preds = %.preheader._crit_edge, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit99
  %i.cm = phi i64 [ %i.ck, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit99 ], [ %.pre258, %.preheader._crit_edge ] ; 2 uses
  %.lcssa = phi i64 [ 7, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit99 ], [ %i.ce, %.preheader._crit_edge ]
  %i.cn = and i64 %i.cm, 1
  store i64 %.lcssa, ptr %i.d, align 8, !tbaa !53
  %i.co = lshr i64 %i.cm, 1
  store i64 %i.co, ptr %i.a, align 8, !tbaa !54
  %i.cp = add nuw nsw i64 %i.cn, 3                ; 2 uses
  store i64 %i.cp, ptr %i.cb, align 8, !tbaa !144
  br label %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit._crit_edge

_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit._crit_edge: ; preds = %.preheader.i, %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit, %bb.i
  %i.cq = phi i64 [ %i.cp, %bb.i ], [ %.pre259.a, %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit ], [ 0, %.preheader.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 1048
  %i.cs = trunc i64 %i.cq to i32
  %i.ct = tail call noundef i32 @_ZN13duckdb_brotli29BrotliBuildSimpleHuffmanTableEPNS_11HuffmanCodeEiPtj(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %i.cr, i32 noundef %i.cs)
  %.not88 = icmp eq ptr %3, null
  br i1 %.not88, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit._crit_edge
  %i.cu = zext i32 %i.ct to i64
  store i64 %i.cu, ptr %3, align 8, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN13duckdb_brotliL24ReadSimpleHuffmanSymbolsEmmPNS_24BrotliDecoderStateStructE.exit._crit_edge
  store i32 0, ptr %i.b, align 8, !tbaa !69
  br label %.critedge

.thread302:                                       ; preds = %bb.b
  store i64 32, ptr %i.g, align 8, !tbaa !148
  store i64 0, ptr %i.h, align 8, !tbaa !149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %i.j, i8 0, i64 30, i1 false)
  store i32 4, ptr %i.b, align 8, !tbaa !69
  br label %.lr.ph77.i

bb.l:                                             ; preds = %.peel.begin
  %.pre233 = load i64, ptr %i.h, align 8, !tbaa !149 ; 2 uses
  %.pre234 = load i64, ptr %i.g, align 8, !tbaa !148 ; 2 uses
  %.pre235 = load i64, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %i.cv = icmp ult i64 %.pre235, 18
  br i1 %i.cv, label %.lr.ph77.i, label %._crit_edge.i101

.lr.ph77.i:                                       ; preds = %.thread302, %bb.l
  %i.cw = phi i64 [ 0, %.thread302 ], [ %.pre233, %bb.l ]
  %i.cx = phi i64 [ 32, %.thread302 ], [ %.pre234, %bb.l ]
  %i.cy = phi i64 [ %i.v, %.thread302 ], [ %.pre235, %bb.l ]
  %.promoted82.i = load i64, ptr %i.d, align 8, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %.lr.ph77.i
  %i.cz = phi i64 [ %.promoted82.i, %.lr.ph77.i ], [ %i.dy, %bb.r ] ; 7 uses
  %.03875.i = phi i64 [ %i.cw, %.lr.ph77.i ], [ %.240.ph.i, %bb.r ] ; 3 uses
  %.04273.i = phi i64 [ %i.cx, %.lr.ph77.i ], [ %.244.ph.i, %bb.r ] ; 3 uses
  %.04671.i = phi i64 [ %i.cy, %.lr.ph77.i ], [ %i.ep, %bb.r ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotliL20kCodeLengthCodeOrderE, i64 %.04671.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !51
  %i.dc = icmp ult i64 %i.cz, 4
  br i1 %i.dc, label %.lr.ph.i, label %._ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit_crit_edge.i

._ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit_crit_edge.i: ; preds = %bb.m
  %.pre.i103 = load i64, ptr %i.a, align 8, !tbaa !54
  br label %_ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !48
  %.promoted70.i = load ptr, ptr %i.e, align 8, !tbaa !47 ; 3 uses
  %i.de = icmp eq ptr %.promoted70.i, %i.dd
  br i1 %i.de, label %bb.n, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i: ; preds = %.lr.ph.i
  %i.df = load i64, ptr %i.a, align 8, !tbaa !54
  %i.dg = load i8, ptr %.promoted70.i, align 1, !tbaa !51
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, %i.cz
  %i.dj = or i64 %i.di, %i.df
  %i.dk = or disjoint i64 %i.cz, 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.promoted70.i, i64 1
  store ptr %i.dl, ptr %i.e, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit.i

_ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit.i: ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i, %._ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit_crit_edge.i
  %i.dm = phi i64 [ %i.dj, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ], [ %.pre.i103, %._ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit_crit_edge.i ] ; 2 uses
  %i.dn = phi i64 [ %i.dk, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i ], [ %i.cz, %._ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit_crit_edge.i ]
  %i.do = and i64 %i.dm, 15                       ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotliL23kCodeLengthPrefixLengthE, i64 %i.do
  %.pre88.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !51
  %.pre90.i.a = zext i8 %.pre88.i to i64
  br label %.critedge.i

bb.n:                                             ; preds = %.lr.ph.i
  %.not48.i = icmp eq i64 %i.cz, 0
  br i1 %.not48.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !54
  %i.dq = and i64 %i.dp, 15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge.i = phi i64 [ %i.dq, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotliL23kCodeLengthPrefixLengthE, i64 %storemerge.i
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !51
  %i.dt = zext i8 %i.ds to i64                    ; 2 uses
  %.not49.i = icmp samesign ult i64 %i.cz, %i.dt
  br i1 %.not49.i, label %.thread62.i, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.p
  %.pre89.i = load i64, ptr %i.a, align 8, !tbaa !54
  br label %.critedge.i

.thread62.i:                                      ; preds = %bb.p
  store i64 %.04671.i, ptr %i.c, align 8, !tbaa !63
  store i64 %.03875.i, ptr %i.h, align 8, !tbaa !149
  store i64 %.04273.i, ptr %i.g, align 8, !tbaa !148
  store i32 4, ptr %i.b, align 8, !tbaa !69
  br label %.critedge

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit.i
  %.pre-phi.i = phi i64 [ %i.dt, %..critedge_crit_edge.i ], [ %.pre90.i.a, %_ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit.i ] ; 2 uses
  %i.du = phi i64 [ %.pre89.i, %..critedge_crit_edge.i ], [ %i.dm, %_ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit.i ]
  %i.dv = phi i64 [ %i.cz, %..critedge_crit_edge.i ], [ %i.dn, %_ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit.i ]
  %.151.i = phi i64 [ %storemerge.i, %..critedge_crit_edge.i ], [ %i.do, %_ZN13duckdb_brotliL17BrotliSafeGetBitsEPNS_15BrotliBitReaderEmPm.exit.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotliL22kCodeLengthPrefixValueE, i64 %.151.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !51  ; 3 uses
  %i.dy = sub i64 %i.dv, %.pre-phi.i              ; 2 uses
  store i64 %i.dy, ptr %i.d, align 8, !tbaa !53
  %i.dz = lshr i64 %i.du, %.pre-phi.i
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !54
  %i.ea = zext i8 %i.db to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ea
  store i8 %i.dx, ptr %i.eb, align 1, !tbaa !51
  %i.ec = shl nuw nsw i64 1, %.151.i
  %i.ed = and i64 %i.ec, 4369
  %.not50.not.i = icmp eq i64 %i.ed, 0
  br i1 %.not50.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge.i
  %i.ee = zext i8 %i.dx to i64
  %i.ef = zext nneg i8 %i.dx to i32
  %i.eg = lshr i32 32, %i.ef
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = sub i64 %.04273.i, %i.eh
  %.fr66.i = freeze i64 %i.ei                     ; 3 uses
  %i.ej = add i64 %.03875.i, 1                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ee ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !145
  %i.em = add i16 %i.el, 1
  store i16 %i.em, ptr %i.ek, align 2, !tbaa !145
  %i.en = add i64 %.fr66.i, -33
  %i.eo = icmp ult i64 %i.en, -32
  br i1 %i.eo, label %._crit_edge.i101, label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge.i
  %.244.ph.i = phi i64 [ %.04273.i, %.critedge.i ], [ %.fr66.i, %bb.q ] ; 2 uses
  %.240.ph.i = phi i64 [ %.03875.i, %.critedge.i ], [ %i.ej, %bb.q ] ; 2 uses
  %i.ep = add nuw nsw i64 %.04671.i, 1            ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.ep, 18
  br i1 %exitcond.not.i104, label %._crit_edge.i101, label %bb.m, !llvm.loop !150

._crit_edge.i101:                                 ; preds = %bb.r, %bb.q, %bb.l
  %.345.i = phi i64 [ %.pre234, %bb.l ], [ %.244.ph.i, %bb.r ], [ %.fr66.i, %bb.q ]
  %.341.i = phi i64 [ %.pre233, %bb.l ], [ %.240.ph.i, %bb.r ], [ %i.ej, %bb.q ]
  %i.eq = icmp eq i64 %.341.i, 1
  %i.er = icmp eq i64 %.345.i, 0
  %or.cond.i = select i1 %i.eq, i1 true, i1 %i.er
  %cond.fr = freeze i1 %or.cond.i
  br i1 %cond.fr, label %_ZN13duckdb_brotliL25ReadCodeLengthCodeLengthsEPNS_24BrotliDecoderStateStructE.exit, label %.critedge

_ZN13duckdb_brotliL25ReadCodeLengthCodeLengthsEPNS_24BrotliDecoderStateStructE.exit: ; preds = %._crit_edge.i101
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 912
  tail call void @_ZN13duckdb_brotli34BrotliBuildCodeLengthsHuffmanTableEPNS_11HuffmanCodeEPKhPt(ptr noundef nonnull %i.es, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 2488
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 1040
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !68 ; 3 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -32
  store <4 x i32> <i32 -16, i32 -15, i32 -14, i32 -13>, ptr %i.et, align 8, !tbaa !3
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 2504
  store <4 x i32> <i32 -12, i32 -11, i32 -10, i32 -9>, ptr %i.ex, align 8, !tbaa !3
  store <8 x i16> splat (i16 -1), ptr %i.ew, align 2, !tbaa !145
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 2520
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 -16
  store <4 x i32> <i32 -8, i32 -7, i32 -6, i32 -5>, ptr %i.ey, align 8, !tbaa !3
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 2536
  store <4 x i32> <i32 -4, i32 -3, i32 -2, i32 -1>, ptr %i.fa, align 8, !tbaa !3
  store <8 x i16> splat (i16 -1), ptr %i.ez, align 2, !tbaa !145
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 888
  store i64 0, ptr %i.fb, align 8, !tbaa !144
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 880
  store i64 8, ptr %i.fc, align 8, !tbaa !151
  store i64 0, ptr %i.h, align 8, !tbaa !149
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 872
  store i64 0, ptr %i.fd, align 8, !tbaa !152
  store i64 32768, ptr %i.g, align 8, !tbaa !148
  store i32 5, ptr %i.b, align 8, !tbaa !69
  br label %.loopexit161

.loopexit161.loopexit:                            ; preds = %.peel.begin
  %.pre238.pre.a = load i64, ptr %i.g, align 8, !tbaa !148
  %.pre237.pre = load i64, ptr %i.h, align 8, !tbaa !149
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 888
  %.pre236 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !144
  %.phi.trans.insert239 = getelementptr inbounds nuw i8, ptr %4, i64 880
  %.pre240 = load i64, ptr %.phi.trans.insert239, align 8, !tbaa !151
  %.phi.trans.insert241 = getelementptr inbounds nuw i8, ptr %4, i64 872
  %.pre242 = load i64, ptr %.phi.trans.insert241, align 8, !tbaa !152
  %.phi.trans.insert243 = getelementptr inbounds nuw i8, ptr %4, i64 1040
  %.pre244 = load ptr, ptr %.phi.trans.insert243, align 8, !tbaa !68
  br label %.loopexit161

.loopexit161:                                     ; preds = %.loopexit161.loopexit, %_ZN13duckdb_brotliL25ReadCodeLengthCodeLengthsEPNS_24BrotliDecoderStateStructE.exit
  %i.fe = phi ptr [ %.pre244, %.loopexit161.loopexit ], [ %i.ev, %_ZN13duckdb_brotliL25ReadCodeLengthCodeLengthsEPNS_24BrotliDecoderStateStructE.exit ] ; 6 uses
  %i.ff = phi i64 [ %.pre242, %.loopexit161.loopexit ], [ 0, %_ZN13duckdb_brotliL25ReadCodeLengthCodeLengthsEPNS_24BrotliDecoderStateStructE.exit ]
  %i.fg = phi i64 [ %.pre240, %.loopexit161.loopexit ], [ 8, %_ZN13duckdb_brotliL25ReadCodeLengthCodeLengthsEPNS_24BrotliDecoderStateStructE.exit ]
  %i.fh = phi i64 [ %.pre238.pre.a, %.loopexit161.loopexit ], [ 32768, %_ZN13duckdb_brotliL25ReadCodeLengthCodeLengthsEPNS_24BrotliDecoderStateStructE.exit ] ; 3 uses
  %i.fi = phi i64 [ %.pre237.pre, %.loopexit161.loopexit ], [ 0, %_ZN13duckdb_brotliL25ReadCodeLengthCodeLengthsEPNS_24BrotliDecoderStateStructE.exit ]
  %i.fj = phi i64 [ %.pre236, %.loopexit161.loopexit ], [ 0, %_ZN13duckdb_brotliL25ReadCodeLengthCodeLengthsEPNS_24BrotliDecoderStateStructE.exit ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 888 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 880 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 872 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 1040 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 2488 ; 4 uses
  %i.fp = tail call noundef i32 @_ZN13duckdb_brotli21BrotliWarmupBitReaderEPNS_15BrotliBitReaderE(ptr noundef nonnull %i.a)
  %.not.i105 = icmp eq i32 %i.fp, 0
  br i1 %.not.i105, label %.loopexit161._ZN13duckdb_brotliL21ReadSymbolCodeLengthsEmPNS_24BrotliDecoderStateStructE.exit.thread_crit_edge, label %.preheader.i106

.loopexit161._ZN13duckdb_brotliL21ReadSymbolCodeLengthsEmPNS_24BrotliDecoderStateStructE.exit.thread_crit_edge: ; preds = %.loopexit161
  %.promoted79.i.pre = load i64, ptr %i.fk, align 8, !tbaa !32
  %.pr.pre.pre = load i64, ptr %i.g, align 8, !tbaa !32
  br label %_ZN13duckdb_brotliL21ReadSymbolCodeLengthsEmPNS_24BrotliDecoderStateStructE.exit.thread

.preheader.i106:                                  ; preds = %.loopexit161
  %i.fq = icmp ult i64 %i.fj, %1
  %i.fr = icmp ne i64 %i.fh, 0
  %i.fs = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %i.fs, label %.lr.ph.i107, label %_ZN13duckdb_brotliL21ReadSymbolCodeLengthsEmPNS_24BrotliDecoderStateStructE.exit.thread149

.lr.ph.i107:                                      ; preds = %.preheader.i106
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !49
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 912
  %.promoted.i108 = load ptr, ptr %i.e, align 8, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %_ZN13duckdb_brotliL25ProcessRepeatedCodeLengthEmmmPmS0_S0_S0_S0_PtS1_Pi.exit.i, %.lr.ph.i107
  %i.fw = phi ptr [ %.promoted.i108, %.lr.ph.i107 ], [ %i.gg, %_ZN13duckdb_brotliL25ProcessRepeatedCodeLengthEmmmPmS0_S0_S0_S0_PtS1_Pi.exit.i ] ; 4 uses
  %.0108.i = phi i64 [ %i.ff, %.lr.ph.i107 ], [ %.1.i, %_ZN13duckdb_brotliL25ProcessRepeatedCodeLengthEmmmPmS0_S0_S0_S0_PtS1_Pi.exit.i ] ; 5 uses
  %.072107.i = phi i64 [ %i.fg, %.lr.ph.i107 ], [ %.173.i, %_ZN13duckdb_brotliL25ProcessRepeatedCodeLengthEmmmPmS0_S0_S0_S0_PtS1_Pi.exit.i ] ; 5 uses
  %.075106.i = phi i64 [ %i.fh, %.lr.ph.i107 ], [ %.176.i, %_ZN13duckdb_brotliL25ProcessRepeatedCodeLengthEmmmPmS0_S0_S0_S0_PtS1_Pi.exit.i ] ; 6 uses
  %.078105.i = phi i64 [ %i.fi, %.lr.ph.i107 ], [ %.179.i, %_ZN13duckdb_brotliL25ProcessRepeatedCodeLengthEmmmPmS0_S0_S0_S0_PtS1_Pi.exit.i ] ; 4 uses
  %.082104.i = phi i64 [ %i.fj, %.lr.ph.i107 ], [ %.183.i, %_ZN13duckdb_brotliL25ProcessRepeatedCodeLengthEmmmPmS0_S0_S0_S0_PtS1_Pi.exit.i ] ; 8 uses
  %.not97.i = icmp ult ptr %i.fw, %i.fu
  br i1 %.not97.i, label %bb.t, label %_ZN13duckdb_brotliL21ReadSymbolCodeLengthsEmPNS_24BrotliDecoderStateStructE.exit

bb.t:                                             ; preds = %bb.s
  %i.fx = load i64, ptr %i.d, align 8, !tbaa !53  ; 4 uses
  %i.fy = icmp ult i64 %i.fx, 33
  %.pre.i109 = load i64, ptr %i.a, align 8, !tbaa !54 ; 2 uses
  br i1 %i.fy, label %bb.u, label %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i

bb.u:                                             ; preds = %bb.t
  %.0.copyload.i.i = load i32, ptr %i.fw, align 1
  %i.fz = zext i32 %.0.copyload.i.i to i64
  %i.ga = shl nuw i64 %i.fz, %i.fx
  %i.gb = or i64 %i.ga, %.pre.i109
  %i.gc = add nuw nsw i64 %i.fx, 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 2 uses
  store ptr %i.gd, ptr %i.e, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i

_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i: ; preds = %bb.u, %bb.t
  %i.ge = phi i64 [ %i.fx, %bb.t ], [ %i.gc, %bb.u ]
  %i.gf = phi i64 [ %.pre.i109, %bb.t ], [ %i.gb, %bb.u ] ; 2 uses
  %i.gg = phi ptr [ %i.fw, %bb.t ], [ %i.gd, %bb.u ]
  %i.gh = and i64 %i.gf, 31
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gh ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 2, !tbaa !73
  %i.gk = zext i8 %i.gj to i64                    ; 2 uses
  %i.gl = sub i64 %i.ge, %i.gk                    ; 2 uses
  store i64 %i.gl, ptr %i.d, align 8, !tbaa !53
  %i.gm = lshr i64 %i.gf, %i.gk                   ; 3 uses
  store i64 %i.gm, ptr %i.a, align 8, !tbaa !54
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !75 ; 5 uses
  %i.gp = zext i16 %i.go to i64                   ; 3 uses
  %i.gq = icmp ult i16 %i.go, 16
  br i1 %i.gq, label %bb.v, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i

bb.v:                                             ; preds = %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i
  %.not.i.i = icmp eq i16 %i.go, 0
  br i1 %.not.i.i, label %_ZN13duckdb_brotliL23ProcessSingleCodeLengthEmPmS0_S0_S0_PtS1_Pi.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gr = trunc i64 %.082104.i to i16
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.gp ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %i.gu
  store i16 %i.gr, ptr %i.gv, align 2, !tbaa !145
  %i.gw = trunc i64 %.082104.i to i32
  store i32 %i.gw, ptr %i.gs, align 4, !tbaa !3
  %i.gx = zext nneg i16 %i.go to i32
  %i.gy = lshr exact i32 32768, %i.gx
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = sub i64 %.075106.i, %i.gz
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.gp ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !145
  %i.hd = add i16 %i.hc, 1
  store i16 %i.hd, ptr %i.hb, align 2, !tbaa !145
  br label %_ZN13duckdb_brotliL23ProcessSingleCodeLengthEmPmS0_S0_S0_PtS1_Pi.exit.i

_ZN13duckdb_brotliL23ProcessSingleCodeLengthEmPmS0_S0_S0_PtS1_Pi.exit.i: ; preds = %bb.w, %bb.v
  %.277.i = phi i64 [ %.075106.i, %bb.v ], [ %i.ha, %bb.w ]
  %.274.i = phi i64 [ %.072107.i, %bb.v ], [ %i.gp, %bb.w ]
  %i.he = add nuw i64 %.082104.i, 1
  br label %_ZN13duckdb_brotliL25ProcessRepeatedCodeLengthEmmmPmS0_S0_S0_S0_PtS1_Pi.exit.i

_ZN13duckdb_brotliL7BitMaskEm.exit.i:             ; preds = %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i
  %i.hf = icmp eq i16 %i.go, 16                   ; 2 uses
  %i.hg = select i1 %i.hf, i64 2, i64 3           ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !32
  %i.hj = and i64 %i.hi, %i.gm                    ; 3 uses
  %i.hk = sub i64 %i.gl, %i.hg
  store i64 %i.hk, ptr %i.d, align 8, !tbaa !53
  %i.hl = lshr i64 %i.gm, %i.hg
  store i64 %i.hl, ptr %i.a, align 8, !tbaa !54
  %spec.select96.i = select i1 %i.hf, i64 %.072107.i, i64 0 ; 2 uses
  %.not.i49.i = icmp eq i64 %.0108.i, %spec.select96.i
  br i1 %.not.i49.i, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i
  %.not51.i.i = icmp eq i64 %.078105.i, 0
  br i1 %.not51.i.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hm = add i64 %.078105.i, -2
  %i.hn = shl i64 %i.hm, %i.hg
  br label %.thread.i

.thread.i:                                        ; preds = %bb.y, %bb.x, %_ZN13duckdb_brotliL7BitMaskEm.exit.i
  %.27190.i = phi i64 [ %.0108.i, %bb.x ], [ %.0108.i, %bb.y ], [ %spec.select96.i, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ] ; 5 uses
  %.28089.i = phi i64 [ 0, %bb.x ], [ %.078105.i, %bb.y ], [ 0, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ] ; 3 uses
  %.381.i = phi i64 [ 0, %bb.x ], [ %i.hn, %bb.y ], [ 0, %_ZN13duckdb_brotliL7BitMaskEm.exit.i ] ; 3 uses
  %i.ho = add i64 %i.hj, 3
  %i.hp = add i64 %i.ho, %.381.i                  ; 3 uses
  %i.hq = sub i64 %i.hp, %.28089.i                ; 3 uses
  %i.hr = add i64 %i.hq, %.082104.i               ; 4 uses
  %i.hs = icmp ugt i64 %i.hr, %1
  br i1 %i.hs, label %_ZN13duckdb_brotliL21ReadSymbolCodeLengthsEmPNS_24BrotliDecoderStateStructE.exit.thread149, label %bb.z

bb.z:                                             ; preds = %.thread.i
  %.not52.i.i = icmp eq i64 %.27190.i, 0
  br i1 %.not52.i.i, label %_ZN13duckdb_brotliL25ProcessRepeatedCodeLengthEmmmPmS0_S0_S0_S0_PtS1_Pi.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.27190.i ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3  ; 2 uses
  %i.hv = add i64 %.381.i, 3
  %i.hw = add i64 %i.hv, %i.hj
  %i.hx = sub i64 %i.hw, %.28089.i
  %i.hy = add i64 %.381.i, 2
  %i.hz = add i64 %i.hy, %i.hj
  %i.ia = sub i64 %i.hz, %.28089.i
  %xtraiter = and i64 %i.hx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader
end_hunk_0
