Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc6encode20RingBufferInitBuffer17heb6af10ebfcd9149E:bb.a
  br label %.thread7

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i32, ptr %i.h, align 8, !noundef !45
  %i.j = add i32 %i.i, 2                          ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 7                  ; 3 uses
  %.not = icmp ugt i32 %i.j, %i.a
  br i1 %.not, label %.invoke, label %bb.f, !prof !87

.invoke:                                          ; preds = %bb.f, %bb.e
  %i.m = phi i64 [ %i.c, %bb.e ], [ %.val31, %bb.f ]
  %i.n = phi ptr [ @1825, %bb.e ], [ @1823, %bb.f ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.l, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) #43
          to label %.cont unwind label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit33"

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %.not16 = icmp ugt i64 %i.l, %.val31
  br i1 %.not16, label %.invoke, label %bb.d, !prof !47

.thread7:                                         ; preds = %bb.c, %bb.d
  store ptr %i.d, ptr %1, align 8
  store i64 %i.c, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 2, ptr %i.p, align 8
  store i8 0, ptr %i.d, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.q, align 1
  %i.r = zext i32 %0 to i64                       ; 7 uses
  %i.s = add nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = icmp samesign ult i64 %i.s, %i.c
  br i1 %i.t, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.thread7
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.s
  store i8 0, ptr %i.u, align 1
  %i.v = add nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.w = icmp samesign ult i64 %i.v, %i.c
  br i1 %i.w, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v
  store i8 0, ptr %i.x, align 1
  %i.y = add nuw nsw i64 %i.r, 4                  ; 3 uses
  %i.z = icmp samesign ult i64 %i.y, %i.c
  br i1 %i.z, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y
  store i8 0, ptr %i.aa, align 1
  %i.ab = add nuw nsw i64 %i.r, 5                 ; 3 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.c
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  store i8 0, ptr %i.ad, align 1
  %i.ae = add nuw nsw i64 %i.r, 6                 ; 3 uses
  %i.af = icmp samesign ult i64 %i.ae, %i.c
  br i1 %i.af, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ae
  store i8 0, ptr %i.ag, align 1
  %i.ah = add nuw nsw i64 %i.r, 7                 ; 2 uses
  %i.ai = icmp ult i32 %0, -2
  br i1 %i.ai, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah
  store i8 0, ptr %i.aj, align 1
  %i.ak = add nuw nsw i64 %i.r, 8                 ; 3 uses
  %i.al = icmp samesign ult i64 %i.ak, %i.c
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ak
  store i8 0, ptr %i.am, align 1
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %.thread7
  %.lcssa = phi i64 [ %i.s, %.thread7 ], [ %i.v, %bb.g ], [ %i.y, %bb.h ], [ %i.ab, %bb.i ], [ %i.ae, %bb.j ], [ %i.ah, %bb.k ], [ %i.ak, %bb.l ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1824) #43
  unreachable

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit33": ; preds = %.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.d) #38
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, i1 noundef zeroext %6, i8 noundef range(i8 0, 4) %7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %8, ptr noalias noundef nonnull align 1 %9, i8 noundef %10, i8 noundef %11, i64 noundef %12, i64 noundef %13, ptr noalias noundef nonnull align 4 %14, i64 noundef %15, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %16, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) %17, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %18, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef %21) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 4                ; 9 uses
  %i.k = alloca [984 x i8], align 8               ; 22 uses
  %i.l = alloca [984 x i8], align 8               ; 21 uses
  %i.m = alloca [984 x i8], align 8               ; 21 uses
  %i.n = alloca [152 x i8], align 8               ; 22 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [704 x i8], align 1               ; 6 uses
  %i.q = alloca [2192 x i8], align 8              ; 13 uses
  %i.r = alloca [2192 x i8], align 8              ; 7 uses
  %i.s = alloca [1040 x i8], align 8              ; 13 uses
  %i.t = alloca [1040 x i8], align 8              ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 24 uses
  %i.w = alloca [112 x i8], align 8               ; 8 uses
  %i.x = alloca [112 x i8], align 8               ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [11272 x i8], align 4             ; 6 uses
  %i.aa = alloca [280 x i8], align 2              ; 5 uses
  %i.ab = alloca [140 x i8], align 1              ; 5 uses
  %i.ac = alloca [1408 x i8], align 2             ; 5 uses
  %i.ad = alloca [704 x i8], align 1              ; 5 uses
  %i.ae = alloca [512 x i8], align 2              ; 5 uses
  %i.af = alloca [256 x i8], align 1              ; 5 uses
  %i.ag = alloca [2192 x i8], align 8             ; 6 uses
  %i.ah = alloca [2832 x i8], align 8             ; 6 uses
  %i.ai = alloca [1040 x i8], align 8             ; 6 uses
  %i.aj = alloca [152 x i8], align 8              ; 22 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [48 x i8], align 8               ; 7 uses
  %i.am = alloca [280 x i8], align 2              ; 5 uses
  %i.an = alloca [140 x i8], align 1              ; 5 uses
  %i.ao = alloca [1408 x i8], align 2             ; 5 uses
  %i.ap = alloca [704 x i8], align 1              ; 5 uses
  %i.aq = alloca [512 x i8], align 2              ; 5 uses
  %i.ar = alloca [256 x i8], align 1              ; 5 uses
  %i.as = alloca [2192 x i8], align 8             ; 7 uses
  %i.at = alloca [2832 x i8], align 8             ; 7 uses
  %i.au = alloca [1040 x i8], align 8             ; 7 uses
  %i.av = alloca [512 x i8], align 2              ; 5 uses
  %i.aw = alloca [256 x i8], align 1              ; 5 uses
  %i.ax = alloca [1024 x i8], align 4             ; 5 uses
  %i.ay = alloca [152 x i8], align 8              ; 22 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [8 x i8], align 8                ; 5 uses
  %i.bc = alloca [264 x i8], align 8              ; 47 uses
  %i.bd = alloca [112 x i8], align 8              ; 13 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.bf = load i8, ptr %i.be, align 8, !range !52, !noundef !45
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 100
  %i.bi = load i8, ptr %i.bh, align 4, !range !52
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond = select i1 %i.bg, i1 true, i1 %i.bj
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.sroa.gep1389 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.sroa.gep1390 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.sroa.gep1391 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep1392 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep1393 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep1394 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.sroa.gep1395 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep1396 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink.sroa.gep1398 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink.sroa.gep1399 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.sroa.gep1400 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.sroa.gep1401 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.sroa.gep1402 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.sroa.gep1403 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.sroa.gep1404 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sink.sroa.gep1405 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sink.sroa.gep1406 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sink.sroa.gep1408 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.sroa.gep1409 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.sroa.gep1410 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.sroa.gep1411 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.sroa.gep1412 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.sroa.gep1413 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.sroa.gep1414 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink.sroa.gep1415 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sink.sroa.gep1416 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sink.sroa.gep1418 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink.sroa.gep1419 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.sroa.gep1420 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.sroa.gep1421 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.sroa.gep1422 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink.sroa.gep1423 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.sroa.gep1424 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink.sroa.gep1425 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sink.sroa.gep1426 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 102
  %i.bl = load i8, ptr %i.bk, align 2, !range !52, !noundef !45
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1826, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1827) #43
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %6, %bb.b ], [ false, %bb.a ] ; 10 uses
  %22 = trunc i64 %4 to i32                       ; 3 uses
  %23 = icmp ugt i64 %4, 3221225471
  %24 = and i32 %22, 1073741823
  %25 = and i32 %22, 1073741824
  %reass.sub = sub nsw i32 %24, %25
  %26 = xor i32 %reass.sub, -2147483648
  %.sroa.012.0 = select i1 %23, i32 %26, i32 %22  ; 7 uses
  %i.bn = zext nneg i8 %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bd, ptr noundef nonnull align 8 dereferenceable(112) %8, i64 112, i1 false)
  %i.bo = icmp eq i64 %5, 0
  br i1 %i.bo, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = tail call noundef zeroext i1 @_ZN6brotli3enc6encode15should_compress17he8a685b155995016E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %12, i64 noundef %13)
  br i1 %i.bp, label %bb.g, label %bb.f

.sink.split:                                      ; preds = %bb.d, %bb.f
  tail call void @_ZN6brotli3enc6encode28WriteEmptyLastBlocksInternal17hbf27001cc1f7fee1E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef %21)
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull readonly align 4 dereferenceable(16) %16, i64 16, i1 false), !alias.scope !38133, !noalias !38134
  %i.bq = zext i32 %.sroa.012.0 to i64
  tail call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17hce9957366ac74809E(ptr noalias noundef nonnull align 1 %0, i1 noundef zeroext %.sroa.0.0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bq, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %8, i64 noundef %5, ptr noalias noundef align 8 dereferenceable(8) %18, ptr noalias noundef align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef %21, i1 noundef zeroext false)
  %i.br = xor i1 %6, %.sroa.0.0
  br i1 %i.br, label %.sink.split, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bs = load i64, ptr %19, align 8, !noundef !45 ; 2 uses
  %i.bt = lshr i64 %i.bs, 3                       ; 3 uses
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %21
  br i1 %i.bv, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f, %.sink.split, %bb.lf, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  ret void

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %20, i64 %i.bu ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !45
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 %i.bt ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !noundef !45
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.cb = load i32, ptr %i.ca, align 8, !noundef !45 ; 4 uses
  %i.cc = icmp slt i32 %i.cb, 3
  br i1 %i.cc, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bu, i64 noundef %21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1828) #43
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cd = icmp eq i32 %i.cb, 3
  br i1 %i.cd, label %bb.z, label %bb.y

bb.l:                                             ; preds = %bb.i
  %i.ce = zext i32 %.sroa.012.0 to i64            ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !38138
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.az, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %i.ce, i64 noundef range(i64 1, 4294967296) %5, i64 noundef range(i64 0, 4294967296) %3), !noalias !38139
  %i.cf = load ptr, ptr %i.az, align 8, !noalias !38138, !nonnull !45, !align !55, !noundef !45
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !38138, !noundef !45
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !38138, !nonnull !45, !align !55, !noundef !45
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !38138, !noundef !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !38138
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 97
  %i.cn = load i8, ptr %i.cm, align 1, !range !52, !alias.scope !38136, !noalias !38140, !noundef !45
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !alias.scope !38136, !noalias !38140, !noundef !45
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext %.sroa.0.0, i64 noundef range(i64 1, 4294967296) %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !38141
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !38141
  %i.cr = icmp ult i64 %13, 129
  br i1 %i.cr, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %.not.i = icmp ugt i64 %13, %15
  br i1 %.not.i, label %bb.o, label %bb.p, !prof !47

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !38138
  store ptr @186, ptr %i.al, align 8, !noalias !38138
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.cs, align 8, !noalias !38138
  %i.ct = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr null, ptr %i.ct, align 8, !noalias !38138
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cu, align 8, !noalias !38138
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %i.cv, align 8, !noalias !38138
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1626) #43, !noalias !38139
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !38138
  store ptr inttoptr (i64 1 to ptr), ptr %i.ay, align 8, !noalias !38138
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !38138
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !38138
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 0, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !38138
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !38138
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %i.cw, align 8, !noalias !38138
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store i64 0, ptr %i.cx, align 8, !noalias !38138
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.cy, align 8, !noalias !38138
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store i64 0, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !38138
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !38138
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store i64 0, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !38138
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  store i32 1, ptr %.sroa.717.0..sroa_idx.i, align 8, !noalias !38138
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %i.cz, align 8, !noalias !38138
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  store i64 0, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !38138
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !38138
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  store i64 0, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !38138
  %.sroa.723.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  store i32 1, ptr %.sroa.723.0..sroa_idx.i, align 8, !noalias !38138
  %i.da = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  store ptr inttoptr (i64 4 to ptr), ptr %i.da, align 8, !noalias !38138
  %i.db = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  store i64 0, ptr %i.db, align 8, !noalias !38138
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cf, i64 noundef %i.ch, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cj, i64 noundef %i.cl, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %16, ptr noalias noundef nonnull align 8 dereferenceable(8) %18, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %8, i8 noundef 0), !noalias !38142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !38138
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  %i.dc = zext i32 %i.cq to i64
  %i.dd = add nsw i64 %i.dc, -1
  %i.de = lshr i64 %i.dd, 1
  %i.df = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.de, i1 false)
  %i.dg = sub nuw nsw i64 65, %i.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !38138
  %i.dh = getelementptr inbounds nuw i8, ptr %i.au, i64 1024
  %i.di = getelementptr inbounds nuw i8, ptr %i.au, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.au, i8 0, i64 1032, i1 false), !noalias !38138
  store float 3.402000e+38, ptr %i.di, align 8, !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !38138
  %i.dj = getelementptr inbounds nuw i8, ptr %i.at, i64 2816
  %i.dk = getelementptr inbounds nuw i8, ptr %i.at, i64 2824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.at, i8 0, i64 2824, i1 false), !noalias !38138
  store float 3.402000e+38, ptr %i.dk, align 8, !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !38138
  %i.dl = getelementptr inbounds nuw i8, ptr %i.as, i64 2176
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 2184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.as, i8 0, i64 2184, i1 false), !noalias !38138
  store float 3.402000e+38, ptr %i.dm, align 8, !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !38138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ar, i8 0, i64 256, i1 false), !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !38138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.aq, i8 0, i64 512, i1 false), !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !38138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.ap, i8 0, i64 704, i1 false), !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !38138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.ao, i8 0, i64 1408, i1 false), !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !38138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.an, i8 0, i64 140, i1 false), !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !38138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.am, i8 0, i64 280, i1 false), !noalias !38138
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %i.ce, i64 noundef range(i64 0, 4294967296) %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.as), !noalias !38141
  %i.dn = load i64, ptr %i.dh, align 8, !noalias !38138, !noundef !45
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17hd0a5c367cceed3c5E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.au, i64 noundef 256, i64 noundef %i.dn, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ar, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.aq, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !38141
  %i.do = load i64, ptr %i.dj, align 8, !noalias !38138, !noundef !45
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17hd0a5c367cceed3c5E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.at, i64 noundef 704, i64 noundef %i.do, i64 noundef 10, ptr noalias noundef nonnull align 1 %i.ap, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.ao, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !38141
  %i.dp = load i64, ptr %i.dl, align 8, !noalias !38138, !noundef !45
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17hd0a5c367cceed3c5E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.as, i64 noundef 544, i64 noundef %i.dp, i64 noundef %i.dg, ptr noalias noundef nonnull align 1 %i.an, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.am, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !38141
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %i.ce, i64 noundef range(i64 0, 4294967296) %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ar, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.aq, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.ao, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.an, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.am, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !38141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !38138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !38138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !38138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !38138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !38138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !38138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !38138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !38138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !38138
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !38138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ax, i8 0, i64 1024, i1 false), !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !38138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.aw, i8 0, i64 256, i1 false), !noalias !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !38138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.av, i8 0, i64 512, i1 false), !noalias !38138
  %.not26.i = icmp eq i64 %13, 0
  br i1 %.not26.i, label %._crit_edge14.i, label %.lr.ph13.i
end_hunk_0
begin_hunk_1_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17h3a1fcabc17cc65d3E":bb.a

._crit_edge:                                      ; preds = %bb.ba, %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !38727)
  %i.is = trunc i64 %i.ip to i32                  ; 5 uses
  %i.it = load i32, ptr %i.fu, align 4, !alias.scope !38727, !noalias !38728, !noundef !45 ; 5 uses
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0)
  %i.iu = load i8, ptr %i.fv, align 2, !range !52, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.kq, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge
  br i1 %i.ig, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0)
  %i.iw = load i32, ptr %i.fq, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.ix = and i32 %i.iw, 63
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = shl nuw i64 1, %i.iy
  %i.ja = icmp ugt i64 %i.ip, %i.iz
  br i1 %i.ja, label %bb.kq, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  store i8 1, ptr %i.fv, align 2, !alias.scope !38727, !noalias !38728
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !38729
  %i.jb = load i8, ptr %i.fw, align 2, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.jc = zext i8 %i.jb to i64
  store i64 %i.jc, ptr %i.ab, align 8, !noalias !38729
  %i.jd = and i64 %i.ip, 4294967295               ; 3 uses
  %i.je = load i64, ptr %i.fo, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.jf = load i64, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.jg = sub i64 %i.je, %i.jf
  %.sroa.0.0.i.i24 = call noundef i64 @llvm.umax.i64(i64 %i.jg, i64 %i.jd)
  %i.jh = shl i64 %.sroa.0.0.i.i24, 1
  %i.ji = add i64 %i.jh, 527                      ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38730)
  %i.jj = load i64, ptr %i.fy, align 8, !alias.scope !38731, !noalias !38728, !noundef !45
  %i.jk = icmp ult i64 %i.jj, %i.ji
  br i1 %i.jk, label %bb.bg, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i"

bb.bg:                                            ; preds = %bb.bf
  %i.jl = load ptr, ptr %i.fz, align 8, !alias.scope !38731, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %i.jm = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38731, !noalias !38728, !noundef !45
  store ptr inttoptr (i64 1 to ptr), ptr %i.fz, align 8, !alias.scope !38731, !noalias !38728
  store i64 0, ptr %.phi.trans.insert.i, align 8, !alias.scope !38731, !noalias !38728
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i33"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i33": ; preds = %bb.bg
  call void @mi_free(ptr noundef nonnull align 1 %i.jl) #38, !noalias !38732
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i33", %bb.bg
  %i.jo = icmp slt i64 %i.ji, 0
  br i1 %i.jo, label %bb.bh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38733
  %i.jp = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ji, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !38733 ; 3 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.bh, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.thread.i"

bb.bh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34"
  %.sroa.4.0.ph.i.i.i.i36 = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35 ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34" ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i36, i64 %i.ji, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38734
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35
  store ptr %i.jp, ptr %i.fz, align 8, !alias.scope !38731, !noalias !38728
  store i64 %i.ji, ptr %.phi.trans.insert.i, align 8, !alias.scope !38731, !noalias !38728
  store i64 %i.ji, ptr %i.fy, align 8, !alias.scope !38731, !noalias !38728
  br label %bb.bi

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i": ; preds = %bb.bf
  %.val149.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728
  %i.jr = icmp eq i64 %.val149.pre.i, 0
  br i1 %i.jr, label %bb.bj, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i._crit_edge"

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i._crit_edge": ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i"
  %.val148.i.pre = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728
  br label %bb.bi

bb.bi:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i._crit_edge", %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.thread.i"
  %.val148.i = phi ptr [ %.val148.i.pre, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i._crit_edge" ], [ %i.jp, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.thread.i" ]
  %i.js = load i16, ptr %i.ga, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.jt = trunc i16 %i.js to i8
  store i8 %i.jt, ptr %.val148.i, align 1, !noalias !38728
  %.val147.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 2 uses
  %i.ju = icmp ugt i64 %.val147.i, 1
  br i1 %i.ju, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1829) #43, !noalias !38728
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %.val146.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %i.jv = load i16, ptr %i.ga, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.jw = lshr i16 %i.jv, 8
  %i.jx = getelementptr inbounds nuw i8, ptr %.val146.i, i64 1
  %i.jy = trunc nuw i16 %i.jw to i8
  store i8 %i.jy, ptr %i.jx, align 1, !noalias !38728
  %i.jz = load i8, ptr %i.gb, align 1, !range !51, !alias.scope !38727, !noalias !38728, !noundef !45 ; 2 uses
  %i.ka = icmp eq i8 %i.jz, 0
  br i1 %i.ka, label %bb.bm, label %thread-pre-split.i

bb.bl:                                            ; preds = %bb.bi
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef %.val147.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1830) #43, !noalias !38728
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.kb = load i8, ptr %i.gc, align 1, !range !52, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.bo, label %bb.bn

thread-pre-split.i:                               ; preds = %bb.bw, %bb.bk
  %i.kd = phi i8 [ %i.jz, %bb.bk ], [ %.pr.pre.i, %bb.bw ]
  %.sroa.011.0.i25 = phi i64 [ 0, %bb.bk ], [ %.sroa.011.1.i, %bb.bw ] ; 2 uses
  %i.ke = icmp eq i8 %i.kd, 3
  br i1 %i.ke, label %bb.bx, label %thread-pre-split.thread.i

