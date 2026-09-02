Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.2?download=true
inline.NumInlined: 108
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEEB1c_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsksn9slvsHfS_10image_webp3vp8NtB4_5Frame8fill_rgb(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i16, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %.biased7 = add i16 %i.n, 15
  %.sroa.02.0 = and i16 %.biased7, -16
  %i.p = zext i16 %.sroa.02.0 to i64              ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i16 %i.n, 1
  %.sroa.01.0 = sub nuw i16 %i.n, %i.q
  %i.r = zext i16 %.sroa.01.0 to i64
  tail call void @_RINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj3_EB4_(ptr noalias nofree noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r, i64 noundef %i.p)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.t = load i16, ptr %i.s, align 2, !noundef !4
  %i.u = zext i16 %i.t to i64
  tail call void @_RINvNtCsksn9slvsHfS_10image_webp3yuv21fill_rgb_buffer_fancyKj3_EB4_(ptr noalias nofree noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.u, i64 noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsksn9slvsHfS_10image_webp3vp8NtB4_5Frame9fill_rgba(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i16, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %.biased7 = add i16 %i.n, 15
  %.sroa.02.0 = and i16 %.biased7, -16
  %i.p = zext i16 %.sroa.02.0 to i64              ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i16 %i.n, 1
  %.sroa.01.0 = sub nuw i16 %i.n, %i.q
  %i.r = zext i16 %.sroa.01.0 to i64
  tail call void @_RINvNtCsksn9slvsHfS_10image_webp3yuv22fill_rgb_buffer_simpleKj4_EB4_(ptr noalias nofree noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r, i64 noundef %i.p)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.t = load i16, ptr %i.s, align 2, !noundef !4
  %i.u = zext i16 %i.t to i64
  tail call void @_RINvNtCsksn9slvsHfS_10image_webp3yuv21fill_rgb_buffer_fancyKj4_EB4_(ptr noalias nofree noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.u, i64 noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  %i.b = mul i64 %5, %3
  %i.c = add i64 %i.b, %4                         ; 5 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp ugt i64 %i.c, %1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw nsw i64 %1, %i.c                 ; 2 uses
  %i.g = icmp samesign ugt i64 %i.f, 3
  br i1 %i.g, label %bb.e, label %bb.d, !prof !6

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, %bb.a
  %.sroa.0.034.lcssa = phi i64 [ %i.c, %bb.a ], [ %i.bh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread ], [ %i.dm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1 ], [ %i.fr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2 ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.034.lcssa, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #13
  unreachable

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.b
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.bk, %bb.f ], [ %i.dp, %bb.h ], [ %i.ft, %bb.j ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %2, ptr noundef nonnull %i.d)
  %.sroa.015.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.416.0.copyload = load ptr, ptr %.sroa.416.0..sroa_idx, align 8 ; 7 uses
  %.sroa.518.0.copyload = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.j = icmp ult i64 %.sroa.518.0.copyload, %.sroa.7.0.copyload
  br i1 %i.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.416.0.copyload) ]
  %i.k = sub nuw i64 %.sroa.7.0.copyload, %.sroa.518.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph
  %scevgep = getelementptr i8, ptr %.sroa.015.0.copyload, i64 %.sroa.518.0.copyload
  %scevgep49 = getelementptr i8, ptr %.sroa.015.0.copyload, i64 %.sroa.7.0.copyload
  %i.l = shl i64 %.sroa.518.0.copyload, 2
  %scevgep50 = getelementptr i8, ptr %.sroa.416.0.copyload, i64 %i.l
  %i.m = shl i64 %.sroa.7.0.copyload, 2
  %scevgep51 = getelementptr i8, ptr %.sroa.416.0.copyload, i64 %i.m
  %bound0 = icmp ult ptr %scevgep, %scevgep51
  %bound1 = icmp ult ptr %scevgep50, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  %i.n = add i64 %.sroa.518.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = add nuw i64 %.sroa.518.0.copyload, %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !alias.scope !34
  %wide.load52 = load <4 x i32>, ptr %i.r, align 4, !alias.scope !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %wide.load53 = load <4 x i8>, ptr %i.p, align 1, !alias.scope !35, !noalias !34
  %wide.load54 = load <4 x i8>, ptr %i.s, align 1, !alias.scope !35, !noalias !34
  %i.t = zext <4 x i8> %wide.load53 to <4 x i32>
  %i.u = zext <4 x i8> %wide.load54 to <4 x i32>
  %i.v = add <4 x i32> %wide.load, %i.t
  %i.w = add <4 x i32> %wide.load52, %i.u
  %i.x = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.v, <4 x i32> zeroinitializer)
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.w, <4 x i32> zeroinitializer)
  %i.z = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.x, <4 x i32> splat (i32 255))
  %i.aa = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.y, <4 x i32> splat (i32 255))
  %i.ab = trunc nuw <4 x i32> %i.z to <4 x i8>
  %i.ac = trunc nuw <4 x i32> %i.aa to <4 x i8>
  store <4 x i8> %i.ab, ptr %i.p, align 1, !alias.scope !35, !noalias !34
  store <4 x i8> %i.ac, ptr %i.s, align 1, !alias.scope !35, !noalias !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph, %middle.block
  %.sroa.518.031.ph = phi i64 [ %.sroa.518.0.copyload, %vector.memcheck ], [ %.sroa.518.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph ], [ %i.n, %middle.block ] ; 6 uses
  %i.ae = sub i64 %.sroa.7.0.copyload, %.sroa.518.031.ph
  %.neg = add i64 %.sroa.518.031.ph, 1
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %.sroa.518.031.ph ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload, i64 %.sroa.518.031.ph
  %i.ah = add nuw i64 %.sroa.518.031.ph, 1
  %i.ai = load i32, ptr %i.ag, align 4, !noundef !4
  %i.aj = load i8, ptr %i.af, align 1, !noundef !4
  %i.ak = zext i8 %i.aj to i32
  %i.al = add i32 %i.ai, %i.ak
  %..i.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.am = tail call i32 @llvm.umin.i32(i32 %..i.prol, i32 255)
  %i.an = trunc nuw i32 %i.am to i8
  store i8 %i.an, ptr %i.af, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader
  %.sroa.518.031.unr = phi i64 [ %.sroa.518.031.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ], [ %i.ah, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ]
  %i.ao = icmp eq i64 %.sroa.7.0.copyload, %.neg
  br i1 %i.ao, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit
  %.sroa.518.031 = phi i64 [ %i.ba, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit ], [ %.sroa.518.031.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %.sroa.518.031 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload, i64 %.sroa.518.031
  %i.ar = add nuw i64 %.sroa.518.031, 1           ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !noundef !4
  %i.at = load i8, ptr %i.ap, align 1, !noundef !4
  %i.au = zext i8 %i.at to i32
  %i.av = add i32 %i.as, %i.au
  %..i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %i.aw = tail call i32 @llvm.umin.i32(i32 %..i, i32 255)
  %i.ax = trunc nuw i32 %i.aw to i8
  store i8 %i.ax, ptr %i.ap, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %i.ar ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload, i64 %i.ar
  %i.ba = add nuw i64 %.sroa.518.031, 2           ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !noundef !4
  %i.bc = load i8, ptr %i.ay, align 1, !noundef !4
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %i.bb, %i.bd
  %..i.1122 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %..i.1122, i32 255)
  %i.bg = trunc nuw i32 %i.bf to i8
  store i8 %i.bg, ptr %i.ay, align 1
  %exitcond.not.1 = icmp eq i64 %i.ba, %.sroa.7.0.copyload
  br i1 %exitcond.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, !llvm.loop !18

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit, %middle.block, %bb.e
  %i.bh = add i64 %i.c, %5                        ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bj = icmp ugt i64 %i.bh, %1
  br i1 %i.bj, label %bb.c, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread
  %i.bk = sub nuw nsw i64 %1, %i.bh               ; 2 uses
  %i.bl = icmp samesign ugt i64 %i.bk, 3
  br i1 %i.bl, label %bb.g, label %bb.d, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bi)
  %.sroa.015.0.copyload.1 = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.416.0.copyload.1 = load ptr, ptr %.sroa.416.0..sroa_idx, align 8 ; 7 uses
  %.sroa.518.0.copyload.1 = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload.1 = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.bo = icmp ult i64 %.sroa.518.0.copyload.1, %.sroa.7.0.copyload.1
  br i1 %i.bo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload.1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.416.0.copyload.1) ]
  %i.bp = sub nuw i64 %.sroa.7.0.copyload.1, %.sroa.518.0.copyload.1 ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.bp, 8
  br i1 %min.iters.check64, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader, label %vector.memcheck55

