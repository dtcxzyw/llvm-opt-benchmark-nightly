Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.3?download=true
inline.NumInlined: 164
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform21apply_color_transform:bb.a

._crit_edge:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit.thread, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsksn9slvsHfS_10image_webp.exit
  ret void

bb.d:                                             ; preds = %.lr.ph69.split
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ah ; 2 uses
  %i.ak = or disjoint i64 %i.ah, %i.z
  %i.al = sub nuw nsw i64 %5, %i.ak               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22
  store ptr %.sroa.428.068, ptr %i.b, align 8, !noalias !23
  store i64 %i.q, ptr %.sroa.434.0..sroa_idx, align 8, !noalias !23
  store i64 %i.y, ptr %.sroa.535.0..sroa_idx, align 8, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  store ptr %i.aj, ptr %i.a, align 8, !alias.scope !24, !noalias !25
  store i64 %i.al, ptr %.sroa.437.0..sroa_idx, align 8, !alias.scope !24, !noalias !25
  store ptr %i.am, ptr %.sroa.538.0..sroa_idx, align 8, !alias.scope !24, !noalias !25
  store i64 %i.z, ptr %.sroa.639.0..sroa_idx, align 8, !alias.scope !24, !noalias !25
  store i64 4, ptr %.sroa.740.0..sroa_idx, align 8, !alias.scope !24, !noalias !25
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  %i.an = load i64, ptr %i.aa, align 8, !alias.scope !27, !noundef !5 ; 2 uses
  %i.ao = load i64, ptr %i.ab, align 8, !alias.scope !27, !noundef !5
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit.thread

.split.us:                                        ; preds = %.lr.ph69.split
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ah, i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14
  unreachable

.split71.us:                                      ; preds = %.lr.ph69
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14
  unreachable

.loopexit:                                        ; preds = %bb.l, %bb.j
  %i.aq = load i64, ptr %i.aa, align 8, !alias.scope !27, !noundef !5 ; 2 uses
  %i.ar = load i64, ptr %i.ab, align 8, !alias.scope !27, !noundef !5
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.d, %.loopexit
  %i.at = phi i64 [ %i.aq, %.loopexit ], [ %i.an, %bb.d ] ; 3 uses
  %i.au = add nuw i64 %i.at, 1
  store i64 %i.au, ptr %i.aa, align 8, !alias.scope !27
  %i.av = call { ptr, i64 } @_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.at), !noalias !28 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  %i.ay = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef %i.at), !noalias !28 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 4 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 3 uses
  %.not19 = icmp eq ptr %i.aw, null
  br i1 %.not19, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %.not20 = icmp eq i64 %i.ba, 0
  br i1 %.not20, label %bb.g, label %bb.f

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit, %.loopexit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ugt i64 %i.q, %i.ae
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph69.split