bb.bn:                                            ; preds = %bb.br, %bb.bm
  %.sroa.011.1.i = phi i64 [ %i.kh, %bb.br ], [ 0, %bb.bm ] ; 5 uses
  %i.kf = icmp eq i32 %i.is, 0
  br i1 %i.kf, label %bb.bt, label %thread-pre-split.thread.i

bb.bo:                                            ; preds = %bb.bm
  %.val144.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %.val145.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  call void @_ZN6brotli3enc17brotli_bit_stream28BrotliWriteMetadataMetaBlock17h419927a0fd1f2ae4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gd, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 1 %.val144.i, i64 noundef %.val145.i), !noalias !38728
  %.val176.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %.val177.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.kg = load i64, ptr %i.ab, align 8, !noalias !38729, !noundef !45 ; 2 uses
  %i.kh = lshr i64 %i.kg, 3                       ; 5 uses
  %i.ki = icmp ult i64 %i.kh, %.val177.i
  br i1 %i.ki, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kj = add nuw nsw i64 %i.kh, 1                ; 3 uses
  %i.kk = icmp ult i64 %i.kj, %.val177.i
  br i1 %i.kk, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kh, i64 noundef %.val177.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1831) #43, !noalias !38728
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.kl = getelementptr inbounds nuw i8, ptr %.val176.i, i64 %i.kh
  %i.km = load i8, ptr %i.kl, align 1, !noalias !38728, !noundef !45
  %i.kn = zext i8 %i.km to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %.val176.i, i64 %i.kj
  %i.kp = load i8, ptr %i.ko, align 1, !noalias !38728, !noundef !45
  %i.kq = zext i8 %i.kp to i16
  %i.kr = shl nuw i16 %i.kq, 8
  %i.ks = or disjoint i16 %i.kr, %i.kn
  store i16 %i.ks, ptr %i.ga, align 8, !alias.scope !38727, !noalias !38728
  %i.kt = trunc i64 %i.kg to i8
  %i.ku = and i8 %i.kt, 7
  store i8 %i.ku, ptr %i.fw, align 2, !alias.scope !38727, !noalias !38728
  store i32 0, ptr %i.ge, align 8, !alias.scope !38727, !noalias !38728
  store i32 0, ptr %i.gf, align 4, !alias.scope !38727, !noalias !38728
  store i8 1, ptr %i.gb, align 1, !alias.scope !38727, !noalias !38728
  br label %bb.bn

bb.bs:                                            ; preds = %bb.bp
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kj, i64 noundef %.val177.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1832) #43, !noalias !38728
  unreachable

bb.bt:                                            ; preds = %bb.bn
  %i.kv = load i8, ptr %i.gg, align 4, !range !52, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.bu, label %thread-pre-split.thread.i

bb.bu:                                            ; preds = %bb.bt
  %i.kx = load i8, ptr %i.gh, align 8, !range !52, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.bv, label %thread-pre-split.thread.i

bb.bv:                                            ; preds = %bb.bu
  %i.kz = load i8, ptr %i.gi, align 2, !range !52, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %thread-pre-split.thread.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val142.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %.val143.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  call void @_ZN6brotli3enc17brotli_bit_stream27BrotliWritePaddingMetaBlock17hdb52f5102f689cf3E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 1 %.val142.i, i64 noundef %.val143.i), !noalias !38728
  %.pr.pre.i = load i8, ptr %i.gb, align 1, !alias.scope !38727, !noalias !38728
  br label %thread-pre-split.i

bb.bx:                                            ; preds = %bb.cq, %bb.bz, %bb.by, %thread-pre-split.i
  %.sroa.0.021.i = phi i32 [ %i.is, %thread-pre-split.i ], [ 0, %bb.bz ], [ %i.nb, %bb.cq ], [ %i.is, %bb.by ] ; 19 uses
  %.sroa.011.2.i = phi i64 [ %.sroa.011.0.i25, %thread-pre-split.i ], [ %.sroa.011.0192.i, %bb.bz ], [ %i.ls, %bb.cq ], [ %.sroa.011.0192.i, %bb.by ] ; 5 uses
  %.sroa.07.0.i = phi i64 [ %i.ip, %thread-pre-split.i ], [ %i.ip, %bb.bz ], [ %i.nd, %bb.cq ], [ %i.ip, %bb.by ]
  %i.lb = load i64, ptr %i.fp, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 2 uses
  %i.lc = trunc i64 %i.lb to i32                  ; 3 uses
  %i.ld = icmp ugt i64 %i.lb, 3221225471
  %8 = and i32 %i.lc, 1073741823
  %9 = and i32 %i.lc, 1073741824
  %reass.sub.i = sub nsw i32 %8, %9
  %10 = xor i32 %reass.sub.i, -2147483648
  %.sroa.023.0.i = select i1 %i.ld, i32 %10, i32 %i.lc ; 17 uses
  %11 = load i32, ptr %i.ai, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 2 uses
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %bb.cr, label %thread-pre-split23.i

thread-pre-split.thread.i:                        ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bn, %thread-pre-split.i
  %.sroa.011.0192.i = phi i64 [ %.sroa.011.0.i25, %thread-pre-split.i ], [ %.sroa.011.1.i, %bb.bn ], [ %.sroa.011.1.i, %bb.bv ], [ %.sroa.011.1.i, %bb.bu ], [ %.sroa.011.1.i, %bb.bt ] ; 2 uses
  %i.le = load i8, ptr %i.gi, align 2, !range !52, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %thread-pre-split.thread.i
  store i8 3, ptr %i.gb, align 1, !alias.scope !38727, !noalias !38728
  br label %bb.bx

bb.bz:                                            ; preds = %thread-pre-split.thread.i
  %i.lg = icmp eq i32 %i.is, 0
  br i1 %i.lg, label %bb.bx, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lh = load i64, ptr %i.fp, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.li = icmp ult i64 %i.lh, 2
  br i1 %i.li, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lj = load i8, ptr %i.gj, align 4, !range !52, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.cd, label %bb.cc, !prof !58

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1833, i64 noundef 72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1834) #43, !noalias !38728
  unreachable

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.0.0.i194.i = call noundef i64 @llvm.umin.i64(i64 %i.jd, i64 2) ; 6 uses
  %.val141.i = load i64, ptr %i.gk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.ll = load i64, ptr %i.gl, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.lm = icmp ugt i64 %i.ll, %.val141.i
  br i1 %i.lm, label %bb.cf, label %bb.ce, !prof !47

bb.ce:                                            ; preds = %bb.cd
  %.val140.i = load ptr, ptr %i.ft, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %i.ln = sub nuw i64 %.val141.i, %i.ll           ; 5 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.val140.i, i64 %i.ll ; 3 uses
  %i.lp = load i64, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.lq = zext i32 %i.it to i64                   ; 3 uses
  %.val138.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %.val139.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17hce9957366ac74809E(ptr noalias noundef nonnull align 1 %i.fw, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lo, i64 noundef %i.ln, i64 noundef %i.lp, i64 noundef %i.lq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gd, i64 noundef %.sroa.0.0.i194.i, ptr noalias noundef align 8 dereferenceable(8) %i.gm, ptr noalias noundef align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 1 %.val138.i, i64 noundef %.val139.i, i1 noundef zeroext false), !noalias !38728
  %.val172.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %.val173.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.lr = load i64, ptr %i.ab, align 8, !noalias !38729, !noundef !45 ; 2 uses
  %i.ls = lshr i64 %i.lr, 3                       ; 5 uses
  %i.lt = icmp ult i64 %i.ls, %.val173.i
  br i1 %i.lt, label %bb.cg, label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ll, i64 noundef %.val141.i, i64 noundef %.val141.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1856) #43, !noalias !38728
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.lu = add nuw nsw i64 %i.ls, 1                ; 3 uses
  %i.lv = icmp ult i64 %i.lu, %.val173.i
  br i1 %i.lv, label %bb.ci, label %bb.cj

bb.ch:                                            ; preds = %bb.ce
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ls, i64 noundef %.val173.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1835) #43, !noalias !38728
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.lw = getelementptr inbounds nuw i8, ptr %.val172.i, i64 %i.ls
  %i.lx = load i8, ptr %i.lw, align 1, !noalias !38728, !noundef !45
  %i.ly = zext i8 %i.lx to i16
  %i.lz = getelementptr inbounds nuw i8, ptr %.val172.i, i64 %i.lu
  %i.ma = load i8, ptr %i.lz, align 1, !noalias !38728, !noundef !45
  %i.mb = zext i8 %i.ma to i16
  %i.mc = shl nuw i16 %i.mb, 8
  %i.md = or disjoint i16 %i.mc, %i.ly
  store i16 %i.md, ptr %i.ga, align 8, !alias.scope !38727, !noalias !38728
  %i.me = trunc i64 %i.lr to i8
  %i.mf = and i8 %i.me, 7
  store i8 %i.mf, ptr %i.fw, align 2, !alias.scope !38727, !noalias !38728
  %i.mg = load i8, ptr %i.gn, align 1, !alias.scope !38727, !noalias !38728, !noundef !45
  store i8 %i.mg, ptr %i.go, align 8, !alias.scope !38727, !noalias !38728
  %i.mh = load i64, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.mi = and i64 %i.mh, %i.lq                    ; 3 uses
  %i.mj = icmp ult i64 %i.mi, %i.ln
  br i1 %i.mj, label %bb.ck, label %bb.cl

bb.cj:                                            ; preds = %bb.cg
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.lu, i64 noundef %.val173.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1836) #43, !noalias !38728
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.mi
  %i.ml = load i8, ptr %i.mk, align 1, !noalias !38728, !noundef !45 ; 2 uses
  store i8 %i.ml, ptr %i.gn, align 1, !alias.scope !38727, !noalias !38728
  %i.mm = icmp samesign ugt i64 %i.jd, 1
  br i1 %i.mm, label %bb.cm, label %bb.cp

bb.cl:                                            ; preds = %bb.ci
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.mi, i64 noundef %i.ln, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1837) #43, !noalias !38728
  unreachable

bb.cm:                                            ; preds = %bb.ck
  store i8 %i.ml, ptr %i.go, align 8, !alias.scope !38727, !noalias !38728
  %i.mn = add i64 %i.mh, 1
  %i.mo = and i64 %i.mn, %i.lq                    ; 3 uses
  %i.mp = icmp ult i64 %i.mo, %i.ln
  br i1 %i.mp, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.mo, i64 noundef %i.ln, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1838) #43, !noalias !38728
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.mo
  %i.mr = load i8, ptr %i.mq, align 1, !noalias !38728, !noundef !45
  store i8 %i.mr, ptr %i.gn, align 1, !alias.scope !38727, !noalias !38728
  %i.ms = add i64 %i.mh, %.sroa.0.0.i194.i
  store i64 %i.ms, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728
  %i.mt = load i64, ptr %i.fp, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.mu = add i64 %i.mt, %.sroa.0.0.i194.i        ; 2 uses
  store i64 %i.mu, ptr %i.fp, align 8, !alias.scope !38727, !noalias !38728
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ck
  %i.mv = add i64 %i.mh, %.sroa.0.0.i194.i
  store i64 %i.mv, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728
  %i.mw = load i64, ptr %i.fp, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.mx = add i64 %i.mw, %.sroa.0.0.i194.i        ; 2 uses
  store i64 %i.mx, ptr %i.fp, align 8, !alias.scope !38727, !noalias !38728
  %i.my = load i8, ptr %i.gb, align 1, !range !51, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.mz = icmp eq i8 %i.my, 2
  %..i = select i1 %i.mz, i8 3, i8 2
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.sink.i32 = phi i8 [ %..i, %bb.cp ], [ 3, %bb.co ]
  %i.na = phi i64 [ %i.mx, %bb.cp ], [ %i.mu, %bb.co ]
  %.pn.i = trunc nuw nsw i64 %.sroa.0.0.i194.i to i32
  %i.nb = sub i32 %i.is, %.pn.i
  store i8 %.sink.i32, ptr %i.gb, align 1, !alias.scope !38727, !noalias !38728
  store i32 0, ptr %i.ge, align 8, !alias.scope !38727, !noalias !38728
  store i32 0, ptr %i.gf, align 4, !alias.scope !38727, !noalias !38728
  %i.nc = load i64, ptr %i.fo, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.nd = sub i64 %i.nc, %i.na
  br label %bb.bx

bb.cr:                                            ; preds = %bb.bx
  %.val153.i = load i64, ptr %i.gq, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.ne = icmp eq i64 %.val153.i, 0
  br i1 %i.ne, label %bb.cs, label %thread-pre-split23.thread.i

bb.cs:                                            ; preds = %bb.cr
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38735
  %i.nf = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 524288, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38735 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.ct, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 524288, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38736
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i": ; preds = %bb.cs
  %.val155.i = load i64, ptr %i.gq, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.nh = icmp eq i64 %.val155.i, 0
  br i1 %i.nh, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i31", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"
  %.val154.i = load ptr, ptr %i.gp, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val154.i) #38, !noalias !38728
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i31"

thread-pre-split23.i:                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i", %bb.bx
  %i.ni = phi i32 [ %11, %bb.bx ], [ %.pr24.pre.i, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i" ] ; 2 uses
  %switch.i26 = icmp ult i32 %i.ni, 2
  br i1 %switch.i26, label %thread-pre-split23.thread.i, label %bb.cv

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i31": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"
  store ptr %i.nf, ptr %i.gp, align 8, !alias.scope !38727, !noalias !38728
  store i64 131072, ptr %i.gq, align 8, !alias.scope !38727, !noalias !38728
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38737
  %i.nj = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 131072, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !38737 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.cu, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h460e4b1e656da446E.exit.i"

bb.cu:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i31"
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 131072, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38738
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h460e4b1e656da446E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i31"
  %.val151.i = load i64, ptr %i.gs, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.nl = icmp eq i64 %.val151.i, 0
  br i1 %i.nl, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i195.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i195.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h460e4b1e656da446E.exit.i"
  %.val150.i = load ptr, ptr %i.gr, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val150.i) #38, !noalias !38728
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i195.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h460e4b1e656da446E.exit.i"
  store ptr %i.nj, ptr %i.gr, align 8, !alias.scope !38727, !noalias !38728
  store i64 131072, ptr %i.gs, align 8, !alias.scope !38727, !noalias !38728
  %.pr24.pre.i = load i32, ptr %i.ai, align 8, !alias.scope !38727, !noalias !38728
  br label %thread-pre-split23.i

thread-pre-split23.thread.i:                      ; preds = %thread-pre-split23.i, %bb.cr
  %i.nm = phi i32 [ %i.ni, %thread-pre-split23.i ], [ 1, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !38729
  store i64 0, ptr %i.aa, align 8, !noalias !38729
  %i.nn = icmp ne i64 %.sroa.07.0.i, 0
  %brmerge4.i = or i1 %i.ig, %i.nn
  br i1 %brmerge4.i, label %bb.cw, label %bb.cx

bb.cv:                                            ; preds = %thread-pre-split23.i
  %i.no = load i64, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 2 uses
  %i.np = lshr i32 %.sroa.0.021.i, 1
  %narrow.i = add nuw i32 %i.np, 1
  %i.nq = zext i32 %narrow.i to i64
  %i.nr = add i64 %i.no, %i.nq                    ; 2 uses
  %i.ns = load i64, ptr %i.gu, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.nt = icmp ugt i64 %i.nr, %i.ns
  br i1 %i.nt, label %bb.dk, label %bb.dn

bb.cw:                                            ; preds = %thread-pre-split23.thread.i
  %.val137.i = load i64, ptr %i.gk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.nu = load i64, ptr %i.gl, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.nv = icmp ugt i64 %i.nu, %.val137.i
  br i1 %i.nv, label %bb.cz, label %bb.cy, !prof !47

bb.cx:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hd00d3837a5c8f5ecE.exit.i", %thread-pre-split23.thread.i
  %storemerge.i = phi i64 [ %i.ol, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hd00d3837a5c8f5ecE.exit.i" ], [ %.sroa.011.2.i, %thread-pre-split23.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !38729
  br label %bb.kr

bb.cy:                                            ; preds = %bb.cw
  %.val136.i = load ptr, ptr %i.ft, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %i.nw = sub nuw i64 %.val137.i, %i.nu           ; 7 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.val136.i, i64 %i.nu ; 2 uses
  %i.ny = zext i32 %.sroa.0.021.i to i64          ; 3 uses
  %i.nz = call fastcc { ptr, i64 } @_ZN6brotli3enc6encode20GetHashTableInternal17hd59a7ac31547727cE(ptr noalias noundef align 4 dereferenceable(4096) %i.hr, ptr noalias noundef align 8 dereferenceable(16) %i.hs, i32 noundef %i.nm, i64 noundef %i.ny, ptr noalias noundef align 8 dereferenceable(8) %i.aa), !noalias !38728 ; 2 uses
  %i.oa = extractvalue { ptr, i64 } %i.nz, 0      ; 2 uses
  %i.ob = extractvalue { ptr, i64 } %i.nz, 1      ; 2 uses
  %i.oc = load i32, ptr %i.ai, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.od = icmp eq i32 %i.oc, 0
  %i.oe = and i32 %.sroa.023.0.i, %i.it
  %i.of = zext i32 %i.oe to i64                   ; 7 uses
  %i.og = icmp ult i64 %i.nw, %i.of               ; 2 uses
  br i1 %i.od, label %bb.da, label %bb.db

bb.cz:                                            ; preds = %bb.cw
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.nu, i64 noundef %.val137.i, i64 noundef %.val137.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1843) #43, !noalias !38728
  unreachable

bb.da:                                            ; preds = %bb.cy
  br i1 %i.og, label %bb.dd, label %bb.dc, !prof !47

bb.db:                                            ; preds = %bb.cy
  br i1 %i.og, label %bb.dg, label %bb.df, !prof !47

bb.dc:                                            ; preds = %bb.da
  %i.oh = sub nuw i64 %i.nw, %i.of
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.of
  %i.oj = load i64, ptr %i.aa, align 8, !noalias !38729, !noundef !45
  %.val134.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %.val135.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  call fastcc void @_ZN6brotli3enc17compress_fragment22compress_fragment_fast17h6c0d553cad315c42E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.oi, i64 noundef %i.oh, i64 noundef %i.ny, i1 noundef zeroext %i.ig, ptr noalias noundef nonnull align 4 %i.oa, i64 noundef %i.ob, i64 noundef %i.oj, ptr noalias noundef nonnull align 1 %i.ht, ptr noalias noundef nonnull align 2 %i.hu, ptr noalias noundef align 8 dereferenceable(8) %i.hv, ptr noalias noundef nonnull align 1 %i.hw, ptr noalias noundef align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 1 %.val134.i, i64 noundef %.val135.i)
  br label %bb.de

bb.dd:                                            ; preds = %bb.da
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.of, i64 noundef %i.nw, i64 noundef %i.nw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1839) #43, !noalias !38728
  unreachable

bb.de:                                            ; preds = %bb.df, %bb.dc
  %.val168.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %.val169.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.ok = load i64, ptr %i.ab, align 8, !noalias !38729, !noundef !45 ; 2 uses
  %i.ol = lshr i64 %i.ok, 3                       ; 5 uses
  %i.om = icmp ult i64 %i.ol, %.val169.i
  br i1 %i.om, label %bb.dh, label %bb.di

bb.df:                                            ; preds = %bb.db
  %i.on = sub nuw i64 %i.nw, %i.of
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.of
  %.val156.i = load ptr, ptr %i.gp, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !70, !noundef !45
  %.val157.i = load i64, ptr %i.gq, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %.val132.i = load ptr, ptr %i.gr, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %.val133.i = load i64, ptr %i.gs, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.op = load i64, ptr %i.aa, align 8, !noalias !38729, !noundef !45
  %.val130.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %.val131.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass26compress_fragment_two_pass17hc4772fb9232ebc34E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.oo, i64 noundef %i.on, i64 noundef %i.ny, i1 noundef zeroext %i.ig, ptr noalias noundef nonnull align 4 %.val156.i, i64 noundef %.val157.i, ptr noalias noundef nonnull align 1 %.val132.i, i64 noundef %.val133.i, ptr noalias noundef nonnull align 4 %i.oa, i64 noundef %i.ob, i64 noundef %i.op, ptr noalias noundef align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 1 %.val130.i, i64 noundef %.val131.i), !noalias !38728
  br label %bb.de

bb.dg:                                            ; preds = %bb.db
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.of, i64 noundef %i.nw, i64 noundef %i.nw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1842) #43, !noalias !38728
  unreachable