vector.memcheck55:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1
  %scevgep56 = getelementptr i8, ptr %.sroa.015.0.copyload.1, i64 %.sroa.518.0.copyload.1
  %scevgep57 = getelementptr i8, ptr %.sroa.015.0.copyload.1, i64 %.sroa.7.0.copyload.1
  %i.bq = shl i64 %.sroa.518.0.copyload.1, 2
  %scevgep58 = getelementptr i8, ptr %.sroa.416.0.copyload.1, i64 %i.bq
  %i.br = shl i64 %.sroa.7.0.copyload.1, 2
  %scevgep59 = getelementptr i8, ptr %.sroa.416.0.copyload.1, i64 %i.br
  %bound060 = icmp ult ptr %scevgep56, %scevgep59
  %bound161 = icmp ult ptr %scevgep58, %scevgep57
  %found.conflict62 = and i1 %bound060, %bound161
  br i1 %found.conflict62, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck55
  %n.vec66 = and i64 %i.bp, -8                    ; 3 uses
  %i.bs = add i64 %.sroa.518.0.copyload.1, %n.vec66
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %i.bt = add nuw i64 %.sroa.518.0.copyload.1, %index68 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.1, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.1, i64 %i.bt ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load69 = load <4 x i32>, ptr %i.bv, align 4, !alias.scope !36
  %wide.load70 = load <4 x i32>, ptr %i.bw, align 4, !alias.scope !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %wide.load71 = load <4 x i8>, ptr %i.bu, align 1, !alias.scope !37, !noalias !36
  %wide.load72 = load <4 x i8>, ptr %i.bx, align 1, !alias.scope !37, !noalias !36
  %i.by = zext <4 x i8> %wide.load71 to <4 x i32>
  %i.bz = zext <4 x i8> %wide.load72 to <4 x i32>
  %i.ca = add <4 x i32> %wide.load69, %i.by
  %i.cb = add <4 x i32> %wide.load70, %i.bz
  %i.cc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ca, <4 x i32> zeroinitializer)
  %i.cd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cb, <4 x i32> zeroinitializer)
  %i.ce = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cc, <4 x i32> splat (i32 255))
  %i.cf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cd, <4 x i32> splat (i32 255))
  %i.cg = trunc nuw <4 x i32> %i.ce to <4 x i8>
  %i.ch = trunc nuw <4 x i32> %i.cf to <4 x i8>
  store <4 x i8> %i.cg, ptr %i.bu, align 1, !alias.scope !37, !noalias !36
  store <4 x i8> %i.ch, ptr %i.bx, align 1, !alias.scope !37, !noalias !36
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.ci, label %middle.block74, label %vector.body67, !llvm.loop !22

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bp, %n.vec66
  br i1 %cmp.n75, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader: ; preds = %vector.memcheck55, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1, %middle.block74
  %.sroa.518.031.1.ph = phi i64 [ %.sroa.518.0.copyload.1, %vector.memcheck55 ], [ %.sroa.518.0.copyload.1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.1 ], [ %i.bs, %middle.block74 ] ; 6 uses
  %i.cj = sub i64 %.sroa.7.0.copyload.1, %.sroa.518.031.1.ph
  %.neg130 = add i64 %.sroa.518.031.1.ph, 1
  %xtraiter124 = and i64 %i.cj, 1
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.1, i64 %.sroa.518.031.1.ph ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.1, i64 %.sroa.518.031.1.ph
  %i.cm = add nuw i64 %.sroa.518.031.1.ph, 1
  %i.cn = load i32, ptr %i.cl, align 4, !noundef !4
  %i.co = load i8, ptr %i.ck, align 1, !noundef !4
  %i.cp = zext i8 %i.co to i32
  %i.cq = add i32 %i.cn, %i.cp
  %..i.1.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %i.cr = tail call i32 @llvm.umin.i32(i32 %..i.1.prol, i32 255)
  %i.cs = trunc nuw i32 %i.cr to i8
  store i8 %i.cs, ptr %i.ck, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader
  %.sroa.518.031.1.unr = phi i64 [ %.sroa.518.031.1.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.preheader ], [ %i.cm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol ]
  %i.ct = icmp eq i64 %.sroa.7.0.copyload.1, %.neg130
  br i1 %i.ct, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1
  %.sroa.518.031.1 = phi i64 [ %i.df, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1 ], [ %.sroa.518.031.1.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.1, i64 %.sroa.518.031.1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.1, i64 %.sroa.518.031.1
  %i.cw = add nuw i64 %.sroa.518.031.1, 1         ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !noundef !4
  %i.cy = load i8, ptr %i.cu, align 1, !noundef !4
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %i.cx, %i.cz
  %..i.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.da, i32 0)
  %i.db = tail call i32 @llvm.umin.i32(i32 %..i.1, i32 255)
  %i.dc = trunc nuw i32 %i.db to i8
  store i8 %i.dc, ptr %i.cu, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.1, i64 %i.cw ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.1, i64 %i.cw
  %i.df = add nuw i64 %.sroa.518.031.1, 2         ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !noundef !4
  %i.dh = load i8, ptr %i.dd, align 1, !noundef !4
  %i.di = zext i8 %i.dh to i32
  %i.dj = add i32 %i.dg, %i.di
  %..i.1.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %i.dk = tail call i32 @llvm.umin.i32(i32 %..i.1.1, i32 255)
  %i.dl = trunc nuw i32 %i.dk to i8
  store i8 %i.dl, ptr %i.dd, align 1
  %exitcond.1.not.1 = icmp eq i64 %i.df, %.sroa.7.0.copyload.1
  br i1 %exitcond.1.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1, !llvm.loop !23

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.1, %middle.block74, %bb.g
  %i.dm = add i64 %i.bh, %5                       ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.do = icmp ugt i64 %i.dm, %1
  br i1 %i.do, label %bb.c, label %bb.h, !prof !5

