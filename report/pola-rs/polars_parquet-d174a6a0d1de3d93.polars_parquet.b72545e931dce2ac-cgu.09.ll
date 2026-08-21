Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.09?download=true
inline.NumInlined: 2320
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1RSB1E_EBc_:bb.a
bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !7211
  br label %bb.ag, !dbg !7171

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa164 = phi i64 [ %i.ad, %.preheader ], [ %i.al, %bb.f ], !dbg !7199
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7212
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7212
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !7212, !noalias !7182
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7213
  %i.am = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !7212, !noalias !7182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7204, !noalias !7182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7209, !noalias !7182
  store i64 %.lcssa164, ptr %0, align 8, !dbg !7213
  store <2 x i64> %i.am, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !7213
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7213
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !7213
  br label %bb.ag, !dbg !7171

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1168, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !7220
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7222
  %i.an = load i64, ptr %i.u, align 8, !dbg !7223, !range !243, !noundef !13 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2, !dbg !7223
  br i1 %i.ao, label %.outer._crit_edge, label %.lr.ph169.lr.ph, !dbg !7225

.lr.ph169.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph169, !dbg !7225

.lr.ph169:                                        ; preds = %.lr.ph169.lr.ph, %.outer
  %i.be = phi i64 [ %i.an, %.lr.ph169.lr.ph ], [ %i.bu, %.outer ]
  %.sroa.0.0.ph187 = phi i64 [ %.sroa.0.2.ph, %.lr.ph169.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !7225

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !7226
  %.sroa.035.0.copyload = load ptr, ptr %i.bf, align 8, !dbg !7226
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !7226
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !7226
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !7226
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !7226
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !7226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !7226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !7227
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !7228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !7227
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !7228
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7228
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !7228
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7228
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !7228
  br label %bb.ag, !dbg !7234

bb.j:                                             ; preds = %.lr.ph169, %bb.o
  %i.bg = phi i64 [ %i.be, %.lr.ph169 ], [ %i.bj, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !7236 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7236 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !7236 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !7236
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !7236 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !7227
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !7237
  br i1 %i.bh, label %bb.k, label %bb.l, !dbg !7237

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !7238
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !7239

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !7240
  br label %bb.ag, !dbg !7241

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !7242
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !7242
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !7242
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !7242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !7242
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !7242
  %.not54 = icmp eq i64 %.sroa.0.0.ph187, 0, !dbg !7243
  br i1 %.not54, label %bb.r, label %bb.q, !dbg !7243

bb.n:                                             ; preds = %bb.k
  %i.bi = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !7245
  br i1 %i.bi, label %bb.o, label %bb.p, !dbg !7245

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !7220
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7222
  %i.bj = load i64, ptr %i.u, align 8, !dbg !7223, !range !243, !noundef !13 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 2, !dbg !7223
  br i1 %i.bk, label %.outer._crit_edge, label %bb.j, !dbg !7225

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !7247), !dbg !7250
  %i.bl = zext i32 %.sroa.728.0.copyload to i64, !dbg !7251 ; 2 uses
  %i.bm = load i64, ptr %i.w, align 8, !dbg !7253, !alias.scope !7255, !noundef !13
  %i.bn = icmp ugt i64 %i.bm, %i.bl, !dbg !7258
  br i1 %i.bn, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread, !dbg !7259

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit: ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !7261), !dbg !7264
  %i.bo = load ptr, ptr %i.v, align 8, !dbg !7266, !alias.scope !7268, !nonnull !13, !noundef !13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl, !dbg !7269
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bp, align 1, !dbg !7272, !noalias !7268
  %i.bq = load i64, ptr %i.y, align 8, !dbg !7273, !noundef !13 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, -1, !dbg !7276
  call void @llvm.assume(i1 %i.br), !dbg !7278
  %i.bs = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph187, !dbg !7279
  %i.bt = add i64 %i.bs, %i.bq, !dbg !7279
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bt, i8 noundef %.sroa.0.0.copyload.i.i), !dbg !7280
  br label %.outer, !dbg !7280

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !7281
  br label %bb.ag, !dbg !7234

.outer:                                           ; preds = %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !7220
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7222
  %i.bu = load i64, ptr %i.u, align 8, !dbg !7223, !range !243, !noundef !13 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 2, !dbg !7223
  br i1 %i.bv, label %.outer._crit_edge, label %.lr.ph169, !dbg !7225

bb.q:                                             ; preds = %bb.m
  %i.bw = lshr i64 %.sroa.0.0.ph187, 5, !dbg !7282
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bw), !dbg !7283
  %i.bx = and i64 %.sroa.0.0.ph187, 31, !dbg !7284 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !7285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !7285
  store ptr %i.t, ptr %i.r, align 8, !dbg !7285
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !7287
  %i.by = load i64, ptr %i.s, align 8, !dbg !7285, !range !431, !noundef !13
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !7288
  br i1 %i.bz, label %bb.s, label %thread-pre-split, !dbg !7288

thread-pre-split:                                 ; preds = %bb.q, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !7289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !7289
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !7290, !noalias !7305
  br label %bb.r, !dbg !7309

bb.r:                                             ; preds = %thread-pre-split, %bb.m
  %i.ca = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !7290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !7309
  store ptr %i.t, ptr %i.n, align 8, !dbg !7310
  %i.cb = icmp ult i64 %i.ca, 32, !dbg !7311
  br i1 %i.cb, label %.loopexit, label %.lr.ph180, !dbg !7311

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !7312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i64 128, i1 false), !dbg !7312
  %i.cc = load i64, ptr %i.aq, align 8, !dbg !7313, !noundef !13 ; 6 uses
  %i.cd = icmp uge i64 %i.cc, %i.bx, !dbg !7314
  %i.ce = icmp ult i64 %i.cc, 33
  %or.cond = and i1 %i.cd, %i.ce, !dbg !7314
  br i1 %or.cond, label %bb.u, label %bb.t, !dbg !7314, !prof !576

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bx, i64 noundef %i.cc, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !7325
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bx, !dbg !7326 ; 4 uses
  %i.cg = load i64, ptr %i.w, align 8, !dbg !7330, !alias.scope !7333, !noundef !13
  %i.ch = trunc i64 %i.cg to i32, !dbg !7336      ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cc, !dbg !7339 ; 2 uses
  %i.cj = icmp samesign eq i64 %i.bx, %i.cc, !dbg !7356
  br i1 %i.cj, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph174.preheader, !dbg !7368

.lr.ph174.preheader:                              ; preds = %bb.u
  %i.ck = shl nuw nsw i64 %i.cc, 2, !dbg !7368
  %6 = add nsw i64 %i.ck, -4, !dbg !7368
  %7 = shl nuw nsw i64 %i.bx, 2, !dbg !7368
  %i.cl = sub nsw i64 %6, %7, !dbg !7368          ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 2, !dbg !7368
  %i.cn = add nuw nsw i64 %i.cm, 1, !dbg !7368    ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.cl, 28, !dbg !7368
  br i1 %min.iters.check268, label %.lr.ph174.preheader287, label %vector.ph269, !dbg !7368

vector.ph269:                                     ; preds = %.lr.ph174.preheader
  %n.vec270 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec270, 2
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.co
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273, !dbg !7368

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next280, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cu, %vector.body273 ]
  %vec.phi276 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cv, %vector.body273 ]
  %i.cq = shl i64 %index274, 2
  %next.gep277 = getelementptr i8, ptr %i.cf, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep277, i64 16, !dbg !7369
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !dbg !7369, !alias.scope !7370, !noalias !7373
  %wide.load279 = load <4 x i32>, ptr %i.cr, align 4, !dbg !7369, !alias.scope !7370, !noalias !7373
  %i.cs = icmp ult <4 x i32> %wide.load278, %broadcast.splat272, !dbg !7375
  %i.ct = icmp ult <4 x i32> %wide.load279, %broadcast.splat272, !dbg !7375
  %i.cu = and <4 x i1> %vec.phi275, %i.cs, !dbg !7377 ; 2 uses
  %i.cv = and <4 x i1> %vec.phi276, %i.ct, !dbg !7377 ; 2 uses
  %index.next280 = add nuw i64 %index274, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next280, %n.vec270, !dbg !7368
  br i1 %i.cw, label %middle.block281, label %vector.body273, !dbg !7368, !llvm.loop !7378

middle.block281:                                  ; preds = %vector.body273
  %bin.rdx282 = and <4 x i1> %i.cv, %i.cu, !dbg !7368
  %i.cx = bitcast <4 x i1> %bin.rdx282 to i4, !dbg !7368
  %i.cy = icmp eq i4 %i.cx, -1, !dbg !7368        ; 2 uses
  %cmp.n283 = icmp eq i64 %i.cn, %n.vec270, !dbg !7368
  br i1 %cmp.n283, label %._crit_edge175, label %.lr.ph174.preheader287, !dbg !7368

.lr.ph174.preheader287:                           ; preds = %.lr.ph174.preheader, %middle.block281
  %.sroa.0.0.i172.ph = phi i1 [ true, %.lr.ph174.preheader ], [ %i.cy, %middle.block281 ]
  %.sroa.02.0.i171.ph = phi ptr [ %i.cf, %.lr.ph174.preheader ], [ %i.cp, %middle.block281 ]
  br label %.lr.ph174, !dbg !7368

.lr.ph174:                                        ; preds = %.lr.ph174.preheader287, %.lr.ph174
  %.sroa.0.0.i172 = phi i1 [ %i.dc, %.lr.ph174 ], [ %.sroa.0.0.i172.ph, %.lr.ph174.preheader287 ]
  %.sroa.02.0.i171 = phi ptr [ %i.cz, %.lr.ph174 ], [ %.sroa.02.0.i171.ph, %.lr.ph174.preheader287 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i171, i64 4, !dbg !7381 ; 2 uses
  %i.da = load i32, ptr %.sroa.02.0.i171, align 4, !dbg !7369, !alias.scope !7370, !noalias !7373, !noundef !13
  %i.db = icmp ult i32 %i.da, %i.ch, !dbg !7375
  %i.dc = and i1 %.sroa.0.0.i172, %i.db, !dbg !7377 ; 2 uses
  %i.dd = icmp eq ptr %i.cz, %i.ci, !dbg !7356
  br i1 %i.dd, label %._crit_edge175, label %.lr.ph174, !dbg !7368, !llvm.loop !7384

._crit_edge175:                                   ; preds = %.lr.ph174, %middle.block281
  %.lcssa = phi i1 [ %i.cy, %middle.block281 ], [ %i.dc, %.lr.ph174 ], !dbg !7377
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !7385, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge175
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !7386
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !7387 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !7388
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.v, !dbg !7391

bb.v:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !7398
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !7392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !7289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !7289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !7289
  br label %bb.w, !dbg !7399

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge175, %bb.u, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cf, ptr %i.o, align 8, !dbg !7401
  store ptr %i.ci, ptr %i.ar, align 8, !dbg !7401
  store ptr %i.v, ptr %i.as, align 8, !dbg !7401
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !7410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !7289
  br label %thread-pre-split, !dbg !7414

bb.w:                                             ; preds = %bb.ae, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !7415
  br label %bb.ag, !dbg !7234

.lr.ph180:                                        ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7416, !noalias !7417
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !7419, !alias.scope !7424, !noalias !7417
  %i.de = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !7427, !noalias !7429
  %i.df = extractvalue { i64, i64 } %i.de, 0, !dbg !7427
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !7430
  br i1 %i.dg, label %bb.y, label %bb.x, !dbg !7430

bb.x:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7434, !noalias !7417
  br label %.loopexit, !dbg !7435

bb.y:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !7437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !7438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7434, !noalias !7417
  %i.dh = load i64, ptr %i.w, align 8, !dbg !7439, !alias.scope !7442, !noundef !13
  %i.di = trunc i64 %i.dh to i32, !dbg !7445
  %i.dj = load <32 x i32>, ptr %i.m, align 4, !dbg !7447, !alias.scope !7448, !noalias !7451
  %i.dk = insertelement <32 x i32> poison, i32 %i.di, i64 0, !dbg !7453
  %i.dl = shufflevector <32 x i32> %i.dk, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !7453
  %i.dm = icmp uge <32 x i32> %i.dj, %i.dl, !dbg !7454
  %i.dn = bitcast <32 x i1> %i.dm to i32, !dbg !7454
  %i.do = icmp eq i32 %i.dn, 0, !dbg !7454
  br i1 %i.do, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !7455, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.y
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !7456
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !7457 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !7458
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.af, !dbg !7460

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.r, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !7461
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !7463
  %i.dp = load i64, ptr %i.j, align 8, !dbg !7461, !range !431, !noundef !13
  %i.dq = trunc nuw i64 %i.dp to i1, !dbg !7464
  br i1 %i.dq, label %bb.z, label %bb.ad, !dbg !7464

bb.z:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !7465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.aw, i64 128, i1 false), !dbg !7465
  %i.dr = load i64, ptr %i.ax, align 8, !dbg !7466, !noundef !13 ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 33
  br i1 %i.ds, label %bb.ab, label %bb.aa, !dbg !7467, !prof !576

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !7480
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.w, align 8, !dbg !7481, !alias.scope !7483, !noundef !13
  %i.du = trunc i64 %i.dt to i32, !dbg !7486      ; 2 uses
  %.idx = shl nuw nsw i64 %i.dr, 2, !dbg !7488    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !7488 ; 2 uses
  %i.dw = icmp eq i64 %i.dr, 0, !dbg !7493
  br i1 %i.dw, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph184.preheader, !dbg !7496

.lr.ph184.preheader:                              ; preds = %bb.ab
  %i.dx = add nsw i64 %.idx, -4, !dbg !7496       ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 2, !dbg !7496
  %i.dz = add nuw nsw i64 %i.dy, 1, !dbg !7496    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 28, !dbg !7496
  br i1 %min.iters.check, label %.lr.ph184.preheader286, label %vector.ph, !dbg !7496

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.dz, 9223372036854775800     ; 5 uses
  %i.ea = shl i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %i.i, i64 %i.ea
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !7497, !alias.scope !7498, !noalias !7501
  %wide.load266 = load <4 x i32>, ptr %i.ba, align 16, !dbg !7497, !alias.scope !7498, !noalias !7501
  %i.ec = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !7503 ; 2 uses
  %i.ed = icmp ult <4 x i32> %wide.load266, %broadcast.splat, !dbg !7503 ; 2 uses
  %i.ee = icmp eq i64 %n.vec, 8, !dbg !7496
  br i1 %i.ee, label %middle.block, label %vector.body.1, !dbg !7496

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !7497, !alias.scope !7498, !noalias !7501
  %wide.load266.1 = load <4 x i32>, ptr %i.bb, align 16, !dbg !7497, !alias.scope !7498, !noalias !7501
  %i.ef = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !7503
  %i.eg = icmp ult <4 x i32> %wide.load266.1, %broadcast.splat, !dbg !7503
  %i.eh = and <4 x i1> %i.ec, %i.ef, !dbg !7504   ; 2 uses
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !7504   ; 2 uses
  %i.ej = icmp eq i64 %n.vec, 16, !dbg !7496
  br i1 %i.ej, label %middle.block, label %vector.body.2, !dbg !7496

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !7497, !alias.scope !7498, !noalias !7501
  %wide.load266.2 = load <4 x i32>, ptr %i.bc, align 16, !dbg !7497, !alias.scope !7498, !noalias !7501
  %i.ek = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !7503
  %i.el = icmp ult <4 x i32> %wide.load266.2, %broadcast.splat, !dbg !7503
  %i.em = and <4 x i1> %i.eh, %i.ek, !dbg !7504   ; 2 uses
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !7504   ; 2 uses
  %i.eo = icmp eq i64 %n.vec, 24, !dbg !7496
  br i1 %i.eo, label %middle.block, label %vector.body.3, !dbg !7496

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !7497, !alias.scope !7498, !noalias !7501
  %wide.load266.3 = load <4 x i32>, ptr %i.bd, align 16, !dbg !7497, !alias.scope !7498, !noalias !7501
  %i.ep = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !7503
  %i.eq = icmp ult <4 x i32> %wide.load266.3, %broadcast.splat, !dbg !7503
  %i.er = and <4 x i1> %i.em, %i.ep, !dbg !7504
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !7504
  br label %middle.block, !dbg !7496

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa305 = phi <4 x i1> [ %i.ec, %vector.ph ], [ %i.eh, %vector.body.1 ], [ %i.em, %vector.body.2 ], [ %i.er, %vector.body.3 ], !dbg !7504
  %.lcssa304 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !7504
  %bin.rdx = and <4 x i1> %.lcssa304, %.lcssa305, !dbg !7496
  %i.et = bitcast <4 x i1> %bin.rdx to i4, !dbg !7496
  %i.eu = icmp eq i4 %i.et, -1, !dbg !7496        ; 2 uses
  %cmp.n = icmp eq i64 %i.dz, %n.vec, !dbg !7496
  br i1 %cmp.n, label %._crit_edge185, label %.lr.ph184.preheader286, !dbg !7496

.lr.ph184.preheader286:                           ; preds = %.lr.ph184.preheader, %middle.block
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1hEBc_:bb.a
bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7593, !noalias !7575
  br label %bb.i, !dbg !7594

bb.h:                                             ; preds = %bb.c
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !7595
  br label %bb.ai, !dbg !7566

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa163 = phi i64 [ %i.ac, %.preheader ], [ %i.ak, %bb.f ], !dbg !7585
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7596
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7596
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !7596, !noalias !7575
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7597
  %i.al = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !7596, !noalias !7575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7589, !noalias !7575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7593, !noalias !7575
  store i64 %.lcssa163, ptr %0, align 8, !dbg !7597
  store <2 x i64> %i.al, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !7597
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7597
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !7597
  br label %bb.ai, !dbg !7566

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1167, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !7604
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7606
  %i.am = load i64, ptr %i.u, align 8, !dbg !7607, !range !243, !noundef !13 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2, !dbg !7607
  br i1 %i.an, label %.outer._crit_edge, label %.lr.ph168.lr.ph, !dbg !7609

.lr.ph168.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph168, !dbg !7609

.lr.ph168:                                        ; preds = %.lr.ph168.lr.ph, %.outer
  %i.bd = phi i64 [ %i.am, %.lr.ph168.lr.ph ], [ %i.bq, %.outer ]
  %.sroa.0.0.ph186 = phi i64 [ %.sroa.0.2.ph, %.lr.ph168.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !7609

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !7610
  %.sroa.035.0.copyload = load ptr, ptr %i.be, align 8, !dbg !7610
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !7610
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !7610
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !7610
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !7610
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !7610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !7610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !7611
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !7612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !7611
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !7612
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7612
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !7612
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7612
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !7612
  br label %bb.ai, !dbg !7618

bb.j:                                             ; preds = %.lr.ph168, %bb.o
  %i.bf = phi i64 [ %i.bd, %.lr.ph168 ], [ %i.bi, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !7620 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7620 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !7620 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !7620
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !7620 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !7611
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !7621
  br i1 %i.bg, label %bb.k, label %bb.l, !dbg !7621

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !7622
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !7623

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !7624
  br label %bb.ai, !dbg !7625

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !7626
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !7626
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !7626
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !7626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !7626
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !7626
  %.not54 = icmp eq i64 %.sroa.0.0.ph186, 0, !dbg !7627
  br i1 %.not54, label %bb.t, label %bb.s, !dbg !7627

bb.n:                                             ; preds = %bb.k
  %i.bh = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !7629
  br i1 %i.bh, label %bb.o, label %bb.p, !dbg !7629

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !7604
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7606
  %i.bi = load i64, ptr %i.u, align 8, !dbg !7607, !range !243, !noundef !13 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 2, !dbg !7607
  br i1 %i.bj, label %.outer._crit_edge, label %bb.j, !dbg !7609

bb.p:                                             ; preds = %bb.n
  %i.bk = call i16 @_RNvYhNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getBd_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.v, i32 noundef %.sroa.728.0.copyload), !dbg !7631 ; 2 uses
  %i.bl = trunc i16 %i.bk to i1, !dbg !7632
  br i1 %i.bl, label %bb.q, label %bb.r, !dbg !7633, !prof !3295

bb.q:                                             ; preds = %bb.p
  %.sroa.447.0.extract.shift = lshr i16 %i.bk, 8, !dbg !7632
  %.sroa.447.0.extract.trunc = trunc nuw i16 %.sroa.447.0.extract.shift to i8, !dbg !7632
  %i.bm = load i64, ptr %i.x, align 8, !dbg !7634, !noundef !13 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, -1, !dbg !7637
  call void @llvm.assume(i1 %i.bn), !dbg !7639
  %i.bo = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph186, !dbg !7640
  %i.bp = add i64 %i.bo, %i.bm, !dbg !7640
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bp, i8 noundef %.sroa.447.0.extract.trunc), !dbg !7641
  br label %.outer, !dbg !7641

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !7642
  br label %bb.ai, !dbg !7618

.outer:                                           ; preds = %bb.q, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !7604
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7606
  %i.bq = load i64, ptr %i.u, align 8, !dbg !7607, !range !243, !noundef !13 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 2, !dbg !7607
  br i1 %i.br, label %.outer._crit_edge, label %.lr.ph168, !dbg !7609

bb.s:                                             ; preds = %bb.m
  %i.bs = lshr i64 %.sroa.0.0.ph186, 5, !dbg !7643
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bs), !dbg !7644
  %i.bt = and i64 %.sroa.0.0.ph186, 31, !dbg !7645 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !7646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !7646
  store ptr %i.t, ptr %i.r, align 8, !dbg !7646
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !7648
  %i.bu = load i64, ptr %i.s, align 8, !dbg !7646, !range !431, !noundef !13
  %i.bv = trunc nuw i64 %i.bu to i1, !dbg !7649
  br i1 %i.bv, label %bb.u, label %thread-pre-split, !dbg !7649

thread-pre-split:                                 ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !7650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !7650
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !7651, !noalias !7659
  br label %bb.t, !dbg !7663

bb.t:                                             ; preds = %thread-pre-split, %bb.m
  %i.bw = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !7651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !7663
  store ptr %i.t, ptr %i.n, align 8, !dbg !7664
  %i.bx = icmp ult i64 %i.bw, 32, !dbg !7665
  br i1 %i.bx, label %.loopexit, label %.lr.ph179, !dbg !7665

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !7666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ao, i64 128, i1 false), !dbg !7666
  %i.by = load i64, ptr %i.ap, align 8, !dbg !7667, !noundef !13 ; 6 uses
  %i.bz = icmp uge i64 %i.by, %i.bt, !dbg !7668
  %i.ca = icmp ult i64 %i.by, 33
  %or.cond = and i1 %i.bz, %i.ca, !dbg !7668
  br i1 %or.cond, label %bb.w, label %bb.v, !dbg !7668, !prof !576

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %i.by, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !7677
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bt, !dbg !7678 ; 4 uses
  %i.cc = load i8, ptr %i.v, align 1, !dbg !7682, !alias.scope !7687, !noundef !13
  %i.cd = zext i8 %i.cc to i32, !dbg !7690        ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by, !dbg !7692 ; 2 uses
  %i.cf = icmp samesign eq i64 %i.bt, %i.by, !dbg !7697
  br i1 %i.cf, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph173.preheader, !dbg !7700

.lr.ph173.preheader:                              ; preds = %bb.w
  %i.cg = shl nuw nsw i64 %i.by, 2, !dbg !7700
  %5 = add nsw i64 %i.cg, -4, !dbg !7700
  %6 = shl nuw nsw i64 %i.bt, 2, !dbg !7700
  %i.ch = sub nsw i64 %5, %6, !dbg !7700          ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 2, !dbg !7700
  %i.cj = add nuw nsw i64 %i.ci, 1, !dbg !7700    ; 2 uses
  %min.iters.check266 = icmp ult i64 %i.ch, 28, !dbg !7700
  br i1 %min.iters.check266, label %.lr.ph173.preheader285, label %vector.ph267, !dbg !7700

vector.ph267:                                     ; preds = %.lr.ph173.preheader
  %n.vec268 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec268, 2
  %i.cl = getelementptr i8, ptr %i.cb, i64 %i.ck
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body271, !dbg !7700

vector.body271:                                   ; preds = %vector.body271, %vector.ph267
  %index272 = phi i64 [ 0, %vector.ph267 ], [ %index.next278, %vector.body271 ] ; 2 uses
  %vec.phi273 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cq, %vector.body271 ]
  %vec.phi274 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cr, %vector.body271 ]
  %i.cm = shl i64 %index272, 2
  %next.gep275 = getelementptr i8, ptr %i.cb, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep275, i64 16, !dbg !7701
  %wide.load276 = load <4 x i32>, ptr %next.gep275, align 4, !dbg !7701, !alias.scope !7702, !noalias !7705
  %wide.load277 = load <4 x i32>, ptr %i.cn, align 4, !dbg !7701, !alias.scope !7702, !noalias !7705
  %i.co = icmp ult <4 x i32> %wide.load276, %broadcast.splat270, !dbg !7707
  %i.cp = icmp ult <4 x i32> %wide.load277, %broadcast.splat270, !dbg !7707
  %i.cq = and <4 x i1> %vec.phi273, %i.co, !dbg !7708 ; 2 uses
  %i.cr = and <4 x i1> %vec.phi274, %i.cp, !dbg !7708 ; 2 uses
  %index.next278 = add nuw i64 %index272, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next278, %n.vec268, !dbg !7700
  br i1 %i.cs, label %middle.block279, label %vector.body271, !dbg !7700, !llvm.loop !7709