bb.f:                                             ; preds = %bb.e
  %i.bb = load i8, ptr %i.az, align 1, !noundef !5
  %.not21 = icmp eq i64 %i.ba, 1
  br i1 %.not21, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !5
  %i.be = icmp ugt i64 %i.ba, 2
  br i1 %i.be, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bf = and i64 %i.ax, -4                       ; 2 uses
  %.not2262 = icmp eq i64 %i.bf, 0
  br i1 %.not2262, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !5
  %i.bi = sext i8 %i.bh to i32
  %i.bj = sext i8 %i.bd to i32
  %i.bk = sext i8 %i.bb to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #14
  unreachable

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.3.064 = phi ptr [ %i.aw, %.lr.ph ], [ %i.bl, %bb.l ] ; 5 uses
  %.sroa.5.063 = phi i64 [ %i.bf, %.lr.ph ], [ %i.bm, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.3.064, i64 4
  %i.bm = add i64 %.sroa.5.063, -4                ; 2 uses
  %i.bn = load i8, ptr %.sroa.3.064, align 1, !noundef !5
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.3.064, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.3.064, i64 2 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %i.bt = zext i8 %i.bs to i32
  %i.bu = sext i8 %i.bq to i32                    ; 2 uses
  %i.bv = mul nsw i32 %i.bu, %i.bi
  %i.bw = lshr i32 %i.bv, 5
  %i.bx = add nuw nsw i32 %i.bw, %i.bo            ; 2 uses
  %i.by = mul nsw i32 %i.bu, %i.bj
  %i.bz = lshr i32 %i.by, 5
  %i.ca = add nuw nsw i32 %i.bz, %i.bt
  %i.cb = shl i32 %i.bx, 24
  %i.cc = ashr exact i32 %i.cb, 24
  %i.cd = mul nsw i32 %i.cc, %i.bk
  %i.ce = lshr i32 %i.cd, 5
  %i.cf = add nuw nsw i32 %i.ca, %i.ce
  %i.cg = trunc i32 %i.bx to i8
  store i8 %i.cg, ptr %.sroa.3.064, align 1
  %i.ch = trunc i32 %i.cf to i8
  store i8 %i.ch, ptr %i.br, align 1
  %.not22 = icmp eq i64 %i.bm, 0
  br i1 %.not22, label %.loopexit, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform25apply_predictor_transform(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i16 noundef %3, i16 noundef %4, i8 noundef %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [152 x i8], align 8               ; 9 uses
  %i.f = alloca [4 x i8], align 4                 ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [96 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 9 uses
  %i.l = alloca [4 x i8], align 4                 ; 9 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [4 x i8], align 1                 ; 7 uses
  %i.p = alloca [4 x i8], align 1                 ; 7 uses
  %i.q = alloca [96 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [152 x i8], align 8               ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [96 x i8], align 8                ; 4 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [208 x i8], align 8               ; 11 uses
  %i.y = alloca [208 x i8], align 8               ; 4 uses
  %i.z = alloca [4 x i8], align 4                 ; 9 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [40 x i8], align 8               ; 8 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [96 x i8], align 8               ; 7 uses
  %i.af = alloca [96 x i8], align 8               ; 7 uses
  %i.ag = alloca [96 x i8], align 8               ; 4 uses
  %i.ah = alloca [4 x i8], align 4                ; 12 uses
  %i.ai = alloca [40 x i8], align 8               ; 8 uses
  %i.aj = alloca [96 x i8], align 8               ; 4 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [40 x i8], align 8               ; 8 uses
  %i.am = alloca [152 x i8], align 8              ; 9 uses
  %i.an = alloca [4 x i8], align 4                ; 9 uses
  %i.ao = alloca [1 x i8], align 1                ; 3 uses
  %i.ap = zext i16 %3 to i32
  %i.aq = and i8 %5, 31
  %i.ar = zext nneg i8 %i.aq to i32               ; 2 uses
  %i.as = shl nuw i32 1, %i.ar
  %i.at = add nsw i32 %i.ap, -1
  %i.au = add i32 %i.at, %i.as
  %i.av = lshr i32 %i.au, %i.ar                   ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 65535
  %i.ax = shl nuw i32 %i.av, 16
  %.sroa.016.0.insert.insert = select i1 %i.aw, i32 513, i32 %i.ax ; 2 uses
  %i.ay = trunc i32 %.sroa.016.0.insert.insert to i1
  br i1 %i.ay, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsksn9slvsHfS_10image_webp.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 2, ptr %i.ao, align 1
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.016.0.insert.insert, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i = zext nneg i32 %.sroa.5.0.extract.shift.i to i64 ; 2 uses
  %i.az = zext i16 %3 to i64                      ; 3 uses
  %i.ba = zext i16 %4 to i64                      ; 2 uses
  %i.bb = icmp samesign ugt i64 %2, 3
  br i1 %i.bb, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsksn9slvsHfS_10image_webp.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !5
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.bc, align 1
  %i.bf = shl nuw nsw i64 %i.az, 2                ; 60 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %.not.i = icmp samesign ugt i64 %i.bf, %2
  br i1 %.not.i, label %bb.d, label %.preheader.split.i, !prof !4

.preheader.split.i:                               ; preds = %bb.c
  %i.bg = icmp ugt i16 %3, 1
  br i1 %i.bg, label %vector.ph, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit

vector.ph:                                        ; preds = %.preheader.split.i
  %load_initial3226 = load <4 x i8>, ptr %1, align 1
  %i.bh = add nsw i64 %i.bf, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %store_forwarded3227 = phi <4 x i8> [ %load_initial3226, %vector.ph ], [ %i.bk, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = getelementptr i8, ptr %1, i64 %index
  %i.bj = getelementptr i8, ptr %i.bi, i64 4      ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.bj, align 1, !alias.scope !248
  %i.bk = add <4 x i8> %store_forwarded3227, %wide.load ; 2 uses
  store <4 x i8> %i.bk, ptr %i.bj, align 1, !alias.scope !248
  %index.next = add nuw i64 %index, 4
  %i.bl = icmp eq i64 %index, %i.bh
  br i1 %i.bl, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, label %vector.body, !llvm.loop !31

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #14, !noalias !248
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit: ; preds = %vector.body, %.preheader.split.i
  %i.bm = icmp ugt i16 %4, 1
  br i1 %i.bm, label %.lr.ph, label %._crit_edge.split

bb.e:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #14
  unreachable

.split.lr.ph:                                     ; preds = %.loopexit168
  %.not869 = icmp eq i32 %.sroa.5.0.extract.shift.i, 0
  %i.bn = and i8 %5, 63
  %i.bo = zext nneg i8 %i.bn to i64               ; 3 uses
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.639.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.744.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.749.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 3 ; 2 uses
  %.sroa.432.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.7.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.637.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 3 ; 2 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.651.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.7.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.756.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.7.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.742.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.747.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.x, i64 200 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.z, i64 3 ; 2 uses
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.5.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.753.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.657.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.758.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.af, i64 88 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ah, i64 3 ; 4 uses
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.767.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.772.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.735.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.639.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.am, i64 136 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.dk = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.dm = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.an, i64 3 ; 2 uses
  br i1 %.not869, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.dp = add nsw i64 %i.bf, -4
  %i.dq = sub nuw nsw i64 -3, %i.bf               ; 3 uses
  %i.dr = sub nuw nsw i64 -4, %i.bf               ; 3 uses
  %i.ds = add nuw nsw i64 %i.bf, 4                ; 3 uses
  %8 = sub nsw i64 1, %i.bf                       ; 2 uses
  %9 = add nsw i64 %i.bf, -4
  %scevgep.a = getelementptr i8, ptr %1, i64 -4
  %invariant.op4589 = sub i64 4, %i.bf
  %invariant.op4590 = add i64 %i.bf, -4
  %invariant.op4592 = sub i64 4, %i.bf
  %i.dt = getelementptr i8, ptr %1, i64 %8
  %invariant.op4594 = sub i64 -4, %i.bf
  %invariant.op4596 = add i64 %i.bf, 4
  %i.du = getelementptr i8, ptr %1, i64 %i.dq
  %i.dv = getelementptr i8, ptr %1, i64 %8
  %invariant.op4598 = add i64 %i.bf, 4
  %i.dw = getelementptr i8, ptr %1, i64 %i.dq
  %invariant.op.a = sub i64 -4, %i.bf
  %invariant.op4600 = sub i64 -4, %i.bf
  %invariant.op4602 = add i64 %i.bf, 4
  %10 = getelementptr i8, ptr %1, i64 %i.dq
  %invariant.op4587 = sub i64 -4, %i.bf
  %invariant.op4604 = sub i64 4, %i.bf
  %invariant.op4606 = add i64 %i.bf, -4
  %invariant.op4608.a = sub i64 4, %i.bf
  %invariant.op4588 = sub i64 4, %i.bf
  br label %.split

.lr.ph:                                           ; preds = %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, %.loopexit168
  %.sroa.08.0863 = phi i64 [ %i.dx, %.loopexit168 ], [ 1, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit ] ; 3 uses
  %i.dx = add nuw nsw i64 %.sroa.08.0863, 1       ; 2 uses
  %i.dy = mul nuw nsw i64 %i.bf, %.sroa.08.0863   ; 6 uses
  %i.dz = add nsw i64 %.sroa.08.0863, -1
  %i.ea = mul nuw nsw i64 %i.bf, %i.dz            ; 4 uses
  %i.eb = icmp samesign ult i64 %i.dy, %2
  br i1 %i.eb, label %bb.ji, label %bb.jh

..loopexit_crit_edge:                             ; preds = %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit
  %exitcond1569.not = icmp eq i64 %i.ec, %i.ba
  br i1 %exitcond1569.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, %.split.lr.ph
  store i8 -1, ptr %0, align 8
  ret void

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %.sroa.012.0868 = phi i64 [ %i.ec, %..loopexit_crit_edge ], [ 1, %.split.preheader ] ; 3 uses
  %i.ec = add nuw nsw i64 %.sroa.012.0868, 1      ; 2 uses
  %i.ed = lshr i64 %.sroa.012.0868, %i.bo
  %i.ee = mul nuw nsw i64 %i.ed, %.sroa.5.0.extract.trunc.i
  %i.ef = mul nuw nsw i64 %.sroa.012.0868, %i.az  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.split, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit
  %.sroa.014.0866 = phi i64 [ 0, %.split ], [ %i.eg, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit ] ; 3 uses
  %i.eg = add nuw nsw i64 %.sroa.014.0866, 1      ; 3 uses
  %i.eh = add nuw nsw i64 %.sroa.014.0866, %i.ee
  %i.ei = shl nuw nsw i64 %i.eh, 2
  %i.ej = or disjoint i64 %i.ei, 1                ; 3 uses
  %i.ek = icmp samesign ult i64 %i.ej, %7
  br i1 %i.ek, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 %i.ej
  %i.em = load i8, ptr %i.el, align 1, !noundef !5
  %i.en = shl i64 %.sroa.014.0866, %i.bo
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.en, i64 1) ; 14 uses
  %i.eo = add i64 %..i, %i.ef
  %i.ep = shl i64 %i.eo, 2                        ; 143 uses
  %i.eq = shl i64 %i.eg, %i.bo
  %..i28 = call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 range(i64 0, 65536) %i.az, i64 %i.eq) ; 14 uses
  %i.er = add nuw i64 %..i28, %i.ef
  %i.es = shl i64 %i.er, 2                        ; 53 uses
  switch i8 %i.em, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit [
    i8 0, label %bb.i
    i8 1, label %bb.k
    i8 2, label %bb.o
    i8 3, label %bb.s
    i8 4, label %bb.w
    i8 5, label %bb.aa
    i8 6, label %bb.bi
    i8 7, label %bb.bo
    i8 8, label %bb.df
    i8 9, label %bb.dj
    i8 10, label %bb.dp
    i8 11, label %bb.ff
    i8 12, label %bb.gr
    i8 13, label %bb.hx
  ]

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ej, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit: ; preds = %bb.do, %bb.dh, %bb.bn, %bb.z, %bb.v, %bb.r, %bb.n, %.lr.ph.i30, %.preheader.split.i78, %.preheader.split.i73, %.preheader.split.i56, %.preheader.split.i48, %.preheader.split.i43, %.preheader.split.i38, %.preheader.split.i32, %.split.i, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_13.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_12.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_11.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit, %bb.g
  %exitcond1568.not = icmp eq i64 %i.eg, %.sroa.5.0.extract.trunc.i
  br i1 %exitcond1568.not, label %..loopexit_crit_edge, label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %.not.i29 = icmp ugt i64 %i.es, %2
  br i1 %.not.i29, label %bb.j, label %.split.i, !prof !4

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #14, !noalias !251
  unreachable

.split.i:                                         ; preds = %bb.i
  %i.et = or disjoint i64 %i.ep, 3                ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  br i1 %i.eu, label %.lr.ph.i30, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i30:                                       ; preds = %.split.i, %.lr.ph.i30
  %.sroa.0.06.i = phi i64 [ %i.ey, %.lr.ph.i30 ], [ %i.et, %.split.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.06.i ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !251, !noundef !5
  %i.ex = add i8 %i.ew, -1
  store i8 %i.ex, ptr %i.ev, align 1, !alias.scope !251
  %i.ey = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.es
  br i1 %i.ez, label %.lr.ph.i30, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %.not.i31 = icmp ugt i64 %i.es, %2
  br i1 %.not.i31, label %bb.l, label %.preheader.split.i32, !prof !4

.preheader.split.i32:                             ; preds = %bb.k
  %i.fa = icmp ult i64 %i.ep, %i.es
  br i1 %i.fa, label %.lr.ph.i33.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i33.preheader:                             ; preds = %.preheader.split.i32
  %i.fb = shl nuw nsw i64 %..i28, 2
  %i.fc = shl i64 %..i, 2
  %i.fd = xor i64 %i.fc, -1
  %i.fe = add i64 %i.fb, %i.fd
  %i.ff = add i64 %i.ep, -4
  %i.fg = call i64 @llvm.umax.i64(i64 %2, i64 %i.ff)
  %i.fh = add i64 %i.fg, 4
  %i.fi = sub i64 %i.fh, %i.ep
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.fi)
  %i.fk = add i64 %i.fj, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.fk, 5
  br i1 %min.iters.check, label %.lr.ph.i33.preheader3233, label %vector.ph3034

.lr.ph.i33.preheader3233:                         ; preds = %vector.body3036, %.lr.ph.i33.preheader
  %.sroa.0.09.i34.ph = phi i64 [ %i.ep, %.lr.ph.i33.preheader ], [ %i.fo, %vector.body3036 ]
  br label %.lr.ph.i33

vector.ph3034:                                    ; preds = %.lr.ph.i33.preheader
  %i.fl = and i64 %i.fk, 3                        ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  %i.fn = select i1 %i.fm, i64 4, i64 %i.fl
  %n.vec3035 = sub i64 %i.fk, %i.fn               ; 2 uses
  %i.fo = add i64 %i.ep, %n.vec3035
  %scevgep3225.a = getelementptr i8, ptr %scevgep.a, i64 %i.ep
  %load_initial = load <4 x i8>, ptr %scevgep3225.a, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep
  br label %vector.body3036

vector.body3036:                                  ; preds = %vector.body3036, %vector.ph3034
  %store_forwarded = phi <4 x i8> [ %load_initial, %vector.ph3034 ], [ %i.fr, %vector.body3036 ]
  %index3037 = phi i64 [ 0, %vector.ph3034 ], [ %index.next3040, %vector.body3036 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %index3037 ; 2 uses
  %wide.load3038 = load <4 x i8>, ptr %i.fq, align 1, !alias.scope !252
  %i.fr = add <4 x i8> %store_forwarded, %wide.load3038 ; 2 uses
  store <4 x i8> %i.fr, ptr %i.fq, align 1, !alias.scope !252
  %index.next3040 = add nuw i64 %index3037, 4     ; 2 uses
  %i.fs = icmp eq i64 %index.next3040, %n.vec3035
  br i1 %i.fs, label %.lr.ph.i33.preheader3233, label %vector.body3036, !llvm.loop !36

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #14, !noalias !252
  unreachable

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader3233, %bb.n
  %.sroa.0.09.i34 = phi i64 [ %i.ga, %bb.n ], [ %.sroa.0.09.i34.ph, %.lr.ph.i33.preheader3233 ] ; 3 uses
  %i.ft = add nsw i64 %.sroa.0.09.i34, -4         ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %2
  br i1 %i.fu, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i33
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #14, !noalias !252
  unreachable

bb.n:                                             ; preds = %.lr.ph.i33
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i34 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !252, !noundef !5
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 %i.ft
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !252, !noundef !5
  %i.fz = add i8 %i.fy, %i.fw
  store i8 %i.fz, ptr %i.fv, align 1, !alias.scope !252
  %i.ga = add nuw nsw i64 %.sroa.0.09.i34, 1      ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.ga, %i.es
  br i1 %exitcond.not.i35, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i33, !llvm.loop !37

bb.o:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %.not.i37 = icmp ugt i64 %i.es, %2
  br i1 %.not.i37, label %bb.p, label %.preheader.split.i38, !prof !4

.preheader.split.i38:                             ; preds = %bb.o
  %i.gb = icmp ult i64 %i.ep, %i.es
  br i1 %i.gb, label %.lr.ph.i39.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i39.preheader:                             ; preds = %.preheader.split.i38
  %i.gc = shl nuw nsw i64 %..i28, 2
  %i.gd = shl i64 %..i, 2
  %i.ge = xor i64 %i.gd, -1
  %i.gf = add i64 %i.gc, %i.ge
  %i.gg = sub i64 %i.ep, %i.bf                    ; 2 uses
  %i.gh = call i64 @llvm.umax.i64(i64 %2, i64 %i.gg)
  %i.gi = add i64 %i.gh, %i.bf
  %i.gj = sub i64 %i.gi, %i.ep                    ; 2 uses
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gf, i64 %i.gj)
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  %min.iters.check3049 = icmp ult i64 %i.gl, 17
  br i1 %min.iters.check3049, label %.lr.ph.i39.preheader3235, label %vector.memcheck

.lr.ph.i39.preheader3235:                         ; preds = %vector.body3052, %vector.memcheck, %.lr.ph.i39.preheader
  %.sroa.0.09.i40.ph = phi i64 [ %i.ep, %vector.memcheck ], [ %i.ep, %.lr.ph.i39.preheader ], [ %i.gz, %vector.body3052 ]
  br label %.lr.ph.i39

vector.memcheck:                                  ; preds = %.lr.ph.i39.preheader
  %i.gm = getelementptr i8, ptr %1, i64 %i.ep
  %i.gn = shl nuw nsw i64 %..i28, 2
  %i.go = shl i64 %..i, 2
  %i.gp = xor i64 %i.go, -1
  %i.gq = add i64 %i.gn, %i.gp
  %i.gr = call i64 @llvm.umin.i64(i64 %i.gq, i64 %i.gj)
  %i.gs = add i64 %i.gr, %i.ep                    ; 2 uses
  %11 = getelementptr i8, ptr %1, i64 %i.gs
  %12 = getelementptr i8, ptr %11, i64 1
  %i.gt = getelementptr i8, ptr %1, i64 %i.gg
  %reass.sub3232 = sub i64 %i.gs, %i.bf
  %i.gu = getelementptr i8, ptr %1, i64 %reass.sub3232
  %i.gv = getelementptr i8, ptr %i.gu, i64 1
  %bound0 = icmp ult ptr %i.gm, %i.gv
  %bound1 = icmp ult ptr %i.gt, %12
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i39.preheader3235, label %vector.ph3050

vector.ph3050:                                    ; preds = %vector.memcheck
  %i.gw = and i64 %i.gl, 15                       ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  %i.gy = select i1 %i.gx, i64 16, i64 %i.gw
  %n.vec3051 = sub i64 %i.gl, %i.gy               ; 2 uses
  %i.gz = add i64 %i.ep, %n.vec3051
  br label %vector.body3052

vector.body3052:                                  ; preds = %vector.body3052, %vector.ph3050
  %index3053 = phi i64 [ 0, %vector.ph3050 ], [ %index.next3056, %vector.body3052 ] ; 2 uses
  %i.ha = add nuw i64 %i.ep, %index3053           ; 2 uses
  %i.hb = sub nsw i64 %i.ha, %i.bf
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ha ; 2 uses
  %wide.load3054 = load <16 x i8>, ptr %i.hc, align 1, !alias.scope !254, !noalias !255
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %i.hb
  %wide.load3055 = load <16 x i8>, ptr %i.hd, align 1, !alias.scope !256
  %i.he = add <16 x i8> %wide.load3055, %wide.load3054
  store <16 x i8> %i.he, ptr %i.hc, align 1, !alias.scope !254, !noalias !255
  %index.next3056 = add nuw i64 %index3053, 16    ; 2 uses
  %i.hf = icmp eq i64 %index.next3056, %n.vec3051
  br i1 %i.hf, label %.lr.ph.i39.preheader3235, label %vector.body3052, !llvm.loop !43

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #14, !noalias !253
  unreachable

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader3235, %bb.r
  %.sroa.0.09.i40 = phi i64 [ %i.hn, %bb.r ], [ %.sroa.0.09.i40.ph, %.lr.ph.i39.preheader3235 ] ; 3 uses
  %i.hg = sub nsw i64 %.sroa.0.09.i40, %i.bf      ; 3 uses
  %i.hh = icmp ult i64 %i.hg, %2
  br i1 %i.hh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i39
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.hg, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #14, !noalias !253
  unreachable

bb.r:                                             ; preds = %.lr.ph.i39
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i40 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !253, !noundef !5
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %i.hg
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !253, !noundef !5
  %i.hm = add i8 %i.hl, %i.hj
  store i8 %i.hm, ptr %i.hi, align 1, !alias.scope !253
  %i.hn = add nuw nsw i64 %.sroa.0.09.i40, 1      ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.hn, %i.es
  br i1 %exitcond.not.i41, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i39, !llvm.loop !44

bb.s:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.not.i42 = icmp ugt i64 %i.es, %2
  br i1 %.not.i42, label %bb.t, label %.preheader.split.i43, !prof !4

.preheader.split.i43:                             ; preds = %bb.s
  %i.ho = icmp ult i64 %i.ep, %i.es
  br i1 %i.ho, label %.lr.ph.i44.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i44.preheader:                             ; preds = %.preheader.split.i43
  %i.hp = shl nuw nsw i64 %..i28, 2
  %i.hq = shl i64 %..i, 2
  %i.hr = xor i64 %i.hq, -1
  %i.hs = add i64 %i.hp, %i.hr
  %.reass4605 = add i64 %i.ep, %invariant.op4604
  %i.ht = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4605)
  %.reass4607 = add i64 %i.ht, %invariant.op4606
  %i.hu = sub i64 %.reass4607, %i.ep
  %i.hv = call i64 @llvm.umin.i64(i64 %i.hs, i64 %i.hu)
  %i.hw = add i64 %i.hv, 1                        ; 3 uses
  %min.iters.check3070 = icmp ult i64 %i.hw, 17
  br i1 %min.iters.check3070, label %.lr.ph.i44.preheader3237, label %vector.memcheck3071

.lr.ph.i44.preheader3237:                         ; preds = %vector.body3077, %vector.memcheck3071, %.lr.ph.i44.preheader
  %.sroa.0.09.i45.ph = phi i64 [ %i.ep, %vector.memcheck3071 ], [ %i.ep, %.lr.ph.i44.preheader ], [ %i.in, %vector.body3077 ]
  br label %.lr.ph.i44

vector.memcheck3071:                              ; preds = %.lr.ph.i44.preheader
  %i.hx = getelementptr i8, ptr %1, i64 %i.ep
  %i.hy = shl nuw nsw i64 %..i28, 2
  %i.hz = shl i64 %..i, 2
  %i.ia = xor i64 %i.hz, -1
  %i.ib = add i64 %i.hy, %i.ia
  %.reass4609 = add i64 %i.ep, %invariant.op4608.a ; 2 uses
  %i.ic = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4609)
  %i.id = sub i64 %i.ic, %i.ep
  %i.ie = add i64 %i.dp, %i.id
  %i.if = call i64 @llvm.umin.i64(i64 %i.ib, i64 %i.ie)
  %i.ig = add i64 %i.if, %i.ep                    ; 2 uses
  %13 = getelementptr i8, ptr %1, i64 %i.ig
  %14 = getelementptr i8, ptr %13, i64 1
  %i.ih = getelementptr i8, ptr %1, i64 %.reass4609
  %reass.sub3231 = sub i64 %i.ig, %i.bf
  %i.ii = getelementptr i8, ptr %1, i64 %reass.sub3231
  %i.ij = getelementptr i8, ptr %i.ii, i64 5
  %bound03072 = icmp ult ptr %i.hx, %i.ij
  %bound13073 = icmp ult ptr %i.ih, %14
  %found.conflict3074 = and i1 %bound03072, %bound13073
  br i1 %found.conflict3074, label %.lr.ph.i44.preheader3237, label %vector.ph3075

vector.ph3075:                                    ; preds = %vector.memcheck3071
  %i.ik = and i64 %i.hw, 15                       ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0
  %i.im = select i1 %i.il, i64 16, i64 %i.ik
  %n.vec3076 = sub i64 %i.hw, %i.im               ; 2 uses
  %i.in = add i64 %i.ep, %n.vec3076
  br label %vector.body3077

vector.body3077:                                  ; preds = %vector.body3077, %vector.ph3075
  %index3078 = phi i64 [ 0, %vector.ph3075 ], [ %index.next3081, %vector.body3077 ] ; 2 uses
  %i.io = add nuw i64 %i.ep, %index3078           ; 2 uses
  %i.ip = sub i64 %i.io, %i.bf
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 %i.io ; 2 uses
  %wide.load3079 = load <16 x i8>, ptr %i.iq, align 1, !alias.scope !258, !noalias !259
  %i.ir = getelementptr i8, ptr %1, i64 %i.ip
  %i.is = getelementptr i8, ptr %i.ir, i64 4
  %wide.load3080 = load <16 x i8>, ptr %i.is, align 1, !alias.scope !260
  %i.it = add <16 x i8> %wide.load3080, %wide.load3079
  store <16 x i8> %i.it, ptr %i.iq, align 1, !alias.scope !258, !noalias !259
  %index.next3081 = add nuw i64 %index3078, 16    ; 2 uses
  %i.iu = icmp eq i64 %index.next3081, %n.vec3076
  br i1 %i.iu, label %.lr.ph.i44.preheader3237, label %vector.body3077, !llvm.loop !50

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #14, !noalias !257
  unreachable

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader3237, %bb.v
  %.sroa.0.09.i45 = phi i64 [ %i.jb, %bb.v ], [ %.sroa.0.09.i45.ph, %.lr.ph.i44.preheader3237 ] ; 3 uses
  %.reass.reass.i.reass.reass.reass = add i64 %.sroa.0.09.i45, %invariant.op4588 ; 3 uses
  %i.iv = icmp ult i64 %.reass.reass.i.reass.reass.reass, %2
  br i1 %i.iv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i44
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14, !noalias !257
  unreachable

bb.v:                                             ; preds = %.lr.ph.i44
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i45 ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !257, !noundef !5
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i.reass.reass.reass
  %i.iz = load i8, ptr %i.iy, align 1, !alias.scope !257, !noundef !5
  %i.ja = add i8 %i.iz, %i.ix
  store i8 %i.ja, ptr %i.iw, align 1, !alias.scope !257
  %i.jb = add nuw nsw i64 %.sroa.0.09.i45, 1      ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %i.jb, %i.es
  br i1 %exitcond.not.i46, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i44, !llvm.loop !51

bb.w:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %.not.i47 = icmp ugt i64 %i.es, %2
  br i1 %.not.i47, label %bb.x, label %.preheader.split.i48, !prof !4

.preheader.split.i48:                             ; preds = %bb.w
  %i.jc = icmp ult i64 %i.ep, %i.es
  br i1 %i.jc, label %.lr.ph.i49.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i49.preheader:                             ; preds = %.preheader.split.i48
  %i.jd = shl nuw nsw i64 %..i28, 2
  %i.je = shl i64 %..i, 2
  %i.jf = xor i64 %i.je, -1
  %i.jg = add i64 %i.jd, %i.jf
  %.reass4601 = add i64 %i.ep, %invariant.op4600
  %i.jh = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4601)
  %.reass4603 = add i64 %i.jh, %invariant.op4602
  %i.ji = sub i64 %.reass4603, %i.ep
  %i.jj = call i64 @llvm.umin.i64(i64 %i.jg, i64 %i.ji)
  %i.jk = add i64 %i.jj, 1                        ; 3 uses
  %min.iters.check3095 = icmp ult i64 %i.jk, 17
  br i1 %min.iters.check3095, label %.lr.ph.i49.preheader3239, label %vector.memcheck3096

