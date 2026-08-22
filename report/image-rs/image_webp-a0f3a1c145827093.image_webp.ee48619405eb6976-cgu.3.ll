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
  %i.az = zext i16 %3 to i64                      ; 7 uses
  %i.ba = zext i16 %4 to i64                      ; 2 uses
  %i.bb = icmp samesign ugt i64 %2, 3
  br i1 %i.bb, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsksn9slvsHfS_10image_webp.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !26
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.bc, align 1
  %i.bf = shl nuw nsw i64 %i.az, 2                ; 68 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %.not.i = icmp samesign ugt i64 %i.bf, %2
  br i1 %.not.i, label %bb.d, label %.preheader.split.i, !prof !4

.preheader.split.i:                               ; preds = %bb.c
  %i.bg = icmp ugt i16 %3, 1
  br i1 %i.bg, label %vector.ph, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit

vector.ph:                                        ; preds = %.preheader.split.i
  %load_initial3257 = load <4 x i8>, ptr %1, align 1
  %i.bh = add nsw i64 %i.bf, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %store_forwarded3258 = phi <4 x i8> [ %load_initial3257, %vector.ph ], [ %i.bk, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = getelementptr i8, ptr %1, i64 %index
  %i.bj = getelementptr i8, ptr %i.bi, i64 4      ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.bj, align 1, !alias.scope !27
  %i.bk = add <4 x i8> %store_forwarded3258, %wide.load ; 2 uses
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
  %i.dp = mul nsw i64 %i.az, -4                   ; 3 uses
  %scevgep3070.a = getelementptr i8, ptr %1, i64 %i.dp
  %i.dq = sub nsw i64 1, %i.bf
  %scevgep3072 = getelementptr i8, ptr %1, i64 %i.dq
  %scevgep3089.a = getelementptr i8, ptr %1, i64 1
  %i.dr = add nsw i64 %i.bf, -4
  %i.ds = sub nsw i64 4, %i.bf                    ; 2 uses
  %scevgep3093 = getelementptr i8, ptr %1, i64 %i.ds
  %i.dt = sub nsw i64 5, %i.bf
  %scevgep3095 = getelementptr i8, ptr %1, i64 %i.dt
  %8 = add nsw i64 %i.bf, -4
  %scevgep3115.a = getelementptr i8, ptr %1, i64 1
  %i.du = add nuw nsw i64 %i.bf, 4
  %i.dv = sub nuw nsw i64 -4, %i.bf               ; 2 uses
  %scevgep3119 = getelementptr i8, ptr %1, i64 %i.dv
  %i.dw = sub nuw nsw i64 -3, %i.bf
  %scevgep3121 = getelementptr i8, ptr %1, i64 %i.dw
  %9 = add nuw nsw i64 %i.bf, 4
  %scevgep3141.a = getelementptr i8, ptr %1, i64 1
  %i.dx = add nuw nsw i64 %i.bf, 4
  %i.dy = sub nuw nsw i64 -4, %i.bf               ; 2 uses
  %scevgep3147 = getelementptr i8, ptr %1, i64 -4
  %scevgep3149 = getelementptr i8, ptr %1, i64 -3
  %scevgep3151 = getelementptr i8, ptr %1, i64 %i.dy
  %i.dz = sub nuw nsw i64 -3, %i.bf
  %scevgep3153 = getelementptr i8, ptr %1, i64 %i.dz
  %10 = add nuw nsw i64 %i.bf, 4
  %scevgep3179.a = getelementptr i8, ptr %1, i64 1
  %i.ea = add nuw nsw i64 %i.bf, 4
  %i.eb = sub nuw nsw i64 -4, %i.bf               ; 2 uses
  %i.ec = mul nsw i64 %i.az, -4                   ; 2 uses
  %scevgep3185 = getelementptr i8, ptr %1, i64 %i.eb
  %i.ed = sub nuw nsw i64 -3, %i.bf
  %scevgep3187 = getelementptr i8, ptr %1, i64 %i.ed
  %scevgep3189 = getelementptr i8, ptr %1, i64 %i.ec
  %i.ee = sub nsw i64 1, %i.bf
  %scevgep3191 = getelementptr i8, ptr %1, i64 %i.ee
  %11 = add nuw nsw i64 %i.bf, 4
  %12 = mul nsw i64 %i.az, -4                     ; 3 uses
  %scevgep3218 = getelementptr i8, ptr %1, i64 1
  %i.ef = add nsw i64 %i.bf, -4
  %i.eg = sub nsw i64 4, %i.bf                    ; 2 uses
  %scevgep3224 = getelementptr i8, ptr %1, i64 %12
  %i.eh = sub nsw i64 1, %i.bf
  %scevgep3226 = getelementptr i8, ptr %1, i64 %i.eh
  %scevgep3228 = getelementptr i8, ptr %1, i64 %i.eg
  %i.ei = sub nsw i64 5, %i.bf
  %scevgep3230 = getelementptr i8, ptr %1, i64 %i.ei
  %13 = add nsw i64 %i.bf, -4
  %scevgep3255 = getelementptr i8, ptr %1, i64 -4
  %invariant.op4634 = sub i64 4, %i.bf
  %invariant.op4635 = sub i64 -4, %i.bf
  %invariant.op4637 = sub i64 -4, %i.bf
  %invariant.op = sub i64 -4, %i.bf
  %invariant.op4639 = sub i64 -4, %i.bf
  %invariant.op4632 = sub i64 -4, %i.bf
  %invariant.op4641 = sub i64 4, %i.bf
  %invariant.op4633 = sub i64 4, %i.bf
  br label %.lr.ph867

.lr.ph:                                           ; preds = %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, %.loopexit168
  %.sroa.08.0863 = phi i64 [ %i.ej, %.loopexit168 ], [ 1, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit ] ; 3 uses
  %i.ej = add nuw nsw i64 %.sroa.08.0863, 1       ; 2 uses
  %i.ek = mul nuw nsw i64 %i.bf, %.sroa.08.0863   ; 6 uses
  %i.el = add nsw i64 %.sroa.08.0863, -1
  %i.em = mul nuw nsw i64 %i.bf, %i.el            ; 4 uses
  %i.en = icmp samesign ult i64 %i.ek, %2
  br i1 %i.en, label %bb.jk, label %bb.jj

..loopexit_crit_edge:                             ; preds = %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit
  %exitcond1577.not = icmp eq i64 %i.eo, %i.ba
  br i1 %exitcond1577.not, label %._crit_edge.split, label %.lr.ph867

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_1.exit, %.lr.ph869
  store i8 -1, ptr %0, align 8
  ret void

.lr.ph867:                                        ; preds = %.lr.ph867.preheader, %..loopexit_crit_edge
  %.sroa.012.0868 = phi i64 [ %i.eo, %..loopexit_crit_edge ], [ 1, %.lr.ph867.preheader ] ; 3 uses
  %i.eo = add nuw nsw i64 %.sroa.012.0868, 1      ; 2 uses
  %i.ep = lshr i64 %.sroa.012.0868, %i.bo
  %i.eq = mul nuw nsw i64 %i.ep, %.sroa.5.0.extract.trunc.i
  %i.er = mul nuw nsw i64 %.sroa.012.0868, %i.az  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph867, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit
  %.sroa.014.0866 = phi i64 [ 0, %.lr.ph867 ], [ %i.es, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit ] ; 3 uses
  %i.es = add nuw nsw i64 %.sroa.014.0866, 1      ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.014.0866, %i.eq
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = or disjoint i64 %i.eu, 1                ; 3 uses
  %i.ew = icmp samesign ult i64 %i.ev, %7
  br i1 %i.ew, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 %i.ev
  %i.ey = load i8, ptr %i.ex, align 1, !noundef !26
  %i.ez = shl i64 %.sroa.014.0866, %i.bo
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.ez, i64 1) ; 14 uses
  %i.fa = add i64 %..i, %i.er                     ; 2 uses
  %i.fb = shl i64 %i.fa, 2                        ; 161 uses
  %i.fc = shl i64 %i.es, %i.bo
  %..i28 = call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 range(i64 0, 65536) %i.az, i64 %i.fc) ; 14 uses
  %i.fd = add nuw i64 %..i28, %i.er
  %i.fe = shl i64 %i.fd, 2                        ; 53 uses
  switch i8 %i.ey, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit [
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
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ev, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit: ; preds = %bb.dq, %bb.dk, %bb.bn, %bb.z, %bb.v, %bb.r, %bb.n, %.lr.ph.i30, %.preheader.split.i78, %.preheader.split.i73, %.preheader.split.i56, %.preheader.split.i48, %.preheader.split.i43, %.preheader.split.i38, %.preheader.split.i32, %.split.i, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_13.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_12.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_11.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit, %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit, %bb.g
  %exitcond1576.not = icmp eq i64 %i.es, %.sroa.5.0.extract.trunc.i
  br i1 %exitcond1576.not, label %..loopexit_crit_edge, label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %.not.i29 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i29, label %bb.j, label %.split.i, !prof !4

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #14, !noalias !33
  unreachable

.split.i:                                         ; preds = %bb.i
  %i.ff = or disjoint i64 %i.fb, 3                ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fe
  br i1 %i.fg, label %.lr.ph.i30, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i30:                                       ; preds = %.split.i, %.lr.ph.i30
  %.sroa.0.06.i = phi i64 [ %i.fk, %.lr.ph.i30 ], [ %i.ff, %.split.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.06.i ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !33, !noundef !26
  %i.fj = add i8 %i.fi, -1
  store i8 %i.fj, ptr %i.fh, align 1, !alias.scope !33
  %i.fk = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fe
  br i1 %i.fl, label %.lr.ph.i30, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %.not.i31 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i31, label %bb.l, label %.preheader.split.i32, !prof !4

.preheader.split.i32:                             ; preds = %bb.k
  %i.fm = icmp ult i64 %i.fb, %i.fe
  br i1 %i.fm, label %.lr.ph.i33.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i33.preheader:                             ; preds = %.preheader.split.i32
  %i.fn = shl nuw nsw i64 %..i28, 2
  %i.fo = shl i64 %..i, 2
  %i.fp = xor i64 %i.fo, -1
  %i.fq = add i64 %i.fn, %i.fp
  %i.fr = add i64 %i.fb, -4
  %umax.a = call i64 @llvm.umax.i64(i64 %2, i64 %i.fr)
  %i.fs = add i64 %umax.a, 4
  %i.ft = sub i64 %i.fs, %i.fb
  %umin.a = call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.ft)
  %i.fu = add i64 %umin.a, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.fu, 5
  br i1 %min.iters.check, label %.lr.ph.i33.preheader3264, label %vector.ph3058

.lr.ph.i33.preheader3264:                         ; preds = %vector.body3060, %.lr.ph.i33.preheader
  %.sroa.0.09.i34.ph = phi i64 [ %i.fb, %.lr.ph.i33.preheader ], [ %i.fy, %vector.body3060 ]
  br label %.lr.ph.i33

vector.ph3058:                                    ; preds = %.lr.ph.i33.preheader
  %i.fv = and i64 %i.fu, 3                        ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = select i1 %i.fw, i64 4, i64 %i.fv
  %n.vec3059 = sub i64 %i.fu, %i.fx               ; 2 uses
  %i.fy = add i64 %i.fb, %n.vec3059
  %scevgep3256 = getelementptr i8, ptr %scevgep3255, i64 %i.fb
  %load_initial = load <4 x i8>, ptr %scevgep3256, align 1
  %i.fz = getelementptr i8, ptr %1, i64 %i.fb
  br label %vector.body3060

vector.body3060:                                  ; preds = %vector.body3060, %vector.ph3058
  %store_forwarded = phi <4 x i8> [ %load_initial, %vector.ph3058 ], [ %i.gb, %vector.body3060 ]
  %index3061 = phi i64 [ 0, %vector.ph3058 ], [ %index.next3064, %vector.body3060 ] ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 %index3061 ; 2 uses
  %wide.load3062 = load <4 x i8>, ptr %i.ga, align 1, !alias.scope !36
  %i.gb = add <4 x i8> %store_forwarded, %wide.load3062 ; 2 uses
  store <4 x i8> %i.gb, ptr %i.ga, align 1, !alias.scope !36
  %index.next3064 = add nuw i64 %index3061, 4     ; 2 uses
  %i.gc = icmp eq i64 %index.next3064, %n.vec3059
  br i1 %i.gc, label %.lr.ph.i33.preheader3264, label %vector.body3060, !llvm.loop !39

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #14, !noalias !36
  unreachable

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader3264, %bb.n
  %.sroa.0.09.i34 = phi i64 [ %i.gk, %bb.n ], [ %.sroa.0.09.i34.ph, %.lr.ph.i33.preheader3264 ] ; 3 uses
  %i.gd = add nsw i64 %.sroa.0.09.i34, -4         ; 3 uses
  %i.ge = icmp ult i64 %i.gd, %2
  br i1 %i.ge, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i33
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gd, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #14, !noalias !36
  unreachable

bb.n:                                             ; preds = %.lr.ph.i33
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i34 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !36, !noundef !26
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 %i.gd
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !36, !noundef !26
  %i.gj = add i8 %i.gi, %i.gg
  store i8 %i.gj, ptr %i.gf, align 1, !alias.scope !36
  %i.gk = add i64 %.sroa.0.09.i34, 1              ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.gk, %i.fe
  br i1 %exitcond.not.i35, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i33, !llvm.loop !40

bb.o:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %.not.i37 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i37, label %bb.p, label %.preheader.split.i38, !prof !4

.preheader.split.i38:                             ; preds = %bb.o
  %i.gl = icmp ult i64 %i.fb, %i.fe
  br i1 %i.gl, label %.lr.ph.i39.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i39.preheader:                             ; preds = %.preheader.split.i38
  %i.gm = shl nuw nsw i64 %..i28, 2
  %i.gn = shl i64 %..i, 2
  %i.go = xor i64 %i.gn, -1
  %i.gp = add i64 %i.gm, %i.go
  %14 = add i64 %i.dp, %i.fb
  %umax3074 = call i64 @llvm.umax.i64(i64 %2, i64 %14)
  %i.gq = add i64 %i.bf, %umax3074
  %i.gr = sub i64 %i.gq, %i.fb
  %umin3075 = call i64 @llvm.umin.i64(i64 %i.gp, i64 %i.gr)
  %i.gs = add i64 %umin3075, 1                    ; 3 uses
  %min.iters.check3077 = icmp ult i64 %i.gs, 17
  br i1 %min.iters.check3077, label %.lr.ph.i39.preheader3266, label %vector.memcheck

.lr.ph.i39.preheader3266:                         ; preds = %vector.body3080, %vector.memcheck, %.lr.ph.i39.preheader
  %.sroa.0.09.i40.ph = phi i64 [ %i.fb, %vector.memcheck ], [ %i.fb, %.lr.ph.i39.preheader ], [ %i.he, %vector.body3080 ]
  br label %.lr.ph.i39

vector.memcheck:                                  ; preds = %.lr.ph.i39.preheader
  %scevgep = getelementptr i8, ptr %1, i64 %i.fb
  %i.gt = shl nuw nsw i64 %..i28, 2
  %i.gu = shl i64 %..i, 2
  %i.gv = xor i64 %i.gu, -1
  %i.gw = add i64 %i.gt, %i.gv
  %i.gx = add i64 %i.dp, %i.fb
  %umax3067 = call i64 @llvm.umax.i64(i64 %2, i64 %i.gx)
  %i.gy = add i64 %i.bf, %umax3067
  %i.gz = sub i64 %i.gy, %i.fb
  %umin3068 = call i64 @llvm.umin.i64(i64 %i.gw, i64 %i.gz)
  %i.ha = add i64 %umin3068, %i.fb                ; 2 uses
  %scevgep3069.a = getelementptr i8, ptr %scevgep3066, i64 %i.ha
  %scevgep3071.a = getelementptr i8, ptr %scevgep3070.a, i64 %i.fb
  %scevgep3073 = getelementptr i8, ptr %scevgep3072, i64 %i.ha
  %bound0 = icmp ult ptr %scevgep, %scevgep3073
  %bound1 = icmp ult ptr %scevgep3071.a, %scevgep3069.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i39.preheader3266, label %vector.ph3078

vector.ph3078:                                    ; preds = %vector.memcheck
  %i.hb = and i64 %i.gs, 15                       ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 0
  %i.hd = select i1 %i.hc, i64 16, i64 %i.hb
  %n.vec3079 = sub i64 %i.gs, %i.hd               ; 2 uses
  %i.he = add i64 %i.fb, %n.vec3079
  br label %vector.body3080

vector.body3080:                                  ; preds = %vector.body3080, %vector.ph3078
  %index3081 = phi i64 [ 0, %vector.ph3078 ], [ %index.next3084, %vector.body3080 ] ; 2 uses
  %i.hf = add i64 %i.fb, %index3081               ; 2 uses
  %i.hg = sub nsw i64 %i.hf, %i.bf
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 %i.hf ; 2 uses
  %wide.load3082 = load <16 x i8>, ptr %i.hh, align 1, !alias.scope !44, !noalias !47
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 %i.hg
  %wide.load3083 = load <16 x i8>, ptr %i.hi, align 1, !alias.scope !49
  %i.hj = add <16 x i8> %wide.load3083, %wide.load3082
  store <16 x i8> %i.hj, ptr %i.hh, align 1, !alias.scope !44, !noalias !47
  %index.next3084 = add nuw i64 %index3081, 16    ; 2 uses
  %i.hk = icmp eq i64 %index.next3084, %n.vec3079
  br i1 %i.hk, label %.lr.ph.i39.preheader3266, label %vector.body3080, !llvm.loop !50

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #14, !noalias !41
  unreachable

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader3266, %bb.r
  %.sroa.0.09.i40 = phi i64 [ %i.hs, %bb.r ], [ %.sroa.0.09.i40.ph, %.lr.ph.i39.preheader3266 ] ; 3 uses
  %i.hl = sub nsw i64 %.sroa.0.09.i40, %i.bf      ; 3 uses
  %i.hm = icmp ult i64 %i.hl, %2
  br i1 %i.hm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i39
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.hl, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #14, !noalias !41
  unreachable

bb.r:                                             ; preds = %.lr.ph.i39
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i40 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !41, !noundef !26
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 %i.hl
  %i.hq = load i8, ptr %i.hp, align 1, !alias.scope !41, !noundef !26
  %i.hr = add i8 %i.hq, %i.ho
  store i8 %i.hr, ptr %i.hn, align 1, !alias.scope !41
  %i.hs = add i64 %.sroa.0.09.i40, 1              ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.hs, %i.fe
  br i1 %exitcond.not.i41, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i39, !llvm.loop !51

bb.s:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %.not.i42 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i42, label %bb.t, label %.preheader.split.i43, !prof !4

.preheader.split.i43:                             ; preds = %bb.s
  %i.ht = icmp ult i64 %i.fb, %i.fe
  br i1 %i.ht, label %.lr.ph.i44.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i44.preheader:                             ; preds = %.preheader.split.i43
  %i.hu = shl nuw nsw i64 %..i28, 2
  %i.hv = shl i64 %..i, 2
  %i.hw = xor i64 %i.hv, -1
  %i.hx = add i64 %i.hu, %i.hw
  %.reass4642 = add i64 %i.fb, %invariant.op4641
  %umax3100 = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4642)
  %i.hy = add i64 %8, %umax3100
  %i.hz = sub i64 %i.hy, %i.fb
  %umin3101 = call i64 @llvm.umin.i64(i64 %i.hx, i64 %i.hz)
  %i.ia = add i64 %umin3101, 1                    ; 3 uses
  %min.iters.check3103 = icmp ult i64 %i.ia, 17
  br i1 %min.iters.check3103, label %.lr.ph.i44.preheader3268, label %vector.memcheck3087