middle.block279:                                  ; preds = %vector.body271
  %bin.rdx280 = and <4 x i1> %i.cr, %i.cq, !dbg !7700
  %i.ct = bitcast <4 x i1> %bin.rdx280 to i4, !dbg !7700
  %i.cu = icmp eq i4 %i.ct, -1, !dbg !7700        ; 2 uses
  %cmp.n281 = icmp eq i64 %i.cj, %n.vec268, !dbg !7700
  br i1 %cmp.n281, label %._crit_edge174, label %.lr.ph173.preheader285, !dbg !7700

.lr.ph173.preheader285:                           ; preds = %.lr.ph173.preheader, %middle.block279
  %.sroa.0.0.i171.ph = phi i1 [ true, %.lr.ph173.preheader ], [ %i.cu, %middle.block279 ]
  %.sroa.02.0.i170.ph = phi ptr [ %i.cb, %.lr.ph173.preheader ], [ %i.cl, %middle.block279 ]
  br label %.lr.ph173, !dbg !7700

.lr.ph173:                                        ; preds = %.lr.ph173.preheader285, %.lr.ph173
  %.sroa.0.0.i171 = phi i1 [ %i.cy, %.lr.ph173 ], [ %.sroa.0.0.i171.ph, %.lr.ph173.preheader285 ]
  %.sroa.02.0.i170 = phi ptr [ %i.cv, %.lr.ph173 ], [ %.sroa.02.0.i170.ph, %.lr.ph173.preheader285 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i170, i64 4, !dbg !7710 ; 2 uses
  %i.cw = load i32, ptr %.sroa.02.0.i170, align 4, !dbg !7701, !alias.scope !7702, !noalias !7705, !noundef !13
  %i.cx = icmp ult i32 %i.cw, %i.cd, !dbg !7707
  %i.cy = and i1 %.sroa.0.0.i171, %i.cx, !dbg !7708 ; 2 uses
  %i.cz = icmp eq ptr %i.cv, %i.ce, !dbg !7697
  br i1 %i.cz, label %._crit_edge174, label %.lr.ph173, !dbg !7700, !llvm.loop !7712

._crit_edge174:                                   ; preds = %.lr.ph173, %middle.block279
  %.lcssa = phi i1 [ %i.cu, %middle.block279 ], [ %i.cy, %.lr.ph173 ], !dbg !7708
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !7713, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge174
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !7714
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !7715 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !7716
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.x, !dbg !7719

bb.x:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !7726
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !7720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !7650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !7650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !7650
  br label %bb.y, !dbg !7727

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge174, %bb.w, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cb, ptr %i.o, align 8, !dbg !7729
  store ptr %i.ce, ptr %i.aq, align 8, !dbg !7729
  store ptr %i.v, ptr %i.ar, align 8, !dbg !7729
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_hE0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !7734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !7650
  br label %thread-pre-split, !dbg !7737

bb.y:                                             ; preds = %bb.ag, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !7738
  br label %bb.ai, !dbg !7618

.lr.ph179:                                        ; preds = %bb.t, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7739, !noalias !7740
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !7742, !alias.scope !7744, !noalias !7740
  %i.da = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !7747, !noalias !7748
  %i.db = extractvalue { i64, i64 } %i.da, 0, !dbg !7747
  %i.dc = trunc nuw i64 %i.db to i1, !dbg !7749
  br i1 %i.dc, label %bb.aa, label %bb.z, !dbg !7749

bb.z:                                             ; preds = %.lr.ph179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7751, !noalias !7740
  br label %.loopexit, !dbg !7752

bb.aa:                                            ; preds = %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !7753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !7754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7751, !noalias !7740
  %i.dd = load i8, ptr %i.v, align 1, !dbg !7755, !alias.scope !7758, !noundef !13
  %i.de = load <32 x i32>, ptr %i.m, align 4, !dbg !7761, !alias.scope !7763, !noalias !7766
  %i.df = zext i8 %i.dd to i16, !dbg !7768
  %i.dg = insertelement <32 x i16> poison, i16 %i.df, i64 0, !dbg !7768
  %i.dh = shufflevector <32 x i16> %i.dg, <32 x i16> poison, <32 x i32> zeroinitializer, !dbg !7768
  %i.di = zext nneg <32 x i16> %i.dh to <32 x i32>, !dbg !7768
  %i.dj = icmp uge <32 x i32> %i.de, %i.di, !dbg !7769
  %i.dk = bitcast <32 x i1> %i.dj to i32, !dbg !7769
  %i.dl = icmp eq i32 %i.dk, 0, !dbg !7769
  br i1 %i.dl, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !7770, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.aa
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !7771
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !7772 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !7773
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.ah, !dbg !7775

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.t, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !7776
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !7778
  %i.dm = load i64, ptr %i.j, align 8, !dbg !7776, !range !431, !noundef !13
  %i.dn = trunc nuw i64 %i.dm to i1, !dbg !7779
  br i1 %i.dn, label %bb.ab, label %bb.af, !dbg !7779

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !7780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.av, i64 128, i1 false), !dbg !7780
  %i.do = load i64, ptr %i.aw, align 8, !dbg !7781, !noundef !13 ; 4 uses
  %i.dp = icmp ult i64 %i.do, 33
  br i1 %i.dp, label %bb.ad, label %bb.ac, !dbg !7782, !prof !576

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.do, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !7794
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dq = load i8, ptr %i.v, align 1, !dbg !7795, !alias.scope !7797, !noundef !13
  %i.dr = zext i8 %i.dq to i32, !dbg !7800        ; 2 uses
  %.idx = shl nuw nsw i64 %i.do, 2, !dbg !7802    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !7802 ; 2 uses
  %i.dt = icmp eq i64 %i.do, 0, !dbg !7807
  br i1 %i.dt, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph183.preheader, !dbg !7810

.lr.ph183.preheader:                              ; preds = %bb.ad
  %i.du = add nsw i64 %.idx, -4, !dbg !7810       ; 2 uses
  %i.dv = lshr exact i64 %i.du, 2, !dbg !7810
  %i.dw = add nuw nsw i64 %i.dv, 1, !dbg !7810    ; 2 uses
  %min.iters.check = icmp ult i64 %i.du, 28, !dbg !7810
  br i1 %min.iters.check, label %.lr.ph183.preheader284, label %vector.ph, !dbg !7810

vector.ph:                                        ; preds = %.lr.ph183.preheader
  %n.vec = and i64 %i.dw, 9223372036854775800     ; 5 uses
  %i.dx = shl i64 %n.vec, 2
  %i.dy = getelementptr i8, ptr %i.i, i64 %i.dx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !7811, !alias.scope !7812, !noalias !7815
  %wide.load264 = load <4 x i32>, ptr %i.az, align 16, !dbg !7811, !alias.scope !7812, !noalias !7815
  %i.dz = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !7817 ; 2 uses
  %i.ea = icmp ult <4 x i32> %wide.load264, %broadcast.splat, !dbg !7817 ; 2 uses
  %i.eb = icmp eq i64 %n.vec, 8, !dbg !7810
  br i1 %i.eb, label %middle.block, label %vector.body.1, !dbg !7810

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !7811, !alias.scope !7812, !noalias !7815
  %wide.load264.1 = load <4 x i32>, ptr %i.ba, align 16, !dbg !7811, !alias.scope !7812, !noalias !7815
  %i.ec = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !7817
  %i.ed = icmp ult <4 x i32> %wide.load264.1, %broadcast.splat, !dbg !7817
  %i.ee = and <4 x i1> %i.dz, %i.ec, !dbg !7818   ; 2 uses
  %i.ef = and <4 x i1> %i.ea, %i.ed, !dbg !7818   ; 2 uses
  %i.eg = icmp eq i64 %n.vec, 16, !dbg !7810
  br i1 %i.eg, label %middle.block, label %vector.body.2, !dbg !7810

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !7811, !alias.scope !7812, !noalias !7815
  %wide.load264.2 = load <4 x i32>, ptr %i.bb, align 16, !dbg !7811, !alias.scope !7812, !noalias !7815
  %i.eh = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !7817
  %i.ei = icmp ult <4 x i32> %wide.load264.2, %broadcast.splat, !dbg !7817
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !7818   ; 2 uses
  %i.ek = and <4 x i1> %i.ef, %i.ei, !dbg !7818   ; 2 uses
  %i.el = icmp eq i64 %n.vec, 24, !dbg !7810
  br i1 %i.el, label %middle.block, label %vector.body.3, !dbg !7810

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !7811, !alias.scope !7812, !noalias !7815
  %wide.load264.3 = load <4 x i32>, ptr %i.bc, align 16, !dbg !7811, !alias.scope !7812, !noalias !7815
  %i.em = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !7817
  %i.en = icmp ult <4 x i32> %wide.load264.3, %broadcast.splat, !dbg !7817
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !7818
  %i.ep = and <4 x i1> %i.ek, %i.en, !dbg !7818
  br label %middle.block, !dbg !7810

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa303 = phi <4 x i1> [ %i.dz, %vector.ph ], [ %i.ee, %vector.body.1 ], [ %i.ej, %vector.body.2 ], [ %i.eo, %vector.body.3 ], !dbg !7818
  %.lcssa302 = phi <4 x i1> [ %i.ea, %vector.ph ], [ %i.ef, %vector.body.1 ], [ %i.ek, %vector.body.2 ], [ %i.ep, %vector.body.3 ], !dbg !7818
  %bin.rdx = and <4 x i1> %.lcssa302, %.lcssa303, !dbg !7810
  %i.eq = bitcast <4 x i1> %bin.rdx to i4, !dbg !7810
  %i.er = icmp eq i4 %i.eq, -1, !dbg !7810        ; 2 uses
  %cmp.n = icmp eq i64 %i.dw, %n.vec, !dbg !7810
  br i1 %cmp.n, label %._crit_edge184, label %.lr.ph183.preheader284, !dbg !7810

end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2RSB1E_EBc_:bb.a
bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !7910
  br label %bb.ag, !dbg !7880

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa164 = phi i64 [ %i.ad, %.preheader ], [ %i.al, %bb.f ], !dbg !7900
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7911
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7911
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !7911, !noalias !7890
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7912
  %i.am = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !7911, !noalias !7890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7904, !noalias !7890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7908, !noalias !7890
  store i64 %.lcssa164, ptr %0, align 8, !dbg !7912
  store <2 x i64> %i.am, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !7912
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7912
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !7912
  br label %bb.ag, !dbg !7880

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1168, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !7919
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7921
  %i.an = load i64, ptr %i.u, align 8, !dbg !7922, !range !243, !noundef !13 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2, !dbg !7922
  br i1 %i.ao, label %.outer._crit_edge, label %.lr.ph169.lr.ph, !dbg !7924

.lr.ph169.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph169, !dbg !7924

.lr.ph169:                                        ; preds = %.lr.ph169.lr.ph, %.outer
  %i.be = phi i64 [ %i.an, %.lr.ph169.lr.ph ], [ %i.bu, %.outer ]
  %.sroa.0.0.ph187 = phi i64 [ %.sroa.0.2.ph, %.lr.ph169.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !7924

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !7925
  %.sroa.035.0.copyload = load ptr, ptr %i.bf, align 8, !dbg !7925
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !7925
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !7925
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !7925
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !7925
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !7925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !7925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !7926
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !7927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !7926
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !7927
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7927
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !7927
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7927
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !7927
  br label %bb.ag, !dbg !7933

bb.j:                                             ; preds = %.lr.ph169, %bb.o
  %i.bg = phi i64 [ %i.be, %.lr.ph169 ], [ %i.bj, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !7935 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7935 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !7935 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !7935
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !7935 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !7926
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !7936
  br i1 %i.bh, label %bb.k, label %bb.l, !dbg !7936

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !7937
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !7938

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !7939
  br label %bb.ag, !dbg !7940

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !7941
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !7941
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !7941
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !7941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !7941
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !7941
  %.not54 = icmp eq i64 %.sroa.0.0.ph187, 0, !dbg !7942
  br i1 %.not54, label %bb.r, label %bb.q, !dbg !7942

bb.n:                                             ; preds = %bb.k
  %i.bi = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !7944
  br i1 %i.bi, label %bb.o, label %bb.p, !dbg !7944

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !7919
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7921
  %i.bj = load i64, ptr %i.u, align 8, !dbg !7922, !range !243, !noundef !13 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 2, !dbg !7922
  br i1 %i.bk, label %.outer._crit_edge, label %bb.j, !dbg !7924

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !7946), !dbg !7949
  %i.bl = zext i32 %.sroa.728.0.copyload to i64, !dbg !7950 ; 2 uses
  %i.bm = load i64, ptr %i.w, align 8, !dbg !7952, !alias.scope !7954, !noundef !13
  %i.bn = icmp ugt i64 %i.bm, %i.bl, !dbg !7957
  br i1 %i.bn, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread, !dbg !7958

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit: ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !7960), !dbg !7963
  %i.bo = load ptr, ptr %i.v, align 8, !dbg !7965, !alias.scope !7967, !nonnull !13, !align !4028, !noundef !13
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bl, !dbg !7968
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.bp, align 2, !dbg !7971, !noalias !7967
  %i.bq = load i64, ptr %i.y, align 8, !dbg !7972, !noundef !13 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 4611686018427387904, !dbg !7975
  call void @llvm.assume(i1 %i.br), !dbg !7977
  %i.bs = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph187, !dbg !7978
  %i.bt = add i64 %i.bs, %i.bq, !dbg !7978
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bt, i16 noundef %.sroa.0.0.copyload.i.i), !dbg !7979
  br label %.outer, !dbg !7979

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !7980
  br label %bb.ag, !dbg !7933

.outer:                                           ; preds = %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !7919
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !7921
  %i.bu = load i64, ptr %i.u, align 8, !dbg !7922, !range !243, !noundef !13 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 2, !dbg !7922
  br i1 %i.bv, label %.outer._crit_edge, label %.lr.ph169, !dbg !7924

bb.q:                                             ; preds = %bb.m
  %i.bw = lshr i64 %.sroa.0.0.ph187, 5, !dbg !7981
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bw), !dbg !7982
  %i.bx = and i64 %.sroa.0.0.ph187, 31, !dbg !7983 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !7984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !7984
  store ptr %i.t, ptr %i.r, align 8, !dbg !7984
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !7986
  %i.by = load i64, ptr %i.s, align 8, !dbg !7984, !range !431, !noundef !13
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !7987
  br i1 %i.bz, label %bb.s, label %thread-pre-split, !dbg !7987

thread-pre-split:                                 ; preds = %bb.q, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !7988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !7988
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !7989, !noalias !7997
  br label %bb.r, !dbg !8001

bb.r:                                             ; preds = %thread-pre-split, %bb.m
  %i.ca = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !7989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !8001
  store ptr %i.t, ptr %i.n, align 8, !dbg !8002
  %i.cb = icmp ult i64 %i.ca, 32, !dbg !8003
  br i1 %i.cb, label %.loopexit, label %.lr.ph180, !dbg !8003

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !8004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i64 128, i1 false), !dbg !8004
  %i.cc = load i64, ptr %i.aq, align 8, !dbg !8005, !noundef !13 ; 6 uses
  %i.cd = icmp uge i64 %i.cc, %i.bx, !dbg !8006
  %i.ce = icmp ult i64 %i.cc, 33
  %or.cond = and i1 %i.cd, %i.ce, !dbg !8006
  br i1 %or.cond, label %bb.u, label %bb.t, !dbg !8006, !prof !576

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bx, i64 noundef %i.cc, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !8015
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bx, !dbg !8016 ; 4 uses
  %i.cg = load i64, ptr %i.w, align 8, !dbg !8020, !alias.scope !8023, !noundef !13
  %i.ch = trunc i64 %i.cg to i32, !dbg !8026      ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cc, !dbg !8028 ; 2 uses
  %i.cj = icmp samesign eq i64 %i.bx, %i.cc, !dbg !8033
  br i1 %i.cj, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph174.preheader, !dbg !8036

.lr.ph174.preheader:                              ; preds = %bb.u
  %i.ck = shl nuw nsw i64 %i.cc, 2, !dbg !8036
  %6 = add nsw i64 %i.ck, -4, !dbg !8036
  %7 = shl nuw nsw i64 %i.bx, 2, !dbg !8036
  %i.cl = sub nsw i64 %6, %7, !dbg !8036          ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 2, !dbg !8036
  %i.cn = add nuw nsw i64 %i.cm, 1, !dbg !8036    ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.cl, 28, !dbg !8036
  br i1 %min.iters.check268, label %.lr.ph174.preheader287, label %vector.ph269, !dbg !8036

vector.ph269:                                     ; preds = %.lr.ph174.preheader
  %n.vec270 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec270, 2
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.co
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273, !dbg !8036

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next280, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cu, %vector.body273 ]
  %vec.phi276 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cv, %vector.body273 ]
  %i.cq = shl i64 %index274, 2
  %next.gep277 = getelementptr i8, ptr %i.cf, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep277, i64 16, !dbg !8037
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !dbg !8037, !alias.scope !8038, !noalias !8041
  %wide.load279 = load <4 x i32>, ptr %i.cr, align 4, !dbg !8037, !alias.scope !8038, !noalias !8041
  %i.cs = icmp ult <4 x i32> %wide.load278, %broadcast.splat272, !dbg !8043
  %i.ct = icmp ult <4 x i32> %wide.load279, %broadcast.splat272, !dbg !8043
  %i.cu = and <4 x i1> %vec.phi275, %i.cs, !dbg !8044 ; 2 uses
  %i.cv = and <4 x i1> %vec.phi276, %i.ct, !dbg !8044 ; 2 uses
  %index.next280 = add nuw i64 %index274, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next280, %n.vec270, !dbg !8036
  br i1 %i.cw, label %middle.block281, label %vector.body273, !dbg !8036, !llvm.loop !8045

middle.block281:                                  ; preds = %vector.body273
  %bin.rdx282 = and <4 x i1> %i.cv, %i.cu, !dbg !8036
  %i.cx = bitcast <4 x i1> %bin.rdx282 to i4, !dbg !8036
  %i.cy = icmp eq i4 %i.cx, -1, !dbg !8036        ; 2 uses
  %cmp.n283 = icmp eq i64 %i.cn, %n.vec270, !dbg !8036
  br i1 %cmp.n283, label %._crit_edge175, label %.lr.ph174.preheader287, !dbg !8036

.lr.ph174.preheader287:                           ; preds = %.lr.ph174.preheader, %middle.block281
  %.sroa.0.0.i172.ph = phi i1 [ true, %.lr.ph174.preheader ], [ %i.cy, %middle.block281 ]
  %.sroa.02.0.i171.ph = phi ptr [ %i.cf, %.lr.ph174.preheader ], [ %i.cp, %middle.block281 ]
  br label %.lr.ph174, !dbg !8036

.lr.ph174:                                        ; preds = %.lr.ph174.preheader287, %.lr.ph174
  %.sroa.0.0.i172 = phi i1 [ %i.dc, %.lr.ph174 ], [ %.sroa.0.0.i172.ph, %.lr.ph174.preheader287 ]
  %.sroa.02.0.i171 = phi ptr [ %i.cz, %.lr.ph174 ], [ %.sroa.02.0.i171.ph, %.lr.ph174.preheader287 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i171, i64 4, !dbg !8046 ; 2 uses
  %i.da = load i32, ptr %.sroa.02.0.i171, align 4, !dbg !8037, !alias.scope !8038, !noalias !8041, !noundef !13
  %i.db = icmp ult i32 %i.da, %i.ch, !dbg !8043
  %i.dc = and i1 %.sroa.0.0.i172, %i.db, !dbg !8044 ; 2 uses
  %i.dd = icmp eq ptr %i.cz, %i.ci, !dbg !8033
  br i1 %i.dd, label %._crit_edge175, label %.lr.ph174, !dbg !8036, !llvm.loop !8048

._crit_edge175:                                   ; preds = %.lr.ph174, %middle.block281
  %.lcssa = phi i1 [ %i.cy, %middle.block281 ], [ %i.dc, %.lr.ph174 ], !dbg !8044
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !8049, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge175
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !8050
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !8051 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !8052
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.v, !dbg !8055

bb.v:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !8062
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !8056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !7988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !7988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !7988
  br label %bb.w, !dbg !8063

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge175, %bb.u, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cf, ptr %i.o, align 8, !dbg !8065
  store ptr %i.ci, ptr %i.ar, align 8, !dbg !8065
  store ptr %i.v, ptr %i.as, align 8, !dbg !8065
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !8070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !7988
  br label %thread-pre-split, !dbg !8073

bb.w:                                             ; preds = %bb.ae, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !8074
  br label %bb.ag, !dbg !7933

.lr.ph180:                                        ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8075, !noalias !8076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !8078, !alias.scope !8080, !noalias !8076
  %i.de = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !8083, !noalias !8084
  %i.df = extractvalue { i64, i64 } %i.de, 0, !dbg !8083
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !8085
  br i1 %i.dg, label %bb.y, label %bb.x, !dbg !8085

bb.x:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8087, !noalias !8076
  br label %.loopexit, !dbg !8088

bb.y:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !8089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !8090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8087, !noalias !8076
  %i.dh = load i64, ptr %i.w, align 8, !dbg !8091, !alias.scope !8094, !noundef !13
  %i.di = trunc i64 %i.dh to i32, !dbg !8097
  %i.dj = load <32 x i32>, ptr %i.m, align 4, !dbg !8099, !alias.scope !8100, !noalias !8103
  %i.dk = insertelement <32 x i32> poison, i32 %i.di, i64 0, !dbg !8105
  %i.dl = shufflevector <32 x i32> %i.dk, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !8105
  %i.dm = icmp uge <32 x i32> %i.dj, %i.dl, !dbg !8106
  %i.dn = bitcast <32 x i1> %i.dm to i32, !dbg !8106
  %i.do = icmp eq i32 %i.dn, 0, !dbg !8106
  br i1 %i.do, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !8107, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.y
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !8108
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !8109 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !8110
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.af, !dbg !8112

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.r, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8113
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !8115
  %i.dp = load i64, ptr %i.j, align 8, !dbg !8113, !range !431, !noundef !13
  %i.dq = trunc nuw i64 %i.dp to i1, !dbg !8116
  br i1 %i.dq, label %bb.z, label %bb.ad, !dbg !8116

bb.z:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.aw, i64 128, i1 false), !dbg !8117
  %i.dr = load i64, ptr %i.ax, align 8, !dbg !8118, !noundef !13 ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 33
  br i1 %i.ds, label %bb.ab, label %bb.aa, !dbg !8119, !prof !576

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !8131
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.w, align 8, !dbg !8132, !alias.scope !8134, !noundef !13
  %i.du = trunc i64 %i.dt to i32, !dbg !8137      ; 2 uses
  %.idx = shl nuw nsw i64 %i.dr, 2, !dbg !8139    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !8139 ; 2 uses
  %i.dw = icmp eq i64 %i.dr, 0, !dbg !8144
  br i1 %i.dw, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph184.preheader, !dbg !8147