.lr.ph.i49.preheader3239:                         ; preds = %vector.body3102, %vector.memcheck3096, %.lr.ph.i49.preheader
  %.sroa.0.09.i50.ph = phi i64 [ %i.ep, %vector.memcheck3096 ], [ %i.ep, %.lr.ph.i49.preheader ], [ %i.kc, %vector.body3102 ]
  br label %.lr.ph.i49

vector.memcheck3096:                              ; preds = %.lr.ph.i49.preheader
  %i.jl = getelementptr i8, ptr %1, i64 %i.ep
  %i.jm = shl nuw nsw i64 %..i28, 2
  %i.jn = shl i64 %..i, 2
  %i.jo = xor i64 %i.jn, -1
  %i.jp = add i64 %i.jm, %i.jo
  %i.jq = add i64 %i.dr, %i.ep                    ; 2 uses
  %i.jr = call i64 @llvm.umax.i64(i64 %2, i64 %i.jq)
  %i.js = sub i64 %i.jr, %i.ep
  %i.jt = add i64 %i.ds, %i.js
  %i.ju = call i64 @llvm.umin.i64(i64 %i.jp, i64 %i.jt)
  %i.jv = add i64 %i.ju, %i.ep                    ; 2 uses
  %15 = getelementptr i8, ptr %1, i64 %i.jv
  %i.jw = getelementptr i8, ptr %15, i64 1
  %i.jx = getelementptr i8, ptr %1, i64 %i.jq
  %i.jy = getelementptr i8, ptr %10, i64 %i.jv
  %bound03097 = icmp ult ptr %i.jl, %i.jy
  %bound13098 = icmp ult ptr %i.jx, %i.jw
  %found.conflict3099 = and i1 %bound03097, %bound13098
  br i1 %found.conflict3099, label %.lr.ph.i49.preheader3239, label %vector.ph3100

vector.ph3100:                                    ; preds = %vector.memcheck3096
  %i.jz = and i64 %i.jk, 15                       ; 2 uses
  %i.ka = icmp eq i64 %i.jz, 0
  %i.kb = select i1 %i.ka, i64 16, i64 %i.jz
  %n.vec3101 = sub i64 %i.jk, %i.kb               ; 2 uses
  %i.kc = add i64 %i.ep, %n.vec3101
  br label %vector.body3102