bb.h:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.1
  %i.dp = sub nuw nsw i64 %1, %i.dm               ; 2 uses
  %i.dq = icmp samesign ugt i64 %i.dp, 3
  br i1 %i.dq, label %bb.i, label %bb.d, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.dn)
  %.sroa.015.0.copyload.2 = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.416.0.copyload.2 = load ptr, ptr %.sroa.416.0..sroa_idx, align 8 ; 7 uses
  %.sroa.518.0.copyload.2 = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload.2 = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.dt = icmp ult i64 %.sroa.518.0.copyload.2, %.sroa.7.0.copyload.2
  br i1 %i.dt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload.2) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.416.0.copyload.2) ]
  %i.du = sub nuw i64 %.sroa.7.0.copyload.2, %.sroa.518.0.copyload.2 ; 3 uses
  %min.iters.check86 = icmp ult i64 %i.du, 8
  br i1 %min.iters.check86, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader, label %vector.memcheck77

vector.memcheck77:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2
  %scevgep78 = getelementptr i8, ptr %.sroa.015.0.copyload.2, i64 %.sroa.518.0.copyload.2
  %scevgep79 = getelementptr i8, ptr %.sroa.015.0.copyload.2, i64 %.sroa.7.0.copyload.2
  %i.dv = shl i64 %.sroa.518.0.copyload.2, 2
  %scevgep80 = getelementptr i8, ptr %.sroa.416.0.copyload.2, i64 %i.dv
  %i.dw = shl i64 %.sroa.7.0.copyload.2, 2
  %scevgep81 = getelementptr i8, ptr %.sroa.416.0.copyload.2, i64 %i.dw
  %bound082 = icmp ult ptr %scevgep78, %scevgep81
  %bound183 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict84 = and i1 %bound082, %bound183
  br i1 %found.conflict84, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck77
  %n.vec88 = and i64 %i.du, -8                    ; 3 uses
  %i.dx = add i64 %.sroa.518.0.copyload.2, %n.vec88
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.dy = add nuw i64 %.sroa.518.0.copyload.2, %index90 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.2, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.2, i64 %i.dy ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load91 = load <4 x i32>, ptr %i.ea, align 4, !alias.scope !38
  %wide.load92 = load <4 x i32>, ptr %i.eb, align 4, !alias.scope !38
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %wide.load93 = load <4 x i8>, ptr %i.dz, align 1, !alias.scope !39, !noalias !38
  %wide.load94 = load <4 x i8>, ptr %i.ec, align 1, !alias.scope !39, !noalias !38
  %i.ed = zext <4 x i8> %wide.load93 to <4 x i32>
  %i.ee = zext <4 x i8> %wide.load94 to <4 x i32>
  %i.ef = add <4 x i32> %wide.load91, %i.ed
  %i.eg = add <4 x i32> %wide.load92, %i.ee
  %i.eh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ef, <4 x i32> zeroinitializer)
  %i.ei = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eg, <4 x i32> zeroinitializer)
  %i.ej = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.eh, <4 x i32> splat (i32 255))
  %i.ek = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ei, <4 x i32> splat (i32 255))
  %i.el = trunc nuw <4 x i32> %i.ej to <4 x i8>
  %i.em = trunc nuw <4 x i32> %i.ek to <4 x i8>
  store <4 x i8> %i.el, ptr %i.dz, align 1, !alias.scope !39, !noalias !38
  store <4 x i8> %i.em, ptr %i.ec, align 1, !alias.scope !39, !noalias !38
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.en = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.en, label %middle.block96, label %vector.body89, !llvm.loop !27

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %i.du, %n.vec88
  br i1 %cmp.n97, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader: ; preds = %vector.memcheck77, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2, %middle.block96
  %.sroa.518.031.2.ph = phi i64 [ %.sroa.518.0.copyload.2, %vector.memcheck77 ], [ %.sroa.518.0.copyload.2, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.2 ], [ %i.dx, %middle.block96 ] ; 6 uses
  %i.eo = sub i64 %.sroa.7.0.copyload.2, %.sroa.518.031.2.ph
  %.neg131 = add i64 %.sroa.518.031.2.ph, 1
  %xtraiter126 = and i64 %i.eo, 1
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.2, i64 %.sroa.518.031.2.ph ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.2, i64 %.sroa.518.031.2.ph
  %i.er = add nuw i64 %.sroa.518.031.2.ph, 1
  %i.es = load i32, ptr %i.eq, align 4, !noundef !4
  %i.et = load i8, ptr %i.ep, align 1, !noundef !4
  %i.eu = zext i8 %i.et to i32
  %i.ev = add i32 %i.es, %i.eu
  %..i.2.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ev, i32 0)
  %i.ew = tail call i32 @llvm.umin.i32(i32 %..i.2.prol, i32 255)
  %i.ex = trunc nuw i32 %i.ew to i8
  store i8 %i.ex, ptr %i.ep, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader
  %.sroa.518.031.2.unr = phi i64 [ %.sroa.518.031.2.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.preheader ], [ %i.er, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol ]
  %i.ey = icmp eq i64 %.sroa.7.0.copyload.2, %.neg131
  br i1 %i.ey, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2
  %.sroa.518.031.2 = phi i64 [ %i.fk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2 ], [ %.sroa.518.031.2.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.2, i64 %.sroa.518.031.2 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.2, i64 %.sroa.518.031.2
  %i.fb = add nuw i64 %.sroa.518.031.2, 1         ; 2 uses
  %i.fc = load i32, ptr %i.fa, align 4, !noundef !4
  %i.fd = load i8, ptr %i.ez, align 1, !noundef !4
  %i.fe = zext i8 %i.fd to i32
  %i.ff = add i32 %i.fc, %i.fe
  %..i.2 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ff, i32 0)
  %i.fg = tail call i32 @llvm.umin.i32(i32 %..i.2, i32 255)
  %i.fh = trunc nuw i32 %i.fg to i8
  store i8 %i.fh, ptr %i.ez, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.2, i64 %i.fb ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.2, i64 %i.fb
  %i.fk = add nuw i64 %.sroa.518.031.2, 2         ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !noundef !4
  %i.fm = load i8, ptr %i.fi, align 1, !noundef !4
  %i.fn = zext i8 %i.fm to i32
  %i.fo = add i32 %i.fl, %i.fn
  %..i.2.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.fo, i32 0)
  %i.fp = tail call i32 @llvm.umin.i32(i32 %..i.2.1, i32 255)
  %i.fq = trunc nuw i32 %i.fp to i8
  store i8 %i.fq, ptr %i.fi, align 1
  %exitcond.2.not.1 = icmp eq i64 %i.fk, %.sroa.7.0.copyload.2
  br i1 %exitcond.2.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2, !llvm.loop !28

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.2, %middle.block96, %bb.i
  %i.fr = add i64 %i.dm, %5                       ; 4 uses
  %i.fs = icmp ugt i64 %i.fr, %1
  br i1 %i.fs, label %bb.c, label %bb.j, !prof !5

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.2
  %i.ft = sub nuw nsw i64 %1, %i.fr               ; 2 uses
  %i.fu = icmp samesign ugt i64 %i.ft, 3
  br i1 %i.fu, label %bb.k, label %bb.d, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.fx)
  %.sroa.015.0.copyload.3 = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.416.0.copyload.3 = load ptr, ptr %.sroa.416.0..sroa_idx, align 8 ; 7 uses
  %.sroa.518.0.copyload.3 = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload.3 = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.fy = icmp ult i64 %.sroa.518.0.copyload.3, %.sroa.7.0.copyload.3
  br i1 %i.fy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload.3) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.416.0.copyload.3) ]
  %i.fz = sub nuw i64 %.sroa.7.0.copyload.3, %.sroa.518.0.copyload.3 ; 3 uses
  %min.iters.check108 = icmp ult i64 %i.fz, 8
  br i1 %min.iters.check108, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader, label %vector.memcheck99