.lr.ph184.preheader:                              ; preds = %bb.ab
  %i.dx = add nsw i64 %.idx, -4, !dbg !8147       ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 2, !dbg !8147
  %i.dz = add nuw nsw i64 %i.dy, 1, !dbg !8147    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 28, !dbg !8147
  br i1 %min.iters.check, label %.lr.ph184.preheader286, label %vector.ph, !dbg !8147

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.dz, 9223372036854775800     ; 5 uses
  %i.ea = shl i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %i.i, i64 %i.ea
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !8148, !alias.scope !8149, !noalias !8152
  %wide.load266 = load <4 x i32>, ptr %i.ba, align 16, !dbg !8148, !alias.scope !8149, !noalias !8152
  %i.ec = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !8154 ; 2 uses
  %i.ed = icmp ult <4 x i32> %wide.load266, %broadcast.splat, !dbg !8154 ; 2 uses
  %i.ee = icmp eq i64 %n.vec, 8, !dbg !8147
  br i1 %i.ee, label %middle.block, label %vector.body.1, !dbg !8147

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !8148, !alias.scope !8149, !noalias !8152
  %wide.load266.1 = load <4 x i32>, ptr %i.bb, align 16, !dbg !8148, !alias.scope !8149, !noalias !8152
  %i.ef = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !8154
  %i.eg = icmp ult <4 x i32> %wide.load266.1, %broadcast.splat, !dbg !8154
  %i.eh = and <4 x i1> %i.ec, %i.ef, !dbg !8155   ; 2 uses
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !8155   ; 2 uses
  %i.ej = icmp eq i64 %n.vec, 16, !dbg !8147
  br i1 %i.ej, label %middle.block, label %vector.body.2, !dbg !8147

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !8148, !alias.scope !8149, !noalias !8152
  %wide.load266.2 = load <4 x i32>, ptr %i.bc, align 16, !dbg !8148, !alias.scope !8149, !noalias !8152
  %i.ek = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !8154
  %i.el = icmp ult <4 x i32> %wide.load266.2, %broadcast.splat, !dbg !8154
  %i.em = and <4 x i1> %i.eh, %i.ek, !dbg !8155   ; 2 uses
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !8155   ; 2 uses
  %i.eo = icmp eq i64 %n.vec, 24, !dbg !8147
  br i1 %i.eo, label %middle.block, label %vector.body.3, !dbg !8147

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !8148, !alias.scope !8149, !noalias !8152
  %wide.load266.3 = load <4 x i32>, ptr %i.bd, align 16, !dbg !8148, !alias.scope !8149, !noalias !8152
  %i.ep = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !8154
  %i.eq = icmp ult <4 x i32> %wide.load266.3, %broadcast.splat, !dbg !8154
  %i.er = and <4 x i1> %i.em, %i.ep, !dbg !8155
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !8155
  br label %middle.block, !dbg !8147

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa305 = phi <4 x i1> [ %i.ec, %vector.ph ], [ %i.eh, %vector.body.1 ], [ %i.em, %vector.body.2 ], [ %i.er, %vector.body.3 ], !dbg !8155
  %.lcssa304 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !8155
  %bin.rdx = and <4 x i1> %.lcssa304, %.lcssa305, !dbg !8147
  %i.et = bitcast <4 x i1> %bin.rdx to i4, !dbg !8147
  %i.eu = icmp eq i4 %i.et, -1, !dbg !8147        ; 2 uses
  %cmp.n = icmp eq i64 %i.dz, %n.vec, !dbg !8147
  br i1 %cmp.n, label %._crit_edge185, label %.lr.ph184.preheader286, !dbg !8147

.lr.ph184.preheader286:                           ; preds = %.lr.ph184.preheader, %middle.block
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2tEBc_:bb.a
bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8244, !noalias !8226
  br label %bb.i, !dbg !8245

bb.h:                                             ; preds = %bb.c
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8246
  br label %bb.ai, !dbg !8217

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa163 = phi i64 [ %i.ac, %.preheader ], [ %i.ak, %bb.f ], !dbg !8236
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8247
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8247
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !8247, !noalias !8226
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8248
  %i.al = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !8247, !noalias !8226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8240, !noalias !8226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8244, !noalias !8226
  store i64 %.lcssa163, ptr %0, align 8, !dbg !8248
  store <2 x i64> %i.al, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !8248
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8248
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !8248
  br label %bb.ai, !dbg !8217

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1167, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8255
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8257
  %i.am = load i64, ptr %i.u, align 8, !dbg !8258, !range !243, !noundef !13 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2, !dbg !8258
  br i1 %i.an, label %.outer._crit_edge, label %.lr.ph168.lr.ph, !dbg !8260

.lr.ph168.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph168, !dbg !8260

.lr.ph168:                                        ; preds = %.lr.ph168.lr.ph, %.outer
  %i.bd = phi i64 [ %i.am, %.lr.ph168.lr.ph ], [ %i.bq, %.outer ]
  %.sroa.0.0.ph186 = phi i64 [ %.sroa.0.2.ph, %.lr.ph168.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !8260

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !8261
  %.sroa.035.0.copyload = load ptr, ptr %i.be, align 8, !dbg !8261
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !8261
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !8261
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !8261
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !8261
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !8261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !8261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8262
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !8263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8262
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !8263
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8263
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !8263
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8263
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !8263
  br label %bb.ai, !dbg !8269

bb.j:                                             ; preds = %.lr.ph168, %bb.o
  %i.bf = phi i64 [ %i.bd, %.lr.ph168 ], [ %i.bi, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !8271 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8271 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !8271 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !8271
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !8271 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8262
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !8272
  br i1 %i.bg, label %bb.k, label %bb.l, !dbg !8272

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !8273
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !8274

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !8275
  br label %bb.ai, !dbg !8276

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !8277
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !8277
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !8277
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !8277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8277
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8277
  %.not54 = icmp eq i64 %.sroa.0.0.ph186, 0, !dbg !8278
  br i1 %.not54, label %bb.t, label %bb.s, !dbg !8278

bb.n:                                             ; preds = %bb.k
  %i.bh = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !8280
  br i1 %i.bh, label %bb.o, label %bb.p, !dbg !8280

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8255
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8257
  %i.bi = load i64, ptr %i.u, align 8, !dbg !8258, !range !243, !noundef !13 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 2, !dbg !8258
  br i1 %i.bj, label %.outer._crit_edge, label %bb.j, !dbg !8260

bb.p:                                             ; preds = %bb.n
  %i.bk = call i32 @_RNvYtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getBd_(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v, i32 noundef %.sroa.728.0.copyload), !dbg !8282 ; 2 uses
  %i.bl = trunc i32 %i.bk to i1, !dbg !8283
  br i1 %i.bl, label %bb.q, label %bb.r, !dbg !8283, !prof !3295

bb.q:                                             ; preds = %bb.p
  %.sroa.447.0.extract.shift = lshr i32 %i.bk, 16, !dbg !8284
  %.sroa.447.0.extract.trunc = trunc nuw i32 %.sroa.447.0.extract.shift to i16, !dbg !8284
  %i.bm = load i64, ptr %i.x, align 8, !dbg !8285, !noundef !13 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 4611686018427387904, !dbg !8288
  call void @llvm.assume(i1 %i.bn), !dbg !8290
  %i.bo = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph186, !dbg !8291
  %i.bp = add i64 %i.bo, %i.bm, !dbg !8291
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bp, i16 noundef %.sroa.447.0.extract.trunc), !dbg !8292
  br label %.outer, !dbg !8292

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8293
  br label %bb.ai, !dbg !8269

.outer:                                           ; preds = %bb.q, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8255
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8257
  %i.bq = load i64, ptr %i.u, align 8, !dbg !8258, !range !243, !noundef !13 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 2, !dbg !8258
  br i1 %i.br, label %.outer._crit_edge, label %.lr.ph168, !dbg !8260

bb.s:                                             ; preds = %bb.m
  %i.bs = lshr i64 %.sroa.0.0.ph186, 5, !dbg !8294
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bs), !dbg !8295
  %i.bt = and i64 %.sroa.0.0.ph186, 31, !dbg !8296 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !8297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !8297
  store ptr %i.t, ptr %i.r, align 8, !dbg !8297
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !8299
  %i.bu = load i64, ptr %i.s, align 8, !dbg !8297, !range !431, !noundef !13
  %i.bv = trunc nuw i64 %i.bu to i1, !dbg !8300
  br i1 %i.bv, label %bb.u, label %thread-pre-split, !dbg !8300

thread-pre-split:                                 ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8301
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8302, !noalias !8310
  br label %bb.t, !dbg !8314

bb.t:                                             ; preds = %thread-pre-split, %bb.m
  %i.bw = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !8302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !8314
  store ptr %i.t, ptr %i.n, align 8, !dbg !8315
  %i.bx = icmp ult i64 %i.bw, 32, !dbg !8316
  br i1 %i.bx, label %.loopexit, label %.lr.ph179, !dbg !8316

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !8317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ao, i64 128, i1 false), !dbg !8317
  %i.by = load i64, ptr %i.ap, align 8, !dbg !8318, !noundef !13 ; 6 uses
  %i.bz = icmp uge i64 %i.by, %i.bt, !dbg !8319
  %i.ca = icmp ult i64 %i.by, 33
  %or.cond = and i1 %i.bz, %i.ca, !dbg !8319
  br i1 %or.cond, label %bb.w, label %bb.v, !dbg !8319, !prof !576

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %i.by, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !8328
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bt, !dbg !8329 ; 4 uses
  %i.cc = load i16, ptr %i.v, align 2, !dbg !8333, !alias.scope !8338, !noundef !13
  %i.cd = zext i16 %i.cc to i32, !dbg !8341       ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by, !dbg !8343 ; 2 uses
  %i.cf = icmp samesign eq i64 %i.bt, %i.by, !dbg !8348
  br i1 %i.cf, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph173.preheader, !dbg !8351

.lr.ph173.preheader:                              ; preds = %bb.w
  %i.cg = shl nuw nsw i64 %i.by, 2, !dbg !8351
  %5 = add nsw i64 %i.cg, -4, !dbg !8351
  %6 = shl nuw nsw i64 %i.bt, 2, !dbg !8351
  %i.ch = sub nsw i64 %5, %6, !dbg !8351          ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 2, !dbg !8351
  %i.cj = add nuw nsw i64 %i.ci, 1, !dbg !8351    ; 2 uses
  %min.iters.check266 = icmp ult i64 %i.ch, 28, !dbg !8351
  br i1 %min.iters.check266, label %.lr.ph173.preheader285, label %vector.ph267, !dbg !8351

vector.ph267:                                     ; preds = %.lr.ph173.preheader
  %n.vec268 = and i64 %i.cj, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec268, 2
  %i.cl = getelementptr i8, ptr %i.cb, i64 %i.ck
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body271, !dbg !8351

vector.body271:                                   ; preds = %vector.body271, %vector.ph267
  %index272 = phi i64 [ 0, %vector.ph267 ], [ %index.next278, %vector.body271 ] ; 2 uses
  %vec.phi273 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cq, %vector.body271 ]
  %vec.phi274 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cr, %vector.body271 ]
  %i.cm = shl i64 %index272, 2
  %next.gep275 = getelementptr i8, ptr %i.cb, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep275, i64 16, !dbg !8352
  %wide.load276 = load <4 x i32>, ptr %next.gep275, align 4, !dbg !8352, !alias.scope !8353, !noalias !8356
  %wide.load277 = load <4 x i32>, ptr %i.cn, align 4, !dbg !8352, !alias.scope !8353, !noalias !8356
  %i.co = icmp ult <4 x i32> %wide.load276, %broadcast.splat270, !dbg !8358
  %i.cp = icmp ult <4 x i32> %wide.load277, %broadcast.splat270, !dbg !8358
  %i.cq = and <4 x i1> %vec.phi273, %i.co, !dbg !8359 ; 2 uses
  %i.cr = and <4 x i1> %vec.phi274, %i.cp, !dbg !8359 ; 2 uses
  %index.next278 = add nuw i64 %index272, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next278, %n.vec268, !dbg !8351
  br i1 %i.cs, label %middle.block279, label %vector.body271, !dbg !8351, !llvm.loop !8360

middle.block279:                                  ; preds = %vector.body271
  %bin.rdx280 = and <4 x i1> %i.cr, %i.cq, !dbg !8351
  %i.ct = bitcast <4 x i1> %bin.rdx280 to i4, !dbg !8351
  %i.cu = icmp eq i4 %i.ct, -1, !dbg !8351        ; 2 uses
  %cmp.n281 = icmp eq i64 %i.cj, %n.vec268, !dbg !8351
  br i1 %cmp.n281, label %._crit_edge174, label %.lr.ph173.preheader285, !dbg !8351

.lr.ph173.preheader285:                           ; preds = %.lr.ph173.preheader, %middle.block279
  %.sroa.0.0.i171.ph = phi i1 [ true, %.lr.ph173.preheader ], [ %i.cu, %middle.block279 ]
  %.sroa.02.0.i170.ph = phi ptr [ %i.cb, %.lr.ph173.preheader ], [ %i.cl, %middle.block279 ]
  br label %.lr.ph173, !dbg !8351

.lr.ph173:                                        ; preds = %.lr.ph173.preheader285, %.lr.ph173
  %.sroa.0.0.i171 = phi i1 [ %i.cy, %.lr.ph173 ], [ %.sroa.0.0.i171.ph, %.lr.ph173.preheader285 ]
  %.sroa.02.0.i170 = phi ptr [ %i.cv, %.lr.ph173 ], [ %.sroa.02.0.i170.ph, %.lr.ph173.preheader285 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i170, i64 4, !dbg !8361 ; 2 uses
  %i.cw = load i32, ptr %.sroa.02.0.i170, align 4, !dbg !8352, !alias.scope !8353, !noalias !8356, !noundef !13
  %i.cx = icmp ult i32 %i.cw, %i.cd, !dbg !8358
  %i.cy = and i1 %.sroa.0.0.i171, %i.cx, !dbg !8359 ; 2 uses
  %i.cz = icmp eq ptr %i.cv, %i.ce, !dbg !8348
  br i1 %i.cz, label %._crit_edge174, label %.lr.ph173, !dbg !8351, !llvm.loop !8363

._crit_edge174:                                   ; preds = %.lr.ph173, %middle.block279
  %.lcssa = phi i1 [ %i.cu, %middle.block279 ], [ %i.cy, %.lr.ph173 ], !dbg !8359
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !8364, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge174
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !8365
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !8366 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !8367
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.x, !dbg !8370

bb.x:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !8377
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !8371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8301
  br label %bb.y, !dbg !8378

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge174, %bb.w, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cb, ptr %i.o, align 8, !dbg !8380
  store ptr %i.ce, ptr %i.aq, align 8, !dbg !8380
  store ptr %i.v, ptr %i.ar, align 8, !dbg !8380
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_tE0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !8385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8301
  br label %thread-pre-split, !dbg !8388

bb.y:                                             ; preds = %bb.ag, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !8389
  br label %bb.ai, !dbg !8269

.lr.ph179:                                        ; preds = %bb.t, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8390, !noalias !8391
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !8393, !alias.scope !8395, !noalias !8391
  %i.da = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !8398, !noalias !8399
  %i.db = extractvalue { i64, i64 } %i.da, 0, !dbg !8398
  %i.dc = trunc nuw i64 %i.db to i1, !dbg !8400
  br i1 %i.dc, label %bb.aa, label %bb.z, !dbg !8400

bb.z:                                             ; preds = %.lr.ph179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8402, !noalias !8391
  br label %.loopexit, !dbg !8403

bb.aa:                                            ; preds = %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !8404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !8405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8402, !noalias !8391
  %i.dd = load i16, ptr %i.v, align 2, !dbg !8406, !alias.scope !8409, !noundef !13
  %i.de = zext i16 %i.dd to i32, !dbg !8412
  %i.df = load <32 x i32>, ptr %i.m, align 4, !dbg !8414, !alias.scope !8415, !noalias !8418
  %i.dg = insertelement <32 x i32> poison, i32 %i.de, i64 0, !dbg !8420
  %i.dh = shufflevector <32 x i32> %i.dg, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !8420
  %i.di = icmp uge <32 x i32> %i.df, %i.dh, !dbg !8421
  %i.dj = bitcast <32 x i1> %i.di to i32, !dbg !8421
  %i.dk = icmp eq i32 %i.dj, 0, !dbg !8421
  br i1 %i.dk, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !8422, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.aa
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !8423
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !8424 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !8425
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.ah, !dbg !8427

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.t, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8428
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !8430
  %i.dl = load i64, ptr %i.j, align 8, !dbg !8428, !range !431, !noundef !13
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !8431
  br i1 %i.dm, label %bb.ab, label %bb.af, !dbg !8431

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.av, i64 128, i1 false), !dbg !8432
  %i.dn = load i64, ptr %i.aw, align 8, !dbg !8433, !noundef !13 ; 4 uses
  %i.do = icmp ult i64 %i.dn, 33
  br i1 %i.do, label %bb.ad, label %bb.ac, !dbg !8434, !prof !576

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dn, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !8446
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dp = load i16, ptr %i.v, align 2, !dbg !8447, !alias.scope !8449, !noundef !13
  %i.dq = zext i16 %i.dp to i32, !dbg !8452       ; 2 uses
  %.idx = shl nuw nsw i64 %i.dn, 2, !dbg !8454    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !8454 ; 2 uses
  %i.ds = icmp eq i64 %i.dn, 0, !dbg !8459
  br i1 %i.ds, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph183.preheader, !dbg !8462

.lr.ph183.preheader:                              ; preds = %bb.ad
  %i.dt = add nsw i64 %.idx, -4, !dbg !8462       ; 2 uses
  %i.du = lshr exact i64 %i.dt, 2, !dbg !8462
  %i.dv = add nuw nsw i64 %i.du, 1, !dbg !8462    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dt, 28, !dbg !8462
  br i1 %min.iters.check, label %.lr.ph183.preheader284, label %vector.ph, !dbg !8462

vector.ph:                                        ; preds = %.lr.ph183.preheader
  %n.vec = and i64 %i.dv, 9223372036854775800     ; 5 uses
  %i.dw = shl i64 %n.vec, 2
  %i.dx = getelementptr i8, ptr %i.i, i64 %i.dw
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !8463, !alias.scope !8464, !noalias !8467
  %wide.load264 = load <4 x i32>, ptr %i.az, align 16, !dbg !8463, !alias.scope !8464, !noalias !8467
  %i.dy = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !8469 ; 2 uses
  %i.dz = icmp ult <4 x i32> %wide.load264, %broadcast.splat, !dbg !8469 ; 2 uses
  %i.ea = icmp eq i64 %n.vec, 8, !dbg !8462
  br i1 %i.ea, label %middle.block, label %vector.body.1, !dbg !8462

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !8463, !alias.scope !8464, !noalias !8467
  %wide.load264.1 = load <4 x i32>, ptr %i.ba, align 16, !dbg !8463, !alias.scope !8464, !noalias !8467
  %i.eb = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !8469
  %i.ec = icmp ult <4 x i32> %wide.load264.1, %broadcast.splat, !dbg !8469
  %i.ed = and <4 x i1> %i.dy, %i.eb, !dbg !8470   ; 2 uses
  %i.ee = and <4 x i1> %i.dz, %i.ec, !dbg !8470   ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 16, !dbg !8462
  br i1 %i.ef, label %middle.block, label %vector.body.2, !dbg !8462

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !8463, !alias.scope !8464, !noalias !8467
  %wide.load264.2 = load <4 x i32>, ptr %i.bb, align 16, !dbg !8463, !alias.scope !8464, !noalias !8467
  %i.eg = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !8469
  %i.eh = icmp ult <4 x i32> %wide.load264.2, %broadcast.splat, !dbg !8469
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !8470   ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !8470   ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 24, !dbg !8462
  br i1 %i.ek, label %middle.block, label %vector.body.3, !dbg !8462

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !8463, !alias.scope !8464, !noalias !8467
  %wide.load264.3 = load <4 x i32>, ptr %i.bc, align 16, !dbg !8463, !alias.scope !8464, !noalias !8467
  %i.el = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !8469
  %i.em = icmp ult <4 x i32> %wide.load264.3, %broadcast.splat, !dbg !8469
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !8470
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !8470
  br label %middle.block, !dbg !8462

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa303 = phi <4 x i1> [ %i.dy, %vector.ph ], [ %i.ed, %vector.body.1 ], [ %i.ei, %vector.body.2 ], [ %i.en, %vector.body.3 ], !dbg !8470
  %.lcssa302 = phi <4 x i1> [ %i.dz, %vector.ph ], [ %i.ee, %vector.body.1 ], [ %i.ej, %vector.body.2 ], [ %i.eo, %vector.body.3 ], !dbg !8470
  %bin.rdx = and <4 x i1> %.lcssa302, %.lcssa303, !dbg !8462
  %i.ep = bitcast <4 x i1> %bin.rdx to i4, !dbg !8462
  %i.eq = icmp eq i4 %i.ep, -1, !dbg !8462        ; 2 uses
  %cmp.n = icmp eq i64 %i.dv, %n.vec, !dbg !8462
  br i1 %cmp.n, label %._crit_edge184, label %.lr.ph183.preheader284, !dbg !8462

.lr.ph183.preheader284:                           ; preds = %.lr.ph183.preheader, %middle.block
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4RSB1E_EBc_:bb.a
bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8562
  br label %bb.ag, !dbg !8532

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa164 = phi i64 [ %i.ad, %.preheader ], [ %i.al, %bb.f ], !dbg !8552
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8563
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8563
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !8563, !noalias !8542
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8564
  %i.am = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !8563, !noalias !8542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8556, !noalias !8542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8560, !noalias !8542
  store i64 %.lcssa164, ptr %0, align 8, !dbg !8564
  store <2 x i64> %i.am, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !8564
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8564
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !8564
  br label %bb.ag, !dbg !8532

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1168, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8571
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8573
  %i.an = load i64, ptr %i.u, align 8, !dbg !8574, !range !243, !noundef !13 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2, !dbg !8574
  br i1 %i.ao, label %.outer._crit_edge, label %.lr.ph169.lr.ph, !dbg !8576

.lr.ph169.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph169, !dbg !8576

.lr.ph169:                                        ; preds = %.lr.ph169.lr.ph, %.outer
  %i.be = phi i64 [ %i.an, %.lr.ph169.lr.ph ], [ %i.bu, %.outer ]
  %.sroa.0.0.ph187 = phi i64 [ %.sroa.0.2.ph, %.lr.ph169.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !8576

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !8577
  %.sroa.035.0.copyload = load ptr, ptr %i.bf, align 8, !dbg !8577
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !8577
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !8577
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !8577
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !8577
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !8577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !8577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8578
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !8579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8578
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !8579
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8579
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !8579
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8579
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !8579
  br label %bb.ag, !dbg !8585

bb.j:                                             ; preds = %.lr.ph169, %bb.o
  %i.bg = phi i64 [ %i.be, %.lr.ph169 ], [ %i.bj, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !8587 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8587 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !8587 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !8587
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !8587 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8578
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !8588
  br i1 %i.bh, label %bb.k, label %bb.l, !dbg !8588

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !8589
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !8590

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !8591
  br label %bb.ag, !dbg !8592

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !8593
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !8593
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !8593
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !8593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8593
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8593
  %.not54 = icmp eq i64 %.sroa.0.0.ph187, 0, !dbg !8594
  br i1 %.not54, label %bb.r, label %bb.q, !dbg !8594

bb.n:                                             ; preds = %bb.k
  %i.bi = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !8596
  br i1 %i.bi, label %bb.o, label %bb.p, !dbg !8596

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8571
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8573
  %i.bj = load i64, ptr %i.u, align 8, !dbg !8574, !range !243, !noundef !13 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 2, !dbg !8574
  br i1 %i.bk, label %.outer._crit_edge, label %bb.j, !dbg !8576

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !8598), !dbg !8601
  %i.bl = zext i32 %.sroa.728.0.copyload to i64, !dbg !8602 ; 2 uses
  %i.bm = load i64, ptr %i.w, align 8, !dbg !8604, !alias.scope !8606, !noundef !13
  %i.bn = icmp ugt i64 %i.bm, %i.bl, !dbg !8609
  br i1 %i.bn, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread, !dbg !8610

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit: ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !8612), !dbg !8615
  %i.bo = load ptr, ptr %i.v, align 8, !dbg !8617, !alias.scope !8619, !nonnull !13, !align !4692, !noundef !13
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bl, !dbg !8620
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bp, align 4, !dbg !8623, !noalias !8619
  %i.bq = load i64, ptr %i.y, align 8, !dbg !8624, !noundef !13 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 2305843009213693952, !dbg !8627
  call void @llvm.assume(i1 %i.br), !dbg !8629
  %i.bs = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph187, !dbg !8630
  %i.bt = add i64 %i.bs, %i.bq, !dbg !8630
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bt, i32 noundef %.sroa.0.0.copyload.i.i), !dbg !8631
  br label %.outer, !dbg !8631

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit.thread: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8632
  br label %bb.ag, !dbg !8585

.outer:                                           ; preds = %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8571
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8573
  %i.bu = load i64, ptr %i.u, align 8, !dbg !8574, !range !243, !noundef !13 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 2, !dbg !8574
  br i1 %i.bv, label %.outer._crit_edge, label %.lr.ph169, !dbg !8576

bb.q:                                             ; preds = %bb.m
  %i.bw = lshr i64 %.sroa.0.0.ph187, 5, !dbg !8633
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bw), !dbg !8634
  %i.bx = and i64 %.sroa.0.0.ph187, 31, !dbg !8635 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !8636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !8636
  store ptr %i.t, ptr %i.r, align 8, !dbg !8636
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !8638
  %i.by = load i64, ptr %i.s, align 8, !dbg !8636, !range !431, !noundef !13
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !8639
  br i1 %i.bz, label %bb.s, label %thread-pre-split, !dbg !8639

