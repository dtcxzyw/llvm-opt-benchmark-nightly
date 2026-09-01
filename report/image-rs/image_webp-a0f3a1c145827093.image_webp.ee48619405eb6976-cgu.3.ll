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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9
  store ptr %.sroa.428.068, ptr %i.b, align 8, !noalias !14
  store i64 %i.q, ptr %.sroa.434.0..sroa_idx, align 8, !noalias !14
  store i64 %i.y, ptr %.sroa.535.0..sroa_idx, align 8, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9
  store ptr %i.aj, ptr %i.a, align 8, !alias.scope !15, !noalias !19
  store i64 %i.al, ptr %.sroa.437.0..sroa_idx, align 8, !alias.scope !15, !noalias !19
  store ptr %i.am, ptr %.sroa.538.0..sroa_idx, align 8, !alias.scope !15, !noalias !19
  store i64 %i.z, ptr %.sroa.639.0..sroa_idx, align 8, !alias.scope !15, !noalias !19
  store i64 4, ptr %.sroa.740.0..sroa_idx, align 8, !alias.scope !15, !noalias !19
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  %i.an = load i64, ptr %i.aa, align 8, !alias.scope !21, !noalias !24, !noundef !26 ; 2 uses
  %i.ao = load i64, ptr %i.ab, align 8, !alias.scope !21, !noalias !24, !noundef !26
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit.thread

.split.us:                                        ; preds = %.lr.ph69.split
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ah, i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14
  unreachable

.split71.us:                                      ; preds = %.lr.ph69
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14
  unreachable

.loopexit:                                        ; preds = %bb.l, %bb.j
  %i.aq = load i64, ptr %i.aa, align 8, !alias.scope !21, !noalias !24, !noundef !26 ; 2 uses
  %i.ar = load i64, ptr %i.ab, align 8, !alias.scope !21, !noalias !24, !noundef !26
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter9ChunksMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1t_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.d, %.loopexit
  %i.at = phi i64 [ %i.aq, %.loopexit ], [ %i.an, %bb.d ] ; 3 uses
  %i.au = add nuw i64 %i.at, 1
  store i64 %i.au, ptr %i.aa, align 8, !alias.scope !21, !noalias !24
  %i.av = call { ptr, i64 } @_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.at), !noalias !24 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  %i.ay = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef %i.at), !noalias !24 ; 2 uses
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
  %i.bb = load i8, ptr %i.az, align 1, !noundef !26
  %.not21 = icmp eq i64 %i.ba, 1
  br i1 %.not21, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !26
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
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !26
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
  %i.bn = load i8, ptr %.sroa.3.064, align 1, !noundef !26
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.3.064, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !26
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.3.064, i64 2 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !noundef !26
  %i.bt = zext i8 %i.bs to i32
  %i.bu = sext i8 %i.bq to i32                    ; 2 uses
  %i.bv = mul nsw i32 %i.bu, %i.bi
  %i.bw = lshr i32 %i.bv, 5
  %i.bx = add nuw nsw i32 %i.bw, %i.bo            ; 2 uses
  %i.by = mul nsw i32 %i.bu, %i.bj
  %i.bz = lshr i32 %i.by, 5
  %i.ca = add nuw nsw i32 %i.bz, %i.bt
  %sext = shl i32 %i.bx, 24
  %i.cb = ashr exact i32 %sext, 24
  %i.cc = mul nsw i32 %i.cb, %i.bk
  %i.cd = lshr i32 %i.cc, 5
  %i.ce = add nuw nsw i32 %i.ca, %i.cd
  %i.cf = trunc i32 %i.bx to i8
  store i8 %i.cf, ptr %.sroa.3.064, align 1
  %i.cg = trunc i32 %i.ce to i8
  store i8 %i.cg, ptr %i.br, align 1
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
  %i.az = zext i16 %3 to i64                      ; 6 uses
  %i.ba = zext i16 %4 to i64                      ; 2 uses
  %i.bb = icmp samesign ugt i64 %2, 3
  br i1 %i.bb, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsksn9slvsHfS_10image_webp.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !26
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.bc, align 1
  %i.bf = shl nuw nsw i64 %i.az, 2                ; 71 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %.not.i = icmp samesign ugt i64 %i.bf, %2
  br i1 %.not.i, label %bb.d, label %.preheader.split.i, !prof !4

.preheader.split.i:                               ; preds = %bb.c
  %i.bg = icmp ugt i16 %3, 1
  br i1 %i.bg, label %vector.ph, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit

vector.ph:                                        ; preds = %.preheader.split.i
  %load_initial3237 = load <4 x i8>, ptr %1, align 1
  %i.bh = add nsw i64 %i.bf, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %store_forwarded3238 = phi <4 x i8> [ %load_initial3237, %vector.ph ], [ %i.bk, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = getelementptr i8, ptr %1, i64 %index
  %i.bj = getelementptr i8, ptr %i.bi, i64 4      ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.bj, align 1, !alias.scope !27
  %i.bk = add <4 x i8> %store_forwarded3238, %wide.load ; 2 uses
  store <4 x i8> %i.bk, ptr %i.bj, align 1, !alias.scope !27
  %index.next = add nuw i64 %index, 4
  %i.bl = icmp eq i64 %index, %i.bh
  br i1 %i.bl, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, label %vector.body, !llvm.loop !30

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #14, !noalias !27
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit: ; preds = %vector.body, %.preheader.split.i
  %i.bm = icmp ugt i16 %4, 1
  br i1 %i.bm, label %.lr.ph, label %._crit_edge.split

bb.e:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #14
  unreachable

.lr.ph869:                                        ; preds = %.loopexit168
  %.not870 = icmp eq i32 %.sroa.5.0.extract.shift.i, 0
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
  br i1 %.not870, label %._crit_edge.split, label %.lr.ph867.preheader

.lr.ph867.preheader:                              ; preds = %.lr.ph869
  %scevgep3066 = getelementptr i8, ptr %1, i64 1
  %i.dp = mul nsw i64 %i.az, -4                   ; 2 uses
  %scevgep3068 = getelementptr i8, ptr %1, i64 %i.dp
  %i.dq = sub nsw i64 1, %i.bf
  %scevgep3070 = getelementptr i8, ptr %1, i64 %i.dq
  %scevgep3085 = getelementptr i8, ptr %1, i64 1
  %i.dr = add nsw i64 %i.bf, -4
  %i.ds = sub nsw i64 4, %i.bf                    ; 2 uses
  %scevgep3089 = getelementptr i8, ptr %1, i64 %i.ds
  %i.dt = sub nsw i64 5, %i.bf
  %scevgep3091 = getelementptr i8, ptr %1, i64 %i.dt
  %scevgep3109 = getelementptr i8, ptr %1, i64 1
  %i.du = add nuw nsw i64 %i.bf, 4
  %i.dv = sub nuw nsw i64 -4, %i.bf               ; 2 uses
  %scevgep3113.a = getelementptr i8, ptr %1, i64 %i.dv
  %i.dw = sub nuw nsw i64 -3, %i.bf
  %scevgep3115 = getelementptr i8, ptr %1, i64 %i.dw
  %scevgep3133 = getelementptr i8, ptr %1, i64 1
  %i.dx = add nuw nsw i64 %i.bf, 4
  %i.dy = sub nuw nsw i64 -4, %i.bf               ; 2 uses
  %scevgep3139.a = getelementptr i8, ptr %1, i64 -4
  %scevgep3141 = getelementptr i8, ptr %1, i64 -3
  %scevgep3143 = getelementptr i8, ptr %1, i64 %i.dy
  %i.dz = sub nuw nsw i64 -3, %i.bf
  %scevgep3145 = getelementptr i8, ptr %1, i64 %i.dz
  %scevgep3167 = getelementptr i8, ptr %1, i64 1
  %i.ea = add nuw nsw i64 %i.bf, 4
  %i.eb = sub nuw nsw i64 -4, %i.bf               ; 2 uses
  %i.ec = mul nsw i64 %i.az, -4                   ; 2 uses
  %scevgep3173 = getelementptr i8, ptr %1, i64 %i.eb
  %i.ed = sub nuw nsw i64 -3, %i.bf
  %scevgep3175.a = getelementptr i8, ptr %1, i64 %i.ed
  %scevgep3177 = getelementptr i8, ptr %1, i64 %i.ec
  %i.ee = sub nsw i64 1, %i.bf
  %scevgep3179 = getelementptr i8, ptr %1, i64 %i.ee
  %scevgep3202 = getelementptr i8, ptr %1, i64 1
  %i.ef = add nsw i64 %i.bf, -4
  %i.eg = sub nsw i64 4, %i.bf                    ; 2 uses
  %i.eh = mul nsw i64 %i.az, -4                   ; 2 uses
  %scevgep3208 = getelementptr i8, ptr %1, i64 %i.eh
  %i.ei = sub nsw i64 1, %i.bf
  %scevgep3210 = getelementptr i8, ptr %1, i64 %i.ei
  %scevgep3212.a = getelementptr i8, ptr %1, i64 %i.eg
  %i.ej = sub nsw i64 5, %i.bf
  %scevgep3214 = getelementptr i8, ptr %1, i64 %i.ej
  %scevgep3235 = getelementptr i8, ptr %1, i64 -4
  %invariant.op4609 = sub i64 4, %i.bf
  %invariant.op4610 = add i64 %i.bf, -4
  %invariant.op4612 = sub i64 -4, %i.bf
  %invariant.op4614 = add i64 %i.bf, 4
  %invariant.op4616 = add i64 %i.bf, 4
  %invariant.op = sub i64 -4, %i.bf
  %invariant.op4618 = sub i64 -4, %i.bf
  %invariant.op4620.a = add i64 %i.bf, 4
  %invariant.op4607 = sub i64 -4, %i.bf
  %invariant.op4622 = sub i64 4, %i.bf
  %invariant.op4624 = add i64 %i.bf, -4
  %invariant.op4608 = sub i64 4, %i.bf
  br label %.lr.ph867

.lr.ph:                                           ; preds = %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, %.loopexit168
  %.sroa.08.0863 = phi i64 [ %i.ek, %.loopexit168 ], [ 1, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit ] ; 3 uses
  %i.ek = add nuw nsw i64 %.sroa.08.0863, 1       ; 2 uses
  %i.el = mul nuw nsw i64 %i.bf, %.sroa.08.0863   ; 6 uses
  %i.em = add nsw i64 %.sroa.08.0863, -1
  %i.en = mul nuw nsw i64 %i.bf, %i.em            ; 4 uses
  %i.eo = icmp samesign ult i64 %i.el, %2
  br i1 %i.eo, label %bb.jk, label %bb.jj

..loopexit_crit_edge:                             ; preds = %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit
  %exitcond1577.not = icmp eq i64 %i.ep, %i.ba
  br i1 %exitcond1577.not, label %._crit_edge.split, label %.lr.ph867

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, %.lr.ph869
  store i8 -1, ptr %0, align 8
  ret void

.lr.ph867:                                        ; preds = %.lr.ph867.preheader, %..loopexit_crit_edge
  %.sroa.012.0868 = phi i64 [ %i.ep, %..loopexit_crit_edge ], [ 1, %.lr.ph867.preheader ] ; 3 uses
  %i.ep = add nuw nsw i64 %.sroa.012.0868, 1      ; 2 uses
  %i.eq = lshr i64 %.sroa.012.0868, %i.bo
  %i.er = mul nuw nsw i64 %i.eq, %.sroa.5.0.extract.trunc.i
  %i.es = mul nuw nsw i64 %.sroa.012.0868, %i.az  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph867, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit
  %.sroa.014.0866 = phi i64 [ 0, %.lr.ph867 ], [ %i.et, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit ] ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.014.0866, 1      ; 3 uses
  %i.eu = add nuw nsw i64 %.sroa.014.0866, %i.er
  %i.ev = shl nuw nsw i64 %i.eu, 2
  %i.ew = or disjoint i64 %i.ev, 1                ; 3 uses
  %i.ex = icmp samesign ult i64 %i.ew, %7
  br i1 %i.ex, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !noundef !26
  %i.fa = shl i64 %.sroa.014.0866, %i.bo
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.fa, i64 1) ; 14 uses
  %i.fb = add i64 %..i, %i.es
  %i.fc = shl i64 %i.fb, 2                        ; 161 uses
  %i.fd = shl i64 %i.et, %i.bo
  %..i28 = call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 range(i64 0, 65536) %i.az, i64 %i.fd) ; 14 uses
  %i.fe = add nuw i64 %..i28, %i.es
  %i.ff = shl i64 %i.fe, 2                        ; 53 uses
  switch i8 %i.ez, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit [
    i8 0, label %bb.i
    i8 1, label %bb.k
    i8 2, label %bb.o
    i8 3, label %bb.s
    i8 4, label %bb.w
    i8 5, label %bb.aa
    i8 6, label %bb.bi
    i8 7, label %bb.bo
    i8 8, label %bb.df
    i8 9, label %bb.dl
    i8 10, label %bb.dr
    i8 11, label %bb.fh
    i8 12, label %bb.gt
    i8 13, label %bb.hz
  ]

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ew, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit: ; preds = %bb.dq, %bb.dk, %bb.bn, %bb.z, %bb.v, %bb.r, %bb.n, %.lr.ph.i30, %.preheader.split.i78, %.preheader.split.i73, %.preheader.split.i56, %.preheader.split.i48, %.preheader.split.i43, %.preheader.split.i38, %.preheader.split.i32, %.split.i, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_13.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_12.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_11.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit, %bb.g
  %exitcond1576.not = icmp eq i64 %i.et, %.sroa.5.0.extract.trunc.i
  br i1 %exitcond1576.not, label %..loopexit_crit_edge, label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %.not.i29 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i29, label %bb.j, label %.split.i, !prof !4

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #14, !noalias !33
  unreachable