.lr.ph.i44.preheader3268:                         ; preds = %vector.body3106, %vector.memcheck3087, %.lr.ph.i44.preheader
  %.sroa.0.09.i45.ph = phi i64 [ %i.fb, %vector.memcheck3087 ], [ %i.fb, %.lr.ph.i44.preheader ], [ %i.im, %vector.body3106 ]
  br label %.lr.ph.i44

vector.memcheck3087:                              ; preds = %.lr.ph.i44.preheader
  %scevgep3088.a = getelementptr i8, ptr %1, i64 %i.fb
  %i.ib = shl nuw nsw i64 %..i28, 2
  %i.ic = shl i64 %..i, 2
  %i.id = xor i64 %i.ic, -1
  %i.ie = add i64 %i.ib, %i.id
  %i.if = add i64 %i.ds, %i.fb
  %umax3090 = call i64 @llvm.umax.i64(i64 %2, i64 %i.if)
  %i.ig = add i64 %i.dr, %umax3090
  %i.ih = sub i64 %i.ig, %i.fb
  %umin3091 = call i64 @llvm.umin.i64(i64 %i.ie, i64 %i.ih)
  %i.ii = add i64 %umin3091, %i.fb                ; 2 uses
  %scevgep3092.a = getelementptr i8, ptr %scevgep3089.a, i64 %i.ii
  %scevgep3094 = getelementptr i8, ptr %scevgep3093, i64 %i.fb
  %scevgep3096 = getelementptr i8, ptr %scevgep3095, i64 %i.ii
  %bound03097 = icmp ult ptr %scevgep3088.a, %scevgep3096
  %bound13098 = icmp ult ptr %scevgep3094, %scevgep3092.a
  %found.conflict3099 = and i1 %bound03097, %bound13098
  br i1 %found.conflict3099, label %.lr.ph.i44.preheader3268, label %vector.ph3104