thread-pre-split:                                 ; preds = %bb.q, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8640
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8641, !noalias !8649
  br label %bb.r, !dbg !8653

bb.r:                                             ; preds = %thread-pre-split, %bb.m
  %i.ca = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !8641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !8653
  store ptr %i.t, ptr %i.n, align 8, !dbg !8654
  %i.cb = icmp ult i64 %i.ca, 32, !dbg !8655
  br i1 %i.cb, label %.loopexit, label %.lr.ph180, !dbg !8655

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !8656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i64 128, i1 false), !dbg !8656
  %i.cc = load i64, ptr %i.aq, align 8, !dbg !8657, !noundef !13 ; 6 uses
  %i.cd = icmp uge i64 %i.cc, %i.bx, !dbg !8658
  %i.ce = icmp ult i64 %i.cc, 33
  %or.cond = and i1 %i.cd, %i.ce, !dbg !8658
  br i1 %or.cond, label %bb.u, label %bb.t, !dbg !8658, !prof !576

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bx, i64 noundef %i.cc, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !8667
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bx, !dbg !8668 ; 4 uses
  %i.cg = load i64, ptr %i.w, align 8, !dbg !8672, !alias.scope !8675, !noundef !13
  %i.ch = trunc i64 %i.cg to i32, !dbg !8678      ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cc, !dbg !8680 ; 2 uses
  %i.cj = icmp samesign eq i64 %i.bx, %i.cc, !dbg !8685
  br i1 %i.cj, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph174.preheader, !dbg !8688

.lr.ph174.preheader:                              ; preds = %bb.u
  %i.ck = shl nuw nsw i64 %i.cc, 2, !dbg !8688
  %6 = add nsw i64 %i.ck, -4, !dbg !8688
  %7 = shl nuw nsw i64 %i.bx, 2, !dbg !8688
  %i.cl = sub nsw i64 %6, %7, !dbg !8688          ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 2, !dbg !8688
  %i.cn = add nuw nsw i64 %i.cm, 1, !dbg !8688    ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.cl, 28, !dbg !8688
  br i1 %min.iters.check268, label %.lr.ph174.preheader287, label %vector.ph269, !dbg !8688

vector.ph269:                                     ; preds = %.lr.ph174.preheader
  %n.vec270 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec270, 2
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.co
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273, !dbg !8688

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next280, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cu, %vector.body273 ]
  %vec.phi276 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cv, %vector.body273 ]
  %i.cq = shl i64 %index274, 2
  %next.gep277 = getelementptr i8, ptr %i.cf, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep277, i64 16, !dbg !8689
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !dbg !8689, !alias.scope !8690, !noalias !8693
  %wide.load279 = load <4 x i32>, ptr %i.cr, align 4, !dbg !8689, !alias.scope !8690, !noalias !8693
  %i.cs = icmp ult <4 x i32> %wide.load278, %broadcast.splat272, !dbg !8695
  %i.ct = icmp ult <4 x i32> %wide.load279, %broadcast.splat272, !dbg !8695
  %i.cu = and <4 x i1> %vec.phi275, %i.cs, !dbg !8696 ; 2 uses
  %i.cv = and <4 x i1> %vec.phi276, %i.ct, !dbg !8696 ; 2 uses
  %index.next280 = add nuw i64 %index274, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next280, %n.vec270, !dbg !8688
  br i1 %i.cw, label %middle.block281, label %vector.body273, !dbg !8688, !llvm.loop !8697

middle.block281:                                  ; preds = %vector.body273
  %bin.rdx282 = and <4 x i1> %i.cv, %i.cu, !dbg !8688
  %i.cx = bitcast <4 x i1> %bin.rdx282 to i4, !dbg !8688
  %i.cy = icmp eq i4 %i.cx, -1, !dbg !8688        ; 2 uses
  %cmp.n283 = icmp eq i64 %i.cn, %n.vec270, !dbg !8688
  br i1 %cmp.n283, label %._crit_edge175, label %.lr.ph174.preheader287, !dbg !8688

.lr.ph174.preheader287:                           ; preds = %.lr.ph174.preheader, %middle.block281
  %.sroa.0.0.i172.ph = phi i1 [ true, %.lr.ph174.preheader ], [ %i.cy, %middle.block281 ]
  %.sroa.02.0.i171.ph = phi ptr [ %i.cf, %.lr.ph174.preheader ], [ %i.cp, %middle.block281 ]
  br label %.lr.ph174, !dbg !8688

.lr.ph174:                                        ; preds = %.lr.ph174.preheader287, %.lr.ph174
  %.sroa.0.0.i172 = phi i1 [ %i.dc, %.lr.ph174 ], [ %.sroa.0.0.i172.ph, %.lr.ph174.preheader287 ]
  %.sroa.02.0.i171 = phi ptr [ %i.cz, %.lr.ph174 ], [ %.sroa.02.0.i171.ph, %.lr.ph174.preheader287 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i171, i64 4, !dbg !8698 ; 2 uses
  %i.da = load i32, ptr %.sroa.02.0.i171, align 4, !dbg !8689, !alias.scope !8690, !noalias !8693, !noundef !13
  %i.db = icmp ult i32 %i.da, %i.ch, !dbg !8695
  %i.dc = and i1 %.sroa.0.0.i172, %i.db, !dbg !8696 ; 2 uses
  %i.dd = icmp eq ptr %i.cz, %i.ci, !dbg !8685
  br i1 %i.dd, label %._crit_edge175, label %.lr.ph174, !dbg !8688, !llvm.loop !8700

._crit_edge175:                                   ; preds = %.lr.ph174, %middle.block281
  %.lcssa = phi i1 [ %i.cy, %middle.block281 ], [ %i.dc, %.lr.ph174 ], !dbg !8696
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !8701, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge175
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !8702
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !8703 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !8704
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.v, !dbg !8707

bb.v:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !8714
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !8708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8640
  br label %bb.w, !dbg !8715

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge175, %bb.u, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cf, ptr %i.o, align 8, !dbg !8717
  store ptr %i.ci, ptr %i.ar, align 8, !dbg !8717
  store ptr %i.v, ptr %i.as, align 8, !dbg !8717
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !8722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8640
  br label %thread-pre-split, !dbg !8725

bb.w:                                             ; preds = %bb.ae, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !8726
  br label %bb.ag, !dbg !8585

.lr.ph180:                                        ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8727, !noalias !8728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !8730, !alias.scope !8732, !noalias !8728
  %i.de = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !8735, !noalias !8736
  %i.df = extractvalue { i64, i64 } %i.de, 0, !dbg !8735
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !8737
  br i1 %i.dg, label %bb.y, label %bb.x, !dbg !8737

bb.x:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8739, !noalias !8728
  br label %.loopexit, !dbg !8740

bb.y:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !8741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !8742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8739, !noalias !8728
  %i.dh = load i64, ptr %i.w, align 8, !dbg !8743, !alias.scope !8746, !noundef !13
  %i.di = trunc i64 %i.dh to i32, !dbg !8749
  %i.dj = load <32 x i32>, ptr %i.m, align 4, !dbg !8751, !alias.scope !8752, !noalias !8755
  %i.dk = insertelement <32 x i32> poison, i32 %i.di, i64 0, !dbg !8757
  %i.dl = shufflevector <32 x i32> %i.dk, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !8757
  %i.dm = icmp uge <32 x i32> %i.dj, %i.dl, !dbg !8758
  %i.dn = bitcast <32 x i1> %i.dm to i32, !dbg !8758
  %i.do = icmp eq i32 %i.dn, 0, !dbg !8758
  br i1 %i.do, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !8759, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.y
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !8760
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !8761 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !8762
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.af, !dbg !8764

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.r, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8765
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !8767
  %i.dp = load i64, ptr %i.j, align 8, !dbg !8765, !range !431, !noundef !13
  %i.dq = trunc nuw i64 %i.dp to i1, !dbg !8768
  br i1 %i.dq, label %bb.z, label %bb.ad, !dbg !8768

bb.z:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.aw, i64 128, i1 false), !dbg !8769
  %i.dr = load i64, ptr %i.ax, align 8, !dbg !8770, !noundef !13 ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 33
  br i1 %i.ds, label %bb.ab, label %bb.aa, !dbg !8771, !prof !576

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !8783
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.w, align 8, !dbg !8784, !alias.scope !8786, !noundef !13
  %i.du = trunc i64 %i.dt to i32, !dbg !8789      ; 2 uses
  %.idx = shl nuw nsw i64 %i.dr, 2, !dbg !8791    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !8791 ; 2 uses
  %i.dw = icmp eq i64 %i.dr, 0, !dbg !8796
  br i1 %i.dw, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph184.preheader, !dbg !8799

.lr.ph184.preheader:                              ; preds = %bb.ab
  %i.dx = add nsw i64 %.idx, -4, !dbg !8799       ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 2, !dbg !8799
  %i.dz = add nuw nsw i64 %i.dy, 1, !dbg !8799    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 28, !dbg !8799
  br i1 %min.iters.check, label %.lr.ph184.preheader286, label %vector.ph, !dbg !8799

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.dz, 9223372036854775800     ; 5 uses
  %i.ea = shl i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %i.i, i64 %i.ea
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !8800, !alias.scope !8801, !noalias !8804
  %wide.load266 = load <4 x i32>, ptr %i.ba, align 16, !dbg !8800, !alias.scope !8801, !noalias !8804
  %i.ec = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !8806 ; 2 uses
  %i.ed = icmp ult <4 x i32> %wide.load266, %broadcast.splat, !dbg !8806 ; 2 uses
  %i.ee = icmp eq i64 %n.vec, 8, !dbg !8799
  br i1 %i.ee, label %middle.block, label %vector.body.1, !dbg !8799

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !8800, !alias.scope !8801, !noalias !8804
  %wide.load266.1 = load <4 x i32>, ptr %i.bb, align 16, !dbg !8800, !alias.scope !8801, !noalias !8804
  %i.ef = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !8806
  %i.eg = icmp ult <4 x i32> %wide.load266.1, %broadcast.splat, !dbg !8806
  %i.eh = and <4 x i1> %i.ec, %i.ef, !dbg !8807   ; 2 uses
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !8807   ; 2 uses
  %i.ej = icmp eq i64 %n.vec, 16, !dbg !8799
  br i1 %i.ej, label %middle.block, label %vector.body.2, !dbg !8799

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !8800, !alias.scope !8801, !noalias !8804
  %wide.load266.2 = load <4 x i32>, ptr %i.bc, align 16, !dbg !8800, !alias.scope !8801, !noalias !8804
  %i.ek = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !8806
  %i.el = icmp ult <4 x i32> %wide.load266.2, %broadcast.splat, !dbg !8806
  %i.em = and <4 x i1> %i.eh, %i.ek, !dbg !8807   ; 2 uses
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !8807   ; 2 uses
  %i.eo = icmp eq i64 %n.vec, 24, !dbg !8799
  br i1 %i.eo, label %middle.block, label %vector.body.3, !dbg !8799

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !8800, !alias.scope !8801, !noalias !8804
  %wide.load266.3 = load <4 x i32>, ptr %i.bd, align 16, !dbg !8800, !alias.scope !8801, !noalias !8804
  %i.ep = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !8806
  %i.eq = icmp ult <4 x i32> %wide.load266.3, %broadcast.splat, !dbg !8806
  %i.er = and <4 x i1> %i.em, %i.ep, !dbg !8807
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !8807
  br label %middle.block, !dbg !8799

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa305 = phi <4 x i1> [ %i.ec, %vector.ph ], [ %i.eh, %vector.body.1 ], [ %i.em, %vector.body.2 ], [ %i.er, %vector.body.3 ], !dbg !8807
  %.lcssa304 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !8807
  %bin.rdx = and <4 x i1> %.lcssa304, %.lcssa305, !dbg !8799
  %i.et = bitcast <4 x i1> %bin.rdx to i4, !dbg !8799
  %i.eu = icmp eq i4 %i.et, -1, !dbg !8799        ; 2 uses
  %cmp.n = icmp eq i64 %i.dz, %n.vec, !dbg !8799
  br i1 %cmp.n, label %._crit_edge185, label %.lr.ph184.preheader286, !dbg !8799

.lr.ph184.preheader286:                           ; preds = %.lr.ph184.preheader, %middle.block
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4mEBc_:bb.a

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8896, !noalias !8878
  br label %bb.i, !dbg !8897

bb.h:                                             ; preds = %bb.c
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8898
  br label %bb.ai, !dbg !8869

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa163 = phi i64 [ %i.ac, %.preheader ], [ %i.ak, %bb.f ], !dbg !8888
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8899
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8899
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !8899, !noalias !8878
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8900
  %i.al = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !8899, !noalias !8878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8892, !noalias !8878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8896, !noalias !8878
  store i64 %.lcssa163, ptr %0, align 8, !dbg !8900
  store <2 x i64> %i.al, ptr %.sroa.2102.0..sroa_idx, align 8, !dbg !8900
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8900
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !8900
  br label %bb.ai, !dbg !8869

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1167, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8907
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8909
  %i.am = load i64, ptr %i.u, align 8, !dbg !8910, !range !243, !noundef !13 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2, !dbg !8910
  br i1 %i.an, label %.outer._crit_edge, label %.lr.ph168.lr.ph, !dbg !8912

.lr.ph168.lr.ph:                                  ; preds = %bb.i
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph168, !dbg !8912

.lr.ph168:                                        ; preds = %.lr.ph168.lr.ph, %.outer
  %i.bd = phi i64 [ %i.am, %.lr.ph168.lr.ph ], [ %i.bq, %.outer ]
  %.sroa.0.0.ph186 = phi i64 [ %.sroa.0.2.ph, %.lr.ph168.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !8912

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !8913
  %.sroa.035.0.copyload = load ptr, ptr %i.be, align 8, !dbg !8913
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !8913
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8, !dbg !8913
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !8913
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 8, !dbg !8913
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !8913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.738.0..sroa_idx, i64 12, i1 false), !dbg !8913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8914
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !8915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8914
  store ptr %.sroa.035.0.copyload, ptr %0, align 8, !dbg !8915
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8915
  store i64 %.sroa.536.0.copyload, ptr %.sroa.240.0..sroa_idx, align 8, !dbg !8915
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8915
  store i32 %.sroa.637.0.copyload, ptr %.sroa.341.0..sroa_idx, align 8, !dbg !8915
  br label %bb.ai, !dbg !8921

bb.j:                                             ; preds = %.lr.ph168, %bb.o
  %i.bf = phi i64 [ %i.bd, %.lr.ph168 ], [ %i.bi, %bb.o ]
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8, !dbg !8923 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8923 ; 3 uses
  %.sroa.728.0.copyload = load i32, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !8923 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx29, i64 12, i1 false), !dbg !8923
  %.sroa.930.0.copyload = load i64, ptr %.sroa.930.0..sroa_idx, align 8, !dbg !8923 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !8914
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !8924
  br i1 %i.bg, label %bb.k, label %bb.l, !dbg !8924

bb.k:                                             ; preds = %bb.j
  %.not53 = icmp eq ptr %.sroa.527.0.copyload, null, !dbg !8925
  br i1 %.not53, label %bb.n, label %bb.m, !dbg !8926

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !8927
  br label %bb.ai, !dbg !8928

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !8929
  store ptr %.sroa.527.0.copyload, ptr %i.t, align 8, !dbg !8929
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !8929
  store i32 %.sroa.728.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !8929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !8929
  store i64 %.sroa.930.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8929
  %.not54 = icmp eq i64 %.sroa.0.0.ph186, 0, !dbg !8930
  br i1 %.not54, label %bb.t, label %bb.s, !dbg !8930

bb.n:                                             ; preds = %bb.k
  %i.bh = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !8932
  br i1 %i.bh, label %bb.o, label %bb.p, !dbg !8932

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8907
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8909
  %i.bi = load i64, ptr %i.u, align 8, !dbg !8910, !range !243, !noundef !13 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 2, !dbg !8910
  br i1 %i.bj, label %.outer._crit_edge, label %bb.j, !dbg !8912

bb.p:                                             ; preds = %bb.n
  %i.bk = call i64 @_RNvYmNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getBd_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v, i32 noundef %.sroa.728.0.copyload), !dbg !8934 ; 2 uses
  %i.bl = trunc i64 %i.bk to i1, !dbg !8935
  br i1 %i.bl, label %bb.q, label %bb.r, !dbg !8935, !prof !3295

bb.q:                                             ; preds = %bb.p
  %.sroa.447.0.extract.shift = lshr i64 %i.bk, 32, !dbg !8936
  %.sroa.447.0.extract.trunc = trunc nuw i64 %.sroa.447.0.extract.shift to i32, !dbg !8936
  %i.bm = load i64, ptr %i.x, align 8, !dbg !8937, !noundef !13 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 2305843009213693952, !dbg !8940
  call void @llvm.assume(i1 %i.bn), !dbg !8942
  %i.bo = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph186, !dbg !8943
  %i.bp = add i64 %i.bo, %i.bm, !dbg !8943
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bp, i32 noundef %.sroa.447.0.extract.trunc), !dbg !8944
  br label %.outer, !dbg !8944

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !8945
  br label %bb.ai, !dbg !8921

.outer:                                           ; preds = %bb.q, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !8907
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !8909
  %i.bq = load i64, ptr %i.u, align 8, !dbg !8910, !range !243, !noundef !13 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 2, !dbg !8910
  br i1 %i.br, label %.outer._crit_edge, label %.lr.ph168, !dbg !8912

bb.s:                                             ; preds = %bb.m
  %i.bs = lshr i64 %.sroa.0.0.ph186, 5, !dbg !8946
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bs), !dbg !8947
  %i.bt = and i64 %.sroa.0.0.ph186, 31, !dbg !8948 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !8949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !8949
  store ptr %i.t, ptr %i.r, align 8, !dbg !8949
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !8951
  %i.bu = load i64, ptr %i.s, align 8, !dbg !8949, !range !431, !noundef !13
  %i.bv = trunc nuw i64 %i.bu to i1, !dbg !8952
  br i1 %i.bv, label %bb.u, label %thread-pre-split, !dbg !8952

thread-pre-split:                                 ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8953
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !8954, !noalias !8962
  br label %bb.t, !dbg !8966

bb.t:                                             ; preds = %thread-pre-split, %bb.m
  %i.bw = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.930.0.copyload, %bb.m ], !dbg !8954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !8966
  store ptr %i.t, ptr %i.n, align 8, !dbg !8967
  %i.bx = icmp ult i64 %i.bw, 32, !dbg !8968
  br i1 %i.bx, label %.loopexit, label %.lr.ph179, !dbg !8968

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !8969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ao, i64 128, i1 false), !dbg !8969
  %i.by = load i64, ptr %i.ap, align 8, !dbg !8970, !noundef !13 ; 6 uses
  %i.bz = icmp uge i64 %i.by, %i.bt, !dbg !8971
  %i.ca = icmp ult i64 %i.by, 33
  %or.cond = and i1 %i.bz, %i.ca, !dbg !8971
  br i1 %or.cond, label %bb.w, label %bb.v, !dbg !8971, !prof !576

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %i.by, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !8980
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bt, !dbg !8981 ; 4 uses
  %i.cc = load i32, ptr %i.v, align 4, !dbg !8985, !alias.scope !8990, !noundef !13 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by, !dbg !8993 ; 2 uses
  %i.ce = icmp samesign eq i64 %i.bt, %i.by, !dbg !8999
  br i1 %i.ce, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph173.preheader, !dbg !9002

.lr.ph173.preheader:                              ; preds = %bb.w
  %i.cf = shl nuw nsw i64 %i.by, 2, !dbg !9002
  %5 = add nsw i64 %i.cf, -4, !dbg !9002
  %6 = shl nuw nsw i64 %i.bt, 2, !dbg !9002
  %i.cg = sub nsw i64 %5, %6, !dbg !9002          ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2, !dbg !9002
  %i.ci = add nuw nsw i64 %i.ch, 1, !dbg !9002    ; 2 uses
  %min.iters.check266 = icmp ult i64 %i.cg, 28, !dbg !9002
  br i1 %min.iters.check266, label %.lr.ph173.preheader285, label %vector.ph267, !dbg !9002

vector.ph267:                                     ; preds = %.lr.ph173.preheader
  %n.vec268 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cj = shl i64 %n.vec268, 2
  %i.ck = getelementptr i8, ptr %i.cb, i64 %i.cj
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body271, !dbg !9002

vector.body271:                                   ; preds = %vector.body271, %vector.ph267
  %index272 = phi i64 [ 0, %vector.ph267 ], [ %index.next278, %vector.body271 ] ; 2 uses
  %vec.phi273 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cp, %vector.body271 ]
  %vec.phi274 = phi <4 x i1> [ splat (i1 true), %vector.ph267 ], [ %i.cq, %vector.body271 ]
  %i.cl = shl i64 %index272, 2
  %next.gep275 = getelementptr i8, ptr %i.cb, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep275, i64 16, !dbg !9003
  %wide.load276 = load <4 x i32>, ptr %next.gep275, align 4, !dbg !9003, !alias.scope !9004, !noalias !9007
  %wide.load277 = load <4 x i32>, ptr %i.cm, align 4, !dbg !9003, !alias.scope !9004, !noalias !9007
  %i.cn = icmp ult <4 x i32> %wide.load276, %broadcast.splat270, !dbg !9009
  %i.co = icmp ult <4 x i32> %wide.load277, %broadcast.splat270, !dbg !9009
  %i.cp = and <4 x i1> %vec.phi273, %i.cn, !dbg !9010 ; 2 uses
  %i.cq = and <4 x i1> %vec.phi274, %i.co, !dbg !9010 ; 2 uses
  %index.next278 = add nuw i64 %index272, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next278, %n.vec268, !dbg !9002
  br i1 %i.cr, label %middle.block279, label %vector.body271, !dbg !9002, !llvm.loop !9011

middle.block279:                                  ; preds = %vector.body271
  %bin.rdx280 = and <4 x i1> %i.cq, %i.cp, !dbg !9002
  %i.cs = bitcast <4 x i1> %bin.rdx280 to i4, !dbg !9002
  %i.ct = icmp eq i4 %i.cs, -1, !dbg !9002        ; 2 uses
  %cmp.n281 = icmp eq i64 %i.ci, %n.vec268, !dbg !9002
  br i1 %cmp.n281, label %._crit_edge174, label %.lr.ph173.preheader285, !dbg !9002

.lr.ph173.preheader285:                           ; preds = %.lr.ph173.preheader, %middle.block279
  %.sroa.0.0.i171.ph = phi i1 [ true, %.lr.ph173.preheader ], [ %i.ct, %middle.block279 ]
  %.sroa.02.0.i170.ph = phi ptr [ %i.cb, %.lr.ph173.preheader ], [ %i.ck, %middle.block279 ]
  br label %.lr.ph173, !dbg !9002