.split.i:                                         ; preds = %bb.i
  %i.fg = or disjoint i64 %i.fc, 3                ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  br i1 %i.fh, label %.lr.ph.i30, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i30:                                       ; preds = %.split.i, %.lr.ph.i30
  %.sroa.0.06.i = phi i64 [ %i.fl, %.lr.ph.i30 ], [ %i.fg, %.split.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.06.i ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !33, !noundef !26
  %i.fk = add i8 %i.fj, -1
  store i8 %i.fk, ptr %i.fi, align 1, !alias.scope !33
  %i.fl = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.ff
  br i1 %i.fm, label %.lr.ph.i30, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %.not.i31 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i31, label %bb.l, label %.preheader.split.i32, !prof !4

.preheader.split.i32:                             ; preds = %bb.k
  %i.fn = icmp ult i64 %i.fc, %i.ff
  br i1 %i.fn, label %.lr.ph.i33.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i33.preheader:                             ; preds = %.preheader.split.i32
  %i.fo = shl nuw nsw i64 %..i28, 2
  %i.fp = shl i64 %..i, 2
  %i.fq = xor i64 %i.fp, -1
  %i.fr = add i64 %i.fo, %i.fq
  %i.fs = add i64 %i.fc, -4
  %i.ft = call i64 @llvm.umax.i64(i64 %2, i64 %i.fs)
  %i.fu = add i64 %i.ft, 4
  %i.fv = sub i64 %i.fu, %i.fc
  %i.fw = call i64 @llvm.umin.i64(i64 %i.fr, i64 %i.fv)
  %i.fx = add i64 %i.fw, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.fx, 5
  br i1 %min.iters.check, label %.lr.ph.i33.preheader3239, label %vector.ph3058

.lr.ph.i33.preheader3239:                         ; preds = %vector.body3060, %.lr.ph.i33.preheader
  %.sroa.0.09.i34.ph = phi i64 [ %i.fc, %.lr.ph.i33.preheader ], [ %i.gb, %vector.body3060 ]
  br label %.lr.ph.i33

vector.ph3058:                                    ; preds = %.lr.ph.i33.preheader
  %i.fy = and i64 %i.fx, 3                        ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 0
  %i.ga = select i1 %i.fz, i64 4, i64 %i.fy
  %n.vec3059 = sub i64 %i.fx, %i.ga               ; 2 uses
  %i.gb = add i64 %i.fc, %n.vec3059
  %scevgep3236 = getelementptr i8, ptr %scevgep3235, i64 %i.fc
  %load_initial = load <4 x i8>, ptr %scevgep3236, align 1
  %i.gc = getelementptr i8, ptr %1, i64 %i.fc
  br label %vector.body3060

vector.body3060:                                  ; preds = %vector.body3060, %vector.ph3058
  %store_forwarded = phi <4 x i8> [ %load_initial, %vector.ph3058 ], [ %i.ge, %vector.body3060 ]
  %index3061 = phi i64 [ 0, %vector.ph3058 ], [ %index.next3064, %vector.body3060 ] ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 %index3061 ; 2 uses
  %wide.load3062 = load <4 x i8>, ptr %i.gd, align 1, !alias.scope !36
  %i.ge = add <4 x i8> %store_forwarded, %wide.load3062 ; 2 uses
  store <4 x i8> %i.ge, ptr %i.gd, align 1, !alias.scope !36
  %index.next3064 = add nuw i64 %index3061, 4     ; 2 uses
  %i.gf = icmp eq i64 %index.next3064, %n.vec3059
  br i1 %i.gf, label %.lr.ph.i33.preheader3239, label %vector.body3060, !llvm.loop !39

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #14, !noalias !36
  unreachable

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader3239, %bb.n
  %.sroa.0.09.i34 = phi i64 [ %i.gn, %bb.n ], [ %.sroa.0.09.i34.ph, %.lr.ph.i33.preheader3239 ] ; 3 uses
  %i.gg = add nsw i64 %.sroa.0.09.i34, -4         ; 3 uses
  %i.gh = icmp ult i64 %i.gg, %2
  br i1 %i.gh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i33
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gg, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #14, !noalias !36
  unreachable

bb.n:                                             ; preds = %.lr.ph.i33
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i34 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !36, !noundef !26
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 %i.gg
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !36, !noundef !26
  %i.gm = add i8 %i.gl, %i.gj
  store i8 %i.gm, ptr %i.gi, align 1, !alias.scope !36
  %i.gn = add i64 %.sroa.0.09.i34, 1              ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.gn, %i.ff
  br i1 %exitcond.not.i35, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i33, !llvm.loop !40

bb.o:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %.not.i37 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i37, label %bb.p, label %.preheader.split.i38, !prof !4

.preheader.split.i38:                             ; preds = %bb.o
  %i.go = icmp ult i64 %i.fc, %i.ff
  br i1 %i.go, label %.lr.ph.i39.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i39.preheader:                             ; preds = %.preheader.split.i38
  %8 = shl nuw nsw i64 %..i28, 2
  %9 = shl i64 %..i, 2
  %10 = xor i64 %9, -1
  %11 = add i64 %8, %10
  %12 = sub i64 %i.fc, %i.bf
  %13 = call i64 @llvm.umax.i64(i64 %2, i64 %12)
  %14 = add i64 %13, %i.bf
  %15 = sub i64 %14, %i.fc
  %i.gp = call i64 @llvm.umin.i64(i64 %11, i64 %15)
  %i.gq = add i64 %i.gp, 1                        ; 3 uses
  %min.iters.check3073 = icmp ult i64 %i.gq, 17
  br i1 %min.iters.check3073, label %.lr.ph.i39.preheader3241, label %vector.memcheck

.lr.ph.i39.preheader3241:                         ; preds = %vector.body3076, %vector.memcheck, %.lr.ph.i39.preheader
  %.sroa.0.09.i40.ph = phi i64 [ %i.fc, %vector.memcheck ], [ %i.fc, %.lr.ph.i39.preheader ], [ %i.gu, %vector.body3076 ]
  br label %.lr.ph.i39

vector.memcheck:                                  ; preds = %.lr.ph.i39.preheader
  %scevgep = getelementptr i8, ptr %1, i64 %i.fc
  %16 = shl nuw nsw i64 %..i28, 2
  %17 = shl i64 %..i, 2
  %18 = xor i64 %17, -1
  %19 = add i64 %16, %18
  %20 = add i64 %i.dp, %i.fc
  %umax = call i64 @llvm.umax.i64(i64 %2, i64 %20)
  %21 = add i64 %i.bf, %umax
  %22 = sub i64 %21, %i.fc
  %umin = call i64 @llvm.umin.i64(i64 %19, i64 %22)
  %23 = add i64 %umin, %i.fc                      ; 2 uses
  %scevgep3067 = getelementptr i8, ptr %scevgep3066, i64 %23
  %scevgep3069 = getelementptr i8, ptr %scevgep3068, i64 %i.fc
  %scevgep3071 = getelementptr i8, ptr %scevgep3070, i64 %23
  %bound0 = icmp ult ptr %scevgep, %scevgep3071
  %bound1 = icmp ult ptr %scevgep3069, %scevgep3067
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i39.preheader3241, label %vector.ph3074

vector.ph3074:                                    ; preds = %vector.memcheck
  %i.gr = and i64 %i.gq, 15                       ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  %i.gt = select i1 %i.gs, i64 16, i64 %i.gr
  %n.vec3075 = sub i64 %i.gq, %i.gt               ; 2 uses
  %i.gu = add i64 %i.fc, %n.vec3075
  br label %vector.body3076

vector.body3076:                                  ; preds = %vector.body3076, %vector.ph3074
  %index3077 = phi i64 [ 0, %vector.ph3074 ], [ %index.next3080, %vector.body3076 ] ; 2 uses
  %i.gv = add i64 %i.fc, %index3077               ; 2 uses
  %i.gw = sub nsw i64 %i.gv, %i.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 %i.gv ; 2 uses
  %wide.load3078 = load <16 x i8>, ptr %i.gx, align 1, !alias.scope !44, !noalias !47
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.gw
  %wide.load3079 = load <16 x i8>, ptr %i.gy, align 1, !alias.scope !49
  %i.gz = add <16 x i8> %wide.load3079, %wide.load3078
  store <16 x i8> %i.gz, ptr %i.gx, align 1, !alias.scope !44, !noalias !47
  %index.next3080 = add nuw i64 %index3077, 16    ; 2 uses
  %i.ha = icmp eq i64 %index.next3080, %n.vec3075
  br i1 %i.ha, label %.lr.ph.i39.preheader3241, label %vector.body3076, !llvm.loop !50

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #14, !noalias !41
  unreachable

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader3241, %bb.r
  %.sroa.0.09.i40 = phi i64 [ %i.hi, %bb.r ], [ %.sroa.0.09.i40.ph, %.lr.ph.i39.preheader3241 ] ; 3 uses
  %i.hb = sub nsw i64 %.sroa.0.09.i40, %i.bf      ; 3 uses
  %i.hc = icmp ult i64 %i.hb, %2
  br i1 %i.hc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i39
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.hb, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #14, !noalias !41
  unreachable

bb.r:                                             ; preds = %.lr.ph.i39
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i40 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !41, !noundef !26
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 %i.hb
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !41, !noundef !26
  %i.hh = add i8 %i.hg, %i.he
  store i8 %i.hh, ptr %i.hd, align 1, !alias.scope !41
  %i.hi = add i64 %.sroa.0.09.i40, 1              ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.hi, %i.ff
  br i1 %exitcond.not.i41, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i39, !llvm.loop !51

bb.s:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %.not.i42 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i42, label %bb.t, label %.preheader.split.i43, !prof !4

.preheader.split.i43:                             ; preds = %bb.s
  %i.hj = icmp ult i64 %i.fc, %i.ff
  br i1 %i.hj, label %.lr.ph.i44.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i44.preheader:                             ; preds = %.preheader.split.i43
  %24 = shl nuw nsw i64 %..i28, 2
  %25 = shl i64 %..i, 2
  %26 = xor i64 %25, -1
  %27 = add i64 %24, %26
  %.reass4623 = add i64 %i.fc, %invariant.op4622
  %28 = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4623)
  %.reass4625 = add i64 %28, %invariant.op4624
  %29 = sub i64 %.reass4625, %i.fc
  %i.hk = call i64 @llvm.umin.i64(i64 %27, i64 %29)
  %i.hl = add i64 %i.hk, 1                        ; 3 uses
  %min.iters.check3097 = icmp ult i64 %i.hl, 17
  br i1 %min.iters.check3097, label %.lr.ph.i44.preheader3243, label %vector.memcheck3083

