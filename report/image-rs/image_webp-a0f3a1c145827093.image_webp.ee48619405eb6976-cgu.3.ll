Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.3?download=true
inline.NumInlined: 164
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform21apply_color_transform:bb.a
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
  %i.bf = shl nuw nsw i64 %i.az, 2                ; 57 uses
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
  %scevgep = getelementptr i8, ptr %1, i64 -4
  %invariant.op4584 = sub i64 4, %i.bf
  %invariant.op4585 = add i64 %i.bf, -4
  %invariant.op4587.a = sub i64 5, %i.bf
  %invariant.op4589 = sub i64 -4, %i.bf
  %invariant.op4591 = add i64 %i.bf, 4
  %invariant.op4593 = sub i64 -3, %i.bf
  %invariant.op4595 = add i64 %i.bf, 4
  %invariant.op = sub i64 -4, %i.bf
  %invariant.op4597 = sub i64 -4, %i.bf
  %invariant.op4599 = add i64 %i.bf, 4
  %invariant.op4601 = sub i64 -3, %i.bf
  %invariant.op4582 = sub i64 -4, %i.bf
  %invariant.op4603 = sub i64 4, %i.bf
  %invariant.op4605 = add i64 %i.bf, -4
  %invariant.op4607 = sub i64 5, %i.bf
  %invariant.op4583 = sub i64 4, %i.bf
  br label %.split

.lr.ph:                                           ; preds = %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, %.loopexit168
  %.sroa.08.0863 = phi i64 [ %i.dp, %.loopexit168 ], [ 1, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit ] ; 3 uses
  %i.dp = add nuw nsw i64 %.sroa.08.0863, 1       ; 2 uses
  %i.dq = mul nuw nsw i64 %i.bf, %.sroa.08.0863   ; 6 uses
  %i.dr = add nsw i64 %.sroa.08.0863, -1
  %i.ds = mul nuw nsw i64 %i.bf, %i.dr            ; 4 uses
  %i.dt = icmp samesign ult i64 %i.dq, %2
  br i1 %i.dt, label %bb.ji, label %bb.jh