vector.body3102:                                  ; preds = %vector.body3102, %vector.ph3100
  %index3103 = phi i64 [ 0, %vector.ph3100 ], [ %index.next3106, %vector.body3102 ] ; 2 uses
  %i.kd = add nuw i64 %i.ep, %index3103           ; 2 uses
  %i.ke = sub i64 %i.kd, %i.bf
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 %i.kd ; 2 uses
  %wide.load3104 = load <16 x i8>, ptr %i.kf, align 1, !alias.scope !262, !noalias !263
  %i.kg = getelementptr i8, ptr %1, i64 %i.ke
  %i.kh = getelementptr i8, ptr %i.kg, i64 -4
  %wide.load3105 = load <16 x i8>, ptr %i.kh, align 1, !alias.scope !264
  %i.ki = add <16 x i8> %wide.load3105, %wide.load3104
  store <16 x i8> %i.ki, ptr %i.kf, align 1, !alias.scope !262, !noalias !263
  %index.next3106 = add nuw i64 %index3103, 16    ; 2 uses
  %i.kj = icmp eq i64 %index.next3106, %n.vec3101
  br i1 %i.kj, label %.lr.ph.i49.preheader3239, label %vector.body3102, !llvm.loop !57

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #14, !noalias !261
  unreachable

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader3239, %bb.z
  %.sroa.0.09.i50 = phi i64 [ %i.kq, %bb.z ], [ %.sroa.0.09.i50.ph, %.lr.ph.i49.preheader3239 ] ; 3 uses
  %.reass.reass.i52.reass.reass.reass = add i64 %.sroa.0.09.i50, %invariant.op4587 ; 3 uses
  %i.kk = icmp ult i64 %.reass.reass.i52.reass.reass.reass, %2
  br i1 %i.kk, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i49
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i52.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #14, !noalias !261
  unreachable

bb.z:                                             ; preds = %.lr.ph.i49
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i50 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !alias.scope !261, !noundef !5
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i52.reass.reass.reass
  %i.ko = load i8, ptr %i.kn, align 1, !alias.scope !261, !noundef !5
  %i.kp = add i8 %i.ko, %i.km
  store i8 %i.kp, ptr %i.kl, align 1, !alias.scope !261
  %i.kq = add nuw nsw i64 %.sroa.0.09.i50, 1      ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.kq, %i.es
  br i1 %exitcond.not.i53, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i49, !llvm.loop !58

bb.aa:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %.not.i54 = icmp ugt i64 %i.es, %2
  br i1 %.not.i54, label %bb.ad, label %bb.ab, !prof !6

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i = icmp ugt i64 %i.ep, %i.es
  br i1 %.not.i.i, label %bb.ac, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #14, !noalias !266
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ab
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep ; 3 uses
  %i.ks = sub nuw nsw i64 %i.es, %i.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !265
  %i.kt = add nsw i64 %i.ep, -4                   ; 2 uses
  %i.ku = icmp eq i64 %i.ep, 0
  br i1 %i.ku, label %bb.ae, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ad:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.es, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #14, !noalias !265
  unreachable

bb.ae:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kt, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #14, !noalias !265
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 %i.kt
  %.sroa.01.0.copyload.i = load i32, ptr %i.kv, align 1, !alias.scope !265
  store i32 %.sroa.01.0.copyload.i, ptr %i.an, align 4, !noalias !265
  %i.kw = sub nsw i64 %i.ep, %i.bf                ; 3 uses
  %i.kx = add i64 %i.kw, 4                        ; 4 uses
  %i.ky = icmp ugt i64 %i.kx, %i.ep
  br i1 %i.ky, label %bb.ag, label %bb.af, !prof !4

bb.af:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.kz = icmp samesign ugt i64 %i.bf, %i.ep
  br i1 %i.kz, label %bb.ai, label %bb.ah, !prof !4

bb.ag:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kx, i64 noundef %i.ep, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #14, !noalias !265
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 %i.kx
  %i.lb = sub nuw nsw i64 %i.ep, %i.kx
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %i.kw
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 %i.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !267
  store ptr %i.ld, ptr %i.al, align 8, !noalias !268
  store i64 0, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !268
  store ptr %i.kr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !268
  store i64 %i.ks, ptr %.sroa.630.0..sroa_idx.i, align 8, !noalias !268
  store i64 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !267
  store ptr %i.la, ptr %i.ak, align 8, !alias.scope !269, !noalias !270
  store i64 %i.lb, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  store ptr %i.kr, ptr %.sroa.533.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  store i64 0, ptr %.sroa.634.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  store i64 4, ptr %.sroa.735.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !271
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ak), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !271
  store ptr %i.lc, ptr %i.ai, align 8, !alias.scope !272, !noalias !273
  store i64 %i.bf, ptr %.sroa.437.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  store ptr %i.kr, ptr %.sroa.538.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  store i64 0, ptr %.sroa.639.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  store i64 4, ptr %.sroa.740.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !265
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !271
  %i.le = load i64, ptr %i.dh, align 8, !alias.scope !274, !noalias !265, !noundef !5 ; 2 uses
  %i.lf = load i64, ptr %i.di, align 8, !alias.scope !274, !noalias !265, !noundef !5
  %i.lg = icmp ult i64 %i.le, %i.lf
  br i1 %i.lg, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kw, i64 noundef %i.ep, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #14, !noalias !265
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ah, %bb.bg
  %i.lh = phi i64 [ %i.og, %bb.bg ], [ %i.le, %bb.ah ] ; 3 uses
  %i.li = add nuw i64 %i.lh, 1
  store i64 %i.li, ptr %i.dh, align 8, !alias.scope !274, !noalias !265
  %i.lj = load i64, ptr %i.dj, align 8, !alias.scope !275, !noalias !265, !noundef !5
  %i.lk = add i64 %i.lj, %i.lh                    ; 2 uses
  %i.ll = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.am, i64 noundef %i.lk), !noalias !276 ; 2 uses
  %i.lm = extractvalue { ptr, i64 } %i.ll, 0      ; 6 uses
  %i.ln = extractvalue { ptr, i64 } %i.ll, 1      ; 5 uses
  %i.lo = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dk, i64 noundef %i.lk), !noalias !276 ; 2 uses
  %i.lp = extractvalue { ptr, i64 } %i.lo, 0      ; 5 uses
  %i.lq = extractvalue { ptr, i64 } %i.lo, 1      ; 4 uses
  %i.lr = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, i64 noundef %i.lh), !noalias !277 ; 2 uses
  %i.ls = extractvalue { ptr, i64 } %i.lr, 0      ; 5 uses
  %i.lt = extractvalue { ptr, i64 } %i.lr, 1      ; 4 uses
  %.not18.i = icmp eq ptr %i.lm, null
  br i1 %.not18.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lp), "nonnull"(ptr %i.ls) ]
  %.not19.i = icmp eq i64 %i.ln, 0
  br i1 %.not19.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lu = load i8, ptr %i.lm, align 1, !noundef !5
  %.not20.i = icmp eq i64 %i.lq, 0
  br i1 %.not20.i, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #14
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.not21.i = icmp eq i64 %i.lt, 0
  br i1 %.not21.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #14
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.lv = load i8, ptr %i.an, align 4, !noalias !265, !noundef !5 ; 2 uses
  %i.lw = load i8, ptr %i.lp, align 1, !noundef !5 ; 2 uses
  %i.lx = and i8 %i.lw, %i.lv
  %i.ly = xor i8 %i.lw, %i.lv
  %i.lz = lshr i8 %i.ly, 1
  %i.ma = add i8 %i.lz, %i.lx                     ; 2 uses
  %i.mb = load i8, ptr %i.ls, align 1, !noundef !5 ; 2 uses
  %i.mc = and i8 %i.ma, %i.mb
  %i.md = xor i8 %i.ma, %i.mb
  %i.me = lshr i8 %i.md, 1
  %i.mf = add i8 %i.mc, %i.lu
  %i.mg = add i8 %i.mf, %i.me
  %.not22.i = icmp eq i64 %i.ln, 1
  br i1 %.not22.i, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #14
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !noundef !5
  %.not23.i = icmp eq i64 %i.lq, 1
  br i1 %.not23.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #14
  unreachable

bb.as:                                            ; preds = %bb.aq
  %.not24.i = icmp eq i64 %i.lt, 1
  br i1 %.not24.i, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #14
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.mj = load i8, ptr %i.dm, align 1, !noalias !265, !noundef !5 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !noundef !5 ; 2 uses
  %i.mm = and i8 %i.ml, %i.mj
  %i.mn = xor i8 %i.ml, %i.mj
  %i.mo = lshr i8 %i.mn, 1
  %i.mp = add i8 %i.mo, %i.mm                     ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  %i.mr = load i8, ptr %i.mq, align 1, !noundef !5 ; 2 uses
  %i.ms = and i8 %i.mp, %i.mr
  %i.mt = xor i8 %i.mp, %i.mr
  %i.mu = lshr i8 %i.mt, 1
  %i.mv = add i8 %i.ms, %i.mi
  %i.mw = add i8 %i.mv, %i.mu
  %i.mx = icmp ugt i64 %i.ln, 2
  br i1 %i.mx, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #14
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.my = getelementptr inbounds nuw i8, ptr %i.lm, i64 2
  %i.mz = load i8, ptr %i.my, align 1, !noundef !5
  %i.na = icmp ugt i64 %i.lq, 2
  br i1 %i.na, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #14
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.nb = icmp ugt i64 %i.lt, 2
  br i1 %i.nb, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #14
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.nc = load i8, ptr %i.dn, align 2, !noalias !265, !noundef !5 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.ne = load i8, ptr %i.nd, align 1, !noundef !5 ; 2 uses
  %i.nf = and i8 %i.ne, %i.nc
  %i.ng = xor i8 %i.ne, %i.nc
  %i.nh = lshr i8 %i.ng, 1
  %i.ni = add i8 %i.nh, %i.nf                     ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.nk = load i8, ptr %i.nj, align 1, !noundef !5 ; 2 uses
  %i.nl = and i8 %i.ni, %i.nk
  %i.nm = xor i8 %i.ni, %i.nk
  %i.nn = lshr i8 %i.nm, 1
  %i.no = add i8 %i.nl, %i.mz
  %i.np = add i8 %i.no, %i.nn
  %.not25.i = icmp eq i64 %i.ln, 3
  br i1 %.not25.i, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #14
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lm, i64 3
  %i.nr = load i8, ptr %i.nq, align 1, !noundef !5
  %.not26.i = icmp eq i64 %i.lq, 3
  br i1 %.not26.i, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.ba
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #14
  unreachable

bb.be:                                            ; preds = %bb.bc
  %.not27.i = icmp eq i64 %i.lt, 3
  br i1 %.not27.i, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ns = load i8, ptr %i.do, align 1, !noalias !265, !noundef !5 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lp, i64 3
  %i.nu = load i8, ptr %i.nt, align 1, !noundef !5 ; 2 uses
  %i.nv = and i8 %i.nu, %i.ns
  %i.nw = xor i8 %i.nu, %i.ns
  %i.nx = lshr i8 %i.nw, 1
  %i.ny = add i8 %i.nx, %i.nv                     ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ls, i64 3
  %i.oa = load i8, ptr %i.nz, align 1, !noundef !5 ; 2 uses
  %i.ob = and i8 %i.ny, %i.oa
  %i.oc = xor i8 %i.ny, %i.oa
  %i.od = lshr i8 %i.oc, 1
  %i.oe = add i8 %i.ob, %i.nr
  %i.of = add i8 %i.oe, %i.od
  store i8 %i.mg, ptr %i.an, align 4, !noalias !265
  store i8 %i.mw, ptr %i.dm, align 1, !noalias !265
  store i8 %i.np, ptr %i.dn, align 2, !noalias !265
  store i8 %i.of, ptr %i.do, align 1, !noalias !265
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.lm, i64 noundef %i.ln, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51)
  %i.og = load i64, ptr %i.dh, align 8, !alias.scope !274, !noalias !265, !noundef !5 ; 2 uses
  %i.oh = load i64, ptr %i.di, align 8, !alias.scope !274, !noalias !265, !noundef !5
  %i.oi = icmp ult i64 %i.og, %i.oh
  br i1 %i.oi, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.bh:                                            ; preds = %bb.be
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, %bb.bg, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !265
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.bi:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %.not.i55 = icmp ugt i64 %i.es, %2
  br i1 %.not.i55, label %bb.bj, label %.preheader.split.i56, !prof !4

