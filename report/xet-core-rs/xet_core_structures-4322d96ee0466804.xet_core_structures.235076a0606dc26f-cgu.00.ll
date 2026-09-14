Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.00?download=true
inline.NumInlined: 192
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo22chunk_hash_dedup_queryINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEBa_:bb.a
  br i1 %i.at, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr @_RNvNvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB7_12MDBShardInfo28get_xorb_info_index_by_chunk10___CALLSITE, align 8, !noalias !296, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !296
  store i64 8, ptr %i.l, align 8, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !296
  %i.aw = load i64, ptr %3, align 8, !alias.scope !294, !noalias !309, !noundef !4
  store i64 %i.aw, ptr %i.k, align 8, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !296
  store ptr %i.l, ptr %i.j, align 8, !noalias !296
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !296
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.ax, align 8, !noalias !296
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !296
  store ptr @4, ptr %i.m, align 8, !noalias !296
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.j, ptr %i.ay, align 8, !noalias !296
  store ptr %i.m, ptr %i.n, align 8, !noalias !296
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @5, ptr %i.az, align 8, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !296
  store i64 1, ptr %i.i, align 8, !noalias !296
  %.sroa.012.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.n, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !noalias !296
  %.sroa.012.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.012.sroa.5.0..sroa_idx.i, align 8, !noalias !296
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !296
  call void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !296
  br label %bb.n

bb.m:                                             ; preds = %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashRNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ba, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.433.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ai

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.bb = icmp eq ptr %i.ak, null
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !310, !noalias !311, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.457.sroa.5.0..sroa.457.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.ah
  %.sroa.512.0119 = phi i64 [ %i.al, %.lr.ph ], [ %i.bj, %bb.ah ]
  %.sroa.011.0.idx118 = phi i64 [ 0, %.lr.ph ], [ %.sroa.011.0.add, %bb.ah ] ; 3 uses
  %i.bj = add i64 %.sroa.512.0119, -1             ; 2 uses
  %i.bk = icmp eq i64 %.sroa.011.0.idx118, 64
  br i1 %i.bk, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.ah, %bb.o, %bb.g, %bb.n
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.d

bb.p:                                             ; preds = %bb.o
  %.sroa.011.0.ptr120 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.011.0.idx118 ; 2 uses
  %.sroa.011.0.add = add nuw nsw i64 %.sroa.011.0.idx118, 8
  %i.bl = load i32, ptr %.sroa.011.0.ptr120, align 4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.011.0.ptr120, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  %i.bo = zext i32 %i.bl to i64
  %i.bp = mul nuw nsw i64 %i.bo, 48
  %i.bq = add i64 %i.bd, %i.bp
  %i.br = call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i64 noundef %i.bq), !noalias !312 ; 2 uses
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = extractvalue { i64, ptr } %i.br, 1
  br label %bb.ag

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !313
  call void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2), !noalias !312
  %i.bv = load i64, ptr %i.g, align 8, !range !7, !noalias !313, !noundef !4
  %i.bw = trunc nuw i64 %i.bv to i1
  %i.bx = load ptr, ptr %i.be, align 8, !noalias !313 ; 2 uses
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !313
  br label %bb.ag

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.446.0..sroa_idx.i, i64 24, i1 false), !noalias !313
  %.sroa.547.0.copyload.i = load i32, ptr %.sroa.547.0..sroa_idx.i, align 8, !noalias !313
  %.sroa.648.0.copyload.i = load i32, ptr %.sroa.648.0..sroa_idx.i, align 4, !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !313
  %i.by = icmp eq i32 %i.bn, 0
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !313
  call void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2), !noalias !312
  %i.bz = load i64, ptr %i.f, align 8, !range !7, !noalias !313, !noundef !4
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = load ptr, ptr %i.bf, align 8, !noalias !313 ; 2 uses
  br i1 %i.ca, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.cc = zext i32 %i.bn to i64
  %i.cd = mul nuw nsw i64 %i.cc, 48
  %i.ce = call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 2, i64 noundef %i.cd), !noalias !312 ; 2 uses
  %i.cf = extractvalue { i64, ptr } %i.ce, 0
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.w, label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.ch = extractvalue { i64, ptr } %i.ce, 1
  br label %bb.ag

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !313
  br label %bb.ag

bb.y:                                             ; preds = %bb.u
  %.sroa.457.sroa.0.0.copyload.i = load i64, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !313
  %.sroa.457.sroa.4.0.copyload.i = load i64, ptr %.sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx.i, align 8, !noalias !313
  %.sroa.457.sroa.5.0.copyload.i = load i64, ptr %.sroa.457.sroa.5.0..sroa.457.0..sroa_idx.sroa_idx.i, align 8, !noalias !313
  %.sroa.659.0.copyload.i = load i32, ptr %.sroa.659.0..sroa_idx.i, align 4, !noalias !313 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !313
  %i.ci = ptrtoint ptr %i.cb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !noalias !315
  br i1 %or.cond9.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !noalias !315
  br label %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @_RNvMsf_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash4hmac(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.w), !noalias !316
  br label %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit.i