bb.dh:                                            ; preds = %bb.de
  %i.oq = add nuw nsw i64 %i.ol, 1                ; 3 uses
  %i.or = icmp ult i64 %i.oq, %.val169.i
  br i1 %i.or, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hd00d3837a5c8f5ecE.exit.i", label %bb.dj

bb.di:                                            ; preds = %bb.de
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ol, i64 noundef %.val169.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1840) #43, !noalias !38728
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hd00d3837a5c8f5ecE.exit.i": ; preds = %bb.dh
  %i.os = getelementptr inbounds nuw i8, ptr %.val168.i, i64 %i.ol
  %i.ot = load i8, ptr %i.os, align 1, !noalias !38728, !noundef !45
  %i.ou = zext i8 %i.ot to i16
  %i.ov = getelementptr inbounds nuw i8, ptr %.val168.i, i64 %i.oq
  %i.ow = load i8, ptr %i.ov, align 1, !noalias !38728, !noundef !45
  %i.ox = zext i8 %i.ow to i16
  %i.oy = shl nuw i16 %i.ox, 8
  %i.oz = or disjoint i16 %i.oy, %i.ou
  store i16 %i.oz, ptr %i.ga, align 8, !alias.scope !38727, !noalias !38728
  %i.pa = trunc i64 %i.ok to i8
  %i.pb = and i8 %i.pa, 7
  store i8 %i.pb, ptr %i.fw, align 2, !alias.scope !38727, !noalias !38728
  %i.pc = load i64, ptr %i.fo, align 8, !alias.scope !38739, !noalias !38728, !noundef !45
  store i64 %i.pc, ptr %i.fp, align 8, !alias.scope !38739, !noalias !38728
  store i32 0, ptr %i.ge, align 8, !alias.scope !38727, !noalias !38728
  store i32 0, ptr %i.gf, align 4, !alias.scope !38727, !noalias !38728
  br label %bb.cx

bb.dj:                                            ; preds = %bb.dh
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.oq, i64 noundef %.val169.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1841) #43, !noalias !38728
  unreachable

bb.dk:                                            ; preds = %bb.cv
  %i.pd = lshr i32 %.sroa.0.021.i, 2
  %i.pe = add nuw nsw i32 %i.pd, 16
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = add i64 %i.nr, %i.pf                    ; 12 uses
  store i64 %i.pg, ptr %i.gu, align 8, !alias.scope !38727, !noalias !38728
  %i.ph = shl i64 %i.pg, 4                        ; 4 uses
  %i.pi = icmp ugt i64 %i.pg, 1152921504606846975
  %i.pj = icmp ugt i64 %i.ph, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.pi, %i.pj
  br i1 %or.cond.i.i.i.i.i.i, label %bb.dm, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i: ; preds = %bb.dk
  %i.pk = icmp eq i64 %i.ph, 0
  br i1 %i.pk, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb45c8fe11f2372eeE.exit.i.i.i.i", label %bb.dl

bb.dl:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38740
  %i.pl = call noundef ptr @mi_malloc_aligned(i64 noundef %i.ph, i64 noundef range(i64 1, 9) 4) #38, !noalias !38740 ; 2 uses
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %bb.dm, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb45c8fe11f2372eeE.exit.i.i.i.i"

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.sroa.4.0.ph.i.i.i198.i = phi i64 [ 4, %bb.dl ], [ 0, %bb.dk ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i198.i, i64 %i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38741
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb45c8fe11f2372eeE.exit.i.i.i.i": ; preds = %bb.dl, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i ], [ %i.pl, %bb.dl ] ; 6 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i ], [ %i.pg, %bb.dl ]
  %i.pn = icmp samesign ule i64 %i.pg, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.pn)
  %i.po = icmp samesign ugt i64 %i.pg, 1
  br i1 %i.po, label %.lr.ph.i.i.i.preheader.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb45c8fe11f2372eeE.exit.i.i.i.i"
  %i.pp = zext i32 %.sroa.0.021.i to i64          ; 2 uses
  %i.pq = lshr i64 %i.pp, 2
  %i.pr = lshr i64 %i.pp, 1
  %i.ps = add nuw nsw i64 %i.pr, %i.pq
  %i.pt = add i64 %i.ps, %i.no
  %i.pu = shl i64 %i.pt, 4                        ; 2 uses
  %i.pv = add i64 %i.pu, 256
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i, i8 0, i64 %i.pv, i1 false), !noalias !38728
  %i.pw = getelementptr i8, ptr %.sroa.10.0.i.i.i.i, i64 %i.pu
  %scevgep.i = getelementptr i8, ptr %i.pw, i64 256
  br label %._crit_edge.thread.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb45c8fe11f2372eeE.exit.i.i.i.i"
  %.not.i.i.i.i = icmp eq i64 %i.pg, 0
  br i1 %.not.i.i.i.i, label %bb.do, label %._crit_edge.thread.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.0.0.lcssa15.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %._crit_edge.i.i.i.i ], [ %scevgep.i, %.lr.ph.i.i.i.preheader.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.lcssa15.i.i.i.i, i8 0, i64 16, i1 false), !noalias !38728
  br label %bb.do

bb.dn:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17hfba10cbfdfac5dc1E.exit.i", %bb.cv
  %.val129.i = load i64, ptr %i.gk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.px = load i64, ptr %i.gl, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.py = icmp ugt i64 %i.px, %.val129.i
  br i1 %i.py, label %bb.ie, label %bb.dt, !prof !47

bb.do:                                            ; preds = %._crit_edge.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %i.pz = icmp samesign ult i64 %i.pg, 576460752303423488
  call void @llvm.assume(i1 %i.pz)
  %.val180.i = load ptr, ptr %i.gv, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !70, !noundef !45
  %.val181.i = load i64, ptr %i.gw, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 3 uses
  %i.qa = icmp eq i64 %.val181.i, 0
  br i1 %i.qa, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17hfba10cbfdfac5dc1E.exit.i", label %bb.dq

bb.dp:                                            ; preds = %bb.ds
  call void @mi_free(ptr noundef nonnull align 4 %i.qg) #38, !noalias !38728
  %.val185.pr.pre.i = load i64, ptr %i.gw, align 8, !alias.scope !38727, !noalias !38728
  %i.qb = icmp eq i64 %.val185.pr.pre.i, 0
  br i1 %i.qb, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17hfba10cbfdfac5dc1E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i199.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i199.i": ; preds = %bb.dp
  %.val184.i = load ptr, ptr %i.gv, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val184.i) #38, !noalias !38728
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17hfba10cbfdfac5dc1E.exit.i"

bb.dq:                                            ; preds = %bb.do
  %i.qc = load i64, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %.not117.i = icmp ugt i64 %i.qc, %i.pg
  br i1 %.not117.i, label %.invoke.i29, label %bb.dr, !prof !87

bb.dr:                                            ; preds = %bb.dq
  %.not118.i = icmp ugt i64 %i.qc, %.val181.i
  br i1 %.not118.i, label %.invoke.i29, label %bb.ds, !prof !87

.invoke.i29:                                      ; preds = %bb.dr, %bb.dq
  %i.qd = phi i64 [ %i.pg, %bb.dq ], [ %.val181.i, %bb.dr ]
  %i.qe = phi ptr [ @1855, %bb.dq ], [ @1854, %bb.dr ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.qc, i64 noundef %i.qd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qe) #43
          to label %.cont.i30 unwind label %bb.kp, !noalias !38728

.cont.i30:                                        ; preds = %.invoke.i29
  unreachable

bb.ds:                                            ; preds = %bb.dr
  %i.qf = shl nuw nsw i64 %i.qc, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 4 %.val180.i, i64 %i.qf, i1 false), !alias.scope !38742, !noalias !38728
  %i.qg = load ptr, ptr %i.gv, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !70, !noundef !45
  %i.qh = load i64, ptr %i.gw, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  store ptr inttoptr (i64 4 to ptr), ptr %i.gv, align 8, !alias.scope !38727, !noalias !38728
  store i64 0, ptr %i.gw, align 8, !alias.scope !38727, !noalias !38728
  %i.qi = icmp eq i64 %i.qh, 0
  br i1 %i.qi, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17hfba10cbfdfac5dc1E.exit.i", label %bb.dp

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17hfba10cbfdfac5dc1E.exit.i": ; preds = %bb.ds, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i199.i", %bb.dp, %bb.do
  store ptr %.sroa.10.0.i.i.i.i, ptr %i.gv, align 8, !alias.scope !38727, !noalias !38728
  store i64 %i.pg, ptr %i.gw, align 8, !alias.scope !38727, !noalias !38728
  br label %bb.dn

bb.dt:                                            ; preds = %bb.dn
  %.val128.i = load ptr, ptr %i.ft, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %i.qj = sub nuw i64 %.val129.i, %i.px           ; 42 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.val128.i, i64 %i.px ; 30 uses
  %i.ql = zext i32 %i.it to i64                   ; 31 uses
  %i.qm = load i64, ptr %i.gx, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.qn = zext i32 %.sroa.023.0.i to i64          ; 33 uses
  %i.qo = zext i32 %.sroa.0.021.i to i64          ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38743)
  call void @llvm.experimental.noalias.scope.decl(metadata !38744)
  %i.qp = icmp eq i32 %.sroa.023.0.i, 0
  %i.qq = load i64, ptr %0, align 8, !range !111, !alias.scope !38745, !noalias !38746, !noundef !45
  %i.qr = icmp eq i64 %i.qq, 0                    ; 2 uses
  br i1 %i.qp, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  br i1 %i.qr, label %bb.dx, label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  br i1 %i.qr, label %bb.dx, label %bb.fi

bb.dw:                                            ; preds = %bb.du
  %i.qs = call fastcc noundef zeroext i1 @"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h7faecb0869e1adccE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0, i1 noundef zeroext %i.ig, i64 noundef range(i64 0, 4294967296) %i.qo, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj), !noalias !38728
  %.pre48.i = load i64, ptr %0, align 8, !range !111, !alias.scope !38727, !noalias !38728 ; 3 uses
  br i1 %i.qs, label %bb.fe, label %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i

bb.dx:                                            ; preds = %bb.dv, %bb.du
  call void @_ZN6brotli3enc6encode12ChooseHasher17hbdc88c51e80d42b4E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.gd), !noalias !38747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !38748
  call void @llvm.experimental.noalias.scope.decl(metadata !38749)
  call void @llvm.experimental.noalias.scope.decl(metadata !38750)
  %i.qt = load i32, ptr %i.gy, align 8, !alias.scope !38751, !noalias !38752, !noundef !45
  switch i32 %i.qt, label %bb.fd [
    i32 2, label %bb.dy
    i32 3, label %bb.ea
    i32 4, label %bb.ec
    i32 5, label %bb.ee
    i32 6, label %bb.eq
    i32 9, label %bb.er
    i32 54, label %bb.ev
    i32 10, label %bb.ex
  ]

bb.dy:                                            ; preds = %bb.dx
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38753
  %i.qu = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 262180, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38753 ; 2 uses
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %bb.dz, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i.i.i"

bb.dz:                                            ; preds = %bb.dy
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 262180, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38754
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i.i.i": ; preds = %bb.dy
  %i.qw = load i32, ptr %i.hb, align 4, !alias.scope !38751, !noalias !38752, !noundef !45 ; 2 uses
  %i.qx = icmp eq i32 %i.qw, 0
  %..i.i.i = select i1 %i.qx, i32 540, i32 %i.qw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !alias.scope !38755, !noalias !38747
  store ptr %i.qu, ptr %i.ha, align 8, !alias.scope !38749, !noalias !38756
  store i64 65545, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.810.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !38749, !noalias !38756
  store i32 1, ptr %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i32 %..i.i.i, ptr %.sroa.614.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i64 1, ptr %i.z, align 8, !alias.scope !38749, !noalias !38756
  br label %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i

bb.ea:                                            ; preds = %bb.dx
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38757
  %i.qy = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 262184, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38757 ; 2 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.eb, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit45.i.i.i"

bb.eb:                                            ; preds = %bb.ea
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 262184, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38758
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit45.i.i.i": ; preds = %bb.ea
  %i.ra = load i32, ptr %i.hb, align 4, !alias.scope !38751, !noalias !38752, !noundef !45 ; 2 uses
  %i.rb = icmp eq i32 %i.ra, 0
  %.42.i.i.i = select i1 %i.rb, i32 540, i32 %i.ra
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !alias.scope !38755, !noalias !38747
  store ptr %i.qy, ptr %i.ha, align 8, !alias.scope !38749, !noalias !38756
  store i64 65546, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.810.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !38749, !noalias !38756
  store i32 1, ptr %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i32 %.42.i.i.i, ptr %.sroa.614.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i64 2, ptr %i.z, align 8, !alias.scope !38749, !noalias !38756
  br label %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i

bb.ec:                                            ; preds = %bb.dx
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38759
  %i.rc = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 524320, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38759 ; 2 uses
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %bb.ed, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit46.i.i.i"

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 524320, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38760
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit46.i.i.i": ; preds = %bb.ec
  %i.re = load i32, ptr %i.hb, align 4, !alias.scope !38751, !noalias !38752, !noundef !45 ; 2 uses
  %i.rf = icmp eq i32 %i.re, 0
  %.43.i.i.i = select i1 %i.rf, i32 540, i32 %i.re
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !alias.scope !38755, !noalias !38747
  store ptr %i.rc, ptr %i.ha, align 8, !alias.scope !38749, !noalias !38756
  store i64 131080, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.810.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !38749, !noalias !38756
  store i32 1, ptr %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i32 %.43.i.i.i, ptr %.sroa.614.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i64 3, ptr %i.z, align 8, !alias.scope !38749, !noalias !38756
  br label %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i

bb.ee:                                            ; preds = %bb.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !38761)
  call void @llvm.experimental.noalias.scope.decl(metadata !38762)
  %i.rg = load i32, ptr %i.hc, align 8, !alias.scope !38763, !noalias !38764, !noundef !45 ; 3 uses
  %i.rh = and i32 %i.rg, 63
  %i.ri = zext nneg i32 %i.rh to i64              ; 2 uses
  %i.rj = load i32, ptr %i.hd, align 4, !alias.scope !38763, !noalias !38764, !noundef !45 ; 5 uses
  %i.rk = and i32 %i.rj, 63                       ; 3 uses
  %i.rl = zext nneg i32 %i.rk to i64              ; 2 uses
  %i.rm = shl nuw i64 1, %i.rl                    ; 5 uses
  %i.rn = shl i64 %i.rm, %i.ri                    ; 7 uses
  %i.ro = shl i64 %i.rn, 2                        ; 4 uses
  %i.rp = icmp ugt i64 %i.rn, 4611686018427387903
  %i.rq = icmp ugt i64 %i.ro, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.rp, %i.rq
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.eh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.ee
  %i.rr = icmp eq i64 %i.ro, 0
  br i1 %i.rr, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i.i.i.i", label %bb.ef

bb.ef:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38765
  %i.rs = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ro, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38765 ; 2 uses
  %i.rt = icmp eq ptr %i.rs, null
  br i1 %i.rt, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ru = ptrtoint ptr %i.rs to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i.i.i.i"

bb.eh:                                            ; preds = %bb.ef, %bb.ee
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %bb.ef ], [ 0, %bb.ee ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.ro, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38766
  unreachable
end_hunk_1
begin_hunk_2_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17h3a1fcabc17cc65d3E":bb.a
  store <4 x i32> %broadcast.splat, ptr %i.tp, align 4, !noalias !38785
  %index.next.1 = shl i64 %index, 2
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ti, i64 %index.next.1 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 80
  store <4 x i32> %broadcast.splat, ptr %i.tr, align 4, !noalias !38785
  store <4 x i32> %broadcast.splat, ptr %i.ts, align 4, !noalias !38785
  %index.next.2 = shl i64 %index, 2
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ti, i64 %index.next.2 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 96
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 112
  store <4 x i32> %broadcast.splat, ptr %i.tu, align 4, !noalias !38785
  store <4 x i32> %broadcast.splat, ptr %i.tv, align 4, !noalias !38785
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.tw = icmp eq i64 %index.next.3, 131072
  br i1 %i.tw, label %"_ZN188_$LT$brotli..enc..backward_references..hash_to_binary_tree..H10Buckets$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..hash_to_binary_tree..Allocable$LT$u32$C$AllocU32$GT$$GT$3new17h78e04ff3cfb13bebE.exit.i.i.i.i", label %vector.body, !llvm.loop !38544

bb.ey:                                            ; preds = %bb.ex
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 524288, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38786
  unreachable

"_ZN188_$LT$brotli..enc..backward_references..hash_to_binary_tree..H10Buckets$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..hash_to_binary_tree..Allocable$LT$u32$C$AllocU32$GT$$GT$3new17h78e04ff3cfb13bebE.exit.i.i.i.i": ; preds = %vector.body
  %i.tx = shl i64 2, %i.tg                        ; 3 uses
  %i.ty = shl i64 8, %i.tg                        ; 3 uses
  %i.tz = icmp ugt i64 %i.tx, 4611686018427387903
  %i.ua = icmp ugt i64 %i.ty, 9223372036854775804
  %or.cond.i.i.i.i.i53.i.i.i = or i1 %i.tz, %i.ua
  br i1 %or.cond.i.i.i.i.i53.i.i.i, label %bb.fb, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i54.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i54.i.i.i: ; preds = %"_ZN188_$LT$brotli..enc..backward_references..hash_to_binary_tree..H10Buckets$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..hash_to_binary_tree..Allocable$LT$u32$C$AllocU32$GT$$GT$3new17h78e04ff3cfb13bebE.exit.i.i.i.i"
  %i.ub = icmp samesign ugt i32 %i.tf, 60
  br i1 %i.ub, label %_ZN6brotli3enc19backward_references19hash_to_binary_tree14initialize_h1017hbc963d292da81f0bE.exit.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i54.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38787
  %i.uc = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ty, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38787 ; 2 uses
  %i.ud = icmp eq ptr %i.uc, null
  br i1 %i.ud, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ue = ptrtoint ptr %i.uc to i64
  br label %_ZN6brotli3enc19backward_references19hash_to_binary_tree14initialize_h1017hbc963d292da81f0bE.exit.i.i.i

bb.fb:                                            ; preds = %bb.ez, %"_ZN188_$LT$brotli..enc..backward_references..hash_to_binary_tree..H10Buckets$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..hash_to_binary_tree..Allocable$LT$u32$C$AllocU32$GT$$GT$3new17h78e04ff3cfb13bebE.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i58.i.i.i = phi i64 [ 4, %bb.ez ], [ 0, %"_ZN188_$LT$brotli..enc..backward_references..hash_to_binary_tree..H10Buckets$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..hash_to_binary_tree..Allocable$LT$u32$C$AllocU32$GT$$GT$3new17h78e04ff3cfb13bebE.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i58.i.i.i, i64 %i.ty, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i59.i.i.i unwind label %bb.fc, !noalias !38785

.noexc.i59.i.i.i:                                 ; preds = %bb.fb
  unreachable

bb.fc:                                            ; preds = %bb.fb
  %i.uf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZN6brotli3enc19backward_references19hash_to_binary_tree14initialize_h1017hbc963d292da81f0bE.exit.i.i.i: ; preds = %bb.fa, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i54.i.i.i
  %.sroa.10.0.i.i.i55.i.i.i = phi i64 [ %i.ue, %bb.fa ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i54.i.i.i ]
  %i.ug = inttoptr i64 %.sroa.10.0.i.i.i55.i.i.i to ptr
  %i.uh = icmp samesign ult i64 %i.tx, 2305843009213693952
  call void @llvm.assume(i1 %i.uh)
  %i.ui = xor i32 %notmask.i52.i.i.i, -1
  %i.uj = zext nneg i32 %i.ui to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !alias.scope !38755, !noalias !38747
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1012.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !38749, !noalias !38756
  store ptr %i.ti, ptr %i.ha, align 8, !alias.scope !38749, !noalias !38756
  store i64 131072, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store ptr %i.ug, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i64 %i.tx, ptr %.sroa.68.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i64 %i.uj, ptr %.sroa.79.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i64 %i.qm, ptr %.sroa.810.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i32 1, ptr %.sroa.1113.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i32 %.neg.i.i.i.i, ptr %.sroa.1214.0..sroa_idx.i.i.i, align 8, !alias.scope !38749, !noalias !38756
  store i64 10, ptr %i.z, align 8, !alias.scope !38749, !noalias !38756
  br label %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i

bb.fd:                                            ; preds = %bb.dx
  call fastcc void @_ZN6brotli3enc6encode12InitializeH617h799524e5a168f989E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gd), !noalias !38747
  br label %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i

