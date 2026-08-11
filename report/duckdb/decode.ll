inline.NumInlined: 20
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN13duckdb_brotli29BrotliDecoderAttachDictionaryEPNS_24BrotliDecoderStateStructENS_26BrotliSharedDictionaryTypeEmPKh:bb.a
  store ptr %i.p, ptr %i.aj, align 8, !tbaa !31
  %i.ak = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.ak, ptr %.034.i, align 8, !tbaa !36
  %i.al = trunc i64 %i.s to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.an = add nsw i32 %i.af, %i.al                ; 2 uses
  store i32 %i.an, ptr %i.am, align 4, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %.034.i, i64 152
  %i.ap = sext i32 %i.ak to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !3
  %i.ar = add nuw nsw i64 %.01520, 1              ; 2 uses
  %i.as = load i32, ptr %i.ae, align 8, !tbaa !26
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %i.ar, %i.at
  br i1 %i.au, label %bb.c, label %_ZN13duckdb_brotliL24AttachCompoundDictionaryEPNS_24BrotliDecoderStateStructEPKhm.exit.thread, !llvm.loop !42

_ZN13duckdb_brotliL24AttachCompoundDictionaryEPNS_24BrotliDecoderStateStructEPKhm.exit.thread: ; preds = %bb.g, %bb.c, %bb.e, %bb.f, %.preheader, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.preheader ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