_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !314
  %i.cj = load i64, ptr %i.e, align 8, !noalias !313, !noundef !4
  %i.ck = icmp eq i64 %i.cj, %i.ci
  %i.cl = load i64, ptr %i.bg, align 8, !noalias !313
  %i.cm = icmp eq i64 %.sroa.457.sroa.0.0.copyload.i, %i.cl
  %or.cond.i = select i1 %i.ck, i1 %i.cm, i1 false
  %i.cn = load i64, ptr %i.bh, align 8, !noalias !313
  %i.co = icmp eq i64 %.sroa.457.sroa.4.0.copyload.i, %i.cn
  %or.cond100.i = select i1 %or.cond.i, i1 %i.co, i1 false
  %i.cp = load i64, ptr %i.bi, align 8, !noalias !313
  %.not.i = icmp eq i64 %.sroa.457.sroa.5.0.copyload.i, %i.cp
  %or.cond102.i = select i1 %or.cond100.i, i1 %.not.i, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !313
  br i1 %or.cond102.i, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit.i
  %i.cq = zext i32 %i.bn to i64                   ; 3 uses
  %i.cr = zext i32 %.sroa.648.0.copyload.i to i64 ; 3 uses
  %i.cs = add nuw nsw i64 %i.cq, 1
  %i.ct = icmp eq i64 %i.cs, %i.cr
  br i1 %i.ct, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.473.sroa.4.0..sroa.473.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.473.sroa.5.0..sroa.473.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.sroa.675.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  br i1 %or.cond9.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ad
  %i.cy = phi i64 [ %i.dl, %bb.ad ], [ 2, %.lr.ph.i ] ; 5 uses
  %.sroa.084.0125.us.i = phi i32 [ %i.dk, %bb.ad ], [ %.sroa.659.0.copyload.i, %.lr.ph.i ] ; 3 uses
  %.sroa.081.0124.us.i = phi i64 [ %i.cy, %bb.ad ], [ 1, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !313
  call void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2), !noalias !312
  %i.cz = load i64, ptr %i.d, align 8, !range !7, !noalias !313, !noundef !4
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %.split.us.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.us.i
  %.sroa.072.0.copyload.us.i = load ptr, ptr %i.cu, align 8, !noalias !313
  %.sroa.473.sroa.0.0.copyload.us.i = load i64, ptr %.sroa.473.0..sroa_idx.i, align 8, !noalias !313
  %.sroa.473.sroa.4.0.copyload.us.i = load i64, ptr %.sroa.473.sroa.4.0..sroa.473.0..sroa_idx.sroa_idx.i, align 8, !noalias !313
  %.sroa.473.sroa.5.0.copyload.us.i = load i64, ptr %.sroa.473.sroa.5.0..sroa.473.0..sroa_idx.sroa_idx.i, align 8, !noalias !313
  %.sroa.675.0.copyload.us.i = load i32, ptr %.sroa.675.0..sroa_idx.i, align 4, !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !313
  %exitcond158.i = icmp eq i64 %i.cy, %5
  br i1 %exitcond158.i, label %.loopexit, label %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.us.i

_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.us.i: ; preds = %bb.ac
  %i.db = ptrtoint ptr %.sroa.072.0.copyload.us.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !313
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.sroa.081.0124.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dc, i64 32, i1 false), !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !317
  %i.dd = load i64, ptr %i.c, align 8, !noalias !313, !noundef !4
  %i.de = icmp eq i64 %i.dd, %i.db
  %i.df = load i64, ptr %i.cv, align 8, !noalias !313
  %i.dg = icmp eq i64 %.sroa.473.sroa.0.0.copyload.us.i, %i.df
  %or.cond105.us.i = select i1 %i.de, i1 %i.dg, i1 false
  %i.dh = load i64, ptr %i.cw, align 8, !noalias !313
  %i.di = icmp eq i64 %.sroa.473.sroa.4.0.copyload.us.i, %i.dh
  %or.cond108.us.i = select i1 %or.cond105.us.i, i1 %i.di, i1 false
  %i.dj = load i64, ptr %i.cx, align 8, !noalias !313
  %.not95.us.i = icmp eq i64 %.sroa.473.sroa.5.0.copyload.us.i, %i.dj
  %or.cond110.us.i = select i1 %or.cond108.us.i, i1 %.not95.us.i, i1 false
  br i1 %or.cond110.us.i, label %bb.ad, label %.split135.us.i