_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i: ; preds = %bb.fd, %_ZN6brotli3enc19backward_references19hash_to_binary_tree14initialize_h1017hbc963d292da81f0bE.exit.i.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit51.i.i.i", %_ZN6brotli3enc6encode12InitializeH917h2e501034b975f9e3E.exit.i.i.i, %bb.eq, %bb.ep, %bb.eo, %bb.em, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit46.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit45.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i.i.i"
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$brotli..enc..backward_references..UnionHasher$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17h8b1b00594d4ed189E"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0), !noalias !38788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5584) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.z, i64 120, i1 false), !noalias !38746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !38748
  call void @llvm.experimental.noalias.scope.decl(metadata !38789)
  %i.uk = load i64, ptr %0, align 8, !range !111, !alias.scope !38790, !noalias !38746, !noundef !45 ; 3 uses
  switch i64 %i.uk, label %default.unreachable [
    i64 0, label %bb.fj
    i64 1, label %bb.fl
    i64 2, label %bb.fl
    i64 3, label %bb.fl
    i64 4, label %bb.fl
    i64 5, label %bb.fk
    i64 6, label %bb.fk
    i64 7, label %bb.fk
    i64 8, label %bb.fk
    i64 9, label %bb.fk
    i64 10, label %.thread2.i.i
  ], !prof !112

bb.fe:                                            ; preds = %bb.dw
  switch i64 %.pre48.i, label %default.unreachable [
    i64 0, label %bb.ff
    i64 1, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i.i"
    i64 2, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i.i"
    i64 3, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i.i"
    i64 4, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i.i"
    i64 5, label %bb.fg
    i64 6, label %bb.fg
    i64 7, label %bb.fg
    i64 8, label %bb.fg
    i64 9, label %bb.fg
    i64 10, label %bb.fh
  ], !prof !112

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @446, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #43, !noalias !38791
  unreachable

bb.fg:                                            ; preds = %bb.fe, %bb.fe, %bb.fe, %bb.fe, %bb.fe
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i.i"

bb.fh:                                            ; preds = %bb.fe
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i.i"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i.i": ; preds = %bb.fh, %bb.fg, %bb.fe, %bb.fe, %bb.fe, %bb.fe
  %.sink.i16.i.i = phi i64 [ 56, %bb.fh ], [ 24, %bb.fe ], [ 24, %bb.fe ], [ 24, %bb.fe ], [ 24, %bb.fe ], [ 40, %bb.fg ]
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i16.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.um, i8 0, i64 16, i1 false), !alias.scope !38745, !noalias !38746
  br label %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i

bb.fi:                                            ; preds = %bb.dv
  %i.un = call fastcc noundef zeroext i1 @"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$7Prepare17h7faecb0869e1adccE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0, i1 noundef zeroext false, i64 noundef range(i64 0, 4294967296) %i.qo, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj), !noalias !38728 ; 0 uses
  %.pre.i = load i64, ptr %0, align 8, !range !111, !alias.scope !38792, !noalias !38793
  br label %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i

default.unreachable:                              ; preds = %bb.ke, %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i, %bb.fe, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i
  unreachable

bb.fj:                                            ; preds = %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i
  call void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @446, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #43, !noalias !38794
  unreachable

bb.fk:                                            ; preds = %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i
  br label %bb.fl

.thread2.i.i:                                     ; preds = %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !alias.scope !38795, !noalias !38788
  store i32 0, ptr %i.hf, align 8, !alias.scope !38745, !noalias !38746
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit22.i.i"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit22.i.i": ; preds = %bb.fl, %.thread2.i.i
  %.sink.i20.i.i = phi i64 [ 56, %.thread2.i.i ], [ %spec.select.i.i, %bb.fl ]
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i20.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 40
  store i32 1, ptr %i.up, align 8, !alias.scope !38745, !noalias !38746
  br label %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i

bb.fl:                                            ; preds = %bb.fk, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i
  %.sink.i17.i.i = phi i64 [ 40, %bb.fk ], [ 24, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i ], [ 24, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i ], [ 24, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i ], [ 24, %_ZN6brotli3enc6encode16BrotliMakeHasher17he9aa32914db89270E.exit.i.i ]
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uq, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !alias.scope !38795, !noalias !38788
  %.off4.i.i = add nsw i64 %i.uk, -5
  %switch5.i.i = icmp ult i64 %.off4.i.i, 5       ; 2 uses
  %i.ur = select i1 %switch5.i.i, i64 80, i64 64, !prof !38796
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 %i.ur
  store i32 0, ptr %i.us, align 8, !alias.scope !38745, !noalias !38746
  %spec.select.i.i = select i1 %switch5.i.i, i64 40, i64 24, !prof !38796
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit22.i.i"

_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i: ; preds = %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit22.i.i", %bb.fi, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i.i", %bb.dw
  %i.ut = phi i64 [ %.pre48.i, %bb.dw ], [ %.pre48.i, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i.i" ], [ %.pre.i, %bb.fi ], [ %i.uk, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit22.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !38797)
  call void @llvm.experimental.noalias.scope.decl(metadata !38798)
  switch i64 %i.ut, label %default.unreachable [
    i64 0, label %bb.fm
    i64 1, label %bb.fn
    i64 2, label %bb.gb
    i64 3, label %bb.gp
    i64 4, label %bb.hd
    i64 5, label %bb.hr
    i64 6, label %bb.ht
    i64 7, label %bb.hv
    i64 8, label %bb.hx
    i64 9, label %bb.hz
    i64 10, label %bb.ib
  ], !prof !112

bb.fm:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  call void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @446, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #43, !noalias !38799
  unreachable

bb.fn:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %.val.i.i = load ptr, ptr %i.hg, align 8, !alias.scope !38792, !noalias !38793 ; 4 uses
  %.val1.i.i = load i64, ptr %i.hj, align 8, !alias.scope !38792, !noalias !38793 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38800)
  %i.uu = icmp ugt i32 %.sroa.0.021.i, 6
  %i.uv = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i.i.i = and i1 %i.uu, %i.uv
  br i1 %or.cond.i.i.i, label %bb.fo, label %bb.id

bb.fo:                                            ; preds = %bb.fn
  %i.uw = add nsw i64 %i.qn, -3                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38801)
  %i.ux = and i64 %i.uw, %i.ql                    ; 3 uses
  %.not.i.i.i200.i = icmp ugt i64 %i.ux, %i.qj
  br i1 %.not.i.i.i200.i, label %bb.fp, label %bb.fq, !prof !47

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !38802
  store ptr @186, ptr %i.y, align 8, !noalias !38802
  %i.uy = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %i.uy, align 8, !noalias !38802
  %i.uz = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.uz, align 8, !noalias !38802
  %i.va = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.va, align 8, !noalias !38802
  %i.vb = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.vb, align 8, !noalias !38802
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38803
  unreachable

bb.fq:                                            ; preds = %bb.fo
  %i.vc = sub nuw i64 %i.qj, %i.ux
  call void @llvm.experimental.noalias.scope.decl(metadata !38804)
  %i.vd = icmp ugt i64 %i.vc, 7
  br i1 %i.vd, label %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i.i.i.i", label %bb.fr, !prof !58

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !38805
  store ptr @186, ptr %i.x, align 8, !noalias !38805
  %i.ve = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.ve, align 8, !noalias !38805
  %i.vf = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %i.vf, align 8, !noalias !38805
  %i.vg = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.vg, align 8, !noalias !38805
  %i.vh = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.vh, align 8, !noalias !38805
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38806
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i.i.i.i": ; preds = %bb.fq
  %i.vi = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.ux
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.vi, align 1, !alias.scope !38807, !noalias !38808
  %i.vj = mul i64 %.sroa.0.0.copyload.i.i.i.i.i, -4819355556693147648
  %i.vk = lshr i64 %i.vj, 48                      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.vl = icmp ugt i64 %.val1.i.i, %i.vk
  br i1 %i.vl, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit.i.i.i", label %bb.fs

bb.fs:                                            ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.vk, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38803
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit.i.i.i": ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i.i.i.i"
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.vk
  %i.vn = trunc nuw i64 %i.uw to i32
  store i32 %i.vn, ptr %i.vm, align 4, !noalias !38803
  %i.vo = add nsw i64 %i.qn, -2                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38809)
  %i.vp = and i64 %i.vo, %i.ql                    ; 3 uses
  %.not.i6.i.i.i = icmp ugt i64 %i.vp, %i.qj
  br i1 %.not.i6.i.i.i, label %bb.ft, label %bb.fu, !prof !47

bb.ft:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !38810
  store ptr @186, ptr %i.w, align 8, !noalias !38810
  %i.vq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %i.vq, align 8, !noalias !38810
  %i.vr = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %i.vr, align 8, !noalias !38810
  %i.vs = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.vs, align 8, !noalias !38810
  %i.vt = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %i.vt, align 8, !noalias !38810
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38811
  unreachable

bb.fu:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit.i.i.i"
  %i.vu = sub nuw i64 %i.qj, %i.vp
  call void @llvm.experimental.noalias.scope.decl(metadata !38812)
  %i.vv = icmp ugt i64 %i.vu, 7
  br i1 %i.vv, label %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i7.i.i.i", label %bb.fv, !prof !58

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !38813
  store ptr @186, ptr %i.v, align 8, !noalias !38813
  %i.vw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.vw, align 8, !noalias !38813
  %i.vx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %i.vx, align 8, !noalias !38813
  %i.vy = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.vy, align 8, !noalias !38813
  %i.vz = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.vz, align 8, !noalias !38813
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38814
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i7.i.i.i": ; preds = %bb.fu
  %i.wa = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.vp
  %.sroa.0.0.copyload.i.i8.i.i.i = load i64, ptr %i.wa, align 1, !alias.scope !38815, !noalias !38816
  %i.wb = mul i64 %.sroa.0.0.copyload.i.i8.i.i.i, -4819355556693147648
  %i.wc = lshr i64 %i.wb, 48                      ; 3 uses
  %i.wd = icmp ugt i64 %.val1.i.i, %i.wc
  br i1 %i.wd, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit9.i.i.i", label %bb.fw

bb.fw:                                            ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i7.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.wc, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38811
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit9.i.i.i": ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i7.i.i.i"
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.wc
  %i.wf = trunc nuw i64 %i.vo to i32
  store i32 %i.wf, ptr %i.we, align 4, !noalias !38811
  %i.wg = add nsw i64 %i.qn, -1                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38817)
  %i.wh = and i64 %i.wg, %i.ql                    ; 3 uses
  %.not.i10.i.i.i = icmp ugt i64 %i.wh, %i.qj
  br i1 %.not.i10.i.i.i, label %bb.fx, label %bb.fy, !prof !47

bb.fx:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit9.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !38818
  store ptr @186, ptr %i.u, align 8, !noalias !38818
  %i.wi = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.wi, align 8, !noalias !38818
  %i.wj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %i.wj, align 8, !noalias !38818
  %i.wk = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.wk, align 8, !noalias !38818
  %i.wl = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 0, ptr %i.wl, align 8, !noalias !38818
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38819
  unreachable

bb.fy:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit9.i.i.i"
  %i.wm = sub nuw i64 %i.qj, %i.wh
  call void @llvm.experimental.noalias.scope.decl(metadata !38820)
  %i.wn = icmp ugt i64 %i.wm, 7
  br i1 %i.wn, label %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i11.i.i.i", label %bb.fz, !prof !58

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !38821
  store ptr @186, ptr %i.t, align 8, !noalias !38821
  %i.wo = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.wo, align 8, !noalias !38821
  %i.wp = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.wp, align 8, !noalias !38821
  %i.wq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.wq, align 8, !noalias !38821
  %i.wr = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.wr, align 8, !noalias !38821
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38822
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i11.i.i.i": ; preds = %bb.fy
  %i.ws = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.wh
  %.sroa.0.0.copyload.i.i12.i.i.i = load i64, ptr %i.ws, align 1, !alias.scope !38823, !noalias !38824
  %i.wt = mul i64 %.sroa.0.0.copyload.i.i12.i.i.i, -4819355556693147648
  %i.wu = lshr i64 %i.wt, 48                      ; 3 uses
  %i.wv = icmp ugt i64 %.val1.i.i, %i.wu
  br i1 %i.wv, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit13.i.i.i", label %bb.ga

bb.ga:                                            ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i11.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.wu, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38819
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit13.i.i.i": ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H2Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h410c3c8cf22911f3E.exit.i11.i.i.i"
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.wu
  %i.wx = trunc nuw i64 %i.wg to i32
  store i32 %i.wx, ptr %i.ww, align 4, !noalias !38819
  br label %bb.id

bb.gb:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %.val2.i.i = load ptr, ptr %i.hg, align 8, !alias.scope !38792, !noalias !38793 ; 4 uses
  %.val3.i.i = load i64, ptr %i.hj, align 8, !alias.scope !38792, !noalias !38793 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38825)
  %i.wy = icmp ugt i32 %.sroa.0.021.i, 6
  %i.wz = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i8.i.i = and i1 %i.wy, %i.wz
  br i1 %or.cond.i8.i.i, label %bb.gc, label %bb.id

bb.gc:                                            ; preds = %bb.gb
  %i.xa = add nsw i64 %i.qn, -3                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38826)
  %i.xb = and i64 %i.xa, %i.ql                    ; 3 uses
  %.not.i.i9.i.i = icmp ugt i64 %i.xb, %i.qj
  br i1 %.not.i.i9.i.i, label %bb.gd, label %bb.ge, !prof !47

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !38827
  store ptr @186, ptr %i.s, align 8, !noalias !38827
  %i.xc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.xc, align 8, !noalias !38827
  %i.xd = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.xd, align 8, !noalias !38827
  %i.xe = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.xe, align 8, !noalias !38827
  %i.xf = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %i.xf, align 8, !noalias !38827
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38828
  unreachable

bb.ge:                                            ; preds = %bb.gc
  %i.xg = sub nuw i64 %i.qj, %i.xb
  call void @llvm.experimental.noalias.scope.decl(metadata !38829)
  %i.xh = icmp ugt i64 %i.xg, 7
  br i1 %i.xh, label %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i.i.i.i", label %bb.gf, !prof !58

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !38830
  store ptr @186, ptr %i.r, align 8, !noalias !38830
  %i.xi = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.xi, align 8, !noalias !38830
  %i.xj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %i.xj, align 8, !noalias !38830
  %i.xk = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.xk, align 8, !noalias !38830
  %i.xl = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 0, ptr %i.xl, align 8, !noalias !38830
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38831
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i.i.i.i": ; preds = %bb.ge
  %i.xm = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.xb
  %.sroa.0.0.copyload.i.i.i10.i.i = load i64, ptr %i.xm, align 1, !alias.scope !38832, !noalias !38833
  %i.xn = mul i64 %.sroa.0.0.copyload.i.i.i10.i.i, -4819355556693147648
  %i.xo = lshr i64 %i.xn, 48
  %i.xp = lshr i64 %i.xa, 3
  %i.xq = and i64 %i.xp, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.xr = add nuw nsw i64 %i.xo, %i.xq            ; 3 uses
  %i.xs = icmp ugt i64 %.val3.i.i, %i.xr
  br i1 %i.xs, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit.i.i.i", label %bb.gg

bb.gg:                                            ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.xr, i64 noundef %.val3.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38828
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit.i.i.i": ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i.i.i.i"
  %i.xt = trunc nuw i64 %i.xa to i32
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.val2.i.i, i64 %i.xr
  store i32 %i.xt, ptr %i.xu, align 4, !noalias !38828
  %i.xv = add nsw i64 %i.qn, -2                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38834)
  %i.xw = and i64 %i.xv, %i.ql                    ; 3 uses
  %.not.i6.i11.i.i = icmp ugt i64 %i.xw, %i.qj
  br i1 %.not.i6.i11.i.i, label %bb.gh, label %bb.gi, !prof !47

bb.gh:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38835
  store ptr @186, ptr %i.q, align 8, !noalias !38835
  %i.xx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.xx, align 8, !noalias !38835
  %i.xy = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.xy, align 8, !noalias !38835
  %i.xz = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.xz, align 8, !noalias !38835
  %i.ya = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.ya, align 8, !noalias !38835
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38836
  unreachable

bb.gi:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit.i.i.i"
  %i.yb = sub nuw i64 %i.qj, %i.xw
  call void @llvm.experimental.noalias.scope.decl(metadata !38837)
  %i.yc = icmp ugt i64 %i.yb, 7
  br i1 %i.yc, label %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i7.i.i.i", label %bb.gj, !prof !58

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !38838
  store ptr @186, ptr %i.p, align 8, !noalias !38838
  %i.yd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.yd, align 8, !noalias !38838
  %i.ye = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %i.ye, align 8, !noalias !38838
  %i.yf = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.yf, align 8, !noalias !38838
  %i.yg = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 0, ptr %i.yg, align 8, !noalias !38838
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38839
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i7.i.i.i": ; preds = %bb.gi
  %i.yh = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.xw
  %.sroa.0.0.copyload.i.i8.i12.i.i = load i64, ptr %i.yh, align 1, !alias.scope !38840, !noalias !38841
  %i.yi = mul i64 %.sroa.0.0.copyload.i.i8.i12.i.i, -4819355556693147648
  %i.yj = lshr i64 %i.yi, 48
  %i.yk = lshr i64 %i.xv, 3
  %i.yl = and i64 %i.yk, 1
  %i.ym = add nuw nsw i64 %i.yj, %i.yl            ; 3 uses
  %i.yn = icmp ugt i64 %.val3.i.i, %i.ym
  br i1 %i.yn, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit9.i.i.i", label %bb.gk

bb.gk:                                            ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i7.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ym, i64 noundef %.val3.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38836
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit9.i.i.i": ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i7.i.i.i"
  %i.yo = trunc nuw i64 %i.xv to i32
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.val2.i.i, i64 %i.ym
  store i32 %i.yo, ptr %i.yp, align 4, !noalias !38836
  %i.yq = add nsw i64 %i.qn, -1                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38842)
  %i.yr = and i64 %i.yq, %i.ql                    ; 3 uses
  %.not.i10.i13.i.i = icmp ugt i64 %i.yr, %i.qj
  br i1 %.not.i10.i13.i.i, label %bb.gl, label %bb.gm, !prof !47

bb.gl:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit9.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !38843
  store ptr @186, ptr %i.o, align 8, !noalias !38843
  %i.ys = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.ys, align 8, !noalias !38843
  %i.yt = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.yt, align 8, !noalias !38843
  %i.yu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.yu, align 8, !noalias !38843
  %i.yv = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.yv, align 8, !noalias !38843
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38844
  unreachable

bb.gm:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit9.i.i.i"
  %i.yw = sub nuw i64 %i.qj, %i.yr
  call void @llvm.experimental.noalias.scope.decl(metadata !38845)
  %i.yx = icmp ugt i64 %i.yw, 7
  br i1 %i.yx, label %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i11.i.i.i", label %bb.gn, !prof !58

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !38846
  store ptr @186, ptr %i.n, align 8, !noalias !38846
  %i.yy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.yy, align 8, !noalias !38846
  %i.yz = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %i.yz, align 8, !noalias !38846
  %i.za = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.za, align 8, !noalias !38846
  %i.zb = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 0, ptr %i.zb, align 8, !noalias !38846
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38847
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i11.i.i.i": ; preds = %bb.gm
  %i.zc = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.yr
  %.sroa.0.0.copyload.i.i12.i14.i.i = load i64, ptr %i.zc, align 1, !alias.scope !38848, !noalias !38849
  %i.zd = mul i64 %.sroa.0.0.copyload.i.i12.i14.i.i, -4819355556693147648
  %i.ze = lshr i64 %i.zd, 48
  %i.zf = lshr i64 %i.yq, 3
  %i.zg = and i64 %i.zf, 1
  %i.zh = add nuw nsw i64 %i.ze, %i.zg            ; 3 uses
  %i.zi = icmp ugt i64 %.val3.i.i, %i.zh
  br i1 %i.zi, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit13.i.i.i", label %bb.go