.lr.ph173:                                        ; preds = %.lr.ph173.preheader285, %.lr.ph173
  %.sroa.0.0.i171 = phi i1 [ %i.cx, %.lr.ph173 ], [ %.sroa.0.0.i171.ph, %.lr.ph173.preheader285 ]
  %.sroa.02.0.i170 = phi ptr [ %i.cu, %.lr.ph173 ], [ %.sroa.02.0.i170.ph, %.lr.ph173.preheader285 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i170, i64 4, !dbg !9012 ; 2 uses
  %i.cv = load i32, ptr %.sroa.02.0.i170, align 4, !dbg !9003, !alias.scope !9004, !noalias !9007, !noundef !13
  %i.cw = icmp ult i32 %i.cv, %i.cc, !dbg !9009
  %i.cx = and i1 %.sroa.0.0.i171, %i.cw, !dbg !9010 ; 2 uses
  %i.cy = icmp eq ptr %i.cu, %i.cd, !dbg !8999
  br i1 %i.cy, label %._crit_edge174, label %.lr.ph173, !dbg !9002, !llvm.loop !9014

._crit_edge174:                                   ; preds = %.lr.ph173, %middle.block279
  %.lcssa = phi i1 [ %i.ct, %middle.block279 ], [ %i.cx, %.lr.ph173 ], !dbg !9010
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !9015, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge174
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !9016
  %.sroa.074.0.copyload75 = load i64, ptr %i.f, align 8, !dbg !9017 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !9018
  br i1 %.not55, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.x, !dbg !9021

bb.x:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !9028
  store i64 %.sroa.074.0.copyload75, ptr %0, align 8, !dbg !9022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !8953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !8953
  br label %bb.y, !dbg !9029

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge174, %bb.w, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cb, ptr %i.o, align 8, !dbg !9031
  store ptr %i.cd, ptr %i.aq, align 8, !dbg !9031
  store ptr %i.v, ptr %i.ar, align 8, !dbg !9031
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_mE0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !9036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !8953
  br label %thread-pre-split, !dbg !9039

bb.y:                                             ; preds = %bb.ag, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9040
  br label %bb.ai, !dbg !8921

.lr.ph179:                                        ; preds = %bb.t, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9041, !noalias !9042
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !9044, !alias.scope !9046, !noalias !9042
  %i.cz = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !9049, !noalias !9050
  %i.da = extractvalue { i64, i64 } %i.cz, 0, !dbg !9049
  %i.db = trunc nuw i64 %i.da to i1, !dbg !9051
  br i1 %i.db, label %bb.aa, label %bb.z, !dbg !9051

bb.z:                                             ; preds = %.lr.ph179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9053, !noalias !9042
  br label %.loopexit, !dbg !9054

bb.aa:                                            ; preds = %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !9056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9053, !noalias !9042
  %i.dc = load i32, ptr %i.v, align 4, !dbg !9057, !alias.scope !9060, !noundef !13
  %i.dd = load <32 x i32>, ptr %i.m, align 4, !dbg !9063, !alias.scope !9065, !noalias !9068
  %i.de = insertelement <32 x i32> poison, i32 %i.dc, i64 0, !dbg !9070
  %i.df = shufflevector <32 x i32> %i.de, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !9070
  %i.dg = icmp uge <32 x i32> %i.dd, %i.df, !dbg !9071
  %i.dh = bitcast <32 x i1> %i.dg to i32, !dbg !9071
  %i.di = icmp eq i32 %i.dh, 0, !dbg !9071
  br i1 %i.di, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63, !dbg !9072, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63: ; preds = %bb.aa
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !9073
  %.sroa.080.0.copyload81 = load i64, ptr %i.d, align 8, !dbg !9074 ; 2 uses
  %.not57 = icmp eq i64 %.sroa.080.0.copyload81, -9223372036854775803, !dbg !9075
  br i1 %.not57, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, label %bb.ah, !dbg !9077

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit63.thread, %bb.t, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9078
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !9080
  %i.dj = load i64, ptr %i.j, align 8, !dbg !9078, !range !431, !noundef !13
  %i.dk = trunc nuw i64 %i.dj to i1, !dbg !9081
  br i1 %i.dk, label %bb.ab, label %bb.af, !dbg !9081

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.av, i64 128, i1 false), !dbg !9082
  %i.dl = load i64, ptr %i.aw, align 8, !dbg !9083, !noundef !13 ; 4 uses
  %i.dm = icmp ult i64 %i.dl, 33
  br i1 %i.dm, label %bb.ad, label %bb.ac, !dbg !9084, !prof !576

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dl, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !9096
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dn = load i32, ptr %i.v, align 4, !dbg !9097, !alias.scope !9099, !noundef !13 ; 2 uses
  %.idx = shl nuw nsw i64 %i.dl, 2, !dbg !9102    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !9102 ; 2 uses
  %i.dp = icmp eq i64 %i.dl, 0, !dbg !9108
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit60.thread, label %.lr.ph183.preheader, !dbg !9111

.lr.ph183.preheader:                              ; preds = %bb.ad
  %i.dq = add nsw i64 %.idx, -4, !dbg !9111       ; 2 uses
  %i.dr = lshr exact i64 %i.dq, 2, !dbg !9111
  %i.ds = add nuw nsw i64 %i.dr, 1, !dbg !9111    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dq, 28, !dbg !9111
  br i1 %min.iters.check, label %.lr.ph183.preheader284, label %vector.ph, !dbg !9111

vector.ph:                                        ; preds = %.lr.ph183.preheader
  %n.vec = and i64 %i.ds, 9223372036854775800     ; 5 uses
  %i.dt = shl i64 %n.vec, 2
  %i.du = getelementptr i8, ptr %i.i, i64 %i.dt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !9112, !alias.scope !9113, !noalias !9116
  %wide.load264 = load <4 x i32>, ptr %i.az, align 16, !dbg !9112, !alias.scope !9113, !noalias !9116
  %i.dv = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !9118 ; 2 uses
  %i.dw = icmp ult <4 x i32> %wide.load264, %broadcast.splat, !dbg !9118 ; 2 uses
  %i.dx = icmp eq i64 %n.vec, 8, !dbg !9111
  br i1 %i.dx, label %middle.block, label %vector.body.1, !dbg !9111

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !9112, !alias.scope !9113, !noalias !9116
  %wide.load264.1 = load <4 x i32>, ptr %i.ba, align 16, !dbg !9112, !alias.scope !9113, !noalias !9116
  %i.dy = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !9118
  %i.dz = icmp ult <4 x i32> %wide.load264.1, %broadcast.splat, !dbg !9118
  %i.ea = and <4 x i1> %i.dv, %i.dy, !dbg !9119   ; 2 uses
  %i.eb = and <4 x i1> %i.dw, %i.dz, !dbg !9119   ; 2 uses
  %i.ec = icmp eq i64 %n.vec, 16, !dbg !9111
  br i1 %i.ec, label %middle.block, label %vector.body.2, !dbg !9111

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !9112, !alias.scope !9113, !noalias !9116
  %wide.load264.2 = load <4 x i32>, ptr %i.bb, align 16, !dbg !9112, !alias.scope !9113, !noalias !9116
  %i.ed = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !9118
  %i.ee = icmp ult <4 x i32> %wide.load264.2, %broadcast.splat, !dbg !9118
  %i.ef = and <4 x i1> %i.ea, %i.ed, !dbg !9119   ; 2 uses
  %i.eg = and <4 x i1> %i.eb, %i.ee, !dbg !9119   ; 2 uses
  %i.eh = icmp eq i64 %n.vec, 24, !dbg !9111
  br i1 %i.eh, label %middle.block, label %vector.body.3, !dbg !9111

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !9112, !alias.scope !9113, !noalias !9116
  %wide.load264.3 = load <4 x i32>, ptr %i.bc, align 16, !dbg !9112, !alias.scope !9113, !noalias !9116
  %i.ei = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !9118
  %i.ej = icmp ult <4 x i32> %wide.load264.3, %broadcast.splat, !dbg !9118
  %i.ek = and <4 x i1> %i.ef, %i.ei, !dbg !9119
  %i.el = and <4 x i1> %i.eg, %i.ej, !dbg !9119
  br label %middle.block, !dbg !9111

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa303 = phi <4 x i1> [ %i.dv, %vector.ph ], [ %i.ea, %vector.body.1 ], [ %i.ef, %vector.body.2 ], [ %i.ek, %vector.body.3 ], !dbg !9119
  %.lcssa302 = phi <4 x i1> [ %i.dw, %vector.ph ], [ %i.eb, %vector.body.1 ], [ %i.eg, %vector.body.2 ], [ %i.el, %vector.body.3 ], !dbg !9119
  %bin.rdx = and <4 x i1> %.lcssa302, %.lcssa303, !dbg !9111
  %i.em = bitcast <4 x i1> %bin.rdx to i4, !dbg !9111
  %i.en = icmp eq i4 %i.em, -1, !dbg !9111        ; 2 uses
  %cmp.n = icmp eq i64 %i.ds, %n.vec, !dbg !9111
  br i1 %cmp.n, label %._crit_edge184, label %.lr.ph183.preheader284, !dbg !9111

.lr.ph183.preheader284:                           ; preds = %.lr.ph183.preheader, %middle.block
  %.sroa.0.0.i59181.ph = phi i1 [ true, %.lr.ph183.preheader ], [ %i.en, %middle.block ]
  %.sroa.02.0.i58180.ph = phi ptr [ %i.i, %.lr.ph183.preheader ], [ %i.du, %middle.block ]
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8RSB1E_EBc_:bb.a
bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9211
  br label %bb.ah, !dbg !9181

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa164 = phi i64 [ %i.ad, %.preheader ], [ %i.al, %bb.f ], !dbg !9201
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9212
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9212
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !9212, !noalias !9191
  %.sroa.2100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9213
  %i.am = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !9212, !noalias !9191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9205, !noalias !9191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9209, !noalias !9191
  store i64 %.lcssa164, ptr %0, align 8, !dbg !9213
  store <2 x i64> %i.am, ptr %.sroa.2100.0..sroa_idx, align 8, !dbg !9213
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9213
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.4102.0..sroa_idx, align 8, !dbg !9213
  br label %bb.ah, !dbg !9181

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1168, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9220
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9222
  %i.an = load i64, ptr %i.u, align 8, !dbg !9223, !range !243, !noundef !13 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2, !dbg !9223
  br i1 %i.ao, label %.outer._crit_edge, label %.lr.ph169.lr.ph, !dbg !9225

.lr.ph169.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph169, !dbg !9225

.lr.ph169:                                        ; preds = %.lr.ph169.lr.ph, %.outer
  %i.be = phi i64 [ %i.an, %.lr.ph169.lr.ph ], [ %i.bu, %.outer ]
  %.sroa.0.0.ph187 = phi i64 [ %.sroa.0.2.ph, %.lr.ph169.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !9225

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !9226
  %.sroa.033.0.copyload = load ptr, ptr %i.bf, align 8, !dbg !9226
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !9226
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 8, !dbg !9226
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !9226
  %.sroa.635.0.copyload = load i32, ptr %.sroa.635.0..sroa_idx, align 8, !dbg !9226
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28, !dbg !9226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.736.0..sroa_idx, i64 12, i1 false), !dbg !9226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9227
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !9228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.440.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9227
  store ptr %.sroa.033.0.copyload, ptr %0, align 8, !dbg !9228
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9228
  store i64 %.sroa.534.0.copyload, ptr %.sroa.238.0..sroa_idx, align 8, !dbg !9228
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9228
  store i32 %.sroa.635.0.copyload, ptr %.sroa.339.0..sroa_idx, align 8, !dbg !9228
  br label %bb.ah, !dbg !9234

bb.j:                                             ; preds = %.lr.ph169, %bb.o
  %i.bg = phi i64 [ %i.be, %.lr.ph169 ], [ %i.bj, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9236 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !9236 ; 3 uses
  %.sroa.726.0.copyload = load i32, ptr %.sroa.726.0..sroa_idx, align 8, !dbg !9236 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx27, i64 12, i1 false), !dbg !9236
  %.sroa.928.0.copyload = load i64, ptr %.sroa.928.0..sroa_idx, align 8, !dbg !9236 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !9227
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !9237
  br i1 %i.bh, label %bb.k, label %bb.l, !dbg !9237

bb.k:                                             ; preds = %bb.j
  %.not49 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !9238
  br i1 %.not49, label %bb.n, label %bb.m, !dbg !9239

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !9240
  br label %bb.ah, !dbg !9241

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !9242
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !9242
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !9242
  store i32 %.sroa.726.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !9242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9242
  store i64 %.sroa.928.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9242
  %.not50 = icmp eq i64 %.sroa.0.0.ph187, 0, !dbg !9243
  br i1 %.not50, label %bb.s, label %bb.r, !dbg !9243

bb.n:                                             ; preds = %bb.k
  %i.bi = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !9245
  br i1 %i.bi, label %bb.o, label %bb.p, !dbg !9245

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9220
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9222
  %i.bj = load i64, ptr %i.u, align 8, !dbg !9223, !range !243, !noundef !13 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 2, !dbg !9223
  br i1 %i.bk, label %.outer._crit_edge, label %bb.j, !dbg !9225

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !9247), !dbg !9250
  %i.bl = zext i32 %.sroa.726.0.copyload to i64, !dbg !9251 ; 2 uses
  %i.bm = load i64, ptr %i.w, align 8, !dbg !9253, !alias.scope !9255, !noalias !9258, !noundef !13
  %i.bn = icmp ugt i64 %i.bm, %i.bl, !dbg !9260
  br i1 %i.bn, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit, !dbg !9261

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !9263), !dbg !9266
  %i.bo = load ptr, ptr %i.v, align 8, !dbg !9268, !alias.scope !9270, !noalias !9258, !nonnull !13, !align !1688, !noundef !13
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bl, !dbg !9271
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bp, align 8, !dbg !9274, !noalias !9275
  %i.bq = load i64, ptr %i.y, align 8, !dbg !9276, !noundef !13 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 1152921504606846976, !dbg !9279
  call void @llvm.assume(i1 %i.br), !dbg !9281
  %i.bs = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph187, !dbg !9282
  %i.bt = add i64 %i.bs, %i.bq, !dbg !9282
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bt, i64 noundef %.sroa.0.0.copyload.i.i), !dbg !9283
  br label %.outer, !dbg !9283

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1p_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9284
  br label %bb.ah, !dbg !9234

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !9220
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9222
  %i.bu = load i64, ptr %i.u, align 8, !dbg !9223, !range !243, !noundef !13 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 2, !dbg !9223
  br i1 %i.bv, label %.outer._crit_edge, label %.lr.ph169, !dbg !9225

bb.r:                                             ; preds = %bb.m
  %i.bw = lshr i64 %.sroa.0.0.ph187, 5, !dbg !9285
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bw), !dbg !9286
  %i.bx = and i64 %.sroa.0.0.ph187, 31, !dbg !9287 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !9288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !9288
  store ptr %i.t, ptr %i.r, align 8, !dbg !9288
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !9290
  %i.by = load i64, ptr %i.s, align 8, !dbg !9288, !range !431, !noundef !13
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !9291
  br i1 %i.bz, label %bb.t, label %thread-pre-split, !dbg !9291

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9292
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9293, !noalias !9301
  br label %bb.s, !dbg !9305

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.ca = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.928.0.copyload, %bb.m ], !dbg !9293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9305
  store ptr %i.t, ptr %i.n, align 8, !dbg !9306
  %i.cb = icmp ult i64 %i.ca, 32, !dbg !9307
  br i1 %i.cb, label %.loopexit, label %.lr.ph180, !dbg !9307

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i64 128, i1 false), !dbg !9308
  %i.cc = load i64, ptr %i.aq, align 8, !dbg !9309, !noundef !13 ; 6 uses
  %i.cd = icmp uge i64 %i.cc, %i.bx, !dbg !9310
  %i.ce = icmp ult i64 %i.cc, 33
  %or.cond = and i1 %i.cd, %i.ce, !dbg !9310
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !9310, !prof !576

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bx, i64 noundef %i.cc, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !9319
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bx, !dbg !9320 ; 4 uses
  %i.cg = load i64, ptr %i.w, align 8, !dbg !9324, !alias.scope !9327, !noundef !13
  %i.ch = trunc i64 %i.cg to i32, !dbg !9330      ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cc, !dbg !9332 ; 2 uses
  %i.cj = icmp samesign eq i64 %i.bx, %i.cc, !dbg !9337
  br i1 %i.cj, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph174.preheader, !dbg !9340

.lr.ph174.preheader:                              ; preds = %bb.v
  %i.ck = shl nuw nsw i64 %i.cc, 2, !dbg !9340
  %6 = add nsw i64 %i.ck, -4, !dbg !9340
  %7 = shl nuw nsw i64 %i.bx, 2, !dbg !9340
  %i.cl = sub nsw i64 %6, %7, !dbg !9340          ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 2, !dbg !9340
  %i.cn = add nuw nsw i64 %i.cm, 1, !dbg !9340    ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.cl, 28, !dbg !9340
  br i1 %min.iters.check268, label %.lr.ph174.preheader287, label %vector.ph269, !dbg !9340

vector.ph269:                                     ; preds = %.lr.ph174.preheader
  %n.vec270 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec270, 2
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.co
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273, !dbg !9340

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next280, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cu, %vector.body273 ]
  %vec.phi276 = phi <4 x i1> [ splat (i1 true), %vector.ph269 ], [ %i.cv, %vector.body273 ]
  %i.cq = shl i64 %index274, 2
  %next.gep277 = getelementptr i8, ptr %i.cf, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep277, i64 16, !dbg !9341
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !dbg !9341, !alias.scope !9342, !noalias !9345
  %wide.load279 = load <4 x i32>, ptr %i.cr, align 4, !dbg !9341, !alias.scope !9342, !noalias !9345
  %i.cs = icmp ult <4 x i32> %wide.load278, %broadcast.splat272, !dbg !9347
  %i.ct = icmp ult <4 x i32> %wide.load279, %broadcast.splat272, !dbg !9347
  %i.cu = and <4 x i1> %vec.phi275, %i.cs, !dbg !9348 ; 2 uses
  %i.cv = and <4 x i1> %vec.phi276, %i.ct, !dbg !9348 ; 2 uses
  %index.next280 = add nuw i64 %index274, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next280, %n.vec270, !dbg !9340
  br i1 %i.cw, label %middle.block281, label %vector.body273, !dbg !9340, !llvm.loop !9349

middle.block281:                                  ; preds = %vector.body273
  %bin.rdx282 = and <4 x i1> %i.cv, %i.cu, !dbg !9340
  %i.cx = bitcast <4 x i1> %bin.rdx282 to i4, !dbg !9340
  %i.cy = icmp eq i4 %i.cx, -1, !dbg !9340        ; 2 uses
  %cmp.n283 = icmp eq i64 %i.cn, %n.vec270, !dbg !9340
  br i1 %cmp.n283, label %._crit_edge175, label %.lr.ph174.preheader287, !dbg !9340

.lr.ph174.preheader287:                           ; preds = %.lr.ph174.preheader, %middle.block281
  %.sroa.0.0.i172.ph = phi i1 [ true, %.lr.ph174.preheader ], [ %i.cy, %middle.block281 ]
  %.sroa.02.0.i171.ph = phi ptr [ %i.cf, %.lr.ph174.preheader ], [ %i.cp, %middle.block281 ]
  br label %.lr.ph174, !dbg !9340

.lr.ph174:                                        ; preds = %.lr.ph174.preheader287, %.lr.ph174
  %.sroa.0.0.i172 = phi i1 [ %i.dc, %.lr.ph174 ], [ %.sroa.0.0.i172.ph, %.lr.ph174.preheader287 ]
  %.sroa.02.0.i171 = phi ptr [ %i.cz, %.lr.ph174 ], [ %.sroa.02.0.i171.ph, %.lr.ph174.preheader287 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i171, i64 4, !dbg !9350 ; 2 uses
  %i.da = load i32, ptr %.sroa.02.0.i171, align 4, !dbg !9341, !alias.scope !9342, !noalias !9345, !noundef !13
  %i.db = icmp ult i32 %i.da, %i.ch, !dbg !9347
  %i.dc = and i1 %.sroa.0.0.i172, %i.db, !dbg !9348 ; 2 uses
  %i.dd = icmp eq ptr %i.cz, %i.ci, !dbg !9337
  br i1 %i.dd, label %._crit_edge175, label %.lr.ph174, !dbg !9340, !llvm.loop !9352

._crit_edge175:                                   ; preds = %.lr.ph174, %middle.block281
  %.lcssa = phi i1 [ %i.cy, %middle.block281 ], [ %i.dc, %.lr.ph174 ], !dbg !9348
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !9353, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge175
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !9354
  %.sroa.071.0.copyload72 = load i64, ptr %i.f, align 8, !dbg !9355 ; 2 uses
  %.not51 = icmp eq i64 %.sroa.071.0.copyload72, -9223372036854775803, !dbg !9356
  br i1 %.not51, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !9359

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2112.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !9366
  store i64 %.sroa.071.0.copyload72, ptr %0, align 8, !dbg !9360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9292
  br label %bb.x, !dbg !9367

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge175, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cf, ptr %i.o, align 8, !dbg !9369
  store ptr %i.ci, ptr %i.ar, align 8, !dbg !9369
  store ptr %i.v, ptr %i.as, align 8, !dbg !9369
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !9374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9292
  br label %thread-pre-split, !dbg !9377

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9378
  br label %bb.ah, !dbg !9234

.lr.ph180:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9379, !noalias !9380
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !9382, !alias.scope !9384, !noalias !9380
  %i.de = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !9387, !noalias !9388
  %i.df = extractvalue { i64, i64 } %i.de, 0, !dbg !9387
  %i.dg = trunc nuw i64 %i.df to i1, !dbg !9389
  br i1 %i.dg, label %bb.z, label %bb.y, !dbg !9389

bb.y:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9391, !noalias !9380
  br label %.loopexit, !dbg !9392

bb.z:                                             ; preds = %.lr.ph180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !9394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9391, !noalias !9380
  %i.dh = load i64, ptr %i.w, align 8, !dbg !9395, !alias.scope !9398, !noundef !13
  %i.di = trunc i64 %i.dh to i32, !dbg !9401
  %i.dj = load <32 x i32>, ptr %i.m, align 4, !dbg !9403, !alias.scope !9404, !noalias !9407
  %i.dk = insertelement <32 x i32> poison, i32 %i.di, i64 0, !dbg !9409
  %i.dl = shufflevector <32 x i32> %i.dk, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !9409
  %i.dm = icmp uge <32 x i32> %i.dj, %i.dl, !dbg !9410
  %i.dn = bitcast <32 x i1> %i.dm to i32, !dbg !9410
  %i.do = icmp eq i32 %i.dn, 0, !dbg !9410
  br i1 %i.do, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59, !dbg !9411, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !9412
  %.sroa.077.0.copyload78 = load i64, ptr %i.d, align 8, !dbg !9413 ; 2 uses
  %.not53 = icmp eq i64 %.sroa.077.0.copyload78, -9223372036854775803, !dbg !9414
  br i1 %.not53, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59.thread, label %bb.ag, !dbg !9416

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit59.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9417
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !9419
  %i.dp = load i64, ptr %i.j, align 8, !dbg !9417, !range !431, !noundef !13
  %i.dq = trunc nuw i64 %i.dp to i1, !dbg !9420
  br i1 %i.dq, label %bb.aa, label %bb.ae, !dbg !9420

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.aw, i64 128, i1 false), !dbg !9421
  %i.dr = load i64, ptr %i.ax, align 8, !dbg !9422, !noundef !13 ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 33
  br i1 %i.ds, label %bb.ac, label %bb.ab, !dbg !9423, !prof !576

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !9435
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dt = load i64, ptr %i.w, align 8, !dbg !9436, !alias.scope !9438, !noundef !13
  %i.du = trunc i64 %i.dt to i32, !dbg !9441      ; 2 uses
  %.idx = shl nuw nsw i64 %i.dr, 2, !dbg !9443    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !9443 ; 2 uses
  %i.dw = icmp eq i64 %i.dr, 0, !dbg !9448
  br i1 %i.dw, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %.lr.ph184.preheader, !dbg !9451

.lr.ph184.preheader:                              ; preds = %bb.ac
  %i.dx = add nsw i64 %.idx, -4, !dbg !9451       ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 2, !dbg !9451
  %i.dz = add nuw nsw i64 %i.dy, 1, !dbg !9451    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 28, !dbg !9451
  br i1 %min.iters.check, label %.lr.ph184.preheader286, label %vector.ph, !dbg !9451

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.dz, 9223372036854775800     ; 5 uses
  %i.ea = shl i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %i.i, i64 %i.ea
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !9452, !alias.scope !9453, !noalias !9456
  %wide.load266 = load <4 x i32>, ptr %i.ba, align 16, !dbg !9452, !alias.scope !9453, !noalias !9456
  %i.ec = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !9458 ; 2 uses
  %i.ed = icmp ult <4 x i32> %wide.load266, %broadcast.splat, !dbg !9458 ; 2 uses
  %i.ee = icmp eq i64 %n.vec, 8, !dbg !9451
  br i1 %i.ee, label %middle.block, label %vector.body.1, !dbg !9451

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !9452, !alias.scope !9453, !noalias !9456
  %wide.load266.1 = load <4 x i32>, ptr %i.bb, align 16, !dbg !9452, !alias.scope !9453, !noalias !9456
  %i.ef = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !9458
  %i.eg = icmp ult <4 x i32> %wide.load266.1, %broadcast.splat, !dbg !9458
  %i.eh = and <4 x i1> %i.ec, %i.ef, !dbg !9459   ; 2 uses
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !9459   ; 2 uses
  %i.ej = icmp eq i64 %n.vec, 16, !dbg !9451
  br i1 %i.ej, label %middle.block, label %vector.body.2, !dbg !9451

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !9452, !alias.scope !9453, !noalias !9456
  %wide.load266.2 = load <4 x i32>, ptr %i.bc, align 16, !dbg !9452, !alias.scope !9453, !noalias !9456
  %i.ek = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !9458
  %i.el = icmp ult <4 x i32> %wide.load266.2, %broadcast.splat, !dbg !9458
  %i.em = and <4 x i1> %i.eh, %i.ek, !dbg !9459   ; 2 uses
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !9459   ; 2 uses
  %i.eo = icmp eq i64 %n.vec, 24, !dbg !9451
  br i1 %i.eo, label %middle.block, label %vector.body.3, !dbg !9451

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !9452, !alias.scope !9453, !noalias !9456
  %wide.load266.3 = load <4 x i32>, ptr %i.bd, align 16, !dbg !9452, !alias.scope !9453, !noalias !9456
  %i.ep = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !9458
  %i.eq = icmp ult <4 x i32> %wide.load266.3, %broadcast.splat, !dbg !9458
  %i.er = and <4 x i1> %i.em, %i.ep, !dbg !9459
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !9459
  br label %middle.block, !dbg !9451

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa305 = phi <4 x i1> [ %i.ec, %vector.ph ], [ %i.eh, %vector.body.1 ], [ %i.em, %vector.body.2 ], [ %i.er, %vector.body.3 ], !dbg !9459
  %.lcssa304 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !9459
  %bin.rdx = and <4 x i1> %.lcssa304, %.lcssa305, !dbg !9451
  %i.et = bitcast <4 x i1> %bin.rdx to i4, !dbg !9451
  %i.eu = icmp eq i4 %i.et, -1, !dbg !9451        ; 2 uses
  %cmp.n = icmp eq i64 %i.dz, %n.vec, !dbg !9451
  br i1 %cmp.n, label %._crit_edge185, label %.lr.ph184.preheader286, !dbg !9451