bb.ad:                                            ; preds = %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !313
  %i.dk = add i32 %.sroa.675.0.copyload.us.i, %.sroa.084.0125.us.i ; 2 uses
  %i.dl = add nuw nsw i64 %i.cy, 1
  %i.dm = add nuw nsw i64 %i.cy, %i.cq
  %i.dn = icmp eq i64 %i.dm, %i.cr
  br i1 %i.dn, label %.loopexit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.af
  %i.do = phi i64 [ %i.ec, %bb.af ], [ 2, %.lr.ph.i ] ; 5 uses
  %.sroa.084.0125.i = phi i32 [ %i.eb, %bb.af ], [ %.sroa.659.0.copyload.i, %.lr.ph.i ] ; 3 uses
  %.sroa.081.0124.i = phi i64 [ %i.do, %bb.af ], [ 1, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !313
  call void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2), !noalias !312
  %i.dp = load i64, ptr %i.d, align 8, !range !7, !noalias !313, !noundef !4
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %.split.us.i, label %bb.ae

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  %i.dr = load ptr, ptr %i.cu, align 8, !noalias !313, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !313
  br label %bb.ag

bb.ae:                                            ; preds = %.lr.ph.split.i
  %.sroa.072.0.copyload.i = load ptr, ptr %i.cu, align 8, !noalias !313
  %.sroa.473.sroa.0.0.copyload.i = load i64, ptr %.sroa.473.0..sroa_idx.i, align 8, !noalias !313
  %.sroa.473.sroa.4.0.copyload.i = load i64, ptr %.sroa.473.sroa.4.0..sroa.473.0..sroa_idx.sroa_idx.i, align 8, !noalias !313
  %.sroa.473.sroa.5.0.copyload.i = load i64, ptr %.sroa.473.sroa.5.0..sroa.473.0..sroa_idx.sroa_idx.i, align 8, !noalias !313
  %.sroa.675.0.copyload.i = load i32, ptr %.sroa.675.0..sroa_idx.i, align 4, !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !313
  %exitcond.i = icmp eq i64 %i.do, %5
  br i1 %exitcond.i, label %.loopexit, label %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.i

_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.i: ; preds = %bb.ae
  %i.ds = ptrtoint ptr %.sroa.072.0.copyload.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !313
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.sroa.081.0124.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dt, i64 32, i1 false), !noalias !315
  call void @_RNvMsf_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash4hmac(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.w), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !317
  %i.du = load i64, ptr %i.c, align 8, !noalias !313, !noundef !4
  %i.dv = icmp eq i64 %i.du, %i.ds
  %i.dw = load i64, ptr %i.cv, align 8, !noalias !313
  %i.dx = icmp eq i64 %.sroa.473.sroa.0.0.copyload.i, %i.dw
  %or.cond105.i = select i1 %i.dv, i1 %i.dx, i1 false
  %i.dy = load i64, ptr %i.cw, align 8, !noalias !313
  %i.dz = icmp eq i64 %.sroa.473.sroa.4.0.copyload.i, %i.dy
  %or.cond108.i = select i1 %or.cond105.i, i1 %i.dz, i1 false
  %i.ea = load i64, ptr %i.cx, align 8, !noalias !313
  %.not95.i = icmp eq i64 %.sroa.473.sroa.5.0.copyload.i, %i.ea
  %or.cond110.i = select i1 %or.cond108.i, i1 %.not95.i, i1 false
  br i1 %or.cond110.i, label %bb.af, label %.split135.us.i