vector.ph3104:                                    ; preds = %vector.memcheck3087
  %i.ij = and i64 %i.ia, 15                       ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 0
  %i.il = select i1 %i.ik, i64 16, i64 %i.ij
  %n.vec3105 = sub i64 %i.ia, %i.il               ; 2 uses
  %i.im = add i64 %i.fb, %n.vec3105
  br label %vector.body3106

vector.body3106:                                  ; preds = %vector.body3106, %vector.ph3104
  %index3107 = phi i64 [ 0, %vector.ph3104 ], [ %index.next3110, %vector.body3106 ] ; 2 uses
  %i.in = add i64 %i.fb, %index3107               ; 2 uses
  %i.io = sub i64 %i.in, %i.bf
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 %i.in ; 2 uses
  %wide.load3108 = load <16 x i8>, ptr %i.ip, align 1, !alias.scope !55, !noalias !58
  %i.iq = getelementptr i8, ptr %1, i64 %i.io
  %i.ir = getelementptr i8, ptr %i.iq, i64 4
  %wide.load3109 = load <16 x i8>, ptr %i.ir, align 1, !alias.scope !60
  %i.is = add <16 x i8> %wide.load3109, %wide.load3108
  store <16 x i8> %i.is, ptr %i.ip, align 1, !alias.scope !55, !noalias !58
  %index.next3110 = add nuw i64 %index3107, 16    ; 2 uses
  %i.it = icmp eq i64 %index.next3110, %n.vec3105
  br i1 %i.it, label %.lr.ph.i44.preheader3268, label %vector.body3106, !llvm.loop !61

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #14, !noalias !52
  unreachable

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader3268, %bb.v
  %.sroa.0.09.i45 = phi i64 [ %i.ja, %bb.v ], [ %.sroa.0.09.i45.ph, %.lr.ph.i44.preheader3268 ] ; 3 uses
  %.reass.reass.i.reass.reass.reass = add i64 %.sroa.0.09.i45, %invariant.op4633 ; 3 uses
  %i.iu = icmp ult i64 %.reass.reass.i.reass.reass.reass, %2
  br i1 %i.iu, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i44
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14, !noalias !52
  unreachable

bb.v:                                             ; preds = %.lr.ph.i44
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i45 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !alias.scope !52, !noundef !26
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i.reass.reass.reass
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !52, !noundef !26
  %i.iz = add i8 %i.iy, %i.iw
  store i8 %i.iz, ptr %i.iv, align 1, !alias.scope !52
  %i.ja = add i64 %.sroa.0.09.i45, 1              ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %i.ja, %i.fe
  br i1 %exitcond.not.i46, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i44, !llvm.loop !62

bb.w:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.not.i47 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i47, label %bb.x, label %.preheader.split.i48, !prof !4

.preheader.split.i48:                             ; preds = %bb.w
  %i.jb = icmp ult i64 %i.fb, %i.fe
  br i1 %i.jb, label %.lr.ph.i49.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i49.preheader:                             ; preds = %.preheader.split.i48
  %i.jc = shl nuw nsw i64 %..i28, 2
  %i.jd = shl i64 %..i, 2
  %i.je = xor i64 %i.jd, -1
  %i.jf = add i64 %i.jc, %i.je
  %.reass4640 = add i64 %i.fb, %invariant.op4639
  %umax3126 = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4640)
  %i.jg = add i64 %9, %umax3126
  %i.jh = sub i64 %i.jg, %i.fb
  %umin3127 = call i64 @llvm.umin.i64(i64 %i.jf, i64 %i.jh)
  %i.ji = add i64 %umin3127, 1                    ; 3 uses
  %min.iters.check3129 = icmp ult i64 %i.ji, 17
  br i1 %min.iters.check3129, label %.lr.ph.i49.preheader3270, label %vector.memcheck3113

.lr.ph.i49.preheader3270:                         ; preds = %vector.body3132, %vector.memcheck3113, %.lr.ph.i49.preheader
  %.sroa.0.09.i50.ph = phi i64 [ %i.fb, %vector.memcheck3113 ], [ %i.fb, %.lr.ph.i49.preheader ], [ %i.ju, %vector.body3132 ]
  br label %.lr.ph.i49

vector.memcheck3113:                              ; preds = %.lr.ph.i49.preheader
  %scevgep3114.a = getelementptr i8, ptr %1, i64 %i.fb
  %i.jj = shl nuw nsw i64 %..i28, 2
  %i.jk = shl i64 %..i, 2
  %i.jl = xor i64 %i.jk, -1
  %i.jm = add i64 %i.jj, %i.jl
  %i.jn = add i64 %i.dv, %i.fb
  %umax3116 = call i64 @llvm.umax.i64(i64 %2, i64 %i.jn)
  %i.jo = add i64 %i.du, %umax3116
  %i.jp = sub i64 %i.jo, %i.fb
  %umin3117 = call i64 @llvm.umin.i64(i64 %i.jm, i64 %i.jp)
  %i.jq = add i64 %umin3117, %i.fb                ; 2 uses
  %scevgep3118 = getelementptr i8, ptr %scevgep3115.a, i64 %i.jq
  %scevgep3120 = getelementptr i8, ptr %scevgep3119, i64 %i.fb
  %scevgep3122 = getelementptr i8, ptr %scevgep3121, i64 %i.jq
  %bound03123 = icmp ult ptr %scevgep3114.a, %scevgep3122
  %bound13124 = icmp ult ptr %scevgep3120, %scevgep3118
  %found.conflict3125 = and i1 %bound03123, %bound13124
  br i1 %found.conflict3125, label %.lr.ph.i49.preheader3270, label %vector.ph3130

vector.ph3130:                                    ; preds = %vector.memcheck3113
  %i.jr = and i64 %i.ji, 15                       ; 2 uses
  %i.js = icmp eq i64 %i.jr, 0
  %i.jt = select i1 %i.js, i64 16, i64 %i.jr
  %n.vec3131 = sub i64 %i.ji, %i.jt               ; 2 uses
  %i.ju = add i64 %i.fb, %n.vec3131
  br label %vector.body3132

vector.body3132:                                  ; preds = %vector.body3132, %vector.ph3130
  %index3133 = phi i64 [ 0, %vector.ph3130 ], [ %index.next3136, %vector.body3132 ] ; 2 uses
  %i.jv = add i64 %i.fb, %index3133               ; 2 uses
  %i.jw = sub i64 %i.jv, %i.bf
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %i.jv ; 2 uses
  %wide.load3134 = load <16 x i8>, ptr %i.jx, align 1, !alias.scope !66, !noalias !69
  %i.jy = getelementptr i8, ptr %1, i64 %i.jw
  %i.jz = getelementptr i8, ptr %i.jy, i64 -4
  %wide.load3135 = load <16 x i8>, ptr %i.jz, align 1, !alias.scope !71
  %i.ka = add <16 x i8> %wide.load3135, %wide.load3134
  store <16 x i8> %i.ka, ptr %i.jx, align 1, !alias.scope !66, !noalias !69
  %index.next3136 = add nuw i64 %index3133, 16    ; 2 uses
  %i.kb = icmp eq i64 %index.next3136, %n.vec3131
  br i1 %i.kb, label %.lr.ph.i49.preheader3270, label %vector.body3132, !llvm.loop !72

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #14, !noalias !63
  unreachable

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader3270, %bb.z
  %.sroa.0.09.i50 = phi i64 [ %i.ki, %bb.z ], [ %.sroa.0.09.i50.ph, %.lr.ph.i49.preheader3270 ] ; 3 uses
  %.reass.reass.i52.reass.reass.reass = add i64 %.sroa.0.09.i50, %invariant.op4632 ; 3 uses
  %i.kc = icmp ult i64 %.reass.reass.i52.reass.reass.reass, %2
  br i1 %i.kc, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i49
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i52.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #14, !noalias !63
  unreachable

bb.z:                                             ; preds = %.lr.ph.i49
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i50 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !63, !noundef !26
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i52.reass.reass.reass
  %i.kg = load i8, ptr %i.kf, align 1, !alias.scope !63, !noundef !26
  %i.kh = add i8 %i.kg, %i.ke
  store i8 %i.kh, ptr %i.kd, align 1, !alias.scope !63
  %i.ki = add i64 %.sroa.0.09.i50, 1              ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.ki, %i.fe
  br i1 %exitcond.not.i53, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i49, !llvm.loop !73

bb.aa:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %.not.i54 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i54, label %bb.ad, label %bb.ab, !prof !77

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i = icmp ugt i64 %i.fb, %i.fe
  br i1 %.not.i.i, label %bb.ac, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #14, !noalias !78
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ab
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb ; 3 uses
  %i.kk = sub nuw nsw i64 %i.fe, %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !74
  %i.kl = add nsw i64 %i.fb, -4                   ; 2 uses
  %i.km = icmp eq i64 %i.fb, 0
  br i1 %i.km, label %bb.ae, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ad:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fe, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #14, !noalias !74
  unreachable

bb.ae:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kl, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #14, !noalias !74
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 %i.kl
  %.sroa.01.0.copyload.i = load i32, ptr %i.kn, align 1, !alias.scope !74
  store i32 %.sroa.01.0.copyload.i, ptr %i.an, align 4, !noalias !74
  %i.ko = sub nsw i64 %i.fb, %i.bf                ; 3 uses
  %i.kp = add i64 %i.ko, 4                        ; 4 uses
  %i.kq = icmp ugt i64 %i.kp, %i.fb
  br i1 %i.kq, label %bb.ag, label %bb.af, !prof !4

bb.af:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.kr = icmp samesign ugt i64 %i.bf, %i.fb
  br i1 %i.kr, label %bb.ai, label %bb.ah, !prof !4