.lr.ph184.preheader286:                           ; preds = %.lr.ph184.preheader, %middle.block
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4RSB1E_EBc_:bb.a
  br label %bb.i, !dbg !9550

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9551
  br label %bb.ah, !dbg !9521

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa159 = phi i64 [ %i.ae, %.preheader ], [ %i.am, %bb.f ], !dbg !9541
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9552
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9552
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !9552, !noalias !9531
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9553
  %i.an = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !9552, !noalias !9531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9545, !noalias !9531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9549, !noalias !9531
  store i64 %.lcssa159, ptr %0, align 8, !dbg !9553
  store <2 x i64> %i.an, ptr %.sroa.297.0..sroa_idx, align 8, !dbg !9553
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9553
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.499.0..sroa_idx, align 8, !dbg !9553
  br label %bb.ah, !dbg !9521

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1163, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !9560
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9562
  %i.ao = load i64, ptr %i.v, align 8, !dbg !9563, !range !243, !noundef !13 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2, !dbg !9563
  br i1 %i.ap, label %.outer._crit_edge, label %.lr.ph164.lr.ph, !dbg !9565

.lr.ph164.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph164, !dbg !9565

.lr.ph164:                                        ; preds = %.lr.ph164.lr.ph, %.outer
  %i.bf = phi i64 [ %i.ao, %.lr.ph164.lr.ph ], [ %i.bv, %.outer ]
  %.sroa.0.0.ph182 = phi i64 [ %.sroa.0.2.ph, %.lr.ph164.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !9565

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !9566
  %.sroa.031.0.copyload = load ptr, ptr %i.bg, align 8, !dbg !9566
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !9566
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !9566
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !9566
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !9566
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28, !dbg !9566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.734.0..sroa_idx, i64 12, i1 false), !dbg !9566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !9567
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !9568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9567
  store ptr %.sroa.031.0.copyload, ptr %0, align 8, !dbg !9568
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9568
  store i64 %.sroa.532.0.copyload, ptr %.sroa.236.0..sroa_idx, align 8, !dbg !9568
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9568
  store i32 %.sroa.633.0.copyload, ptr %.sroa.337.0..sroa_idx, align 8, !dbg !9568
  br label %bb.ah, !dbg !9574

bb.j:                                             ; preds = %.lr.ph164, %bb.o
  %i.bh = phi i64 [ %i.bf, %.lr.ph164 ], [ %i.bk, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9576 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !9576 ; 3 uses
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 8, !dbg !9576 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx25, i64 12, i1 false), !dbg !9576
  %.sroa.926.0.copyload = load i64, ptr %.sroa.926.0..sroa_idx, align 8, !dbg !9576 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !9567
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !9577
  br i1 %i.bi, label %bb.k, label %bb.l, !dbg !9577

bb.k:                                             ; preds = %bb.j
  %.not46 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !9578
  br i1 %.not46, label %bb.n, label %bb.m, !dbg !9579

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !9580
  br label %bb.ah, !dbg !9581

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !9582
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !9582
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !9582
  store i32 %.sroa.724.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !9582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9582
  store i64 %.sroa.926.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9582
  %.not47 = icmp eq i64 %.sroa.0.0.ph182, 0, !dbg !9583
  br i1 %.not47, label %bb.s, label %bb.r, !dbg !9583

bb.n:                                             ; preds = %bb.k
  %i.bj = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !9585
  br i1 %i.bj, label %bb.o, label %bb.p, !dbg !9585

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !9560
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9562
  %i.bk = load i64, ptr %i.v, align 8, !dbg !9563, !range !243, !noundef !13 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 2, !dbg !9563
  br i1 %i.bl, label %.outer._crit_edge, label %bb.j, !dbg !9565

bb.p:                                             ; preds = %bb.n
  %i.bm = zext i32 %.sroa.724.0.copyload to i64, !dbg !9587 ; 2 uses
  %i.bn = load i64, ptr %i.x, align 8, !dbg !9589, !alias.scope !9591, !noalias !9596, !noundef !13
  %i.bo = icmp ugt i64 %i.bn, %i.bm, !dbg !9598
  br i1 %i.bo, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit, !dbg !9599

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.w, align 8, !dbg !9601, !alias.scope !9604, !noalias !9607, !nonnull !13, !align !4692, !noundef !13
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.bm, !dbg !9609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false), !dbg !9612
  %i.br = load i64, ptr %i.z, align 8, !dbg !9613, !noundef !13 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 768614336404564651, !dbg !9616
  call void @llvm.assume(i1 %i.bs), !dbg !9618
  %i.bt = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph182, !dbg !9619
  %i.bu = add i64 %i.bt, %i.br, !dbg !9619
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bu, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.u), !dbg !9620
  br label %.outer, !dbg !9620

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9621
  br label %bb.ah, !dbg !9574

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !9560
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9562
  %i.bv = load i64, ptr %i.v, align 8, !dbg !9563, !range !243, !noundef !13 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 2, !dbg !9563
  br i1 %i.bw, label %.outer._crit_edge, label %.lr.ph164, !dbg !9565

bb.r:                                             ; preds = %bb.m
  %i.bx = lshr i64 %.sroa.0.0.ph182, 5, !dbg !9622
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bx), !dbg !9623
  %i.by = and i64 %.sroa.0.0.ph182, 31, !dbg !9624 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !9625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !9625
  store ptr %i.t, ptr %i.r, align 8, !dbg !9625
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !9627
  %i.bz = load i64, ptr %i.s, align 8, !dbg !9625, !range !431, !noundef !13
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !9628
  br i1 %i.ca, label %bb.t, label %thread-pre-split, !dbg !9628

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9629
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9630, !noalias !9638
  br label %bb.s, !dbg !9642

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.cb = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.926.0.copyload, %bb.m ], !dbg !9630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9642
  store ptr %i.t, ptr %i.n, align 8, !dbg !9643
  %i.cc = icmp ult i64 %i.cb, 32, !dbg !9644
  br i1 %i.cc, label %.loopexit, label %.lr.ph175, !dbg !9644

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i64 128, i1 false), !dbg !9645
  %i.cd = load i64, ptr %i.ar, align 8, !dbg !9646, !noundef !13 ; 6 uses
  %i.ce = icmp uge i64 %i.cd, %i.by, !dbg !9647
  %i.cf = icmp ult i64 %i.cd, 33
  %or.cond = and i1 %i.ce, %i.cf, !dbg !9647
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !9647, !prof !576

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.by, i64 noundef %i.cd, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !9656
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by, !dbg !9657 ; 4 uses
  %i.ch = load i64, ptr %i.x, align 8, !dbg !9661, !alias.scope !9664, !noundef !13
  %i.ci = trunc i64 %i.ch to i32, !dbg !9667      ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cd, !dbg !9669 ; 2 uses
  %i.ck = icmp samesign eq i64 %i.by, %i.cd, !dbg !9674
  br i1 %i.ck, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph169.preheader, !dbg !9677

.lr.ph169.preheader:                              ; preds = %bb.v
  %i.cl = shl nuw nsw i64 %i.cd, 2, !dbg !9677
  %6 = add nsw i64 %i.cl, -4, !dbg !9677
  %7 = shl nuw nsw i64 %i.by, 2, !dbg !9677
  %i.cm = sub nsw i64 %6, %7, !dbg !9677          ; 2 uses
  %i.cn = lshr exact i64 %i.cm, 2, !dbg !9677
  %i.co = add nuw nsw i64 %i.cn, 1, !dbg !9677    ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.cm, 28, !dbg !9677
  br i1 %min.iters.check263, label %.lr.ph169.preheader282, label %vector.ph264, !dbg !9677

vector.ph264:                                     ; preds = %.lr.ph169.preheader
  %n.vec265 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cp = shl i64 %n.vec265, 2
  %i.cq = getelementptr i8, ptr %i.cg, i64 %i.cp
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body268, !dbg !9677

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next275, %vector.body268 ] ; 2 uses
  %vec.phi270 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cv, %vector.body268 ]
  %vec.phi271 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cw, %vector.body268 ]
  %i.cr = shl i64 %index269, 2
  %next.gep272 = getelementptr i8, ptr %i.cg, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep272, i64 16, !dbg !9678
  %wide.load273 = load <4 x i32>, ptr %next.gep272, align 4, !dbg !9678, !alias.scope !9679, !noalias !9682
  %wide.load274 = load <4 x i32>, ptr %i.cs, align 4, !dbg !9678, !alias.scope !9679, !noalias !9682
  %i.ct = icmp ult <4 x i32> %wide.load273, %broadcast.splat267, !dbg !9684
  %i.cu = icmp ult <4 x i32> %wide.load274, %broadcast.splat267, !dbg !9684
  %i.cv = and <4 x i1> %vec.phi270, %i.ct, !dbg !9685 ; 2 uses
  %i.cw = and <4 x i1> %vec.phi271, %i.cu, !dbg !9685 ; 2 uses
  %index.next275 = add nuw i64 %index269, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next275, %n.vec265, !dbg !9677
  br i1 %i.cx, label %middle.block276, label %vector.body268, !dbg !9677, !llvm.loop !9686

middle.block276:                                  ; preds = %vector.body268
  %bin.rdx277 = and <4 x i1> %i.cw, %i.cv, !dbg !9677
  %i.cy = bitcast <4 x i1> %bin.rdx277 to i4, !dbg !9677
  %i.cz = icmp eq i4 %i.cy, -1, !dbg !9677        ; 2 uses
  %cmp.n278 = icmp eq i64 %i.co, %n.vec265, !dbg !9677
  br i1 %cmp.n278, label %._crit_edge170, label %.lr.ph169.preheader282, !dbg !9677

.lr.ph169.preheader282:                           ; preds = %.lr.ph169.preheader, %middle.block276
  %.sroa.0.0.i167.ph = phi i1 [ true, %.lr.ph169.preheader ], [ %i.cz, %middle.block276 ]
  %.sroa.02.0.i166.ph = phi ptr [ %i.cg, %.lr.ph169.preheader ], [ %i.cq, %middle.block276 ]
  br label %.lr.ph169, !dbg !9677

.lr.ph169:                                        ; preds = %.lr.ph169.preheader282, %.lr.ph169
  %.sroa.0.0.i167 = phi i1 [ %i.dd, %.lr.ph169 ], [ %.sroa.0.0.i167.ph, %.lr.ph169.preheader282 ]
  %.sroa.02.0.i166 = phi ptr [ %i.da, %.lr.ph169 ], [ %.sroa.02.0.i166.ph, %.lr.ph169.preheader282 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i166, i64 4, !dbg !9687 ; 2 uses
  %i.db = load i32, ptr %.sroa.02.0.i166, align 4, !dbg !9678, !alias.scope !9679, !noalias !9682, !noundef !13
  %i.dc = icmp ult i32 %i.db, %i.ci, !dbg !9684
  %i.dd = and i1 %.sroa.0.0.i167, %i.dc, !dbg !9685 ; 2 uses
  %i.de = icmp eq ptr %i.da, %i.cj, !dbg !9674
  br i1 %i.de, label %._crit_edge170, label %.lr.ph169, !dbg !9677, !llvm.loop !9689

._crit_edge170:                                   ; preds = %.lr.ph169, %middle.block276
  %.lcssa = phi i1 [ %i.cz, %middle.block276 ], [ %i.dd, %.lr.ph169 ], !dbg !9685
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !9690, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge170
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !9691
  %.sroa.068.0.copyload69 = load i64, ptr %i.f, align 8, !dbg !9692 ; 2 uses
  %.not48 = icmp eq i64 %.sroa.068.0.copyload69, -9223372036854775803, !dbg !9693
  br i1 %.not48, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !9696

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !9703
  store i64 %.sroa.068.0.copyload69, ptr %0, align 8, !dbg !9697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9629
  br label %bb.x, !dbg !9704

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge170, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cg, ptr %i.o, align 8, !dbg !9706
  store ptr %i.cj, ptr %i.as, align 8, !dbg !9706
  store ptr %i.w, ptr %i.at, align 8, !dbg !9706
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3X_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !9711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9629
  br label %thread-pre-split, !dbg !9714

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !9715
  br label %bb.ah, !dbg !9574

.lr.ph175:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9716, !noalias !9717
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !9719, !alias.scope !9721, !noalias !9717
  %i.df = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !9724, !noalias !9725
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !9724
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !9726
  br i1 %i.dh, label %bb.z, label %bb.y, !dbg !9726

bb.y:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9728, !noalias !9717
  br label %.loopexit, !dbg !9729

bb.z:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !9731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9728, !noalias !9717
  %i.di = load i64, ptr %i.x, align 8, !dbg !9732, !alias.scope !9735, !noundef !13
  %i.dj = trunc i64 %i.di to i32, !dbg !9738
  %i.dk = load <32 x i32>, ptr %i.m, align 4, !dbg !9740, !alias.scope !9741, !noalias !9744
  %i.dl = insertelement <32 x i32> poison, i32 %i.dj, i64 0, !dbg !9746
  %i.dm = shufflevector <32 x i32> %i.dl, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !9746
  %i.dn = icmp uge <32 x i32> %i.dk, %i.dm, !dbg !9747
  %i.do = bitcast <32 x i1> %i.dn to i32, !dbg !9747
  %i.dp = icmp eq i32 %i.do, 0, !dbg !9747
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56, !dbg !9748, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !9749
  %.sroa.074.0.copyload75 = load i64, ptr %i.d, align 8, !dbg !9750 ; 2 uses
  %.not50 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !9751
  br i1 %.not50, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %bb.ag, !dbg !9753

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9754
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !9756
  %i.dq = load i64, ptr %i.j, align 8, !dbg !9754, !range !431, !noundef !13
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !9757
  br i1 %i.dr, label %bb.aa, label %bb.ae, !dbg !9757

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.ax, i64 128, i1 false), !dbg !9758
  %i.ds = load i64, ptr %i.ay, align 8, !dbg !9759, !noundef !13 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 33
  br i1 %i.dt, label %bb.ac, label %bb.ab, !dbg !9760, !prof !576

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !9772
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.x, align 8, !dbg !9773, !alias.scope !9775, !noundef !13
  %i.dv = trunc i64 %i.du to i32, !dbg !9778      ; 2 uses
  %.idx = shl nuw nsw i64 %i.ds, 2, !dbg !9780    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !9780 ; 2 uses
  %i.dx = icmp eq i64 %i.ds, 0, !dbg !9785
  br i1 %i.dx, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %.lr.ph179.preheader, !dbg !9788

.lr.ph179.preheader:                              ; preds = %bb.ac
  %i.dy = add nsw i64 %.idx, -4, !dbg !9788       ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2, !dbg !9788
  %i.ea = add nuw nsw i64 %i.dz, 1, !dbg !9788    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 28, !dbg !9788
  br i1 %min.iters.check, label %.lr.ph179.preheader281, label %vector.ph, !dbg !9788

vector.ph:                                        ; preds = %.lr.ph179.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 5 uses
  %i.eb = shl i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %i.i, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !9789, !alias.scope !9790, !noalias !9793
  %wide.load261 = load <4 x i32>, ptr %i.bb, align 16, !dbg !9789, !alias.scope !9790, !noalias !9793
  %i.ed = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !9795 ; 2 uses
  %i.ee = icmp ult <4 x i32> %wide.load261, %broadcast.splat, !dbg !9795 ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 8, !dbg !9788
  br i1 %i.ef, label %middle.block, label %vector.body.1, !dbg !9788

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !9789, !alias.scope !9790, !noalias !9793
  %wide.load261.1 = load <4 x i32>, ptr %i.bc, align 16, !dbg !9789, !alias.scope !9790, !noalias !9793
  %i.eg = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !9795
  %i.eh = icmp ult <4 x i32> %wide.load261.1, %broadcast.splat, !dbg !9795
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !9796   ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !9796   ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 16, !dbg !9788
  br i1 %i.ek, label %middle.block, label %vector.body.2, !dbg !9788

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !9789, !alias.scope !9790, !noalias !9793
  %wide.load261.2 = load <4 x i32>, ptr %i.bd, align 16, !dbg !9789, !alias.scope !9790, !noalias !9793
  %i.el = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !9795
  %i.em = icmp ult <4 x i32> %wide.load261.2, %broadcast.splat, !dbg !9795
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !9796   ; 2 uses
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !9796   ; 2 uses
  %i.ep = icmp eq i64 %n.vec, 24, !dbg !9788
  br i1 %i.ep, label %middle.block, label %vector.body.3, !dbg !9788

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !9789, !alias.scope !9790, !noalias !9793
  %wide.load261.3 = load <4 x i32>, ptr %i.be, align 16, !dbg !9789, !alias.scope !9790, !noalias !9793
  %i.eq = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !9795
  %i.er = icmp ult <4 x i32> %wide.load261.3, %broadcast.splat, !dbg !9795
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !9796
  %i.et = and <4 x i1> %i.eo, %i.er, !dbg !9796
  br label %middle.block, !dbg !9788

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa300 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !9796
  %.lcssa299 = phi <4 x i1> [ %i.ee, %vector.ph ], [ %i.ej, %vector.body.1 ], [ %i.eo, %vector.body.2 ], [ %i.et, %vector.body.3 ], !dbg !9796
  %bin.rdx = and <4 x i1> %.lcssa299, %.lcssa300, !dbg !9788
  %i.eu = bitcast <4 x i1> %bin.rdx to i4, !dbg !9788
  %i.ev = icmp eq i4 %i.eu, -1, !dbg !9788        ; 2 uses
  %cmp.n = icmp eq i64 %i.ea, %n.vec, !dbg !9788
  br i1 %cmp.n, label %._crit_edge180, label %.lr.ph179.preheader281, !dbg !9788

.lr.ph179.preheader281:                           ; preds = %.lr.ph179.preheader, %middle.block
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4RSB1E_EBc_:bb.a
  br label %bb.i, !dbg !9887

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9888
  br label %bb.ah, !dbg !9858

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa159 = phi i64 [ %i.ae, %.preheader ], [ %i.am, %bb.f ], !dbg !9878
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9889
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9889
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !9889, !noalias !9868
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9890
  %i.an = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !9889, !noalias !9868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9882, !noalias !9868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9886, !noalias !9868
  store i64 %.lcssa159, ptr %0, align 8, !dbg !9890
  store <2 x i64> %i.an, ptr %.sroa.297.0..sroa_idx, align 8, !dbg !9890
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9890
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.499.0..sroa_idx, align 8, !dbg !9890
  br label %bb.ah, !dbg !9858

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1163, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !9897
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9899
  %i.ao = load i64, ptr %i.v, align 8, !dbg !9900, !range !243, !noundef !13 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2, !dbg !9900
  br i1 %i.ap, label %.outer._crit_edge, label %.lr.ph164.lr.ph, !dbg !9902

.lr.ph164.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph164, !dbg !9902

.lr.ph164:                                        ; preds = %.lr.ph164.lr.ph, %.outer
  %i.bf = phi i64 [ %i.ao, %.lr.ph164.lr.ph ], [ %i.bv, %.outer ]
  %.sroa.0.0.ph182 = phi i64 [ %.sroa.0.2.ph, %.lr.ph164.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !9902

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !9903
  %.sroa.031.0.copyload = load ptr, ptr %i.bg, align 8, !dbg !9903
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !9903
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !9903
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !9903
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !9903
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28, !dbg !9903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.734.0..sroa_idx, i64 12, i1 false), !dbg !9903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !9904
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !9905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9904
  store ptr %.sroa.031.0.copyload, ptr %0, align 8, !dbg !9905
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9905
  store i64 %.sroa.532.0.copyload, ptr %.sroa.236.0..sroa_idx, align 8, !dbg !9905
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9905
  store i32 %.sroa.633.0.copyload, ptr %.sroa.337.0..sroa_idx, align 8, !dbg !9905
  br label %bb.ah, !dbg !9911

bb.j:                                             ; preds = %.lr.ph164, %bb.o
  %i.bh = phi i64 [ %i.bf, %.lr.ph164 ], [ %i.bk, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9913 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !9913 ; 3 uses
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 8, !dbg !9913 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx25, i64 12, i1 false), !dbg !9913
  %.sroa.926.0.copyload = load i64, ptr %.sroa.926.0..sroa_idx, align 8, !dbg !9913 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !9904
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !9914
  br i1 %i.bi, label %bb.k, label %bb.l, !dbg !9914

bb.k:                                             ; preds = %bb.j
  %.not46 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !9915
  br i1 %.not46, label %bb.n, label %bb.m, !dbg !9916

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !9917
  br label %bb.ah, !dbg !9918

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !9919
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !9919
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !9919
  store i32 %.sroa.724.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !9919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !9919
  store i64 %.sroa.926.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9919
  %.not47 = icmp eq i64 %.sroa.0.0.ph182, 0, !dbg !9920
  br i1 %.not47, label %bb.s, label %bb.r, !dbg !9920

bb.n:                                             ; preds = %bb.k
  %i.bj = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !9922
  br i1 %i.bj, label %bb.o, label %bb.p, !dbg !9922

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !9897
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9899
  %i.bk = load i64, ptr %i.v, align 8, !dbg !9900, !range !243, !noundef !13 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 2, !dbg !9900
  br i1 %i.bl, label %.outer._crit_edge, label %bb.j, !dbg !9902

bb.p:                                             ; preds = %bb.n
  %i.bm = zext i32 %.sroa.724.0.copyload to i64, !dbg !9924 ; 2 uses
  %i.bn = load i64, ptr %i.x, align 8, !dbg !9926, !alias.scope !9928, !noalias !9933, !noundef !13
  %i.bo = icmp ugt i64 %i.bn, %i.bm, !dbg !9935
  br i1 %i.bo, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit, !dbg !9936

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.w, align 8, !dbg !9938, !alias.scope !9941, !noalias !9944, !nonnull !13, !align !4692, !noundef !13
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bm, !dbg !9946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false), !dbg !9949
  %i.br = load i64, ptr %i.z, align 8, !dbg !9950, !noundef !13 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 576460752303423488, !dbg !9953
  call void @llvm.assume(i1 %i.bs), !dbg !9955
  %i.bt = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph182, !dbg !9956
  %i.bu = add i64 %i.bt, %i.br, !dbg !9956
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bu, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.u), !dbg !9957
  br label %.outer, !dbg !9957

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1q_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !9958
  br label %bb.ah, !dbg !9911

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !9897
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !9899
  %i.bv = load i64, ptr %i.v, align 8, !dbg !9900, !range !243, !noundef !13 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 2, !dbg !9900
  br i1 %i.bw, label %.outer._crit_edge, label %.lr.ph164, !dbg !9902

bb.r:                                             ; preds = %bb.m
  %i.bx = lshr i64 %.sroa.0.0.ph182, 5, !dbg !9959
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bx), !dbg !9960
  %i.by = and i64 %.sroa.0.0.ph182, 31, !dbg !9961 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !9962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !9962
  store ptr %i.t, ptr %i.r, align 8, !dbg !9962
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !9964
  %i.bz = load i64, ptr %i.s, align 8, !dbg !9962, !range !431, !noundef !13
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !9965
  br i1 %i.ca, label %bb.t, label %thread-pre-split, !dbg !9965

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9966
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !9967, !noalias !9975
  br label %bb.s, !dbg !9979

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.cb = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.926.0.copyload, %bb.m ], !dbg !9967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9979
  store ptr %i.t, ptr %i.n, align 8, !dbg !9980
  %i.cc = icmp ult i64 %i.cb, 32, !dbg !9981
  br i1 %i.cc, label %.loopexit, label %.lr.ph175, !dbg !9981

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i64 128, i1 false), !dbg !9982
  %i.cd = load i64, ptr %i.ar, align 8, !dbg !9983, !noundef !13 ; 6 uses
  %i.ce = icmp uge i64 %i.cd, %i.by, !dbg !9984
  %i.cf = icmp ult i64 %i.cd, 33
  %or.cond = and i1 %i.ce, %i.cf, !dbg !9984
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !9984, !prof !576

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.by, i64 noundef %i.cd, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !9993
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by, !dbg !9994 ; 4 uses
  %i.ch = load i64, ptr %i.x, align 8, !dbg !9998, !alias.scope !10001, !noundef !13
  %i.ci = trunc i64 %i.ch to i32, !dbg !10004     ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cd, !dbg !10006 ; 2 uses
  %i.ck = icmp samesign eq i64 %i.by, %i.cd, !dbg !10011
  br i1 %i.ck, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph169.preheader, !dbg !10014