.preheader.split.i56:                             ; preds = %bb.bi
  %i.oj = icmp ult i64 %i.ep, %i.es
  br i1 %i.oj, label %.lr.ph.i57.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i57.preheader:                             ; preds = %.preheader.split.i56
  %i.ok = shl nuw nsw i64 %..i28, 2
  %i.ol = shl i64 %..i, 2
  %i.om = xor i64 %i.ol, -1
  %i.on = add i64 %i.ok, %i.om
  %i.oo = add i64 %i.ep, -4                       ; 3 uses
  %i.op = sub i64 %i.oo, %i.bf
  %i.oq = call i64 @llvm.umax.i64(i64 %2, i64 %i.op)
  %.reass4599 = add i64 %i.oq, %invariant.op4598
  %i.or = sub i64 %.reass4599, %i.ep
  %i.os = call i64 @llvm.umax.i64(i64 %2, i64 %i.oo)
  %i.ot = add i64 %i.os, 4
  %i.ou = sub i64 %i.ot, %i.ep                    ; 2 uses
  %i.ov = call i64 @llvm.umin.i64(i64 %i.or, i64 %i.ou)
  %i.ow = call i64 @llvm.umin.i64(i64 %i.on, i64 %i.ov)
  %i.ox = add i64 %i.ow, 1                        ; 3 uses
  %min.iters.check3129 = icmp ult i64 %i.ox, 9
  br i1 %min.iters.check3129, label %.lr.ph.i57.preheader3241, label %vector.memcheck3130

.lr.ph.i57.preheader3241:                         ; preds = %vector.body3139, %vector.memcheck3130, %.lr.ph.i57.preheader
  %.sroa.0.015.i.ph = phi i64 [ %i.ep, %vector.memcheck3130 ], [ %i.ep, %.lr.ph.i57.preheader ], [ %i.ps, %vector.body3139 ]
  br label %.lr.ph.i57

vector.memcheck3130:                              ; preds = %.lr.ph.i57.preheader
  %i.oy = getelementptr i8, ptr %1, i64 %i.ep     ; 2 uses
  %i.oz = shl nuw nsw i64 %..i28, 2
  %i.pa = shl i64 %..i, 2
  %i.pb = xor i64 %i.pa, -1
  %i.pc = add i64 %i.oz, %i.pb
  %i.pd = add i64 %i.dr, %i.ep                    ; 2 uses
  %i.pe = call i64 @llvm.umax.i64(i64 %2, i64 %i.pd)
  %i.pf = sub i64 %i.pe, %i.ep
  %i.pg = add i64 %i.ds, %i.pf
  %i.ph = call i64 @llvm.umin.i64(i64 %i.pg, i64 %i.ou)
  %i.pi = call i64 @llvm.umin.i64(i64 %i.pc, i64 %i.ph)
  %i.pj = add i64 %i.pi, %i.ep                    ; 3 uses
  %16 = getelementptr i8, ptr %1, i64 %i.pj
  %17 = getelementptr i8, ptr %16, i64 1          ; 2 uses
  %i.pk = getelementptr i8, ptr %1, i64 %i.oo
  %i.pl = getelementptr i8, ptr %1, i64 %i.pj
  %i.pm = getelementptr i8, ptr %i.pl, i64 -3
  %i.pn = getelementptr i8, ptr %1, i64 %i.pd
  %i.po = getelementptr i8, ptr %i.dw, i64 %i.pj
  %bound03131 = icmp ult ptr %i.oy, %i.pm
  %bound13132 = icmp ult ptr %i.pk, %17
  %found.conflict3133 = and i1 %bound03131, %bound13132
  %bound03134 = icmp ult ptr %i.oy, %i.po
  %bound13135 = icmp ult ptr %i.pn, %17
  %found.conflict3136 = and i1 %bound03134, %bound13135
  %conflict.rdx = or i1 %found.conflict3133, %found.conflict3136
  br i1 %conflict.rdx, label %.lr.ph.i57.preheader3241, label %vector.ph3137

vector.ph3137:                                    ; preds = %vector.memcheck3130
  %i.pp = and i64 %i.ox, 3                        ; 2 uses
  %i.pq = icmp eq i64 %i.pp, 0
  %i.pr = select i1 %i.pq, i64 4, i64 %i.pp
  %n.vec3138 = sub i64 %i.ox, %i.pr               ; 2 uses
  %i.ps = add i64 %i.ep, %n.vec3138
  br label %vector.body3139

vector.body3139:                                  ; preds = %vector.body3139, %vector.ph3137
  %index3140 = phi i64 [ 0, %vector.ph3137 ], [ %index.next3144, %vector.body3139 ] ; 2 uses
  %i.pt = add nuw i64 %i.ep, %index3140           ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 %i.pt ; 2 uses
  %wide.load3141 = load <4 x i8>, ptr %i.pu, align 1, !alias.scope !279, !noalias !280
  %i.pv = sub i64 %i.pt, %i.bf
  %i.pw = getelementptr i8, ptr %1, i64 %i.pt
  %i.px = getelementptr i8, ptr %i.pw, i64 -4
  %wide.load3142 = load <4 x i8>, ptr %i.px, align 1, !alias.scope !281
  %i.py = zext <4 x i8> %wide.load3142 to <4 x i16>
  %i.pz = getelementptr i8, ptr %1, i64 %i.pv
  %i.qa = getelementptr i8, ptr %i.pz, i64 -4
  %wide.load3143 = load <4 x i8>, ptr %i.qa, align 1, !alias.scope !282
  %i.qb = zext <4 x i8> %wide.load3143 to <4 x i16>
  %i.qc = add nuw nsw <4 x i16> %i.qb, %i.py
  %i.qd = lshr <4 x i16> %i.qc, splat (i16 1)
  %i.qe = trunc nuw <4 x i16> %i.qd to <4 x i8>
  %i.qf = add <4 x i8> %wide.load3141, %i.qe
  store <4 x i8> %i.qf, ptr %i.pu, align 1, !alias.scope !279, !noalias !280
  %index.next3144 = add nuw i64 %index3140, 4     ; 2 uses
  %i.qg = icmp eq i64 %index.next3144, %n.vec3138
  br i1 %i.qg, label %.lr.ph.i57.preheader3241, label %vector.body3139, !llvm.loop !93

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #14, !noalias !278
  unreachable

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader3241, %bb.bn
  %.sroa.0.015.i = phi i64 [ %i.qw, %bb.bn ], [ %.sroa.0.015.i.ph, %.lr.ph.i57.preheader3241 ] ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.015.i ; 2 uses
  %i.qi = load i8, ptr %i.qh, align 1, !alias.scope !278, !noundef !5
  %i.qj = add nsw i64 %.sroa.0.015.i, -4          ; 3 uses
  %i.qk = icmp ult i64 %i.qj, %2
  br i1 %i.qk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i57
  %.reass.reass.i59.reass.reass.reass = add i64 %.sroa.0.015.i, %invariant.op.a ; 3 uses
  %i.ql = icmp ult i64 %.reass.reass.i59.reass.reass.reass, %2
  br i1 %i.ql, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i57
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.qj, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #14, !noalias !278
  unreachable

bb.bm:                                            ; preds = %bb.bk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i59.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #14, !noalias !278
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 %i.qj
  %i.qn = load i8, ptr %i.qm, align 1, !alias.scope !278, !noundef !5
  %i.qo = zext i8 %i.qn to i16
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i59.reass.reass.reass
  %i.qq = load i8, ptr %i.qp, align 1, !alias.scope !278, !noundef !5
  %i.qr = zext i8 %i.qq to i16
  %i.qs = add nuw nsw i16 %i.qr, %i.qo
  %i.qt = lshr i16 %i.qs, 1
  %i.qu = trunc nuw i16 %i.qt to i8
  %i.qv = add i8 %i.qi, %i.qu
  store i8 %i.qv, ptr %i.qh, align 1, !alias.scope !278
  %i.qw = add nuw nsw i64 %.sroa.0.015.i, 1       ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %i.qw, %i.es
  br i1 %exitcond.not.i60, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i57, !llvm.loop !94

bb.bo:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.not.i61 = icmp ugt i64 %i.es, %2
  br i1 %.not.i61, label %bb.br, label %bb.bp, !prof !6

bb.bp:                                            ; preds = %bb.bo
  %.not.i.i62 = icmp ugt i64 %i.ep, %i.es
  br i1 %.not.i.i62, label %bb.bq, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63, !prof !4

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !noalias !284
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63: ; preds = %bb.bp
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep ; 2 uses
  %i.qy = sub nuw nsw i64 %i.es, %i.ep            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !283
  %i.qz = add nsw i64 %i.ep, -4                   ; 2 uses
  %i.ra = icmp eq i64 %i.ep, 0
  br i1 %i.ra, label %bb.bs, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64, !prof !4

bb.br:                                            ; preds = %bb.bo
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.es, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14
  unreachable

bb.bs:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.qz, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 %i.qz
  %.sroa.02.0.copyload.i = load i32, ptr %i.rb, align 1, !alias.scope !283
  store i32 %.sroa.02.0.copyload.i, ptr %i.ah, align 4, !noalias !283
  %i.rc = sub nsw i64 %i.ep, %i.bf                ; 2 uses
  %i.rd = icmp samesign ugt i64 %i.bf, %i.ep
  br i1 %i.rd, label %bb.bu, label %bb.bt, !prof !4

bb.bt:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64
  %.not22.i65 = icmp samesign ugt i64 %i.qy, %i.bf
  br i1 %.not22.i65, label %bb.bv, label %bb.bw, !prof !6

bb.bu:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.rc, i64 noundef %i.ep, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14
  unreachable

bb.bv:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.qy, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #14
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 %i.rc ; 2 uses
  %i.rf = and i64 %i.qy, -64                      ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.rf ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rf ; 2 uses
  %.not.i.i.i97.i = icmp eq i64 %i.rf, 0
  br i1 %.not.i.i.i97.i, label %._crit_edge.i, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.bw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i
  %.sroa.0.0101.i = phi ptr [ %i.rk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.re, %bb.bw ] ; 2 uses
  %.sroa.5.0100.i = phi i64 [ %i.rj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.rf, %bb.bw ]
  %.sroa.6.099.i = phi ptr [ %i.ri, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.qx, %bb.bw ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.6.099.i, i64 64 ; 2 uses
  %i.rj = add i64 %.sroa.5.0100.i, -64            ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.0.0101.i, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !285
  store ptr %i.ri, ptr %i.ad, align 8, !noalias !286
  store i64 0, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !286
  store ptr %.sroa.6.099.i, ptr %.sroa.5.0..sroa_idx.i67, align 8, !noalias !286
  store i64 64, ptr %.sroa.652.0..sroa_idx.i, align 8, !noalias !286
  store i64 4, ptr %.sroa.753.0..sroa_idx.i, align 8, !noalias !286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !285
  store ptr %.sroa.0.0101.i, ptr %i.ac, align 8, !alias.scope !287, !noalias !288
  store i64 64, ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !287, !noalias !288
  store ptr %i.rk, ptr %.sroa.556.0..sroa_idx.i, align 8, !alias.scope !287, !noalias !288
  store i64 0, ptr %.sroa.657.0..sroa_idx.i, align 8, !alias.scope !287, !noalias !288
  store i64 4, ptr %.sroa.758.0..sroa_idx.i, align 8, !alias.scope !287, !noalias !288
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ac), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 96, i1 false), !noalias !283
  %i.rl = load i64, ptr %i.cy, align 8, !alias.scope !290, !noalias !283, !noundef !5 ; 2 uses
  %i.rm = load i64, ptr %i.cz, align 8, !alias.scope !290, !noalias !283, !noundef !5
  %i.rn = icmp ult i64 %i.rl, %i.rm
  br i1 %i.rn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i