bb.ag:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kp, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #14, !noalias !74
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %i.kp
  %i.kt = sub nuw nsw i64 %i.fb, %i.kp
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 %i.ko
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !82
  store ptr %i.kv, ptr %i.al, align 8, !noalias !87
  store i64 0, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !87
  store ptr %i.kj, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !87
  store i64 %i.kk, ptr %.sroa.630.0..sroa_idx.i, align 8, !noalias !87
  store i64 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !82
  store ptr %i.ks, ptr %i.ak, align 8, !alias.scope !88, !noalias !92
  store i64 %i.kt, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !88, !noalias !92
  store ptr %i.kj, ptr %.sroa.533.0..sroa_idx.i, align 8, !alias.scope !88, !noalias !92
  store i64 0, ptr %.sroa.634.0..sroa_idx.i, align 8, !alias.scope !88, !noalias !92
  store i64 4, ptr %.sroa.735.0..sroa_idx.i, align 8, !alias.scope !88, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !93
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ak), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !93
  store ptr %i.ku, ptr %i.ai, align 8, !alias.scope !98, !noalias !102
  store i64 %i.bf, ptr %.sroa.437.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !102
  store ptr %i.kj, ptr %.sroa.538.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !102
  store i64 0, ptr %.sroa.639.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !102
  store i64 4, ptr %.sroa.740.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !74
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !93
  %i.kw = load i64, ptr %i.dh, align 8, !alias.scope !103, !noalias !106, !noundef !26 ; 2 uses
  %i.kx = load i64, ptr %i.di, align 8, !alias.scope !103, !noalias !106, !noundef !26
  %i.ky = icmp ult i64 %i.kw, %i.kx
  br i1 %i.ky, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ko, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #14, !noalias !74
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ah, %bb.bg
  %i.kz = phi i64 [ %i.ny, %bb.bg ], [ %i.kw, %bb.ah ] ; 3 uses
  %i.la = add nuw i64 %i.kz, 1
  store i64 %i.la, ptr %i.dh, align 8, !alias.scope !103, !noalias !106
  %i.lb = load i64, ptr %i.dj, align 8, !alias.scope !108, !noalias !113, !noundef !26
  %i.lc = add i64 %i.lb, %i.kz                    ; 2 uses
  %i.ld = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.am, i64 noundef %i.lc), !noalias !116 ; 2 uses
  %i.le = extractvalue { ptr, i64 } %i.ld, 0      ; 6 uses
  %i.lf = extractvalue { ptr, i64 } %i.ld, 1      ; 5 uses
  %i.lg = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dk, i64 noundef %i.lc), !noalias !116 ; 2 uses
  %i.lh = extractvalue { ptr, i64 } %i.lg, 0      ; 5 uses
  %i.li = extractvalue { ptr, i64 } %i.lg, 1      ; 4 uses
  %i.lj = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, i64 noundef %i.kz), !noalias !117 ; 2 uses
  %i.lk = extractvalue { ptr, i64 } %i.lj, 0      ; 5 uses
  %i.ll = extractvalue { ptr, i64 } %i.lj, 1      ; 4 uses
  %.not18.i = icmp eq ptr %i.le, null
  br i1 %.not18.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lh) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lk) ]
  %.not19.i = icmp eq i64 %i.lf, 0
  br i1 %.not19.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lm = load i8, ptr %i.le, align 1, !noundef !26
  %.not20.i = icmp eq i64 %i.li, 0
  br i1 %.not20.i, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #14
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.not21.i = icmp eq i64 %i.ll, 0
  br i1 %.not21.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #14
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ln = load i8, ptr %i.an, align 4, !noalias !74, !noundef !26 ; 2 uses
  %i.lo = load i8, ptr %i.lh, align 1, !noundef !26 ; 2 uses
  %i.lp = and i8 %i.lo, %i.ln
  %i.lq = xor i8 %i.lo, %i.ln
  %i.lr = lshr i8 %i.lq, 1
  %i.ls = add i8 %i.lr, %i.lp                     ; 2 uses
  %i.lt = load i8, ptr %i.lk, align 1, !noundef !26 ; 2 uses
  %i.lu = and i8 %i.ls, %i.lt
  %i.lv = xor i8 %i.ls, %i.lt
  %i.lw = lshr i8 %i.lv, 1
  %i.lx = add i8 %i.lu, %i.lm
  %i.ly = add i8 %i.lx, %i.lw
  %.not22.i = icmp eq i64 %i.lf, 1
  br i1 %.not22.i, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #14
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.lz = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !noundef !26
  %.not23.i = icmp eq i64 %i.li, 1
  br i1 %.not23.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #14
  unreachable

bb.as:                                            ; preds = %bb.aq
  %.not24.i = icmp eq i64 %i.ll, 1
  br i1 %.not24.i, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #14
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.mb = load i8, ptr %i.dm, align 1, !noalias !74, !noundef !26 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !noundef !26 ; 2 uses
  %i.me = and i8 %i.md, %i.mb
  %i.mf = xor i8 %i.md, %i.mb
  %i.mg = lshr i8 %i.mf, 1
  %i.mh = add i8 %i.mg, %i.me                     ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lk, i64 1
  %i.mj = load i8, ptr %i.mi, align 1, !noundef !26 ; 2 uses
  %i.mk = and i8 %i.mh, %i.mj
  %i.ml = xor i8 %i.mh, %i.mj
  %i.mm = lshr i8 %i.ml, 1
  %i.mn = add i8 %i.mk, %i.ma
  %i.mo = add i8 %i.mn, %i.mm
  %i.mp = icmp ugt i64 %i.lf, 2
  br i1 %i.mp, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #14
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.mq = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  %i.mr = load i8, ptr %i.mq, align 1, !noundef !26
  %i.ms = icmp ugt i64 %i.li, 2
  br i1 %i.ms, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #14
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.mt = icmp ugt i64 %i.ll, 2
  br i1 %i.mt, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #14
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.mu = load i8, ptr %i.dn, align 2, !noalias !74, !noundef !26 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  %i.mw = load i8, ptr %i.mv, align 1, !noundef !26 ; 2 uses
  %i.mx = and i8 %i.mw, %i.mu
  %i.my = xor i8 %i.mw, %i.mu
  %i.mz = lshr i8 %i.my, 1
  %i.na = add i8 %i.mz, %i.mx                     ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %i.nc = load i8, ptr %i.nb, align 1, !noundef !26 ; 2 uses
  %i.nd = and i8 %i.na, %i.nc
  %i.ne = xor i8 %i.na, %i.nc
  %i.nf = lshr i8 %i.ne, 1
  %i.ng = add i8 %i.nd, %i.mr
  %i.nh = add i8 %i.ng, %i.nf
  %.not25.i = icmp eq i64 %i.lf, 3
  br i1 %.not25.i, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #14
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ni = getelementptr inbounds nuw i8, ptr %i.le, i64 3
  %i.nj = load i8, ptr %i.ni, align 1, !noundef !26
  %.not26.i = icmp eq i64 %i.li, 3
  br i1 %.not26.i, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.ba
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #14
  unreachable

bb.be:                                            ; preds = %bb.bc
  %.not27.i = icmp eq i64 %i.ll, 3
  br i1 %.not27.i, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.nk = load i8, ptr %i.do, align 1, !noalias !74, !noundef !26 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lh, i64 3
  %i.nm = load i8, ptr %i.nl, align 1, !noundef !26 ; 2 uses
  %i.nn = and i8 %i.nm, %i.nk
  %i.no = xor i8 %i.nm, %i.nk
  %i.np = lshr i8 %i.no, 1
  %i.nq = add i8 %i.np, %i.nn                     ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.lk, i64 3
  %i.ns = load i8, ptr %i.nr, align 1, !noundef !26 ; 2 uses
  %i.nt = and i8 %i.nq, %i.ns
  %i.nu = xor i8 %i.nq, %i.ns
  %i.nv = lshr i8 %i.nu, 1
  %i.nw = add i8 %i.nt, %i.nj
  %i.nx = add i8 %i.nw, %i.nv
  store i8 %i.ly, ptr %i.an, align 4, !noalias !74
  store i8 %i.mo, ptr %i.dm, align 1, !noalias !74
  store i8 %i.nh, ptr %i.dn, align 2, !noalias !74
  store i8 %i.nx, ptr %i.do, align 1, !noalias !74
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.le, i64 noundef %i.lf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51)
  %i.ny = load i64, ptr %i.dh, align 8, !alias.scope !103, !noalias !106, !noundef !26 ; 2 uses
  %i.nz = load i64, ptr %i.di, align 8, !alias.scope !103, !noalias !106, !noundef !26
  %i.oa = icmp ult i64 %i.ny, %i.nz
  br i1 %i.oa, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.bh:                                            ; preds = %bb.be
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, %bb.bg, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !74
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.bi:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %.not.i55 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i55, label %bb.bj, label %.preheader.split.i56, !prof !4

.preheader.split.i56:                             ; preds = %bb.bi
  %i.ob = icmp ult i64 %i.fb, %i.fe
  br i1 %i.ob, label %.lr.ph.i57.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i57.preheader:                             ; preds = %.preheader.split.i56
  %i.oc = shl nuw nsw i64 %..i28, 2
  %i.od = shl i64 %..i, 2
  %i.oe = xor i64 %i.od, -1
  %i.of = add i64 %i.oc, %i.oe
  %.reass4638 = add i64 %i.fb, %invariant.op4637
  %umax3161 = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4638)
  %i.og = add i64 %10, %umax3161
  %i.oh = sub i64 %i.og, %i.fb
  %15 = add i64 %i.fb, -4
  %umax3162 = call i64 @llvm.umax.i64(i64 %2, i64 %15)
  %i.oi = add i64 %umax3162, 4
  %i.oj = sub i64 %i.oi, %i.fb
  %umin3163 = call i64 @llvm.umin.i64(i64 %i.oh, i64 %i.oj)
  %umin3164 = call i64 @llvm.umin.i64(i64 %i.of, i64 %umin3163)
  %i.ok = add i64 %umin3164, 1                    ; 3 uses
  %min.iters.check3166 = icmp ult i64 %i.ok, 9
  br i1 %min.iters.check3166, label %.lr.ph.i57.preheader3272, label %vector.memcheck3139

.lr.ph.i57.preheader3272:                         ; preds = %vector.body3169, %vector.memcheck3139, %.lr.ph.i57.preheader
  %.sroa.0.015.i.ph = phi i64 [ %i.fb, %vector.memcheck3139 ], [ %i.fb, %.lr.ph.i57.preheader ], [ %i.oz, %vector.body3169 ]
  br label %.lr.ph.i57