.split135.us.i:                                   ; preds = %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.i, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.us.i
  %.us-phi136.i = phi i64 [ %.sroa.081.0124.us.i, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.us.i ], [ %.sroa.081.0124.i, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.i ]
  %.us-phi137.i = phi i32 [ %.sroa.084.0125.us.i, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.us.i ], [ %.sroa.084.0125.i, %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !313
  br label %.loopexit

bb.af:                                            ; preds = %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !313
  %i.eb = add i32 %.sroa.675.0.copyload.i, %.sroa.084.0125.i ; 2 uses
  %i.ec = add nuw nsw i64 %i.do, 1
  %i.ed = add nuw nsw i64 %i.do, %i.cq
  %i.ee = icmp eq i64 %i.ed, %i.cr
  br i1 %i.ee, label %.loopexit, label %.lr.ph.split.i

bb.ag:                                            ; preds = %bb.q, %bb.s, %bb.x, %.split.us.i, %bb.w
  %.sroa.20.0.ph = phi ptr [ %i.ch, %bb.w ], [ %i.dr, %.split.us.i ], [ %i.cb, %bb.x ], [ %i.bx, %bb.s ], [ %i.bu, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ef, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.20.0.ph, ptr %.sroa.463.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ai

.loopexit:                                        ; preds = %bb.ae, %bb.af, %bb.ac, %bb.ad, %bb.ab, %.split135.us.i
  %.sroa.081.0123.i = phi i64 [ %.us-phi136.i, %.split135.us.i ], [ 1, %bb.ab ], [ %i.cy, %bb.ad ], [ %4, %bb.ac ], [ %4, %bb.ae ], [ %i.do, %bb.af ] ; 2 uses
  %.sroa.084.0119.i = phi i32 [ %.us-phi137.i, %.split135.us.i ], [ %.sroa.659.0.copyload.i, %bb.ab ], [ %i.dk, %bb.ad ], [ %.sroa.084.0125.us.i, %bb.ac ], [ %.sroa.084.0125.i, %bb.ae ], [ %i.eb, %bb.af ]
  %i.eg = trunc i64 %.sroa.081.0123.i to i32
  %i.eh = add i32 %i.bn, %i.eg
  %.sroa.323.sroa.0.sroa.3.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.323.sroa.0.sroa.3.0..sroa.323.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  store i64 1, ptr %0, align 8
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.081.0123.i, ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.323.sroa.0.sroa.2.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bx, ptr %.sroa.323.sroa.0.sroa.2.0..sroa.323.0..sroa_idx.sroa_idx, align 8
  %.sroa.323.sroa.2.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.547.0.copyload.i, ptr %.sroa.323.sroa.2.0..sroa.323.0..sroa_idx.sroa_idx, align 8
  %.sroa.323.sroa.3.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.084.0119.i, ptr %.sroa.323.sroa.3.0..sroa.323.0..sroa_idx.sroa_idx, align 4
  %.sroa.323.sroa.4.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.bn, ptr %.sroa.323.sroa.4.0..sroa.323.0..sroa_idx.sroa_idx, align 8
  %.sroa.323.sroa.5.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.eh, ptr %.sroa.323.sroa.5.0..sroa.323.0..sroa_idx.sroa_idx, align 4
  br label %bb.ai

bb.ah:                                            ; preds = %_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo16keyed_chunk_hashNtNtNtBa_10merklehash9data_hash8DataHashEBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  %i.ei = icmp eq i64 %i.bj, 0
  br i1 %i.ei, label %._crit_edge, label %bb.o

bb.ai:                                            ; preds = %bb.ag, %.loopexit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo25read_all_truncated_hashesINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(248) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.p = sub i64 %i.o, %i.m
  %i.q = udiv i64 %i.p, 48                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.q, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.r = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e, !prof !9

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.w = load i64, ptr %i.e, align 8, !range !7, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !8, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.x, label %bb.u, label %bb.v, !prof !9

bb.d:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.v, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.ab) #16
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.ad = icmp samesign ule i64 %i.q, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.u, ptr %i.h, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.ac, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.523.0..sroa_idx, align 8
  %i.ae = invoke { i64, ptr } @_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io4seek4Seek4seekCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 0, i64 noundef %i.m)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = extractvalue { i64, ptr } %i.ae, 1
  br label %.loopexit171

bb.h:                                             ; preds = %.preheader, %._crit_edge
  %.sroa.024.0 = phi i32 [ %i.av, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.aj = invoke { i64, ptr } @_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io4seek4Seek15stream_positionCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = extractvalue { i64, ptr } %i.aj, 1      ; 2 uses
  %i.am = trunc nuw i64 %i.ak to i1
  br i1 %i.am, label %.loopexit171, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = icmp ugt i64 %i.o, %i.an
  br i1 %i.ao, label %bb.k, label %.loopexit119

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader11deserializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEB7_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit

.loopexit119:                                     ; preds = %bb.aj, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.aq = load i64, ptr %i.g, align 8, !range !7, !noundef !4
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit171

bb.n:                                             ; preds = %bb.l
  %.sroa.682.0.copyload = load i32, ptr %.sroa.682.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not136 = icmp eq i32 %.sroa.682.0.copyload, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %bb.n
  %i.au = add i32 %.sroa.024.0, 1
  %i.av = add i32 %i.au, %.sroa.682.0.copyload
  br label %bb.h

.lr.ph:                                           ; preds = %bb.n, %bb.r
  %.sroa.087.0135 = phi i32 [ %i.aw, %bb.r ], [ 0, %bb.n ] ; 2 uses
  %i.aw = add nuw i32 %.sroa.087.0135, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry11deserializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEB9_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %.lr.ph
  %i.ax = load i64, ptr %i.f, align 8, !range !7, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = load ptr, ptr %i.ah, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.ay, label %.loopexit171, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = load i64, ptr %.sroa.523.0..sroa_idx, align 8, !alias.scope !325, !noalias !326, !noundef !4 ; 3 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !5, !alias.scope !325, !noalias !326, !noundef !4
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.q, label %bb.r

end_hunk_0