declare noundef i32 @_ZN13duckdb_brotli28BrotliSharedDictionaryAttachEPNS_28BrotliSharedDictionaryStructENS_26BrotliSharedDictionaryTypeEmPKh(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli23BrotliDecoderDecompressEmPKhPmPh(i64 noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"struct.duckdb_brotli::BrotliDecoderStateStruct", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %0, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %1, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.f = load i64, ptr %2, align 8, !tbaa !32
  store i64 %i.f, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store ptr %3, ptr %i.e, align 8, !tbaa !31
  %i.g = call noundef i32 @_ZN13duckdb_brotli22BrotliDecoderStateInitEPNS_24BrotliDecoderStateStructEPFPvS2_mEPFvS2_S2_ES2_(ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef i32 @_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_(ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a)
  %i.i = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.i, ptr %2, align 8, !tbaa !32
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
define hidden noundef range(i32 0, 4) i32 @_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 40 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !32     ; 5 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  store i64 %i.f, ptr %5, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i32, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.du, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %3, align 8, !tbaa !32
  %.not358 = icmp eq i64 %i.j, 0
  br i1 %.not358, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not359 = icmp eq ptr %4, null
  br i1 %.not359, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %4, align 8, !tbaa !31
  %.not360 = icmp eq ptr %i.k, null
  br i1 %.not360, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = load i64, ptr %1, align 8, !tbaa !32
  %i.m = sub i64 %i.d, %i.l
  %i.n = tail call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -20, i64 noundef %i.m)
  br label %bb.du

bb.h:                                             ; preds = %bb.f, %bb.d
  %spec.select = phi ptr [ %4, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46   ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %2, align 8, !tbaa !31     ; 3 uses
  %i.s = load i64, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.t, align 8, !tbaa !47
  %i.u = getelementptr i8, ptr %i.r, i64 %i.s
  br label %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !47
  %i.x = getelementptr i8, ptr %i.v, i64 %i.p
  br label %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407

_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407: ; preds = %bb.j, %bb.i
  %.sink741 = phi ptr [ %i.x, %bb.j ], [ %i.u, %bb.i ] ; 2 uses
  %.sink740 = phi i64 [ %i.p, %bb.j ], [ %i.s, %bb.i ]
  %.sink738 = phi ptr [ %i.v, %bb.j ], [ %i.r, %bb.i ]
  %.0310 = phi i32 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink741, ptr %i.y, align 8, !tbaa !48
  %i.z = add i64 %.sink740, -28
  %i.aa = icmp ult i64 %i.z, -29
  %i.ab = getelementptr i8, ptr %.sink741, i64 -27
  %spec.select735 = select i1 %i.aa, ptr %i.ab, ptr %.sink738
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %spec.select735, ptr %i.ac, align 8, !tbaa !49
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
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 13 uses
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
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 9 uses
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
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407
  %.1311 = phi i32 [ %.0310, %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit407 ], [ %.1311.be, %.backedge.backedge ] ; 3 uses
  switch i32 %.1311, label %bb.t [
    i32 1, label %bb.v
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %.backedge
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !50
  %.not397 = icmp eq ptr %i.cf, null
  br i1 %.not397, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = call fastcc noundef i32 @_ZN13duckdb_brotliL15WriteRingBufferEPNS_24BrotliDecoderStateStructEPmPPhS2_i(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, i32 noundef 1) ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ci = load i64, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %.not398 = icmp eq i64 %i.ci, 0
  %i.cj = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 5 uses
  br i1 %.not398, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.o, align 8, !tbaa !46
  %i.cm = load ptr, ptr %2, align 8, !tbaa !31    ; 3 uses
  %i.cn = load i64, ptr %1, align 8, !tbaa !32    ; 2 uses
  store ptr %i.cm, ptr %i.ae, align 8, !tbaa !47
  %i.co = getelementptr i8, ptr %i.cm, i64 %i.cn  ; 2 uses
  store ptr %i.co, ptr %i.af, align 8, !tbaa !48
  %i.cp = add i64 %i.cn, -28
  %i.cq = icmp ult i64 %i.cp, -29
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr i8, ptr %i.co, i64 -27
  store ptr %i.cr, ptr %i.ah, align 8, !tbaa !49
  br label %.backedge.backedge

bb.q:                                             ; preds = %bb.o
  store ptr %i.cm, ptr %i.ah, align 8, !tbaa !49
  br label %.backedge.backedge

bb.r:                                             ; preds = %bb.n
  %i.cs = load i64, ptr %1, align 8, !tbaa !32
  %.not401 = icmp eq i64 %i.cs, 0
  br i1 %.not401, label %.loopexit, label %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit

_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit: ; preds = %bb.r
  %i.ct = load ptr, ptr %2, align 8, !tbaa !31
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ci
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !51
  %i.cw = load i64, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %i.cx = add i64 %i.cw, 1                        ; 2 uses
  store i64 %i.cx, ptr %i.o, align 8, !tbaa !46
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !47
  %i.cy = getelementptr i8, ptr %i.ag, i64 %i.cx  ; 2 uses
  store ptr %i.cy, ptr %i.af, align 8, !tbaa !48
  %i.cz = add i64 %i.cw, -27
  %i.da = icmp ult i64 %i.cz, -29
  %i.db = getelementptr i8, ptr %i.cy, i64 -27
  %spec.select733 = select i1 %i.da, ptr %i.db, ptr %i.ag
  store ptr %spec.select733, ptr %i.ah, align 8, !tbaa !49
  %i.dc = load ptr, ptr %2, align 8, !tbaa !31
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store ptr %i.dd, ptr %2, align 8, !tbaa !31
  %i.de = load i64, ptr %1, align 8, !tbaa !32
  %i.df = add i64 %i.de, -1
  store i64 %i.df, ptr %1, align 8, !tbaa !32
  br label %.backedge.backedge

bb.s:                                             ; preds = %bb.m
  store ptr %i.cj, ptr %2, align 8, !tbaa !31
  %i.dg = load ptr, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.cj to i64
  %i.dj = sub i64 %i.dh, %i.di
  store i64 %i.dj, ptr %1, align 8, !tbaa !32
  %.not400630 = icmp eq ptr %i.dg, %i.cj
  br i1 %.not400630, label %.loopexit, label %.lr.ph632

.lr.ph632:                                        ; preds = %bb.s, %.lr.ph632
  %i.dk = phi ptr [ %i.dr, %.lr.ph632 ], [ %i.cj, %bb.s ]
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !51
  %i.dm = load i64, ptr %i.o, align 8, !tbaa !46
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dm
  store i8 %i.dl, ptr %i.dn, align 1, !tbaa !51
  %i.do = load i64, ptr %i.o, align 8, !tbaa !46
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.o, align 8, !tbaa !46
  %i.dq = load ptr, ptr %2, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 2 uses
  store ptr %i.dr, ptr %2, align 8, !tbaa !31
  %i.ds = load i64, ptr %1, align 8, !tbaa !32
  %i.dt = add i64 %i.ds, -1                       ; 2 uses
  store i64 %i.dt, ptr %1, align 8, !tbaa !32
  %.not400 = icmp eq i64 %i.dt, 0
  br i1 %.not400, label %.loopexit, label %.lr.ph632, !llvm.loop !52

bb.t:                                             ; preds = %.backedge
  %i.du = load i64, ptr %i.o, align 8, !tbaa !46
  %.not396 = icmp eq i64 %i.du, 0
  br i1 %.not396, label %_ZN13duckdb_brotliL21BrotliBitReaderUnloadEPNS_15BrotliBitReaderE.exit408, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.o, align 8, !tbaa !46
  br label %.loopexit

_ZN13duckdb_brotliL21BrotliBitReaderUnloadEPNS_15BrotliBitReaderE.exit408: ; preds = %bb.t
  %i.dv = load i64, ptr %i.ak, align 8, !tbaa !53 ; 2 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.dy = sub nsw i64 0, %i.dw
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 %i.dy ; 3 uses
  store ptr %i.dz, ptr %i.ae, align 8, !tbaa !47
  %i.ea = and i64 %i.dv, 7                        ; 2 uses
  store i64 %i.ea, ptr %i.ak, align 8, !tbaa !53
  %notmask.i425 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i425, -1
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !54
  %i.ed = and i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %i.c, align 8, !tbaa !54
  %i.ee = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.dz to i64
  %i.eh = sub i64 %i.ef, %i.eg
  store i64 %i.eh, ptr %1, align 8, !tbaa !32
  store ptr %i.dz, ptr %2, align 8, !tbaa !31
  br label %.loopexit

bb.v:                                             ; preds = %.backedge
  %i.ei = load i32, ptr %0, align 8, !tbaa !7
  switch i32 %i.ei, label %.backedge.backedge [
    i32 0, label %bb.w
    i32 1, label %.preheader574
    i32 2, label %._crit_edge655
    i32 3, label %bb.an
    i32 4, label %bb.ao
    i32 17, label %.thread
    i32 18, label %bb.ay
    i32 19, label %._crit_edge659
    i32 20, label %bb.bf
    i32 21, label %bb.bg
    i32 11, label %bb.bl
    i32 12, label %bb.bn
    i32 5, label %.preheader579
    i32 6, label %._crit_edge
    i32 22, label %._crit_edge649
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

.backedge.backedge:                               ; preds = %bb.v, %bb.ah, %bb.ai, %bb.av, %bb.ax, %bb.az, %bb.bc, %bb.bm, %bb.bo, %bb.dm, %bb.ao, %bb.au, %bb.at, %bb.ba, %bb.bl, %bb.bn, %bb.bt, %bb.cs, %bb.cr, %bb.ct, %bb.di, %bb.dh, %bb.de, %bb.dj, %bb.ds, %bb.w, %bb.al, %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit, %._crit_edge626, %bb.co, %bb.dk, %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit424, %bb.be, %bb.bf, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread536, %_ZN13duckdb_brotliL16ReadContextModesEPNS_24BrotliDecoderStateStructE.exit, %bb.cd, %.thread570, %bb.ad, %bb.ac, %bb.aj, %bb.bp, %_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit, %.loopexit575, %.lr.ph613, %.lr.ph, %bb.q, %bb.p, %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit
  %.1311.be = phi i32 [ 1, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit ], [ 1, %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.v ], [ %i.rr, %bb.cd ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.dm ], [ 2, %bb.w ], [ %i.gy, %bb.ao ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %bb.av ], [ 1, %bb.ax ], [ 1, %bb.az ], [ %i.ic, %bb.ba ], [ 1, %bb.bc ], [ -14, %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit ], [ %i.ir, %bb.be ], [ -15, %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit424 ], [ -30, %bb.al ], [ -13, %bb.ac ], [ %i.mi, %bb.bl ], [ 1, %bb.bm ], [ 2, %bb.bn ], [ 1, %bb.bo ], [ 2, %_ZN13duckdb_brotliL16ReadContextModesEPNS_24BrotliDecoderStateStructE.exit ], [ %i.og, %bb.bt ], [ %i.xc, %bb.cs ], [ %i.xa, %bb.cr ], [ 2, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread536 ], [ 2, %.lr.ph613 ], [ 2, %_ZN13duckdb_brotliL19SafeReadBlockLengthEPNS_24BrotliDecoderStateStructEPmPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.thread ], [ %i.sx, %_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit ], [ %i.xd, %bb.ct ], [ 1, %.thread570 ], [ 1, %bb.de ], [ 1, %bb.dh ], [ 1, %bb.di ], [ 1, %bb.dj ], [ -27, %bb.co ], [ %i.aat, %bb.ds ], [ -10, %bb.dk ], [ 1, %._crit_edge626 ], [ %i.ix, %bb.bf ], [ -13, %bb.ad ], [ -13, %bb.aj ], [ -21, %bb.bp ], [ 1, %.loopexit575 ], [ 2, %.lr.ph ]
  br label %.backedge, !llvm.loop !55

._crit_edge659:                                   ; preds = %bb.v
  %.pre660 = load i32, ptr %i.aq, align 4, !tbaa !56 ; 2 uses
  %.phi.trans.insert = sext i32 %.pre660 to i64
  %.phi.trans.insert661 = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.phi.trans.insert
  %.pre662.a = load i64, ptr %.phi.trans.insert661, align 8, !tbaa !32
  br label %bb.be

._crit_edge655:                                   ; preds = %bb.v
  %.pre656 = load i32, ptr %i.aj, align 4
  br label %bb.al

._crit_edge649:                                   ; preds = %bb.v
  %.pre650 = load i64, ptr %i.av, align 8, !tbaa !32
  br label %bb.bt

._crit_edge:                                      ; preds = %bb.v
  %.pre648 = load i32, ptr %i.aq, align 4, !tbaa !56
  br label %bb.br

.preheader579:                                    ; preds = %bb.v
  %.promoted = load i64, ptr %i.ak, align 8, !tbaa !53 ; 4 uses
  %i.ej = icmp ult i64 %.promoted, 6
  br i1 %i.ej, label %.lr.ph, label %.preheader579._crit_edge

.preheader579._crit_edge:                         ; preds = %.preheader579
  %.pre = load i64, ptr %i.c, align 8, !tbaa !54
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a
bb.ca:                                            ; preds = %bb.bz
  %i.re = add nuw i32 %i.qq, 16
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %notmask.i = shl nsw i32 -1, %i.qj
  %i.rf = xor i32 %notmask.i, -1
  %i.rg = add nsw i32 %i.rc, -1
  %i.rh = shl i32 %i.rg, %i.qj
  %i.ri = or i32 %i.rh, %i.rf
  %i.rj = add nuw i32 %i.qq, 17
  %i.rk = add i32 %i.rj, %i.ri
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.0.0.i = phi i32 [ %i.re, %bb.ca ], [ %i.rk, %bb.cb ]
  %i.rl = zext i32 %.sroa.0.0.i to i64
  br label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit

_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit: ; preds = %bb.by, %bb.cc
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.rl, %bb.cc ], [ 2147483660, %bb.by ]
  %i.rm = shl i32 62, %i.qk
  %i.rn = zext i32 %i.rm to i64
  %i.ro = add i64 %i.qi, %i.rn
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit, %bb.bx
  %.0319 = phi i64 [ %i.ro, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.qn, %bb.bx ]
  %.0318 = phi i64 [ %.sroa.0.0.insert.insert.i, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.qn, %bb.bx ]
  %i.rp = load i64, ptr %i.ba, align 8, !tbaa !32
  %i.rq = shl i64 %i.rp, 2
  %i.rr = call fastcc noundef i32 @_ZN13duckdb_brotliL16DecodeContextMapEmPmPPhPNS_24BrotliDecoderStateStructE(i64 noundef %i.rq, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %0) ; 2 uses
  %.not375 = icmp eq i32 %i.rr, 1
  br i1 %.not375, label %bb.ce, label %.backedge.backedge

bb.ce:                                            ; preds = %bb.cd
  %i.rs = load i64, ptr %i.ax, align 8, !tbaa !87
  %i.rt = call noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, i64 noundef 256, i64 noundef 256, i64 noundef %i.rs)
  %i.ru = and i32 %i.rt, 1
  %i.rv = load i64, ptr %i.bf, align 8, !tbaa !32
  %i.rw = call noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i64 noundef 704, i64 noundef 704, i64 noundef %i.rv)
  %i.rx = and i32 %i.ru, %i.rw
  %i.ry = load i64, ptr %i.bb, align 8, !tbaa !88
  %i.rz = call noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i64 noundef %.0319, i64 noundef %.0318, i64 noundef %i.ry)
  %i.sa = and i32 %i.rx, %i.rz
  %.not376 = icmp eq i32 %i.sa, 0
  br i1 %.not376, label %.thread553, label %.thread715

.thread553:                                       ; preds = %bb.ce
  %i.sb = load i64, ptr %1, align 8, !tbaa !32
  %i.sc = sub i64 %i.d, %i.sb
  %i.sd = call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -22, i64 noundef %i.sc)
  br label %bb.du