vector.memcheck3139:                              ; preds = %.lr.ph.i57.preheader
  %scevgep3140.a = getelementptr i8, ptr %1, i64 %i.fb ; 2 uses
  %i.ol = shl nuw nsw i64 %..i28, 2
  %i.om = shl i64 %..i, 2
  %i.on = xor i64 %i.om, -1
  %i.oo = add i64 %i.ol, %i.on
  %i.op = add i64 %i.dy, %i.fb
  %umax3142 = call i64 @llvm.umax.i64(i64 %2, i64 %i.op)
  %i.oq = add i64 %i.dx, %umax3142
  %i.or = sub i64 %i.oq, %i.fb
  %i.os = add i64 %i.fb, -4
  %umax3143 = call i64 @llvm.umax.i64(i64 %2, i64 %i.os)
  %i.ot = add i64 %umax3143, 4
  %i.ou = sub i64 %i.ot, %i.fb
  %umin3144 = call i64 @llvm.umin.i64(i64 %i.or, i64 %i.ou)
  %umin3145 = call i64 @llvm.umin.i64(i64 %i.oo, i64 %umin3144)
  %i.ov = add i64 %umin3145, %i.fb                ; 3 uses
  %scevgep3146.a = getelementptr i8, ptr %scevgep3141.a, i64 %i.ov ; 2 uses
  %scevgep3148 = getelementptr i8, ptr %scevgep3147, i64 %i.fb
  %scevgep3150 = getelementptr i8, ptr %scevgep3149, i64 %i.ov
  %scevgep3152 = getelementptr i8, ptr %scevgep3151, i64 %i.fb
  %scevgep3154 = getelementptr i8, ptr %scevgep3153, i64 %i.ov
  %bound03155 = icmp ult ptr %scevgep3140.a, %scevgep3150
  %bound13156 = icmp ult ptr %scevgep3148, %scevgep3146.a
  %found.conflict3157 = and i1 %bound03155, %bound13156
  %bound03158 = icmp ult ptr %scevgep3140.a, %scevgep3154
  %bound13159 = icmp ult ptr %scevgep3152, %scevgep3146.a
  %found.conflict3160 = and i1 %bound03158, %bound13159
  %conflict.rdx = or i1 %found.conflict3157, %found.conflict3160
  br i1 %conflict.rdx, label %.lr.ph.i57.preheader3272, label %vector.ph3167

vector.ph3167:                                    ; preds = %vector.memcheck3139
  %i.ow = and i64 %i.ok, 3                        ; 2 uses
  %i.ox = icmp eq i64 %i.ow, 0
  %i.oy = select i1 %i.ox, i64 4, i64 %i.ow
  %n.vec3168 = sub i64 %i.ok, %i.oy               ; 2 uses
  %i.oz = add i64 %i.fb, %n.vec3168
  br label %vector.body3169

vector.body3169:                                  ; preds = %vector.body3169, %vector.ph3167
  %index3170 = phi i64 [ 0, %vector.ph3167 ], [ %index.next3174, %vector.body3169 ] ; 2 uses
  %i.pa = add i64 %i.fb, %index3170               ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 %i.pa ; 2 uses
  %wide.load3171 = load <4 x i8>, ptr %i.pb, align 1, !alias.scope !121, !noalias !124
  %i.pc = sub i64 %i.pa, %i.bf
  %i.pd = getelementptr i8, ptr %1, i64 %i.pa
  %i.pe = getelementptr i8, ptr %i.pd, i64 -4
  %wide.load3172 = load <4 x i8>, ptr %i.pe, align 1, !alias.scope !127
  %i.pf = zext <4 x i8> %wide.load3172 to <4 x i16>
  %i.pg = getelementptr i8, ptr %1, i64 %i.pc
  %i.ph = getelementptr i8, ptr %i.pg, i64 -4
  %wide.load3173 = load <4 x i8>, ptr %i.ph, align 1, !alias.scope !128
  %i.pi = zext <4 x i8> %wide.load3173 to <4 x i16>
  %i.pj = add nuw nsw <4 x i16> %i.pi, %i.pf
  %i.pk = lshr <4 x i16> %i.pj, splat (i16 1)
  %i.pl = trunc nuw <4 x i16> %i.pk to <4 x i8>
  %i.pm = add <4 x i8> %wide.load3171, %i.pl
  store <4 x i8> %i.pm, ptr %i.pb, align 1, !alias.scope !121, !noalias !124
  %index.next3174 = add nuw i64 %index3170, 4     ; 2 uses
  %i.pn = icmp eq i64 %index.next3174, %n.vec3168
  br i1 %i.pn, label %.lr.ph.i57.preheader3272, label %vector.body3169, !llvm.loop !129

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #14, !noalias !118
  unreachable

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader3272, %bb.bn
  %.sroa.0.015.i = phi i64 [ %i.qd, %bb.bn ], [ %.sroa.0.015.i.ph, %.lr.ph.i57.preheader3272 ] ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.015.i ; 2 uses
  %i.pp = load i8, ptr %i.po, align 1, !alias.scope !118, !noundef !26
  %i.pq = add nsw i64 %.sroa.0.015.i, -4          ; 3 uses
  %i.pr = icmp ult i64 %i.pq, %2
  br i1 %i.pr, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i57
  %.reass.reass.i59.reass.reass.reass = add i64 %.sroa.0.015.i, %invariant.op ; 3 uses
  %i.ps = icmp ult i64 %.reass.reass.i59.reass.reass.reass, %2
  br i1 %i.ps, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i57
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.pq, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #14, !noalias !118
  unreachable

bb.bm:                                            ; preds = %bb.bk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i59.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #14, !noalias !118
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 %i.pq
  %i.pu = load i8, ptr %i.pt, align 1, !alias.scope !118, !noundef !26
  %i.pv = zext i8 %i.pu to i16
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i59.reass.reass.reass
  %i.px = load i8, ptr %i.pw, align 1, !alias.scope !118, !noundef !26
  %i.py = zext i8 %i.px to i16
  %i.pz = add nuw nsw i16 %i.py, %i.pv
  %i.qa = lshr i16 %i.pz, 1
  %i.qb = trunc nuw i16 %i.qa to i8
  %i.qc = add i8 %i.pp, %i.qb
  store i8 %i.qc, ptr %i.po, align 1, !alias.scope !118
  %i.qd = add i64 %.sroa.0.015.i, 1               ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %i.qd, %i.fe
  br i1 %exitcond.not.i60, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i57, !llvm.loop !130

bb.bo:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.not.i61 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i61, label %bb.br, label %bb.bp, !prof !77

bb.bp:                                            ; preds = %bb.bo
  %.not.i.i62 = icmp ugt i64 %i.fb, %i.fe
  br i1 %.not.i.i62, label %bb.bq, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63, !prof !4

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !noalias !134
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63: ; preds = %bb.bp
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb ; 2 uses
  %i.qf = sub nuw nsw i64 %i.fe, %i.fb            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !131
  %i.qg = add nsw i64 %i.fb, -4                   ; 2 uses
  %i.qh = icmp eq i64 %i.fb, 0
  br i1 %i.qh, label %bb.bs, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64, !prof !4

bb.br:                                            ; preds = %bb.bo
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fe, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14
  unreachable

bb.bs:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.qg, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i63
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 %i.qg
  %.sroa.02.0.copyload.i = load i32, ptr %i.qi, align 1, !alias.scope !131
  store i32 %.sroa.02.0.copyload.i, ptr %i.ah, align 4, !noalias !131
  %i.qj = sub nsw i64 %i.fb, %i.bf                ; 2 uses
  %i.qk = icmp samesign ugt i64 %i.bf, %i.fb
  br i1 %i.qk, label %bb.bu, label %bb.bt, !prof !4

bb.bt:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64
  %.not22.i65 = icmp samesign ugt i64 %i.qf, %i.bf
  br i1 %.not22.i65, label %bb.bv, label %bb.bw, !prof !77

bb.bu:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i64
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.qj, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14
  unreachable

bb.bv:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.qf, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #14
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 %i.qj ; 2 uses
  %i.qm = and i64 %i.qf, -64                      ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qm ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qm ; 2 uses
  %.not.i.i.i97.i = icmp eq i64 %i.qm, 0
  br i1 %.not.i.i.i97.i, label %._crit_edge.i, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.bw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i
  %.sroa.0.0101.i = phi ptr [ %i.qr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.ql, %bb.bw ] ; 2 uses
  %.sroa.5.0100.i = phi i64 [ %i.qq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.qm, %bb.bw ]
  %.sroa.6.099.i = phi ptr [ %i.qp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i ], [ %i.qe, %bb.bw ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.6.099.i, i64 64 ; 2 uses
  %i.qq = add i64 %.sroa.5.0100.i, -64            ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.0101.i, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !138
  store ptr %i.qp, ptr %i.ad, align 8, !noalias !143
  store i64 0, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !143
  store ptr %.sroa.6.099.i, ptr %.sroa.5.0..sroa_idx.i67, align 8, !noalias !143
  store i64 64, ptr %.sroa.652.0..sroa_idx.i, align 8, !noalias !143
  store i64 4, ptr %.sroa.753.0..sroa_idx.i, align 8, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !138
  store ptr %.sroa.0.0101.i, ptr %i.ac, align 8, !alias.scope !144, !noalias !148
  store i64 64, ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !148
  store ptr %i.qr, ptr %.sroa.556.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !148
  store i64 0, ptr %.sroa.657.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !148
  store i64 4, ptr %.sroa.758.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !148
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ac), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 96, i1 false), !noalias !131
  %i.qs = load i64, ptr %i.cy, align 8, !alias.scope !150, !noalias !153, !noundef !26 ; 2 uses
  %i.qt = load i64, ptr %i.cz, align 8, !alias.scope !150, !noalias !153, !noundef !26
  %i.qu = icmp ult i64 %i.qs, %i.qt
  br i1 %i.qu, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i

._crit_edge.i:                                    ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i, %bb.bw
  %i.qv = and i64 %i.qf, 60                       ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !155
  store ptr %i.qw, ptr %i.ab, align 8, !noalias !160
  store i64 0, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !160
  store ptr %i.qn, ptr %.sroa.565.0..sroa_idx.i, align 8, !noalias !160
  store i64 %i.qv, ptr %.sroa.666.0..sroa_idx.i, align 8, !noalias !160
  store i64 4, ptr %.sroa.767.0..sroa_idx.i, align 8, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !155
  store ptr %i.qo, ptr %i.aa, align 8, !alias.scope !161, !noalias !165
  store i64 %i.qv, ptr %.sroa.469.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !165
  store ptr %i.qx, ptr %.sroa.570.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !165
  store i64 0, ptr %.sroa.671.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !165
  store i64 4, ptr %.sroa.772.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !131
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !155
  %i.qy = load i64, ptr %i.de, align 8, !alias.scope !166, !noalias !169, !noundef !26 ; 2 uses
  %i.qz = load i64, ptr %i.df, align 8, !alias.scope !166, !noalias !169, !noundef !26
  %i.ra = icmp ult i64 %i.qy, %i.qz
  br i1 %i.ra, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %._crit_edge.i, %bb.cm
  %i.rb = phi i64 [ %i.sx, %bb.cm ], [ %i.qy, %._crit_edge.i ] ; 3 uses
  %i.rc = add nuw i64 %i.rb, 1
  store i64 %i.rc, ptr %i.de, align 8, !alias.scope !166, !noalias !169
  %i.rd = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ae, i64 noundef %i.rb), !noalias !171 ; 2 uses
  %i.re = extractvalue { ptr, i64 } %i.rd, 0      ; 6 uses
  %i.rf = extractvalue { ptr, i64 } %i.rd, 1      ; 5 uses
  %i.rg = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dg, i64 noundef %i.rb), !noalias !171 ; 2 uses
  %i.rh = extractvalue { ptr, i64 } %i.rg, 0      ; 5 uses
  %i.ri = extractvalue { ptr, i64 } %i.rg, 1      ; 4 uses
  %.not24.i68 = icmp eq ptr %i.re, null
  br i1 %.not24.i68, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit, label %bb.bx