..loopexit_crit_edge:                             ; preds = %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit
  %exitcond1569.not = icmp eq i64 %i.du, %i.ba
  br i1 %exitcond1569.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, %.split.lr.ph
  store i8 -1, ptr %0, align 8
  ret void

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %.sroa.012.0868 = phi i64 [ %i.du, %..loopexit_crit_edge ], [ 1, %.split.preheader ] ; 3 uses
  %i.du = add nuw nsw i64 %.sroa.012.0868, 1      ; 2 uses
  %i.dv = lshr i64 %.sroa.012.0868, %i.bo
  %i.dw = mul nuw nsw i64 %i.dv, %.sroa.5.0.extract.trunc.i
  %i.dx = mul nuw nsw i64 %.sroa.012.0868, %i.az  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.split, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit
  %.sroa.014.0866 = phi i64 [ 0, %.split ], [ %i.dy, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit ] ; 3 uses
  %i.dy = add nuw nsw i64 %.sroa.014.0866, 1      ; 3 uses
  %i.dz = add nuw nsw i64 %.sroa.014.0866, %i.dw
  %i.ea = shl nuw nsw i64 %i.dz, 2
  %i.eb = or disjoint i64 %i.ea, 1                ; 3 uses
  %i.ec = icmp samesign ult i64 %i.eb, %7
  br i1 %i.ec, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !noundef !5
  %i.ef = shl i64 %.sroa.014.0866, %i.bo
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.ef, i64 1) ; 14 uses
  %i.eg = add i64 %..i, %i.dx
  %i.eh = shl i64 %i.eg, 2                        ; 133 uses
  %i.ei = shl i64 %i.dy, %i.bo
  %..i28 = call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 range(i64 0, 65536) %i.az, i64 %i.ei) ; 14 uses
  %i.ej = add nuw i64 %..i28, %i.dx
  %i.ek = shl i64 %i.ej, 2                        ; 53 uses
  switch i8 %i.ee, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit [
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
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit: ; preds = %bb.do, %bb.dh, %bb.bn, %bb.z, %bb.v, %bb.r, %bb.n, %.lr.ph.i30, %.preheader.split.i78, %.preheader.split.i73, %.preheader.split.i56, %.preheader.split.i48, %.preheader.split.i43, %.preheader.split.i38, %.preheader.split.i32, %.split.i, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_13.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_12.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_11.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit, %bb.g
  %exitcond1568.not = icmp eq i64 %i.dy, %.sroa.5.0.extract.trunc.i
  br i1 %exitcond1568.not, label %..loopexit_crit_edge, label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %.not.i29 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i29, label %bb.j, label %.split.i, !prof !4

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #14, !noalias !251
  unreachable

.split.i:                                         ; preds = %bb.i
  %i.el = or disjoint i64 %i.eh, 3                ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  br i1 %i.em, label %.lr.ph.i30, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i30:                                       ; preds = %.split.i, %.lr.ph.i30
  %.sroa.0.06.i = phi i64 [ %i.eq, %.lr.ph.i30 ], [ %i.el, %.split.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.06.i ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !251, !noundef !5
  %i.ep = add i8 %i.eo, -1
  store i8 %i.ep, ptr %i.en, align 1, !alias.scope !251
  %i.eq = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ek
  br i1 %i.er, label %.lr.ph.i30, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %.not.i31 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i31, label %bb.l, label %.preheader.split.i32, !prof !4

.preheader.split.i32:                             ; preds = %bb.k
  %i.es = icmp ult i64 %i.eh, %i.ek
  br i1 %i.es, label %.lr.ph.i33.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i33.preheader:                             ; preds = %.preheader.split.i32
  %i.et = shl nuw nsw i64 %..i28, 2
  %i.eu = shl i64 %..i, 2
  %i.ev = xor i64 %i.eu, -1
  %i.ew = add i64 %i.et, %i.ev
  %i.ex = add i64 %i.eh, -4
  %i.ey = call i64 @llvm.umax.i64(i64 %2, i64 %i.ex)
  %i.ez = add i64 %i.ey, 4
  %i.fa = sub i64 %i.ez, %i.eh
  %i.fb = call i64 @llvm.umin.i64(i64 %i.ew, i64 %i.fa)
  %i.fc = add i64 %i.fb, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.fc, 5
  br i1 %min.iters.check, label %.lr.ph.i33.preheader3228, label %vector.ph3034

.lr.ph.i33.preheader3228:                         ; preds = %vector.body3036, %.lr.ph.i33.preheader
  %.sroa.0.09.i34.ph = phi i64 [ %i.eh, %.lr.ph.i33.preheader ], [ %i.fg, %vector.body3036 ]
  br label %.lr.ph.i33

vector.ph3034:                                    ; preds = %.lr.ph.i33.preheader
  %i.fd = and i64 %i.fc, 3                        ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 0
  %i.ff = select i1 %i.fe, i64 4, i64 %i.fd
  %n.vec3035 = sub i64 %i.fc, %i.ff               ; 2 uses
  %i.fg = add i64 %i.eh, %n.vec3035
  %scevgep3225 = getelementptr i8, ptr %scevgep, i64 %i.eh
  %load_initial = load <4 x i8>, ptr %scevgep3225, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh
  br label %vector.body3036

vector.body3036:                                  ; preds = %vector.body3036, %vector.ph3034
  %store_forwarded = phi <4 x i8> [ %load_initial, %vector.ph3034 ], [ %i.fj, %vector.body3036 ]
  %index3037 = phi i64 [ 0, %vector.ph3034 ], [ %index.next3040, %vector.body3036 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %index3037 ; 2 uses
  %wide.load3038 = load <4 x i8>, ptr %i.fi, align 1, !alias.scope !252
  %i.fj = add <4 x i8> %store_forwarded, %wide.load3038 ; 2 uses
  store <4 x i8> %i.fj, ptr %i.fi, align 1, !alias.scope !252
  %index.next3040 = add nuw i64 %index3037, 4     ; 2 uses
  %i.fk = icmp eq i64 %index.next3040, %n.vec3035
  br i1 %i.fk, label %.lr.ph.i33.preheader3228, label %vector.body3036, !llvm.loop !36

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #14, !noalias !252
  unreachable

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader3228, %bb.n
  %.sroa.0.09.i34 = phi i64 [ %i.fs, %bb.n ], [ %.sroa.0.09.i34.ph, %.lr.ph.i33.preheader3228 ] ; 3 uses
  %i.fl = add nsw i64 %.sroa.0.09.i34, -4         ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %2
  br i1 %i.fm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i33
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fl, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #14, !noalias !252
  unreachable

bb.n:                                             ; preds = %.lr.ph.i33
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i34 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !252, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %i.fl
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !252, !noundef !5
  %i.fr = add i8 %i.fq, %i.fo
  store i8 %i.fr, ptr %i.fn, align 1, !alias.scope !252
  %i.fs = add nuw nsw i64 %.sroa.0.09.i34, 1      ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.fs, %i.ek
  br i1 %exitcond.not.i35, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i33, !llvm.loop !37

bb.o:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %.not.i37 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i37, label %bb.p, label %.preheader.split.i38, !prof !4

.preheader.split.i38:                             ; preds = %bb.o
  %i.ft = icmp ult i64 %i.eh, %i.ek
  br i1 %i.ft, label %.lr.ph.i39.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i39.preheader:                             ; preds = %.preheader.split.i38
  %i.fu = shl nuw nsw i64 %..i28, 2
  %i.fv = shl i64 %..i, 2
  %i.fw = xor i64 %i.fv, -1
  %i.fx = add i64 %i.fu, %i.fw
  %i.fy = sub i64 %i.eh, %i.bf                    ; 2 uses
  %i.fz = call i64 @llvm.umax.i64(i64 %2, i64 %i.fy)
  %i.ga = add i64 %i.fz, %i.bf
  %i.gb = sub i64 %i.ga, %i.eh                    ; 2 uses
  %i.gc = call i64 @llvm.umin.i64(i64 %i.fx, i64 %i.gb)
  %i.gd = add i64 %i.gc, 1                        ; 3 uses
  %min.iters.check3049 = icmp ult i64 %i.gd, 17
  br i1 %min.iters.check3049, label %.lr.ph.i39.preheader3230, label %vector.memcheck

.lr.ph.i39.preheader3230:                         ; preds = %vector.body3052, %vector.memcheck, %.lr.ph.i39.preheader
  %.sroa.0.09.i40.ph = phi i64 [ %i.eh, %vector.memcheck ], [ %i.eh, %.lr.ph.i39.preheader ], [ %i.gs, %vector.body3052 ]
  br label %.lr.ph.i39

vector.memcheck:                                  ; preds = %.lr.ph.i39.preheader
  %i.ge = getelementptr i8, ptr %1, i64 %i.eh
  %i.gf = shl nuw nsw i64 %..i28, 2
  %i.gg = shl i64 %..i, 2
  %i.gh = xor i64 %i.gg, -1
  %i.gi = add i64 %i.gf, %i.gh
  %i.gj = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gb)
  %i.gk = add i64 %i.gj, %i.eh
  %8 = add i64 %i.gk, 1                           ; 2 uses
  %i.gl = getelementptr i8, ptr %1, i64 %8
  %i.gm = getelementptr i8, ptr %1, i64 %i.fy
  %i.gn = sub i64 %8, %i.bf
  %i.go = getelementptr i8, ptr %1, i64 %i.gn
  %bound0 = icmp ult ptr %i.ge, %i.go
  %bound1 = icmp ult ptr %i.gm, %i.gl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i39.preheader3230, label %vector.ph3050

vector.ph3050:                                    ; preds = %vector.memcheck
  %i.gp = and i64 %i.gd, 15                       ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  %i.gr = select i1 %i.gq, i64 16, i64 %i.gp
  %n.vec3051 = sub i64 %i.gd, %i.gr               ; 2 uses
  %i.gs = add i64 %i.eh, %n.vec3051
  br label %vector.body3052

vector.body3052:                                  ; preds = %vector.body3052, %vector.ph3050
  %index3053 = phi i64 [ 0, %vector.ph3050 ], [ %index.next3056, %vector.body3052 ] ; 2 uses
  %i.gt = add nuw i64 %i.eh, %index3053           ; 2 uses
  %i.gu = sub nsw i64 %i.gt, %i.bf
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 %i.gt ; 2 uses
  %wide.load3054 = load <16 x i8>, ptr %i.gv, align 1, !alias.scope !254, !noalias !255
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 %i.gu
  %wide.load3055 = load <16 x i8>, ptr %i.gw, align 1, !alias.scope !256
  %i.gx = add <16 x i8> %wide.load3055, %wide.load3054
  store <16 x i8> %i.gx, ptr %i.gv, align 1, !alias.scope !254, !noalias !255
  %index.next3056 = add nuw i64 %index3053, 16    ; 2 uses
  %i.gy = icmp eq i64 %index.next3056, %n.vec3051
  br i1 %i.gy, label %.lr.ph.i39.preheader3230, label %vector.body3052, !llvm.loop !43

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #14, !noalias !253
  unreachable

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader3230, %bb.r
  %.sroa.0.09.i40 = phi i64 [ %i.hg, %bb.r ], [ %.sroa.0.09.i40.ph, %.lr.ph.i39.preheader3230 ] ; 3 uses
  %i.gz = sub nsw i64 %.sroa.0.09.i40, %i.bf      ; 3 uses
  %i.ha = icmp ult i64 %i.gz, %2
  br i1 %i.ha, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i39
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gz, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #14, !noalias !253
  unreachable

bb.r:                                             ; preds = %.lr.ph.i39
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i40 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !253, !noundef !5
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %i.gz
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !253, !noundef !5
  %i.hf = add i8 %i.he, %i.hc
  store i8 %i.hf, ptr %i.hb, align 1, !alias.scope !253
  %i.hg = add nuw nsw i64 %.sroa.0.09.i40, 1      ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.hg, %i.ek
  br i1 %exitcond.not.i41, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i39, !llvm.loop !44

bb.s:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.not.i42 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i42, label %bb.t, label %.preheader.split.i43, !prof !4

.preheader.split.i43:                             ; preds = %bb.s
  %i.hh = icmp ult i64 %i.eh, %i.ek
  br i1 %i.hh, label %.lr.ph.i44.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i44.preheader:                             ; preds = %.preheader.split.i43
  %i.hi = shl nuw nsw i64 %..i28, 2
  %i.hj = shl i64 %..i, 2
  %i.hk = xor i64 %i.hj, -1
  %i.hl = add i64 %i.hi, %i.hk
  %.reass4604 = add i64 %i.eh, %invariant.op4603  ; 2 uses
  %i.hm = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4604)
  %.reass4606 = add i64 %i.hm, %invariant.op4605
  %i.hn = sub i64 %.reass4606, %i.eh              ; 2 uses
  %i.ho = call i64 @llvm.umin.i64(i64 %i.hl, i64 %i.hn)
  %i.hp = add i64 %i.ho, 1                        ; 3 uses
  %min.iters.check3070 = icmp ult i64 %i.hp, 17
  br i1 %min.iters.check3070, label %.lr.ph.i44.preheader3232, label %vector.memcheck3071

.lr.ph.i44.preheader3232:                         ; preds = %vector.body3077, %vector.memcheck3071, %.lr.ph.i44.preheader
  %.sroa.0.09.i45.ph = phi i64 [ %i.eh, %vector.memcheck3071 ], [ %i.eh, %.lr.ph.i44.preheader ], [ %i.ie, %vector.body3077 ]
  br label %.lr.ph.i44

vector.memcheck3071:                              ; preds = %.lr.ph.i44.preheader
  %i.hq = getelementptr i8, ptr %1, i64 %i.eh
  %i.hr = shl nuw nsw i64 %..i28, 2
  %i.hs = shl i64 %..i, 2
  %i.ht = xor i64 %i.hs, -1
  %i.hu = add i64 %i.hr, %i.ht
  %i.hv = call i64 @llvm.umin.i64(i64 %i.hu, i64 %i.hn)
  %i.hw = add i64 %i.hv, %i.eh                    ; 2 uses
  %i.hx = getelementptr i8, ptr %1, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 1
  %i.hz = getelementptr i8, ptr %1, i64 %.reass4604
  %.reass4608 = add i64 %i.hw, %invariant.op4607
  %i.ia = getelementptr i8, ptr %1, i64 %.reass4608
  %bound03072 = icmp ult ptr %i.hq, %i.ia
  %bound13073 = icmp ult ptr %i.hz, %i.hy
  %found.conflict3074 = and i1 %bound03072, %bound13073
  br i1 %found.conflict3074, label %.lr.ph.i44.preheader3232, label %vector.ph3075

vector.ph3075:                                    ; preds = %vector.memcheck3071
  %i.ib = and i64 %i.hp, 15                       ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 0
  %i.id = select i1 %i.ic, i64 16, i64 %i.ib
  %n.vec3076 = sub i64 %i.hp, %i.id               ; 2 uses
  %i.ie = add i64 %i.eh, %n.vec3076
  br label %vector.body3077

vector.body3077:                                  ; preds = %vector.body3077, %vector.ph3075
  %index3078 = phi i64 [ 0, %vector.ph3075 ], [ %index.next3081, %vector.body3077 ] ; 2 uses
  %i.if = add nuw i64 %i.eh, %index3078           ; 2 uses
  %i.ig = sub i64 %i.if, %i.bf
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 %i.if ; 2 uses
  %wide.load3079 = load <16 x i8>, ptr %i.ih, align 1, !alias.scope !258, !noalias !259
  %i.ii = getelementptr i8, ptr %1, i64 %i.ig
  %i.ij = getelementptr i8, ptr %i.ii, i64 4
  %wide.load3080 = load <16 x i8>, ptr %i.ij, align 1, !alias.scope !260
  %i.ik = add <16 x i8> %wide.load3080, %wide.load3079
  store <16 x i8> %i.ik, ptr %i.ih, align 1, !alias.scope !258, !noalias !259
  %index.next3081 = add nuw i64 %index3078, 16    ; 2 uses
  %i.il = icmp eq i64 %index.next3081, %n.vec3076
  br i1 %i.il, label %.lr.ph.i44.preheader3232, label %vector.body3077, !llvm.loop !50

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #14, !noalias !257
  unreachable

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader3232, %bb.v
  %.sroa.0.09.i45 = phi i64 [ %i.is, %bb.v ], [ %.sroa.0.09.i45.ph, %.lr.ph.i44.preheader3232 ] ; 3 uses
  %.reass.reass.i.reass.reass.reass = add i64 %.sroa.0.09.i45, %invariant.op4583 ; 3 uses
  %i.im = icmp ult i64 %.reass.reass.i.reass.reass.reass, %2
  br i1 %i.im, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i44
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14, !noalias !257
  unreachable

bb.v:                                             ; preds = %.lr.ph.i44
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i45 ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !alias.scope !257, !noundef !5
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i.reass.reass.reass
  %i.iq = load i8, ptr %i.ip, align 1, !alias.scope !257, !noundef !5
  %i.ir = add i8 %i.iq, %i.io
  store i8 %i.ir, ptr %i.in, align 1, !alias.scope !257
  %i.is = add nuw nsw i64 %.sroa.0.09.i45, 1      ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %i.is, %i.ek
  br i1 %exitcond.not.i46, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i44, !llvm.loop !51

bb.w:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %.not.i47 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i47, label %bb.x, label %.preheader.split.i48, !prof !4

.preheader.split.i48:                             ; preds = %bb.w
  %i.it = icmp ult i64 %i.eh, %i.ek
  br i1 %i.it, label %.lr.ph.i49.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i49.preheader:                             ; preds = %.preheader.split.i48
  %i.iu = shl nuw nsw i64 %..i28, 2
  %i.iv = shl i64 %..i, 2
  %i.iw = xor i64 %i.iv, -1
  %i.ix = add i64 %i.iu, %i.iw
  %.reass4598 = add i64 %i.eh, %invariant.op4597  ; 2 uses
  %i.iy = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4598)
  %.reass4600 = add i64 %i.iy, %invariant.op4599
  %i.iz = sub i64 %.reass4600, %i.eh              ; 2 uses
  %i.ja = call i64 @llvm.umin.i64(i64 %i.ix, i64 %i.iz)
  %i.jb = add i64 %i.ja, 1                        ; 3 uses
  %min.iters.check3095 = icmp ult i64 %i.jb, 17
  br i1 %min.iters.check3095, label %.lr.ph.i49.preheader3234, label %vector.memcheck3096