.thread715:                                       ; preds = %bb.ce
  store i32 0, ptr %i.aq, align 4, !tbaa !56
  store i32 24, ptr %0, align 8, !tbaa !7
  br label %bb.ci

bb.cf:                                            ; preds = %bb.v
  %.pre652.a = load i32, ptr %i.aq, align 4, !tbaa !56 ; 4 uses
  switch i32 %.pre652.a, label %.thread566 [
    i32 0, label %bb.ci
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  br label %bb.ci

.thread566:                                       ; preds = %bb.cf
  %i.se = load i64, ptr %1, align 8, !tbaa !32
  %i.sf = sub i64 %i.d, %i.se
  %i.sg = call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -31, i64 noundef %i.sf)
  br label %bb.du

bb.ci:                                            ; preds = %.thread715, %bb.cf, %bb.ch, %bb.cg
  %i.sh = phi i32 [ %.pre652.a, %bb.ch ], [ %.pre652.a, %bb.cg ], [ %.pre652.a, %bb.cf ], [ 0, %.thread715 ]
  %.0308 = phi ptr [ %i.bg, %bb.ch ], [ %i.be, %bb.cg ], [ %i.bd, %bb.cf ], [ %i.bd, %.thread715 ] ; 5 uses
  %i.si = load i32, ptr %i.bh, align 8, !tbaa !70
  %.not.i449 = icmp eq i32 %i.si, 1
  br i1 %.not.i449, label %._crit_edge26.i, label %bb.cj