vector.memcheck99:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3
  %scevgep100 = getelementptr i8, ptr %.sroa.015.0.copyload.3, i64 %.sroa.518.0.copyload.3
  %scevgep101 = getelementptr i8, ptr %.sroa.015.0.copyload.3, i64 %.sroa.7.0.copyload.3
  %i.ga = shl i64 %.sroa.518.0.copyload.3, 2
  %scevgep102 = getelementptr i8, ptr %.sroa.416.0.copyload.3, i64 %i.ga
  %i.gb = shl i64 %.sroa.7.0.copyload.3, 2
  %scevgep103 = getelementptr i8, ptr %.sroa.416.0.copyload.3, i64 %i.gb
  %bound0104 = icmp ult ptr %scevgep100, %scevgep103
  %bound1105 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck99
  %n.vec110 = and i64 %i.fz, -8                   ; 3 uses
  %i.gc = add i64 %.sroa.518.0.copyload.3, %n.vec110
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %i.gd = add nuw i64 %.sroa.518.0.copyload.3, %index112 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.3, i64 %i.gd ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.3, i64 %i.gd ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load113 = load <4 x i32>, ptr %i.gf, align 4, !alias.scope !40
  %wide.load114 = load <4 x i32>, ptr %i.gg, align 4, !alias.scope !40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %wide.load115 = load <4 x i8>, ptr %i.ge, align 1, !alias.scope !41, !noalias !40
  %wide.load116 = load <4 x i8>, ptr %i.gh, align 1, !alias.scope !41, !noalias !40
  %i.gi = zext <4 x i8> %wide.load115 to <4 x i32>
  %i.gj = zext <4 x i8> %wide.load116 to <4 x i32>
  %i.gk = add <4 x i32> %wide.load113, %i.gi
  %i.gl = add <4 x i32> %wide.load114, %i.gj
  %i.gm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gk, <4 x i32> zeroinitializer)
  %i.gn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gl, <4 x i32> zeroinitializer)
  %i.go = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gm, <4 x i32> splat (i32 255))
  %i.gp = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gn, <4 x i32> splat (i32 255))
  %i.gq = trunc nuw <4 x i32> %i.go to <4 x i8>
  %i.gr = trunc nuw <4 x i32> %i.gp to <4 x i8>
  store <4 x i8> %i.gq, ptr %i.ge, align 1, !alias.scope !41, !noalias !40
  store <4 x i8> %i.gr, ptr %i.gh, align 1, !alias.scope !41, !noalias !40
  %index.next117 = add nuw i64 %index112, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.gs, label %middle.block118, label %vector.body111, !llvm.loop !32