.lr.ph.i49.preheader3234:                         ; preds = %vector.body3102, %vector.memcheck3096, %.lr.ph.i49.preheader
  %.sroa.0.09.i50.ph = phi i64 [ %i.eh, %vector.memcheck3096 ], [ %i.eh, %.lr.ph.i49.preheader ], [ %i.jp, %vector.body3102 ]
  br label %.lr.ph.i49

vector.memcheck3096:                              ; preds = %.lr.ph.i49.preheader
  %i.jc = getelementptr i8, ptr %1, i64 %i.eh
  %i.jd = shl nuw nsw i64 %..i28, 2
  %i.je = shl i64 %..i, 2
  %i.jf = xor i64 %i.je, -1
  %i.jg = add i64 %i.jd, %i.jf
  %i.jh = call i64 @llvm.umin.i64(i64 %i.jg, i64 %i.iz)
  %i.ji = add i64 %i.jh, %i.eh                    ; 2 uses
  %9 = getelementptr i8, ptr %1, i64 %i.ji
  %i.jj = getelementptr i8, ptr %9, i64 1
  %i.jk = getelementptr i8, ptr %1, i64 %.reass4598
  %.reass4602 = add i64 %i.ji, %invariant.op4601
  %i.jl = getelementptr i8, ptr %1, i64 %.reass4602
  %bound03097 = icmp ult ptr %i.jc, %i.jl
  %bound13098 = icmp ult ptr %i.jk, %i.jj
  %found.conflict3099 = and i1 %bound03097, %bound13098
  br i1 %found.conflict3099, label %.lr.ph.i49.preheader3234, label %vector.ph3100

vector.ph3100:                                    ; preds = %vector.memcheck3096
  %i.jm = and i64 %i.jb, 15                       ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 0
  %i.jo = select i1 %i.jn, i64 16, i64 %i.jm
  %n.vec3101 = sub i64 %i.jb, %i.jo               ; 2 uses
  %i.jp = add i64 %i.eh, %n.vec3101
  br label %vector.body3102

vector.body3102:                                  ; preds = %vector.body3102, %vector.ph3100
  %index3103 = phi i64 [ 0, %vector.ph3100 ], [ %index.next3106, %vector.body3102 ] ; 2 uses
  %i.jq = add nuw i64 %i.eh, %index3103           ; 2 uses
  %i.jr = sub i64 %i.jq, %i.bf
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 %i.jq ; 2 uses
  %wide.load3104 = load <16 x i8>, ptr %i.js, align 1, !alias.scope !262, !noalias !263
  %i.jt = getelementptr i8, ptr %1, i64 %i.jr
  %i.ju = getelementptr i8, ptr %i.jt, i64 -4
  %wide.load3105 = load <16 x i8>, ptr %i.ju, align 1, !alias.scope !264
  %i.jv = add <16 x i8> %wide.load3105, %wide.load3104
  store <16 x i8> %i.jv, ptr %i.js, align 1, !alias.scope !262, !noalias !263
  %index.next3106 = add nuw i64 %index3103, 16    ; 2 uses
  %i.jw = icmp eq i64 %index.next3106, %n.vec3101
  br i1 %i.jw, label %.lr.ph.i49.preheader3234, label %vector.body3102, !llvm.loop !57

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #14, !noalias !261
  unreachable

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader3234, %bb.z
  %.sroa.0.09.i50 = phi i64 [ %i.kd, %bb.z ], [ %.sroa.0.09.i50.ph, %.lr.ph.i49.preheader3234 ] ; 3 uses
  %.reass.reass.i52.reass.reass.reass = add i64 %.sroa.0.09.i50, %invariant.op4582 ; 3 uses
  %i.jx = icmp ult i64 %.reass.reass.i52.reass.reass.reass, %2
  br i1 %i.jx, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i49
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i52.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #14, !noalias !261
  unreachable

bb.z:                                             ; preds = %.lr.ph.i49
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i50 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 1, !alias.scope !261, !noundef !5
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i52.reass.reass.reass
  %i.kb = load i8, ptr %i.ka, align 1, !alias.scope !261, !noundef !5
  %i.kc = add i8 %i.kb, %i.jz
  store i8 %i.kc, ptr %i.jy, align 1, !alias.scope !261
  %i.kd = add nuw nsw i64 %.sroa.0.09.i50, 1      ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.kd, %i.ek
  br i1 %exitcond.not.i53, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i49, !llvm.loop !58

bb.aa:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %.not.i54 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i54, label %bb.ad, label %bb.ab, !prof !6

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i = icmp ugt i64 %i.eh, %i.ek
  br i1 %.not.i.i, label %bb.ac, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #14, !noalias !266
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ab
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh ; 3 uses
  %i.kf = sub nuw nsw i64 %i.ek, %i.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !265
  %i.kg = add nsw i64 %i.eh, -4                   ; 2 uses
  %i.kh = icmp eq i64 %i.eh, 0
  br i1 %i.kh, label %bb.ae, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ad:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ek, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #14, !noalias !265
  unreachable

bb.ae:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kg, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #14, !noalias !265
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 %i.kg
  %.sroa.01.0.copyload.i = load i32, ptr %i.ki, align 1, !alias.scope !265
  store i32 %.sroa.01.0.copyload.i, ptr %i.an, align 4, !noalias !265
  %i.kj = sub nsw i64 %i.eh, %i.bf                ; 3 uses
  %i.kk = add i64 %i.kj, 4                        ; 4 uses
  %i.kl = icmp ugt i64 %i.kk, %i.eh
  br i1 %i.kl, label %bb.ag, label %bb.af, !prof !4

bb.af:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.km = icmp samesign ugt i64 %i.bf, %i.eh
  br i1 %i.km, label %bb.ai, label %bb.ah, !prof !4

bb.ag:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kk, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #14, !noalias !265
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 %i.kk
  %i.ko = sub nuw nsw i64 %i.eh, %i.kk
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 %i.kj
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !267
  store ptr %i.kq, ptr %i.al, align 8, !noalias !268
  store i64 0, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !268
  store ptr %i.ke, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !268
  store i64 %i.kf, ptr %.sroa.630.0..sroa_idx.i, align 8, !noalias !268
  store i64 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !267
  store ptr %i.kn, ptr %i.ak, align 8, !alias.scope !269, !noalias !270
  store i64 %i.ko, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  store ptr %i.ke, ptr %.sroa.533.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  store i64 0, ptr %.sroa.634.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  store i64 4, ptr %.sroa.735.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !271
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ak), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !271
  store ptr %i.kp, ptr %i.ai, align 8, !alias.scope !272, !noalias !273
  store i64 %i.bf, ptr %.sroa.437.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  store ptr %i.ke, ptr %.sroa.538.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  store i64 0, ptr %.sroa.639.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  store i64 4, ptr %.sroa.740.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !265
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !271
  %i.kr = load i64, ptr %i.dh, align 8, !alias.scope !274, !noalias !265, !noundef !5 ; 2 uses
  %i.ks = load i64, ptr %i.di, align 8, !alias.scope !274, !noalias !265, !noundef !5
  %i.kt = icmp ult i64 %i.kr, %i.ks
  br i1 %i.kt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kj, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #14, !noalias !265
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ah, %bb.bg
  %i.ku = phi i64 [ %i.nt, %bb.bg ], [ %i.kr, %bb.ah ] ; 3 uses
  %i.kv = add nuw i64 %i.ku, 1
  store i64 %i.kv, ptr %i.dh, align 8, !alias.scope !274, !noalias !265
  %i.kw = load i64, ptr %i.dj, align 8, !alias.scope !275, !noalias !265, !noundef !5
  %i.kx = add i64 %i.kw, %i.ku                    ; 2 uses
  %i.ky = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.am, i64 noundef %i.kx), !noalias !276 ; 2 uses
  %i.kz = extractvalue { ptr, i64 } %i.ky, 0      ; 6 uses
  %i.la = extractvalue { ptr, i64 } %i.ky, 1      ; 5 uses
  %i.lb = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dk, i64 noundef %i.kx), !noalias !276 ; 2 uses
  %i.lc = extractvalue { ptr, i64 } %i.lb, 0      ; 5 uses
  %i.ld = extractvalue { ptr, i64 } %i.lb, 1      ; 4 uses
  %i.le = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, i64 noundef %i.ku), !noalias !277 ; 2 uses
  %i.lf = extractvalue { ptr, i64 } %i.le, 0      ; 5 uses
  %i.lg = extractvalue { ptr, i64 } %i.le, 1      ; 4 uses
  %.not18.i = icmp eq ptr %i.kz, null
  br i1 %.not18.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lc), "nonnull"(ptr %i.lf) ]
  %.not19.i = icmp eq i64 %i.la, 0
  br i1 %.not19.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lh = load i8, ptr %i.kz, align 1, !noundef !5
  %.not20.i = icmp eq i64 %i.ld, 0
  br i1 %.not20.i, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #14
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.not21.i = icmp eq i64 %i.lg, 0
  br i1 %.not21.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #14
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.li = load i8, ptr %i.an, align 4, !noalias !265, !noundef !5 ; 2 uses
  %i.lj = load i8, ptr %i.lc, align 1, !noundef !5 ; 2 uses
  %i.lk = and i8 %i.lj, %i.li
  %i.ll = xor i8 %i.lj, %i.li
  %i.lm = lshr i8 %i.ll, 1
  %i.ln = add i8 %i.lm, %i.lk                     ; 2 uses
  %i.lo = load i8, ptr %i.lf, align 1, !noundef !5 ; 2 uses
  %i.lp = and i8 %i.ln, %i.lo
  %i.lq = xor i8 %i.ln, %i.lo
  %i.lr = lshr i8 %i.lq, 1
  %i.ls = add i8 %i.lp, %i.lh
  %i.lt = add i8 %i.ls, %i.lr
  %.not22.i = icmp eq i64 %i.la, 1
  br i1 %.not22.i, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #14
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  %i.lv = load i8, ptr %i.lu, align 1, !noundef !5
  %.not23.i = icmp eq i64 %i.ld, 1
  br i1 %.not23.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #14
  unreachable