._crit_edge26.i:                                  ; preds = %bb.ci
  %.pre.i453 = load i32, ptr %i.bj, align 4, !tbaa !89
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.sj = getelementptr inbounds nuw i8, ptr %.0308, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !90
  store ptr %i.sk, ptr %i.bi, align 8, !tbaa !91
  store i32 0, ptr %i.bj, align 4, !tbaa !89
  store i32 1, ptr %i.bh, align 8, !tbaa !70
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge26.i
  %i.sl = phi i32 [ %.pre.i453, %._crit_edge26.i ], [ 0, %bb.cj ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.0308, i64 20 ; 2 uses
  %i.sn = load i16, ptr %i.sm, align 4, !tbaa !92
  %i.so = zext i16 %i.sn to i32
  %i.sp = icmp slt i32 %i.sl, %i.so
  br i1 %i.sp, label %.lr.ph.i451, label %.loopexit575

.lr.ph.i451:                                      ; preds = %bb.ck
  %i.sq = getelementptr inbounds nuw i8, ptr %.0308, i64 16
  %i.sr = getelementptr inbounds nuw i8, ptr %.0308, i64 18
  %.pre27.i = load ptr, ptr %i.bi, align 8, !tbaa !91
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cm, %.lr.ph.i451
  %i.ss = phi ptr [ %.pre27.i, %.lr.ph.i451 ], [ %i.te, %bb.cm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.st = load i16, ptr %i.sq, align 8, !tbaa !93
  %i.su = zext i16 %i.st to i64
  %i.sv = load i16, ptr %i.sr, align 2, !tbaa !94
  %i.sw = zext i16 %i.sv to i64
  %i.sx = call fastcc noundef i32 @_ZN13duckdb_brotliL15ReadHuffmanCodeEmmPNS_11HuffmanCodeEPmPNS_24BrotliDecoderStateStructE(i64 noundef %i.su, i64 noundef %i.sw, ptr noundef %i.ss, ptr noundef nonnull %i.a, ptr noundef nonnull %0) ; 2 uses
  %.not23.i = icmp eq i32 %i.sx, 1
  br i1 %.not23.i, label %bb.cm, label %_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit

bb.cm:                                            ; preds = %bb.cl
  %i.sy = load ptr, ptr %i.bi, align 8, !tbaa !91 ; 2 uses
  %i.sz = load ptr, ptr %.0308, align 8, !tbaa !95
  %i.ta = load i32, ptr %i.bj, align 4, !tbaa !89 ; 2 uses
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.tb
  store ptr %i.sy, ptr %i.tc, align 8, !tbaa !96
  %i.td = load i64, ptr %i.a, align 8, !tbaa !32
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.td ; 2 uses
  store ptr %i.te, ptr %i.bi, align 8, !tbaa !91
  %i.tf = add nsw i32 %i.ta, 1                    ; 2 uses
  store i32 %i.tf, ptr %i.bj, align 4, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.tg = load i16, ptr %i.sm, align 4, !tbaa !92
  %i.th = zext i16 %i.tg to i32
  %i.ti = icmp slt i32 %i.tf, %i.th
  br i1 %i.ti, label %bb.cl, label %.loopexit575.loopexit, !llvm.loop !97

_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.backedge.backedge

.loopexit575.loopexit:                            ; preds = %bb.cm
  %.pre653 = load i32, ptr %i.aq, align 4, !tbaa !56
  br label %.loopexit575

.loopexit575:                                     ; preds = %.loopexit575.loopexit, %bb.ck
  %i.tj = phi i32 [ %.pre653, %.loopexit575.loopexit ], [ %i.sh, %bb.ck ] ; 2 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !70
  %i.tk = add nsw i32 %i.tj, 1
  store i32 %i.tk, ptr %i.aq, align 4, !tbaa !56
  %i.tl = icmp slt i32 %i.tj, 2
  br i1 %i.tl, label %.backedge.backedge, label %bb.cn

bb.cn:                                            ; preds = %.loopexit575
  store i32 25, ptr %0, align 8, !tbaa !7
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.v
  %i.tm = load i64, ptr %i.bk, align 8, !tbaa !32 ; 4 uses
  %i.tn = shl i64 %i.tm, 6
  %i.to = load ptr, ptr %i.ay, align 8, !tbaa !85
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tn ; 2 uses
  store ptr %i.tp, ptr %i.bl, align 8, !tbaa !98
  %i.tq = lshr i64 %i.tm, 5
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !3
  %i.tt = zext i32 %i.ts to i64
  %i.tu = and i64 %i.tm, 31
  %i.tv = lshr i64 %i.tt, %i.tu
  %i.tw = trunc nuw i64 %i.tv to i32
  %i.tx = and i32 %i.tw, 1
  store i32 %i.tx, ptr %i.bm, align 8, !tbaa !99
  %i.ty = load ptr, ptr %i.bd, align 8, !tbaa !100
  %i.tz = load i8, ptr %i.tp, align 1, !tbaa !51
  %i.ua = zext i8 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %i.ua
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !96
  store ptr %i.uc, ptr %i.bn, align 8, !tbaa !101
  %i.ud = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.tm
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !51
  %i.ug = and i8 %i.uf, 3
  %i.uh = zext nneg i8 %i.ug to i64
  %i.ui = shl nuw nsw i64 %i.uh, 9
  %i.uj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotli26_kBrotliContextLookupTableE, i64 %i.ui
  store ptr %i.uj, ptr %i.bo, align 8, !tbaa !102
  %i.uk = load ptr, ptr %i.bc, align 8, !tbaa !103
  store ptr %i.uk, ptr %i.bp, align 8, !tbaa !104
  %i.ul = load ptr, ptr %i.be, align 8, !tbaa !105
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !96
  store ptr %i.um, ptr %i.bq, align 8, !tbaa !106
  %i.un = call fastcc noundef i32 @_ZN13duckdb_brotliL22BrotliEnsureRingBufferEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %.not378 = icmp eq i32 %i.un, 0
  br i1 %.not378, label %.backedge.backedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.uo = load i64, ptr %i.ar, align 8, !tbaa !81 ; 4 uses
  %i.up = load i64, ptr %i.as, align 8, !tbaa !82 ; 5 uses
  %i.uq = load i16, ptr %i.br, align 2, !tbaa !107
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
  %.038.i456.epil.init = phi i64 [ 0, %.lr.ph.i455.preheader ], [ %i.vr, %.preheader.i457.loopexit.unr-lcssa ]
  %.03337.i.epil.init = phi i64 [ 16, %.lr.ph.i455.preheader ], [ %i.vt, %.preheader.i457.loopexit.unr-lcssa ]
  %lcmp.mod795 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod795)
  br label %.lr.ph.i455.epil

.lr.ph.i455.epil:                                 ; preds = %.lr.ph.i455.epil, %.lr.ph.i455.epil.preheader
  %.038.i456.epil = phi i64 [ %i.ux, %.lr.ph.i455.epil ], [ %.038.i456.epil.init, %.lr.ph.i455.epil.preheader ]
  %.03337.i.epil = phi i64 [ %i.uz, %.lr.ph.i455.epil ], [ %.03337.i.epil.init, %.lr.ph.i455.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i455.epil ], [ 0, %.lr.ph.i455.epil.preheader ]
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.03337.i.epil
  store i8 0, ptr %i.uw, align 1, !tbaa !51
  %i.ux = add nuw i64 %.038.i456.epil, 1          ; 2 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.03337.i.epil
  store i64 %i.ux, ptr %i.uy, align 8, !tbaa !32
  %i.uz = add i64 %.03337.i.epil, 1               ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i457, label %.lr.ph.i455.epil, !llvm.loop !108

.preheader.i457:                                  ; preds = %.preheader.i457.loopexit.unr-lcssa, %.lr.ph.i455.epil, %bb.cp
  %.033.lcssa.i = phi i64 [ 16, %bb.cp ], [ %i.vt, %.preheader.i457.loopexit.unr-lcssa ], [ %i.uz, %.lr.ph.i455.epil ] ; 4 uses
  %i.va = icmp ult i64 %.033.lcssa.i, %i.ur
  br i1 %i.va, label %.lr.ph44.i, label %_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit

.lr.ph44.i:                                       ; preds = %.preheader.i457
  %i.vb = add i64 %i.up, 1
  %6 = add i64 %.033.lcssa.i, 848                 ; 2 uses
  %7 = shl i64 %.033.lcssa.i, 3
  %8 = add i64 %7, 1392                           ; 2 uses
  %i.vc = shl nuw nsw i64 %i.uu, 3
  %min.iters.check = icmp ult i32 %i.us, 2
  %9 = and i64 %i.uo, 4294967295
  %10 = add nuw nsw i64 %9, 3
  %11 = getelementptr i8, ptr %0, i64 %8
  %12 = getelementptr i8, ptr %11, i64 %i.vc
  %13 = getelementptr i8, ptr %0, i64 %8
  %14 = and i64 %i.uo, 4294967295
  %15 = getelementptr i8, ptr %0, i64 %6
  %scevgep767 = getelementptr i8, ptr %15, i64 %i.uu
  %16 = getelementptr i8, ptr %0, i64 %6
  %n.vec = and i64 %i.uu, 4294967292              ; 2 uses
  %xtraiter796 = and i64 %i.uu, 1
  %i.vd = icmp eq i32 %i.us, 0
  %unroll_iter801 = and i64 %i.uu, 4294967294
  %lcmp.mod798.not = icmp eq i64 %xtraiter796, 0
  %lcmp.mod800 = icmp eq i32 %i.us, 0
  br label %bb.cq

.lr.ph.i455:                                      ; preds = %.lr.ph.i455, %.lr.ph.i455.preheader.new
  %.038.i456 = phi i64 [ 0, %.lr.ph.i455.preheader.new ], [ %i.vr, %.lr.ph.i455 ] ; 4 uses
  %.03337.i = phi i64 [ 16, %.lr.ph.i455.preheader.new ], [ %i.vt, %.lr.ph.i455 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i455.preheader.new ], [ %niter.next.3, %.lr.ph.i455 ]
  %i.ve = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.03337.i
  store i8 0, ptr %i.ve, align 1, !tbaa !51
  %i.vf = or disjoint i64 %.038.i456, 1
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.03337.i
  store i64 %i.vf, ptr %i.vg, align 8, !tbaa !32
  %i.vh = or disjoint i64 %.03337.i, 1            ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vh
  store i8 0, ptr %i.vi, align 1, !tbaa !51
  %i.vj = or disjoint i64 %.038.i456, 2
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vh
  store i64 %i.vj, ptr %i.vk, align 8, !tbaa !32
  %i.vl = or disjoint i64 %.03337.i, 2            ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vl
  store i8 0, ptr %i.vm, align 1, !tbaa !51
  %i.vn = or disjoint i64 %.038.i456, 3
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vl
  store i64 %i.vn, ptr %i.vo, align 8, !tbaa !32
  %i.vp = or disjoint i64 %.03337.i, 3            ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vp
  store i8 0, ptr %i.vq, align 1, !tbaa !51
  %i.vr = add nuw i64 %.038.i456, 4               ; 3 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vp
  store i64 %i.vr, ptr %i.vs, align 8, !tbaa !32
  %i.vt = add i64 %.03337.i, 4                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i457.loopexit.unr-lcssa, label %.lr.ph.i455, !llvm.loop !110

bb.cq:                                            ; preds = %middle.block, %.lr.ph44.i
  %indvar = phi i64 [ %indvar.next, %middle.block ], [ 0, %.lr.ph44.i ] ; 3 uses
  %.13443.i = phi i64 [ %.lcssa749, %middle.block ], [ %.033.lcssa.i, %.lr.ph44.i ] ; 4 uses
  %.03542.i = phi i64 [ %i.wy, %middle.block ], [ 0, %.lr.ph44.i ] ; 3 uses
  %.03641.i = phi i64 [ %i.wx, %middle.block ], [ 1, %.lr.ph44.i ] ; 3 uses
  %i.vu = add nuw nsw i64 %.03542.i, 2
  %i.vv = shl i64 %i.vu, %.03641.i
  %i.vw = add i64 %i.vv, -4
  %i.vx = shl i64 %i.vw, %i.uo
  %i.vy = trunc i64 %.03641.i to i8               ; 4 uses
  %i.vz = add i64 %i.vb, %i.vx                    ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.cq
  br i1 %i.vd, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.cq
  %17 = shl i64 %indvar, %10                      ; 2 uses
  %scevgep760.a = getelementptr i8, ptr %12, i64 %17
  %scevgep763 = getelementptr i8, ptr %13, i64 %17
  %i.wa = shl i64 %indvar, %14                    ; 2 uses
  %scevgep765 = getelementptr i8, ptr %scevgep767, i64 %i.wa
  %scevgep768 = getelementptr i8, ptr %16, i64 %i.wa
  %bound0 = icmp ult ptr %scevgep768, %scevgep760.a
  %bound1 = icmp ult ptr %scevgep763, %scevgep765
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.wb = add i64 %.13443.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.vy, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert769 = insertelement <2 x i64> poison, i64 %i.vz, i64 0
  %broadcast.splat770 = shufflevector <2 x i64> %broadcast.splatinsert769, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat770
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.wc = add i64 %.13443.i, %index               ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.wc ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 2
  store <2 x i8> %broadcast.splat, ptr %i.wd, align 1, !tbaa !51, !alias.scope !111, !noalias !114
  store <2 x i8> %broadcast.splat, ptr %i.we, align 1, !tbaa !51, !alias.scope !111, !noalias !114
  %i.wf = add <2 x i64> %broadcast.splat770, %vec.ind
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.wc ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  store <2 x i64> %i.wf, ptr %i.wg, align 8, !tbaa !32, !alias.scope !114
  store <2 x i64> %.reass, ptr %i.wh, align 8, !tbaa !32, !alias.scope !114
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.wi = icmp eq i64 %index.next, %n.vec
  br i1 %i.wi, label %middle.block, label %vector.body, !llvm.loop !116

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.140.i = phi i64 [ %i.ws, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 3 uses
  %.239.i = phi i64 [ %i.wr, %scalar.ph ], [ %.13443.i, %scalar.ph.preheader ] ; 4 uses
  %niter802 = phi i64 [ %niter802.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.wj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.239.i
  store i8 %i.vy, ptr %i.wj, align 1, !tbaa !51
  %i.wk = add i64 %i.vz, %.140.i
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.239.i
  store i64 %i.wk, ptr %i.wl, align 8, !tbaa !32
  %i.wm = add i64 %.239.i, 1                      ; 2 uses
  %i.wn = or disjoint i64 %.140.i, 1
  %i.wo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.wm
  store i8 %i.vy, ptr %i.wo, align 1, !tbaa !51
  %i.wp = add i64 %i.vz, %i.wn
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.wm
  store i64 %i.wp, ptr %i.wq, align 8, !tbaa !32
  %i.wr = add i64 %.239.i, 2                      ; 3 uses
  %i.ws = add nuw nsw i64 %.140.i, 2              ; 2 uses
  %niter802.next.1 = add i64 %niter802, 2         ; 2 uses
  %niter802.ncmp.1 = icmp eq i64 %niter802.next.1, %unroll_iter801
  br i1 %niter802.ncmp.1, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !119

middle.block.loopexit.unr-lcssa:                  ; preds = %scalar.ph
  br i1 %lcmp.mod798.not, label %middle.block, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %middle.block.loopexit.unr-lcssa, %scalar.ph.preheader
  %.140.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %i.ws, %middle.block.loopexit.unr-lcssa ]
  %.239.i.epil.init = phi i64 [ %.13443.i, %scalar.ph.preheader ], [ %i.wr, %middle.block.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod800)
  %i.wt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.239.i.epil.init
  store i8 %i.vy, ptr %i.wt, align 1, !tbaa !51
  %i.wu = add i64 %i.vz, %.140.i.epil.init
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.239.i.epil.init
  store i64 %i.wu, ptr %i.wv, align 8, !tbaa !32
  %i.ww = add i64 %.239.i.epil.init, 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body, %scalar.ph.epil.preheader, %middle.block.loopexit.unr-lcssa
  %.lcssa749 = phi i64 [ %i.ww, %scalar.ph.epil.preheader ], [ %i.wr, %middle.block.loopexit.unr-lcssa ], [ %i.wb, %vector.body ] ; 2 uses
  %i.wx = add i64 %.03641.i, %.03542.i
  %i.wy = xor i64 %.03542.i, 1
  %i.wz = icmp ult i64 %.lcssa749, %i.ur
  %indvar.next = add i64 %indvar, 1
  br i1 %i.wz, label %bb.cq, label %_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit, !llvm.loop !120

_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit: ; preds = %middle.block, %.preheader.i457
  store i32 7, ptr %0, align 8, !tbaa !7
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit, %bb.v, %bb.v, %bb.v, %bb.v
  %i.xa = call fastcc noundef i32 @_ZN13duckdb_brotliL15ProcessCommandsEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0) ; 2 uses
  %i.xb = icmp eq i32 %i.xa, 2
  br i1 %i.xb, label %bb.cs, label %.backedge.backedge

bb.cs:                                            ; preds = %bb.cr
  %i.xc = call fastcc noundef i32 @_ZN13duckdb_brotliL19SafeProcessCommandsEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  br label %.backedge.backedge

bb.ct:                                            ; preds = %bb.v, %bb.v, %bb.v
  %i.xd = call fastcc noundef i32 @_ZN13duckdb_brotliL15WriteRingBufferEPNS_24BrotliDecoderStateStructEPmPPhS2_i(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, i32 noundef 0) ; 2 uses
  %.not367 = icmp eq i32 %i.xd, 1
  br i1 %.not367, label %bb.cu, label %.backedge.backedge

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @_ZN13duckdb_brotliL14WrapRingBufferEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %i.xe = load i32, ptr %i.al, align 4, !tbaa !121 ; 2 uses
  %i.xf = load i32, ptr %i.aj, align 4
  %i.xg = lshr i32 %i.xf, 6
  %i.xh = and i32 %i.xg, 63
  %i.xi = shl nuw i32 1, %i.xh
  %i.xj = icmp eq i32 %i.xe, %i.xi
  br i1 %i.xj, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.xk = load i32, ptr %i.am, align 4, !tbaa !57
  store i32 %i.xk, ptr %i.an, align 8, !tbaa !122
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.xl = load i32, ptr %0, align 8, !tbaa !7
  switch i32 %i.xl, label %bb.df [
    i32 15, label %bb.cx
    i32 16, label %bb.de
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.xm = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 7 uses
  %.not368 = icmp eq ptr %i.xm, null
  br i1 %.not368, label %.thread570, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16 ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !39
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 20 ; 3 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !40 ; 2 uses
  %.not369 = icmp eq i32 %i.xo, %i.xq
  br i1 %.not369, label %.thread570, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xr = load i32, ptr %i.ap, align 8, !tbaa !123 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xm, i64 8 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xm, i64 12 ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xm, i64 152
  br label %bb.da

bb.da:                                            ; preds = %bb.dd, %bb.cz
  %i.xw = phi i32 [ %i.xe, %bb.cz ], [ %i.za, %bb.dd ] ; 2 uses
  %i.xx = phi i32 [ %i.xq, %bb.cz ], [ %i.yw, %bb.dd ] ; 2 uses
  %.042.i = phi i32 [ %i.xr, %bb.cz ], [ %i.ys, %bb.dd ] ; 4 uses
  %i.xy = load i32, ptr %i.xn, align 8, !tbaa !39 ; 2 uses
  %.not.i460 = icmp eq i32 %i.xy, %i.xx
  br i1 %.not.i460, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xz = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.ya = sext i32 %.042.i to i64
  %i.yb = getelementptr inbounds i8, ptr %i.xz, i64 %i.ya
  %i.yc = load i32, ptr %i.xt, align 8, !tbaa !124
  %i.yd = sext i32 %i.yc to i64                   ; 2 uses
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.xs, i64 %i.yd
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !31
  %i.yg = load i32, ptr %i.xu, align 4, !tbaa !125 ; 2 uses
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds i8, ptr %i.yf, i64 %i.yh
  %i.yj = sub nsw i32 %i.xw, %.042.i
  %i.yk = getelementptr [4 x i8], ptr %i.xv, i64 %i.yd ; 2 uses
  %i.yl = getelementptr i8, ptr %i.yk, i64 4
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !3
  %i.yn = load i32, ptr %i.yk, align 4, !tbaa !3
  %i.yo = add i32 %i.yg, %i.yn
  %i.yp = sub i32 %i.ym, %i.yo                    ; 2 uses
  %i.yq = sub nsw i32 %i.xy, %i.xx
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.yq, i32 %i.yp)
  %.1.i461 = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.yj) ; 5 uses
  %i.yr = sext i32 %.1.i461 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yb, ptr align 1 %i.yi, i64 %i.yr, i1 false)
  %i.ys = add nsw i32 %.1.i461, %.042.i           ; 4 uses
  %i.yt = load i32, ptr %i.xu, align 4, !tbaa !125
  %i.yu = add nsw i32 %.1.i461, %i.yt
  store i32 %i.yu, ptr %i.xu, align 4, !tbaa !125
  %i.yv = load i32, ptr %i.xp, align 4, !tbaa !40
  %i.yw = add nsw i32 %i.yv, %.1.i461             ; 2 uses
  store i32 %i.yw, ptr %i.xp, align 4, !tbaa !40
  %i.yx = icmp eq i32 %.1.i461, %i.yp
  br i1 %i.yx, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.yy = load i32, ptr %i.xt, align 8, !tbaa !124
  %i.yz = add nsw i32 %i.yy, 1
  store i32 %i.yz, ptr %i.xt, align 8, !tbaa !124
  store i32 0, ptr %i.xu, align 4, !tbaa !125
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.za = load i32, ptr %i.al, align 4, !tbaa !121 ; 2 uses
  %i.zb = icmp eq i32 %i.ys, %i.za
  br i1 %i.zb, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit, label %bb.da