bb.bx:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rh) ]
  %.not25.i69 = icmp eq i64 %i.rf, 0
  br i1 %.not25.i69, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not26.i70 = icmp eq i64 %i.ri, 0
  br i1 %.not26.i70, label %bb.cb, label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #14
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.rj = load i8, ptr %i.ah, align 4, !noalias !131, !noundef !26 ; 2 uses
  %i.rk = load i8, ptr %i.re, align 1, !noundef !26
  %i.rl = load i8, ptr %i.rh, align 1, !noundef !26 ; 2 uses
  %i.rm = and i8 %i.rl, %i.rj
  %i.rn = xor i8 %i.rl, %i.rj
  %i.ro = lshr i8 %i.rn, 1
  %i.rp = add i8 %i.rm, %i.rk
  %i.rq = add i8 %i.rp, %i.ro
  %.not27.i71 = icmp eq i64 %i.rf, 1
  br i1 %.not27.i71, label %bb.cd, label %bb.cc

bb.cb:                                            ; preds = %bb.by
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #14
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %.not28.i = icmp eq i64 %i.ri, 1
  br i1 %.not28.i, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #14
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.rr = load i8, ptr %i.db, align 1, !noalias !131, !noundef !26 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !noundef !26
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rh, i64 1
  %i.rv = load i8, ptr %i.ru, align 1, !noundef !26 ; 2 uses
  %i.rw = and i8 %i.rv, %i.rr
  %i.rx = xor i8 %i.rv, %i.rr
  %i.ry = lshr i8 %i.rx, 1
  %i.rz = add i8 %i.rw, %i.rt
  %i.sa = add i8 %i.rz, %i.ry
end_hunk_0
begin_hunk_1_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform25apply_predictor_transform:bb.a
  %i.sh = load i8, ptr %i.sg, align 1, !noundef !26 ; 2 uses
  %i.si = and i8 %i.sh, %i.sd
  %i.sj = xor i8 %i.sh, %i.sd
  %i.sk = lshr i8 %i.sj, 1
  %i.sl = add i8 %i.si, %i.sf
  %i.sm = add i8 %i.sl, %i.sk
  %.not29.i = icmp eq i64 %i.rf, 3
  br i1 %.not29.i, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.cg
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #14
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %.not30.i = icmp eq i64 %i.ri, 3
  br i1 %.not30.i, label %bb.cn, label %bb.cm

bb.cl:                                            ; preds = %bb.ci
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #14
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.sn = load i8, ptr %i.dd, align 1, !noalias !131, !noundef !26 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.re, i64 3
  %i.sp = load i8, ptr %i.so, align 1, !noundef !26
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rh, i64 3
  %i.sr = load i8, ptr %i.sq, align 1, !noundef !26 ; 2 uses
  %i.ss = and i8 %i.sr, %i.sn
  %i.st = xor i8 %i.sr, %i.sn
  %i.su = lshr i8 %i.st, 1
  %i.sv = add i8 %i.ss, %i.sp
  %i.sw = add i8 %i.sv, %i.su
  store i8 %i.rq, ptr %i.ah, align 4, !noalias !131
  store i8 %i.sa, ptr %i.db, align 1, !noalias !131
  store i8 %i.sm, ptr %i.dc, align 2, !noalias !131
  store i8 %i.sw, ptr %i.dd, align 1, !noalias !131
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.re, i64 noundef %i.rf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68)
  %i.sx = load i64, ptr %i.de, align 8, !alias.scope !166, !noalias !169, !noundef !26 ; 2 uses
  %i.sy = load i64, ptr %i.df, align 8, !alias.scope !166, !noalias !169, !noundef !26
  %i.sz = icmp ult i64 %i.sx, %i.sy
  br i1 %i.sz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_7.exit

bb.cn:                                            ; preds = %bb.ck
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #14
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i: ; preds = %.lr.ph.i66, %bb.dd
  %i.ta = phi i64 [ %i.uw, %bb.dd ], [ %i.qs, %.lr.ph.i66 ] ; 3 uses
  %i.tb = add nuw i64 %i.ta, 1
  store i64 %i.tb, ptr %i.cy, align 8, !alias.scope !150, !noalias !153
  %i.tc = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.af, i64 noundef %i.ta), !noalias !172 ; 2 uses
  %i.td = extractvalue { ptr, i64 } %i.tc, 0      ; 6 uses
  %i.te = extractvalue { ptr, i64 } %i.tc, 1      ; 5 uses
  %i.tf = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.da, i64 noundef %i.ta), !noalias !172 ; 2 uses
  %i.tg = extractvalue { ptr, i64 } %i.tf, 0      ; 5 uses
  %i.th = extractvalue { ptr, i64 } %i.tf, 1      ; 4 uses
  %.not31.i = icmp eq ptr %i.td, null
  br i1 %.not31.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i, label %bb.co

bb.co:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tg) ]
  %.not32.i = icmp eq i64 %i.te, 0
  br i1 %.not32.i, label %bb.cq, label %bb.cp

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i: ; preds = %bb.dd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, %.lr.ph.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !131
  %.not.i.i.i.i = icmp eq i64 %i.qq, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %.lr.ph.i66

bb.cp:                                            ; preds = %bb.co
  %.not33.i = icmp eq i64 %i.th, 0
  br i1 %.not33.i, label %bb.cs, label %bb.cr

bb.cq:                                            ; preds = %bb.co
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #14
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.ti = load i8, ptr %i.ah, align 4, !noalias !131, !noundef !26 ; 2 uses
  %i.tj = load i8, ptr %i.td, align 1, !noundef !26
  %i.tk = load i8, ptr %i.tg, align 1, !noundef !26 ; 2 uses
  %i.tl = and i8 %i.tk, %i.ti
  %i.tm = xor i8 %i.tk, %i.ti
  %i.tn = lshr i8 %i.tm, 1
  %i.to = add i8 %i.tl, %i.tj
  %i.tp = add i8 %i.to, %i.tn
  %.not34.i = icmp eq i64 %i.te, 1
  br i1 %.not34.i, label %bb.cu, label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #14
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %.not35.i = icmp eq i64 %i.th, 1
  br i1 %.not35.i, label %bb.cw, label %bb.cv

bb.cu:                                            ; preds = %bb.cr
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #14
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.tq = load i8, ptr %i.db, align 1, !noalias !131, !noundef !26 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  %i.ts = load i8, ptr %i.tr, align 1, !noundef !26
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  %i.tu = load i8, ptr %i.tt, align 1, !noundef !26 ; 2 uses
  %i.tv = and i8 %i.tu, %i.tq
  %i.tw = xor i8 %i.tu, %i.tq
  %i.tx = lshr i8 %i.tw, 1
  %i.ty = add i8 %i.tv, %i.ts
  %i.tz = add i8 %i.ty, %i.tx
  %i.ua = icmp ugt i64 %i.te, 2
  br i1 %i.ua, label %bb.cx, label %bb.cy

bb.cw:                                            ; preds = %bb.ct
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #14
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.ub = icmp ugt i64 %i.th, 2
  br i1 %i.ub, label %bb.cz, label %bb.da

bb.cy:                                            ; preds = %bb.cv
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #14
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.uc = load i8, ptr %i.dc, align 2, !noalias !131, !noundef !26 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.td, i64 2
  %i.ue = load i8, ptr %i.ud, align 1, !noundef !26
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tg, i64 2
  %i.ug = load i8, ptr %i.uf, align 1, !noundef !26 ; 2 uses
  %i.uh = and i8 %i.ug, %i.uc
  %i.ui = xor i8 %i.ug, %i.uc
  %i.uj = lshr i8 %i.ui, 1
  %i.uk = add i8 %i.uh, %i.ue
  %i.ul = add i8 %i.uk, %i.uj
  %.not36.i = icmp eq i64 %i.te, 3
  br i1 %.not36.i, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %bb.cx
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #14
  unreachable

bb.db:                                            ; preds = %bb.cz
  %.not37.i = icmp eq i64 %i.th, 3
  br i1 %.not37.i, label %bb.de, label %bb.dd

bb.dc:                                            ; preds = %bb.cz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #14
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.um = load i8, ptr %i.dd, align 1, !noalias !131, !noundef !26 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.td, i64 3
  %i.uo = load i8, ptr %i.un, align 1, !noundef !26
  %i.up = getelementptr inbounds nuw i8, ptr %i.tg, i64 3
  %i.uq = load i8, ptr %i.up, align 1, !noundef !26 ; 2 uses
  %i.ur = and i8 %i.uq, %i.um
  %i.us = xor i8 %i.uq, %i.um
  %i.ut = lshr i8 %i.us, 1
  %i.uu = add i8 %i.ur, %i.uo
  %i.uv = add i8 %i.uu, %i.ut
  store i8 %i.tp, ptr %i.ah, align 4, !noalias !131
  store i8 %i.tz, ptr %i.db, align 1, !noalias !131
  store i8 %i.ul, ptr %i.dc, align 2, !noalias !131
  store i8 %i.uv, ptr %i.dd, align 1, !noalias !131
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.td, i64 noundef %i.te, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77)
  %i.uw = load i64, ptr %i.cy, align 8, !alias.scope !150, !noalias !153, !noundef !26 ; 2 uses
  %i.ux = load i64, ptr %i.cz, align 8, !alias.scope !150, !noalias !153, !noundef !26
  %i.uy = icmp ult i64 %i.uw, %i.ux
  br i1 %i.uy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit44.thread.i

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
  %.not.i72 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i72, label %bb.dg, label %.preheader.split.i73, !prof !4