._crit_edge.i:                                    ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i, %bb.bw
  %i.ro = and i64 %i.qy, 60                       ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.ro
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !291
  store ptr %i.rp, ptr %i.ab, align 8, !noalias !292
  store i64 0, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !292
  store ptr %i.rg, ptr %.sroa.565.0..sroa_idx.i, align 8, !noalias !292
  store i64 %i.ro, ptr %.sroa.666.0..sroa_idx.i, align 8, !noalias !292
  store i64 4, ptr %.sroa.767.0..sroa_idx.i, align 8, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !291
  store ptr %i.rh, ptr %i.aa, align 8, !alias.scope !293, !noalias !294
  store i64 %i.ro, ptr %.sroa.469.0..sroa_idx.i, align 8, !alias.scope !293, !noalias !294
  store ptr %i.rq, ptr %.sroa.570.0..sroa_idx.i, align 8, !alias.scope !293, !noalias !294
  store i64 0, ptr %.sroa.671.0..sroa_idx.i, align 8, !alias.scope !293, !noalias !294
  store i64 4, ptr %.sroa.772.0..sroa_idx.i, align 8, !alias.scope !293, !noalias !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !283
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !291
  %i.rr = load i64, ptr %i.de, align 8, !alias.scope !295, !noalias !283, !noundef !5 ; 2 uses
  %i.rs = load i64, ptr %i.df, align 8, !alias.scope !295, !noalias !283, !noundef !5
  %i.rt = icmp ult i64 %i.rr, %i.rs
  br i1 %i.rt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %._crit_edge.i, %bb.cm
  %i.ru = phi i64 [ %i.tq, %bb.cm ], [ %i.rr, %._crit_edge.i ] ; 3 uses
  %i.rv = add nuw i64 %i.ru, 1
  store i64 %i.rv, ptr %i.de, align 8, !alias.scope !295, !noalias !283
  %i.rw = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae, i64 noundef %i.ru), !noalias !296 ; 2 uses
  %i.rx = extractvalue { ptr, i64 } %i.rw, 0      ; 6 uses
  %i.ry = extractvalue { ptr, i64 } %i.rw, 1      ; 5 uses
  %i.rz = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dg, i64 noundef %i.ru), !noalias !296 ; 2 uses
  %i.sa = extractvalue { ptr, i64 } %i.rz, 0      ; 5 uses
  %i.sb = extractvalue { ptr, i64 } %i.rz, 1      ; 4 uses
  %.not24.i68 = icmp eq ptr %i.rx, null
  br i1 %.not24.i68, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit, label %bb.bx

bb.bx:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sa) ]
  %.not25.i69 = icmp eq i64 %i.ry, 0
  br i1 %.not25.i69, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not26.i70 = icmp eq i64 %i.sb, 0
  br i1 %.not26.i70, label %bb.cb, label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #14
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.sc = load i8, ptr %i.ah, align 4, !noalias !283, !noundef !5 ; 2 uses
  %i.sd = load i8, ptr %i.rx, align 1, !noundef !5
  %i.se = load i8, ptr %i.sa, align 1, !noundef !5 ; 2 uses
  %i.sf = and i8 %i.se, %i.sc
  %i.sg = xor i8 %i.se, %i.sc
  %i.sh = lshr i8 %i.sg, 1
  %i.si = add i8 %i.sf, %i.sd
  %i.sj = add i8 %i.si, %i.sh
  %.not27.i71 = icmp eq i64 %i.ry, 1
  br i1 %.not27.i71, label %bb.cd, label %bb.cc

bb.cb:                                            ; preds = %bb.by
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #14
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %.not28.i = icmp eq i64 %i.sb, 1
  br i1 %.not28.i, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #14
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.sk = load i8, ptr %i.db, align 1, !noalias !283, !noundef !5 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rx, i64 1
  %i.sm = load i8, ptr %i.sl, align 1, !noundef !5
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sa, i64 1
  %i.so = load i8, ptr %i.sn, align 1, !noundef !5 ; 2 uses
  %i.sp = and i8 %i.so, %i.sk
  %i.sq = xor i8 %i.so, %i.sk
  %i.sr = lshr i8 %i.sq, 1
  %i.ss = add i8 %i.sp, %i.sm
  %i.st = add i8 %i.ss, %i.sr
end_hunk_0
begin_hunk_1_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform25apply_predictor_transform:bb.a
  %i.sy = load i8, ptr %i.sx, align 1, !noundef !5
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sa, i64 2
  %i.ta = load i8, ptr %i.sz, align 1, !noundef !5 ; 2 uses
  %i.tb = and i8 %i.ta, %i.sw
  %i.tc = xor i8 %i.ta, %i.sw
  %i.td = lshr i8 %i.tc, 1
  %i.te = add i8 %i.tb, %i.sy
  %i.tf = add i8 %i.te, %i.td
  %.not29.i = icmp eq i64 %i.ry, 3
  br i1 %.not29.i, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.cg
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #14
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %.not30.i = icmp eq i64 %i.sb, 3
  br i1 %.not30.i, label %bb.cn, label %bb.cm

bb.cl:                                            ; preds = %bb.ci
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #14
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.tg = load i8, ptr %i.dd, align 1, !noalias !283, !noundef !5 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.rx, i64 3
  %i.ti = load i8, ptr %i.th, align 1, !noundef !5
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sa, i64 3
  %i.tk = load i8, ptr %i.tj, align 1, !noundef !5 ; 2 uses
  %i.tl = and i8 %i.tk, %i.tg
  %i.tm = xor i8 %i.tk, %i.tg
  %i.tn = lshr i8 %i.tm, 1
  %i.to = add i8 %i.tl, %i.ti
  %i.tp = add i8 %i.to, %i.tn
  store i8 %i.sj, ptr %i.ah, align 4, !noalias !283
  store i8 %i.st, ptr %i.db, align 1, !noalias !283
  store i8 %i.tf, ptr %i.dc, align 2, !noalias !283
  store i8 %i.tp, ptr %i.dd, align 1, !noalias !283
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.rx, i64 noundef %i.ry, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68)
  %i.tq = load i64, ptr %i.de, align 8, !alias.scope !295, !noalias !283, !noundef !5 ; 2 uses
  %i.tr = load i64, ptr %i.df, align 8, !alias.scope !295, !noalias !283, !noundef !5
  %i.ts = icmp ult i64 %i.tq, %i.tr
  br i1 %i.ts, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit

bb.cn:                                            ; preds = %bb.ck
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #14
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i: ; preds = %.lr.ph.i66, %bb.dd
  %i.tt = phi i64 [ %i.vp, %bb.dd ], [ %i.rl, %.lr.ph.i66 ] ; 3 uses
  %i.tu = add nuw i64 %i.tt, 1
  store i64 %i.tu, ptr %i.cy, align 8, !alias.scope !290, !noalias !283
  %i.tv = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.af, i64 noundef %i.tt), !noalias !297 ; 2 uses
  %i.tw = extractvalue { ptr, i64 } %i.tv, 0      ; 6 uses
  %i.tx = extractvalue { ptr, i64 } %i.tv, 1      ; 5 uses
  %i.ty = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.da, i64 noundef %i.tt), !noalias !297 ; 2 uses
  %i.tz = extractvalue { ptr, i64 } %i.ty, 0      ; 5 uses
  %i.ua = extractvalue { ptr, i64 } %i.ty, 1      ; 4 uses
  %.not31.i = icmp eq ptr %i.tw, null
  br i1 %.not31.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i, label %bb.co

bb.co:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tz) ]
  %.not32.i = icmp eq i64 %i.tx, 0
  br i1 %.not32.i, label %bb.cq, label %bb.cp

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i: ; preds = %bb.dd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, %.lr.ph.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !283
  %.not.i.i.i.i = icmp eq i64 %i.rj, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %.lr.ph.i66

bb.cp:                                            ; preds = %bb.co
  %.not33.i = icmp eq i64 %i.ua, 0
  br i1 %.not33.i, label %bb.cs, label %bb.cr

bb.cq:                                            ; preds = %bb.co
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #14
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.ub = load i8, ptr %i.ah, align 4, !noalias !283, !noundef !5 ; 2 uses
  %i.uc = load i8, ptr %i.tw, align 1, !noundef !5
  %i.ud = load i8, ptr %i.tz, align 1, !noundef !5 ; 2 uses
  %i.ue = and i8 %i.ud, %i.ub
  %i.uf = xor i8 %i.ud, %i.ub
  %i.ug = lshr i8 %i.uf, 1
  %i.uh = add i8 %i.ue, %i.uc
  %i.ui = add i8 %i.uh, %i.ug
  %.not34.i = icmp eq i64 %i.tx, 1
  br i1 %.not34.i, label %bb.cu, label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #14
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %.not35.i = icmp eq i64 %i.ua, 1
  br i1 %.not35.i, label %bb.cw, label %bb.cv

bb.cu:                                            ; preds = %bb.cr
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #14
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.uj = load i8, ptr %i.db, align 1, !noalias !283, !noundef !5 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  %i.ul = load i8, ptr %i.uk, align 1, !noundef !5
  %i.um = getelementptr inbounds nuw i8, ptr %i.tz, i64 1
  %i.un = load i8, ptr %i.um, align 1, !noundef !5 ; 2 uses
  %i.uo = and i8 %i.un, %i.uj
  %i.up = xor i8 %i.un, %i.uj
  %i.uq = lshr i8 %i.up, 1
  %i.ur = add i8 %i.uo, %i.ul
  %i.us = add i8 %i.ur, %i.uq
  %i.ut = icmp ugt i64 %i.tx, 2
  br i1 %i.ut, label %bb.cx, label %bb.cy

bb.cw:                                            ; preds = %bb.ct
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #14
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.uu = icmp ugt i64 %i.ua, 2
  br i1 %i.uu, label %bb.cz, label %bb.da

bb.cy:                                            ; preds = %bb.cv
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #14
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.uv = load i8, ptr %i.dc, align 2, !noalias !283, !noundef !5 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  %i.ux = load i8, ptr %i.uw, align 1, !noundef !5
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tz, i64 2
  %i.uz = load i8, ptr %i.uy, align 1, !noundef !5 ; 2 uses
  %i.va = and i8 %i.uz, %i.uv
  %i.vb = xor i8 %i.uz, %i.uv
  %i.vc = lshr i8 %i.vb, 1
  %i.vd = add i8 %i.va, %i.ux
  %i.ve = add i8 %i.vd, %i.vc
  %.not36.i = icmp eq i64 %i.tx, 3
  br i1 %.not36.i, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %bb.cx
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #14
  unreachable

bb.db:                                            ; preds = %bb.cz
  %.not37.i = icmp eq i64 %i.ua, 3
  br i1 %.not37.i, label %bb.de, label %bb.dd