.lr.ph.i44.preheader3243:                         ; preds = %vector.body3100, %vector.memcheck3083, %.lr.ph.i44.preheader
  %.sroa.0.09.i45.ph = phi i64 [ %i.fc, %vector.memcheck3083 ], [ %i.fc, %.lr.ph.i44.preheader ], [ %i.hp, %vector.body3100 ]
  br label %.lr.ph.i44

vector.memcheck3083:                              ; preds = %.lr.ph.i44.preheader
  %scevgep3084 = getelementptr i8, ptr %1, i64 %i.fc
  %30 = shl nuw nsw i64 %..i28, 2
  %31 = shl i64 %..i, 2
  %32 = xor i64 %31, -1
  %33 = add i64 %30, %32
  %34 = add i64 %i.ds, %i.fc
  %umax3086 = call i64 @llvm.umax.i64(i64 %2, i64 %34)
  %35 = add i64 %i.dr, %umax3086
  %36 = sub i64 %35, %i.fc
  %umin3087 = call i64 @llvm.umin.i64(i64 %33, i64 %36)
  %37 = add i64 %umin3087, %i.fc                  ; 2 uses
  %scevgep3088 = getelementptr i8, ptr %scevgep3085, i64 %37
  %scevgep3090 = getelementptr i8, ptr %scevgep3089, i64 %i.fc
  %scevgep3092 = getelementptr i8, ptr %scevgep3091, i64 %37
  %bound03093 = icmp ult ptr %scevgep3084, %scevgep3092
  %bound13094 = icmp ult ptr %scevgep3090, %scevgep3088
  %found.conflict3095 = and i1 %bound03093, %bound13094
  br i1 %found.conflict3095, label %.lr.ph.i44.preheader3243, label %vector.ph3098

vector.ph3098:                                    ; preds = %vector.memcheck3083
  %i.hm = and i64 %i.hl, 15                       ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 0
  %i.ho = select i1 %i.hn, i64 16, i64 %i.hm
  %n.vec3099 = sub i64 %i.hl, %i.ho               ; 2 uses
  %i.hp = add i64 %i.fc, %n.vec3099
  br label %vector.body3100

vector.body3100:                                  ; preds = %vector.body3100, %vector.ph3098
  %index3101 = phi i64 [ 0, %vector.ph3098 ], [ %index.next3104, %vector.body3100 ] ; 2 uses
  %i.hq = add i64 %i.fc, %index3101               ; 2 uses
  %i.hr = sub i64 %i.hq, %i.bf
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 %i.hq ; 2 uses
  %wide.load3102 = load <16 x i8>, ptr %i.hs, align 1, !alias.scope !55, !noalias !58
  %i.ht = getelementptr i8, ptr %1, i64 %i.hr
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  %wide.load3103 = load <16 x i8>, ptr %i.hu, align 1, !alias.scope !60
  %i.hv = add <16 x i8> %wide.load3103, %wide.load3102
  store <16 x i8> %i.hv, ptr %i.hs, align 1, !alias.scope !55, !noalias !58
  %index.next3104 = add nuw i64 %index3101, 16    ; 2 uses
  %i.hw = icmp eq i64 %index.next3104, %n.vec3099
  br i1 %i.hw, label %.lr.ph.i44.preheader3243, label %vector.body3100, !llvm.loop !61

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #14, !noalias !52
  unreachable

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader3243, %bb.v
  %.sroa.0.09.i45 = phi i64 [ %i.id, %bb.v ], [ %.sroa.0.09.i45.ph, %.lr.ph.i44.preheader3243 ] ; 3 uses
  %.reass.reass.i.reass.reass.reass = add i64 %.sroa.0.09.i45, %invariant.op4608 ; 3 uses
  %i.hx = icmp ult i64 %.reass.reass.i.reass.reass.reass, %2
  br i1 %i.hx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i44
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14, !noalias !52
  unreachable

bb.v:                                             ; preds = %.lr.ph.i44
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i45 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !alias.scope !52, !noundef !26
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i.reass.reass.reass
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !52, !noundef !26
  %i.ic = add i8 %i.ib, %i.hz
  store i8 %i.ic, ptr %i.hy, align 1, !alias.scope !52
  %i.id = add i64 %.sroa.0.09.i45, 1              ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %i.id, %i.ff
  br i1 %exitcond.not.i46, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i44, !llvm.loop !62

bb.w:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.not.i47 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i47, label %bb.x, label %.preheader.split.i48, !prof !4

.preheader.split.i48:                             ; preds = %bb.w
  %i.ie = icmp ult i64 %i.fc, %i.ff
  br i1 %i.ie, label %.lr.ph.i49.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i49.preheader:                             ; preds = %.preheader.split.i48
  %38 = shl nuw nsw i64 %..i28, 2
  %39 = shl i64 %..i, 2
  %40 = xor i64 %39, -1
  %41 = add i64 %38, %40
  %.reass4619 = add i64 %i.fc, %invariant.op4618
  %42 = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4619)
  %.reass4621 = add i64 %42, %invariant.op4620.a
  %43 = sub i64 %.reass4621, %i.fc
  %i.if = call i64 @llvm.umin.i64(i64 %41, i64 %43)
  %i.ig = add i64 %i.if, 1                        ; 3 uses
  %min.iters.check3121 = icmp ult i64 %i.ig, 17
  br i1 %min.iters.check3121, label %.lr.ph.i49.preheader3245, label %vector.memcheck3107

.lr.ph.i49.preheader3245:                         ; preds = %vector.body3124, %vector.memcheck3107, %.lr.ph.i49.preheader
  %.sroa.0.09.i50.ph = phi i64 [ %i.fc, %vector.memcheck3107 ], [ %i.fc, %.lr.ph.i49.preheader ], [ %i.ik, %vector.body3124 ]
  br label %.lr.ph.i49

vector.memcheck3107:                              ; preds = %.lr.ph.i49.preheader
  %scevgep3108 = getelementptr i8, ptr %1, i64 %i.fc
  %44 = shl nuw nsw i64 %..i28, 2
  %45 = shl i64 %..i, 2
  %46 = xor i64 %45, -1
  %47 = add i64 %44, %46
  %48 = add i64 %i.dv, %i.fc
  %umax3110 = call i64 @llvm.umax.i64(i64 %2, i64 %48)
  %49 = add i64 %i.du, %umax3110
  %50 = sub i64 %49, %i.fc
  %umin3111 = call i64 @llvm.umin.i64(i64 %47, i64 %50)
  %51 = add i64 %umin3111, %i.fc                  ; 2 uses
  %scevgep3112 = getelementptr i8, ptr %scevgep3109, i64 %51
  %scevgep3114 = getelementptr i8, ptr %scevgep3113.a, i64 %i.fc
  %scevgep3116 = getelementptr i8, ptr %scevgep3115, i64 %51
  %bound03117 = icmp ult ptr %scevgep3108, %scevgep3116
  %bound13118 = icmp ult ptr %scevgep3114, %scevgep3112
  %found.conflict3119 = and i1 %bound03117, %bound13118
  br i1 %found.conflict3119, label %.lr.ph.i49.preheader3245, label %vector.ph3122

vector.ph3122:                                    ; preds = %vector.memcheck3107
  %i.ih = and i64 %i.ig, 15                       ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 0
  %i.ij = select i1 %i.ii, i64 16, i64 %i.ih
  %n.vec3123 = sub i64 %i.ig, %i.ij               ; 2 uses
  %i.ik = add i64 %i.fc, %n.vec3123
  br label %vector.body3124

vector.body3124:                                  ; preds = %vector.body3124, %vector.ph3122
  %index3125 = phi i64 [ 0, %vector.ph3122 ], [ %index.next3128, %vector.body3124 ] ; 2 uses
  %i.il = add i64 %i.fc, %index3125               ; 2 uses
  %i.im = sub i64 %i.il, %i.bf
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 %i.il ; 2 uses
  %wide.load3126 = load <16 x i8>, ptr %i.in, align 1, !alias.scope !66, !noalias !69
  %i.io = getelementptr i8, ptr %1, i64 %i.im
  %i.ip = getelementptr i8, ptr %i.io, i64 -4
  %wide.load3127 = load <16 x i8>, ptr %i.ip, align 1, !alias.scope !71
  %i.iq = add <16 x i8> %wide.load3127, %wide.load3126
  store <16 x i8> %i.iq, ptr %i.in, align 1, !alias.scope !66, !noalias !69
  %index.next3128 = add nuw i64 %index3125, 16    ; 2 uses
  %i.ir = icmp eq i64 %index.next3128, %n.vec3123
  br i1 %i.ir, label %.lr.ph.i49.preheader3245, label %vector.body3124, !llvm.loop !72

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #14, !noalias !63
  unreachable

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader3245, %bb.z
  %.sroa.0.09.i50 = phi i64 [ %i.iy, %bb.z ], [ %.sroa.0.09.i50.ph, %.lr.ph.i49.preheader3245 ] ; 3 uses
  %.reass.reass.i52.reass.reass.reass = add i64 %.sroa.0.09.i50, %invariant.op4607 ; 3 uses
  %i.is = icmp ult i64 %.reass.reass.i52.reass.reass.reass, %2
  br i1 %i.is, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i49
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i52.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #14, !noalias !63
  unreachable

