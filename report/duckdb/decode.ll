Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/decode?download=true
inline.NumInlined: 20
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN13duckdb_brotli29BrotliDecoderAttachDictionaryEPNS_24BrotliDecoderStateStructENS_26BrotliSharedDictionaryTypeEmPKh:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  store i32 0, ptr %i.ac, align 8, !tbaa !16
  store ptr %i.x, ptr %i.k, align 8, !tbaa !77
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !70
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !167 ; 2 uses
  %i.ad = icmp eq i32 %.pre.i, 15
  br i1 %i.ad, label %_ZN13duckdb_brotliL24AttachCompoundDictionaryEPNS_24BrotliDecoderStateStructEPKhm.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !80
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.thread.i
  %i.ae = phi ptr [ %.pre27, %.thread.i ], [ %i.m, %._crit_edge ] ; 2 uses
  %i.af = phi i32 [ 0, %.thread.i ], [ %.pre, %._crit_edge ]
  %.034.i = phi ptr [ %i.x, %.thread.i ], [ %i.u, %._crit_edge ] ; 4 uses
  %i.ag = phi i32 [ 0, %.thread.i ], [ %.pre.i, %._crit_edge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.034.i, i64 24
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  store ptr %i.p, ptr %i.aj, align 8, !tbaa !75
  %i.ak = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.ak, ptr %.034.i, align 8, !tbaa !167
  %i.al = trunc i64 %i.s to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.an = add nsw i32 %i.af, %i.al                ; 2 uses
  store i32 %i.an, ptr %i.am, align 4, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %.034.i, i64 152
  %i.ap = sext i32 %i.ak to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !16
  %i.ar = add nuw nsw i64 %.020, 1                ; 2 uses
  %i.as = load i32, ptr %i.ae, align 8, !tbaa !166
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %i.ar, %i.at
  br i1 %i.au, label %bb.c, label %_ZN13duckdb_brotliL24AttachCompoundDictionaryEPNS_24BrotliDecoderStateStructEPKhm.exit.thread, !llvm.loop !164

_ZN13duckdb_brotliL24AttachCompoundDictionaryEPNS_24BrotliDecoderStateStructEPKhm.exit.thread: ; preds = %bb.g, %bb.c, %bb.e, %bb.f, %.preheader, %bb.b, %bb.a
  %.015 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.preheader ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.015
}