bb.go:                                            ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i11.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.zh, i64 noundef %.val3.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38844
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit13.i.i.i": ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H3Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h07497828f496118aE.exit.i11.i.i.i"
  %i.zj = trunc nuw i64 %i.yq to i32
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.val2.i.i, i64 %i.zh
  store i32 %i.zj, ptr %i.zk, align 4, !noalias !38844
  br label %bb.id

bb.gp:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %.val4.i.i = load ptr, ptr %i.hg, align 8, !alias.scope !38792, !noalias !38793 ; 4 uses
  %.val5.i.i = load i64, ptr %i.hj, align 8, !alias.scope !38792, !noalias !38793 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38850)
  %i.zl = icmp ugt i32 %.sroa.0.021.i, 6
  %i.zm = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i15.i.i = and i1 %i.zl, %i.zm
  br i1 %or.cond.i15.i.i, label %bb.gq, label %bb.id

bb.gq:                                            ; preds = %bb.gp
  %i.zn = add nsw i64 %i.qn, -3                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38851)
  %i.zo = and i64 %i.zn, %i.ql                    ; 3 uses
  %.not.i.i16.i.i = icmp ugt i64 %i.zo, %i.qj
  br i1 %.not.i.i16.i.i, label %bb.gr, label %bb.gs, !prof !47

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !38852
  store ptr @186, ptr %i.m, align 8, !noalias !38852
  %i.zp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.zp, align 8, !noalias !38852
  %i.zq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.zq, align 8, !noalias !38852
  %i.zr = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.zr, align 8, !noalias !38852
  %i.zs = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.zs, align 8, !noalias !38852
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38853
  unreachable

bb.gs:                                            ; preds = %bb.gq
  %i.zt = sub nuw i64 %i.qj, %i.zo
  call void @llvm.experimental.noalias.scope.decl(metadata !38854)
  %i.zu = icmp ugt i64 %i.zt, 7
  br i1 %i.zu, label %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i.i.i.i", label %bb.gt, !prof !58

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !38855
  store ptr @186, ptr %i.l, align 8, !noalias !38855
  %i.zv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.zv, align 8, !noalias !38855
  %i.zw = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.zw, align 8, !noalias !38855
  %i.zx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.zx, align 8, !noalias !38855
  %i.zy = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.zy, align 8, !noalias !38855
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38856
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i.i.i.i": ; preds = %bb.gs
  %i.zz = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.zo
  %.sroa.0.0.copyload.i.i.i17.i.i = load i64, ptr %i.zz, align 1, !alias.scope !38857, !noalias !38858
  %i.aaa = mul i64 %.sroa.0.0.copyload.i.i.i17.i.i, -4819355556693147648
  %i.aab = lshr i64 %i.aaa, 47
  %i.aac = lshr i64 %i.zn, 3
  %i.aad = and i64 %i.aac, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.aae = add nuw nsw i64 %i.aab, %i.aad         ; 3 uses
  %i.aaf = icmp ugt i64 %.val5.i.i, %i.aae
  br i1 %i.aaf, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit.i.i.i", label %bb.gu

bb.gu:                                            ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aae, i64 noundef %.val5.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38853
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit.i.i.i": ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i.i.i.i"
  %i.aag = trunc nuw i64 %i.zn to i32
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i, i64 %i.aae
  store i32 %i.aag, ptr %i.aah, align 4, !noalias !38853
  %i.aai = add nsw i64 %i.qn, -2                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38859)
  %i.aaj = and i64 %i.aai, %i.ql                  ; 3 uses
  %.not.i6.i18.i.i = icmp ugt i64 %i.aaj, %i.qj
  br i1 %.not.i6.i18.i.i, label %bb.gv, label %bb.gw, !prof !47

bb.gv:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38860
  store ptr @186, ptr %i.k, align 8, !noalias !38860
  %i.aak = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.aak, align 8, !noalias !38860
  %i.aal = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.aal, align 8, !noalias !38860
  %i.aam = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aam, align 8, !noalias !38860
  %i.aan = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.aan, align 8, !noalias !38860
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38861
  unreachable

bb.gw:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit.i.i.i"
  %i.aao = sub nuw i64 %i.qj, %i.aaj
  call void @llvm.experimental.noalias.scope.decl(metadata !38862)
  %i.aap = icmp ugt i64 %i.aao, 7
  br i1 %i.aap, label %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i7.i.i.i", label %bb.gx, !prof !58

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !38863
  store ptr @186, ptr %i.j, align 8, !noalias !38863
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.aaq, align 8, !noalias !38863
  %i.aar = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.aar, align 8, !noalias !38863
  %i.aas = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aas, align 8, !noalias !38863
  %i.aat = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.aat, align 8, !noalias !38863
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38864
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i7.i.i.i": ; preds = %bb.gw
  %i.aau = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.aaj
  %.sroa.0.0.copyload.i.i8.i19.i.i = load i64, ptr %i.aau, align 1, !alias.scope !38865, !noalias !38866
  %i.aav = mul i64 %.sroa.0.0.copyload.i.i8.i19.i.i, -4819355556693147648
  %i.aaw = lshr i64 %i.aav, 47
  %i.aax = lshr i64 %i.aai, 3
  %i.aay = and i64 %i.aax, 3
  %i.aaz = add nuw nsw i64 %i.aaw, %i.aay         ; 3 uses
  %i.aba = icmp ugt i64 %.val5.i.i, %i.aaz
  br i1 %i.aba, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit9.i.i.i", label %bb.gy

bb.gy:                                            ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i7.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aaz, i64 noundef %.val5.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38861
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit9.i.i.i": ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i7.i.i.i"
  %i.abb = trunc nuw i64 %i.aai to i32
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i, i64 %i.aaz
  store i32 %i.abb, ptr %i.abc, align 4, !noalias !38861
  %i.abd = add nsw i64 %i.qn, -1                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38867)
  %i.abe = and i64 %i.abd, %i.ql                  ; 3 uses
  %.not.i10.i20.i.i = icmp ugt i64 %i.abe, %i.qj
  br i1 %.not.i10.i20.i.i, label %bb.gz, label %bb.ha, !prof !47

bb.gz:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit9.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !38868
  store ptr @186, ptr %i.i, align 8, !noalias !38868
  %i.abf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.abf, align 8, !noalias !38868
  %i.abg = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.abg, align 8, !noalias !38868
  %i.abh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.abh, align 8, !noalias !38868
  %i.abi = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.abi, align 8, !noalias !38868
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38869
  unreachable

bb.ha:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit9.i.i.i"
  %i.abj = sub nuw i64 %i.qj, %i.abe
  call void @llvm.experimental.noalias.scope.decl(metadata !38870)
  %i.abk = icmp ugt i64 %i.abj, 7
  br i1 %i.abk, label %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i11.i.i.i", label %bb.hb, !prof !58

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !38871
  store ptr @186, ptr %i.h, align 8, !noalias !38871
  %i.abl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.abl, align 8, !noalias !38871
  %i.abm = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.abm, align 8, !noalias !38871
  %i.abn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.abn, align 8, !noalias !38871
  %i.abo = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.abo, align 8, !noalias !38871
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38872
  unreachable

"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i11.i.i.i": ; preds = %bb.ha
  %i.abp = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.abe
  %.sroa.0.0.copyload.i.i12.i21.i.i = load i64, ptr %i.abp, align 1, !alias.scope !38873, !noalias !38874
  %i.abq = mul i64 %.sroa.0.0.copyload.i.i12.i21.i.i, -4819355556693147648
  %i.abr = lshr i64 %i.abq, 47
  %i.abs = lshr i64 %i.abd, 3
  %i.abt = and i64 %i.abs, 3
  %i.abu = add nuw nsw i64 %i.abr, %i.abt         ; 3 uses
  %i.abv = icmp ugt i64 %.val5.i.i, %i.abu
  br i1 %i.abv, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit13.i.i.i", label %bb.hc

bb.hc:                                            ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i11.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.abu, i64 noundef %.val5.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38869
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit13.i.i.i": ; preds = %"_ZN127_$LT$brotli..enc..backward_references..H4Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h3d8a186f599cf958E.exit.i11.i.i.i"
  %i.abw = trunc nuw i64 %i.abd to i32
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i, i64 %i.abu
  store i32 %i.abw, ptr %i.abx, align 4, !noalias !38869
  br label %bb.id

bb.hd:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %.val6.i.i = load ptr, ptr %i.hg, align 8, !alias.scope !38792, !noalias !38793 ; 4 uses
  %.val7.i.i = load i64, ptr %i.hj, align 8, !alias.scope !38792, !noalias !38793 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38875)
  %i.aby = icmp ugt i32 %.sroa.0.021.i, 6
  %i.abz = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i22.i.i = and i1 %i.aby, %i.abz
  br i1 %or.cond.i22.i.i, label %bb.he, label %bb.id

bb.he:                                            ; preds = %bb.hd
  %i.aca = add nsw i64 %i.qn, -3                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38876)
  %i.acb = and i64 %i.aca, %i.ql                  ; 3 uses
  %.not.i.i23.i.i = icmp ugt i64 %i.acb, %i.qj
  br i1 %.not.i.i23.i.i, label %bb.hf, label %bb.hg, !prof !47

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38877
  store ptr @186, ptr %i.g, align 8, !noalias !38877
  %i.acc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.acc, align 8, !noalias !38877
  %i.acd = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.acd, align 8, !noalias !38877
  %i.ace = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ace, align 8, !noalias !38877
  %i.acf = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.acf, align 8, !noalias !38877
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38878
  unreachable

bb.hg:                                            ; preds = %bb.he
  %i.acg = sub nuw i64 %i.qj, %i.acb
  call void @llvm.experimental.noalias.scope.decl(metadata !38879)
  %i.ach = icmp ugt i64 %i.acg, 7
  br i1 %i.ach, label %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i.i.i.i", label %bb.hh, !prof !58

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !38880
  store ptr @186, ptr %i.f, align 8, !noalias !38880
  %i.aci = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.aci, align 8, !noalias !38880
  %i.acj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.acj, align 8, !noalias !38880
  %i.ack = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ack, align 8, !noalias !38880
  %i.acl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.acl, align 8, !noalias !38880
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38881
  unreachable

"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i.i.i.i": ; preds = %bb.hg
  %i.acm = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.acb
  %.sroa.0.0.copyload.i.i.i24.i.i = load i64, ptr %i.acm, align 1, !alias.scope !38882, !noalias !38883
  %i.acn = mul i64 %.sroa.0.0.copyload.i.i.i24.i.i, 3866266742567714048
  %i.aco = lshr i64 %i.acn, 44
  %i.acp = lshr i64 %i.aca, 3
  %i.acq = and i64 %i.acp, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.acr = add nuw nsw i64 %i.aco, %i.acq         ; 3 uses
  %i.acs = icmp ugt i64 %.val7.i.i, %i.acr
  br i1 %i.acs, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit.i.i.i", label %bb.hi

bb.hi:                                            ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.acr, i64 noundef %.val7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38878
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit.i.i.i": ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i.i.i.i"
  %i.act = trunc nuw i64 %i.aca to i32
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i, i64 %i.acr
  store i32 %i.act, ptr %i.acu, align 4, !noalias !38878
  %i.acv = add nsw i64 %i.qn, -2                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38884)
  %i.acw = and i64 %i.acv, %i.ql                  ; 3 uses
  %.not.i6.i25.i.i = icmp ugt i64 %i.acw, %i.qj
  br i1 %.not.i6.i25.i.i, label %bb.hj, label %bb.hk, !prof !47

bb.hj:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38885
  store ptr @186, ptr %i.e, align 8, !noalias !38885
  %i.acx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.acx, align 8, !noalias !38885
  %i.acy = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.acy, align 8, !noalias !38885
  %i.acz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.acz, align 8, !noalias !38885
  %i.ada = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.ada, align 8, !noalias !38885
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38886
  unreachable

bb.hk:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit.i.i.i"
  %i.adb = sub nuw i64 %i.qj, %i.acw
  call void @llvm.experimental.noalias.scope.decl(metadata !38887)
  %i.adc = icmp ugt i64 %i.adb, 7
  br i1 %i.adc, label %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i7.i.i.i", label %bb.hl, !prof !58

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38888
  store ptr @186, ptr %i.d, align 8, !noalias !38888
  %i.add = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.add, align 8, !noalias !38888
  %i.ade = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.ade, align 8, !noalias !38888
  %i.adf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.adf, align 8, !noalias !38888
  %i.adg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.adg, align 8, !noalias !38888
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38889
  unreachable

"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i7.i.i.i": ; preds = %bb.hk
  %i.adh = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.acw
  %.sroa.0.0.copyload.i.i8.i26.i.i = load i64, ptr %i.adh, align 1, !alias.scope !38890, !noalias !38891
  %i.adi = mul i64 %.sroa.0.0.copyload.i.i8.i26.i.i, 3866266742567714048
  %i.adj = lshr i64 %i.adi, 44
  %i.adk = lshr i64 %i.acv, 3
  %i.adl = and i64 %i.adk, 3
  %i.adm = add nuw nsw i64 %i.adj, %i.adl         ; 3 uses
  %i.adn = icmp ugt i64 %.val7.i.i, %i.adm
  br i1 %i.adn, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit9.i.i.i", label %bb.hm

bb.hm:                                            ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i7.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.adm, i64 noundef %.val7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38886
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit9.i.i.i": ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i7.i.i.i"
  %i.ado = trunc nuw i64 %i.acv to i32
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i, i64 %i.adm
  store i32 %i.ado, ptr %i.adp, align 4, !noalias !38886
  %i.adq = add nsw i64 %i.qn, -1                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38892)
  %i.adr = and i64 %i.adq, %i.ql                  ; 3 uses
  %.not.i10.i27.i.i = icmp ugt i64 %i.adr, %i.qj
  br i1 %.not.i10.i27.i.i, label %bb.hn, label %bb.ho, !prof !47

bb.hn:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit9.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38893
  store ptr @186, ptr %i.c, align 8, !noalias !38893
  %i.ads = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.ads, align 8, !noalias !38893
  %i.adt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.adt, align 8, !noalias !38893
  %i.adu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.adu, align 8, !noalias !38893
  %i.adv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.adv, align 8, !noalias !38893
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #43, !noalias !38894
  unreachable

bb.ho:                                            ; preds = %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit9.i.i.i"
  %i.adw = sub nuw i64 %i.qj, %i.adr
  call void @llvm.experimental.noalias.scope.decl(metadata !38895)
  %i.adx = icmp ugt i64 %i.adw, 7
  br i1 %i.adx, label %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i11.i.i.i", label %bb.hp, !prof !58

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38896
  store ptr @186, ptr %i.b, align 8, !noalias !38896
  %i.ady = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ady, align 8, !noalias !38896
  %i.adz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.adz, align 8, !noalias !38896
  %i.aea = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aea, align 8, !noalias !38896
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.aeb, align 8, !noalias !38896
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1522) #43, !noalias !38897
  unreachable

"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i11.i.i.i": ; preds = %bb.ho
  %i.aec = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.adr
  %.sroa.0.0.copyload.i.i12.i28.i.i = load i64, ptr %i.aec, align 1, !alias.scope !38898, !noalias !38899
  %i.aed = mul i64 %.sroa.0.0.copyload.i.i12.i28.i.i, 3866266742567714048
  %i.aee = lshr i64 %i.aed, 44
  %i.aef = lshr i64 %i.adq, 3
  %i.aeg = and i64 %i.aef, 3
  %i.aeh = add nuw nsw i64 %i.aee, %i.aeg         ; 3 uses
  %i.aei = icmp ugt i64 %.val7.i.i, %i.aeh
  br i1 %i.aei, label %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit13.i.i.i", label %bb.hq

bb.hq:                                            ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i11.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aeh, i64 noundef %.val7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #43, !noalias !38894
  unreachable

"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit13.i.i.i": ; preds = %"_ZN128_$LT$brotli..enc..backward_references..H54Sub$LT$AllocU32$GT$$u20$as$u20$brotli..enc..backward_references..BasicHashComputer$GT$9HashBytes17h50b87e2b70829287E.exit.i11.i.i.i"
  %i.aej = trunc nuw i64 %i.adq to i32
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i, i64 %i.aeh
  store i32 %i.aej, ptr %i.aek, align 4, !noalias !38894
  br label %bb.id

bb.hr:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.ael = icmp ugt i32 %.sroa.0.021.i, 2
  %i.aem = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i29.i.i = and i1 %i.ael, %i.aem
  br i1 %or.cond.i29.i.i, label %bb.hs, label %bb.id

bb.hs:                                            ; preds = %bb.hr
  %i.aen = add nsw i64 %i.qn, -3
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hf6592f478bdd1690E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.aen), !noalias !38728
  %i.aeo = add nsw i64 %i.qn, -2
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hf6592f478bdd1690E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.aeo), !noalias !38728
  %i.aep = add nsw i64 %i.qn, -1
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hf6592f478bdd1690E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.aep), !noalias !38728
  br label %bb.id

bb.ht:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.aeq = icmp ugt i32 %.sroa.0.021.i, 2
  %i.aer = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i30.i.i = and i1 %i.aeq, %i.aer
  br i1 %or.cond.i30.i.i, label %bb.hu, label %bb.id

bb.hu:                                            ; preds = %bb.ht
  %i.aes = add nsw i64 %i.qn, -3
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h7d9ce1d43ae38d9fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.aes), !noalias !38728
  %i.aet = add nsw i64 %i.qn, -2
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h7d9ce1d43ae38d9fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.aet), !noalias !38728
  %i.aeu = add nsw i64 %i.qn, -1
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h7d9ce1d43ae38d9fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.aeu), !noalias !38728
  br label %bb.id

bb.hv:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.aev = icmp ugt i32 %.sroa.0.021.i, 2
  %i.aew = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i31.i.i = and i1 %i.aev, %i.aew
  br i1 %or.cond.i31.i.i, label %bb.hw, label %bb.id

bb.hw:                                            ; preds = %bb.hv
  %i.aex = add nsw i64 %i.qn, -3
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hed7b662d138796abE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.aex), !noalias !38728
  %i.aey = add nsw i64 %i.qn, -2
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hed7b662d138796abE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.aey), !noalias !38728
  %i.aez = add nsw i64 %i.qn, -1
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hed7b662d138796abE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.aez), !noalias !38728
  br label %bb.id

bb.hx:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.afa = icmp ugt i32 %.sroa.0.021.i, 6
  %i.afb = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i32.i.i = and i1 %i.afa, %i.afb
  br i1 %or.cond.i32.i.i, label %bb.hy, label %bb.id

bb.hy:                                            ; preds = %bb.hx
  %i.afc = add nsw i64 %i.qn, -3
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hc6ac719cc82f1cb5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.afc), !noalias !38728
  %i.afd = add nsw i64 %i.qn, -2
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hc6ac719cc82f1cb5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.afd), !noalias !38728
  %i.afe = add nsw i64 %i.qn, -1
  call fastcc void @"_ZN137_$LT$brotli..enc..backward_references..AdvHasher$LT$Specialization$C$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hc6ac719cc82f1cb5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.afe), !noalias !38728
  br label %bb.id

bb.hz:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.aff = icmp ugt i32 %.sroa.0.021.i, 2
  %i.afg = icmp ugt i32 %.sroa.023.0.i, 2
  %or.cond.i33.i.i = and i1 %i.aff, %i.afg
  br i1 %or.cond.i33.i.i, label %bb.ia, label %bb.id

bb.ia:                                            ; preds = %bb.hz
  %i.afh = add nsw i64 %i.qn, -3
  call fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h6804a41f46fdae5fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.afh), !noalias !38728
  %i.afi = add nsw i64 %i.qn, -2
  call fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h6804a41f46fdae5fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.afi), !noalias !38728
  %i.afj = add nsw i64 %i.qn, -1
  call fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h6804a41f46fdae5fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.afj), !noalias !38728
  br label %bb.id

bb.ib:                                            ; preds = %_ZN6brotli3enc6encode12hasher_setup17h394ea38a5e69b412E.exit.i
  %i.afk = load i64, ptr %i.hh, align 8, !alias.scope !38792, !noalias !38793, !noundef !45
  call void @llvm.experimental.noalias.scope.decl(metadata !38900)
  %i.afl = icmp ugt i32 %.sroa.0.021.i, 2
  %i.afm = icmp ugt i32 %.sroa.023.0.i, 127
  %or.cond.i34.i.i = select i1 %i.afl, i1 %i.afm, i1 false
  br i1 %or.cond.i34.i.i, label %.lr.ph.i.i.i, label %bb.id