bb.z:                                             ; preds = %.lr.ph.i49
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i50 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !63, !noundef !26
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i52.reass.reass.reass
  %i.iw = load i8, ptr %i.iv, align 1, !alias.scope !63, !noundef !26
  %i.ix = add i8 %i.iw, %i.iu
  store i8 %i.ix, ptr %i.it, align 1, !alias.scope !63
  %i.iy = add i64 %.sroa.0.09.i50, 1              ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.iy, %i.ff
  br i1 %exitcond.not.i53, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i49, !llvm.loop !73

bb.aa:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %.not.i54 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i54, label %bb.ad, label %bb.ab, !prof !77

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i = icmp ugt i64 %i.fc, %i.ff
  br i1 %.not.i.i, label %bb.ac, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #14, !noalias !78
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ab
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc ; 3 uses
  %i.ja = sub nuw nsw i64 %i.ff, %i.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !74
  %i.jb = add nsw i64 %i.fc, -4                   ; 2 uses
  %i.jc = icmp eq i64 %i.fc, 0
  br i1 %i.jc, label %bb.ae, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ad:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ff, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #14, !noalias !74
  unreachable

bb.ae:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.jb, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #14, !noalias !74
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 %i.jb
  %.sroa.01.0.copyload.i = load i32, ptr %i.jd, align 1, !alias.scope !74
  store i32 %.sroa.01.0.copyload.i, ptr %i.an, align 4, !noalias !74
  %i.je = sub nsw i64 %i.fc, %i.bf                ; 3 uses
  %i.jf = add i64 %i.je, 4                        ; 4 uses
  %i.jg = icmp ugt i64 %i.jf, %i.fc
  br i1 %i.jg, label %bb.ag, label %bb.af, !prof !4

bb.af:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.jh = icmp samesign ugt i64 %i.bf, %i.fc
  br i1 %i.jh, label %bb.ai, label %bb.ah, !prof !4

bb.ag:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.jf, i64 noundef %i.fc, i64 noundef %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #14, !noalias !74
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %i.jf
  %i.jj = sub nuw nsw i64 %i.fc, %i.jf
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 %i.je
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !82
  store ptr %i.jl, ptr %i.al, align 8, !noalias !87
  store i64 0, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !87
  store ptr %i.iz, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !87
  store i64 %i.ja, ptr %.sroa.630.0..sroa_idx.i, align 8, !noalias !87
  store i64 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !82
  store ptr %i.ji, ptr %i.ak, align 8, !alias.scope !88, !noalias !92
  store i64 %i.jj, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !88, !noalias !92
  store ptr %i.iz, ptr %.sroa.533.0..sroa_idx.i, align 8, !alias.scope !88, !noalias !92
  store i64 0, ptr %.sroa.634.0..sroa_idx.i, align 8, !alias.scope !88, !noalias !92
  store i64 4, ptr %.sroa.735.0..sroa_idx.i, align 8, !alias.scope !88, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !93
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ak), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !93
  store ptr %i.jk, ptr %i.ai, align 8, !alias.scope !98, !noalias !102
  store i64 %i.bf, ptr %.sroa.437.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !102
  store ptr %i.iz, ptr %.sroa.538.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !102
  store i64 0, ptr %.sroa.639.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !102
  store i64 4, ptr %.sroa.740.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !74
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !93
  %i.jm = load i64, ptr %i.dh, align 8, !alias.scope !103, !noalias !106, !noundef !26 ; 2 uses
  %i.jn = load i64, ptr %i.di, align 8, !alias.scope !103, !noalias !106, !noundef !26
  %i.jo = icmp ult i64 %i.jm, %i.jn
  br i1 %i.jo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.je, i64 noundef %i.fc, i64 noundef %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #14, !noalias !74
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ah, %bb.bg
  %i.jp = phi i64 [ %i.mo, %bb.bg ], [ %i.jm, %bb.ah ] ; 3 uses
  %i.jq = add nuw i64 %i.jp, 1
  store i64 %i.jq, ptr %i.dh, align 8, !alias.scope !103, !noalias !106
  %i.jr = load i64, ptr %i.dj, align 8, !alias.scope !108, !noalias !113, !noundef !26
  %i.js = add i64 %i.jr, %i.jp                    ; 2 uses
  %i.jt = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.am, i64 noundef %i.js), !noalias !116 ; 2 uses
  %i.ju = extractvalue { ptr, i64 } %i.jt, 0      ; 6 uses
  %i.jv = extractvalue { ptr, i64 } %i.jt, 1      ; 5 uses
  %i.jw = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dk, i64 noundef %i.js), !noalias !116 ; 2 uses
  %i.jx = extractvalue { ptr, i64 } %i.jw, 0      ; 5 uses
  %i.jy = extractvalue { ptr, i64 } %i.jw, 1      ; 4 uses
  %i.jz = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, i64 noundef %i.jp), !noalias !117 ; 2 uses
  %i.ka = extractvalue { ptr, i64 } %i.jz, 0      ; 5 uses
  %i.kb = extractvalue { ptr, i64 } %i.jz, 1      ; 4 uses
  %.not18.i = icmp eq ptr %i.ju, null
  br i1 %.not18.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jx) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ka) ]
  %.not19.i = icmp eq i64 %i.jv, 0
  br i1 %.not19.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kc = load i8, ptr %i.ju, align 1, !noundef !26
  %.not20.i = icmp eq i64 %i.jy, 0
  br i1 %.not20.i, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #14
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.not21.i = icmp eq i64 %i.kb, 0
  br i1 %.not21.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #14
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.kd = load i8, ptr %i.an, align 4, !noalias !74, !noundef !26 ; 2 uses
  %i.ke = load i8, ptr %i.jx, align 1, !noundef !26 ; 2 uses
  %i.kf = and i8 %i.ke, %i.kd
  %i.kg = xor i8 %i.ke, %i.kd
  %i.kh = lshr i8 %i.kg, 1
  %i.ki = add i8 %i.kh, %i.kf                     ; 2 uses
  %i.kj = load i8, ptr %i.ka, align 1, !noundef !26 ; 2 uses
  %i.kk = and i8 %i.ki, %i.kj
  %i.kl = xor i8 %i.ki, %i.kj
  %i.km = lshr i8 %i.kl, 1
  %i.kn = add i8 %i.kk, %i.kc
  %i.ko = add i8 %i.kn, %i.km
  %.not22.i = icmp eq i64 %i.jv, 1
  br i1 %.not22.i, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #14
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.kq = load i8, ptr %i.kp, align 1, !noundef !26
  %.not23.i = icmp eq i64 %i.jy, 1
  br i1 %.not23.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #14
  unreachable

bb.as:                                            ; preds = %bb.aq
  %.not24.i = icmp eq i64 %i.kb, 1
  br i1 %.not24.i, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #14
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.kr = load i8, ptr %i.dm, align 1, !noalias !74, !noundef !26 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jx, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !noundef !26 ; 2 uses
  %i.ku = and i8 %i.kt, %i.kr
  %i.kv = xor i8 %i.kt, %i.kr
  %i.kw = lshr i8 %i.kv, 1
  %i.kx = add i8 %i.kw, %i.ku                     ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !noundef !26 ; 2 uses
  %i.la = and i8 %i.kx, %i.kz
  %i.lb = xor i8 %i.kx, %i.kz
  %i.lc = lshr i8 %i.lb, 1
  %i.ld = add i8 %i.la, %i.kq
  %i.le = add i8 %i.ld, %i.lc
  %i.lf = icmp ugt i64 %i.jv, 2
  br i1 %i.lf, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #14
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  %i.lh = load i8, ptr %i.lg, align 1, !noundef !26
  %i.li = icmp ugt i64 %i.jy, 2
  br i1 %i.li, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #14
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.lj = icmp ugt i64 %i.kb, 2
  br i1 %i.lj, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #14
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.lk = load i8, ptr %i.dn, align 2, !noalias !74, !noundef !26 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.lm = load i8, ptr %i.ll, align 1, !noundef !26 ; 2 uses
  %i.ln = and i8 %i.lm, %i.lk
  %i.lo = xor i8 %i.lm, %i.lk
  %i.lp = lshr i8 %i.lo, 1
  %i.lq = add i8 %i.lp, %i.ln                     ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %i.ls = load i8, ptr %i.lr, align 1, !noundef !26 ; 2 uses
  %i.lt = and i8 %i.lq, %i.ls
  %i.lu = xor i8 %i.lq, %i.ls
  %i.lv = lshr i8 %i.lu, 1
  %i.lw = add i8 %i.lt, %i.lh
  %i.lx = add i8 %i.lw, %i.lv
  %.not25.i = icmp eq i64 %i.jv, 3
  br i1 %.not25.i, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #14
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ju, i64 3
  %i.lz = load i8, ptr %i.ly, align 1, !noundef !26
  %.not26.i = icmp eq i64 %i.jy, 3
  br i1 %.not26.i, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.ba
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #14
  unreachable

bb.be:                                            ; preds = %bb.bc
  %.not27.i = icmp eq i64 %i.kb, 3
  br i1 %.not27.i, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ma = load i8, ptr %i.do, align 1, !noalias !74, !noundef !26 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jx, i64 3
  %i.mc = load i8, ptr %i.mb, align 1, !noundef !26 ; 2 uses
  %i.md = and i8 %i.mc, %i.ma
  %i.me = xor i8 %i.mc, %i.ma
  %i.mf = lshr i8 %i.me, 1
  %i.mg = add i8 %i.mf, %i.md                     ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ka, i64 3
  %i.mi = load i8, ptr %i.mh, align 1, !noundef !26 ; 2 uses
  %i.mj = and i8 %i.mg, %i.mi
  %i.mk = xor i8 %i.mg, %i.mi
  %i.ml = lshr i8 %i.mk, 1
  %i.mm = add i8 %i.mj, %i.lz
  %i.mn = add i8 %i.mm, %i.ml
  store i8 %i.ko, ptr %i.an, align 4, !noalias !74
  store i8 %i.le, ptr %i.dm, align 1, !noalias !74
  store i8 %i.lx, ptr %i.dn, align 2, !noalias !74
  store i8 %i.mn, ptr %i.do, align 1, !noalias !74
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.ju, i64 noundef %i.jv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51)
  %i.mo = load i64, ptr %i.dh, align 8, !alias.scope !103, !noalias !106, !noundef !26 ; 2 uses
  %i.mp = load i64, ptr %i.di, align 8, !alias.scope !103, !noalias !106, !noundef !26
  %i.mq = icmp ult i64 %i.mo, %i.mp
  br i1 %i.mq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.bh:                                            ; preds = %bb.be
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, %bb.bg, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !74
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.bi:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %.not.i55 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i55, label %bb.bj, label %.preheader.split.i56, !prof !4