_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit: ; preds = %bb.da, %bb.dd
  %i.zc = phi i32 [ %i.ys, %bb.dd ], [ %i.xw, %bb.da ]
  %.143.i = phi i32 [ %i.ys, %bb.dd ], [ %.042.i, %bb.da ]
  %i.zd = sub nsw i32 %.143.i, %i.xr
  %i.ze = load i32, ptr %i.ap, align 8, !tbaa !123
  %i.zf = add nsw i32 %i.ze, %i.zd                ; 2 uses
  store i32 %i.zf, ptr %i.ap, align 8, !tbaa !123
  %.not370 = icmp slt i32 %i.zf, %i.zc
  br i1 %.not370, label %.thread570, label %.backedge.backedge

.thread570:                                       ; preds = %bb.cx, %bb.cy, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit
  %i.zg = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.zh = icmp eq i32 %i.zg, 0
  %.404 = select i1 %i.zh, i32 14, i32 7
  store i32 %.404, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.de:                                            ; preds = %bb.cw
  store i32 10, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.df:                                            ; preds = %bb.cw
  %i.zi = load i32, ptr %i.aq, align 4, !tbaa !56
  %i.zj = icmp eq i32 %i.zi, 0
  br i1 %i.zj, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.zk = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 14, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.di:                                            ; preds = %bb.dg
  store i32 9, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.dj:                                            ; preds = %bb.df
  store i32 8, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.dk:                                            ; preds = %bb.v
  %i.zm = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.zn = icmp slt i32 %i.zm, 0
  br i1 %i.zn, label %.backedge.backedge, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN13duckdb_brotli39BrotliDecoderStateCleanupAfterMetablockEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %i.zo = load i32, ptr %i.aj, align 4
  %i.zp = and i32 %i.zo, 1
  %.not363 = icmp eq i32 %i.zp, 0
  br i1 %.not363, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 3, ptr %0, align 8, !tbaa !7
  br label %.backedge.backedge