declare noundef i32 @_ZN13duckdb_brotli28BrotliSharedDictionaryAttachEPNS_28BrotliSharedDictionaryStructENS_26BrotliSharedDictionaryTypeEmPKh(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli23BrotliDecoderDecompressEmPKhPmPh(i64 noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #1 !guid !168 {
bb.a:
  %4 = alloca %"struct.duckdb_brotli::BrotliDecoderStateStruct", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %0, ptr %i.b, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %1, ptr %i.c, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.f = load i64, ptr %2, align 8, !tbaa !76
  store i64 %i.f, ptr %i.d, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store ptr %3, ptr %i.e, align 8, !tbaa !75
  %i.g = call noundef i32 @_ZN13duckdb_brotli22BrotliDecoderStateInitEPNS_24BrotliDecoderStateStructEPFPvS2_mEPFvS2_S2_ES2_(ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef i32 @_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_(ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  %i.i = load i64, ptr %i.a, align 8, !tbaa !76
  store i64 %i.i, ptr %2, align 8, !tbaa !76
  call void @_ZN13duckdb_brotli25BrotliDecoderStateCleanupEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %4)
  %.not7 = icmp eq i32 %i.h, 1
  %spec.store.select = zext i1 %.not7 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %spec.store.select, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 !guid !182 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 40 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !76     ; 5 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85
  store i64 %i.f, ptr %5, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i32, ptr %i.g, align 8, !tbaa !86
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.du, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %3, align 8, !tbaa !76
  %.not358 = icmp eq i64 %i.j, 0
  br i1 %.not358, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not359 = icmp eq ptr %4, null
  br i1 %.not359, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %4, align 8, !tbaa !75
  %.not360 = icmp eq ptr %i.k, null
  br i1 %.not360, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = load i64, ptr %1, align 8, !tbaa !76
  %i.m = sub i64 %i.d, %i.l
  %i.n = tail call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -20, i64 noundef %i.m)
  br label %bb.du

bb.h:                                             ; preds = %bb.f, %bb.d
  %spec.select = phi ptr [ %4, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !87   ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %2, align 8, !tbaa !75     ; 3 uses
  %i.s = load i64, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.t, align 8, !tbaa !88
  %i.u = getelementptr i8, ptr %i.r, i64 %i.s
  br label %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !88
  %i.x = getelementptr i8, ptr %i.v, i64 %i.p
  br label %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407

_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407: ; preds = %bb.j, %bb.i
  %.sink707 = phi ptr [ %i.x, %bb.j ], [ %i.u, %bb.i ] ; 2 uses
  %.sink706 = phi i64 [ %i.p, %bb.j ], [ %i.s, %bb.i ]
  %.sink704 = phi ptr [ %i.v, %bb.j ], [ %i.r, %bb.i ]
  %.0312 = phi i32 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink707, ptr %i.y, align 8, !tbaa !89
  %i.z = add i64 %.sink706, -28
  %i.aa = icmp ult i64 %i.z, -29
  %i.ab = getelementptr i8, ptr %.sink707, i64 -27
  %spec.select701 = select i1 %i.aa, ptr %i.ab, ptr %.sink704
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %spec.select701, ptr %i.ac, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 18 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 25 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 17 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.az = getelementptr i8, ptr %0, i64 816       ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 848       ; 14 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2668 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 250
  %i.bs = getelementptr i8, ptr %0, i64 1392      ; 10 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 764 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 1392
  %scevgep736 = getelementptr i8, ptr %0, i64 848
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407
  %.1313 = phi i32 [ %.0312, %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407 ], [ %.1313.be, %.backedge.backedge ] ; 3 uses
  switch i32 %.1313, label %bb.t [
    i32 1, label %bb.v
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %.backedge
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !91
  %.not397 = icmp eq ptr %i.cf, null
  br i1 %.not397, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = call fastcc noundef i32 @_ZN13duckdb_brotliL15WriteRingBufferEPNS_24BrotliDecoderStateStructEPmPPhS2_i(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, i32 noundef 1) ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ci = load i64, ptr %i.o, align 8, !tbaa !87  ; 2 uses
  %.not398 = icmp eq i64 %i.ci, 0
  %i.cj = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 5 uses
  br i1 %.not398, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr %i.af, align 8, !tbaa !89
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.o, align 8, !tbaa !87
  %i.cm = load ptr, ptr %2, align 8, !tbaa !75    ; 3 uses
  %i.cn = load i64, ptr %1, align 8, !tbaa !76    ; 2 uses
  store ptr %i.cm, ptr %i.ae, align 8, !tbaa !88
  %i.co = getelementptr i8, ptr %i.cm, i64 %i.cn  ; 2 uses
  store ptr %i.co, ptr %i.af, align 8, !tbaa !89
  %i.cp = add i64 %i.cn, -28
  %i.cq = icmp ult i64 %i.cp, -29
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr i8, ptr %i.co, i64 -27
  store ptr %i.cr, ptr %i.ah, align 8, !tbaa !90
  br label %.backedge.backedge

bb.q:                                             ; preds = %bb.o
  store ptr %i.cm, ptr %i.ah, align 8, !tbaa !90
  br label %.backedge.backedge

bb.r:                                             ; preds = %bb.n
  %i.cs = load i64, ptr %1, align 8, !tbaa !76
  %.not401 = icmp eq i64 %i.cs, 0
  br i1 %.not401, label %.loopexit, label %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit

_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit: ; preds = %bb.r
  %i.ct = load ptr, ptr %2, align 8, !tbaa !75
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !92
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ci
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !92
  %i.cw = load i64, ptr %i.o, align 8, !tbaa !87  ; 2 uses
  %i.cx = add i64 %i.cw, 1                        ; 2 uses
  store i64 %i.cx, ptr %i.o, align 8, !tbaa !87
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !88
  %i.cy = getelementptr i8, ptr %i.ag, i64 %i.cx  ; 2 uses
  store ptr %i.cy, ptr %i.af, align 8, !tbaa !89
  %i.cz = add i64 %i.cw, -27
  %i.da = icmp ult i64 %i.cz, -29
  %i.db = getelementptr i8, ptr %i.cy, i64 -27
  %spec.select699 = select i1 %i.da, ptr %i.db, ptr %i.ag
  store ptr %spec.select699, ptr %i.ah, align 8, !tbaa !90
  %i.dc = load ptr, ptr %2, align 8, !tbaa !75
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store ptr %i.dd, ptr %2, align 8, !tbaa !75
  %i.de = load i64, ptr %1, align 8, !tbaa !76
  %i.df = add i64 %i.de, -1
  store i64 %i.df, ptr %1, align 8, !tbaa !76
  br label %.backedge.backedge

bb.s:                                             ; preds = %bb.m
  store ptr %i.cj, ptr %2, align 8, !tbaa !75
  %i.dg = load ptr, ptr %i.af, align 8, !tbaa !89 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.cj to i64
  %i.dj = sub i64 %i.dh, %i.di
  store i64 %i.dj, ptr %1, align 8, !tbaa !76
  %.not400595 = icmp eq ptr %i.dg, %i.cj
  br i1 %.not400595, label %.loopexit, label %.lr.ph597

.lr.ph597:                                        ; preds = %bb.s, %.lr.ph597
  %i.dk = phi ptr [ %i.dr, %.lr.ph597 ], [ %i.cj, %bb.s ]
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !92
  %i.dm = load i64, ptr %i.o, align 8, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dm
  store i8 %i.dl, ptr %i.dn, align 1, !tbaa !92
  %i.do = load i64, ptr %i.o, align 8, !tbaa !87
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.o, align 8, !tbaa !87
  %i.dq = load ptr, ptr %2, align 8, !tbaa !75
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 2 uses
  store ptr %i.dr, ptr %2, align 8, !tbaa !75
  %i.ds = load i64, ptr %1, align 8, !tbaa !76
  %i.dt = add i64 %i.ds, -1                       ; 2 uses
  store i64 %i.dt, ptr %1, align 8, !tbaa !76
  %.not400 = icmp eq i64 %i.dt, 0
  br i1 %.not400, label %.loopexit, label %.lr.ph597, !llvm.loop !169

bb.t:                                             ; preds = %.backedge
  %i.du = load i64, ptr %i.o, align 8, !tbaa !87
  %.not396 = icmp eq i64 %i.du, 0
  br i1 %.not396, label %_ZN13duckdb_brotliL21BrotliBitReaderUnloadEPNS_15BrotliBitReaderE.exit408, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.o, align 8, !tbaa !87
  br label %.loopexit

_ZN13duckdb_brotliL21BrotliBitReaderUnloadEPNS_15BrotliBitReaderE.exit408: ; preds = %bb.t
  %i.dv = load i64, ptr %i.ak, align 8, !tbaa !93 ; 2 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = load ptr, ptr %i.ae, align 8, !tbaa !88
  %i.dy = sub nsw i64 0, %i.dw
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 %i.dy ; 3 uses
  store ptr %i.dz, ptr %i.ae, align 8, !tbaa !88
  %i.ea = and i64 %i.dv, 7                        ; 2 uses
  store i64 %i.ea, ptr %i.ak, align 8, !tbaa !93
  %notmask.i425 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i425, -1
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !94
  %i.ed = and i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %i.c, align 8, !tbaa !94
  %i.ee = load ptr, ptr %i.af, align 8, !tbaa !89
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.dz to i64
  %i.eh = sub i64 %i.ef, %i.eg
  store i64 %i.eh, ptr %1, align 8, !tbaa !76
  store ptr %i.dz, ptr %2, align 8, !tbaa !75
  br label %.loopexit

bb.v:                                             ; preds = %.backedge
  %i.ei = load i32, ptr %0, align 8, !tbaa !67
  switch i32 %i.ei, label %.backedge.backedge [
    i32 0, label %bb.w
    i32 1, label %.preheader539
    i32 2, label %._crit_edge620
    i32 3, label %bb.an
    i32 4, label %bb.ao
    i32 17, label %.thread
    i32 18, label %bb.ay
    i32 19, label %._crit_edge624
    i32 20, label %bb.bf
    i32 21, label %bb.bg
    i32 11, label %bb.bl
    i32 12, label %bb.bn
    i32 5, label %.preheader544
    i32 6, label %._crit_edge
    i32 22, label %._crit_edge614
    i32 23, label %bb.bx
    i32 24, label %bb.cf
    i32 25, label %bb.co
    i32 7, label %bb.cr
    i32 8, label %bb.cr
    i32 9, label %bb.cr
    i32 10, label %bb.cr
    i32 13, label %bb.ct
    i32 15, label %bb.ct
    i32 16, label %bb.ct
    i32 14, label %bb.dk
    i32 26, label %bb.dr
  ]

.backedge.backedge:                               ; preds = %bb.v, %bb.ah, %bb.ai, %bb.av, %bb.ax, %bb.az, %bb.bc, %bb.bm, %bb.bo, %bb.dm, %bb.ao, %bb.au, %bb.at, %bb.ba, %bb.bl, %bb.bn, %bb.bt, %bb.cs, %bb.cr, %bb.ct, %bb.di, %bb.dh, %bb.de, %bb.dj, %bb.ds, %bb.w, %bb.al, %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit, %._crit_edge591, %bb.co, %bb.dk, %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit424, %bb.be, %bb.bf, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread503, %_ZN13duckdb_brotliL16ReadContextModesEPNS_24BrotliDecoderStateStructE.exit, %bb.cd, %.thread535, %bb.ad, %bb.ac, %bb.aj, %bb.bp, %_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit, %.loopexit540, %.lr.ph578, %.lr.ph, %bb.q, %bb.p, %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit
  %.1313.be = phi i32 [ 1, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit ], [ 1, %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.v ], [ %i.rr, %bb.cd ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.dm ], [ 2, %bb.w ], [ %i.gy, %bb.ao ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %bb.av ], [ 1, %bb.ax ], [ 1, %bb.az ], [ %i.ic, %bb.ba ], [ 1, %bb.bc ], [ -14, %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit ], [ %i.ir, %bb.be ], [ -15, %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit424 ], [ -30, %bb.al ], [ -13, %bb.ac ], [ %i.mh, %bb.bl ], [ 1, %bb.bm ], [ 2, %bb.bn ], [ 1, %bb.bo ], [ 2, %_ZN13duckdb_brotliL16ReadContextModesEPNS_24BrotliDecoderStateStructE.exit ], [ %i.og, %bb.bt ], [ %i.xi, %bb.cs ], [ %i.xg, %bb.cr ], [ 2, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread503 ], [ 2, %.lr.ph578 ], [ 2, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread ], [ %i.sx, %_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit ], [ %i.xj, %bb.ct ], [ 1, %.thread535 ], [ 1, %bb.de ], [ 1, %bb.dh ], [ 1, %bb.di ], [ 1, %bb.dj ], [ -27, %bb.co ], [ %i.aaz, %bb.ds ], [ -10, %bb.dk ], [ 1, %._crit_edge591 ], [ %i.ix, %bb.bf ], [ -13, %bb.ad ], [ -13, %bb.aj ], [ -21, %bb.bp ], [ 1, %.loopexit540 ], [ 2, %.lr.ph ]
  br label %.backedge, !llvm.loop !170

._crit_edge624:                                   ; preds = %bb.v
  %.pre625 = load i32, ptr %i.aq, align 4, !tbaa !95 ; 2 uses
  %.phi.trans.insert = sext i32 %.pre625 to i64
  %.phi.trans.insert626 = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.phi.trans.insert
  %.pre627 = load i64, ptr %.phi.trans.insert626, align 8, !tbaa !76
  br label %bb.be

._crit_edge620:                                   ; preds = %bb.v
  %.pre621 = load i32, ptr %i.aj, align 4
  br label %bb.al

._crit_edge614:                                   ; preds = %bb.v
  %.pre615 = load i64, ptr %i.av, align 8, !tbaa !76
  br label %bb.bt

._crit_edge:                                      ; preds = %bb.v
  %.pre613 = load i32, ptr %i.aq, align 4, !tbaa !95
  br label %bb.br

.preheader544:                                    ; preds = %bb.v
  %.promoted = load i64, ptr %i.ak, align 8, !tbaa !93 ; 4 uses
  %i.ej = icmp ult i64 %.promoted, 6
  br i1 %i.ej, label %.lr.ph, label %.preheader544._crit_edge

.preheader544._crit_edge:                         ; preds = %.preheader544
  %.pre = load i64, ptr %i.c, align 8, !tbaa !94
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a
  br label %bb.du

.thread681:                                       ; preds = %bb.ce
  store i32 0, ptr %i.aq, align 4, !tbaa !95
  store i32 24, ptr %0, align 8, !tbaa !67
  br label %bb.ci

bb.cf:                                            ; preds = %bb.v
  %.pre617 = load i32, ptr %i.aq, align 4, !tbaa !95 ; 4 uses
  switch i32 %.pre617, label %.thread531 [
    i32 0, label %bb.ci
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  br label %bb.ci

.thread531:                                       ; preds = %bb.cf
  %i.se = load i64, ptr %1, align 8, !tbaa !76
  %i.sf = sub i64 %i.d, %i.se
  %i.sg = call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -31, i64 noundef %i.sf)
  br label %bb.du

bb.ci:                                            ; preds = %.thread681, %bb.cf, %bb.ch, %bb.cg
  %i.sh = phi i32 [ %.pre617, %bb.ch ], [ %.pre617, %bb.cg ], [ %.pre617, %bb.cf ], [ 0, %.thread681 ]
  %.0 = phi ptr [ %i.bg, %bb.ch ], [ %i.be, %bb.cg ], [ %i.bd, %bb.cf ], [ %i.bd, %.thread681 ] ; 5 uses
  %i.si = load i32, ptr %i.bh, align 8, !tbaa !183
  %.not.i449 = icmp eq i32 %i.si, 1
  br i1 %.not.i449, label %._crit_edge26.i, label %bb.cj

._crit_edge26.i:                                  ; preds = %bb.ci
  %.pre.i453 = load i32, ptr %i.bj, align 4, !tbaa !187
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.sj = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !188
  store ptr %i.sk, ptr %i.bi, align 8, !tbaa !189
  store i32 0, ptr %i.bj, align 4, !tbaa !187
  store i32 1, ptr %i.bh, align 8, !tbaa !183
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge26.i
  %i.sl = phi i32 [ %.pre.i453, %._crit_edge26.i ], [ 0, %bb.cj ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.0, i64 20 ; 2 uses
  %i.sn = load i16, ptr %i.sm, align 4, !tbaa !190
  %i.so = zext i16 %i.sn to i32
  %i.sp = icmp slt i32 %i.sl, %i.so
  br i1 %i.sp, label %.lr.ph.i451, label %.loopexit540

.lr.ph.i451:                                      ; preds = %bb.ck
  %i.sq = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.sr = getelementptr inbounds nuw i8, ptr %.0, i64 18
  %.pre27.i = load ptr, ptr %i.bi, align 8, !tbaa !189
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cm, %.lr.ph.i451
  %i.ss = phi ptr [ %.pre27.i, %.lr.ph.i451 ], [ %i.te, %bb.cm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.st = load i16, ptr %i.sq, align 8, !tbaa !191
  %i.su = zext i16 %i.st to i64
  %i.sv = load i16, ptr %i.sr, align 2, !tbaa !192
  %i.sw = zext i16 %i.sv to i64
  %i.sx = call fastcc noundef i32 @_ZN13duckdb_brotliL15ReadHuffmanCodeEmmPNS_11HuffmanCodeEPmPNS_24BrotliDecoderStateStructE(i64 noundef %i.su, i64 noundef %i.sw, ptr noundef %i.ss, ptr noundef nonnull %i.a, ptr noundef nonnull %0) ; 2 uses
  %.not23.i = icmp eq i32 %i.sx, 1
  br i1 %.not23.i, label %bb.cm, label %_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit

bb.cm:                                            ; preds = %bb.cl
  %i.sy = load ptr, ptr %i.bi, align 8, !tbaa !189 ; 2 uses
  %i.sz = load ptr, ptr %.0, align 8, !tbaa !193
  %i.ta = load i32, ptr %i.bj, align 4, !tbaa !187 ; 2 uses
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.tb
  store ptr %i.sy, ptr %i.tc, align 8, !tbaa !121
  %i.td = load i64, ptr %i.a, align 8, !tbaa !76
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.td ; 2 uses
  store ptr %i.te, ptr %i.bi, align 8, !tbaa !189
  %i.tf = add nsw i32 %i.ta, 1                    ; 2 uses
  store i32 %i.tf, ptr %i.bj, align 4, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.tg = load i16, ptr %i.sm, align 4, !tbaa !190
  %i.th = zext i16 %i.tg to i32
  %i.ti = icmp slt i32 %i.tf, %i.th
  br i1 %i.ti, label %bb.cl, label %.loopexit540.loopexit, !llvm.loop !173

_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.backedge.backedge

.loopexit540.loopexit:                            ; preds = %bb.cm
  %.pre618 = load i32, ptr %i.aq, align 4, !tbaa !95
  br label %.loopexit540

.loopexit540:                                     ; preds = %.loopexit540.loopexit, %bb.ck
  %i.tj = phi i32 [ %.pre618, %.loopexit540.loopexit ], [ %i.sh, %bb.ck ] ; 2 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !183
  %i.tk = add nsw i32 %i.tj, 1
  store i32 %i.tk, ptr %i.aq, align 4, !tbaa !95
  %i.tl = icmp slt i32 %i.tj, 2
  br i1 %i.tl, label %.backedge.backedge, label %bb.cn

bb.cn:                                            ; preds = %.loopexit540
  store i32 25, ptr %0, align 8, !tbaa !67
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.v
  %i.tm = load i64, ptr %i.bk, align 8, !tbaa !76 ; 4 uses
  %i.tn = shl i64 %i.tm, 6
  %i.to = load ptr, ptr %i.ay, align 8, !tbaa !120
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tn ; 2 uses
  store ptr %i.tp, ptr %i.bl, align 8, !tbaa !122
  %i.tq = lshr i64 %i.tm, 5
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !16
  %i.tt = zext i32 %i.ts to i64
  %i.tu = and i64 %i.tm, 31
  %i.tv = lshr i64 %i.tt, %i.tu
  %i.tw = trunc nuw i64 %i.tv to i32
  %i.tx = and i32 %i.tw, 1
  store i32 %i.tx, ptr %i.bm, align 8, !tbaa !123
  %i.ty = load ptr, ptr %i.bd, align 8, !tbaa !124
  %i.tz = load i8, ptr %i.tp, align 1, !tbaa !92
  %i.ua = zext i8 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %i.ua
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !121
  store ptr %i.uc, ptr %i.bn, align 8, !tbaa !125
  %i.ud = load ptr, ptr %i.aw, align 8, !tbaa !119
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.tm
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !92
  %i.ug = and i8 %i.uf, 3
  %i.uh = zext nneg i8 %i.ug to i64
  %i.ui = shl nuw nsw i64 %i.uh, 9
  %i.uj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotli26_kBrotliContextLookupTableE, i64 %i.ui
  store ptr %i.uj, ptr %i.bo, align 8, !tbaa !126
  %i.uk = load ptr, ptr %i.bc, align 8, !tbaa !127
  store ptr %i.uk, ptr %i.bp, align 8, !tbaa !128
  %i.ul = load ptr, ptr %i.be, align 8, !tbaa !129
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !121
  store ptr %i.um, ptr %i.bq, align 8, !tbaa !130
  %i.un = call fastcc noundef i32 @_ZN13duckdb_brotliL22BrotliEnsureRingBufferEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %.not378 = icmp eq i32 %i.un, 0
  br i1 %.not378, label %.backedge.backedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.uo = load i64, ptr %i.ar, align 8, !tbaa !118 ; 2 uses
  %i.up = load i64, ptr %i.as, align 8, !tbaa !184 ; 5 uses
  %i.uq = load i16, ptr %i.br, align 2, !tbaa !194
  %i.ur = zext i16 %i.uq to i64                   ; 2 uses
  %i.us = trunc i64 %i.uo to i32                  ; 4 uses
  %i.ut = shl nuw i32 1, %i.us
  %i.uu = zext i32 %i.ut to i64                   ; 5 uses
  %.not.i454 = icmp eq i64 %i.up, 0
  br i1 %.not.i454, label %.preheader.i457, label %.lr.ph.i455.preheader

.lr.ph.i455.preheader:                            ; preds = %bb.cp
  %xtraiter = and i64 %i.up, 3                    ; 3 uses
  %i.uv = icmp ult i64 %i.up, 4
  br i1 %i.uv, label %.lr.ph.i455.epil.preheader, label %.lr.ph.i455.preheader.new

.lr.ph.i455.preheader.new:                        ; preds = %.lr.ph.i455.preheader
  %unroll_iter = and i64 %i.up, -4
  br label %.lr.ph.i455

.preheader.i457.loopexit.unr-lcssa:               ; preds = %.lr.ph.i455
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i457, label %.lr.ph.i455.epil.preheader

.lr.ph.i455.epil.preheader:                       ; preds = %.preheader.i457.loopexit.unr-lcssa, %.lr.ph.i455.preheader
  %.038.i456.epil.init = phi i64 [ 16, %.lr.ph.i455.preheader ], [ %i.vv, %.preheader.i457.loopexit.unr-lcssa ]
  %.03537.i.epil.init = phi i64 [ 0, %.lr.ph.i455.preheader ], [ %i.vt, %.preheader.i457.loopexit.unr-lcssa ]
  %lcmp.mod761 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod761)
  br label %.lr.ph.i455.epil

.lr.ph.i455.epil:                                 ; preds = %.lr.ph.i455.epil, %.lr.ph.i455.epil.preheader
  %.038.i456.epil = phi i64 [ %i.uz, %.lr.ph.i455.epil ], [ %.038.i456.epil.init, %.lr.ph.i455.epil.preheader ] ; 3 uses
  %.03537.i.epil = phi i64 [ %i.ux, %.lr.ph.i455.epil ], [ %.03537.i.epil.init, %.lr.ph.i455.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i455.epil ], [ 0, %.lr.ph.i455.epil.preheader ]
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.038.i456.epil
  store i8 0, ptr %i.uw, align 1, !tbaa !92
  %i.ux = add nuw i64 %.03537.i.epil, 1           ; 2 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.038.i456.epil
  store i64 %i.ux, ptr %i.uy, align 8, !tbaa !76
  %i.uz = add i64 %.038.i456.epil, 1              ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i457, label %.lr.ph.i455.epil, !llvm.loop !174

.preheader.i457:                                  ; preds = %.preheader.i457.loopexit.unr-lcssa, %.lr.ph.i455.epil, %bb.cp
  %.0.lcssa.i = phi i64 [ 16, %bb.cp ], [ %i.vv, %.preheader.i457.loopexit.unr-lcssa ], [ %i.uz, %.lr.ph.i455.epil ] ; 2 uses
  %i.va = icmp ult i64 %.0.lcssa.i, %i.ur
  br i1 %i.va, label %.lr.ph44.i, label %_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit

.lr.ph44.i:                                       ; preds = %.preheader.i457
  %i.vb = add i64 %i.up, 1
  %i.vc = shl nuw nsw i64 %i.uu, 3
  %i.vd = getelementptr i8, ptr %scevgep, i64 %i.vc
  %i.ve = getelementptr i8, ptr %scevgep736, i64 %i.uu
  %min.iters.check = icmp ult i32 %i.us, 2
  %n.vec = and i64 %i.uu, 4294967292              ; 2 uses
  %xtraiter762 = and i64 %i.uu, 1
  %i.vf = icmp eq i32 %i.us, 0
  %unroll_iter767 = and i64 %i.uu, 4294967294
  %lcmp.mod764.not = icmp eq i64 %xtraiter762, 0
  %lcmp.mod766 = icmp eq i32 %i.us, 0
  br label %bb.cq

.lr.ph.i455:                                      ; preds = %.lr.ph.i455, %.lr.ph.i455.preheader.new
  %.038.i456 = phi i64 [ 16, %.lr.ph.i455.preheader.new ], [ %i.vv, %.lr.ph.i455 ] ; 6 uses
  %.03537.i = phi i64 [ 0, %.lr.ph.i455.preheader.new ], [ %i.vt, %.lr.ph.i455 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i455.preheader.new ], [ %niter.next.3, %.lr.ph.i455 ]
  %i.vg = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.038.i456
  store i8 0, ptr %i.vg, align 1, !tbaa !92
  %i.vh = or disjoint i64 %.03537.i, 1
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.038.i456
  store i64 %i.vh, ptr %i.vi, align 8, !tbaa !76
  %i.vj = or disjoint i64 %.038.i456, 1           ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vj
  store i8 0, ptr %i.vk, align 1, !tbaa !92
  %i.vl = or disjoint i64 %.03537.i, 2
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vj
  store i64 %i.vl, ptr %i.vm, align 8, !tbaa !76
  %i.vn = or disjoint i64 %.038.i456, 2           ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vn
  store i8 0, ptr %i.vo, align 1, !tbaa !92
  %i.vp = or disjoint i64 %.03537.i, 3
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vn
  store i64 %i.vp, ptr %i.vq, align 8, !tbaa !76
  %i.vr = or disjoint i64 %.038.i456, 3           ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vr
  store i8 0, ptr %i.vs, align 1, !tbaa !92
  %i.vt = add nuw i64 %.03537.i, 4                ; 3 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vr
  store i64 %i.vt, ptr %i.vu, align 8, !tbaa !76
  %i.vv = add i64 %.038.i456, 4                   ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i457.loopexit.unr-lcssa, label %.lr.ph.i455, !llvm.loop !175

bb.cq:                                            ; preds = %middle.block, %.lr.ph44.i
  %.143.i = phi i64 [ %.0.lcssa.i, %.lr.ph44.i ], [ %.lcssa715, %middle.block ] ; 7 uses
  %.03342.i = phi i64 [ 0, %.lr.ph44.i ], [ %i.xe, %middle.block ] ; 3 uses
  %.03441.i = phi i64 [ 1, %.lr.ph44.i ], [ %i.xd, %middle.block ] ; 3 uses
  %i.vw = add nuw nsw i64 %.03342.i, 2
  %i.vx = shl i64 %i.vw, %.03441.i
  %i.vy = add i64 %i.vx, -4
  %i.vz = shl i64 %i.vy, %i.uo
  %i.wa = trunc i64 %.03441.i to i8               ; 4 uses
  %i.wb = add i64 %i.vb, %i.vz                    ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.cq
  br i1 %i.vf, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.cq
  %i.wc = getelementptr i8, ptr %i.bh, i64 %.143.i
  %i.wd = getelementptr i8, ptr %i.ve, i64 %.143.i
  %i.we = shl i64 %.143.i, 3                      ; 2 uses
  %i.wf = getelementptr i8, ptr %i.bs, i64 %i.we
  %i.wg = getelementptr i8, ptr %i.vd, i64 %i.we
  %bound0 = icmp ult ptr %i.wc, %i.wg
  %bound1 = icmp ult ptr %i.wf, %i.wd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.wh = add i64 %.143.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.wa, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert735 = insertelement <2 x i64> poison, i64 %i.wb, i64 0
  %broadcast.splat736 = shufflevector <2 x i64> %broadcast.splatinsert735, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat736
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.wi = add i64 %.143.i, %index                 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.wi ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 2
  store <2 x i8> %broadcast.splat, ptr %i.wj, align 1, !tbaa !92, !alias.scope !195, !noalias !196
  store <2 x i8> %broadcast.splat, ptr %i.wk, align 1, !tbaa !92, !alias.scope !195, !noalias !196
  %i.wl = add <2 x i64> %broadcast.splat736, %vec.ind
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.wi ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  store <2 x i64> %i.wl, ptr %i.wm, align 8, !tbaa !76, !alias.scope !196
  store <2 x i64> %.reass, ptr %i.wn, align 8, !tbaa !76, !alias.scope !196
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.wo = icmp eq i64 %index.next, %n.vec
  br i1 %i.wo, label %middle.block, label %vector.body, !llvm.loop !179

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.240.i = phi i64 [ %i.wx, %scalar.ph ], [ %.143.i, %scalar.ph.preheader ] ; 4 uses
  %.13639.i = phi i64 [ %i.wy, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 3 uses
  %niter768 = phi i64 [ %niter768.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.wp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.240.i
  store i8 %i.wa, ptr %i.wp, align 1, !tbaa !92
  %i.wq = add i64 %i.wb, %.13639.i
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.240.i
  store i64 %i.wq, ptr %i.wr, align 8, !tbaa !76
  %i.ws = add i64 %.240.i, 1                      ; 2 uses
  %i.wt = or disjoint i64 %.13639.i, 1
  %i.wu = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ws
  store i8 %i.wa, ptr %i.wu, align 1, !tbaa !92
  %i.wv = add i64 %i.wb, %i.wt
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ws
  store i64 %i.wv, ptr %i.ww, align 8, !tbaa !76
  %i.wx = add i64 %.240.i, 2                      ; 3 uses
  %i.wy = add nuw nsw i64 %.13639.i, 2            ; 2 uses
  %niter768.next.1 = add i64 %niter768, 2         ; 2 uses
  %niter768.ncmp.1 = icmp eq i64 %niter768.next.1, %unroll_iter767
  br i1 %niter768.ncmp.1, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !180

middle.block.loopexit.unr-lcssa:                  ; preds = %scalar.ph
  br i1 %lcmp.mod764.not, label %middle.block, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %middle.block.loopexit.unr-lcssa, %scalar.ph.preheader
  %.240.i.epil.init = phi i64 [ %.143.i, %scalar.ph.preheader ], [ %i.wx, %middle.block.loopexit.unr-lcssa ] ; 3 uses
  %.13639.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %i.wy, %middle.block.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod766)
  %i.wz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.240.i.epil.init
  store i8 %i.wa, ptr %i.wz, align 1, !tbaa !92
  %i.xa = add i64 %i.wb, %.13639.i.epil.init
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.240.i.epil.init
  store i64 %i.xa, ptr %i.xb, align 8, !tbaa !76
  %i.xc = add i64 %.240.i.epil.init, 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body, %scalar.ph.epil.preheader, %middle.block.loopexit.unr-lcssa
  %.lcssa715 = phi i64 [ %i.xc, %scalar.ph.epil.preheader ], [ %i.wx, %middle.block.loopexit.unr-lcssa ], [ %i.wh, %vector.body ] ; 2 uses
  %i.xd = add i64 %.03441.i, %.03342.i
  %i.xe = xor i64 %.03342.i, 1
  %i.xf = icmp ult i64 %.lcssa715, %i.ur
  br i1 %i.xf, label %bb.cq, label %_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit, !llvm.loop !181

_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit: ; preds = %middle.block, %.preheader.i457
  store i32 7, ptr %0, align 8, !tbaa !67
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit, %bb.v, %bb.v, %bb.v, %bb.v
  %i.xg = call fastcc noundef i32 @_ZN13duckdb_brotliL15ProcessCommandsEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0) ; 2 uses
  %i.xh = icmp eq i32 %i.xg, 2
  br i1 %i.xh, label %bb.cs, label %.backedge.backedge

bb.cs:                                            ; preds = %bb.cr
  %i.xi = call fastcc noundef i32 @_ZN13duckdb_brotliL19SafeProcessCommandsEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  br label %.backedge.backedge

bb.ct:                                            ; preds = %bb.v, %bb.v, %bb.v
  %i.xj = call fastcc noundef i32 @_ZN13duckdb_brotliL15WriteRingBufferEPNS_24BrotliDecoderStateStructEPmPPhS2_i(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, i32 noundef 0) ; 2 uses
  %.not367 = icmp eq i32 %i.xj, 1
  br i1 %.not367, label %bb.cu, label %.backedge.backedge

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @_ZN13duckdb_brotliL14WrapRingBufferEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %i.xk = load i32, ptr %i.al, align 4, !tbaa !134 ; 2 uses
  %i.xl = load i32, ptr %i.aj, align 4
  %i.xm = lshr i32 %i.xl, 6
  %i.xn = and i32 %i.xm, 63
  %i.xo = shl nuw i32 1, %i.xn
  %i.xp = icmp eq i32 %i.xk, %i.xo
  br i1 %i.xp, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.xq = load i32, ptr %i.am, align 4, !tbaa !96
  store i32 %i.xq, ptr %i.an, align 8, !tbaa !135
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.xr = load i32, ptr %0, align 8, !tbaa !67
  switch i32 %i.xr, label %bb.df [
    i32 15, label %bb.cx
    i32 16, label %bb.de
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.xs = load ptr, ptr %i.ao, align 8, !tbaa !77 ; 7 uses
  %.not368 = icmp eq ptr %i.xs, null
  br i1 %.not368, label %.thread535, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16 ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !81
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 20 ; 3 uses
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !82 ; 2 uses
  %.not369 = icmp eq i32 %i.xu, %i.xw
  br i1 %.not369, label %.thread535, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xx = load i32, ptr %i.ap, align 8, !tbaa !136 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xs, i64 8 ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xs, i64 12 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xs, i64 152
  br label %bb.da

bb.da:                                            ; preds = %bb.dd, %bb.cz
  %i.yc = phi i32 [ %i.xk, %bb.cz ], [ %i.zg, %bb.dd ] ; 2 uses
  %i.yd = phi i32 [ %i.xw, %bb.cz ], [ %i.zc, %bb.dd ] ; 2 uses
  %.042.i = phi i32 [ %i.xx, %bb.cz ], [ %i.yy, %bb.dd ] ; 4 uses
  %i.ye = load i32, ptr %i.xt, align 8, !tbaa !81 ; 2 uses
  %.not.i460 = icmp eq i32 %i.ye, %i.yd
  br i1 %.not.i460, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.yf = load ptr, ptr %i.ad, align 8, !tbaa !91
  %i.yg = sext i32 %.042.i to i64
  %i.yh = getelementptr inbounds i8, ptr %i.yf, i64 %i.yg
  %i.yi = load i32, ptr %i.xz, align 8, !tbaa !137
  %i.yj = sext i32 %i.yi to i64                   ; 2 uses
  %i.yk = getelementptr inbounds [8 x i8], ptr %i.xy, i64 %i.yj
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !75
  %i.ym = load i32, ptr %i.ya, align 4, !tbaa !138 ; 2 uses
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr inbounds i8, ptr %i.yl, i64 %i.yn
  %i.yp = sub nsw i32 %i.yc, %.042.i
  %i.yq = getelementptr [4 x i8], ptr %i.yb, i64 %i.yj ; 2 uses
  %i.yr = getelementptr i8, ptr %i.yq, i64 4
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !16
  %i.yt = load i32, ptr %i.yq, align 4, !tbaa !16
  %i.yu = add i32 %i.ym, %i.yt
  %i.yv = sub i32 %i.ys, %i.yu                    ; 2 uses
  %i.yw = sub nsw i32 %i.ye, %i.yd
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.yw, i32 %i.yv)
  %.1.i461 = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.yp) ; 5 uses
  %i.yx = sext i32 %.1.i461 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yh, ptr align 1 %i.yo, i64 %i.yx, i1 false)
  %i.yy = add nsw i32 %.1.i461, %.042.i           ; 4 uses
  %i.yz = load i32, ptr %i.ya, align 4, !tbaa !138
  %i.za = add nsw i32 %.1.i461, %i.yz
  store i32 %i.za, ptr %i.ya, align 4, !tbaa !138
  %i.zb = load i32, ptr %i.xv, align 4, !tbaa !82
  %i.zc = add nsw i32 %i.zb, %.1.i461             ; 2 uses
  store i32 %i.zc, ptr %i.xv, align 4, !tbaa !82
  %i.zd = icmp eq i32 %.1.i461, %i.yv
  br i1 %i.zd, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ze = load i32, ptr %i.xz, align 8, !tbaa !137
  %i.zf = add nsw i32 %i.ze, 1
  store i32 %i.zf, ptr %i.xz, align 8, !tbaa !137
  store i32 0, ptr %i.ya, align 4, !tbaa !138
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.zg = load i32, ptr %i.al, align 4, !tbaa !134 ; 2 uses
  %i.zh = icmp eq i32 %i.yy, %i.zg
  br i1 %i.zh, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit, label %bb.da

_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit: ; preds = %bb.da, %bb.dd
  %i.zi = phi i32 [ %i.yy, %bb.dd ], [ %i.yc, %bb.da ]
  %.143.i462 = phi i32 [ %i.yy, %bb.dd ], [ %.042.i, %bb.da ]
  %i.zj = sub nsw i32 %.143.i462, %i.xx
  %i.zk = load i32, ptr %i.ap, align 8, !tbaa !136
  %i.zl = add nsw i32 %i.zk, %i.zj                ; 2 uses
  store i32 %i.zl, ptr %i.ap, align 8, !tbaa !136
  %.not370 = icmp slt i32 %i.zl, %i.zi
  br i1 %.not370, label %.thread535, label %.backedge.backedge
end_hunk_1