.preheader.split.i56:                             ; preds = %bb.bi
  %i.mr = icmp ult i64 %i.fc, %i.ff
  br i1 %i.mr, label %.lr.ph.i57.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i57.preheader:                             ; preds = %.preheader.split.i56
  %52 = shl nuw nsw i64 %..i28, 2
  %53 = shl i64 %..i, 2
  %54 = xor i64 %53, -1
  %i.ms = add i64 %52, %54
  %55 = add i64 %i.fc, -4                         ; 2 uses
  %56 = sub i64 %55, %i.bf
  %57 = call i64 @llvm.umax.i64(i64 %2, i64 %56)
  %.reass4617 = add i64 %57, %invariant.op4616
  %58 = sub i64 %.reass4617, %i.fc
  %i.mt = call i64 @llvm.umax.i64(i64 %2, i64 %55)
  %i.mu = add i64 %i.mt, 4
  %i.mv = sub i64 %i.mu, %i.fc
  %i.mw = call i64 @llvm.umin.i64(i64 %58, i64 %i.mv)
  %i.mx = call i64 @llvm.umin.i64(i64 %i.ms, i64 %i.mw)
  %i.my = add i64 %i.mx, 1                        ; 3 uses
  %min.iters.check3154 = icmp ult i64 %i.my, 9
  br i1 %min.iters.check3154, label %.lr.ph.i57.preheader3247, label %vector.memcheck3131

.lr.ph.i57.preheader3247:                         ; preds = %vector.body3157, %vector.memcheck3131, %.lr.ph.i57.preheader
  %.sroa.0.015.i.ph = phi i64 [ %i.fc, %vector.memcheck3131 ], [ %i.fc, %.lr.ph.i57.preheader ], [ %i.nc, %vector.body3157 ]
  br label %.lr.ph.i57

vector.memcheck3131:                              ; preds = %.lr.ph.i57.preheader
  %scevgep3132 = getelementptr i8, ptr %1, i64 %i.fc ; 2 uses
  %59 = shl nuw nsw i64 %..i28, 2
  %60 = shl i64 %..i, 2
  %61 = xor i64 %60, -1
  %62 = add i64 %59, %61
  %63 = add i64 %i.dy, %i.fc
  %umax3134 = call i64 @llvm.umax.i64(i64 %2, i64 %63)
  %64 = add i64 %i.dx, %umax3134
  %65 = sub i64 %64, %i.fc
  %66 = add i64 %i.fc, -4
  %umax3135 = call i64 @llvm.umax.i64(i64 %2, i64 %66)
  %67 = add i64 %umax3135, 4
  %68 = sub i64 %67, %i.fc
  %umin3136 = call i64 @llvm.umin.i64(i64 %65, i64 %68)
  %umin3137 = call i64 @llvm.umin.i64(i64 %62, i64 %umin3136)
  %69 = add i64 %umin3137, %i.fc                  ; 3 uses
  %scevgep3138 = getelementptr i8, ptr %scevgep3133, i64 %69 ; 2 uses
  %scevgep3140 = getelementptr i8, ptr %scevgep3139.a, i64 %i.fc
  %scevgep3142 = getelementptr i8, ptr %scevgep3141, i64 %69
  %scevgep3144 = getelementptr i8, ptr %scevgep3143, i64 %i.fc
  %scevgep3146 = getelementptr i8, ptr %scevgep3145, i64 %69
  %bound03147 = icmp ult ptr %scevgep3132, %scevgep3142
  %bound13148 = icmp ult ptr %scevgep3140, %scevgep3138
  %found.conflict3149 = and i1 %bound03147, %bound13148
  %bound03150 = icmp ult ptr %scevgep3132, %scevgep3146
  %bound13151 = icmp ult ptr %scevgep3144, %scevgep3138
  %found.conflict3152 = and i1 %bound03150, %bound13151
  %conflict.rdx = or i1 %found.conflict3149, %found.conflict3152
  br i1 %conflict.rdx, label %.lr.ph.i57.preheader3247, label %vector.ph3155

vector.ph3155:                                    ; preds = %vector.memcheck3131
  %i.mz = and i64 %i.my, 3                        ; 2 uses
  %i.na = icmp eq i64 %i.mz, 0
  %i.nb = select i1 %i.na, i64 4, i64 %i.mz
  %n.vec3156 = sub i64 %i.my, %i.nb               ; 2 uses
  %i.nc = add i64 %i.fc, %n.vec3156
  br label %vector.body3157

vector.body3157:                                  ; preds = %vector.body3157, %vector.ph3155
  %index3158 = phi i64 [ 0, %vector.ph3155 ], [ %index.next3162, %vector.body3157 ] ; 2 uses
  %i.nd = add i64 %i.fc, %index3158               ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 %i.nd ; 2 uses
  %wide.load3159 = load <4 x i8>, ptr %i.ne, align 1, !alias.scope !121, !noalias !124
  %i.nf = sub i64 %i.nd, %i.bf
  %i.ng = getelementptr i8, ptr %1, i64 %i.nd
  %i.nh = getelementptr i8, ptr %i.ng, i64 -4
  %wide.load3160 = load <4 x i8>, ptr %i.nh, align 1, !alias.scope !127
  %i.ni = zext <4 x i8> %wide.load3160 to <4 x i16>
  %i.nj = getelementptr i8, ptr %1, i64 %i.nf
  %i.nk = getelementptr i8, ptr %i.nj, i64 -4
  %wide.load3161 = load <4 x i8>, ptr %i.nk, align 1, !alias.scope !128
  %i.nl = zext <4 x i8> %wide.load3161 to <4 x i16>
  %i.nm = add nuw nsw <4 x i16> %i.nl, %i.ni
  %i.nn = lshr <4 x i16> %i.nm, splat (i16 1)
  %i.no = trunc nuw <4 x i16> %i.nn to <4 x i8>
  %i.np = add <4 x i8> %wide.load3159, %i.no
  store <4 x i8> %i.np, ptr %i.ne, align 1, !alias.scope !121, !noalias !124
  %index.next3162 = add nuw i64 %index3158, 4     ; 2 uses
  %i.nq = icmp eq i64 %index.next3162, %n.vec3156
  br i1 %i.nq, label %.lr.ph.i57.preheader3247, label %vector.body3157, !llvm.loop !129

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #14, !noalias !118
  unreachable

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader3247, %bb.bn
  %.sroa.0.015.i = phi i64 [ %i.og, %bb.bn ], [ %.sroa.0.015.i.ph, %.lr.ph.i57.preheader3247 ] ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.015.i ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !alias.scope !118, !noundef !26
  %i.nt = add nsw i64 %.sroa.0.015.i, -4          ; 3 uses
  %i.nu = icmp ult i64 %i.nt, %2
  br i1 %i.nu, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i57
  %.reass.reass.i59.reass.reass.reass = add i64 %.sroa.0.015.i, %invariant.op ; 3 uses
  %i.nv = icmp ult i64 %.reass.reass.i59.reass.reass.reass, %2
  br i1 %i.nv, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i57
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.nt, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #14, !noalias !118
  unreachable

bb.bm:                                            ; preds = %bb.bk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i59.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #14, !noalias !118
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 %i.nt
  %i.nx = load i8, ptr %i.nw, align 1, !alias.scope !118, !noundef !26
  %i.ny = zext i8 %i.nx to i16
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i59.reass.reass.reass
  %i.oa = load i8, ptr %i.nz, align 1, !alias.scope !118, !noundef !26
  %i.ob = zext i8 %i.oa to i16
  %i.oc = add nuw nsw i16 %i.ob, %i.ny
  %i.od = lshr i16 %i.oc, 1
  %i.oe = trunc nuw i16 %i.od to i8
  %i.of = add i8 %i.ns, %i.oe
  store i8 %i.of, ptr %i.nr, align 1, !alias.scope !118
  %i.og = add i64 %.sroa.0.015.i, 1               ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %i.og, %i.ff
  br i1 %exitcond.not.i60, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i57, !llvm.loop !130

bb.bo:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.not.i61 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i61, label %bb.br, label %bb.bp, !prof !77

bb.bp:                                            ; preds = %bb.bo
  %.not.i.i62 = icmp ugt i64 %i.fc, %i.ff
  br i1 %.not.i.i62, label %bb.bq, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63, !prof !4

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !noalias !134
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63: ; preds = %bb.bp
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc ; 2 uses
  %i.oi = sub nuw nsw i64 %i.ff, %i.fc            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !131
  %i.oj = add nsw i64 %i.fc, -4                   ; 2 uses
  %i.ok = icmp eq i64 %i.fc, 0
  br i1 %i.ok, label %bb.bs, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64, !prof !4

bb.br:                                            ; preds = %bb.bo
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ff, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14
  unreachable

bb.bs:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.oj, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 %i.oj
  %.sroa.02.0.copyload.i = load i32, ptr %i.ol, align 1, !alias.scope !131
  store i32 %.sroa.02.0.copyload.i, ptr %i.ah, align 4, !noalias !131
  %i.om = sub nsw i64 %i.fc, %i.bf                ; 2 uses
  %i.on = icmp samesign ugt i64 %i.bf, %i.fc
  br i1 %i.on, label %bb.bu, label %bb.bt, !prof !4

bb.bt:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64
  %.not22.i65 = icmp samesign ugt i64 %i.oi, %i.bf
  br i1 %.not22.i65, label %bb.bv, label %bb.bw, !prof !77

bb.bu:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.om, i64 noundef %i.fc, i64 noundef %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14
  unreachable

bb.bv:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.oi, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #14
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 %i.om ; 2 uses
  %i.op = and i64 %i.oi, -64                      ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.op ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.op ; 2 uses
  %.not.i.i.i97.i = icmp eq i64 %i.op, 0
  br i1 %.not.i.i.i97.i, label %._crit_edge.i, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.bw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i
  %.sroa.0.0101.i = phi ptr [ %i.ou, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.oo, %bb.bw ] ; 2 uses
  %.sroa.5.0100.i = phi i64 [ %i.ot, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.op, %bb.bw ]
  %.sroa.6.099.i = phi ptr [ %i.os, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.oh, %bb.bw ] ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.6.099.i, i64 64 ; 2 uses
  %i.ot = add i64 %.sroa.5.0100.i, -64            ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.0101.i, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !138
  store ptr %i.os, ptr %i.ad, align 8, !noalias !143
  store i64 0, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !143
  store ptr %.sroa.6.099.i, ptr %.sroa.5.0..sroa_idx.i67, align 8, !noalias !143
  store i64 64, ptr %.sroa.652.0..sroa_idx.i, align 8, !noalias !143
  store i64 4, ptr %.sroa.753.0..sroa_idx.i, align 8, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !138
  store ptr %.sroa.0.0101.i, ptr %i.ac, align 8, !alias.scope !144, !noalias !148
  store i64 64, ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !148
  store ptr %i.ou, ptr %.sroa.556.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !148
  store i64 0, ptr %.sroa.657.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !148
  store i64 4, ptr %.sroa.758.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !148
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ac), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 96, i1 false), !noalias !131
  %i.ov = load i64, ptr %i.cy, align 8, !alias.scope !150, !noalias !153, !noundef !26 ; 2 uses
  %i.ow = load i64, ptr %i.cz, align 8, !alias.scope !150, !noalias !153, !noundef !26
  %i.ox = icmp ult i64 %i.ov, %i.ow
  br i1 %i.ox, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i