middle.block118:                                  ; preds = %vector.body111
  %cmp.n119 = icmp eq i64 %i.fz, %n.vec110
  br i1 %cmp.n119, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader: ; preds = %vector.memcheck99, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3, %middle.block118
  %.sroa.518.031.3.ph = phi i64 [ %.sroa.518.0.copyload.3, %vector.memcheck99 ], [ %.sroa.518.0.copyload.3, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.lr.ph.3 ], [ %i.gc, %middle.block118 ] ; 6 uses
  %i.gt = sub i64 %.sroa.7.0.copyload.3, %.sroa.518.031.3.ph
  %.neg132 = add i64 %.sroa.518.031.3.ph, 1
  %xtraiter128 = and i64 %i.gt, 1
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.3, i64 %.sroa.518.031.3.ph ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.3, i64 %.sroa.518.031.3.ph
  %i.gw = add nuw i64 %.sroa.518.031.3.ph, 1
  %i.gx = load i32, ptr %i.gv, align 4, !noundef !4
  %i.gy = load i8, ptr %i.gu, align 1, !noundef !4
  %i.gz = zext i8 %i.gy to i32
  %i.ha = add i32 %i.gx, %i.gz
  %..i.3.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ha, i32 0)
  %i.hb = tail call i32 @llvm.umin.i32(i32 %..i.3.prol, i32 255)
  %i.hc = trunc nuw i32 %i.hb to i8
  store i8 %i.hc, ptr %i.gu, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader
  %.sroa.518.031.3.unr = phi i64 [ %.sroa.518.031.3.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.preheader ], [ %i.gw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol ]
  %i.hd = icmp eq i64 %.sroa.7.0.copyload.3, %.neg132
  br i1 %i.hd, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3
  %.sroa.518.031.3 = phi i64 [ %i.hp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3 ], [ %.sroa.518.031.3.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.3, i64 %.sroa.518.031.3 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.3, i64 %.sroa.518.031.3
  %i.hg = add nuw i64 %.sroa.518.031.3, 1         ; 2 uses
  %i.hh = load i32, ptr %i.hf, align 4, !noundef !4
  %i.hi = load i8, ptr %i.he, align 1, !noundef !4
  %i.hj = zext i8 %i.hi to i32
  %i.hk = add i32 %i.hh, %i.hj
  %..i.3 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.hk, i32 0)
  %i.hl = tail call i32 @llvm.umin.i32(i32 %..i.3, i32 255)
  %i.hm = trunc nuw i32 %i.hl to i8
  store i8 %i.hm, ptr %i.he, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.3, i64 %i.hg ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.416.0.copyload.3, i64 %i.hg
  %i.hp = add nuw i64 %.sroa.518.031.3, 2         ; 2 uses
  %i.hq = load i32, ptr %i.ho, align 4, !noundef !4
  %i.hr = load i8, ptr %i.hn, align 1, !noundef !4
  %i.hs = zext i8 %i.hr to i32
  %i.ht = add i32 %i.hq, %i.hs
  %..i.3.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hu = tail call i32 @llvm.umin.i32(i32 %..i.3.1, i32 255)
  %i.hv = trunc nuw i32 %i.hu to i8
  store i8 %i.hv, ptr %i.hn, align 1
  %exitcond.3.not.1 = icmp eq i64 %i.hp, %.sroa.7.0.copyload.3
  br i1 %exitcond.3.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3, !llvm.loop !33

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread.3: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.3, %middle.block118, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsksn9slvsHfS_10image_webp3vp811edge_pixels(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(9) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 14) %3, i64 noundef range(i64 1, 14) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %4, -1
  %i.b = mul i64 %i.a, %5
  %i.c = add i64 %i.b, %3                         ; 3 uses
  %i.d = add i64 %i.c, -1                         ; 7 uses
  %i.e = add i64 %i.c, 3                          ; 2 uses
  %i.f = icmp ult i64 %i.e, %2
  br i1 %i.f, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.c, 4                      ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.c, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.03.0.i = phi i64 [ %i.e, %bb.a ], [ %i.g, %bb.b ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13, !noalias !45
  unreachable

_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.b
  %i.i = shl i64 %5, 2
  %i.j = add i64 %i.d, %i.i                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !noundef !4
  %i.n = mul i64 %5, 3
  %i.o = add i64 %i.d, %i.n                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %2
  br i1 %i.p, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.r = load i8, ptr %i.q, align 1, !noundef !4
  %i.s = shl i64 %5, 1
  %i.t = add i64 %i.d, %i.s                       ; 3 uses
  %i.u = icmp ult i64 %i.t, %2
  br i1 %i.u, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = add i64 %i.d, %5                         ; 3 uses
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.y = load i8, ptr %i.x, align 1, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4
  store i8 %i.m, ptr %0, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.r, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.y, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ab, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load <4 x i8>, ptr %i.z, align 1
  store <4 x i8> %i.ai, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ad, ptr %i.aj, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvNtCsksn9slvsHfS_10image_webp3vp811left_pixels(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 1, 14) %2, i64 noundef range(i64 1, 14) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = mul i64 %4, %3
  %i.b = add nsw i64 %2, -1                       ; 4 uses
  %i.c = add i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.f = load i8, ptr %i.e, align 1, !noundef !4
  %i.g = add nuw nsw i64 %3, 1
  %i.h = mul i64 %i.g, %4
  %i.i = add i64 %i.b, %i.h                       ; 3 uses
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !noundef !4
  %i.m = add nuw nsw i64 %3, 2
  %i.n = mul i64 %i.m, %4
  %i.o = add i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %1
  br i1 %i.p, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = add nuw nsw i64 %3, 3
  %i.r = mul i64 %i.q, %4
  %i.s = add i64 %i.b, %i.r                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %1
  br i1 %i.t, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.v = load i8, ptr %i.u, align 1, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.x = load i8, ptr %i.w, align 1, !noundef !4
  %.sroa.4.0.insert.ext = zext i8 %i.x to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 24
  %.sroa.3.0.insert.ext = zext i8 %i.v to i32
  %.sroa.3.0.insert.shift = shl nuw nsw i32 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.l to i32
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %.sroa.2.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %i.f to i32
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, %.sroa.3.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.4.0.insert.shift
  ret i32 %.sroa.0.0.insert.insert
end_hunk_0
begin_hunk_1_@_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred:bb.a
bb.e:                                             ; preds = %.lr.ph40
  %i.ag = sub nuw nsw i64 %1, %i.ae               ; 2 uses
  %.not = icmp ugt i64 %2, %i.ag
  br i1 %.not, label %bb.g, label %.lr.ph.i, !prof !11

bb.f:                                             ; preds = %.lr.ph40
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph.i:                                         ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ah, i8 %storemerge, i64 %2, i1 false), !alias.scope !139, !noalias !140
  %exitcond52.not = icmp eq i64 %i.ac, %2
  br i1 %exitcond52.not, label %._crit_edge41, label %.lr.ph40

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = zext i8 %i.aj to i32
  %i.al = add i32 %.sroa.0.138, %i.ak             ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = mul i64 %5, %4
  %i.c = add i64 %3, -1
  %i.d = add i64 %i.c, %i.b                       ; 8 uses
  %.not.i = icmp ugt i64 %i.d, %1
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13, !noalias !156
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 3 uses
  %i.f = sub nuw nsw i64 %1, %i.d                 ; 3 uses
  %i.g = add i64 %4, -1
  %i.h = mul i64 %i.g, %5
  %i.i = add i64 %i.h, %3                         ; 4 uses
  %i.j = add i64 %i.i, -1                         ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !noundef !4
  %i.n = zext i8 %i.m to i32
  %i.o = icmp samesign ugt i64 %i.i, %i.d
  br i1 %i.o, label %bb.f, label %bb.e, !prof !5