bb.dn:                                            ; preds = %bb.dl
  %i.zq = load i64, ptr %i.ak, align 8, !tbaa !53 ; 3 uses
  %i.zr = and i64 %i.zq, 7                        ; 3 uses
  %.not.i412 = icmp eq i64 %i.zr, 0
  br i1 %.not.i412, label %_ZN13duckdb_brotliL24BrotliJumpToByteBoundaryEPNS_15BrotliBitReaderE.exit, label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433

_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433: ; preds = %bb.dn
  %i.zs = load i64, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.zr
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !32
  %i.zv = and i64 %i.zu, %i.zs
  %i.zw = and i64 %i.zq, -8                       ; 2 uses
  store i64 %i.zw, ptr %i.ak, align 8, !tbaa !53
  %i.zx = lshr i64 %i.zs, %i.zr
  store i64 %i.zx, ptr %i.c, align 8, !tbaa !54
  %i.zy = icmp ne i64 %i.zv, 0
  br label %_ZN13duckdb_brotliL24BrotliJumpToByteBoundaryEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL24BrotliJumpToByteBoundaryEPNS_15BrotliBitReaderE.exit: ; preds = %bb.dn, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433
  %i.zz = phi i64 [ %i.zq, %bb.dn ], [ %i.zw, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433 ] ; 4 uses
  %.0488 = phi i1 [ false, %bb.dn ], [ %i.zy, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433 ]
  %i.aaa = icmp ult i64 %i.zz, 64
  br i1 %i.aaa, label %bb.do, label %_ZN13duckdb_brotliL24BrotliBitReaderNormalizeEPNS_15BrotliBitReaderE.exit424

bb.do:                                            ; preds = %_ZN13duckdb_brotliL24BrotliJumpToByteBoundaryEPNS_15BrotliBitReaderE.exit
end_hunk_1