.lr.ph169.preheader:                              ; preds = %bb.v
  %i.cl = shl nuw nsw i64 %i.cd, 2, !dbg !10014
  %6 = add nsw i64 %i.cl, -4, !dbg !10014
  %7 = shl nuw nsw i64 %i.by, 2, !dbg !10014
  %i.cm = sub nsw i64 %6, %7, !dbg !10014         ; 2 uses
  %i.cn = lshr exact i64 %i.cm, 2, !dbg !10014
  %i.co = add nuw nsw i64 %i.cn, 1, !dbg !10014   ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.cm, 28, !dbg !10014
  br i1 %min.iters.check263, label %.lr.ph169.preheader282, label %vector.ph264, !dbg !10014

vector.ph264:                                     ; preds = %.lr.ph169.preheader
  %n.vec265 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cp = shl i64 %n.vec265, 2
  %i.cq = getelementptr i8, ptr %i.cg, i64 %i.cp
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body268, !dbg !10014

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next275, %vector.body268 ] ; 2 uses
  %vec.phi270 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cv, %vector.body268 ]
  %vec.phi271 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cw, %vector.body268 ]
  %i.cr = shl i64 %index269, 2
  %next.gep272 = getelementptr i8, ptr %i.cg, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep272, i64 16, !dbg !10015
  %wide.load273 = load <4 x i32>, ptr %next.gep272, align 4, !dbg !10015, !alias.scope !10016, !noalias !10019
  %wide.load274 = load <4 x i32>, ptr %i.cs, align 4, !dbg !10015, !alias.scope !10016, !noalias !10019
  %i.ct = icmp ult <4 x i32> %wide.load273, %broadcast.splat267, !dbg !10021
  %i.cu = icmp ult <4 x i32> %wide.load274, %broadcast.splat267, !dbg !10021
  %i.cv = and <4 x i1> %vec.phi270, %i.ct, !dbg !10022 ; 2 uses
  %i.cw = and <4 x i1> %vec.phi271, %i.cu, !dbg !10022 ; 2 uses
  %index.next275 = add nuw i64 %index269, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next275, %n.vec265, !dbg !10014
  br i1 %i.cx, label %middle.block276, label %vector.body268, !dbg !10014, !llvm.loop !10023

middle.block276:                                  ; preds = %vector.body268
  %bin.rdx277 = and <4 x i1> %i.cw, %i.cv, !dbg !10014
  %i.cy = bitcast <4 x i1> %bin.rdx277 to i4, !dbg !10014
  %i.cz = icmp eq i4 %i.cy, -1, !dbg !10014       ; 2 uses
  %cmp.n278 = icmp eq i64 %i.co, %n.vec265, !dbg !10014
  br i1 %cmp.n278, label %._crit_edge170, label %.lr.ph169.preheader282, !dbg !10014

.lr.ph169.preheader282:                           ; preds = %.lr.ph169.preheader, %middle.block276
  %.sroa.0.0.i167.ph = phi i1 [ true, %.lr.ph169.preheader ], [ %i.cz, %middle.block276 ]
  %.sroa.02.0.i166.ph = phi ptr [ %i.cg, %.lr.ph169.preheader ], [ %i.cq, %middle.block276 ]
  br label %.lr.ph169, !dbg !10014

.lr.ph169:                                        ; preds = %.lr.ph169.preheader282, %.lr.ph169
  %.sroa.0.0.i167 = phi i1 [ %i.dd, %.lr.ph169 ], [ %.sroa.0.0.i167.ph, %.lr.ph169.preheader282 ]
  %.sroa.02.0.i166 = phi ptr [ %i.da, %.lr.ph169 ], [ %.sroa.02.0.i166.ph, %.lr.ph169.preheader282 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i166, i64 4, !dbg !10024 ; 2 uses
  %i.db = load i32, ptr %.sroa.02.0.i166, align 4, !dbg !10015, !alias.scope !10016, !noalias !10019, !noundef !13
  %i.dc = icmp ult i32 %i.db, %i.ci, !dbg !10021
  %i.dd = and i1 %.sroa.0.0.i167, %i.dc, !dbg !10022 ; 2 uses
  %i.de = icmp eq ptr %i.da, %i.cj, !dbg !10011
  br i1 %i.de, label %._crit_edge170, label %.lr.ph169, !dbg !10014, !llvm.loop !10026

._crit_edge170:                                   ; preds = %.lr.ph169, %middle.block276
  %.lcssa = phi i1 [ %i.cz, %middle.block276 ], [ %i.dd, %.lr.ph169 ], !dbg !10022
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !10027, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge170
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !10028
  %.sroa.068.0.copyload69 = load i64, ptr %i.f, align 8, !dbg !10029 ; 2 uses
  %.not48 = icmp eq i64 %.sroa.068.0.copyload69, -9223372036854775803, !dbg !10030
  br i1 %.not48, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !10033

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !10040
  store i64 %.sroa.068.0.copyload69, ptr %0, align 8, !dbg !10034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !9966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !9966
  br label %bb.x, !dbg !10041

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge170, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cg, ptr %i.o, align 8, !dbg !10043
  store ptr %i.cj, ptr %i.as, align 8, !dbg !10043
  store ptr %i.w, ptr %i.at, align 8, !dbg !10043
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes16Alignment4EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3X_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !10048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !9966
  br label %thread-pre-split, !dbg !10051

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10052
  br label %bb.ah, !dbg !9911

.lr.ph175:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10053, !noalias !10054
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !10056, !alias.scope !10058, !noalias !10054
  %i.df = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !10061, !noalias !10062
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !10061
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !10063
  br i1 %i.dh, label %bb.z, label %bb.y, !dbg !10063

bb.y:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10065, !noalias !10054
  br label %.loopexit, !dbg !10066

bb.z:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !10068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10065, !noalias !10054
  %i.di = load i64, ptr %i.x, align 8, !dbg !10069, !alias.scope !10072, !noundef !13
  %i.dj = trunc i64 %i.di to i32, !dbg !10075
  %i.dk = load <32 x i32>, ptr %i.m, align 4, !dbg !10077, !alias.scope !10078, !noalias !10081
  %i.dl = insertelement <32 x i32> poison, i32 %i.dj, i64 0, !dbg !10083
  %i.dm = shufflevector <32 x i32> %i.dl, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !10083
  %i.dn = icmp uge <32 x i32> %i.dk, %i.dm, !dbg !10084
  %i.do = bitcast <32 x i1> %i.dn to i32, !dbg !10084
  %i.dp = icmp eq i32 %i.do, 0, !dbg !10084
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56, !dbg !10085, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !10086
  %.sroa.074.0.copyload75 = load i64, ptr %i.d, align 8, !dbg !10087 ; 2 uses
  %.not50 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !10088
  br i1 %.not50, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %bb.ag, !dbg !10090

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10091
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !10093
  %i.dq = load i64, ptr %i.j, align 8, !dbg !10091, !range !431, !noundef !13
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !10094
  br i1 %i.dr, label %bb.aa, label %bb.ae, !dbg !10094

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.ax, i64 128, i1 false), !dbg !10095
  %i.ds = load i64, ptr %i.ay, align 8, !dbg !10096, !noundef !13 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 33
  br i1 %i.dt, label %bb.ac, label %bb.ab, !dbg !10097, !prof !576

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !10109
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.x, align 8, !dbg !10110, !alias.scope !10112, !noundef !13
  %i.dv = trunc i64 %i.du to i32, !dbg !10115     ; 2 uses
  %.idx = shl nuw nsw i64 %i.ds, 2, !dbg !10117   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !10117 ; 2 uses
  %i.dx = icmp eq i64 %i.ds, 0, !dbg !10122
  br i1 %i.dx, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %.lr.ph179.preheader, !dbg !10125

.lr.ph179.preheader:                              ; preds = %bb.ac
  %i.dy = add nsw i64 %.idx, -4, !dbg !10125      ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2, !dbg !10125
  %i.ea = add nuw nsw i64 %i.dz, 1, !dbg !10125   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 28, !dbg !10125
  br i1 %min.iters.check, label %.lr.ph179.preheader281, label %vector.ph, !dbg !10125

vector.ph:                                        ; preds = %.lr.ph179.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 5 uses
  %i.eb = shl i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %i.i, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !10126, !alias.scope !10127, !noalias !10130
  %wide.load261 = load <4 x i32>, ptr %i.bb, align 16, !dbg !10126, !alias.scope !10127, !noalias !10130
  %i.ed = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !10132 ; 2 uses
  %i.ee = icmp ult <4 x i32> %wide.load261, %broadcast.splat, !dbg !10132 ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 8, !dbg !10125
  br i1 %i.ef, label %middle.block, label %vector.body.1, !dbg !10125

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !10126, !alias.scope !10127, !noalias !10130
  %wide.load261.1 = load <4 x i32>, ptr %i.bc, align 16, !dbg !10126, !alias.scope !10127, !noalias !10130
  %i.eg = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !10132
  %i.eh = icmp ult <4 x i32> %wide.load261.1, %broadcast.splat, !dbg !10132
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !10133  ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !10133  ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 16, !dbg !10125
  br i1 %i.ek, label %middle.block, label %vector.body.2, !dbg !10125

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !10126, !alias.scope !10127, !noalias !10130
  %wide.load261.2 = load <4 x i32>, ptr %i.bd, align 16, !dbg !10126, !alias.scope !10127, !noalias !10130
  %i.el = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !10132
  %i.em = icmp ult <4 x i32> %wide.load261.2, %broadcast.splat, !dbg !10132
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !10133  ; 2 uses
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !10133  ; 2 uses
  %i.ep = icmp eq i64 %n.vec, 24, !dbg !10125
  br i1 %i.ep, label %middle.block, label %vector.body.3, !dbg !10125

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !10126, !alias.scope !10127, !noalias !10130
  %wide.load261.3 = load <4 x i32>, ptr %i.be, align 16, !dbg !10126, !alias.scope !10127, !noalias !10130
  %i.eq = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !10132
  %i.er = icmp ult <4 x i32> %wide.load261.3, %broadcast.splat, !dbg !10132
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !10133
  %i.et = and <4 x i1> %i.eo, %i.er, !dbg !10133
  br label %middle.block, !dbg !10125

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa300 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !10133
  %.lcssa299 = phi <4 x i1> [ %i.ee, %vector.ph ], [ %i.ej, %vector.body.1 ], [ %i.eo, %vector.body.2 ], [ %i.et, %vector.body.3 ], !dbg !10133
  %bin.rdx = and <4 x i1> %.lcssa299, %.lcssa300, !dbg !10125
  %i.eu = bitcast <4 x i1> %bin.rdx to i4, !dbg !10125
  %i.ev = icmp eq i4 %i.eu, -1, !dbg !10125       ; 2 uses
  %cmp.n = icmp eq i64 %i.ea, %n.vec, !dbg !10125
  br i1 %cmp.n, label %._crit_edge180, label %.lr.ph179.preheader281, !dbg !10125

.lr.ph179.preheader281:                           ; preds = %.lr.ph179.preheader, %middle.block
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16RSB1E_EBc_:bb.a
  br label %bb.i, !dbg !10224

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10225
  br label %bb.ah, !dbg !10195

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa159 = phi i64 [ %i.ae, %.preheader ], [ %i.am, %bb.f ], !dbg !10215
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10226
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10226
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !10226, !noalias !10205
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10227
  %i.an = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !10226, !noalias !10205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10219, !noalias !10205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10223, !noalias !10205
  store i64 %.lcssa159, ptr %0, align 8, !dbg !10227
  store <2 x i64> %i.an, ptr %.sroa.297.0..sroa_idx, align 8, !dbg !10227
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10227
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.499.0..sroa_idx, align 8, !dbg !10227
  br label %bb.ah, !dbg !10195

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1163, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10234
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10236
  %i.ao = load i64, ptr %i.v, align 8, !dbg !10237, !range !243, !noundef !13 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2, !dbg !10237
  br i1 %i.ap, label %.outer._crit_edge, label %.lr.ph164.lr.ph, !dbg !10239

.lr.ph164.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph164, !dbg !10239

.lr.ph164:                                        ; preds = %.lr.ph164.lr.ph, %.outer
  %i.bf = phi i64 [ %i.ao, %.lr.ph164.lr.ph ], [ %i.bv, %.outer ]
  %.sroa.0.0.ph182 = phi i64 [ %.sroa.0.2.ph, %.lr.ph164.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !10239

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !10240
  %.sroa.031.0.copyload = load ptr, ptr %i.bg, align 8, !dbg !10240
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !10240
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !10240
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !10240
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !10240
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28, !dbg !10240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.734.0..sroa_idx, i64 12, i1 false), !dbg !10240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10241
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !10242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10241
  store ptr %.sroa.031.0.copyload, ptr %0, align 8, !dbg !10242
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10242
  store i64 %.sroa.532.0.copyload, ptr %.sroa.236.0..sroa_idx, align 8, !dbg !10242
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10242
  store i32 %.sroa.633.0.copyload, ptr %.sroa.337.0..sroa_idx, align 8, !dbg !10242
  br label %bb.ah, !dbg !10248

bb.j:                                             ; preds = %.lr.ph164, %bb.o
  %i.bh = phi i64 [ %i.bf, %.lr.ph164 ], [ %i.bk, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10250 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10250 ; 3 uses
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 8, !dbg !10250 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx25, i64 12, i1 false), !dbg !10250
  %.sroa.926.0.copyload = load i64, ptr %.sroa.926.0..sroa_idx, align 8, !dbg !10250 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10241
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !10251
  br i1 %i.bi, label %bb.k, label %bb.l, !dbg !10251

bb.k:                                             ; preds = %bb.j
  %.not46 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !10252
  br i1 %.not46, label %bb.n, label %bb.m, !dbg !10253

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !10254
  br label %bb.ah, !dbg !10255

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !10256
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !10256
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10256
  store i32 %.sroa.724.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !10256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10256
  store i64 %.sroa.926.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10256
  %.not47 = icmp eq i64 %.sroa.0.0.ph182, 0, !dbg !10257
  br i1 %.not47, label %bb.s, label %bb.r, !dbg !10257

bb.n:                                             ; preds = %bb.k
  %i.bj = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !10259
  br i1 %i.bj, label %bb.o, label %bb.p, !dbg !10259

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10234
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10236
  %i.bk = load i64, ptr %i.v, align 8, !dbg !10237, !range !243, !noundef !13 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 2, !dbg !10237
  br i1 %i.bl, label %.outer._crit_edge, label %bb.j, !dbg !10239

bb.p:                                             ; preds = %bb.n
  %i.bm = zext i32 %.sroa.724.0.copyload to i64, !dbg !10261 ; 2 uses
  %i.bn = load i64, ptr %i.x, align 8, !dbg !10263, !alias.scope !10265, !noalias !10270, !noundef !13
  %i.bo = icmp ugt i64 %i.bn, %i.bm, !dbg !10272
  br i1 %i.bo, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit, !dbg !10273

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.w, align 8, !dbg !10275, !alias.scope !10278, !noalias !10281, !nonnull !13, !align !6456, !noundef !13
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bm, !dbg !10283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) %i.bq, i64 16, i1 false), !dbg !10286
  %i.br = load i64, ptr %i.z, align 8, !dbg !10287, !noundef !13 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 576460752303423488, !dbg !10290
  call void @llvm.assume(i1 %i.bs), !dbg !10292
  %i.bt = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph182, !dbg !10293
  %i.bu = add i64 %i.bt, %i.br, !dbg !10293
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bu, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(16) %i.u), !dbg !10294
  br label %.outer, !dbg !10294

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10295
  br label %bb.ah, !dbg !10248

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10234
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10236
  %i.bv = load i64, ptr %i.v, align 8, !dbg !10237, !range !243, !noundef !13 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 2, !dbg !10237
  br i1 %i.bw, label %.outer._crit_edge, label %.lr.ph164, !dbg !10239

bb.r:                                             ; preds = %bb.m
  %i.bx = lshr i64 %.sroa.0.0.ph182, 5, !dbg !10296
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bx), !dbg !10297
  %i.by = and i64 %.sroa.0.0.ph182, 31, !dbg !10298 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !10299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !10299
  store ptr %i.t, ptr %i.r, align 8, !dbg !10299
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !10301
  %i.bz = load i64, ptr %i.s, align 8, !dbg !10299, !range !431, !noundef !13
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !10302
  br i1 %i.ca, label %bb.t, label %thread-pre-split, !dbg !10302

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10303
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10304, !noalias !10312
  br label %bb.s, !dbg !10316

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.cb = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.926.0.copyload, %bb.m ], !dbg !10304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10316
  store ptr %i.t, ptr %i.n, align 8, !dbg !10317
  %i.cc = icmp ult i64 %i.cb, 32, !dbg !10318
  br i1 %i.cc, label %.loopexit, label %.lr.ph175, !dbg !10318

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !10319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i64 128, i1 false), !dbg !10319
  %i.cd = load i64, ptr %i.ar, align 8, !dbg !10320, !noundef !13 ; 6 uses
  %i.ce = icmp uge i64 %i.cd, %i.by, !dbg !10321
  %i.cf = icmp ult i64 %i.cd, 33
  %or.cond = and i1 %i.ce, %i.cf, !dbg !10321
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !10321, !prof !576

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.by, i64 noundef %i.cd, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !10330
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by, !dbg !10331 ; 4 uses
  %i.ch = load i64, ptr %i.x, align 8, !dbg !10335, !alias.scope !10338, !noundef !13
  %i.ci = trunc i64 %i.ch to i32, !dbg !10341     ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cd, !dbg !10343 ; 2 uses
  %i.ck = icmp samesign eq i64 %i.by, %i.cd, !dbg !10348
  br i1 %i.ck, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph169.preheader, !dbg !10351

.lr.ph169.preheader:                              ; preds = %bb.v
  %i.cl = shl nuw nsw i64 %i.cd, 2, !dbg !10351
  %6 = add nsw i64 %i.cl, -4, !dbg !10351
  %7 = shl nuw nsw i64 %i.by, 2, !dbg !10351
  %i.cm = sub nsw i64 %6, %7, !dbg !10351         ; 2 uses
  %i.cn = lshr exact i64 %i.cm, 2, !dbg !10351
  %i.co = add nuw nsw i64 %i.cn, 1, !dbg !10351   ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.cm, 28, !dbg !10351
  br i1 %min.iters.check263, label %.lr.ph169.preheader282, label %vector.ph264, !dbg !10351

vector.ph264:                                     ; preds = %.lr.ph169.preheader
  %n.vec265 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cp = shl i64 %n.vec265, 2
  %i.cq = getelementptr i8, ptr %i.cg, i64 %i.cp
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body268, !dbg !10351

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next275, %vector.body268 ] ; 2 uses
  %vec.phi270 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cv, %vector.body268 ]
  %vec.phi271 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cw, %vector.body268 ]
  %i.cr = shl i64 %index269, 2
  %next.gep272 = getelementptr i8, ptr %i.cg, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep272, i64 16, !dbg !10352
  %wide.load273 = load <4 x i32>, ptr %next.gep272, align 4, !dbg !10352, !alias.scope !10353, !noalias !10356
  %wide.load274 = load <4 x i32>, ptr %i.cs, align 4, !dbg !10352, !alias.scope !10353, !noalias !10356
  %i.ct = icmp ult <4 x i32> %wide.load273, %broadcast.splat267, !dbg !10358
  %i.cu = icmp ult <4 x i32> %wide.load274, %broadcast.splat267, !dbg !10358
  %i.cv = and <4 x i1> %vec.phi270, %i.ct, !dbg !10359 ; 2 uses
  %i.cw = and <4 x i1> %vec.phi271, %i.cu, !dbg !10359 ; 2 uses
  %index.next275 = add nuw i64 %index269, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next275, %n.vec265, !dbg !10351
  br i1 %i.cx, label %middle.block276, label %vector.body268, !dbg !10351, !llvm.loop !10360

middle.block276:                                  ; preds = %vector.body268
  %bin.rdx277 = and <4 x i1> %i.cw, %i.cv, !dbg !10351
  %i.cy = bitcast <4 x i1> %bin.rdx277 to i4, !dbg !10351
  %i.cz = icmp eq i4 %i.cy, -1, !dbg !10351       ; 2 uses
  %cmp.n278 = icmp eq i64 %i.co, %n.vec265, !dbg !10351
  br i1 %cmp.n278, label %._crit_edge170, label %.lr.ph169.preheader282, !dbg !10351

.lr.ph169.preheader282:                           ; preds = %.lr.ph169.preheader, %middle.block276
  %.sroa.0.0.i167.ph = phi i1 [ true, %.lr.ph169.preheader ], [ %i.cz, %middle.block276 ]
  %.sroa.02.0.i166.ph = phi ptr [ %i.cg, %.lr.ph169.preheader ], [ %i.cq, %middle.block276 ]
  br label %.lr.ph169, !dbg !10351

.lr.ph169:                                        ; preds = %.lr.ph169.preheader282, %.lr.ph169
  %.sroa.0.0.i167 = phi i1 [ %i.dd, %.lr.ph169 ], [ %.sroa.0.0.i167.ph, %.lr.ph169.preheader282 ]
  %.sroa.02.0.i166 = phi ptr [ %i.da, %.lr.ph169 ], [ %.sroa.02.0.i166.ph, %.lr.ph169.preheader282 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i166, i64 4, !dbg !10361 ; 2 uses
  %i.db = load i32, ptr %.sroa.02.0.i166, align 4, !dbg !10352, !alias.scope !10353, !noalias !10356, !noundef !13
  %i.dc = icmp ult i32 %i.db, %i.ci, !dbg !10358
  %i.dd = and i1 %.sroa.0.0.i167, %i.dc, !dbg !10359 ; 2 uses
  %i.de = icmp eq ptr %i.da, %i.cj, !dbg !10348
  br i1 %i.de, label %._crit_edge170, label %.lr.ph169, !dbg !10351, !llvm.loop !10363

._crit_edge170:                                   ; preds = %.lr.ph169, %middle.block276
  %.lcssa = phi i1 [ %i.cz, %middle.block276 ], [ %i.dd, %.lr.ph169 ], !dbg !10359
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !10364, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge170
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !10365
  %.sroa.068.0.copyload69 = load i64, ptr %i.f, align 8, !dbg !10366 ; 2 uses
  %.not48 = icmp eq i64 %.sroa.068.0.copyload69, -9223372036854775803, !dbg !10367
  br i1 %.not48, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !10370

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !10377
  store i64 %.sroa.068.0.copyload69, ptr %0, align 8, !dbg !10371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10303
  br label %bb.x, !dbg !10378

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge170, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cg, ptr %i.o, align 8, !dbg !10380
  store ptr %i.cj, ptr %i.as, align 8, !dbg !10380
  store ptr %i.w, ptr %i.at, align 8, !dbg !10380
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !10385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10303
  br label %thread-pre-split, !dbg !10388

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10389
  br label %bb.ah, !dbg !10248

.lr.ph175:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10390, !noalias !10391
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !10393, !alias.scope !10395, !noalias !10391
  %i.df = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !10398, !noalias !10399
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !10398
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !10400
  br i1 %i.dh, label %bb.z, label %bb.y, !dbg !10400

bb.y:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10402, !noalias !10391
  br label %.loopexit, !dbg !10403

bb.z:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !10405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10402, !noalias !10391
  %i.di = load i64, ptr %i.x, align 8, !dbg !10406, !alias.scope !10409, !noundef !13
  %i.dj = trunc i64 %i.di to i32, !dbg !10412
  %i.dk = load <32 x i32>, ptr %i.m, align 4, !dbg !10414, !alias.scope !10415, !noalias !10418
  %i.dl = insertelement <32 x i32> poison, i32 %i.dj, i64 0, !dbg !10420
  %i.dm = shufflevector <32 x i32> %i.dl, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !10420
  %i.dn = icmp uge <32 x i32> %i.dk, %i.dm, !dbg !10421
  %i.do = bitcast <32 x i1> %i.dn to i32, !dbg !10421
  %i.dp = icmp eq i32 %i.do, 0, !dbg !10421
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56, !dbg !10422, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !10423
  %.sroa.074.0.copyload75 = load i64, ptr %i.d, align 8, !dbg !10424 ; 2 uses
  %.not50 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !10425
  br i1 %.not50, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %bb.ag, !dbg !10427

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10428
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !10430
  %i.dq = load i64, ptr %i.j, align 8, !dbg !10428, !range !431, !noundef !13
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !10431
  br i1 %i.dr, label %bb.aa, label %bb.ae, !dbg !10431

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.ax, i64 128, i1 false), !dbg !10432
  %i.ds = load i64, ptr %i.ay, align 8, !dbg !10433, !noundef !13 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 33
  br i1 %i.dt, label %bb.ac, label %bb.ab, !dbg !10434, !prof !576

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !10446
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.x, align 8, !dbg !10447, !alias.scope !10449, !noundef !13
  %i.dv = trunc i64 %i.du to i32, !dbg !10452     ; 2 uses
  %.idx = shl nuw nsw i64 %i.ds, 2, !dbg !10454   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !10454 ; 2 uses
  %i.dx = icmp eq i64 %i.ds, 0, !dbg !10459
  br i1 %i.dx, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %.lr.ph179.preheader, !dbg !10462