._crit_edge.i:                                    ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i, %bb.bw
  %i.oy = and i64 %i.oi, 60                       ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.oy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !155
  store ptr %i.oz, ptr %i.ab, align 8, !noalias !160
  store i64 0, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !160
  store ptr %i.oq, ptr %.sroa.565.0..sroa_idx.i, align 8, !noalias !160
  store i64 %i.oy, ptr %.sroa.666.0..sroa_idx.i, align 8, !noalias !160
  store i64 4, ptr %.sroa.767.0..sroa_idx.i, align 8, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !155
  store ptr %i.or, ptr %i.aa, align 8, !alias.scope !161, !noalias !165
  store i64 %i.oy, ptr %.sroa.469.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !165
  store ptr %i.pa, ptr %.sroa.570.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !165
  store i64 0, ptr %.sroa.671.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !165
  store i64 4, ptr %.sroa.772.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !131
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !155
  %i.pb = load i64, ptr %i.de, align 8, !alias.scope !166, !noalias !169, !noundef !26 ; 2 uses
  %i.pc = load i64, ptr %i.df, align 8, !alias.scope !166, !noalias !169, !noundef !26
  %i.pd = icmp ult i64 %i.pb, %i.pc
  br i1 %i.pd, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %._crit_edge.i, %bb.cm
  %i.pe = phi i64 [ %i.ra, %bb.cm ], [ %i.pb, %._crit_edge.i ] ; 3 uses
  %i.pf = add nuw i64 %i.pe, 1
  store i64 %i.pf, ptr %i.de, align 8, !alias.scope !166, !noalias !169
  %i.pg = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae, i64 noundef %i.pe), !noalias !171 ; 2 uses
  %i.ph = extractvalue { ptr, i64 } %i.pg, 0      ; 6 uses
  %i.pi = extractvalue { ptr, i64 } %i.pg, 1      ; 5 uses
  %i.pj = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dg, i64 noundef %i.pe), !noalias !171 ; 2 uses
  %i.pk = extractvalue { ptr, i64 } %i.pj, 0      ; 5 uses
  %i.pl = extractvalue { ptr, i64 } %i.pj, 1      ; 4 uses
  %.not24.i68 = icmp eq ptr %i.ph, null
  br i1 %.not24.i68, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit, label %bb.bx
end_hunk_0
begin_hunk_1_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform25apply_predictor_transform:bb.a

bb.ci:                                            ; preds = %bb.cg
  %i.qg = load i8, ptr %i.dc, align 2, !noalias !131, !noundef !26 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ph, i64 2
  %i.qi = load i8, ptr %i.qh, align 1, !noundef !26
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  %i.qk = load i8, ptr %i.qj, align 1, !noundef !26 ; 2 uses
  %i.ql = and i8 %i.qk, %i.qg
  %i.qm = xor i8 %i.qk, %i.qg
  %i.qn = lshr i8 %i.qm, 1
  %i.qo = add i8 %i.ql, %i.qi
  %i.qp = add i8 %i.qo, %i.qn
  %.not29.i = icmp eq i64 %i.pi, 3
  br i1 %.not29.i, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.cg
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #14
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %.not30.i = icmp eq i64 %i.pl, 3
  br i1 %.not30.i, label %bb.cn, label %bb.cm

bb.cl:                                            ; preds = %bb.ci
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #14
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.qq = load i8, ptr %i.dd, align 1, !noalias !131, !noundef !26 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ph, i64 3
  %i.qs = load i8, ptr %i.qr, align 1, !noundef !26
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pk, i64 3
  %i.qu = load i8, ptr %i.qt, align 1, !noundef !26 ; 2 uses
  %i.qv = and i8 %i.qu, %i.qq
  %i.qw = xor i8 %i.qu, %i.qq
  %i.qx = lshr i8 %i.qw, 1
  %i.qy = add i8 %i.qv, %i.qs
  %i.qz = add i8 %i.qy, %i.qx
  store i8 %i.pt, ptr %i.ah, align 4, !noalias !131
  store i8 %i.qd, ptr %i.db, align 1, !noalias !131
  store i8 %i.qp, ptr %i.dc, align 2, !noalias !131
  store i8 %i.qz, ptr %i.dd, align 1, !noalias !131
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.ph, i64 noundef %i.pi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68)
  %i.ra = load i64, ptr %i.de, align 8, !alias.scope !166, !noalias !169, !noundef !26 ; 2 uses
  %i.rb = load i64, ptr %i.df, align 8, !alias.scope !166, !noalias !169, !noundef !26
  %i.rc = icmp ult i64 %i.ra, %i.rb
  br i1 %i.rc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit

bb.cn:                                            ; preds = %bb.ck
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #14
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i: ; preds = %.lr.ph.i66, %bb.dd
  %i.rd = phi i64 [ %i.sz, %bb.dd ], [ %i.ov, %.lr.ph.i66 ] ; 3 uses
  %i.re = add nuw i64 %i.rd, 1
  store i64 %i.re, ptr %i.cy, align 8, !alias.scope !150, !noalias !153
  %i.rf = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.af, i64 noundef %i.rd), !noalias !172 ; 2 uses
  %i.rg = extractvalue { ptr, i64 } %i.rf, 0      ; 6 uses
  %i.rh = extractvalue { ptr, i64 } %i.rf, 1      ; 5 uses
  %i.ri = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.da, i64 noundef %i.rd), !noalias !172 ; 2 uses
  %i.rj = extractvalue { ptr, i64 } %i.ri, 0      ; 5 uses
  %i.rk = extractvalue { ptr, i64 } %i.ri, 1      ; 4 uses
  %.not31.i = icmp eq ptr %i.rg, null
  br i1 %.not31.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i, label %bb.co

bb.co:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rj) ]
  %.not32.i = icmp eq i64 %i.rh, 0
  br i1 %.not32.i, label %bb.cq, label %bb.cp

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i: ; preds = %bb.dd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, %.lr.ph.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !131
  %.not.i.i.i.i = icmp eq i64 %i.ot, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %.lr.ph.i66

bb.cp:                                            ; preds = %bb.co
  %.not33.i = icmp eq i64 %i.rk, 0
  br i1 %.not33.i, label %bb.cs, label %bb.cr

bb.cq:                                            ; preds = %bb.co
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #14
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.rl = load i8, ptr %i.ah, align 4, !noalias !131, !noundef !26 ; 2 uses
  %i.rm = load i8, ptr %i.rg, align 1, !noundef !26
  %i.rn = load i8, ptr %i.rj, align 1, !noundef !26 ; 2 uses
  %i.ro = and i8 %i.rn, %i.rl
  %i.rp = xor i8 %i.rn, %i.rl
  %i.rq = lshr i8 %i.rp, 1
  %i.rr = add i8 %i.ro, %i.rm
  %i.rs = add i8 %i.rr, %i.rq
  %.not34.i = icmp eq i64 %i.rh, 1
  br i1 %.not34.i, label %bb.cu, label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #14
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %.not35.i = icmp eq i64 %i.rk, 1
  br i1 %.not35.i, label %bb.cw, label %bb.cv

bb.cu:                                            ; preds = %bb.cr
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #14
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.rt = load i8, ptr %i.db, align 1, !noalias !131, !noundef !26 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rg, i64 1
  %i.rv = load i8, ptr %i.ru, align 1, !noundef !26
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rj, i64 1
  %i.rx = load i8, ptr %i.rw, align 1, !noundef !26 ; 2 uses
  %i.ry = and i8 %i.rx, %i.rt
  %i.rz = xor i8 %i.rx, %i.rt
  %i.sa = lshr i8 %i.rz, 1
  %i.sb = add i8 %i.ry, %i.rv
  %i.sc = add i8 %i.sb, %i.sa
  %i.sd = icmp ugt i64 %i.rh, 2
  br i1 %i.sd, label %bb.cx, label %bb.cy

bb.cw:                                            ; preds = %bb.ct
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #14
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.se = icmp ugt i64 %i.rk, 2
  br i1 %i.se, label %bb.cz, label %bb.da

bb.cy:                                            ; preds = %bb.cv
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #14
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.sf = load i8, ptr %i.dc, align 2, !noalias !131, !noundef !26 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rg, i64 2
  %i.sh = load i8, ptr %i.sg, align 1, !noundef !26
  %i.si = getelementptr inbounds nuw i8, ptr %i.rj, i64 2
  %i.sj = load i8, ptr %i.si, align 1, !noundef !26 ; 2 uses
  %i.sk = and i8 %i.sj, %i.sf
  %i.sl = xor i8 %i.sj, %i.sf
  %i.sm = lshr i8 %i.sl, 1
  %i.sn = add i8 %i.sk, %i.sh
  %i.so = add i8 %i.sn, %i.sm
  %.not36.i = icmp eq i64 %i.rh, 3
  br i1 %.not36.i, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %bb.cx
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #14
  unreachable

bb.db:                                            ; preds = %bb.cz
  %.not37.i = icmp eq i64 %i.rk, 3
  br i1 %.not37.i, label %bb.de, label %bb.dd

bb.dc:                                            ; preds = %bb.cz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #14
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.sp = load i8, ptr %i.dd, align 1, !noalias !131, !noundef !26 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rg, i64 3
  %i.sr = load i8, ptr %i.sq, align 1, !noundef !26
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rj, i64 3
  %i.st = load i8, ptr %i.ss, align 1, !noundef !26 ; 2 uses
  %i.su = and i8 %i.st, %i.sp
  %i.sv = xor i8 %i.st, %i.sp
  %i.sw = lshr i8 %i.sv, 1
  %i.sx = add i8 %i.su, %i.sr
  %i.sy = add i8 %i.sx, %i.sw
  store i8 %i.rs, ptr %i.ah, align 4, !noalias !131
  store i8 %i.sc, ptr %i.db, align 1, !noalias !131
  store i8 %i.so, ptr %i.dc, align 2, !noalias !131
  store i8 %i.sy, ptr %i.dd, align 1, !noalias !131
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.rg, i64 noundef %i.rh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77)
  %i.sz = load i64, ptr %i.cy, align 8, !alias.scope !150, !noalias !153, !noundef !26 ; 2 uses
  %i.ta = load i64, ptr %i.cz, align 8, !alias.scope !150, !noalias !153, !noundef !26
  %i.tb = icmp ult i64 %i.sz, %i.ta
  br i1 %i.tb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i

bb.de:                                            ; preds = %bb.db
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, %bb.cm, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.df:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %.not.i72 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i72, label %bb.dg, label %.preheader.split.i73, !prof !4