bb.d:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #13
  unreachable

._crit_edge:                                      ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, %bb.e
  ret void

bb.g:                                             ; preds = %.lr.ph, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit
  %.sroa.01.018 = phi i64 [ 0, %.lr.ph ], [ %i.t, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit ] ; 2 uses
  %i.t = add nuw i64 %.sroa.01.018, 1             ; 2 uses
  %i.u = mul i64 %.sroa.01.018, %5                ; 4 uses
  %i.v = icmp ult i64 %i.u, %i.f
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !noundef !4
  %i.y = zext i8 %i.x to i32
  %i.z = sub nsw i32 %i.y, %i.n                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = add nuw nsw i64 %i.u, 1                 ; 2 uses
  %i.ab = sub nuw nsw i64 %i.f, %i.aa             ; 2 uses
  %.not = icmp ugt i64 %2, %i.ab
  br i1 %.not, label %bb.j, label %bb.k, !prof !11

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #13
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull readonly %i.p, ptr noundef nonnull readonly %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %.val.i = load i64, ptr %i.q, align 8, !alias.scope !157, !noalias !158, !noundef !4 ; 9 uses
  %.val6.i = load i64, ptr %i.r, align 8, !alias.scope !157, !noalias !158, !noundef !4 ; 4 uses
  %i.ae = sub i64 %.val6.i, %.val.i               ; 8 uses
  %.not.i14 = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i14, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !159, !noalias !158, !nonnull !4, !noundef !4 ; 6 uses
  %.val1.i.i = load ptr, ptr %i.s, align 8, !alias.scope !159, !noalias !158, !nonnull !4, !noundef !4 ; 6 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  %.val1.i.i44 = ptrtoaddr ptr %.val1.i.i to i64
  %.val.i.i43 = ptrtoaddr ptr %.val.i.i to i64
  %i.af = sub i64 %.val1.i.i44, %.val.i.i43
  %diff.check = icmp ugt i64 %i.af, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp ult i64 %i.ae, 16
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add i64 %index, %.val.i                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.ah
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !noalias !160
  %i.ak = zext <16 x i8> %wide.load to <16 x i32>
  %i.al = add nsw <16 x i32> %broadcast.splat, %i.ak
  %i.am = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.al, <16 x i32> zeroinitializer)
  %i.an = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.am, <16 x i32> splat (i32 255))
  %i.ao = trunc nuw <16 x i32> %i.an to <16 x i8>
  store <16 x i8> %i.ao, ptr %i.ai, align 1, !alias.scope !161, !noalias !160
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !162

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.ae, -4                    ; 3 uses
  %broadcast.splatinsert47 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat48 = shufflevector <4 x i32> %broadcast.splatinsert47, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = add i64 %index49, %.val.i               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.aq
  %wide.load50 = load <4 x i8>, ptr %i.as, align 1, !noalias !160
  %i.at = zext <4 x i8> %wide.load50 to <4 x i32>
  %i.au = add nsw <4 x i32> %broadcast.splat48, %i.at
  %i.av = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.au, <4 x i32> zeroinitializer)
  %i.aw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.av, <4 x i32> splat (i32 255))
  %i.ax = trunc nuw <4 x i32> %i.aw to <4 x i8>
  store <4 x i8> %i.ax, ptr %i.ar, align 1, !alias.scope !161, !noalias !160
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.ae, %n.vec46
  br i1 %cmp.n52, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 4 uses
  %i.az = sub i64 %.val6.i, %.val.i
  %i.ba = xor i64 %.sroa.0.010.i.ph, -1
  %i.bb = add i64 %.val6.i, %i.ba
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bc = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.bd = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.bd
  %.val8.i.prol = load i8, ptr %i.bf, align 1, !noalias !160, !noundef !4
  %i.bg = zext i8 %.val8.i.prol to i32
  %i.bh = add nsw i32 %i.z, %i.bg
  %..i.i.i.i.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bi = tail call i32 @llvm.umin.i32(i32 %..i.i.i.i.prol, i32 255)
  %i.bj = trunc nuw i32 %i.bi to i8
  store i8 %i.bj, ptr %i.be, align 1, !alias.scope !161, !noalias !160
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bc, %vec.epilog.scalar.ph.prol ]
  %i.bk = icmp eq i64 %i.bb, %.val.i
  br i1 %i.bk, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.bs, %vec.epilog.scalar.ph ] ; 3 uses
  %i.bl = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.bl
  %.val8.i = load i8, ptr %i.bn, align 1, !noalias !160, !noundef !4
  %i.bo = zext i8 %.val8.i to i32
  %i.bp = add nsw i32 %i.z, %i.bo
  %..i.i.i.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %i.bq = tail call i32 @llvm.umin.i32(i32 %..i.i.i.i, i32 255)
  %i.br = trunc nuw i32 %i.bq to i8
  store i8 %i.br, ptr %i.bm, align 1, !alias.scope !161, !noalias !160
  %i.bs = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.reass
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %.reass
  %.val8.i.1 = load i8, ptr %i.bu, align 1, !noalias !160, !noundef !4
  %i.bv = zext i8 %.val8.i.1 to i32
  %i.bw = add nsw i32 %i.z, %i.bv
  %..i.i.i.i.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.bx = tail call i32 @llvm.umin.i32(i32 %..i.i.i.i.1, i32 255)
  %i.by = trunc nuw i32 %i.bx to i8
  store i8 %i.by, ptr %i.bt, align 1, !alias.scope !161, !noalias !160
  %exitcond.not.i.1 = icmp eq i64 %i.bs, %i.ae
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.scalar.ph, !llvm.loop !155

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond.not = icmp eq i64 %i.t, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = icmp samesign ugt i64 %5, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 8, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  store i8 %i.d, ptr %0, align 1
  %i.e = icmp samesign ugt i64 %1, 8
  br i1 %i.e, label %.preheader, label %bb.f, !prof !6