.lr.ph179.preheader:                              ; preds = %bb.ac
  %i.dy = add nsw i64 %.idx, -4, !dbg !10462      ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2, !dbg !10462
  %i.ea = add nuw nsw i64 %i.dz, 1, !dbg !10462   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 28, !dbg !10462
  br i1 %min.iters.check, label %.lr.ph179.preheader281, label %vector.ph, !dbg !10462

vector.ph:                                        ; preds = %.lr.ph179.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 5 uses
  %i.eb = shl i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %i.i, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !10463, !alias.scope !10464, !noalias !10467
  %wide.load261 = load <4 x i32>, ptr %i.bb, align 16, !dbg !10463, !alias.scope !10464, !noalias !10467
  %i.ed = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !10469 ; 2 uses
  %i.ee = icmp ult <4 x i32> %wide.load261, %broadcast.splat, !dbg !10469 ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 8, !dbg !10462
  br i1 %i.ef, label %middle.block, label %vector.body.1, !dbg !10462

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !10463, !alias.scope !10464, !noalias !10467
  %wide.load261.1 = load <4 x i32>, ptr %i.bc, align 16, !dbg !10463, !alias.scope !10464, !noalias !10467
  %i.eg = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !10469
  %i.eh = icmp ult <4 x i32> %wide.load261.1, %broadcast.splat, !dbg !10469
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !10470  ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !10470  ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 16, !dbg !10462
  br i1 %i.ek, label %middle.block, label %vector.body.2, !dbg !10462

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !10463, !alias.scope !10464, !noalias !10467
  %wide.load261.2 = load <4 x i32>, ptr %i.bd, align 16, !dbg !10463, !alias.scope !10464, !noalias !10467
  %i.el = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !10469
  %i.em = icmp ult <4 x i32> %wide.load261.2, %broadcast.splat, !dbg !10469
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !10470  ; 2 uses
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !10470  ; 2 uses
  %i.ep = icmp eq i64 %n.vec, 24, !dbg !10462
  br i1 %i.ep, label %middle.block, label %vector.body.3, !dbg !10462

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !10463, !alias.scope !10464, !noalias !10467
  %wide.load261.3 = load <4 x i32>, ptr %i.be, align 16, !dbg !10463, !alias.scope !10464, !noalias !10467
  %i.eq = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !10469
  %i.er = icmp ult <4 x i32> %wide.load261.3, %broadcast.splat, !dbg !10469
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !10470
  %i.et = and <4 x i1> %i.eo, %i.er, !dbg !10470
  br label %middle.block, !dbg !10462

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa300 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !10470
  %.lcssa299 = phi <4 x i1> [ %i.ee, %vector.ph ], [ %i.ej, %vector.body.1 ], [ %i.eo, %vector.body.2 ], [ %i.et, %vector.body.3 ], !dbg !10470
  %bin.rdx = and <4 x i1> %.lcssa299, %.lcssa300, !dbg !10462
  %i.eu = bitcast <4 x i1> %bin.rdx to i4, !dbg !10462
  %i.ev = icmp eq i4 %i.eu, -1, !dbg !10462       ; 2 uses
  %cmp.n = icmp eq i64 %i.ea, %n.vec, !dbg !10462
  br i1 %cmp.n, label %._crit_edge180, label %.lr.ph179.preheader281, !dbg !10462

.lr.ph179.preheader281:                           ; preds = %.lr.ph179.preheader, %middle.block
end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16RSB1E_EBc_:bb.a
  br label %bb.i, !dbg !10561

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10562
  br label %bb.ah, !dbg !10532

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa159 = phi i64 [ %i.ae, %.preheader ], [ %i.am, %bb.f ], !dbg !10552
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10563
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10563
  %.sroa.717.0.copyload.i = load i64, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !10563, !noalias !10542
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10564
  %i.an = load <2 x i64>, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !10563, !noalias !10542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10556, !noalias !10542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10560, !noalias !10542
  store i64 %.lcssa159, ptr %0, align 8, !dbg !10564
  store <2 x i64> %i.an, ptr %.sroa.297.0..sroa_idx, align 8, !dbg !10564
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10564
  store i64 %.sroa.717.0.copyload.i, ptr %.sroa.499.0..sroa_idx, align 8, !dbg !10564
  br label %bb.ah, !dbg !10532

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sroa.0.2.ph = phi i64 [ 0, %bb.d ], [ %.sroa.0.1163, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10571
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10573
  %i.ao = load i64, ptr %i.v, align 8, !dbg !10574, !range !243, !noundef !13 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2, !dbg !10574
  br i1 %i.ap, label %.outer._crit_edge, label %.lr.ph164.lr.ph, !dbg !10576

.lr.ph164.lr.ph:                                  ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %.lr.ph164, !dbg !10576

.lr.ph164:                                        ; preds = %.lr.ph164.lr.ph, %.outer
  %i.bf = phi i64 [ %i.ao, %.lr.ph164.lr.ph ], [ %i.bv, %.outer ]
  %.sroa.0.0.ph182 = phi i64 [ %.sroa.0.2.ph, %.lr.ph164.lr.ph ], [ 0, %.outer ] ; 4 uses
  br label %bb.j, !dbg !10576

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !10577
  %.sroa.031.0.copyload = load ptr, ptr %i.bg, align 8, !dbg !10577
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !10577
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !10577
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !10577
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !10577
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28, !dbg !10577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.734.0..sroa_idx, i64 12, i1 false), !dbg !10577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10578
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !10579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10578
  store ptr %.sroa.031.0.copyload, ptr %0, align 8, !dbg !10579
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10579
  store i64 %.sroa.532.0.copyload, ptr %.sroa.236.0..sroa_idx, align 8, !dbg !10579
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10579
  store i32 %.sroa.633.0.copyload, ptr %.sroa.337.0..sroa_idx, align 8, !dbg !10579
  br label %bb.ah, !dbg !10585

bb.j:                                             ; preds = %.lr.ph164, %bb.o
  %i.bh = phi i64 [ %i.bf, %.lr.ph164 ], [ %i.bk, %bb.o ]
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10587 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10587 ; 3 uses
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 8, !dbg !10587 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx25, i64 12, i1 false), !dbg !10587
  %.sroa.926.0.copyload = load i64, ptr %.sroa.926.0..sroa_idx, align 8, !dbg !10587 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10578
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !10588
  br i1 %i.bi, label %bb.k, label %bb.l, !dbg !10588

bb.k:                                             ; preds = %bb.j
  %.not46 = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !10589
  br i1 %.not46, label %bb.n, label %bb.m, !dbg !10590

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !10591
  br label %bb.ah, !dbg !10592

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !10593
  store ptr %.sroa.5.0.copyload, ptr %i.t, align 8, !dbg !10593
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10593
  store i32 %.sroa.724.0.copyload, ptr %.sroa.89.0..sroa_idx, align 8, !dbg !10593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.sroa.11, i64 12, i1 false), !dbg !10593
  store i64 %.sroa.926.0.copyload, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10593
  %.not47 = icmp eq i64 %.sroa.0.0.ph182, 0, !dbg !10594
  br i1 %.not47, label %bb.s, label %bb.r, !dbg !10594

bb.n:                                             ; preds = %bb.k
  %i.bj = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !10596
  br i1 %i.bj, label %bb.o, label %bb.p, !dbg !10596

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10571
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10573
  %i.bk = load i64, ptr %i.v, align 8, !dbg !10574, !range !243, !noundef !13 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 2, !dbg !10574
  br i1 %i.bl, label %.outer._crit_edge, label %bb.j, !dbg !10576

bb.p:                                             ; preds = %bb.n
  %i.bm = zext i32 %.sroa.724.0.copyload to i64, !dbg !10598 ; 2 uses
  %i.bn = load i64, ptr %i.x, align 8, !dbg !10600, !alias.scope !10602, !noalias !10607, !noundef !13
  %i.bo = icmp ugt i64 %i.bn, %i.bm, !dbg !10609
  br i1 %i.bo, label %bb.q, label %_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit, !dbg !10610

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.w, align 8, !dbg !10612, !alias.scope !10615, !noalias !10618, !nonnull !13, !align !6456, !noundef !13
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bm, !dbg !10620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.u, ptr noundef nonnull align 16 dereferenceable(32) %i.bq, i64 32, i1 false), !dbg !10623
  %i.br = load i64, ptr %i.z, align 8, !dbg !10624, !noundef !13 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 288230376151711744, !dbg !10627
  call void @llvm.assume(i1 %i.bs), !dbg !10629
  %i.bt = sub i64 %.sroa.6.0.copyload, %.sroa.0.0.ph182, !dbg !10630
  %i.bu = add i64 %i.bt, %i.br, !dbg !10630
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16E6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bu, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.u), !dbg !10631
  br label %.outer, !dbg !10631

_RNvYRSNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12IndexMapping3getB1r_.exit: ; preds = %bb.p
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0), !dbg !10632
  br label %bb.ah, !dbg !10585

.outer:                                           ; preds = %bb.q, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !10571
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !10573
  %i.bv = load i64, ptr %i.v, align 8, !dbg !10574, !range !243, !noundef !13 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 2, !dbg !10574
  br i1 %i.bw, label %.outer._crit_edge, label %.lr.ph164, !dbg !10576

bb.r:                                             ; preds = %bb.m
  %i.bx = lshr i64 %.sroa.0.0.ph182, 5, !dbg !10633
  call void @_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodermE11skip_chunksBd_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.bx), !dbg !10634
  %i.by = and i64 %.sroa.0.0.ph182, 31, !dbg !10635 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !10636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !10636
  store ptr %i.t, ptr %i.r, align 8, !dbg !10636
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE12next_inexactBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r), !dbg !10638
  %i.bz = load i64, ptr %i.s, align 8, !dbg !10636, !range !431, !noundef !13
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !10639
  br i1 %i.ca, label %bb.t, label %thread-pre-split, !dbg !10639

thread-pre-split:                                 ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10640
  %.pr = load i64, ptr %.sroa.911.0..sroa_idx, align 8, !dbg !10641, !noalias !10649
  br label %bb.s, !dbg !10653

bb.s:                                             ; preds = %thread-pre-split, %bb.m
  %i.cb = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.926.0.copyload, %bb.m ], !dbg !10641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10653
  store ptr %i.t, ptr %i.n, align 8, !dbg !10654
  %i.cc = icmp ult i64 %i.cb, 32, !dbg !10655
  br i1 %i.cc, label %.loopexit, label %.lr.ph175, !dbg !10655

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !10656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i64 128, i1 false), !dbg !10656
  %i.cd = load i64, ptr %i.ar, align 8, !dbg !10657, !noundef !13 ; 6 uses
  %i.ce = icmp uge i64 %i.cd, %i.by, !dbg !10658
  %i.cf = icmp ult i64 %i.cd, 33
  %or.cond = and i1 %i.ce, %i.cf, !dbg !10658
  br i1 %or.cond, label %bb.v, label %bb.u, !dbg !10658, !prof !576

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.by, i64 noundef %i.cd, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !dbg !10667
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by, !dbg !10668 ; 4 uses
  %i.ch = load i64, ptr %i.x, align 8, !dbg !10672, !alias.scope !10675, !noundef !13
  %i.ci = trunc i64 %i.ch to i32, !dbg !10678     ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cd, !dbg !10680 ; 2 uses
  %i.ck = icmp samesign eq i64 %i.by, %i.cd, !dbg !10685
  br i1 %i.ck, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.lr.ph169.preheader, !dbg !10688

.lr.ph169.preheader:                              ; preds = %bb.v
  %i.cl = shl nuw nsw i64 %i.cd, 2, !dbg !10688
  %6 = add nsw i64 %i.cl, -4, !dbg !10688
  %7 = shl nuw nsw i64 %i.by, 2, !dbg !10688
  %i.cm = sub nsw i64 %6, %7, !dbg !10688         ; 2 uses
  %i.cn = lshr exact i64 %i.cm, 2, !dbg !10688
  %i.co = add nuw nsw i64 %i.cn, 1, !dbg !10688   ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.cm, 28, !dbg !10688
  br i1 %min.iters.check263, label %.lr.ph169.preheader282, label %vector.ph264, !dbg !10688

vector.ph264:                                     ; preds = %.lr.ph169.preheader
  %n.vec265 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cp = shl i64 %n.vec265, 2
  %i.cq = getelementptr i8, ptr %i.cg, i64 %i.cp
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body268, !dbg !10688

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next275, %vector.body268 ] ; 2 uses
  %vec.phi270 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cv, %vector.body268 ]
  %vec.phi271 = phi <4 x i1> [ splat (i1 true), %vector.ph264 ], [ %i.cw, %vector.body268 ]
  %i.cr = shl i64 %index269, 2
  %next.gep272 = getelementptr i8, ptr %i.cg, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep272, i64 16, !dbg !10689
  %wide.load273 = load <4 x i32>, ptr %next.gep272, align 4, !dbg !10689, !alias.scope !10690, !noalias !10693
  %wide.load274 = load <4 x i32>, ptr %i.cs, align 4, !dbg !10689, !alias.scope !10690, !noalias !10693
  %i.ct = icmp ult <4 x i32> %wide.load273, %broadcast.splat267, !dbg !10695
  %i.cu = icmp ult <4 x i32> %wide.load274, %broadcast.splat267, !dbg !10695
  %i.cv = and <4 x i1> %vec.phi270, %i.ct, !dbg !10696 ; 2 uses
  %i.cw = and <4 x i1> %vec.phi271, %i.cu, !dbg !10696 ; 2 uses
  %index.next275 = add nuw i64 %index269, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next275, %n.vec265, !dbg !10688
  br i1 %i.cx, label %middle.block276, label %vector.body268, !dbg !10688, !llvm.loop !10697

middle.block276:                                  ; preds = %vector.body268
  %bin.rdx277 = and <4 x i1> %i.cw, %i.cv, !dbg !10688
  %i.cy = bitcast <4 x i1> %bin.rdx277 to i4, !dbg !10688
  %i.cz = icmp eq i4 %i.cy, -1, !dbg !10688       ; 2 uses
  %cmp.n278 = icmp eq i64 %i.co, %n.vec265, !dbg !10688
  br i1 %cmp.n278, label %._crit_edge170, label %.lr.ph169.preheader282, !dbg !10688

.lr.ph169.preheader282:                           ; preds = %.lr.ph169.preheader, %middle.block276
  %.sroa.0.0.i167.ph = phi i1 [ true, %.lr.ph169.preheader ], [ %i.cz, %middle.block276 ]
  %.sroa.02.0.i166.ph = phi ptr [ %i.cg, %.lr.ph169.preheader ], [ %i.cq, %middle.block276 ]
  br label %.lr.ph169, !dbg !10688

.lr.ph169:                                        ; preds = %.lr.ph169.preheader282, %.lr.ph169
  %.sroa.0.0.i167 = phi i1 [ %i.dd, %.lr.ph169 ], [ %.sroa.0.0.i167.ph, %.lr.ph169.preheader282 ]
  %.sroa.02.0.i166 = phi ptr [ %i.da, %.lr.ph169 ], [ %.sroa.02.0.i166.ph, %.lr.ph169.preheader282 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i166, i64 4, !dbg !10698 ; 2 uses
  %i.db = load i32, ptr %.sroa.02.0.i166, align 4, !dbg !10689, !alias.scope !10690, !noalias !10693, !noundef !13
  %i.dc = icmp ult i32 %i.db, %i.ci, !dbg !10695
  %i.dd = and i1 %.sroa.0.0.i167, %i.dc, !dbg !10696 ; 2 uses
  %i.de = icmp eq ptr %i.da, %i.cj, !dbg !10685
  br i1 %i.de, label %._crit_edge170, label %.lr.ph169, !dbg !10688, !llvm.loop !10700

._crit_edge170:                                   ; preds = %.lr.ph169, %middle.block276
  %.lcssa = phi i1 [ %i.cz, %middle.block276 ], [ %i.dd, %.lr.ph169 ], !dbg !10696
  br i1 %.lcssa, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !10701, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %._crit_edge170
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f), !dbg !10702
  %.sroa.068.0.copyload69 = load i64, ptr %i.f, align 8, !dbg !10703 ; 2 uses
  %.not48 = icmp eq i64 %.sroa.068.0.copyload69, -9223372036854775803, !dbg !10704
  br i1 %.not48, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %bb.w, !dbg !10707

bb.w:                                             ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !10714
  store i64 %.sroa.068.0.copyload69, ptr %0, align 8, !dbg !10708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10640
  br label %bb.x, !dbg !10715

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %._crit_edge170, %bb.v, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  store ptr %i.cg, ptr %i.o, align 8, !dbg !10717
  store ptr %i.cj, ptr %i.as, align 8, !dbg !10717
  store ptr %i.w, ptr %i.at, align 8, !dbg !10717
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16EINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4ItermENCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded8required6decodeBT_RSBT_E0EE11spec_extendB3Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !10722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10640
  br label %thread-pre-split, !dbg !10725

bb.x:                                             ; preds = %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !10726
  br label %bb.ah, !dbg !10585

.lr.ph175:                                        ; preds = %bb.s, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10727, !noalias !10728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !dbg !10730, !alias.scope !10732, !noalias !10728
  %i.df = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.a), !dbg !10735, !noalias !10736
  %i.dg = extractvalue { i64, i64 } %i.df, 0, !dbg !10735
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !10737
  br i1 %i.dh, label %bb.z, label %bb.y, !dbg !10737

bb.y:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10739, !noalias !10728
  br label %.loopexit, !dbg !10740

bb.z:                                             ; preds = %.lr.ph175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.m, ptr noundef nonnull align 4 dereferenceable(128) %i.a, i64 128, i1 false), !dbg !10742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10739, !noalias !10728
  %i.di = load i64, ptr %i.x, align 8, !dbg !10743, !alias.scope !10746, !noundef !13
  %i.dj = trunc i64 %i.di to i32, !dbg !10749
  %i.dk = load <32 x i32>, ptr %i.m, align 4, !dbg !10751, !alias.scope !10752, !noalias !10755
  %i.dl = insertelement <32 x i32> poison, i32 %i.dj, i64 0, !dbg !10757
  %i.dm = shufflevector <32 x i32> %i.dl, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !10757
  %i.dn = icmp uge <32 x i32> %i.dk, %i.dm, !dbg !10758
  %i.do = bitcast <32 x i1> %i.dn to i32, !dbg !10758
  %i.dp = icmp eq i32 %i.do, 0, !dbg !10758
  br i1 %i.dp, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56, !dbg !10759, !prof !3295

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56: ; preds = %bb.z
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d), !dbg !10760
  %.sroa.074.0.copyload75 = load i64, ptr %i.d, align 8, !dbg !10761 ; 2 uses
  %.not50 = icmp eq i64 %.sroa.074.0.copyload75, -9223372036854775803, !dbg !10762
  br i1 %.not50, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, label %bb.ag, !dbg !10764

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit56.thread, %bb.s, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10765
  call void @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9remainderBd_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n), !dbg !10767
  %i.dq = load i64, ptr %i.j, align 8, !dbg !10765, !range !431, !noundef !13
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !10768
  br i1 %i.dr, label %bb.aa, label %bb.ae, !dbg !10768

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.ax, i64 128, i1 false), !dbg !10769
  %i.ds = load i64, ptr %i.ay, align 8, !dbg !10770, !noundef !13 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 33
  br i1 %i.dt, label %bb.ac, label %bb.ab, !dbg !10771, !prof !576

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ds, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37, !dbg !10783
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.x, align 8, !dbg !10784, !alias.scope !10786, !noundef !13
  %i.dv = trunc i64 %i.du to i32, !dbg !10789     ; 2 uses
  %.idx = shl nuw nsw i64 %i.ds, 2, !dbg !10791   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !10791 ; 2 uses
  %i.dx = icmp eq i64 %i.ds, 0, !dbg !10796
  br i1 %i.dx, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit53.thread, label %.lr.ph179.preheader, !dbg !10799

.lr.ph179.preheader:                              ; preds = %bb.ac
  %i.dy = add nsw i64 %.idx, -4, !dbg !10799      ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2, !dbg !10799
  %i.ea = add nuw nsw i64 %i.dz, 1, !dbg !10799   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 28, !dbg !10799
  br i1 %min.iters.check, label %.lr.ph179.preheader281, label %vector.ph, !dbg !10799

vector.ph:                                        ; preds = %.lr.ph179.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 5 uses
  %i.eb = shl i64 %n.vec, 2
  %i.ec = getelementptr i8, ptr %i.i, i64 %i.eb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.i, align 16, !dbg !10800, !alias.scope !10801, !noalias !10804
  %wide.load261 = load <4 x i32>, ptr %i.bb, align 16, !dbg !10800, !alias.scope !10801, !noalias !10804
  %i.ed = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !10806 ; 2 uses
  %i.ee = icmp ult <4 x i32> %wide.load261, %broadcast.splat, !dbg !10806 ; 2 uses
  %i.ef = icmp eq i64 %n.vec, 8, !dbg !10799
  br i1 %i.ef, label %middle.block, label %vector.body.1, !dbg !10799

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !10800, !alias.scope !10801, !noalias !10804
  %wide.load261.1 = load <4 x i32>, ptr %i.bc, align 16, !dbg !10800, !alias.scope !10801, !noalias !10804
  %i.eg = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !10806
  %i.eh = icmp ult <4 x i32> %wide.load261.1, %broadcast.splat, !dbg !10806
  %i.ei = and <4 x i1> %i.ed, %i.eg, !dbg !10807  ; 2 uses
  %i.ej = and <4 x i1> %i.ee, %i.eh, !dbg !10807  ; 2 uses
  %i.ek = icmp eq i64 %n.vec, 16, !dbg !10799
  br i1 %i.ek, label %middle.block, label %vector.body.2, !dbg !10799

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !10800, !alias.scope !10801, !noalias !10804
  %wide.load261.2 = load <4 x i32>, ptr %i.bd, align 16, !dbg !10800, !alias.scope !10801, !noalias !10804
  %i.el = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !10806
  %i.em = icmp ult <4 x i32> %wide.load261.2, %broadcast.splat, !dbg !10806
  %i.en = and <4 x i1> %i.ei, %i.el, !dbg !10807  ; 2 uses
  %i.eo = and <4 x i1> %i.ej, %i.em, !dbg !10807  ; 2 uses
  %i.ep = icmp eq i64 %n.vec, 24, !dbg !10799
  br i1 %i.ep, label %middle.block, label %vector.body.3, !dbg !10799

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !10800, !alias.scope !10801, !noalias !10804
  %wide.load261.3 = load <4 x i32>, ptr %i.be, align 16, !dbg !10800, !alias.scope !10801, !noalias !10804
  %i.eq = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !10806
  %i.er = icmp ult <4 x i32> %wide.load261.3, %broadcast.splat, !dbg !10806
  %i.es = and <4 x i1> %i.en, %i.eq, !dbg !10807
  %i.et = and <4 x i1> %i.eo, %i.er, !dbg !10807
  br label %middle.block, !dbg !10799

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa300 = phi <4 x i1> [ %i.ed, %vector.ph ], [ %i.ei, %vector.body.1 ], [ %i.en, %vector.body.2 ], [ %i.es, %vector.body.3 ], !dbg !10807
  %.lcssa299 = phi <4 x i1> [ %i.ee, %vector.ph ], [ %i.ej, %vector.body.1 ], [ %i.eo, %vector.body.2 ], [ %i.et, %vector.body.3 ], !dbg !10807
  %bin.rdx = and <4 x i1> %.lcssa299, %.lcssa300, !dbg !10799
  %i.eu = bitcast <4 x i1> %bin.rdx to i4, !dbg !10799
  %i.ev = icmp eq i4 %i.eu, -1, !dbg !10799       ; 2 uses
  %cmp.n = icmp eq i64 %i.ea, %n.vec, !dbg !10799
  br i1 %cmp.n, label %._crit_edge180, label %.lr.ph179.preheader281, !dbg !10799

.lr.ph179.preheader281:                           ; preds = %.lr.ph179.preheader, %middle.block
end_hunk_10