.preheader.split.i73:                             ; preds = %bb.df
  %i.tc = icmp ult i64 %i.fc, %i.ff
  br i1 %i.tc, label %.lr.ph.i75.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i75.preheader:                             ; preds = %.preheader.split.i73
  %70 = shl nuw nsw i64 %..i28, 2
  %71 = shl i64 %..i, 2
  %72 = xor i64 %71, -1
  %73 = add i64 %70, %72
  %.reass4613 = add i64 %i.fc, %invariant.op4612
  %i.td = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4613)
  %.reass4615 = add i64 %i.td, %invariant.op4614
  %i.te = sub i64 %.reass4615, %i.fc
  %74 = sub i64 %i.fc, %i.bf
  %75 = call i64 @llvm.umax.i64(i64 %2, i64 %74)
  %76 = add i64 %75, %i.bf
  %77 = sub i64 %76, %i.fc
  %i.tf = call i64 @llvm.umin.i64(i64 %i.te, i64 %77)
  %i.tg = call i64 @llvm.umin.i64(i64 %73, i64 %i.tf)
  %i.th = add i64 %i.tg, 1                        ; 3 uses
  %min.iters.check3189 = icmp ult i64 %i.th, 17
  br i1 %min.iters.check3189, label %.lr.ph.i75.preheader3249, label %vector.memcheck3165

.lr.ph.i75.preheader3249:                         ; preds = %vector.body3192, %vector.memcheck3165, %.lr.ph.i75.preheader
  %.sroa.0.016.i.ph = phi i64 [ %i.fc, %vector.memcheck3165 ], [ %i.fc, %.lr.ph.i75.preheader ], [ %i.tl, %vector.body3192 ]
  br label %.lr.ph.i75

vector.memcheck3165:                              ; preds = %.lr.ph.i75.preheader
  %scevgep3166 = getelementptr i8, ptr %1, i64 %i.fc ; 2 uses
  %78 = shl nuw nsw i64 %..i28, 2
  %79 = shl i64 %..i, 2
  %80 = xor i64 %79, -1
  %81 = add i64 %78, %80
  %82 = add i64 %i.eb, %i.fc
  %umax3168 = call i64 @llvm.umax.i64(i64 %2, i64 %82)
  %83 = add i64 %i.ea, %umax3168
  %84 = sub i64 %83, %i.fc
  %85 = add i64 %i.ec, %i.fc
  %umax3169 = call i64 @llvm.umax.i64(i64 %2, i64 %85)
  %86 = add i64 %i.bf, %umax3169
  %87 = sub i64 %86, %i.fc
  %umin3170 = call i64 @llvm.umin.i64(i64 %84, i64 %87)
  %umin3171 = call i64 @llvm.umin.i64(i64 %81, i64 %umin3170)
  %88 = add i64 %umin3171, %i.fc                  ; 3 uses
  %scevgep3172 = getelementptr i8, ptr %scevgep3167, i64 %88 ; 2 uses
  %scevgep3174 = getelementptr i8, ptr %scevgep3173, i64 %i.fc
  %scevgep3176 = getelementptr i8, ptr %scevgep3175.a, i64 %88
  %scevgep3178 = getelementptr i8, ptr %scevgep3177, i64 %i.fc
  %scevgep3180 = getelementptr i8, ptr %scevgep3179, i64 %88
  %bound03181 = icmp ult ptr %scevgep3166, %scevgep3176
  %bound13182 = icmp ult ptr %scevgep3174, %scevgep3172
  %found.conflict3183 = and i1 %bound03181, %bound13182
  %bound03184 = icmp ult ptr %scevgep3166, %scevgep3180
  %bound13185 = icmp ult ptr %scevgep3178, %scevgep3172
  %found.conflict3186 = and i1 %bound03184, %bound13185
  %conflict.rdx3187 = or i1 %found.conflict3183, %found.conflict3186
  br i1 %conflict.rdx3187, label %.lr.ph.i75.preheader3249, label %vector.ph3190

vector.ph3190:                                    ; preds = %vector.memcheck3165
  %i.ti = and i64 %i.th, 15                       ; 2 uses
  %i.tj = icmp eq i64 %i.ti, 0
  %i.tk = select i1 %i.tj, i64 16, i64 %i.ti
  %n.vec3191 = sub i64 %i.th, %i.tk               ; 2 uses
  %i.tl = add i64 %i.fc, %n.vec3191
  br label %vector.body3192

vector.body3192:                                  ; preds = %vector.body3192, %vector.ph3190
  %index3193 = phi i64 [ 0, %vector.ph3190 ], [ %index.next3197, %vector.body3192 ] ; 2 uses
  %i.tm = add i64 %i.fc, %index3193               ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 %i.tm ; 2 uses
  %wide.load3194 = load <16 x i8>, ptr %i.tn, align 1, !alias.scope !176, !noalias !179
  %i.to = sub nsw i64 %i.tm, %i.bf                ; 2 uses
  %i.tp = getelementptr i8, ptr %1, i64 %i.to
  %i.tq = getelementptr i8, ptr %i.tp, i64 -4
  %wide.load3195 = load <16 x i8>, ptr %i.tq, align 1, !alias.scope !182
  %i.tr = zext <16 x i8> %wide.load3195 to <16 x i16>
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 %i.to
  %wide.load3196 = load <16 x i8>, ptr %i.ts, align 1, !alias.scope !183
  %i.tt = zext <16 x i8> %wide.load3196 to <16 x i16>
  %i.tu = add nuw nsw <16 x i16> %i.tt, %i.tr
  %i.tv = lshr <16 x i16> %i.tu, splat (i16 1)
  %i.tw = trunc nuw <16 x i16> %i.tv to <16 x i8>
  %i.tx = add <16 x i8> %wide.load3194, %i.tw
  store <16 x i8> %i.tx, ptr %i.tn, align 1, !alias.scope !176, !noalias !179
  %index.next3197 = add nuw i64 %index3193, 16    ; 2 uses
  %i.ty = icmp eq i64 %index.next3197, %n.vec3191
  br i1 %i.ty, label %.lr.ph.i75.preheader3249, label %vector.body3192, !llvm.loop !184

bb.dg:                                            ; preds = %bb.df
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !173
  unreachable

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.preheader3249, %bb.dk
  %.sroa.0.016.i = phi i64 [ %i.up, %bb.dk ], [ %.sroa.0.016.i.ph, %.lr.ph.i75.preheader3249 ] ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.016.i ; 2 uses
  %i.ua = load i8, ptr %i.tz, align 1, !alias.scope !173, !noundef !26
  %i.ub = sub nsw i64 %.sroa.0.016.i, %i.bf       ; 4 uses
  %i.uc = add nsw i64 %i.ub, -4                   ; 3 uses
  %i.ud = icmp ult i64 %i.uc, %2
  br i1 %i.ud, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %.lr.ph.i75
  %i.ue = icmp ult i64 %i.ub, %2
  br i1 %i.ue, label %bb.dk, label %bb.dj

bb.di:                                            ; preds = %.lr.ph.i75
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.uc, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #14, !noalias !173
  unreachable

bb.dj:                                            ; preds = %bb.dh
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ub, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !173
  unreachable

bb.dk:                                            ; preds = %bb.dh
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 %i.uc
  %i.ug = load i8, ptr %i.uf, align 1, !alias.scope !173, !noundef !26
  %i.uh = zext i8 %i.ug to i16
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 %i.ub
  %i.uj = load i8, ptr %i.ui, align 1, !alias.scope !173, !noundef !26
  %i.uk = zext i8 %i.uj to i16
  %i.ul = add nuw nsw i16 %i.uk, %i.uh
  %i.um = lshr i16 %i.ul, 1
  %i.un = trunc nuw i16 %i.um to i8
  %i.uo = add i8 %i.ua, %i.un
  store i8 %i.uo, ptr %i.tz, align 1, !alias.scope !173
  %i.up = add i64 %.sroa.0.016.i, 1               ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %i.up, %i.ff
  br i1 %exitcond.not.i76, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i75, !llvm.loop !185

bb.dl:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %.not.i77 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i77, label %bb.dm, label %.preheader.split.i78, !prof !4

.preheader.split.i78:                             ; preds = %bb.dl
  %i.uq = icmp ult i64 %i.fc, %i.ff
  br i1 %i.uq, label %.lr.ph.i80.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i80.preheader:                             ; preds = %.preheader.split.i78
  %89 = shl nuw nsw i64 %..i28, 2
  %90 = shl i64 %..i, 2
  %91 = xor i64 %90, -1
  %92 = add i64 %89, %91
  %.reass = add i64 %i.fc, %invariant.op4609
  %i.ur = call i64 @llvm.umax.i64(i64 %2, i64 %.reass)
  %.reass4611 = add i64 %i.ur, %invariant.op4610
  %i.us = sub i64 %.reass4611, %i.fc
  %93 = sub i64 %i.fc, %i.bf
  %94 = call i64 @llvm.umax.i64(i64 %2, i64 %93)
  %95 = add i64 %94, %i.bf
  %96 = sub i64 %95, %i.fc
  %i.ut = call i64 @llvm.umin.i64(i64 %i.us, i64 %96)
  %i.uu = call i64 @llvm.umin.i64(i64 %92, i64 %i.ut)
  %i.uv = add i64 %i.uu, 1                        ; 3 uses
  %min.iters.check3224 = icmp ult i64 %i.uv, 17
  br i1 %min.iters.check3224, label %.lr.ph.i80.preheader3251, label %vector.memcheck3200

.lr.ph.i80.preheader3251:                         ; preds = %vector.body3227, %vector.memcheck3200, %.lr.ph.i80.preheader
  %.sroa.0.015.i81.ph = phi i64 [ %i.fc, %vector.memcheck3200 ], [ %i.fc, %.lr.ph.i80.preheader ], [ %i.uz, %vector.body3227 ]
  br label %.lr.ph.i80

vector.memcheck3200:                              ; preds = %.lr.ph.i80.preheader
  %scevgep3201 = getelementptr i8, ptr %1, i64 %i.fc ; 2 uses
  %97 = shl nuw nsw i64 %..i28, 2
  %98 = shl i64 %..i, 2
  %99 = xor i64 %98, -1
  %100 = add i64 %97, %99
  %101 = add i64 %i.eg, %i.fc
  %umax3203 = call i64 @llvm.umax.i64(i64 %2, i64 %101)
  %102 = add i64 %i.ef, %umax3203
  %103 = sub i64 %102, %i.fc
  %104 = add i64 %i.eh, %i.fc
  %umax3204 = call i64 @llvm.umax.i64(i64 %2, i64 %104)
  %105 = add i64 %i.bf, %umax3204
  %106 = sub i64 %105, %i.fc
  %umin3205 = call i64 @llvm.umin.i64(i64 %103, i64 %106)
  %umin3206 = call i64 @llvm.umin.i64(i64 %100, i64 %umin3205)
  %107 = add i64 %umin3206, %i.fc                 ; 3 uses
  %scevgep3207 = getelementptr i8, ptr %scevgep3202, i64 %107 ; 2 uses
  %scevgep3209 = getelementptr i8, ptr %scevgep3208, i64 %i.fc
  %scevgep3211 = getelementptr i8, ptr %scevgep3210, i64 %107
  %scevgep3213 = getelementptr i8, ptr %scevgep3212.a, i64 %i.fc
  %scevgep3215 = getelementptr i8, ptr %scevgep3214, i64 %107
  %bound03216 = icmp ult ptr %scevgep3201, %scevgep3211
  %bound13217 = icmp ult ptr %scevgep3209, %scevgep3207
  %found.conflict3218 = and i1 %bound03216, %bound13217
  %bound03219 = icmp ult ptr %scevgep3201, %scevgep3215
  %bound13220 = icmp ult ptr %scevgep3213, %scevgep3207
  %found.conflict3221 = and i1 %bound03219, %bound13220
  %conflict.rdx3222 = or i1 %found.conflict3218, %found.conflict3221
  br i1 %conflict.rdx3222, label %.lr.ph.i80.preheader3251, label %vector.ph3225