bb.as:                                            ; preds = %bb.aq
  %.not24.i = icmp eq i64 %i.lg, 1
  br i1 %.not24.i, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #14
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.lw = load i8, ptr %i.dm, align 1, !noalias !265, !noundef !5 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !noundef !5 ; 2 uses
  %i.lz = and i8 %i.ly, %i.lw
  %i.ma = xor i8 %i.ly, %i.lw
  %i.mb = lshr i8 %i.ma, 1
  %i.mc = add i8 %i.mb, %i.lz                     ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.me = load i8, ptr %i.md, align 1, !noundef !5 ; 2 uses
  %i.mf = and i8 %i.mc, %i.me
  %i.mg = xor i8 %i.mc, %i.me
  %i.mh = lshr i8 %i.mg, 1
  %i.mi = add i8 %i.mf, %i.lv
  %i.mj = add i8 %i.mi, %i.mh
  %i.mk = icmp ugt i64 %i.la, 2
  br i1 %i.mk, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #14
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.mm = load i8, ptr %i.ml, align 1, !noundef !5
  %i.mn = icmp ugt i64 %i.ld, 2
  br i1 %i.mn, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #14
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.mo = icmp ugt i64 %i.lg, 2
  br i1 %i.mo, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #14
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.mp = load i8, ptr %i.dn, align 2, !noalias !265, !noundef !5 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  %i.mr = load i8, ptr %i.mq, align 1, !noundef !5 ; 2 uses
  %i.ms = and i8 %i.mr, %i.mp
  %i.mt = xor i8 %i.mr, %i.mp
  %i.mu = lshr i8 %i.mt, 1
  %i.mv = add i8 %i.mu, %i.ms                     ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.mx = load i8, ptr %i.mw, align 1, !noundef !5 ; 2 uses
  %i.my = and i8 %i.mv, %i.mx
  %i.mz = xor i8 %i.mv, %i.mx
  %i.na = lshr i8 %i.mz, 1
  %i.nb = add i8 %i.my, %i.mm
  %i.nc = add i8 %i.nb, %i.na
  %.not25.i = icmp eq i64 %i.la, 3
  br i1 %.not25.i, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #14
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kz, i64 3
  %i.ne = load i8, ptr %i.nd, align 1, !noundef !5
  %.not26.i = icmp eq i64 %i.ld, 3
  br i1 %.not26.i, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.ba
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #14
  unreachable

bb.be:                                            ; preds = %bb.bc
  %.not27.i = icmp eq i64 %i.lg, 3
  br i1 %.not27.i, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.nf = load i8, ptr %i.do, align 1, !noalias !265, !noundef !5 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lc, i64 3
  %i.nh = load i8, ptr %i.ng, align 1, !noundef !5 ; 2 uses
  %i.ni = and i8 %i.nh, %i.nf
  %i.nj = xor i8 %i.nh, %i.nf
  %i.nk = lshr i8 %i.nj, 1
  %i.nl = add i8 %i.nk, %i.ni                     ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  %i.nn = load i8, ptr %i.nm, align 1, !noundef !5 ; 2 uses
  %i.no = and i8 %i.nl, %i.nn
  %i.np = xor i8 %i.nl, %i.nn
  %i.nq = lshr i8 %i.np, 1
  %i.nr = add i8 %i.no, %i.ne
  %i.ns = add i8 %i.nr, %i.nq
  store i8 %i.lt, ptr %i.an, align 4, !noalias !265
  store i8 %i.mj, ptr %i.dm, align 1, !noalias !265
  store i8 %i.nc, ptr %i.dn, align 2, !noalias !265
  store i8 %i.ns, ptr %i.do, align 1, !noalias !265
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.kz, i64 noundef %i.la, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51)
  %i.nt = load i64, ptr %i.dh, align 8, !alias.scope !274, !noalias !265, !noundef !5 ; 2 uses
  %i.nu = load i64, ptr %i.di, align 8, !alias.scope !274, !noalias !265, !noundef !5
  %i.nv = icmp ult i64 %i.nt, %i.nu
  br i1 %i.nv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.bh:                                            ; preds = %bb.be
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, %bb.bg, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !265
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.bi:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %.not.i55 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i55, label %bb.bj, label %.preheader.split.i56, !prof !4

.preheader.split.i56:                             ; preds = %bb.bi
  %i.nw = icmp ult i64 %i.eh, %i.ek
  br i1 %i.nw, label %.lr.ph.i57.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i57.preheader:                             ; preds = %.preheader.split.i56
  %i.nx = shl nuw nsw i64 %..i28, 2
  %i.ny = shl i64 %..i, 2
  %i.nz = xor i64 %i.ny, -1
  %i.oa = add i64 %i.nx, %i.nz
  %i.ob = add i64 %i.eh, -4                       ; 3 uses
  %i.oc = sub i64 %i.ob, %i.bf                    ; 2 uses
  %i.od = call i64 @llvm.umax.i64(i64 %2, i64 %i.oc)
  %.reass4596 = add i64 %i.od, %invariant.op4595
  %i.oe = sub i64 %.reass4596, %i.eh
  %i.of = call i64 @llvm.umax.i64(i64 %2, i64 %i.ob)
  %i.og = add i64 %i.of, 4
  %i.oh = sub i64 %i.og, %i.eh
  %i.oi = call i64 @llvm.umin.i64(i64 %i.oe, i64 %i.oh) ; 2 uses
  %i.oj = call i64 @llvm.umin.i64(i64 %i.oa, i64 %i.oi)
  %i.ok = add i64 %i.oj, 1                        ; 3 uses
  %min.iters.check3129 = icmp ult i64 %i.ok, 9
  br i1 %min.iters.check3129, label %.lr.ph.i57.preheader3236, label %vector.memcheck3130

.lr.ph.i57.preheader3236:                         ; preds = %vector.body3139, %vector.memcheck3130, %.lr.ph.i57.preheader
  %.sroa.0.015.i.ph = phi i64 [ %i.eh, %vector.memcheck3130 ], [ %i.eh, %.lr.ph.i57.preheader ], [ %i.pa, %vector.body3139 ]
  br label %.lr.ph.i57

vector.memcheck3130:                              ; preds = %.lr.ph.i57.preheader
  %i.ol = getelementptr i8, ptr %1, i64 %i.eh     ; 2 uses
  %i.om = shl nuw nsw i64 %..i28, 2
  %i.on = shl i64 %..i, 2
  %i.oo = xor i64 %i.on, -1
  %i.op = add i64 %i.om, %i.oo
  %i.oq = call i64 @llvm.umin.i64(i64 %i.op, i64 %i.oi)
  %i.or = add i64 %i.oq, %i.eh                    ; 2 uses
  %10 = getelementptr i8, ptr %1, i64 %i.or
  %i.os = getelementptr i8, ptr %10, i64 1        ; 2 uses
  %i.ot = getelementptr i8, ptr %1, i64 %i.ob
  %11 = add i64 %i.or, -3                         ; 2 uses
  %i.ou = getelementptr i8, ptr %1, i64 %11
  %i.ov = getelementptr i8, ptr %1, i64 %i.oc
  %12 = sub i64 %11, %i.bf
  %i.ow = getelementptr i8, ptr %1, i64 %12
  %bound03131 = icmp ult ptr %i.ol, %i.ou
  %bound13132 = icmp ult ptr %i.ot, %i.os
  %found.conflict3133 = and i1 %bound03131, %bound13132
  %bound03134 = icmp ult ptr %i.ol, %i.ow
  %bound13135 = icmp ult ptr %i.ov, %i.os
  %found.conflict3136 = and i1 %bound03134, %bound13135
  %conflict.rdx = or i1 %found.conflict3133, %found.conflict3136
  br i1 %conflict.rdx, label %.lr.ph.i57.preheader3236, label %vector.ph3137

vector.ph3137:                                    ; preds = %vector.memcheck3130
  %i.ox = and i64 %i.ok, 3                        ; 2 uses
  %i.oy = icmp eq i64 %i.ox, 0
  %i.oz = select i1 %i.oy, i64 4, i64 %i.ox
  %n.vec3138 = sub i64 %i.ok, %i.oz               ; 2 uses
  %i.pa = add i64 %i.eh, %n.vec3138
  br label %vector.body3139