.lr.ph.i.i.i:                                     ; preds = %bb.ib
  %i.afn = add nsw i64 %i.qn, -128                ; 2 uses
  %i.afo = add nuw nsw i64 %i.afn, %i.qo
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.afo, i64 range(i64 0, 4294967296) %i.qn)
  %i.afp = load i64, ptr %i.hi, align 8, !alias.scope !38901, !noalias !38902, !noundef !45
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ic, %.lr.ph.i.i.i
  %.sroa.01.05.i.i.i = phi i64 [ %i.afn, %.lr.ph.i.i.i ], [ %i.afq, %bb.ic ] ; 3 uses
  %i.afq = add nuw nsw i64 %.sroa.01.05.i.i.i, 1  ; 2 uses
  %i.afr = sub nuw nsw i64 %i.qn, %.sroa.01.05.i.i.i
  %.sroa.0.0.i4.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.afr, i64 15)
  %i.afs = sub i64 %i.afp, %.sroa.0.0.i4.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38903
  store i64 0, ptr %i.a, align 8, !noalias !38903
  %i.aft = call fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h1a8db7e0f3094503E(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.hg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qk, i64 noundef %i.qj, i64 noundef %.sroa.01.05.i.i.i, i64 noundef range(i64 0, 4294967296) %i.ql, i64 noundef %i.afk, i64 noundef 128, i64 noundef %i.afs, ptr noalias noundef align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0), !noalias !38728 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38903
  %i.afu = icmp samesign ult i64 %i.afq, %.sroa.0.0.i.i.i.i
  br i1 %i.afu, label %bb.ic, label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hb43b78ff21f41fbdE.exit13.i.i.i", %bb.hd, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h51ce669fdbdd8ef7E.exit13.i.i.i", %bb.gp, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17hcbcbdfc39e04f6aaE.exit13.i.i.i", %bb.gb, %"_ZN118_$LT$brotli..enc..backward_references..BasicHasher$LT$T$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h028119853d0aedb2E.exit13.i.i.i", %bb.fn
  %.val164.i = load ptr, ptr %i.ft, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %.val165.i = load i64, ptr %i.gk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %13 = load i64, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 5 uses
  %14 = icmp ugt i64 %13, 3221225471
  %15 = and i64 %13, 1073741823
  %16 = and i64 %13, 1073741824
  %reass.sub = sub nsw i64 %15, %16
  %17 = add nsw i64 %reass.sub, 2147483648
  %.sroa.025.0.i = select i1 %14, i64 %17, i64 %13
  %i.afv = load i64, ptr %i.fo, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.afw = sub i64 %i.afv, %13
  %i.afx = call noundef i8 @_ZN6brotli3enc6encode17ChooseContextMode17h6a63f239b9ccfc8aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val164.i, i64 noundef %.val165.i, i64 noundef %.sroa.025.0.i, i64 noundef %i.ql, i64 noundef %i.afw), !noalias !38728
  %i.afy = load i64, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 2 uses
  %i.afz = icmp eq i64 %i.afy, 0
  br i1 %i.afz, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i", label %bb.if

bb.ie:                                            ; preds = %bb.dn
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.px, i64 noundef %.val129.i, i64 noundef %.val129.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1853) #43, !noalias !38728
  unreachable

bb.if:                                            ; preds = %bb.id
  %i.aga = load i64, ptr %i.hk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.agb = icmp eq i64 %i.aga, 0
  br i1 %i.agb, label %bb.ig, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i"

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i": ; preds = %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.i.i, %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i, %bb.if, %bb.id
  %.pre-phi51.i = phi i64 [ %.pre50.i, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.i.i ], [ %i.qn, %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i ], [ %i.qn, %bb.if ], [ %i.qn, %bb.id ]
  %.pre-phi.i = phi i64 [ %.pre49.i, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.i.i ], [ %i.qo, %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i ], [ %i.qo, %bb.if ], [ %i.qo, %bb.id ]
  %.val126.i = load ptr, ptr %i.ft, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %.val127.i = load i64, ptr %i.gk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.agc = load i64, ptr %i.gl, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.agd = icmp ugt i64 %i.agc, %.val127.i
  br i1 %i.agd, label %bb.jg, label %bb.jf, !prof !47

bb.ig:                                            ; preds = %bb.if
  call void @llvm.experimental.noalias.scope.decl(metadata !38904)
  %.val18.i.i = load i64, ptr %i.gw, align 8, !alias.scope !38905, !noalias !38906, !noundef !45 ; 2 uses
  %i.age = add i64 %i.afy, -1                     ; 3 uses
  %i.agf = icmp ult i64 %i.age, %.val18.i.i
  br i1 %i.agf, label %bb.ih, label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  %.val17.i.i = load ptr, ptr %i.gv, align 8, !alias.scope !38905, !noalias !38906, !nonnull !45, !align !70, !noundef !45
  %i.agg = getelementptr inbounds nuw [16 x i8], ptr %.val17.i.i, i64 %i.age ; 5 uses
  %i.agh = load i32, ptr %i.fu, align 4, !alias.scope !38905, !noalias !38906, !noundef !45 ; 2 uses
  %i.agi = load i32, ptr %i.gz, align 4, !alias.scope !38905, !noalias !38906, !noundef !45
  %i.agj = and i32 %i.agi, 63
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = shl nuw i64 1, %i.agk
  %i.agm = add i64 %i.agl, -16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agg, i64 4 ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 4, !noalias !38907, !noundef !45 ; 4 uses
  %i.agp = and i32 %i.ago, 33554431               ; 3 uses
  %i.agq = zext nneg i32 %i.agp to i64
  %i.agr = load i64, ptr %i.fp, align 8, !alias.scope !38905, !noalias !38906, !noundef !45
  %i.ags = sub i64 %i.agr, %i.agq
  %..i.i = call i64 @llvm.umin.i64(i64 %i.ags, i64 %i.agm)
  %i.agt = load i32, ptr %i.hl, align 8, !alias.scope !38905, !noalias !38906, !noundef !45
  %i.agu = sext i32 %i.agt to i64                 ; 3 uses
  %i.agv = getelementptr i8, ptr %i.agg, i64 14
  %.val20.i.i = load i16, ptr %i.agv, align 2, !noalias !38907, !noundef !45 ; 2 uses
  %.val22.i.i = load i32, ptr %i.hm, align 4, !alias.scope !38905, !noalias !38906, !noundef !45 ; 2 uses
  %i.agw = and i16 %.val20.i.i, 1023              ; 2 uses
  %i.agx = zext nneg i16 %i.agw to i32            ; 3 uses
  %i.agy = add i32 %.val22.i.i, 16                ; 2 uses
  %i.agz = icmp sgt i32 %i.agy, %i.agx
  br i1 %i.agz, label %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %.val21.i.i = load i32, ptr %i.hn, align 8, !alias.scope !38905, !noalias !38906
  %i.aha = getelementptr i8, ptr %i.agg, i64 8
  %.val19.i.i = load i32, ptr %i.aha, align 4, !noalias !38907
  %i.ahb = lshr i16 %.val20.i.i, 10
  %i.ahc = and i32 %.val21.i.i, 31                ; 3 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.ahc
  %i.ahd = xor i32 %notmask.i.i.i, -1
  %i.ahe = sub i32 %i.agx, %.val22.i.i
  %i.ahf = add i32 %i.ahe, -16                    ; 2 uses
  %i.ahg = lshr i32 %i.ahf, %i.ahc
  %i.ahh = and i32 %i.ahf, %i.ahd
  %i.ahi = and i32 %i.ahg, 1
  %i.ahj = or disjoint i32 %i.ahi, 2
  %i.ahk = and i16 %i.ahb, 31
  %i.ahl = zext nneg i16 %i.ahk to i32
  %i.ahm = shl i32 %i.ahj, %i.ahl
  %i.ahn = add i32 %.val19.i.i, -4
  %i.aho = add i32 %i.ahn, %i.ahm
  %i.ahp = shl i32 %i.aho, %i.ahc
  %i.ahq = add i32 %i.ahh, %i.agy
  %i.ahr = add i32 %i.ahq, %i.ahp
  br label %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i

_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i: ; preds = %bb.ii, %bb.ih
  %.sroa.0.0.i23.i.i = phi i32 [ %i.ahr, %bb.ii ], [ %i.agx, %bb.ih ] ; 2 uses
  %i.ahs = icmp ult i32 %.sroa.0.0.i23.i.i, 16
  %i.aht = zext i32 %.sroa.0.0.i23.i.i to i64
  %i.ahu = add nsw i64 %i.aht, -15
  %i.ahv = icmp eq i64 %i.ahu, %i.agu
  %or.cond.i.i = or i1 %i.ahs, %i.ahv
  br i1 %or.cond.i.i, label %bb.ik, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i"

bb.ij:                                            ; preds = %bb.ig
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.age, i64 noundef %.val18.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1858) #43, !noalias !38907
  unreachable

bb.ik:                                            ; preds = %_ZN6brotli3enc7command7Command21restore_distance_code17h056ad2badf720d62E.exit.i.i
  %.not.i201.i = icmp ult i64 %..i.i, %i.agu
  br i1 %.not.i201.i, label %.loopexit.i.i, label %thread-pre-split.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.je, %bb.jc
  %.sroa.012.1.i = phi i32 [ %i.aku, %bb.je ], [ %.sroa.012.3.i, %bb.jc ]
  %.sroa.0.2.i28 = phi i32 [ 0, %bb.je ], [ %.sroa.0.4.i, %bb.jc ]
  %i.ahw = phi i32 [ %i.alk, %bb.je ], [ %i.akv, %bb.jc ] ; 2 uses
  %.pre.i.i = and i32 %i.ahw, 33554431
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %thread-pre-split.i.i, %.loopexit.loopexit.i.i, %bb.ik
  %.sroa.012.2.i = phi i32 [ %.sroa.023.0.i, %bb.ik ], [ %.sroa.023.0.i, %thread-pre-split.i.i ], [ %.sroa.012.1.i, %.loopexit.loopexit.i.i ]
  %.sroa.0.322.i = phi i32 [ %.sroa.0.021.i, %bb.ik ], [ 0, %thread-pre-split.i.i ], [ %.sroa.0.2.i28, %.loopexit.loopexit.i.i ]
  %.pre-phi.i.i = phi i32 [ %i.agp, %bb.ik ], [ %i.agp, %thread-pre-split.i.i ], [ %.pre.i.i, %.loopexit.loopexit.i.i ]
  %i.ahx = phi i32 [ %i.ago, %bb.ik ], [ %i.ago, %thread-pre-split.i.i ], [ %i.ahw, %.loopexit.loopexit.i.i ]
  %i.ahy = load i32, ptr %i.agg, align 4, !noalias !38907, !noundef !45 ; 7 uses
  %i.ahz = zext i32 %i.ahy to i64                 ; 2 uses
  %i.aia = lshr i32 %i.ahx, 25
  %i.aib = add nuw nsw i32 %i.aia, %.pre-phi.i.i  ; 5 uses
  %i.aic = zext nneg i32 %i.aib to i64            ; 2 uses
  %i.aid = icmp eq i16 %i.agw, 0
  %i.aie = icmp ult i32 %i.ahy, 6
  br i1 %i.aie, label %bb.im, label %bb.il

bb.il:                                            ; preds = %.loopexit.i.i
  %i.aif = icmp ult i32 %i.ahy, 130
  br i1 %i.aif, label %bb.io, label %bb.in

bb.im:                                            ; preds = %.loopexit.i.i
  %i.aig = trunc nuw nsw i32 %i.ahy to i16
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i

bb.in:                                            ; preds = %bb.il
  %i.aih = icmp ult i32 %i.ahy, 2114
  br i1 %i.aih, label %bb.iq, label %bb.ip

bb.io:                                            ; preds = %bb.il
  %i.aii = add nsw i64 %i.ahz, -2                 ; 2 uses
  %i.aij = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aii, i1 false)
  %i.aik = trunc nuw nsw i64 %i.aij to i32
  %i.ail = xor i32 %i.aik, 63
  %i.aim = add nsw i32 %i.ail, -1                 ; 2 uses
  %i.ain = shl nuw nsw i32 %i.aim, 1
  %i.aio = zext nneg i32 %i.ain to i64
  %i.aip = zext nneg i32 %i.aim to i64
  %i.aiq = lshr i64 %i.aii, %i.aip
  %i.air = add nuw nsw i64 %i.aiq, %i.aio
  %i.ais = trunc nuw nsw i64 %i.air to i16
  %i.ait = add nuw nsw i16 %i.ais, 2
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i

bb.ip:                                            ; preds = %bb.in
  %i.aiu = icmp ult i32 %i.ahy, 6210
  br i1 %i.aiu, label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i, label %bb.ir

bb.iq:                                            ; preds = %bb.in
  %i.aiv = add nsw i64 %i.ahz, -66
  %i.aiw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aiv, i1 false)
  %i.aix = trunc nuw nsw i64 %i.aiw to i16
  %i.aiy = xor i16 %i.aix, 63
  %i.aiz = add nuw nsw i16 %i.aiy, 10
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i

bb.ir:                                            ; preds = %bb.ip
  %i.aja = icmp ult i32 %i.ahy, 22594
  %..i.i202.i = select i1 %i.aja, i16 22, i16 23
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i

_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i: ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.im
  %.sroa.0.0.i12.i.i = phi i16 [ %i.aig, %bb.im ], [ %i.ait, %bb.io ], [ %i.aiz, %bb.iq ], [ %..i.i202.i, %bb.ir ], [ 21, %bb.ip ] ; 3 uses
  %i.ajb = icmp samesign ult i32 %i.aib, 10
  br i1 %i.ajb, label %bb.it, label %bb.is

bb.is:                                            ; preds = %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i
  %i.ajc = icmp samesign ult i32 %i.aib, 134
  br i1 %i.ajc, label %bb.iv, label %bb.iu

bb.it:                                            ; preds = %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.i.i
  %i.ajd = trunc nuw nsw i32 %i.aib to i16
  %i.aje = add nsw i16 %i.ajd, -2
  br label %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit.i.i

bb.iu:                                            ; preds = %bb.is
  %i.ajf = icmp samesign ult i32 %i.aib, 2118
  br i1 %i.ajf, label %bb.iw, label %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit.i.i

bb.iv:                                            ; preds = %bb.is
  %i.ajg = add nsw i64 %i.aic, -6                 ; 2 uses
  %i.ajh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ajg, i1 false)
  %i.aji = trunc nuw nsw i64 %i.ajh to i32
  %i.ajj = xor i32 %i.aji, 63
  %i.ajk = add nsw i32 %i.ajj, -1                 ; 2 uses
  %i.ajl = shl nuw nsw i32 %i.ajk, 1
  %i.ajm = zext nneg i32 %i.ajl to i64
  %i.ajn = zext nneg i32 %i.ajk to i64
  %i.ajo = lshr i64 %i.ajg, %i.ajn
  %i.ajp = add nuw nsw i64 %i.ajo, %i.ajm
  %i.ajq = trunc nuw nsw i64 %i.ajp to i16
  %i.ajr = add nuw nsw i16 %i.ajq, 4
  br label %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit.i.i

bb.iw:                                            ; preds = %bb.iu
  %i.ajs = add nsw i64 %i.aic, -70
  %i.ajt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ajs, i1 false)
  %i.aju = trunc nuw nsw i64 %i.ajt to i16
  %i.ajv = xor i16 %i.aju, 63
  %i.ajw = add nuw nsw i16 %i.ajv, 12
  br label %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit.i.i

_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit.i.i: ; preds = %bb.iw, %bb.iv, %bb.iu, %bb.it
  %.sroa.0.0.i.i.i = phi i16 [ %i.aje, %bb.it ], [ %i.ajr, %bb.iv ], [ %i.ajw, %bb.iw ], [ 23, %bb.iu ] ; 4 uses
  %i.ajx = and i16 %.sroa.0.0.i.i.i, 7
  %i.ajy = shl nuw nsw i16 %.sroa.0.0.i12.i.i, 3
end_hunk_2
begin_hunk_3_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17h3a1fcabc17cc65d3E":bb.a
bb.jb:                                            ; preds = %bb.iz
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aky, i64 noundef %.val16.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1859) #43, !noalias !38907
  unreachable

bb.jc:                                            ; preds = %bb.ja
  %i.alf = getelementptr inbounds nuw i8, ptr %.val15.i.i, i64 %i.aky
  %i.alg = load i8, ptr %i.alf, align 1, !noalias !38907, !noundef !45
  %i.alh = getelementptr inbounds nuw i8, ptr %.val15.i.i, i64 %i.ald
  %i.ali = load i8, ptr %i.alh, align 1, !noalias !38907, !noundef !45
  %i.alj = icmp eq i8 %i.alg, %i.ali
  br i1 %i.alj, label %bb.je, label %.loopexit.loopexit.i.i

bb.jd:                                            ; preds = %bb.ja
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ald, i64 noundef %.val16.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1860) #43, !noalias !38907
  unreachable

bb.je:                                            ; preds = %bb.jc
  %i.alk = add i32 %i.akv, 1                      ; 3 uses
  store i32 %i.alk, ptr %i.agn, align 4, !noalias !38907
  %i.all = add i32 %.sroa.0.4.i, -1               ; 2 uses
  %i.alm = add i32 %.sroa.012.3.i, 1
  %i.aln = icmp eq i32 %i.all, 0
  br i1 %i.aln, label %.loopexit.loopexit.i.i, label %bb.iz

bb.jf:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i"
  %.val191.i = load i64, ptr %i.gw, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.alo = load i64, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.alp = icmp ugt i64 %i.alo, %.val191.i
  br i1 %i.alp, label %bb.ji, label %bb.jh, !prof !47

bb.jg:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h098e8c64304e41a4E.exit.i"
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.agc, i64 noundef %.val127.i, i64 noundef %.val127.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1852) #43, !noalias !38728
  unreachable

bb.jh:                                            ; preds = %bb.jf
  %.val190.i = load ptr, ptr %i.gv, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !70, !noundef !45
  %i.alq = load i64, ptr %i.gx, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.alr = getelementptr inbounds nuw i8, ptr %.val126.i, i64 %i.agc
  %i.als = sub nuw i64 %.val127.i, %i.agc
  %i.alt = sub nuw i64 %.val191.i, %i.alo
  %i.alu = getelementptr inbounds nuw [16 x i8], ptr %.val190.i, i64 %i.alo
  call fastcc void @_ZN6brotli3enc19backward_references30BrotliCreateBackwardReferences17hda9e5271d10c6767E(i64 noundef %.pre-phi.i, i64 noundef %.pre-phi51.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.alr, i64 noundef %i.als, i64 noundef %i.ql, i64 noundef %i.alq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gd, ptr noalias noundef nonnull align 8 dereferenceable(5584) %0, ptr noalias noundef nonnull align 4 %i.hl, ptr noalias noundef align 8 dereferenceable(8) %i.hk, ptr noalias noundef nonnull align 4 %i.alu, i64 noundef %i.alt, ptr noalias noundef align 8 dereferenceable(8) %i.gt, ptr noalias noundef align 8 dereferenceable(8) %i.ho)
  %i.alv = call noundef i64 @_ZN6brotli3enc6encode16MaxMetablockSize17hd5d2080980d19f9bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gd), !noalias !38728 ; 2 uses
  %i.alw = lshr i64 %i.alv, 3                     ; 2 uses
  %i.alx = load i64, ptr %i.fo, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.aly = load i64, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.alz = sub i64 %i.alx, %i.aly
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0)
  %i.ama = load i32, ptr %i.fq, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.amb = and i32 %i.ama, 63
  %i.amc = zext nneg i32 %i.amb to i64
  %i.amd = shl nuw i64 1, %i.amc
  %i.ame = add i64 %i.alz, %i.amd
  %.not121.i = icmp ugt i64 %i.ame, %i.alv
  %i.amf = load i32, ptr %i.ai, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.amg = icmp slt i32 %i.amf, 4
  br i1 %i.amg, label %bb.jj, label %bb.jk

bb.ji:                                            ; preds = %bb.jf
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.alo, i64 noundef %.val191.i, i64 noundef %.val191.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1851) #43, !noalias !38728
  unreachable