vector.ph3225:                                    ; preds = %vector.memcheck3200
  %i.uw = and i64 %i.uv, 15                       ; 2 uses
  %i.ux = icmp eq i64 %i.uw, 0
  %i.uy = select i1 %i.ux, i64 16, i64 %i.uw
  %n.vec3226 = sub i64 %i.uv, %i.uy               ; 2 uses
  %i.uz = add i64 %i.fc, %n.vec3226
  br label %vector.body3227

vector.body3227:                                  ; preds = %vector.body3227, %vector.ph3225
  %index3228 = phi i64 [ 0, %vector.ph3225 ], [ %index.next3232, %vector.body3227 ] ; 2 uses
  %i.va = add i64 %i.fc, %index3228               ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 %i.va ; 2 uses
  %wide.load3229 = load <16 x i8>, ptr %i.vb, align 1, !alias.scope !189, !noalias !192
  %i.vc = sub nsw i64 %i.va, %i.bf                ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 %i.vc
  %wide.load3230 = load <16 x i8>, ptr %i.vd, align 1, !alias.scope !195
  %i.ve = zext <16 x i8> %wide.load3230 to <16 x i16>
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 %i.vc
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  %wide.load3231 = load <16 x i8>, ptr %i.vg, align 1, !alias.scope !196
  %i.vh = zext <16 x i8> %wide.load3231 to <16 x i16>
  %i.vi = add nuw nsw <16 x i16> %i.vh, %i.ve
  %i.vj = lshr <16 x i16> %i.vi, splat (i16 1)
  %i.vk = trunc nuw <16 x i16> %i.vj to <16 x i8>
  %i.vl = add <16 x i8> %wide.load3229, %i.vk
  store <16 x i8> %i.vl, ptr %i.vb, align 1, !alias.scope !189, !noalias !192
  %index.next3232 = add nuw i64 %index3228, 16    ; 2 uses
  %i.vm = icmp eq i64 %index.next3232, %n.vec3226
  br i1 %i.vm, label %.lr.ph.i80.preheader3251, label %vector.body3227, !llvm.loop !197

bb.dm:                                            ; preds = %bb.dl
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #14, !noalias !186
  unreachable

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.preheader3251, %bb.dq
  %.sroa.0.015.i81 = phi i64 [ %i.wd, %bb.dq ], [ %.sroa.0.015.i81.ph, %.lr.ph.i80.preheader3251 ] ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.015.i81 ; 2 uses
  %i.vo = load i8, ptr %i.vn, align 1, !alias.scope !186, !noundef !26
  %i.vp = sub nsw i64 %.sroa.0.015.i81, %i.bf     ; 4 uses
  %i.vq = icmp ult i64 %i.vp, %2
  br i1 %i.vq, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.lr.ph.i80
  %i.vr = add nuw i64 %i.vp, 4                    ; 3 uses
  %i.vs = icmp ult i64 %i.vr, %2
  br i1 %i.vs, label %bb.dq, label %bb.dp

bb.do:                                            ; preds = %.lr.ph.i80
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.vp, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #14, !noalias !186
  unreachable

bb.dp:                                            ; preds = %bb.dn
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.vr, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #14, !noalias !186
  unreachable

bb.dq:                                            ; preds = %bb.dn
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 %i.vp
  %i.vu = load i8, ptr %i.vt, align 1, !alias.scope !186, !noundef !26
  %i.vv = zext i8 %i.vu to i16
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 %i.vr
  %i.vx = load i8, ptr %i.vw, align 1, !alias.scope !186, !noundef !26
  %i.vy = zext i8 %i.vx to i16
  %i.vz = add nuw nsw i16 %i.vy, %i.vv
  %i.wa = lshr i16 %i.vz, 1
  %i.wb = trunc nuw i16 %i.wa to i8
  %i.wc = add i8 %i.vo, %i.wb
  store i8 %i.wc, ptr %i.vn, align 1, !alias.scope !186
  %i.wd = add i64 %.sroa.0.015.i81, 1             ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.wd, %i.ff
  br i1 %exitcond.not.i82, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i80, !llvm.loop !198

bb.dr:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.not.i83 = icmp ugt i64 %i.ff, %2
  br i1 %.not.i83, label %bb.du, label %bb.ds, !prof !77

bb.ds:                                            ; preds = %bb.dr
  %.not.i.i84 = icmp ugt i64 %i.fc, %i.ff
  br i1 %.not.i.i84, label %bb.dt, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85, !prof !4

bb.dt:                                            ; preds = %bb.ds
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #14, !noalias !202
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85: ; preds = %bb.ds
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc ; 4 uses
  %i.wf = sub nuw nsw i64 %i.ff, %i.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !199
  %i.wg = add nsw i64 %i.fc, -4                   ; 2 uses
  %i.wh = icmp eq i64 %i.fc, 0
  br i1 %i.wh, label %bb.dv, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86, !prof !4

bb.du:                                            ; preds = %bb.dr
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ff, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #14
  unreachable

bb.dv:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.wg, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 %i.wg
  %.sroa.01.0.copyload.i87 = load i32, ptr %i.wi, align 1, !alias.scope !199
  store i32 %.sroa.01.0.copyload.i87, ptr %i.z, align 4, !noalias !199
  %i.wj = sub nsw i64 %i.fc, %i.bf                ; 4 uses
  %i.wk = add nsw i64 %i.wj, -4                   ; 4 uses
  %i.wl = icmp ugt i64 %i.wk, %i.fc
  br i1 %i.wl, label %bb.dx, label %bb.dw, !prof !4

bb.dw:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  %i.wm = add nuw i64 %i.wj, 4                    ; 3 uses
  %.not157 = icmp ult i64 %i.wj, %i.fc
  br i1 %.not157, label %bb.dy, label %bb.dz, !prof !206

bb.dx:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.wk, i64 noundef %i.fc, i64 noundef %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #14
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 %i.wk
  %i.wo = sub nuw nsw i64 %i.fc, %i.wk
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 %i.wj
  %i.wq = sub nuw nsw i64 %i.fc, %i.wm
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 %i.wm
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 %i.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !207
  store ptr %i.ws, ptr %i.w, align 8, !noalias !212
  store i64 0, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !212
  store ptr %i.we, ptr %.sroa.5.0..sroa_idx.i88, align 8, !noalias !212
  store i64 %i.wf, ptr %.sroa.637.0..sroa_idx.i, align 8, !noalias !212
  store i64 4, ptr %.sroa.7.0..sroa_idx.i89, align 8, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !207
  store ptr %i.wn, ptr %i.v, align 8, !alias.scope !213, !noalias !217
  store i64 %i.wo, ptr %.sroa.439.0..sroa_idx.i, align 8, !alias.scope !213, !noalias !217
  store ptr %i.we, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !213, !noalias !217
  store i64 0, ptr %.sroa.641.0..sroa_idx.i, align 8, !alias.scope !213, !noalias !217
  store i64 4, ptr %.sroa.742.0..sroa_idx.i, align 8, !alias.scope !213, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !218
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.v), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !218
  store ptr %i.wp, ptr %i.t, align 8, !alias.scope !223, !noalias !227
  store i64 %i.bf, ptr %.sroa.444.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !227
  store ptr %i.we, ptr %.sroa.545.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !227
  store i64 0, ptr %.sroa.646.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !227
  store i64 4, ptr %.sroa.747.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !228
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !228
  store ptr %i.wr, ptr %i.r, align 8, !alias.scope !233, !noalias !237
  store i64 %i.wq, ptr %.sroa.449.0..sroa_idx.i, align 8, !alias.scope !233, !noalias !237
  store ptr %i.we, ptr %.sroa.550.0..sroa_idx.i, align 8, !alias.scope !233, !noalias !237
  store i64 0, ptr %.sroa.651.0..sroa_idx.i, align 8, !alias.scope !233, !noalias !237
  store i64 4, ptr %.sroa.752.0..sroa_idx.i, align 8, !alias.scope !233, !noalias !237
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.r), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(208) %i.y, i64 208, i1 false), !noalias !199
  %i.wt = load i64, ptr %i.co, align 8, !alias.scope !239, !noalias !242, !noundef !26 ; 2 uses
  %i.wu = load i64, ptr %i.cp, align 8, !alias.scope !239, !noalias !242, !noundef !26
  %i.wv = icmp ult i64 %i.wt, %i.wu
  br i1 %i.wv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit

bb.dz:                                            ; preds = %bb.dw
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.wm, i64 noundef %i.fc, i64 noundef %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #14
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.dy, %bb.ff
  %i.ww = phi i64 [ %i.aau, %bb.ff ], [ %i.wt, %bb.dy ] ; 3 uses
  %i.wx = add nuw i64 %i.ww, 1
  store i64 %i.wx, ptr %i.co, align 8, !alias.scope !239, !noalias !242
  %i.wy = load i64, ptr %i.cq, align 8, !alias.scope !244, !noalias !249, !noundef !26
  %i.wz = add i64 %i.wy, %i.ww                    ; 2 uses
  %i.xa = load i64, ptr %i.cr, align 8, !alias.scope !252, !noalias !257, !noundef !26
  %i.xb = add i64 %i.xa, %i.wz                    ; 2 uses
  %i.xc = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.x, i64 noundef %i.xb), !noalias !260 ; 2 uses
  %i.xd = extractvalue { ptr, i64 } %i.xc, 0      ; 6 uses
  %i.xe = extractvalue { ptr, i64 } %i.xc, 1      ; 5 uses
  %i.xf = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs, i64 noundef %i.xb), !noalias !260 ; 2 uses
  %i.xg = extractvalue { ptr, i64 } %i.xf, 0      ; 5 uses
  %i.xh = extractvalue { ptr, i64 } %i.xf, 1      ; 4 uses
  %i.xi = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ct, i64 noundef %i.wz), !noalias !261 ; 2 uses
  %i.xj = extractvalue { ptr, i64 } %i.xi, 0      ; 5 uses
  %i.xk = extractvalue { ptr, i64 } %i.xi, 1      ; 4 uses
  %i.xl = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu, i64 noundef %i.ww), !noalias !262 ; 2 uses
  %i.xm = extractvalue { ptr, i64 } %i.xl, 0      ; 5 uses
  %i.xn = extractvalue { ptr, i64 } %i.xl, 1      ; 4 uses
  %.not22.i90 = icmp eq ptr %i.xd, null
  br i1 %.not22.i90, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit, label %bb.ea

bb.ea:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i
end_hunk_1