bb.dc:                                            ; preds = %bb.cz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #14
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.vf = load i8, ptr %i.dd, align 1, !noalias !283, !noundef !5 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tw, i64 3
  %i.vh = load i8, ptr %i.vg, align 1, !noundef !5
  %i.vi = getelementptr inbounds nuw i8, ptr %i.tz, i64 3
  %i.vj = load i8, ptr %i.vi, align 1, !noundef !5 ; 2 uses
  %i.vk = and i8 %i.vj, %i.vf
  %i.vl = xor i8 %i.vj, %i.vf
  %i.vm = lshr i8 %i.vl, 1
  %i.vn = add i8 %i.vk, %i.vh
  %i.vo = add i8 %i.vn, %i.vm
  store i8 %i.ui, ptr %i.ah, align 4, !noalias !283
  store i8 %i.us, ptr %i.db, align 1, !noalias !283
  store i8 %i.ve, ptr %i.dc, align 2, !noalias !283
  store i8 %i.vo, ptr %i.dd, align 1, !noalias !283
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.tw, i64 noundef %i.tx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77)
  %i.vp = load i64, ptr %i.cy, align 8, !alias.scope !290, !noalias !283, !noundef !5 ; 2 uses
  %i.vq = load i64, ptr %i.cz, align 8, !alias.scope !290, !noalias !283, !noundef !5
  %i.vr = icmp ult i64 %i.vp, %i.vq
  br i1 %i.vr, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i

bb.de:                                            ; preds = %bb.db
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, %bb.cm, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.df:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %.not.i72 = icmp ugt i64 %i.es, %2
  br i1 %.not.i72, label %bb.dg, label %.preheader.split.i73, !prof !4

.preheader.split.i73:                             ; preds = %bb.df
  %i.vs = icmp ult i64 %i.ep, %i.es
  br i1 %i.vs, label %.lr.ph.i75.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i75.preheader:                             ; preds = %.preheader.split.i73
  %i.vt = shl nuw nsw i64 %..i28, 2
  %i.vu = shl i64 %..i, 2
  %i.vv = xor i64 %i.vu, -1
  %i.vw = add i64 %i.vt, %i.vv
  %.reass4595 = add i64 %i.ep, %invariant.op4594
  %i.vx = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4595)
  %.reass4597 = add i64 %i.vx, %invariant.op4596
  %i.vy = sub i64 %.reass4597, %i.ep
  %i.vz = call i64 @llvm.umin.i64(i64 %i.vw, i64 %i.vy)
  %i.wa = add i64 %i.vz, 1                        ; 3 uses
  %min.iters.check3166 = icmp ult i64 %i.wa, 17
  br i1 %min.iters.check3166, label %.lr.ph.i75.preheader3243, label %vector.memcheck3167

.lr.ph.i75.preheader3243:                         ; preds = %vector.body3177, %vector.memcheck3167, %.lr.ph.i75.preheader
  %.sroa.0.016.i.ph = phi i64 [ %i.ep, %vector.memcheck3167 ], [ %i.ep, %.lr.ph.i75.preheader ], [ %i.wu, %vector.body3177 ]
  br label %.lr.ph.i75

vector.memcheck3167:                              ; preds = %.lr.ph.i75.preheader
  %i.wb = getelementptr i8, ptr %1, i64 %i.ep     ; 2 uses
  %i.wc = shl nuw nsw i64 %..i28, 2
  %i.wd = shl i64 %..i, 2
  %i.we = xor i64 %i.wd, -1
  %i.wf = add i64 %i.wc, %i.we
  %i.wg = add i64 %i.dr, %i.ep                    ; 2 uses
  %i.wh = call i64 @llvm.umax.i64(i64 %2, i64 %i.wg)
  %i.wi = sub i64 %i.wh, %i.ep
  %i.wj = add i64 %i.ds, %i.wi
  %i.wk = call i64 @llvm.umin.i64(i64 %i.wf, i64 %i.wj)
  %i.wl = add i64 %i.wk, %i.ep                    ; 3 uses
  %18 = getelementptr i8, ptr %1, i64 %i.wl
  %i.wm = getelementptr i8, ptr %18, i64 1        ; 2 uses
  %i.wn = getelementptr i8, ptr %1, i64 %i.wg
  %i.wo = getelementptr i8, ptr %i.du, i64 %i.wl
  %19 = sub i64 %i.ep, %i.bf
  %i.wp = getelementptr i8, ptr %1, i64 %19
  %i.wq = getelementptr i8, ptr %i.dv, i64 %i.wl
  %bound03168 = icmp ult ptr %i.wb, %i.wo
  %bound13169 = icmp ult ptr %i.wn, %i.wm
  %found.conflict3170 = and i1 %bound03168, %bound13169
  %bound03171 = icmp ult ptr %i.wb, %i.wq
  %bound13172 = icmp ult ptr %i.wp, %i.wm
  %found.conflict3173 = and i1 %bound03171, %bound13172
  %conflict.rdx3174 = or i1 %found.conflict3170, %found.conflict3173
  br i1 %conflict.rdx3174, label %.lr.ph.i75.preheader3243, label %vector.ph3175

vector.ph3175:                                    ; preds = %vector.memcheck3167
  %i.wr = and i64 %i.wa, 15                       ; 2 uses
  %i.ws = icmp eq i64 %i.wr, 0
  %i.wt = select i1 %i.ws, i64 16, i64 %i.wr
  %n.vec3176 = sub i64 %i.wa, %i.wt               ; 2 uses
  %i.wu = add i64 %i.ep, %n.vec3176
  br label %vector.body3177

vector.body3177:                                  ; preds = %vector.body3177, %vector.ph3175
  %index3178 = phi i64 [ 0, %vector.ph3175 ], [ %index.next3182, %vector.body3177 ] ; 2 uses
  %i.wv = add nuw i64 %i.ep, %index3178           ; 2 uses
  %i.ww = sub nsw i64 %i.wv, %i.bf                ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 %i.wv ; 2 uses
  %wide.load3179 = load <16 x i8>, ptr %i.wx, align 1, !alias.scope !299, !noalias !300
  %i.wy = getelementptr i8, ptr %1, i64 %i.ww
  %i.wz = getelementptr i8, ptr %i.wy, i64 -4
  %wide.load3180 = load <16 x i8>, ptr %i.wz, align 1, !alias.scope !301
  %i.xa = zext <16 x i8> %wide.load3180 to <16 x i16>
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ww
  %wide.load3181 = load <16 x i8>, ptr %i.xb, align 1, !alias.scope !302
  %i.xc = zext <16 x i8> %wide.load3181 to <16 x i16>
  %i.xd = add nuw nsw <16 x i16> %i.xc, %i.xa
  %i.xe = lshr <16 x i16> %i.xd, splat (i16 1)
  %i.xf = trunc nuw <16 x i16> %i.xe to <16 x i8>
  %i.xg = add <16 x i8> %wide.load3179, %i.xf
  store <16 x i8> %i.xg, ptr %i.wx, align 1, !alias.scope !299, !noalias !300
  %index.next3182 = add nuw i64 %index3178, 16    ; 2 uses
  %i.xh = icmp eq i64 %index.next3182, %n.vec3176
  br i1 %i.xh, label %.lr.ph.i75.preheader3243, label %vector.body3177, !llvm.loop !126

bb.dg:                                            ; preds = %bb.df
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !298
  unreachable

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.preheader3243, %bb.dh
  %.sroa.0.016.i = phi i64 [ %i.xx, %bb.dh ], [ %.sroa.0.016.i.ph, %.lr.ph.i75.preheader3243 ] ; 3 uses
  %i.xi = sub nsw i64 %.sroa.0.016.i, %i.bf       ; 2 uses
  %i.xj = add nsw i64 %i.xi, -4                   ; 3 uses
  %i.xk = icmp ult i64 %i.xj, %2
  br i1 %i.xk, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %.lr.ph.i75
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.016.i ; 2 uses
  %i.xm = load i8, ptr %i.xl, align 1, !alias.scope !298, !noundef !5
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 %i.xj
  %i.xo = load i8, ptr %i.xn, align 1, !alias.scope !298, !noundef !5
  %i.xp = zext i8 %i.xo to i16
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 %i.xi
  %i.xr = load i8, ptr %i.xq, align 1, !alias.scope !298, !noundef !5
  %i.xs = zext i8 %i.xr to i16
  %i.xt = add nuw nsw i16 %i.xs, %i.xp
  %i.xu = lshr i16 %i.xt, 1
  %i.xv = trunc nuw i16 %i.xu to i8
  %i.xw = add i8 %i.xm, %i.xv
  store i8 %i.xw, ptr %i.xl, align 1, !alias.scope !298
  %i.xx = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %i.xx, %i.es
  br i1 %exitcond.not.i76, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i75, !llvm.loop !127

bb.di:                                            ; preds = %.lr.ph.i75
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.xj, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #14, !noalias !298
  unreachable

bb.dj:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %.not.i77 = icmp ugt i64 %i.es, %2
  br i1 %.not.i77, label %bb.dk, label %.preheader.split.i78, !prof !4

.preheader.split.i78:                             ; preds = %bb.dj
  %i.xy = icmp ult i64 %i.ep, %i.es
  br i1 %i.xy, label %.lr.ph.i80.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i80.preheader:                             ; preds = %.preheader.split.i78
  %i.xz = shl nuw nsw i64 %..i28, 2
  %i.ya = shl i64 %..i, 2
  %i.yb = xor i64 %i.ya, -1
  %i.yc = add i64 %i.xz, %i.yb
  %.reass = add i64 %i.ep, %invariant.op4589
  %i.yd = call i64 @llvm.umax.i64(i64 %2, i64 %.reass)
  %.reass4591 = add i64 %i.yd, %invariant.op4590
  %i.ye = sub i64 %.reass4591, %i.ep
  %i.yf = sub i64 %i.ep, %i.bf                    ; 2 uses
  %i.yg = call i64 @llvm.umax.i64(i64 %2, i64 %i.yf)
  %i.yh = add i64 %i.yg, %i.bf
  %i.yi = sub i64 %i.yh, %i.ep                    ; 2 uses
  %i.yj = call i64 @llvm.umin.i64(i64 %i.ye, i64 %i.yi)
  %i.yk = call i64 @llvm.umin.i64(i64 %i.yc, i64 %i.yj)
  %i.yl = add i64 %i.yk, 1                        ; 3 uses
  %min.iters.check3206 = icmp ult i64 %i.yl, 17
  br i1 %min.iters.check3206, label %.lr.ph.i80.preheader3245, label %vector.memcheck3207

.lr.ph.i80.preheader3245:                         ; preds = %vector.body3217, %vector.memcheck3207, %.lr.ph.i80.preheader
  %.sroa.0.015.i81.ph = phi i64 [ %i.ep, %vector.memcheck3207 ], [ %i.ep, %.lr.ph.i80.preheader ], [ %i.zf, %vector.body3217 ]
  br label %.lr.ph.i80