vector.body3139:                                  ; preds = %vector.body3139, %vector.ph3137
  %index3140 = phi i64 [ 0, %vector.ph3137 ], [ %index.next3144, %vector.body3139 ] ; 2 uses
  %i.pb = add nuw i64 %i.eh, %index3140           ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 %i.pb ; 2 uses
  %wide.load3141 = load <4 x i8>, ptr %i.pc, align 1, !alias.scope !279, !noalias !280
  %i.pd = sub i64 %i.pb, %i.bf
  %i.pe = getelementptr i8, ptr %1, i64 %i.pb
  %i.pf = getelementptr i8, ptr %i.pe, i64 -4
  %wide.load3142 = load <4 x i8>, ptr %i.pf, align 1, !alias.scope !281
  %i.pg = zext <4 x i8> %wide.load3142 to <4 x i16>
  %i.ph = getelementptr i8, ptr %1, i64 %i.pd
  %i.pi = getelementptr i8, ptr %i.ph, i64 -4
  %wide.load3143 = load <4 x i8>, ptr %i.pi, align 1, !alias.scope !282
  %i.pj = zext <4 x i8> %wide.load3143 to <4 x i16>
  %i.pk = add nuw nsw <4 x i16> %i.pj, %i.pg
  %i.pl = lshr <4 x i16> %i.pk, splat (i16 1)
  %i.pm = trunc nuw <4 x i16> %i.pl to <4 x i8>
  %i.pn = add <4 x i8> %wide.load3141, %i.pm
  store <4 x i8> %i.pn, ptr %i.pc, align 1, !alias.scope !279, !noalias !280
  %index.next3144 = add nuw i64 %index3140, 4     ; 2 uses
  %i.po = icmp eq i64 %index.next3144, %n.vec3138
  br i1 %i.po, label %.lr.ph.i57.preheader3236, label %vector.body3139, !llvm.loop !93

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #14, !noalias !278
  unreachable

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader3236, %bb.bn
  %.sroa.0.015.i = phi i64 [ %i.qe, %bb.bn ], [ %.sroa.0.015.i.ph, %.lr.ph.i57.preheader3236 ] ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.015.i ; 2 uses
  %i.pq = load i8, ptr %i.pp, align 1, !alias.scope !278, !noundef !5
  %i.pr = add nsw i64 %.sroa.0.015.i, -4          ; 3 uses
  %i.ps = icmp ult i64 %i.pr, %2
  br i1 %i.ps, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i57
  %.reass.reass.i59.reass.reass.reass = add i64 %.sroa.0.015.i, %invariant.op ; 3 uses
  %i.pt = icmp ult i64 %.reass.reass.i59.reass.reass.reass, %2
  br i1 %i.pt, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i57
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.pr, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #14, !noalias !278
  unreachable

bb.bm:                                            ; preds = %bb.bk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i59.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #14, !noalias !278
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 %i.pr
  %i.pv = load i8, ptr %i.pu, align 1, !alias.scope !278, !noundef !5
  %i.pw = zext i8 %i.pv to i16
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i59.reass.reass.reass
  %i.py = load i8, ptr %i.px, align 1, !alias.scope !278, !noundef !5
  %i.pz = zext i8 %i.py to i16
  %i.qa = add nuw nsw i16 %i.pz, %i.pw
  %i.qb = lshr i16 %i.qa, 1
  %i.qc = trunc nuw i16 %i.qb to i8
  %i.qd = add i8 %i.pq, %i.qc
  store i8 %i.qd, ptr %i.pp, align 1, !alias.scope !278
  %i.qe = add nuw nsw i64 %.sroa.0.015.i, 1       ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %i.qe, %i.ek
  br i1 %exitcond.not.i60, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i57, !llvm.loop !94

bb.bo:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.not.i61 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i61, label %bb.br, label %bb.bp, !prof !6

bb.bp:                                            ; preds = %bb.bo
  %.not.i.i62 = icmp ugt i64 %i.eh, %i.ek
  br i1 %.not.i.i62, label %bb.bq, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63, !prof !4

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !noalias !284
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63: ; preds = %bb.bp
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh ; 2 uses
  %i.qg = sub nuw nsw i64 %i.ek, %i.eh            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !283
  %i.qh = add nsw i64 %i.eh, -4                   ; 2 uses
  %i.qi = icmp eq i64 %i.eh, 0
  br i1 %i.qi, label %bb.bs, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64, !prof !4

bb.br:                                            ; preds = %bb.bo
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ek, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14
  unreachable

bb.bs:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.qh, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 %i.qh
  %.sroa.02.0.copyload.i = load i32, ptr %i.qj, align 1, !alias.scope !283
  store i32 %.sroa.02.0.copyload.i, ptr %i.ah, align 4, !noalias !283
  %i.qk = sub nsw i64 %i.eh, %i.bf                ; 2 uses
  %i.ql = icmp samesign ugt i64 %i.bf, %i.eh
  br i1 %i.ql, label %bb.bu, label %bb.bt, !prof !4

bb.bt:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64
  %.not22.i65 = icmp samesign ugt i64 %i.qg, %i.bf
  br i1 %.not22.i65, label %bb.bv, label %bb.bw, !prof !6

bb.bu:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.qk, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14
  unreachable

bb.bv:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.qg, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #14
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 %i.qk ; 2 uses
  %i.qn = and i64 %i.qg, -64                      ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qn ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qn ; 2 uses
  %.not.i.i.i97.i = icmp eq i64 %i.qn, 0
  br i1 %.not.i.i.i97.i, label %._crit_edge.i, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.bw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i
  %.sroa.0.0101.i = phi ptr [ %i.qs, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.qm, %bb.bw ] ; 2 uses
  %.sroa.5.0100.i = phi i64 [ %i.qr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.qn, %bb.bw ]
  %.sroa.6.099.i = phi ptr [ %i.qq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.qf, %bb.bw ] ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.6.099.i, i64 64 ; 2 uses
  %i.qr = add i64 %.sroa.5.0100.i, -64            ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0.0101.i, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !285
  store ptr %i.qq, ptr %i.ad, align 8, !noalias !286
  store i64 0, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !286
  store ptr %.sroa.6.099.i, ptr %.sroa.5.0..sroa_idx.i67, align 8, !noalias !286
  store i64 64, ptr %.sroa.652.0..sroa_idx.i, align 8, !noalias !286
  store i64 4, ptr %.sroa.753.0..sroa_idx.i, align 8, !noalias !286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !285
  store ptr %.sroa.0.0101.i, ptr %i.ac, align 8, !alias.scope !287, !noalias !288
  store i64 64, ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !287, !noalias !288
  store ptr %i.qs, ptr %.sroa.556.0..sroa_idx.i, align 8, !alias.scope !287, !noalias !288
  store i64 0, ptr %.sroa.657.0..sroa_idx.i, align 8, !alias.scope !287, !noalias !288
  store i64 4, ptr %.sroa.758.0..sroa_idx.i, align 8, !alias.scope !287, !noalias !288
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ac), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 96, i1 false), !noalias !283
  %i.qt = load i64, ptr %i.cy, align 8, !alias.scope !290, !noalias !283, !noundef !5 ; 2 uses
  %i.qu = load i64, ptr %i.cz, align 8, !alias.scope !290, !noalias !283, !noundef !5
  %i.qv = icmp ult i64 %i.qt, %i.qu
  br i1 %i.qv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i

._crit_edge.i:                                    ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i, %bb.bw
  %i.qw = and i64 %i.qg, 60                       ; 4 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !291
  store ptr %i.qx, ptr %i.ab, align 8, !noalias !292
  store i64 0, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !292
  store ptr %i.qo, ptr %.sroa.565.0..sroa_idx.i, align 8, !noalias !292
  store i64 %i.qw, ptr %.sroa.666.0..sroa_idx.i, align 8, !noalias !292
  store i64 4, ptr %.sroa.767.0..sroa_idx.i, align 8, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !291
  store ptr %i.qp, ptr %i.aa, align 8, !alias.scope !293, !noalias !294
  store i64 %i.qw, ptr %.sroa.469.0..sroa_idx.i, align 8, !alias.scope !293, !noalias !294
  store ptr %i.qy, ptr %.sroa.570.0..sroa_idx.i, align 8, !alias.scope !293, !noalias !294
  store i64 0, ptr %.sroa.671.0..sroa_idx.i, align 8, !alias.scope !293, !noalias !294
  store i64 4, ptr %.sroa.772.0..sroa_idx.i, align 8, !alias.scope !293, !noalias !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !283
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !291
  %i.qz = load i64, ptr %i.de, align 8, !alias.scope !295, !noalias !283, !noundef !5 ; 2 uses
  %i.ra = load i64, ptr %i.df, align 8, !alias.scope !295, !noalias !283, !noundef !5
  %i.rb = icmp ult i64 %i.qz, %i.ra
  br i1 %i.rb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %._crit_edge.i, %bb.cm
  %i.rc = phi i64 [ %i.sy, %bb.cm ], [ %i.qz, %._crit_edge.i ] ; 3 uses
  %i.rd = add nuw i64 %i.rc, 1
  store i64 %i.rd, ptr %i.de, align 8, !alias.scope !295, !noalias !283
  %i.re = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae, i64 noundef %i.rc), !noalias !296 ; 2 uses
  %i.rf = extractvalue { ptr, i64 } %i.re, 0      ; 6 uses
  %i.rg = extractvalue { ptr, i64 } %i.re, 1      ; 5 uses
  %i.rh = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dg, i64 noundef %i.rc), !noalias !296 ; 2 uses
  %i.ri = extractvalue { ptr, i64 } %i.rh, 0      ; 5 uses
  %i.rj = extractvalue { ptr, i64 } %i.rh, 1      ; 4 uses
  %.not24.i68 = icmp eq ptr %i.rf, null
  br i1 %.not24.i68, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit, label %bb.bx