.preheader:                                       ; preds = %bb.d
  %exitcond.not = icmp samesign ult i64 %5, 18
  br i1 %exitcond.not, label %bb.s, label %bb.k

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nsw i64 %1, -1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #13
  unreachable

bb.g:                                             ; preds = %bb.r
  %i.g = sub nuw nsw i64 %3, %i.bp                ; 2 uses
  %i.h = icmp samesign ugt i64 %i.g, 7
  br i1 %i.h, label %bb.j, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #13
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 81
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly %i.l)
  %.sroa.021.0.copyload = load ptr, ptr %i.a, align 8 ; 9 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8 ; 9 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.524.0.copyload = load i64, ptr %.sroa.524.0..sroa_idx, align 8 ; 7 uses
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.725.0.copyload = load i64, ptr %.sroa.725.0..sroa_idx, align 8 ; 5 uses
  %i.m = icmp ult i64 %.sroa.524.0.copyload, %.sroa.725.0.copyload
  br i1 %i.m, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread

iter.check:                                       ; preds = %bb.j
  %.sroa.422.0.copyload57 = ptrtoaddr ptr %.sroa.422.0.copyload to i64
  %.sroa.021.0.copyload56 = ptrtoaddr ptr %.sroa.021.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.422.0.copyload) ]
  %i.n = sub nuw i64 %.sroa.725.0.copyload, %.sroa.524.0.copyload ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 8
  %i.o = sub i64 %.sroa.422.0.copyload57, %.sroa.021.0.copyload56
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check58 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.n, 24
  %n.vec = and i64 %i.n, -32                      ; 4 uses
  %i.q = add i64 %.sroa.524.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = add nuw i64 %.sroa.524.0.copyload, %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <16 x i8>, ptr %i.t, align 1
  %wide.load59 = load <16 x i8>, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <16 x i8> %wide.load, ptr %i.s, align 1
  store <16 x i8> %wide.load59, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.n, -8                     ; 3 uses
  %i.x = add i64 %.sroa.524.0.copyload, %n.vec60
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %i.y = add nuw i64 %.sroa.524.0.copyload, %index61 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %i.y
  %wide.load62 = load <8 x i8>, ptr %i.aa, align 1
  store <8 x i8> %wide.load62, ptr %i.z, align 1
  %index.next63 = add nuw i64 %index61, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next63, %n.vec60
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !164

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %i.n, %n.vec60
  br i1 %cmp.n64, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.524.039.ph = phi i64 [ %.sroa.524.0.copyload, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 4 uses
  %i.ac = sub i64 %.sroa.725.0.copyload, %.sroa.524.039.ph
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol
  %.sroa.524.039.prol = phi i64 [ %i.af, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ %.sroa.524.039.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %.sroa.524.039.prol
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.sroa.524.039.prol
  %i.af = add nuw i64 %.sroa.524.039.prol, 1      ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !noundef !4
end_hunk_1