.preheader.split.i73:                             ; preds = %bb.df
  %i.uz = icmp ult i64 %i.fb, %i.fe
  br i1 %i.uz, label %.lr.ph.i75.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i75.preheader:                             ; preds = %.preheader.split.i73
  %i.va = shl nuw nsw i64 %..i28, 2
  %i.vb = shl i64 %..i, 2
  %i.vc = xor i64 %i.vb, -1
  %i.vd = add i64 %i.va, %i.vc
  %.reass4636 = add i64 %i.fb, %invariant.op4635
  %umax3200 = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4636)
  %i.ve = add i64 %11, %umax3200
  %i.vf = sub i64 %i.ve, %i.fb
  %16 = add i64 %12, %i.fb
  %umax3201 = call i64 @llvm.umax.i64(i64 %2, i64 %16)
  %i.vg = add i64 %i.bf, %umax3201
  %i.vh = sub i64 %i.vg, %i.fb
  %umin3202 = call i64 @llvm.umin.i64(i64 %i.vf, i64 %i.vh)
  %umin3203 = call i64 @llvm.umin.i64(i64 %i.vd, i64 %umin3202)
  %i.vi = add i64 %umin3203, 1                    ; 3 uses
  %min.iters.check3205 = icmp ult i64 %i.vi, 17
  br i1 %min.iters.check3205, label %.lr.ph.i75.preheader3274, label %vector.memcheck3177

.lr.ph.i75.preheader3274:                         ; preds = %vector.body3208, %vector.memcheck3177, %.lr.ph.i75.preheader
  %.sroa.0.016.i.ph = phi i64 [ %i.fb, %vector.memcheck3177 ], [ %i.fb, %.lr.ph.i75.preheader ], [ %i.vx, %vector.body3208 ]
  br label %.lr.ph.i75

vector.memcheck3177:                              ; preds = %.lr.ph.i75.preheader
  %scevgep3178.a = getelementptr i8, ptr %1, i64 %i.fb ; 2 uses
  %i.vj = shl nuw nsw i64 %..i28, 2
  %i.vk = shl i64 %..i, 2
  %i.vl = xor i64 %i.vk, -1
  %i.vm = add i64 %i.vj, %i.vl
  %i.vn = add i64 %i.eb, %i.fb
  %umax3180 = call i64 @llvm.umax.i64(i64 %2, i64 %i.vn)
  %i.vo = add i64 %i.ea, %umax3180
  %i.vp = sub i64 %i.vo, %i.fb
  %i.vq = add i64 %i.ec, %i.fb
  %umax3181 = call i64 @llvm.umax.i64(i64 %2, i64 %i.vq)
  %i.vr = add i64 %i.bf, %umax3181
  %i.vs = sub i64 %i.vr, %i.fb
  %umin3182 = call i64 @llvm.umin.i64(i64 %i.vp, i64 %i.vs)
  %umin3183 = call i64 @llvm.umin.i64(i64 %i.vm, i64 %umin3182)
  %i.vt = add i64 %umin3183, %i.fb                ; 3 uses
  %scevgep3184 = getelementptr i8, ptr %scevgep3179.a, i64 %i.vt ; 2 uses
  %scevgep3186 = getelementptr i8, ptr %scevgep3185, i64 %i.fb
  %scevgep3188 = getelementptr i8, ptr %scevgep3187, i64 %i.vt
  %scevgep3190 = getelementptr i8, ptr %scevgep3189, i64 %i.fb
  %scevgep3192 = getelementptr i8, ptr %scevgep3191, i64 %i.vt
  %bound03193 = icmp ult ptr %scevgep3178.a, %scevgep3188
  %bound13194 = icmp ult ptr %scevgep3186, %scevgep3184
  %found.conflict3195 = and i1 %bound03193, %bound13194
  %bound03196 = icmp ult ptr %scevgep3178.a, %scevgep3192
  %bound13197 = icmp ult ptr %scevgep3190, %scevgep3184
  %found.conflict3198 = and i1 %bound03196, %bound13197
  %conflict.rdx3199 = or i1 %found.conflict3195, %found.conflict3198
  br i1 %conflict.rdx3199, label %.lr.ph.i75.preheader3274, label %vector.ph3206

vector.ph3206:                                    ; preds = %vector.memcheck3177
  %i.vu = and i64 %i.vi, 15                       ; 2 uses
  %i.vv = icmp eq i64 %i.vu, 0
  %i.vw = select i1 %i.vv, i64 16, i64 %i.vu
  %n.vec3207 = sub i64 %i.vi, %i.vw               ; 2 uses
  %i.vx = add i64 %i.fb, %n.vec3207
  br label %vector.body3208

vector.body3208:                                  ; preds = %vector.body3208, %vector.ph3206
  %index3209 = phi i64 [ 0, %vector.ph3206 ], [ %index.next3213, %vector.body3208 ] ; 2 uses
  %i.vy = add i64 %i.fb, %index3209               ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 %i.vy ; 2 uses
  %wide.load3210 = load <16 x i8>, ptr %i.vz, align 1, !alias.scope !176, !noalias !179
  %i.wa = sub nsw i64 %i.vy, %i.bf                ; 2 uses
  %i.wb = getelementptr i8, ptr %1, i64 %i.wa
  %i.wc = getelementptr i8, ptr %i.wb, i64 -4
  %wide.load3211 = load <16 x i8>, ptr %i.wc, align 1, !alias.scope !182
  %i.wd = zext <16 x i8> %wide.load3211 to <16 x i16>
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 %i.wa
  %wide.load3212 = load <16 x i8>, ptr %i.we, align 1, !alias.scope !183
  %i.wf = zext <16 x i8> %wide.load3212 to <16 x i16>
  %i.wg = add nuw nsw <16 x i16> %i.wf, %i.wd
  %i.wh = lshr <16 x i16> %i.wg, splat (i16 1)
  %i.wi = trunc nuw <16 x i16> %i.wh to <16 x i8>
  %i.wj = add <16 x i8> %wide.load3210, %i.wi
  store <16 x i8> %i.wj, ptr %i.vz, align 1, !alias.scope !176, !noalias !179
  %index.next3213 = add nuw i64 %index3209, 16    ; 2 uses
  %i.wk = icmp eq i64 %index.next3213, %n.vec3207
  br i1 %i.wk, label %.lr.ph.i75.preheader3274, label %vector.body3208, !llvm.loop !184

bb.dg:                                            ; preds = %bb.df
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !173
  unreachable

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.preheader3274, %bb.dk
  %.sroa.0.016.i = phi i64 [ %i.xb, %bb.dk ], [ %.sroa.0.016.i.ph, %.lr.ph.i75.preheader3274 ] ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.016.i ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 1, !alias.scope !173, !noundef !26
  %i.wn = sub nsw i64 %.sroa.0.016.i, %i.bf       ; 4 uses
  %i.wo = add nsw i64 %i.wn, -4                   ; 3 uses
  %i.wp = icmp ult i64 %i.wo, %2
  br i1 %i.wp, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %.lr.ph.i75
  %i.wq = icmp ult i64 %i.wn, %2
  br i1 %i.wq, label %bb.dk, label %bb.dj

bb.di:                                            ; preds = %.lr.ph.i75
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.wo, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #14, !noalias !173
  unreachable

bb.dj:                                            ; preds = %bb.dh
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.wn, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !173
  unreachable

bb.dk:                                            ; preds = %bb.dh
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 %i.wo
  %i.ws = load i8, ptr %i.wr, align 1, !alias.scope !173, !noundef !26
  %i.wt = zext i8 %i.ws to i16
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 %i.wn
  %i.wv = load i8, ptr %i.wu, align 1, !alias.scope !173, !noundef !26
  %i.ww = zext i8 %i.wv to i16
  %i.wx = add nuw nsw i16 %i.ww, %i.wt
  %i.wy = lshr i16 %i.wx, 1
  %i.wz = trunc nuw i16 %i.wy to i8
  %i.xa = add i8 %i.wm, %i.wz
  store i8 %i.xa, ptr %i.wl, align 1, !alias.scope !173
  %i.xb = add i64 %.sroa.0.016.i, 1               ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %i.xb, %i.fe
  br i1 %exitcond.not.i76, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i75, !llvm.loop !185

bb.dl:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %.not.i77 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i77, label %bb.dm, label %.preheader.split.i78, !prof !4

.preheader.split.i78:                             ; preds = %bb.dl
  %i.xc = icmp ult i64 %i.fb, %i.fe
  br i1 %i.xc, label %.lr.ph.i80.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i80.preheader:                             ; preds = %.preheader.split.i78
  %i.xd = shl nuw nsw i64 %..i28, 2
  %i.xe = shl i64 %..i, 2
  %i.xf = xor i64 %i.xe, -1
  %i.xg = add i64 %i.xd, %i.xf
  %.reass = add i64 %i.fb, %invariant.op4634
  %umax3239 = call i64 @llvm.umax.i64(i64 %2, i64 %.reass)
  %i.xh = add i64 %13, %umax3239
  %i.xi = sub i64 %i.xh, %i.fb
  %i.xj = sub i64 %i.fa, %i.az
  %17 = shl i64 %i.xj, 2
  %umax3240 = call i64 @llvm.umax.i64(i64 %2, i64 %17)
  %i.xk = add i64 %i.bf, %umax3240
  %i.xl = sub i64 %i.xk, %i.fb
  %umin3241 = call i64 @llvm.umin.i64(i64 %i.xi, i64 %i.xl)
  %umin3242 = call i64 @llvm.umin.i64(i64 %i.xg, i64 %umin3241)
  %i.xm = add i64 %umin3242, 1                    ; 3 uses
  %min.iters.check3244 = icmp ult i64 %i.xm, 17
  br i1 %min.iters.check3244, label %.lr.ph.i80.preheader3276, label %vector.memcheck3216

.lr.ph.i80.preheader3276:                         ; preds = %vector.body3247, %vector.memcheck3216, %.lr.ph.i80.preheader
  %.sroa.0.015.i81.ph = phi i64 [ %i.fb, %vector.memcheck3216 ], [ %i.fb, %.lr.ph.i80.preheader ], [ %i.yb, %vector.body3247 ]
  br label %.lr.ph.i80