end_hunk_0
begin_hunk_1_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform25apply_predictor_transform:bb.a
  %i.sg = load i8, ptr %i.sf, align 1, !noundef !5
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ri, i64 2
  %i.si = load i8, ptr %i.sh, align 1, !noundef !5 ; 2 uses
  %i.sj = and i8 %i.si, %i.se
  %i.sk = xor i8 %i.si, %i.se
  %i.sl = lshr i8 %i.sk, 1
  %i.sm = add i8 %i.sj, %i.sg
  %i.sn = add i8 %i.sm, %i.sl
  %.not29.i = icmp eq i64 %i.rg, 3
  br i1 %.not29.i, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.cg
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #14
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %.not30.i = icmp eq i64 %i.rj, 3
  br i1 %.not30.i, label %bb.cn, label %bb.cm

bb.cl:                                            ; preds = %bb.ci
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #14
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.so = load i8, ptr %i.dd, align 1, !noalias !283, !noundef !5 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rf, i64 3
  %i.sq = load i8, ptr %i.sp, align 1, !noundef !5
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ri, i64 3
  %i.ss = load i8, ptr %i.sr, align 1, !noundef !5 ; 2 uses
  %i.st = and i8 %i.ss, %i.so
  %i.su = xor i8 %i.ss, %i.so
  %i.sv = lshr i8 %i.su, 1
  %i.sw = add i8 %i.st, %i.sq
  %i.sx = add i8 %i.sw, %i.sv
  store i8 %i.rr, ptr %i.ah, align 4, !noalias !283
  store i8 %i.sb, ptr %i.db, align 1, !noalias !283
  store i8 %i.sn, ptr %i.dc, align 2, !noalias !283
  store i8 %i.sx, ptr %i.dd, align 1, !noalias !283
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.rf, i64 noundef %i.rg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68)
  %i.sy = load i64, ptr %i.de, align 8, !alias.scope !295, !noalias !283, !noundef !5 ; 2 uses
  %i.sz = load i64, ptr %i.df, align 8, !alias.scope !295, !noalias !283, !noundef !5
  %i.ta = icmp ult i64 %i.sy, %i.sz
  br i1 %i.ta, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit

bb.cn:                                            ; preds = %bb.ck
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #14
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i: ; preds = %.lr.ph.i66, %bb.dd
  %i.tb = phi i64 [ %i.ux, %bb.dd ], [ %i.qt, %.lr.ph.i66 ] ; 3 uses
  %i.tc = add nuw i64 %i.tb, 1
  store i64 %i.tc, ptr %i.cy, align 8, !alias.scope !290, !noalias !283
  %i.td = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.af, i64 noundef %i.tb), !noalias !297 ; 2 uses
  %i.te = extractvalue { ptr, i64 } %i.td, 0      ; 6 uses
  %i.tf = extractvalue { ptr, i64 } %i.td, 1      ; 5 uses
  %i.tg = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.da, i64 noundef %i.tb), !noalias !297 ; 2 uses
  %i.th = extractvalue { ptr, i64 } %i.tg, 0      ; 5 uses
  %i.ti = extractvalue { ptr, i64 } %i.tg, 1      ; 4 uses
  %.not31.i = icmp eq ptr %i.te, null
  br i1 %.not31.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i, label %bb.co

bb.co:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.th) ]
  %.not32.i = icmp eq i64 %i.tf, 0
  br i1 %.not32.i, label %bb.cq, label %bb.cp

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i: ; preds = %bb.dd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, %.lr.ph.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !283
  %.not.i.i.i.i = icmp eq i64 %i.qr, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %.lr.ph.i66

bb.cp:                                            ; preds = %bb.co
  %.not33.i = icmp eq i64 %i.ti, 0
  br i1 %.not33.i, label %bb.cs, label %bb.cr

bb.cq:                                            ; preds = %bb.co
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #14
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.tj = load i8, ptr %i.ah, align 4, !noalias !283, !noundef !5 ; 2 uses
  %i.tk = load i8, ptr %i.te, align 1, !noundef !5
  %i.tl = load i8, ptr %i.th, align 1, !noundef !5 ; 2 uses
  %i.tm = and i8 %i.tl, %i.tj
  %i.tn = xor i8 %i.tl, %i.tj
  %i.to = lshr i8 %i.tn, 1
  %i.tp = add i8 %i.tm, %i.tk
  %i.tq = add i8 %i.tp, %i.to
  %.not34.i = icmp eq i64 %i.tf, 1
  br i1 %.not34.i, label %bb.cu, label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #14
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %.not35.i = icmp eq i64 %i.ti, 1
  br i1 %.not35.i, label %bb.cw, label %bb.cv

bb.cu:                                            ; preds = %bb.cr
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #14
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.tr = load i8, ptr %i.db, align 1, !noalias !283, !noundef !5 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.te, i64 1
  %i.tt = load i8, ptr %i.ts, align 1, !noundef !5
  %i.tu = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  %i.tv = load i8, ptr %i.tu, align 1, !noundef !5 ; 2 uses
  %i.tw = and i8 %i.tv, %i.tr
  %i.tx = xor i8 %i.tv, %i.tr
  %i.ty = lshr i8 %i.tx, 1
  %i.tz = add i8 %i.tw, %i.tt
  %i.ua = add i8 %i.tz, %i.ty
  %i.ub = icmp ugt i64 %i.tf, 2
  br i1 %i.ub, label %bb.cx, label %bb.cy

bb.cw:                                            ; preds = %bb.ct
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #14
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.uc = icmp ugt i64 %i.ti, 2
  br i1 %i.uc, label %bb.cz, label %bb.da

bb.cy:                                            ; preds = %bb.cv
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #14
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.ud = load i8, ptr %i.dc, align 2, !noalias !283, !noundef !5 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.te, i64 2
  %i.uf = load i8, ptr %i.ue, align 1, !noundef !5
  %i.ug = getelementptr inbounds nuw i8, ptr %i.th, i64 2
  %i.uh = load i8, ptr %i.ug, align 1, !noundef !5 ; 2 uses
  %i.ui = and i8 %i.uh, %i.ud
  %i.uj = xor i8 %i.uh, %i.ud
  %i.uk = lshr i8 %i.uj, 1
  %i.ul = add i8 %i.ui, %i.uf
  %i.um = add i8 %i.ul, %i.uk
  %.not36.i = icmp eq i64 %i.tf, 3
  br i1 %.not36.i, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %bb.cx
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #14
  unreachable

bb.db:                                            ; preds = %bb.cz
  %.not37.i = icmp eq i64 %i.ti, 3
  br i1 %.not37.i, label %bb.de, label %bb.dd

bb.dc:                                            ; preds = %bb.cz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #14
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.un = load i8, ptr %i.dd, align 1, !noalias !283, !noundef !5 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.te, i64 3
  %i.up = load i8, ptr %i.uo, align 1, !noundef !5
  %i.uq = getelementptr inbounds nuw i8, ptr %i.th, i64 3
  %i.ur = load i8, ptr %i.uq, align 1, !noundef !5 ; 2 uses
  %i.us = and i8 %i.ur, %i.un
  %i.ut = xor i8 %i.ur, %i.un
  %i.uu = lshr i8 %i.ut, 1
  %i.uv = add i8 %i.us, %i.up
  %i.uw = add i8 %i.uv, %i.uu
  store i8 %i.tq, ptr %i.ah, align 4, !noalias !283
  store i8 %i.ua, ptr %i.db, align 1, !noalias !283
  store i8 %i.um, ptr %i.dc, align 2, !noalias !283
  store i8 %i.uw, ptr %i.dd, align 1, !noalias !283
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.te, i64 noundef %i.tf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77)
  %i.ux = load i64, ptr %i.cy, align 8, !alias.scope !290, !noalias !283, !noundef !5 ; 2 uses
  %i.uy = load i64, ptr %i.cz, align 8, !alias.scope !290, !noalias !283, !noundef !5
  %i.uz = icmp ult i64 %i.ux, %i.uy
  br i1 %i.uz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i

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
  %.not.i72 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i72, label %bb.dg, label %.preheader.split.i73, !prof !4

.preheader.split.i73:                             ; preds = %bb.df
  %i.va = icmp ult i64 %i.eh, %i.ek
  br i1 %i.va, label %.lr.ph.i75.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i75.preheader:                             ; preds = %.preheader.split.i73
  %i.vb = shl nuw nsw i64 %..i28, 2
  %i.vc = shl i64 %..i, 2
  %i.vd = xor i64 %i.vc, -1
  %i.ve = add i64 %i.vb, %i.vd
  %.reass4590 = add i64 %i.eh, %invariant.op4589  ; 2 uses
  %i.vf = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4590)
  %.reass4592 = add i64 %i.vf, %invariant.op4591
  %i.vg = sub i64 %.reass4592, %i.eh              ; 2 uses
  %i.vh = call i64 @llvm.umin.i64(i64 %i.ve, i64 %i.vg)
  %i.vi = add i64 %i.vh, 1                        ; 3 uses
  %min.iters.check3166 = icmp ult i64 %i.vi, 17
  br i1 %min.iters.check3166, label %.lr.ph.i75.preheader3238, label %vector.memcheck3167

.lr.ph.i75.preheader3238:                         ; preds = %vector.body3177, %vector.memcheck3167, %.lr.ph.i75.preheader
  %.sroa.0.016.i.ph = phi i64 [ %i.eh, %vector.memcheck3167 ], [ %i.eh, %.lr.ph.i75.preheader ], [ %i.wa, %vector.body3177 ]
  br label %.lr.ph.i75