bb.jj:                                            ; preds = %bb.jh
  %i.amh = load i64, ptr %i.ho, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.ami = load i64, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.amj = add i64 %i.ami, %i.amh
  %i.amk = icmp ugt i64 %i.amj, 12286
  %i.aml = or i1 %i.ig, %i.amk
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.jh
  %.sroa.021.0.i = phi i1 [ %i.aml, %bb.jj ], [ %i.ig, %bb.jh ]
  %brmerge2.i = or i1 %.not121.i, %.sroa.021.0.i
  br i1 %brmerge2.i, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jn, %bb.jm, %bb.jk
  %i.amm = load i64, ptr %i.hk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 2 uses
  %.not.i27 = icmp eq i64 %i.amm, 0
  br i1 %.not.i27, label %bb.js, label %bb.jr

bb.jm:                                            ; preds = %bb.jk
  %i.amn = load i64, ptr %i.ho, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.amo = icmp ult i64 %i.amn, %i.alw
  br i1 %i.amo, label %bb.jn, label %bb.jl

bb.jn:                                            ; preds = %bb.jm
  %i.amp = load i64, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.amq = icmp ult i64 %i.amp, %i.alw
  br i1 %i.amq, label %bb.jo, label %bb.jl

bb.jo:                                            ; preds = %bb.jn
  %i.amr = call fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hd00d3837a5c8f5ecE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0), !alias.scope !38727, !noalias !38728
  br i1 %i.amr, label %bb.jp, label %bb.kr

bb.jp:                                            ; preds = %bb.jo
  %i.ams = load i64, ptr %0, align 8, !range !111, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.amt = icmp eq i64 %i.ams, 0
  br i1 %i.amt, label %bb.kr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.amu = call fastcc noundef align 8 dereferenceable(48) ptr @"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0), !noalias !38728
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 40
  store i32 0, ptr %i.amv, align 8
  br label %bb.kr

bb.jr:                                            ; preds = %bb.jl
  %.val189.i = load i64, ptr %i.gw, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 2 uses
  %i.amw = load i64, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 3 uses
  %i.amx = icmp ult i64 %i.amw, %.val189.i
  br i1 %i.amx, label %bb.jt, label %bb.ju

bb.js:                                            ; preds = %bb.jt, %bb.jl
  br i1 %i.ig, label %bb.jw, label %bb.jv

bb.jt:                                            ; preds = %bb.jr
  %.val188.i = load ptr, ptr %i.gv, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !70, !noundef !45
  %i.amy = getelementptr inbounds nuw [16 x i8], ptr %.val188.i, i64 %i.amw
  call void @_ZN6brotli3enc7command7Command11init_insert17hcc78d94f9f80b580E(ptr noalias noundef nonnull align 4 dereferenceable(16) %i.amy, i64 noundef %i.amm), !noalias !38728
  %i.amz = load i64, ptr %i.hk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.ana = load <2 x i64>, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728
  %i.anb = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.amz, i64 1
  %i.anc = add <2 x i64> %i.ana, %i.anb
  store <2 x i64> %i.anc, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728
  store i64 0, ptr %i.hk, align 8, !alias.scope !38727, !noalias !38728
  br label %bb.js

bb.ju:                                            ; preds = %bb.jr
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.amw, i64 noundef %.val189.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1844) #43, !noalias !38728
  unreachable

bb.jv:                                            ; preds = %bb.js
  %i.and = load i64, ptr %i.fo, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.ane = load i64, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.anf = icmp eq i64 %i.and, %i.ane
  br i1 %i.anf, label %.thread5, label %bb.jw

.thread5:                                         ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !38729
  store i64 %.sroa.011.2.i, ptr %i.fr, align 8
  br label %.backedge

bb.jw:                                            ; preds = %bb.jv, %bb.js
  %.val125.i = load i64, ptr %i.gk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.ang = load i64, ptr %i.gl, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.anh = icmp ugt i64 %i.ang, %.val125.i
  br i1 %i.anh, label %bb.jy, label %bb.jx, !prof !47

bb.jx:                                            ; preds = %bb.jw
  %.val124.i = load ptr, ptr %i.ft, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %i.ani = load i64, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 2 uses
  %i.anj = load i64, ptr %i.fo, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.ank = sub i64 %i.anj, %i.ani
  %i.anl = sub nuw i64 %.val125.i, %i.ang
  %i.anm = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.ang
  %i.ann = and i64 %i.ank, 4294967295
  %i.ano = load i8, ptr %i.gn, align 1, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.anp = load i8, ptr %i.go, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.anq = load i64, ptr %i.ho, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %i.anr = load i64, ptr %i.gt, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %.val186.i = load ptr, ptr %i.gv, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !70, !noundef !45
  %.val187.i = load i64, ptr %i.gw, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  %.val.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %.val123.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45
  call fastcc void @_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E(ptr noalias noundef nonnull align 1 %i.fw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.anm, i64 noundef %i.anl, i64 noundef %i.ql, i64 noundef %i.ani, i64 noundef %i.ann, i1 noundef zeroext %i.ig, i8 noundef %i.afx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gd, ptr noalias noundef nonnull align 1 %i.hp, i8 noundef %i.ano, i8 noundef %i.anp, i64 noundef %i.anq, i64 noundef %i.anr, ptr noalias noundef nonnull align 4 %.val186.i, i64 noundef %.val187.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.hq, ptr noalias noundef align 4 dereferenceable(64) %i.hl, ptr noalias noundef align 8 dereferenceable(8) %i.gm, ptr noalias noundef align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 1 %.val.i, i64 noundef %.val123.i), !noalias !38728
  %.val162.i = load ptr, ptr %i.fz, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %.val163.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.ans = load i64, ptr %i.ab, align 8, !noalias !38729, !noundef !45 ; 2 uses
  %i.ant = lshr i64 %i.ans, 3                     ; 5 uses
  %i.anu = icmp ult i64 %i.ant, %.val163.i
  br i1 %i.anu, label %bb.jz, label %bb.ka

bb.jy:                                            ; preds = %bb.jw
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ang, i64 noundef %.val125.i, i64 noundef %.val125.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1850) #43, !noalias !38728
  unreachable

bb.jz:                                            ; preds = %bb.jx
  %i.anv = add nuw nsw i64 %i.ant, 1              ; 3 uses
  %i.anw = icmp ult i64 %i.anv, %.val163.i
  br i1 %i.anw, label %bb.kb, label %bb.kc

bb.ka:                                            ; preds = %bb.jx
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ant, i64 noundef %.val163.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1845) #43, !noalias !38728
  unreachable

bb.kb:                                            ; preds = %bb.jz
  %i.anx = getelementptr inbounds nuw i8, ptr %.val162.i, i64 %i.ant
  %i.any = load i8, ptr %i.anx, align 1, !noalias !38728, !noundef !45
  %i.anz = zext i8 %i.any to i16
  %i.aoa = getelementptr inbounds nuw i8, ptr %.val162.i, i64 %i.anv
  %i.aob = load i8, ptr %i.aoa, align 1, !noalias !38728, !noundef !45
  %i.aoc = zext i8 %i.aob to i16
  %i.aod = shl nuw i16 %i.aoc, 8
  %i.aoe = or disjoint i16 %i.aod, %i.anz
  store i16 %i.aoe, ptr %i.ga, align 8, !alias.scope !38727, !noalias !38728
  %i.aof = trunc i64 %i.ans to i8
  %i.aog = and i8 %i.aof, 7
  store i8 %i.aog, ptr %i.fw, align 2, !alias.scope !38727, !noalias !38728
  %i.aoh = load i64, ptr %i.fo, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 6 uses
  store i64 %i.aoh, ptr %i.fx, align 8, !alias.scope !38727, !noalias !38728
  %i.aoi = load i64, ptr %i.fp, align 8, !alias.scope !38908, !noalias !38728, !noundef !45 ; 2 uses
  %18 = trunc i64 %i.aoi to i32                   ; 3 uses
  %19 = icmp ugt i64 %i.aoi, 3221225471
  %20 = and i32 %18, 1073741823
  %21 = and i32 %18, 1073741824
  %reass.sub.i204.i = sub nsw i32 %20, %21
  %22 = xor i32 %reass.sub.i204.i, -2147483648
  %.sroa.0.0.i205.i = select i1 %19, i32 %22, i32 %18
  %i.aoj = trunc i64 %i.aoh to i32                ; 5 uses
  %i.aok = icmp ugt i64 %i.aoh, 3221225471
  %23 = and i32 %i.aoj, 1073741823
  %24 = and i32 %i.aoj, 1073741824
  %reass.sub5.i206.i = sub nsw i32 %23, %24
  %25 = xor i32 %reass.sub5.i206.i, -2147483648
  %.sroa.02.0.i207.i = select i1 %i.aok, i32 %25, i32 %i.aoj
  store i64 %i.aoh, ptr %i.fp, align 8, !alias.scope !38908, !noalias !38728
  %26 = icmp ult i32 %.sroa.02.0.i207.i, %.sroa.0.0.i205.i
  br i1 %26, label %bb.ke, label %bb.kd

bb.kc:                                            ; preds = %bb.jz
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.anv, i64 noundef %.val163.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1846) #43, !noalias !38728
  unreachable

bb.kd:                                            ; preds = %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i", %bb.ke, %bb.kb
  %.val159.i = load i64, ptr %i.gk, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.aol = load i64, ptr %i.gl, align 8, !alias.scope !38727, !noalias !38728, !noundef !45 ; 4 uses
  %i.aom = icmp ugt i64 %i.aol, %.val159.i
  br i1 %i.aom, label %bb.ki, label %bb.kh, !prof !47

bb.ke:                                            ; preds = %bb.kb
  %i.aon = load i64, ptr %0, align 8, !range !111, !alias.scope !38727, !noalias !38728, !noundef !45
  switch i64 %i.aon, label %default.unreachable [
    i64 0, label %bb.kd
    i64 10, label %bb.kg
    i64 1, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i"
    i64 2, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i"
    i64 3, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i"
    i64 4, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i"
    i64 5, label %bb.kf
    i64 6, label %bb.kf
    i64 7, label %bb.kf
    i64 8, label %bb.kf
    i64 9, label %bb.kf
  ], !prof !38909

bb.kf:                                            ; preds = %bb.ke, %bb.ke, %bb.ke, %bb.ke, %bb.ke
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i"

bb.kg:                                            ; preds = %bb.ke
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17h5e70ffc03ff4e5feE.exit.i": ; preds = %bb.kg, %bb.kf, %bb.ke, %bb.ke, %bb.ke, %bb.ke
  %.sink.i.i = phi i64 [ 56, %bb.kg ], [ 24, %bb.ke ], [ 24, %bb.ke ], [ 24, %bb.ke ], [ 24, %bb.ke ], [ 40, %bb.kf ]
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i.i
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 40
  store i32 0, ptr %i.aop, align 8, !alias.scope !38727, !noalias !38728
  br label %bb.kd

bb.kh:                                            ; preds = %bb.kd
  %.val158.i = load ptr, ptr %i.ft, align 8, !alias.scope !38727, !noalias !38728, !nonnull !45, !align !55, !noundef !45
  %i.aoq = sub nuw i64 %.val159.i, %i.aol         ; 4 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %.val158.i, i64 %i.aol ; 2 uses
  %.not122.i = icmp eq i64 %i.aoh, 0
  br i1 %.not122.i, label %.thread31.i, label %bb.kj

bb.ki:                                            ; preds = %bb.kd
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.aol, i64 noundef %.val159.i, i64 noundef %.val159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1849) #43, !noalias !38728
  unreachable

bb.kj:                                            ; preds = %bb.kh
  %i.aos = add i32 %i.aoj, -1
  %i.aot = and i32 %i.aos, %i.it
  %i.aou = zext i32 %i.aot to i64                 ; 3 uses
  %i.aov = icmp ugt i64 %i.aoq, %i.aou
  br i1 %i.aov, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aou
  %i.aox = load i8, ptr %i.aow, align 1, !noalias !38728, !noundef !45
  store i8 %i.aox, ptr %i.gn, align 1, !alias.scope !38727, !noalias !38728
  %.not32.i = icmp eq i64 %i.aoh, 1
  br i1 %.not32.i, label %.thread31.i, label %bb.km

bb.kl:                                            ; preds = %bb.kj
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aou, i64 noundef %i.aoq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1847) #43, !noalias !38728
  unreachable

bb.km:                                            ; preds = %bb.kk
  %i.aoy = add i32 %i.aoj, -2
  %i.aoz = and i32 %i.aoy, %i.it
  %i.apa = zext i32 %i.aoz to i64                 ; 3 uses
  %i.apb = icmp ugt i64 %i.aoq, %i.apa
  br i1 %i.apb, label %bb.kn, label %bb.ko

.thread31.i:                                      ; preds = %bb.kn, %bb.kk, %bb.kh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i8 0, i64 16, i1 false), !alias.scope !38727, !noalias !38728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hl, i64 16, i1 false), !alias.scope !38910, !noalias !38911
  store i32 0, ptr %i.ge, align 8, !alias.scope !38727, !noalias !38728
  store i32 0, ptr %i.gf, align 4, !alias.scope !38727, !noalias !38728
  br label %bb.kr

bb.kn:                                            ; preds = %bb.km
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.apa
  %i.apd = load i8, ptr %i.apc, align 1, !noalias !38728, !noundef !45
  store i8 %i.apd, ptr %i.go, align 8, !alias.scope !38727, !noalias !38728
  br label %.thread31.i

bb.ko:                                            ; preds = %bb.km
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.apa, i64 noundef %i.aoq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1848) #43, !noalias !38728
  unreachable

bb.kp:                                            ; preds = %.invoke.i29
  %i.ape = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apf = icmp eq i64 %i.pg, 0
  br i1 %i.apf, label %common.resume, label %common.resume.sink.split

bb.kq:                                            ; preds = %._crit_edge, %bb.bd
  store i64 0, ptr %i.fr, align 8
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"

bb.kr:                                            ; preds = %bb.jo, %bb.jp, %bb.jq, %.thread31.i, %bb.cx
  %.sroa.0.01 = phi i64 [ %storemerge.i, %bb.cx ], [ %i.ant, %.thread31.i ], [ %.sroa.011.2.i, %bb.jo ], [ %.sroa.011.2.i, %bb.jq ], [ %.sroa.011.2.i, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !38729
  store i64 %.sroa.0.01, ptr %i.fr, align 8
  br i1 %i.ig, label %bb.ks, label %.backedge

.backedge:                                        ; preds = %bb.kr, %bb.ks, %.thread5, %.lr.ph
  %i.apg = load i64, ptr %i.fo, align 8, !alias.scope !38726, !noundef !45
  %i.aph = load i64, ptr %i.fp, align 8, !alias.scope !38726, !noundef !45
  %i.api = sub i64 %i.apg, %i.aph                 ; 2 uses
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0)
  %i.apj = load i32, ptr %i.fq, align 8, !alias.scope !38726, !noundef !45
  %i.apk = and i32 %i.apj, 63
  %i.apl = zext nneg i32 %i.apk to i64
  %i.apm = shl nuw i64 1, %i.apl                  ; 2 uses
  %.not7 = icmp ule i64 %i.apm, %i.api
  %i.apn = load i64, ptr %1, align 8              ; 3 uses
  %i.apo = icmp eq i64 %i.apn, 0                  ; 2 uses
  %or.cond = select i1 %.not7, i1 true, i1 %i.apo
  br i1 %or.cond, label %.lr.ph, label %._crit_edge864

bb.ks:                                            ; preds = %bb.kr
  store i32 2, ptr %i.ag, align 8
  br label %.backedge

bb.kt:                                            ; preds = %bb.az
  store i32 0, ptr %i.ag, align 8
  store i32 2, ptr %i.ge, align 8
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"

bb.ku:                                            ; preds = %._crit_edge864
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !38912)
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.apq = load i32, ptr %i.app, align 4, !alias.scope !38913, !noundef !45 ; 2 uses
  %i.apr = icmp eq i32 %i.apq, 0
  %i.aps = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.apt = load i32, ptr %i.aps, align 8, !alias.scope !38913 ; 2 uses
  %i.apu = zext i32 %i.apt to i64
  %i.apv = icmp ult i64 %.sroa.0.0.i23, %i.apu
  %or.cond.i.i37 = select i1 %i.apr, i1 %i.apv, i1 false
  br i1 %or.cond.i.i37, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.apw = trunc nuw i64 %.sroa.0.0.i23 to i32    ; 2 uses
  store i32 %i.apw, ptr %i.app, align 4, !alias.scope !38913
  call fastcc void @_ZN6brotli3enc6encode20RingBufferInitBuffer17heb6af10ebfcd9149E(i32 noundef %i.apw, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ft)
  %.val63.i.i = load i64, ptr %i.gk, align 8, !alias.scope !38913, !noundef !45 ; 2 uses
  %i.apx = load i64, ptr %i.gl, align 8, !alias.scope !38913, !noundef !45 ; 3 uses
  %i.apy = add i64 %i.apx, %.sroa.0.0.i23         ; 3 uses
  %i.apz = icmp ult i64 %i.apy, %i.apx
  %.not43.i.i = icmp ugt i64 %i.apy, %.val63.i.i
  %or.cond44.i.i = or i1 %i.apz, %.not43.i.i
  br i1 %or.cond44.i.i, label %bb.kx, label %bb.ky, !prof !87

bb.kw:                                            ; preds = %bb.ku
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aqb = load i32, ptr %i.aqa, align 8, !alias.scope !38913, !noundef !45
  %i.aqc = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.aqd = load i32, ptr %i.aqc, align 4, !alias.scope !38913, !noundef !45 ; 2 uses
  %i.aqe = icmp ult i32 %i.aqb, %i.aqd
  br i1 %i.aqe, label %bb.kz, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.kw
  %.phi.trans.insert.i38 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.pre.i39 = load i32, ptr %.phi.trans.insert.i38, align 8, !alias.scope !38913
  %.pre5.i = zext i32 %.pre.i39 to i64
  br label %bb.la

bb.kx:                                            ; preds = %bb.kv
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.apx, i64 noundef %i.apy, i64 noundef %.val63.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1812) #43, !noalias !38912
  unreachable

bb.ky:                                            ; preds = %bb.kv
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0.i23, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1811) #43, !noalias !38912
  unreachable

bb.kz:                                            ; preds = %bb.kw
  call fastcc void @_ZN6brotli3enc6encode20RingBufferInitBuffer17heb6af10ebfcd9149E(i32 noundef %i.aqd, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ft)
  %.val60.i.i = load ptr, ptr %i.ft, align 8, !alias.scope !38913, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %.val61.i.i = load i64, ptr %i.gk, align 8, !alias.scope !38913, !noundef !45 ; 4 uses
  %i.aqf = load i64, ptr %i.gl, align 8, !alias.scope !38913, !noundef !45
  %i.aqg = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aqh = load i32, ptr %i.aqg, align 8, !alias.scope !38913, !noundef !45
  %i.aqi = zext i32 %i.aqh to i64                 ; 2 uses
  %i.aqj = add i64 %i.aqf, %i.aqi                 ; 2 uses
  %i.aqk = add i64 %i.aqj, -2                     ; 3 uses
  %i.aql = icmp ult i64 %i.aqk, %.val61.i.i
  br i1 %i.aql, label %bb.lf, label %bb.lg

bb.la:                                            ; preds = %bb.lh, %._crit_edge.i
  %.pre-phi.i40 = phi i64 [ %.pre5.i, %._crit_edge.i ], [ %i.aqi, %bb.lh ] ; 3 uses
  %i.aqm = phi i32 [ %i.apt, %._crit_edge.i ], [ %.pre1.i.i, %bb.lh ] ; 2 uses
  %i.aqn = phi i32 [ %i.apq, %._crit_edge.i ], [ %.pre.i.i48, %bb.lh ]
  %i.aqo = load i32, ptr %i.fu, align 4, !alias.scope !38913, !noundef !45
  %i.aqp = and i32 %i.aqo, %i.aqn                 ; 3 uses
  %i.aqq = zext i32 %i.aqp to i64                 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38914)
  %i.aqr = icmp ult i32 %i.aqp, %i.aqm
  br i1 %i.aqr, label %bb.lb, label %._ZN6brotli3enc6encode19RingBufferWriteTail17h22d53832db2cc5a3E.exit.i_crit_edge.i

._ZN6brotli3enc6encode19RingBufferWriteTail17h22d53832db2cc5a3E.exit.i_crit_edge.i: ; preds = %bb.la
  %.pre3.i = load i64, ptr %i.gl, align 8, !alias.scope !38913
  br label %_ZN6brotli3enc6encode19RingBufferWriteTail17h22d53832db2cc5a3E.exit.i.i