vector.memcheck3216:                              ; preds = %.lr.ph.i80.preheader
  %scevgep3217 = getelementptr i8, ptr %1, i64 %i.fb ; 2 uses
  %i.xn = shl nuw nsw i64 %..i28, 2
  %i.xo = shl i64 %..i, 2
  %i.xp = xor i64 %i.xo, -1
  %i.xq = add i64 %i.xn, %i.xp
  %i.xr = add i64 %i.eg, %i.fb
  %umax3219 = call i64 @llvm.umax.i64(i64 %2, i64 %i.xr)
  %i.xs = add i64 %i.ef, %umax3219
  %i.xt = sub i64 %i.xs, %i.fb
  %i.xu = add i64 %12, %i.fb
  %umax3220 = call i64 @llvm.umax.i64(i64 %2, i64 %i.xu)
  %i.xv = add i64 %i.bf, %umax3220
  %i.xw = sub i64 %i.xv, %i.fb
  %umin3221 = call i64 @llvm.umin.i64(i64 %i.xt, i64 %i.xw)
  %umin3222 = call i64 @llvm.umin.i64(i64 %i.xq, i64 %umin3221)
  %i.xx = add i64 %umin3222, %i.fb                ; 3 uses
  %scevgep3223 = getelementptr i8, ptr %scevgep3218, i64 %i.xx ; 2 uses
  %scevgep3225 = getelementptr i8, ptr %scevgep3224, i64 %i.fb
  %scevgep3227 = getelementptr i8, ptr %scevgep3226, i64 %i.xx
  %scevgep3229 = getelementptr i8, ptr %scevgep3228, i64 %i.fb
  %scevgep3231 = getelementptr i8, ptr %scevgep3230, i64 %i.xx
  %bound03232 = icmp ult ptr %scevgep3217, %scevgep3227
  %bound13233 = icmp ult ptr %scevgep3225, %scevgep3223
  %found.conflict3234 = and i1 %bound03232, %bound13233
  %bound03235 = icmp ult ptr %scevgep3217, %scevgep3231
  %bound13236 = icmp ult ptr %scevgep3229, %scevgep3223
  %found.conflict3237 = and i1 %bound03235, %bound13236
  %conflict.rdx3238 = or i1 %found.conflict3234, %found.conflict3237
  br i1 %conflict.rdx3238, label %.lr.ph.i80.preheader3276, label %vector.ph3245

vector.ph3245:                                    ; preds = %vector.memcheck3216
  %i.xy = and i64 %i.xm, 15                       ; 2 uses
  %i.xz = icmp eq i64 %i.xy, 0
  %i.ya = select i1 %i.xz, i64 16, i64 %i.xy
  %n.vec3246 = sub i64 %i.xm, %i.ya               ; 2 uses
  %i.yb = add i64 %i.fb, %n.vec3246
  br label %vector.body3247

vector.body3247:                                  ; preds = %vector.body3247, %vector.ph3245
  %index3248 = phi i64 [ 0, %vector.ph3245 ], [ %index.next3252, %vector.body3247 ] ; 2 uses
  %i.yc = add i64 %i.fb, %index3248               ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 %i.yc ; 2 uses
  %wide.load3249 = load <16 x i8>, ptr %i.yd, align 1, !alias.scope !189, !noalias !192
  %i.ye = sub nsw i64 %i.yc, %i.bf                ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ye
  %wide.load3250 = load <16 x i8>, ptr %i.yf, align 1, !alias.scope !195
  %i.yg = zext <16 x i8> %wide.load3250 to <16 x i16>
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ye
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 4
  %wide.load3251 = load <16 x i8>, ptr %i.yi, align 1, !alias.scope !196
  %i.yj = zext <16 x i8> %wide.load3251 to <16 x i16>
  %i.yk = add nuw nsw <16 x i16> %i.yj, %i.yg
  %i.yl = lshr <16 x i16> %i.yk, splat (i16 1)
  %i.ym = trunc nuw <16 x i16> %i.yl to <16 x i8>
  %i.yn = add <16 x i8> %wide.load3249, %i.ym
  store <16 x i8> %i.yn, ptr %i.yd, align 1, !alias.scope !189, !noalias !192
  %index.next3252 = add nuw i64 %index3248, 16    ; 2 uses
  %i.yo = icmp eq i64 %index.next3252, %n.vec3246
  br i1 %i.yo, label %.lr.ph.i80.preheader3276, label %vector.body3247, !llvm.loop !197

bb.dm:                                            ; preds = %bb.dl
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #14, !noalias !186
  unreachable

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.preheader3276, %bb.dq
  %.sroa.0.015.i81 = phi i64 [ %i.zf, %bb.dq ], [ %.sroa.0.015.i81.ph, %.lr.ph.i80.preheader3276 ] ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.015.i81 ; 2 uses
  %i.yq = load i8, ptr %i.yp, align 1, !alias.scope !186, !noundef !26
  %i.yr = sub nsw i64 %.sroa.0.015.i81, %i.bf     ; 4 uses
  %i.ys = icmp ult i64 %i.yr, %2
  br i1 %i.ys, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.lr.ph.i80
  %i.yt = add nuw i64 %i.yr, 4                    ; 3 uses
  %i.yu = icmp ult i64 %i.yt, %2
  br i1 %i.yu, label %bb.dq, label %bb.dp

bb.do:                                            ; preds = %.lr.ph.i80
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.yr, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #14, !noalias !186
  unreachable

bb.dp:                                            ; preds = %bb.dn
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.yt, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #14, !noalias !186
  unreachable

bb.dq:                                            ; preds = %bb.dn
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 %i.yr
  %i.yw = load i8, ptr %i.yv, align 1, !alias.scope !186, !noundef !26
  %i.yx = zext i8 %i.yw to i16
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 %i.yt
  %i.yz = load i8, ptr %i.yy, align 1, !alias.scope !186, !noundef !26
  %i.za = zext i8 %i.yz to i16
  %i.zb = add nuw nsw i16 %i.za, %i.yx
  %i.zc = lshr i16 %i.zb, 1
  %i.zd = trunc nuw i16 %i.zc to i8
  %i.ze = add i8 %i.yq, %i.zd
  store i8 %i.ze, ptr %i.yp, align 1, !alias.scope !186
  %i.zf = add i64 %.sroa.0.015.i81, 1             ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.zf, %i.fe
  br i1 %exitcond.not.i82, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i80, !llvm.loop !198

bb.dr:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.not.i83 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i83, label %bb.du, label %bb.ds, !prof !77

bb.ds:                                            ; preds = %bb.dr
  %.not.i.i84 = icmp ugt i64 %i.fb, %i.fe
  br i1 %.not.i.i84, label %bb.dt, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85, !prof !4

bb.dt:                                            ; preds = %bb.ds
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #14, !noalias !202
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85: ; preds = %bb.ds
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb ; 4 uses
  %i.zh = sub nuw nsw i64 %i.fe, %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !199
  %i.zi = add nsw i64 %i.fb, -4                   ; 2 uses
  %i.zj = icmp eq i64 %i.fb, 0
  br i1 %i.zj, label %bb.dv, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86, !prof !4

bb.du:                                            ; preds = %bb.dr
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fe, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #14
  unreachable

bb.dv:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.zi, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 %i.zi
  %.sroa.01.0.copyload.i87 = load i32, ptr %i.zk, align 1, !alias.scope !199
  store i32 %.sroa.01.0.copyload.i87, ptr %i.z, align 4, !noalias !199
  %i.zl = sub nsw i64 %i.fb, %i.bf                ; 4 uses
  %i.zm = add nsw i64 %i.zl, -4                   ; 4 uses
  %i.zn = icmp ugt i64 %i.zm, %i.fb
  br i1 %i.zn, label %bb.dx, label %bb.dw, !prof !4

bb.dw:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  %i.zo = add nuw i64 %i.zl, 4                    ; 3 uses
  %.not157 = icmp ult i64 %i.zl, %i.fb
  br i1 %.not157, label %bb.dy, label %bb.dz, !prof !206

bb.dx:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.zm, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #14
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 %i.zm
  %i.zq = sub nuw nsw i64 %i.fb, %i.zm
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 %i.zl
  %i.zs = sub nuw nsw i64 %i.fb, %i.zo
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 %i.zo
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !207
  store ptr %i.zu, ptr %i.w, align 8, !noalias !212
  store i64 0, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !212
  store ptr %i.zg, ptr %.sroa.5.0..sroa_idx.i88, align 8, !noalias !212
  store i64 %i.zh, ptr %.sroa.637.0..sroa_idx.i, align 8, !noalias !212
  store i64 4, ptr %.sroa.7.0..sroa_idx.i89, align 8, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !207
  store ptr %i.zp, ptr %i.v, align 8, !alias.scope !213, !noalias !217
  store i64 %i.zq, ptr %.sroa.439.0..sroa_idx.i, align 8, !alias.scope !213, !noalias !217
  store ptr %i.zg, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !213, !noalias !217
  store i64 0, ptr %.sroa.641.0..sroa_idx.i, align 8, !alias.scope !213, !noalias !217
  store i64 4, ptr %.sroa.742.0..sroa_idx.i, align 8, !alias.scope !213, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !218
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.v), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !218
  store ptr %i.zr, ptr %i.t, align 8, !alias.scope !223, !noalias !227
  store i64 %i.bf, ptr %.sroa.444.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !227
  store ptr %i.zg, ptr %.sroa.545.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !227
  store i64 0, ptr %.sroa.646.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !227
  store i64 4, ptr %.sroa.747.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !228
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !228
  store ptr %i.zt, ptr %i.r, align 8, !alias.scope !233, !noalias !237
  store i64 %i.zs, ptr %.sroa.449.0..sroa_idx.i, align 8, !alias.scope !233, !noalias !237
  store ptr %i.zg, ptr %.sroa.550.0..sroa_idx.i, align 8, !alias.scope !233, !noalias !237
  store i64 0, ptr %.sroa.651.0..sroa_idx.i, align 8, !alias.scope !233, !noalias !237
  store i64 4, ptr %.sroa.752.0..sroa_idx.i, align 8, !alias.scope !233, !noalias !237
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.r), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(208) %i.y, i64 208, i1 false), !noalias !199
  %i.zv = load i64, ptr %i.co, align 8, !alias.scope !239, !noalias !242, !noundef !26 ; 2 uses
  %i.zw = load i64, ptr %i.cp, align 8, !alias.scope !239, !noalias !242, !noundef !26
  %i.zx = icmp ult i64 %i.zv, %i.zw
  br i1 %i.zx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit

bb.dz:                                            ; preds = %bb.dw
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.zo, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #14
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.dy, %bb.ff
  %i.zy = phi i64 [ %i.adw, %bb.ff ], [ %i.zv, %bb.dy ] ; 3 uses
  %i.zz = add nuw i64 %i.zy, 1
  store i64 %i.zz, ptr %i.co, align 8, !alias.scope !239, !noalias !242
  %i.aaa = load i64, ptr %i.cq, align 8, !alias.scope !244, !noalias !249, !noundef !26
  %i.aab = add i64 %i.aaa, %i.zy                  ; 2 uses
  %i.aac = load i64, ptr %i.cr, align 8, !alias.scope !252, !noalias !257, !noundef !26
  %i.aad = add i64 %i.aac, %i.aab                 ; 2 uses
end_hunk_1