vector.memcheck3167:                              ; preds = %.lr.ph.i75.preheader
  %i.vj = getelementptr i8, ptr %1, i64 %i.eh     ; 2 uses
  %i.vk = shl nuw nsw i64 %..i28, 2
  %i.vl = shl i64 %..i, 2
  %i.vm = xor i64 %i.vl, -1
  %i.vn = add i64 %i.vk, %i.vm
  %i.vo = call i64 @llvm.umin.i64(i64 %i.vn, i64 %i.vg)
  %i.vp = add i64 %i.vo, %i.eh                    ; 2 uses
  %i.vq = add i64 %i.vp, 1                        ; 2 uses
  %i.vr = getelementptr i8, ptr %1, i64 %i.vq     ; 2 uses
  %i.vs = getelementptr i8, ptr %1, i64 %.reass4590
  %.reass4594 = add i64 %i.vp, %invariant.op4593
  %i.vt = getelementptr i8, ptr %1, i64 %.reass4594
  %i.vu = sub i64 %i.eh, %i.bf
  %i.vv = getelementptr i8, ptr %1, i64 %i.vu
  %13 = sub i64 %i.vq, %i.bf
  %i.vw = getelementptr i8, ptr %1, i64 %13
  %bound03168 = icmp ult ptr %i.vj, %i.vt
  %bound13169 = icmp ult ptr %i.vs, %i.vr
  %found.conflict3170 = and i1 %bound03168, %bound13169
  %bound03171 = icmp ult ptr %i.vj, %i.vw
  %bound13172 = icmp ult ptr %i.vv, %i.vr
  %found.conflict3173 = and i1 %bound03171, %bound13172
  %conflict.rdx3174 = or i1 %found.conflict3170, %found.conflict3173
  br i1 %conflict.rdx3174, label %.lr.ph.i75.preheader3238, label %vector.ph3175

vector.ph3175:                                    ; preds = %vector.memcheck3167
  %i.vx = and i64 %i.vi, 15                       ; 2 uses
  %i.vy = icmp eq i64 %i.vx, 0
  %i.vz = select i1 %i.vy, i64 16, i64 %i.vx
  %n.vec3176 = sub i64 %i.vi, %i.vz               ; 2 uses
  %i.wa = add i64 %i.eh, %n.vec3176
  br label %vector.body3177

vector.body3177:                                  ; preds = %vector.body3177, %vector.ph3175
  %index3178 = phi i64 [ 0, %vector.ph3175 ], [ %index.next3182, %vector.body3177 ] ; 2 uses
  %i.wb = add nuw i64 %i.eh, %index3178           ; 2 uses
  %i.wc = sub nsw i64 %i.wb, %i.bf                ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 %i.wb ; 2 uses
  %wide.load3179 = load <16 x i8>, ptr %i.wd, align 1, !alias.scope !299, !noalias !300
  %i.we = getelementptr i8, ptr %1, i64 %i.wc
  %i.wf = getelementptr i8, ptr %i.we, i64 -4
  %wide.load3180 = load <16 x i8>, ptr %i.wf, align 1, !alias.scope !301
  %i.wg = zext <16 x i8> %wide.load3180 to <16 x i16>
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 %i.wc
  %wide.load3181 = load <16 x i8>, ptr %i.wh, align 1, !alias.scope !302
  %i.wi = zext <16 x i8> %wide.load3181 to <16 x i16>
  %i.wj = add nuw nsw <16 x i16> %i.wi, %i.wg
  %i.wk = lshr <16 x i16> %i.wj, splat (i16 1)
  %i.wl = trunc nuw <16 x i16> %i.wk to <16 x i8>
  %i.wm = add <16 x i8> %wide.load3179, %i.wl
  store <16 x i8> %i.wm, ptr %i.wd, align 1, !alias.scope !299, !noalias !300
  %index.next3182 = add nuw i64 %index3178, 16    ; 2 uses
  %i.wn = icmp eq i64 %index.next3182, %n.vec3176
  br i1 %i.wn, label %.lr.ph.i75.preheader3238, label %vector.body3177, !llvm.loop !126

bb.dg:                                            ; preds = %bb.df
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !298
  unreachable

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.preheader3238, %bb.dh
  %.sroa.0.016.i = phi i64 [ %i.xd, %bb.dh ], [ %.sroa.0.016.i.ph, %.lr.ph.i75.preheader3238 ] ; 3 uses
  %i.wo = sub nsw i64 %.sroa.0.016.i, %i.bf       ; 2 uses
  %i.wp = add nsw i64 %i.wo, -4                   ; 3 uses
  %i.wq = icmp ult i64 %i.wp, %2
  br i1 %i.wq, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %.lr.ph.i75
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.016.i ; 2 uses
  %i.ws = load i8, ptr %i.wr, align 1, !alias.scope !298, !noundef !5
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 %i.wp
  %i.wu = load i8, ptr %i.wt, align 1, !alias.scope !298, !noundef !5
  %i.wv = zext i8 %i.wu to i16
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 %i.wo
  %i.wx = load i8, ptr %i.ww, align 1, !alias.scope !298, !noundef !5
  %i.wy = zext i8 %i.wx to i16
  %i.wz = add nuw nsw i16 %i.wy, %i.wv
  %i.xa = lshr i16 %i.wz, 1
  %i.xb = trunc nuw i16 %i.xa to i8
  %i.xc = add i8 %i.ws, %i.xb
  store i8 %i.xc, ptr %i.wr, align 1, !alias.scope !298
  %i.xd = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %i.xd, %i.ek
  br i1 %exitcond.not.i76, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i75, !llvm.loop !127

bb.di:                                            ; preds = %.lr.ph.i75
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.wp, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #14, !noalias !298
  unreachable

bb.dj:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %.not.i77 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i77, label %bb.dk, label %.preheader.split.i78, !prof !4

.preheader.split.i78:                             ; preds = %bb.dj
  %i.xe = icmp ult i64 %i.eh, %i.ek
  br i1 %i.xe, label %.lr.ph.i80.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i80.preheader:                             ; preds = %.preheader.split.i78
  %i.xf = shl nuw nsw i64 %..i28, 2
  %i.xg = shl i64 %..i, 2
  %i.xh = xor i64 %i.xg, -1
  %i.xi = add i64 %i.xf, %i.xh
  %.reass = add i64 %i.eh, %invariant.op4584      ; 2 uses
  %i.xj = call i64 @llvm.umax.i64(i64 %2, i64 %.reass)
  %.reass4586 = add i64 %i.xj, %invariant.op4585
  %i.xk = sub i64 %.reass4586, %i.eh
  %i.xl = sub i64 %i.eh, %i.bf                    ; 2 uses
  %i.xm = call i64 @llvm.umax.i64(i64 %2, i64 %i.xl)
  %i.xn = add i64 %i.xm, %i.bf
  %i.xo = sub i64 %i.xn, %i.eh
  %i.xp = call i64 @llvm.umin.i64(i64 %i.xk, i64 %i.xo) ; 2 uses
  %i.xq = call i64 @llvm.umin.i64(i64 %i.xi, i64 %i.xp)
  %i.xr = add i64 %i.xq, 1                        ; 3 uses
  %min.iters.check3206 = icmp ult i64 %i.xr, 17
  br i1 %min.iters.check3206, label %.lr.ph.i80.preheader3240, label %vector.memcheck3207

.lr.ph.i80.preheader3240:                         ; preds = %vector.body3217, %vector.memcheck3207, %.lr.ph.i80.preheader
  %.sroa.0.015.i81.ph = phi i64 [ %i.eh, %vector.memcheck3207 ], [ %i.eh, %.lr.ph.i80.preheader ], [ %i.yh, %vector.body3217 ]
  br label %.lr.ph.i80

vector.memcheck3207:                              ; preds = %.lr.ph.i80.preheader
  %i.xs = getelementptr i8, ptr %1, i64 %i.eh     ; 2 uses
  %i.xt = shl nuw nsw i64 %..i28, 2
  %i.xu = shl i64 %..i, 2
  %i.xv = xor i64 %i.xu, -1
  %i.xw = add i64 %i.xt, %i.xv
  %i.xx = call i64 @llvm.umin.i64(i64 %i.xw, i64 %i.xp)
  %i.xy = add i64 %i.xx, %i.eh                    ; 2 uses
  %i.xz = add i64 %i.xy, 1                        ; 2 uses
  %i.ya = getelementptr i8, ptr %1, i64 %i.xz     ; 2 uses
  %i.yb = getelementptr i8, ptr %1, i64 %i.xl
  %14 = sub i64 %i.xz, %i.bf
  %i.yc = getelementptr i8, ptr %1, i64 %14
  %15 = getelementptr i8, ptr %1, i64 %.reass
  %.reass4588 = add i64 %i.xy, %invariant.op4587.a
  %i.yd = getelementptr i8, ptr %1, i64 %.reass4588
  %bound03208 = icmp ult ptr %i.xs, %i.yc
  %bound13209 = icmp ult ptr %i.yb, %i.ya
  %found.conflict3210 = and i1 %bound03208, %bound13209
  %bound03211 = icmp ult ptr %i.xs, %i.yd
  %bound13212 = icmp ult ptr %15, %i.ya
  %found.conflict3213 = and i1 %bound03211, %bound13212
  %conflict.rdx3214 = or i1 %found.conflict3210, %found.conflict3213
  br i1 %conflict.rdx3214, label %.lr.ph.i80.preheader3240, label %vector.ph3215

vector.ph3215:                                    ; preds = %vector.memcheck3207
  %i.ye = and i64 %i.xr, 15                       ; 2 uses
  %i.yf = icmp eq i64 %i.ye, 0
  %i.yg = select i1 %i.yf, i64 16, i64 %i.ye
  %n.vec3216 = sub i64 %i.xr, %i.yg               ; 2 uses
  %i.yh = add i64 %i.eh, %n.vec3216
  br label %vector.body3217