vector.memcheck3207:                              ; preds = %.lr.ph.i80.preheader
  %i.ym = getelementptr i8, ptr %1, i64 %i.ep     ; 2 uses
  %i.yn = shl nuw nsw i64 %..i28, 2
  %i.yo = shl i64 %..i, 2
  %i.yp = xor i64 %i.yo, -1
  %i.yq = add i64 %i.yn, %i.yp
  %.reass4593 = add i64 %i.ep, %invariant.op4592  ; 2 uses
  %i.yr = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4593)
  %i.ys = sub i64 %i.yr, %i.ep
  %i.yt = add i64 %9, %i.ys
  %i.yu = call i64 @llvm.umin.i64(i64 %i.yt, i64 %i.yi)
  %i.yv = call i64 @llvm.umin.i64(i64 %i.yq, i64 %i.yu)
  %i.yw = add i64 %i.yv, %i.ep                    ; 3 uses
  %20 = getelementptr i8, ptr %1, i64 %i.yw
  %21 = getelementptr i8, ptr %20, i64 1          ; 2 uses
  %i.yx = getelementptr i8, ptr %1, i64 %i.yf
  %i.yy = getelementptr i8, ptr %i.dt, i64 %i.yw
  %i.yz = getelementptr i8, ptr %1, i64 %.reass4593
  %reass.sub3229 = sub i64 %i.yw, %i.bf
  %i.za = getelementptr i8, ptr %1, i64 %reass.sub3229
  %i.zb = getelementptr i8, ptr %i.za, i64 5
  %bound03208 = icmp ult ptr %i.ym, %i.yy
  %bound13209 = icmp ult ptr %i.yx, %21
  %found.conflict3210 = and i1 %bound03208, %bound13209
  %bound03211 = icmp ult ptr %i.ym, %i.zb
  %bound13212 = icmp ult ptr %i.yz, %21
  %found.conflict3213 = and i1 %bound03211, %bound13212
  %conflict.rdx3214 = or i1 %found.conflict3210, %found.conflict3213
  br i1 %conflict.rdx3214, label %.lr.ph.i80.preheader3245, label %vector.ph3215

vector.ph3215:                                    ; preds = %vector.memcheck3207
  %i.zc = and i64 %i.yl, 15                       ; 2 uses
  %i.zd = icmp eq i64 %i.zc, 0
  %i.ze = select i1 %i.zd, i64 16, i64 %i.zc
  %n.vec3216 = sub i64 %i.yl, %i.ze               ; 2 uses
  %i.zf = add i64 %i.ep, %n.vec3216
  br label %vector.body3217

vector.body3217:                                  ; preds = %vector.body3217, %vector.ph3215
  %index3218 = phi i64 [ 0, %vector.ph3215 ], [ %index.next3222, %vector.body3217 ] ; 2 uses
  %i.zg = add nuw i64 %i.ep, %index3218           ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 %i.zg ; 2 uses
  %wide.load3219 = load <16 x i8>, ptr %i.zh, align 1, !alias.scope !304, !noalias !305
  %i.zi = sub nsw i64 %i.zg, %i.bf                ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 %i.zi
  %wide.load3220 = load <16 x i8>, ptr %i.zj, align 1, !alias.scope !306
  %i.zk = zext <16 x i8> %wide.load3220 to <16 x i16>
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 %i.zi
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 4
  %wide.load3221 = load <16 x i8>, ptr %i.zm, align 1, !alias.scope !307
  %i.zn = zext <16 x i8> %wide.load3221 to <16 x i16>
  %i.zo = add nuw nsw <16 x i16> %i.zn, %i.zk
  %i.zp = lshr <16 x i16> %i.zo, splat (i16 1)
  %i.zq = trunc nuw <16 x i16> %i.zp to <16 x i8>
  %i.zr = add <16 x i8> %wide.load3219, %i.zq
  store <16 x i8> %i.zr, ptr %i.zh, align 1, !alias.scope !304, !noalias !305
  %index.next3222 = add nuw i64 %index3218, 16    ; 2 uses
  %i.zs = icmp eq i64 %index.next3222, %n.vec3216
  br i1 %i.zs, label %.lr.ph.i80.preheader3245, label %vector.body3217, !llvm.loop !134

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !303
  unreachable

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.preheader3245, %bb.do
  %.sroa.0.015.i81 = phi i64 [ %i.aaj, %bb.do ], [ %.sroa.0.015.i81.ph, %.lr.ph.i80.preheader3245 ] ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.015.i81 ; 2 uses
  %i.zu = load i8, ptr %i.zt, align 1, !alias.scope !303, !noundef !5
  %i.zv = sub nsw i64 %.sroa.0.015.i81, %i.bf     ; 4 uses
  %i.zw = icmp ult i64 %i.zv, %2
  br i1 %i.zw, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph.i80
  %i.zx = add nuw i64 %i.zv, 4                    ; 3 uses
  %i.zy = icmp ult i64 %i.zx, %2
  br i1 %i.zy, label %bb.do, label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i80
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.zv, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #14, !noalias !303
  unreachable

bb.dn:                                            ; preds = %bb.dl
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.zx, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #14, !noalias !303
  unreachable

bb.do:                                            ; preds = %bb.dl
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 %i.zv
  %i.aaa = load i8, ptr %i.zz, align 1, !alias.scope !303, !noundef !5
  %i.aab = zext i8 %i.aaa to i16
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 %i.zx
  %i.aad = load i8, ptr %i.aac, align 1, !alias.scope !303, !noundef !5
  %i.aae = zext i8 %i.aad to i16
  %i.aaf = add nuw nsw i16 %i.aae, %i.aab
  %i.aag = lshr i16 %i.aaf, 1
  %i.aah = trunc nuw i16 %i.aag to i8
  %i.aai = add i8 %i.zu, %i.aah
  store i8 %i.aai, ptr %i.zt, align 1, !alias.scope !303
  %i.aaj = add nuw nsw i64 %.sroa.0.015.i81, 1    ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.aaj, %i.es
  br i1 %exitcond.not.i82, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i80, !llvm.loop !135

bb.dp:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.not.i83 = icmp ugt i64 %i.es, %2
  br i1 %.not.i83, label %bb.ds, label %bb.dq, !prof !6

bb.dq:                                            ; preds = %bb.dp
  %.not.i.i84 = icmp ugt i64 %i.ep, %i.es
  br i1 %.not.i.i84, label %bb.dr, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85, !prof !4

bb.dr:                                            ; preds = %bb.dq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #14, !noalias !309
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85: ; preds = %bb.dq
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep ; 4 uses
  %i.aal = sub nuw nsw i64 %i.es, %i.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !308
  %i.aam = add nsw i64 %i.ep, -4                  ; 2 uses
  %i.aan = icmp eq i64 %i.ep, 0
  br i1 %i.aan, label %bb.dt, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86, !prof !4

bb.ds:                                            ; preds = %bb.dp
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.es, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #14
  unreachable

bb.dt:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aam, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 %i.aam
  %.sroa.01.0.copyload.i87 = load i32, ptr %i.aao, align 1, !alias.scope !308
  store i32 %.sroa.01.0.copyload.i87, ptr %i.z, align 4, !noalias !308
  %i.aap = sub nsw i64 %i.ep, %i.bf               ; 4 uses
  %i.aaq = add nsw i64 %i.aap, -4                 ; 4 uses
  %i.aar = icmp ugt i64 %i.aaq, %i.ep
  br i1 %i.aar, label %bb.dv, label %bb.du, !prof !4

bb.du:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  %i.aas = add nuw i64 %i.aap, 4                  ; 3 uses
  %.not157 = icmp ult i64 %i.aap, %i.ep
  br i1 %.not157, label %bb.dw, label %bb.dx, !prof !7

bb.dv:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aaq, i64 noundef %i.ep, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #14
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 %i.aaq
  %i.aau = sub nuw nsw i64 %i.ep, %i.aaq
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 %i.aap
  %i.aaw = sub nuw nsw i64 %i.ep, %i.aas
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aas
  %i.aay = getelementptr inbounds nuw i8, ptr %1, i64 %i.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !310
  store ptr %i.aay, ptr %i.w, align 8, !noalias !311
  store i64 0, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !311
  store ptr %i.aak, ptr %.sroa.5.0..sroa_idx.i88, align 8, !noalias !311
  store i64 %i.aal, ptr %.sroa.637.0..sroa_idx.i, align 8, !noalias !311
  store i64 4, ptr %.sroa.7.0..sroa_idx.i89, align 8, !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !310
  store ptr %i.aat, ptr %i.v, align 8, !alias.scope !312, !noalias !313
  store i64 %i.aau, ptr %.sroa.439.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313
  store ptr %i.aak, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313
  store i64 0, ptr %.sroa.641.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313
  store i64 4, ptr %.sroa.742.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !314
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.v), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !314
  store ptr %i.aav, ptr %i.t, align 8, !alias.scope !315, !noalias !316
  store i64 %i.bf, ptr %.sroa.444.0..sroa_idx.i, align 8, !alias.scope !315, !noalias !316
  store ptr %i.aak, ptr %.sroa.545.0..sroa_idx.i, align 8, !alias.scope !315, !noalias !316
  store i64 0, ptr %.sroa.646.0..sroa_idx.i, align 8, !alias.scope !315, !noalias !316
  store i64 4, ptr %.sroa.747.0..sroa_idx.i, align 8, !alias.scope !315, !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !317
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !317
  store ptr %i.aax, ptr %i.r, align 8, !alias.scope !318, !noalias !319
  store i64 %i.aaw, ptr %.sroa.449.0..sroa_idx.i, align 8, !alias.scope !318, !noalias !319
  store ptr %i.aak, ptr %.sroa.550.0..sroa_idx.i, align 8, !alias.scope !318, !noalias !319
  store i64 0, ptr %.sroa.651.0..sroa_idx.i, align 8, !alias.scope !318, !noalias !319
  store i64 4, ptr %.sroa.752.0..sroa_idx.i, align 8, !alias.scope !318, !noalias !319
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.r), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(208) %i.y, i64 208, i1 false), !noalias !308
  %i.aaz = load i64, ptr %i.co, align 8, !alias.scope !321, !noalias !308, !noundef !5 ; 2 uses
  %i.aba = load i64, ptr %i.cp, align 8, !alias.scope !321, !noalias !308, !noundef !5
  %i.abb = icmp ult i64 %i.aaz, %i.aba
  br i1 %i.abb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit

bb.dx:                                            ; preds = %bb.du
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aas, i64 noundef %i.ep, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #14
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.dw, %bb.fd
  %i.abc = phi i64 [ %i.afa, %bb.fd ], [ %i.aaz, %bb.dw ] ; 3 uses
  %i.abd = add nuw i64 %i.abc, 1
  store i64 %i.abd, ptr %i.co, align 8, !alias.scope !321, !noalias !308
  %i.abe = load i64, ptr %i.cq, align 8, !alias.scope !322, !noalias !308, !noundef !5
  %i.abf = add i64 %i.abe, %i.abc                 ; 2 uses
  %i.abg = load i64, ptr %i.cr, align 8, !alias.scope !323, !noalias !308, !noundef !5
  %i.abh = add i64 %i.abg, %i.abf                 ; 2 uses
  %i.abi = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.x, i64 noundef %i.abh), !noalias !324 ; 2 uses
  %i.abj = extractvalue { ptr, i64 } %i.abi, 0    ; 6 uses
  %i.abk = extractvalue { ptr, i64 } %i.abi, 1    ; 5 uses
  %i.abl = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs, i64 noundef %i.abh), !noalias !324 ; 2 uses
  %i.abm = extractvalue { ptr, i64 } %i.abl, 0    ; 5 uses
  %i.abn = extractvalue { ptr, i64 } %i.abl, 1    ; 4 uses
  %i.abo = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ct, i64 noundef %i.abf), !noalias !325 ; 2 uses
  %i.abp = extractvalue { ptr, i64 } %i.abo, 0    ; 5 uses
  %i.abq = extractvalue { ptr, i64 } %i.abo, 1    ; 4 uses
  %i.abr = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu, i64 noundef %i.abc), !noalias !326 ; 2 uses
  %i.abs = extractvalue { ptr, i64 } %i.abr, 0    ; 5 uses
  %i.abt = extractvalue { ptr, i64 } %i.abr, 1    ; 4 uses
  %.not22.i90 = icmp eq ptr %i.abj, null
  br i1 %.not22.i90, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit, label %bb.dy

bb.dy:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i
end_hunk_1