bb.lb:                                            ; preds = %bb.la
  %i.aqs = add nuw nsw i64 %.pre-phi.i40, %i.aqq
  %i.aqt = load i64, ptr %i.gl, align 8, !alias.scope !38915, !noundef !45 ; 2 uses
  %i.aqu = add i64 %i.aqs, %i.aqt                 ; 3 uses
  %narrow.i.i.i45 = sub nuw i32 %i.aqm, %i.aqp
  %i.aqv = zext i32 %narrow.i.i.i45 to i64
  %.sroa.0.0.i.i.i.i46 = call noundef i64 @llvm.umin.i64(i64 %i.aqv, i64 %.sroa.0.0.i23) ; 3 uses
  %.val6.i.i.i = load i64, ptr %i.gk, align 8, !alias.scope !38915, !noundef !45 ; 2 uses
  %i.aqw = add i64 %i.aqu, %.sroa.0.0.i.i.i.i46   ; 3 uses
  %i.aqx = icmp ult i64 %i.aqw, %i.aqu
  %.not.i.i.i = icmp ugt i64 %i.aqw, %.val6.i.i.i
  %or.cond.i.i.i47 = or i1 %i.aqx, %.not.i.i.i
  br i1 %or.cond.i.i.i47, label %bb.ld, label %bb.lc, !prof !87

bb.lc:                                            ; preds = %bb.lb
  %i.aqy = icmp eq i64 %.sroa.0.0.i.i.i.i46, 0
  br i1 %i.aqy, label %_ZN6brotli3enc6encode19RingBufferWriteTail17h22d53832db2cc5a3E.exit.i.i, label %bb.le, !prof !54

bb.ld:                                            ; preds = %bb.lb
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.aqu, i64 noundef %i.aqw, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1822) #43, !noalias !38916
  unreachable

bb.le:                                            ; preds = %bb.lc
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0.i.i.i.i46, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1821) #43, !noalias !38916
  unreachable

_ZN6brotli3enc6encode19RingBufferWriteTail17h22d53832db2cc5a3E.exit.i.i: ; preds = %bb.lc, %._ZN6brotli3enc6encode19RingBufferWriteTail17h22d53832db2cc5a3E.exit.i_crit_edge.i
  %i.aqz = phi i64 [ %.pre3.i, %._ZN6brotli3enc6encode19RingBufferWriteTail17h22d53832db2cc5a3E.exit.i_crit_edge.i ], [ %i.aqt, %bb.lc ] ; 4 uses
  %i.ara = add nuw i64 %.sroa.0.0.i23, %i.aqq
  %.not.i.i = icmp ugt i64 %i.ara, %.pre-phi.i40
  %i.arb = add i64 %i.aqz, %i.aqq                 ; 6 uses
  br i1 %.not.i.i, label %bb.lj, label %bb.lk

bb.lf:                                            ; preds = %bb.kz
  %i.arc = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 %i.aqk
  store i8 0, ptr %i.arc, align 1, !noalias !38912
  %i.ard = add i64 %i.aqj, -1                     ; 3 uses
  %i.are = icmp ult i64 %i.ard, %.val61.i.i
  br i1 %i.are, label %bb.lh, label %bb.li

bb.lg:                                            ; preds = %bb.kz
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aqk, i64 noundef %.val61.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1813) #43, !noalias !38912
  unreachable

bb.lh:                                            ; preds = %bb.lf
  %i.arf = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 %i.ard
  store i8 0, ptr %i.arf, align 1, !noalias !38912
  %.pre.i.i48 = load i32, ptr %i.app, align 4, !alias.scope !38913
  %.pre1.i.i = load i32, ptr %i.aps, align 8, !alias.scope !38915
  br label %bb.la

bb.li:                                            ; preds = %bb.lf
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ard, i64 noundef %.val61.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1814) #43, !noalias !38912
  unreachable

bb.lj:                                            ; preds = %_ZN6brotli3enc6encode19RingBufferWriteTail17h22d53832db2cc5a3E.exit.i.i
  %i.arg = load i32, ptr %i.aqc, align 4, !alias.scope !38913, !noundef !45
  %i.arh = zext i32 %i.arg to i64
  %i.ari = sub nsw i64 %i.arh, %i.aqq
  %.sroa.0.0.i.i.i44 = call noundef i64 @llvm.umin.i64(i64 %i.ari, i64 %.sroa.0.0.i23) ; 3 uses
  %.val57.i.i = load i64, ptr %i.gk, align 8, !alias.scope !38913, !noundef !45 ; 4 uses
  %i.arj = add i64 %.sroa.0.0.i.i.i44, %i.arb     ; 3 uses
  %i.ark = icmp ult i64 %i.arj, %i.arb
  %.not40.i.i = icmp ugt i64 %i.arj, %.val57.i.i
  %or.cond45.i.i = or i1 %i.ark, %.not40.i.i
  br i1 %or.cond45.i.i, label %bb.lm, label %bb.ll, !prof !87

bb.lk:                                            ; preds = %_ZN6brotli3enc6encode19RingBufferWriteTail17h22d53832db2cc5a3E.exit.i.i
  %.val55.i.i = load i64, ptr %i.gk, align 8, !alias.scope !38913, !noundef !45 ; 2 uses
  %i.arl = add i64 %i.arb, %.sroa.0.0.i23         ; 3 uses
  %i.arm = icmp ult i64 %i.arl, %i.arb
  %.not42.i.i = icmp ugt i64 %i.arl, %.val55.i.i
  %or.cond48.i.i = or i1 %i.arm, %.not42.i.i
  br i1 %or.cond48.i.i, label %bb.lr, label %bb.ls, !prof !87

bb.ll:                                            ; preds = %bb.lj
  %i.arn = icmp eq i64 %.sroa.0.0.i.i.i44, 0
  br i1 %i.arn, label %bb.lo, label %bb.ln, !prof !54

bb.lm:                                            ; preds = %bb.lj
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.arb, i64 noundef %i.arj, i64 noundef %.val57.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1818) #43, !noalias !38912
  unreachable

bb.ln:                                            ; preds = %bb.ll
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0.i.i.i44, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1817) #43, !noalias !38912
  unreachable

bb.lo:                                            ; preds = %bb.ll
  %i.aro = sub nsw i64 %.pre-phi.i40, %i.aqq      ; 2 uses
  %i.arp = sub i64 %.sroa.0.0.i23, %i.aro
  %i.arq = add i64 %i.aqz, %i.arp                 ; 3 uses
  %i.arr = icmp ult i64 %i.arq, %i.aqz
  %.not41.i.i = icmp ugt i64 %i.arq, %.val57.i.i
  %or.cond46.i.i = or i1 %i.arr, %.not41.i.i
  br i1 %or.cond46.i.i, label %bb.lp, label %bb.lq, !prof !87

bb.lp:                                            ; preds = %bb.lo
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.aqz, i64 noundef %i.arq, i64 noundef %.val57.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1816) #43, !noalias !38912
  unreachable

bb.lq:                                            ; preds = %bb.lo
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.aro, i64 noundef %.sroa.0.0.i23, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1815) #43, !noalias !38912
  unreachable

bb.lr:                                            ; preds = %bb.lk
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.arb, i64 noundef %i.arl, i64 noundef %.val55.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1820) #43, !noalias !38912
  unreachable

bb.ls:                                            ; preds = %bb.lk
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0.i23, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1819) #43, !noalias !38912
  unreachable

bb.lt:                                            ; preds = %._crit_edge864
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ij, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1857) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5571 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !52, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @_ZN6brotli3enc6encode14SanitizeParams17hedbfa69a5e3f6b28E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
  %i.e = tail call noundef i32 @_ZN6brotli3enc6encode14ComputeLgBlock17h09e6c04348dc0b52E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store i32 %i.e, ptr %i.f, align 8
  tail call void @_ZN6brotli3enc6encode20ChooseDistanceParams17h1b04eec0af670d45E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5564
  store i32 -1, ptr %i.g, align 4
  %i.h = tail call noundef i32 @_ZN6brotli3enc6encode13ComputeRbBits17h5f1c813c5159ba70E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.d)
  %i.i = load i32, ptr %i.f, align 8, !noundef !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = and i32 %i.h, 31
  %i.l = shl nuw i32 1, %i.k                      ; 3 uses
  store i32 %i.l, ptr %i.j, align 8
  %i.m = add i32 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = and i32 %i.i, 31
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  store i32 %i.q, ptr %i.o, align 8
  %i.r = add i32 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.u = load i32, ptr %i.t, align 4, !noundef !45 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load i32, ptr %i.v, align 8, !noundef !45 ; 2 uses
  %switch = icmp ult i32 %i.w, 2
  %.sroa.0.0.i = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.u, i32 18)
  %.sroa.01.0 = select i1 %switch, i32 %.sroa.0.0.i, i32 %i.u ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %i.y = load i8, ptr %i.x, align 2, !range !52, !noundef !45 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.ab = load i8, ptr %i.aa, align 2, !range !52, !noundef !45
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5568
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5574
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38921)
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %.sroa.01.0, label %bb.g [
    i32 16, label %_ZN6brotli3enc6encode16EncodeWindowBits17h4a1f1627613f948dE.exit
    i32 17, label %bb.f
  ]

bb.e:                                             ; preds = %bb.c
  %.tr2.i = trunc i32 %.sroa.01.0 to i16
  %i.af = shl i16 %.tr2.i, 8
  %i.ag = and i16 %i.af, 16128
  %i.ah = or disjoint i16 %i.ag, 17
  br label %_ZN6brotli3enc6encode16EncodeWindowBits17h4a1f1627613f948dE.exit

bb.f:                                             ; preds = %bb.d
  br label %_ZN6brotli3enc6encode16EncodeWindowBits17h4a1f1627613f948dE.exit

bb.g:                                             ; preds = %bb.d
  %i.ai = icmp sgt i32 %.sroa.01.0, 17
  %.tr1.i = trunc i32 %.sroa.01.0 to i16          ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = shl i16 %.tr1.i, 4
  %i.ak = add i16 %i.aj, -127
  br label %_ZN6brotli3enc6encode16EncodeWindowBits17h4a1f1627613f948dE.exit

bb.i:                                             ; preds = %bb.g
  %i.al = shl i16 %.tr1.i, 1
  %i.am = add i16 %i.al, -33
  br label %_ZN6brotli3enc6encode16EncodeWindowBits17h4a1f1627613f948dE.exit

_ZN6brotli3enc6encode16EncodeWindowBits17h4a1f1627613f948dE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.h, %bb.i
  %.sink3.i = phi i16 [ %i.ak, %bb.h ], [ %i.am, %bb.i ], [ 1, %bb.f ], [ %i.ah, %bb.e ], [ 0, %bb.d ]
  %.sink.i = phi i8 [ 7, %bb.h ], [ 4, %bb.i ], [ 7, %bb.f ], [ 14, %bb.e ], [ 1, %bb.d ]
  store i16 %.sink3.i, ptr %i.ad, align 8, !alias.scope !38920, !noalias !38921
  store i8 %.sink.i, ptr %i.ae, align 2, !alias.scope !38921, !noalias !38920
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 229
  %i.ao = load i8, ptr %i.an, align 1, !range !52, !noundef !45
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j, %_ZN6brotli3enc6encode16EncodeWindowBits17h4a1f1627613f948dE.exit
  %i.aq = icmp eq i32 %i.w, 0
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4736
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5504
  tail call void @_ZN6brotli3enc6encode22InitCommandPrefixCodes17haa99d576d2d3b2e6E(ptr noalias noundef nonnull align 1 %i.ar, i64 noundef 128, ptr noalias noundef nonnull align 2 %i.as, i64 noundef 128, ptr noalias noundef nonnull align 1 %i.at, i64 noundef 512, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au)
  %.pre = load i8, ptr %i.x, align 2, !range !52
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.av = phi i8 [ %i.y, %bb.k ], [ %.pre, %bb.l ]
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.preheader9.preheader, label %.loopexit

.preheader9.preheader:                            ; preds = %bb.m
  %.sroa.05.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 424
  store <4 x i32> splat (i32 2147483632), ptr %.sroa.05.0.ptr, align 8
  %.sroa.05.0.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 440
  store <4 x i32> splat (i32 2147483632), ptr %.sroa.05.0.ptr.4, align 8
  %.sroa.05.0.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 456
  store <4 x i32> splat (i32 2147483632), ptr %.sroa.05.0.ptr.8, align 8
  %.sroa.05.0.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <4 x i32> splat (i32 2147483632), ptr %.sroa.05.0.ptr.12, align 8
  %.sroa.06.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 488
  store <4 x i32> splat (i32 2147483632), ptr %.sroa.06.0.ptr, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader9.preheader, %bb.m
  store i8 1, ptr %i.a, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hd00d3837a5c8f5ecE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(5584) %0) unnamed_addr #12 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %2 = load i64, ptr %1, align 8, !noundef !45    ; 2 uses
  %3 = trunc i64 %2 to i32                        ; 3 uses
  %4 = icmp ugt i64 %2, 3221225471
  %5 = and i32 %3, 1073741823
  %i.a = and i32 %3, 1073741824
  %reass.sub = sub nsw i32 %5, %i.a
  %6 = xor i32 %reass.sub, -2147483648
  %.sroa.0.0 = select i1 %4, i32 %6, i32 %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %8 = load i64, ptr %7, align 8, !noundef !45    ; 3 uses
  %9 = trunc i64 %8 to i32                        ; 3 uses
  %10 = icmp ugt i64 %8, 3221225471
  %11 = and i32 %9, 1073741823
  %i.b = and i32 %9, 1073741824
  %reass.sub5 = sub nsw i32 %11, %i.b
  %i.c = xor i32 %reass.sub5, -2147483648
  %.sroa.02.0 = select i1 %10, i32 %i.c, i32 %9
  store i64 %8, ptr %1, align 8
  %12 = icmp ult i32 %.sroa.02.0, %.sroa.0.0
  ret i1 %12
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17h28572dbcc34f56eaE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5560
  %i.b = load i32, ptr %i.a, align 8, !range !129, !noundef !45
  %i.c = icmp ne i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5574 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2               ; 7 uses
  %i.f = icmp eq i8 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !45 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = load i64, ptr %1, align 8                ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  %or.cond5 = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !alias.scope !38928, !noundef !45
  %i.n = zext i16 %i.m to i32
  store i16 0, ptr %i.l, align 8, !alias.scope !38928
  store i8 0, ptr %i.d, align 2, !alias.scope !38928
  %i.o = and i8 %i.e, 31
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl i32 6, %i.p                          ; 2 uses
  %i.r = or i32 %i.q, %i.n                        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !range !125, !alias.scope !38928, !noundef !45
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %.thread29.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !38928, !nonnull !45, !align !55, !noundef !45
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val23.i = load i64, ptr %i.w, align 8, !alias.scope !38928, !noundef !45
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.y = tail call { ptr, i64 } @_ZN6brotli3enc6encode18GetNextOutInternal17h163bd09a2afd3dd7E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias noundef nonnull align 1 %.val.i, i64 noundef %.val23.i, ptr noalias noundef nonnull align 1 dereferenceable(16) %i.x) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 1        ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5512
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !38928, !noundef !45 ; 5 uses
  %i.ac = icmp ugt i64 %i.ab, %i.z
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ab, i64 noundef %i.z, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1868) #43
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = extractvalue { ptr, i64 } %i.y, 0       ; 2 uses
  %i.ae = sub nuw i64 %i.z, %i.ab                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %.not.i = icmp eq i64 %i.z, %i.ab
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = trunc i32 %i.r to i8
  store i8 %i.ag, ptr %i.af, align 1
  %i.ah = icmp ugt i8 %i.e, 2
  br i1 %i.ah, label %bb.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

.thread29.i:                                      ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5528 ; 2 uses
  store i32 1, ptr %i.s, align 8, !alias.scope !38928
  store i32 0, ptr %i.ai, align 4, !alias.scope !38928
  %i.ak = trunc i32 %i.r to i8
  store i8 %i.ak, ptr %i.aj, align 8, !alias.scope !38928
  %i.al = icmp ugt i8 %i.e, 2
  br i1 %i.al, label %.thread45.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1869) #43
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not22.i = icmp eq i64 %i.ae, 1
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i32 %i.r, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ao = trunc i32 %i.am to i8
  store i8 %i.ao, ptr %i.an, align 1
  %i.ap = icmp ugt i8 %i.e, 10
  br i1 %i.ap, label %bb.l, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

.thread45.i:                                      ; preds = %.thread29.i
  %i.aq = lshr i32 %i.r, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5529
  %i.as = trunc i32 %i.aq to i8
  store i8 %i.as, ptr %i.ar, align 1, !alias.scope !38928
  %i.at = icmp ugt i8 %i.e, 10
  br i1 %i.at, label %.thread50.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1870) #43
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.au = icmp ugt i64 %i.ae, 2
  br i1 %i.au, label %.thread50.i, label %bb.m

.thread50.i:                                      ; preds = %bb.l, %.thread45.i
  %.sroa.09.02833414853.i = phi ptr [ %i.af, %bb.l ], [ %i.aj, %.thread45.i ]
  %i.av = lshr i32 %i.q, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.02833414853.i, i64 2
  %i.ax = trunc i32 %i.av to i8
  store i8 %i.ax, ptr %i.aw, align 1
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 2, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1871) #43
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit": ; preds = %bb.g, %.thread29.i, %bb.j, %.thread45.i, %.thread50.i
  %i.ay = zext i8 %i.e to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !38928, !noundef !45
  %i.bb = add nuw nsw i64 %i.ay, 13
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.az, align 8, !alias.scope !38928
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.u, %bb.b, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit"
  %.sroa.0.0 = phi i1 [ true, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hc715d49c6b66c089E.exit" ], [ false, %bb.b ], [ true, %bb.u ], [ true, %bb.t ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 8 uses
  %i.be = load i64, ptr %4, align 8, !noundef !45 ; 4 uses
  %i.bf = add i64 %i.be, %.sroa.0.0.i             ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %.not = icmp ugt i64 %i.bf, %3
  %or.cond14 = or i1 %i.bg, %.not
  br i1 %or.cond14, label %bb.q, label %bb.p, !prof !87

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.bi, align 8, !nonnull !45, !align !55, !noundef !45
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val15 = load i64, ptr %i.bj, align 8, !noundef !45
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.bl = tail call { ptr, i64 } @_ZN6brotli3enc6encode18GetNextOutInternal17h163bd09a2afd3dd7E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias noundef nonnull align 1 %.val, i64 noundef %.val15, ptr noalias noundef nonnull align 1 dereferenceable(16) %i.bk) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 1      ; 2 uses
  %.not13 = icmp ugt i64 %.sroa.0.0.i, %i.bm
  br i1 %.not13, label %bb.s, label %bb.r, !prof !87

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.be, i64 noundef %i.bf, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1873) #43
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = extractvalue { ptr, i64 } %i.bl, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %i.bn, i64 %.sroa.0.0.i, i1 false), !alias.scope !38929, !noalias !38930
  store i64 %i.bf, ptr %4, align 8
  %i.bp = sub nuw i64 %i.j, %.sroa.0.0.i
  store i64 %i.bp, ptr %1, align 8
  %i.bq = load i32, ptr %i.bh, align 8, !range !125, !noundef !45
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bs = icmp eq i32 %i.bq, 2
  br i1 %i.bs, label %bb.t, label %.sink.split

bb.s:                                             ; preds = %bb.p
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1872) #43
  unreachable

.sink.split:                                      ; preds = %bb.r
  %i.bt = trunc i64 %.sroa.0.0.i to i32
  %i.bu = load i32, ptr %i.br, align 4, !noundef !45
  %i.bv = add i32 %i.bu, %i.bt
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.sink.split
  %.sroa.6.0 = phi i32 [ undef, %bb.r ], [ %i.bv, %.sink.split ]
  store i32 %.sroa.6.0, ptr %i.br, align 4
  %i.bw = load i64, ptr %i.g, align 8, !noundef !45
  %i.bx = sub i64 %i.bw, %.sroa.0.0.i
  store i64 %i.bx, ptr %i.g, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !noundef !45
  %i.ca = add i64 %i.bz, %.sroa.0.0.i             ; 2 uses
  store i64 %i.ca, ptr %i.by, align 8
  %i.cb = load i64, ptr %5, align 8, !range !59, !noundef !45
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %bb.n

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_3