vector.body3217:                                  ; preds = %vector.body3217, %vector.ph3215
  %index3218 = phi i64 [ 0, %vector.ph3215 ], [ %index.next3222, %vector.body3217 ] ; 2 uses
  %i.yi = add nuw i64 %i.eh, %index3218           ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 %i.yi ; 2 uses
  %wide.load3219 = load <16 x i8>, ptr %i.yj, align 1, !alias.scope !304, !noalias !305
  %i.yk = sub nsw i64 %i.yi, %i.bf                ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 %i.yk
  %wide.load3220 = load <16 x i8>, ptr %i.yl, align 1, !alias.scope !306
  %i.ym = zext <16 x i8> %wide.load3220 to <16 x i16>
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 %i.yk
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  %wide.load3221 = load <16 x i8>, ptr %i.yo, align 1, !alias.scope !307
  %i.yp = zext <16 x i8> %wide.load3221 to <16 x i16>
  %i.yq = add nuw nsw <16 x i16> %i.yp, %i.ym
  %i.yr = lshr <16 x i16> %i.yq, splat (i16 1)
  %i.ys = trunc nuw <16 x i16> %i.yr to <16 x i8>
  %i.yt = add <16 x i8> %wide.load3219, %i.ys
  store <16 x i8> %i.yt, ptr %i.yj, align 1, !alias.scope !304, !noalias !305
  %index.next3222 = add nuw i64 %index3218, 16    ; 2 uses
  %i.yu = icmp eq i64 %index.next3222, %n.vec3216
  br i1 %i.yu, label %.lr.ph.i80.preheader3240, label %vector.body3217, !llvm.loop !134

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !303
  unreachable

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.preheader3240, %bb.do
  %.sroa.0.015.i81 = phi i64 [ %i.zl, %bb.do ], [ %.sroa.0.015.i81.ph, %.lr.ph.i80.preheader3240 ] ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.015.i81 ; 2 uses
  %i.yw = load i8, ptr %i.yv, align 1, !alias.scope !303, !noundef !5
  %i.yx = sub nsw i64 %.sroa.0.015.i81, %i.bf     ; 4 uses
  %i.yy = icmp ult i64 %i.yx, %2
  br i1 %i.yy, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph.i80
  %i.yz = add nuw i64 %i.yx, 4                    ; 3 uses
  %i.za = icmp ult i64 %i.yz, %2
  br i1 %i.za, label %bb.do, label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i80
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.yx, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #14, !noalias !303
  unreachable

bb.dn:                                            ; preds = %bb.dl
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.yz, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #14, !noalias !303
  unreachable

bb.do:                                            ; preds = %bb.dl
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 %i.yx
  %i.zc = load i8, ptr %i.zb, align 1, !alias.scope !303, !noundef !5
  %i.zd = zext i8 %i.zc to i16
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 %i.yz
  %i.zf = load i8, ptr %i.ze, align 1, !alias.scope !303, !noundef !5
  %i.zg = zext i8 %i.zf to i16
  %i.zh = add nuw nsw i16 %i.zg, %i.zd
  %i.zi = lshr i16 %i.zh, 1
  %i.zj = trunc nuw i16 %i.zi to i8
  %i.zk = add i8 %i.yw, %i.zj
  store i8 %i.zk, ptr %i.yv, align 1, !alias.scope !303
  %i.zl = add nuw nsw i64 %.sroa.0.015.i81, 1     ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.zl, %i.ek
  br i1 %exitcond.not.i82, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i80, !llvm.loop !135

bb.dp:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.not.i83 = icmp ugt i64 %i.ek, %2
  br i1 %.not.i83, label %bb.ds, label %bb.dq, !prof !6

bb.dq:                                            ; preds = %bb.dp
  %.not.i.i84 = icmp ugt i64 %i.eh, %i.ek
  br i1 %.not.i.i84, label %bb.dr, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85, !prof !4

bb.dr:                                            ; preds = %bb.dq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #14, !noalias !309
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85: ; preds = %bb.dq
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh ; 4 uses
  %i.zn = sub nuw nsw i64 %i.ek, %i.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !308
  %i.zo = add nsw i64 %i.eh, -4                   ; 2 uses
  %i.zp = icmp eq i64 %i.eh, 0
  br i1 %i.zp, label %bb.dt, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86, !prof !4

bb.ds:                                            ; preds = %bb.dp
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ek, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #14
  unreachable

bb.dt:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.zo, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 %i.zo
  %.sroa.01.0.copyload.i87 = load i32, ptr %i.zq, align 1, !alias.scope !308
  store i32 %.sroa.01.0.copyload.i87, ptr %i.z, align 4, !noalias !308
  %i.zr = sub nsw i64 %i.eh, %i.bf                ; 4 uses
  %i.zs = add nsw i64 %i.zr, -4                   ; 4 uses
  %i.zt = icmp ugt i64 %i.zs, %i.eh
  br i1 %i.zt, label %bb.dv, label %bb.du, !prof !4

bb.du:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  %i.zu = add nuw i64 %i.zr, 4                    ; 3 uses
  %.not157 = icmp ult i64 %i.zr, %i.eh
  br i1 %.not157, label %bb.dw, label %bb.dx, !prof !7

bb.dv:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.zs, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #14
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 %i.zs
  %i.zw = sub nuw nsw i64 %i.eh, %i.zs
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 %i.zr
  %i.zy = sub nuw nsw i64 %i.eh, %i.zu
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 %i.zu
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !310
  store ptr %i.aaa, ptr %i.w, align 8, !noalias !311
  store i64 0, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !311
  store ptr %i.zm, ptr %.sroa.5.0..sroa_idx.i88, align 8, !noalias !311
  store i64 %i.zn, ptr %.sroa.637.0..sroa_idx.i, align 8, !noalias !311
  store i64 4, ptr %.sroa.7.0..sroa_idx.i89, align 8, !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !310
  store ptr %i.zv, ptr %i.v, align 8, !alias.scope !312, !noalias !313
  store i64 %i.zw, ptr %.sroa.439.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313
  store ptr %i.zm, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313
  store i64 0, ptr %.sroa.641.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313
  store i64 4, ptr %.sroa.742.0..sroa_idx.i, align 8, !alias.scope !312, !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !314
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.v), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !314
  store ptr %i.zx, ptr %i.t, align 8, !alias.scope !315, !noalias !316
  store i64 %i.bf, ptr %.sroa.444.0..sroa_idx.i, align 8, !alias.scope !315, !noalias !316
  store ptr %i.zm, ptr %.sroa.545.0..sroa_idx.i, align 8, !alias.scope !315, !noalias !316
  store i64 0, ptr %.sroa.646.0..sroa_idx.i, align 8, !alias.scope !315, !noalias !316
  store i64 4, ptr %.sroa.747.0..sroa_idx.i, align 8, !alias.scope !315, !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !317
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !317
  store ptr %i.zz, ptr %i.r, align 8, !alias.scope !318, !noalias !319
  store i64 %i.zy, ptr %.sroa.449.0..sroa_idx.i, align 8, !alias.scope !318, !noalias !319
  store ptr %i.zm, ptr %.sroa.550.0..sroa_idx.i, align 8, !alias.scope !318, !noalias !319
  store i64 0, ptr %.sroa.651.0..sroa_idx.i, align 8, !alias.scope !318, !noalias !319
  store i64 4, ptr %.sroa.752.0..sroa_idx.i, align 8, !alias.scope !318, !noalias !319
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.r), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(208) %i.y, i64 208, i1 false), !noalias !308
  %i.aab = load i64, ptr %i.co, align 8, !alias.scope !321, !noalias !308, !noundef !5 ; 2 uses
  %i.aac = load i64, ptr %i.cp, align 8, !alias.scope !321, !noalias !308, !noundef !5
  %i.aad = icmp ult i64 %i.aab, %i.aac
  br i1 %i.aad, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit

bb.dx:                                            ; preds = %bb.du
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.zu, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #14
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.dw, %bb.fd
  %i.aae = phi i64 [ %i.aec, %bb.fd ], [ %i.aab, %bb.dw ] ; 3 uses
  %i.aaf = add nuw i64 %i.aae, 1
  store i64 %i.aaf, ptr %i.co, align 8, !alias.scope !321, !noalias !308
  %i.aag = load i64, ptr %i.cq, align 8, !alias.scope !322, !noalias !308, !noundef !5
  %i.aah = add i64 %i.aag, %i.aae                 ; 2 uses
  %i.aai = load i64, ptr %i.cr, align 8, !alias.scope !323, !noalias !308, !noundef !5
  %i.aaj = add i64 %i.aai, %i.aah                 ; 2 uses
  %i.aak = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.x, i64 noundef %i.aaj), !noalias !324 ; 2 uses
  %i.aal = extractvalue { ptr, i64 } %i.aak, 0    ; 6 uses
  %i.aam = extractvalue { ptr, i64 } %i.aak, 1    ; 5 uses
  %i.aan = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs, i64 noundef %i.aaj), !noalias !324 ; 2 uses
  %i.aao = extractvalue { ptr, i64 } %i.aan, 0    ; 5 uses
  %i.aap = extractvalue { ptr, i64 } %i.aan, 1    ; 4 uses
  %i.aaq = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ct, i64 noundef %i.aah), !noalias !325 ; 2 uses
  %i.aar = extractvalue { ptr, i64 } %i.aaq, 0    ; 5 uses
  %i.aas = extractvalue { ptr, i64 } %i.aaq, 1    ; 4 uses
  %i.aat = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu, i64 noundef %i.aae), !noalias !326 ; 2 uses
  %i.aau = extractvalue { ptr, i64 } %i.aat, 0    ; 5 uses
  %i.aav = extractvalue { ptr, i64 } %i.aat, 1    ; 4 uses
  %.not22.i90 = icmp eq ptr %i.aal, null
  br i1 %.not22.i90, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit, label %bb.dy

bb.dy:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i
end_hunk_1
