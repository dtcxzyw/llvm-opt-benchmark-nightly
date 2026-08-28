Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_:bb.a
  %i.gf = icmp eq i64 %.sroa.16.0124286, %.neg372
  br i1 %i.gf, label %.lr.ph45.i56.epil.preheader, label %.lr.ph45.i56.preheader.new

.lr.ph45.i56.preheader.new:                       ; preds = %.lr.ph45.i56.preheader
  %unroll_iter370 = and i64 %i.gd, -2
  br label %.lr.ph45.i56

.lr.ph45.i56:                                     ; preds = %.lr.ph45.i56, %.lr.ph45.i56.preheader.new
  %.sroa.07.043.i57 = phi i64 [ 0, %.lr.ph45.i56.preheader.new ], [ %i.gj, %.lr.ph45.i56 ] ; 5 uses
  %niter371 = phi i64 [ 0, %.lr.ph45.i56.preheader.new ], [ %niter371.next.1, %.lr.ph45.i56 ]
  %i.gg = xor i64 %.sroa.07.043.i57, -1
  %i.gh = getelementptr [16 x i8], ptr %i.dr, i64 %i.gg
  %i.gi = getelementptr [16 x i8], ptr %i.ge, i64 %.sroa.07.043.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false), !alias.scope !1365
  %i.gj = add nuw i64 %.sroa.07.043.i57, 2        ; 2 uses
  %i.gk = xor i64 %.sroa.07.043.i57, -2
  %i.gl = getelementptr [16 x i8], ptr %i.dr, i64 %i.gk
  %i.gm = getelementptr [16 x i8], ptr %i.ge, i64 %.sroa.07.043.i57
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i64 16, i1 false), !alias.scope !1365
  %niter371.next.1 = add i64 %niter371, 2         ; 2 uses
  %niter371.ncmp.1 = icmp eq i64 %niter371.next.1, %unroll_iter370
  br i1 %niter371.ncmp.1, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa, label %.lr.ph45.i56

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa: ; preds = %.lr.ph45.i56
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit, label %.lr.ph45.i56.epil.preheader

.lr.ph45.i56.epil.preheader:                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa, %.lr.ph45.i56.preheader
  %.sroa.07.043.i57.epil.init = phi i64 [ 0, %.lr.ph45.i56.preheader ], [ %i.gj, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod369 = trunc i64 %i.gd to i1
  call void @llvm.assume(i1 %lcmp.mod369)
  %i.go = xor i64 %.sroa.07.043.i57.epil.init, -1
  %i.gp = getelementptr [16 x i8], ptr %i.dr, i64 %i.go
  %i.gq = getelementptr [16 x i8], ptr %i.ge, i64 %.sroa.07.043.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !alias.scope !1365
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa, %.lr.ph45.i56.epil.preheader
  %i.gr = icmp ugt i64 %.sroa.27.2.lcssa.i53, %.sroa.16.0124286
  br i1 %i.gr, label %bb.y, label %.outer, !prof !161

.outer.thread:                                    ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gt = icmp ult i64 %i.gd, 33
  br i1 %i.gt, label %.outer._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i53, i64 noundef %.sroa.16.0124286, i64 noundef %.sroa.16.0124286, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #40
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph19

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit, %bb.a
  ret void

.lr.ph19:                                         ; preds = %bb.a, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit
  %.sroa.2.018 = phi i64 [ %i.c, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.018, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph19
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph19
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSy14swap_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i14 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i14, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.h = phi i64 [ %i.u, %bb.g ], [ %i.g, %bb.d ] ; 3 uses
  %i.i = phi i64 [ %i.t, %bb.g ], [ %i.f, %bb.d ]
  %.sroa.0.0.i15 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %.val = load i64, ptr %i.l, align 8, !alias.scope !1209, !noalias !1212, !noundef !12
  %.val11 = load i64, ptr %i.m, align 8, !alias.scope !1212, !noalias !1209, !noundef !12
  %i.n = icmp ult i64 %.val, %.val11
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.h, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.p, %bb.e ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0.i15 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val12 = load i64, ptr %i.q, align 8, !alias.scope !1209, !noalias !1212, !noundef !12
  %.val13 = load i64, ptr %i.r, align 8, !alias.scope !1212, !noalias !1209, !noundef !12
  %i.s = icmp ult i64 %.val12, %.val13
  br i1 %i.s, label %bb.g, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef 1)
  %i.t = shl nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.u = or disjoint i64 %i.t, 1                  ; 2 uses
  %.not.i = icmp samesign ult i64 %i.u, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downyNvYyNtNtBa_3cmp10PartialOrd2ltECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !59, !alias.scope !1384, !noundef !12 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1384
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !1384
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1384
  %i.j = load i64, ptr %i.a, align 8, !range !199, !noalias !1384, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !1387, !noalias !1384, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !1384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1384
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #36
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !1384, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1384
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !1384
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1384
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3ops5range5RangejENCNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur15boxes_for_gauss0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2H_8for_each4calljNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3U_3VecjE14extend_trustedBN_E0E0EB1B_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1388, !noalias !1391, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1388, !noalias !1391, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1391, !noalias !1388 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1391, !noalias !1388 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1391, !noalias !1388
  %.sroa.7.24.copyload.i = load ptr, ptr %0, align 8, !alias.scope !1388, !noalias !1391 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur15boxes_for_gauss0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldjjuNCB1r_s_0NCINvNvB2t_8for_each4calljNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB49_3VecjE14extend_trustedIBO_BN_B3r_EE0E0E0EB1x_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.10.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i64, ptr %.sroa.10.24..sroa_idx.i, align 8, !alias.scope !1388, !noalias !1391
  %.sroa.9.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i64, ptr %.sroa.9.24..sroa_idx.i, align 8, !alias.scope !1388, !noalias !1391
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.24.copyload.i) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.f = phi i64 [ %.sroa.4.0.copyload.i, %.lr.ph.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %.sroa.0.010.i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i.i, 1          ; 2 uses
  %i.h = load i64, ptr %.sroa.7.24.copyload.i, align 8, !noalias !1393, !noundef !12
  %i.i = icmp ult i64 %.sroa.0.010.i.i, %i.h
  %.sroa.speculated.v.i = select i1 %i.i, i64 %3, i64 %2
  %.sroa.speculated.i = inttoptr i64 %.sroa.speculated.v.i to ptr
  %i.j = load float, ptr %.sroa.speculated.i, align 4, !noalias !1393, !noundef !12
  %i.k = tail call noundef i64 @llvm.fptoui.sat.i64.f32(float %i.j)
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 1)
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.0.i.i.i.i.i = or i64 %i.m, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.f
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.n, align 8, !noalias !1400
  %i.o = add i64 %i.f, 1                          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.g, %i.d
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur15boxes_for_gauss0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldjjuNCB1r_s_0NCINvNvB2t_8for_each4calljNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB49_3VecjE14extend_trustedIBO_BN_B3r_EE0E0E0EB1x_.exit, label %bb.b

_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur15boxes_for_gauss0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldjjuNCB1r_s_0NCINvNvB2t_8for_each4calljNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB49_3VecjE14extend_trustedIBO_BN_B3r_EE0E0E0EB1x_.exit: ; preds = %bb.b, %bb.a
  %.val6.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.o, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val6.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !1407
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEENCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB1N_6images6bufferINtB2A_11ImageBufferINtNtB1N_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvMsg_NtB8_7flattenINtB5p_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_3zip3ZipIBO_IB1e_hENCNCB1I_00EINtNtNtBa_7sources6repeat6RepeatjEEjINtNtB1i_12control_flow11ControlFlowujEINvNvXsi_B5p_B5C_B4w_10advance_by7advanceB6o_EE0B7A_EB1N_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef nonnull %2, ptr noalias nofree noundef align 8 dereferenceable(40) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.d, align 8
  %i.e = call { i64, i64 } @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range5RangejEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNtB7_3map12map_try_foldjINtNtB7_3zip3ZipINtB2c_3MapIBX_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB3g_6images6bufferINtB43_11ImageBufferINtNtB3g_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB9_7sources6repeat6RepeatjEEjINtNtB11_12control_flow11ControlFlowujENCB3b_0NCINvNvMsg_NtB7_7flattenINtB7v_13FlattenCompatppE13iter_try_fold7flattenB2A_jB6A_INvNvXsi_B7v_B7I_B1p_10advance_by7advanceB2A_EE0E0B6A_EB3g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterfEENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1V_7CicpRgb32subpixel_cast_luma_to_luma_alphaffE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenAfj2_uNCINvNvXsi_B4d_B4q_B3o_4fold7flattenINtNtNtBc_5array4iter8IntoIterfKB59_EuNCINvNvB3o_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6Y_3VecfE14extend_trustedINtB4d_7FlatMapBX_B57_B1M_EE0E0E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldfAfj2_uNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2M_7CicpRgb32subpixel_cast_luma_to_luma_alphaffE0NCINvNvMsg_NtB7_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2x_uNCINvNvXsi_B4p_B4C_B1v_4fold7flattenINtNtNtBb_5array4iter8IntoIterfKB2z_EuNCINvNvB1v_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB79_3VecfE14extend_trustedINtB4p_7FlatMapBP_B2x_B2D_EE0E0E0E0E0EB2Q_(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterfEENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1V_7CicpRgb32subpixel_cast_luma_to_luma_alphafhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenAhj2_uNCINvNvXsi_B4d_B4q_B3o_4fold7flattenINtNtNtBc_5array4iter8IntoIterhKB59_EuNCINvNvB3o_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6Y_3VechE14extend_trustedINtB4d_7FlatMapBX_B57_B1M_EE0E0E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldfAhj2_uNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2M_7CicpRgb32subpixel_cast_luma_to_luma_alphafhE0NCINvNvMsg_NtB7_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2x_uNCINvNvXsi_B4p_B4C_B1v_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKB2z_EuNCINvNvB1v_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB79_3VechE14extend_trustedINtB4p_7FlatMapBP_B2x_B2D_EE0E0E0E0E0EB2Q_(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterfEENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1V_7CicpRgb32subpixel_cast_luma_to_luma_alphaftE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenAtj2_uNCINvNvXsi_B4d_B4q_B3o_4fold7flattenINtNtNtBc_5array4iter8IntoItertKB59_EuNCINvNvB3o_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6Y_3VectE14extend_trustedINtB4d_7FlatMapBX_B57_B1M_EE0E0E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldfAtj2_uNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2M_7CicpRgb32subpixel_cast_luma_to_luma_alphaftE0NCINvNvMsg_NtB7_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2x_uNCINvNvXsi_B4p_B4C_B1v_4fold7flattenINtNtNtBb_5array4iter8IntoItertKB2z_EuNCINvNvB1v_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB79_3VectE14extend_trustedINtB4p_7FlatMapBP_B2x_B2D_EE0E0E0E0E0EB2Q_(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterfEENvYfINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB46_3VecfE14extend_trustedBN_E0E0EB1V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldffuNvYfINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveNCINvNvB1v_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4e_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterfEENvYhINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB46_3VechE14extend_trustedBN_E0E0EB1V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldfhuNvYhINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveNCINvNvB1v_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4e_3VechE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterfEENvYtINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB46_3VectE14extend_trustedBN_E0E0EB1V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldftuNvYtINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivefE14from_primitiveNCINvNvB1v_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4e_3VectE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1V_7CicpRgb32subpixel_cast_luma_to_luma_alphahfE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenAfj2_uNCINvNvXsi_B4d_B4q_B3o_4fold7flattenINtNtNtBc_5array4iter8IntoIterfKB59_EuNCINvNvB3o_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6Y_3VecfE14extend_trustedINtB4d_7FlatMapBX_B57_B1M_EE0E0E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhAfj2_uNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2M_7CicpRgb32subpixel_cast_luma_to_luma_alphahfE0NCINvNvMsg_NtB7_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2x_uNCINvNvXsi_B4p_B4C_B1v_4fold7flattenINtNtNtBb_5array4iter8IntoIterfKB2z_EuNCINvNvB1v_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB79_3VecfE14extend_trustedINtB4p_7FlatMapBP_B2x_B2D_EE0E0E0E0E0EB2Q_(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1V_7CicpRgb32subpixel_cast_luma_to_luma_alphahhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenAhj2_uNCINvNvXsi_B4d_B4q_B3o_4fold7flattenINtNtNtBc_5array4iter8IntoIterhKB59_EuNCINvNvB3o_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6Y_3VechE14extend_trustedINtB4d_7FlatMapBX_B57_B1M_EE0E0E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhAhj2_uNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2M_7CicpRgb32subpixel_cast_luma_to_luma_alphahhE0NCINvNvMsg_NtB7_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2x_uNCINvNvXsi_B4p_B4C_B1v_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKB2z_EuNCINvNvB1v_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB79_3VechE14extend_trustedINtB4p_7FlatMapBP_B2x_B2D_EE0E0E0E0E0EB2Q_(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1V_7CicpRgb32subpixel_cast_luma_to_luma_alphahtE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenAtj2_uNCINvNvXsi_B4d_B4q_B3o_4fold7flattenINtNtNtBc_5array4iter8IntoItertKB59_EuNCINvNvB3o_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6Y_3VectE14extend_trustedINtB4d_7FlatMapBX_B57_B1M_EE0E0E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhAtj2_uNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2M_7CicpRgb32subpixel_cast_luma_to_luma_alphahtE0NCINvNvMsg_NtB7_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2x_uNCINvNvXsi_B4p_B4C_B1v_4fold7flattenINtNtNtBb_5array4iter8IntoItertKB2z_EuNCINvNvB1v_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB79_3VectE14extend_trustedINtB4p_7FlatMapBP_B2x_B2D_EE0E0E0E0E0EB2Q_(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENCNCINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB1X_5Entry3valINtNtNtBc_2io6cursor6CursorRShEEs0_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callNtB1X_5ValueNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4M_3VecB4r_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2z_NtB2z_5Entry3valINtNtNtBb_2io6cursor6CursorRShEEs0_00NCINvNvB1v_8for_each4callB2x_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4X_3VecB2x_E14extend_trustedINtB2e_3MapBP_B3f_EE0E0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENcNtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5Value4Byte0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2E_8for_each4callB1Q_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3U_3VecB3H_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNcNtB2x_4Byte0NCINvNvB1v_8for_each4callB2x_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB45_3VecB2x_E14extend_trustedINtB2e_3MapBP_B3f_EE0E0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYfINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB46_3VecfE14extend_trustedBN_E0E0EB1V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhfuNvYfINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveNCINvNvB1v_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4e_3VecfE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYhINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB46_3VechE14extend_trustedBN_E0E0EB1V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhhuNvYhINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveNCINvNvB1v_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4e_3VechE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYtINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB46_3VectE14extend_trustedBN_E0E0EB1V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhtuNvYtINtNtCsa5QsYiPB8Gl_5image5color13FromPrimitivehE14from_primitiveNCINvNvB1v_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4e_3VectE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0EB2I_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItertEENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1V_7CicpRgb32subpixel_cast_luma_to_luma_alphatfE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenAfj2_uNCINvNvXsi_B4d_B4q_B3o_4fold7flattenINtNtNtBc_5array4iter8IntoIterfKB59_EuNCINvNvB3o_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6Y_3VecfE14extend_trustedINtB4d_7FlatMapBX_B57_B1M_EE0E0E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldtAfj2_uNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2M_7CicpRgb32subpixel_cast_luma_to_luma_alphatfE0NCINvNvMsg_NtB7_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2x_uNCINvNvXsi_B4p_B4C_B1v_4fold7flattenINtNtNtBb_5array4iter8IntoIterfKB2z_EuNCINvNvB1v_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB79_3VecfE14extend_trustedINtB4p_7FlatMapBP_B2x_B2D_EE0E0E0E0E0EB2Q_(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItertEENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1V_7CicpRgb32subpixel_cast_luma_to_luma_alphathE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenAhj2_uNCINvNvXsi_B4d_B4q_B3o_4fold7flattenINtNtNtBc_5array4iter8IntoIterhKB59_EuNCINvNvB3o_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6Y_3VechE14extend_trustedINtB4d_7FlatMapBX_B57_B1M_EE0E0E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldtAhj2_uNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2M_7CicpRgb32subpixel_cast_luma_to_luma_alphathE0NCINvNvMsg_NtB7_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2x_uNCINvNvXsi_B4p_B4C_B1v_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKB2z_EuNCINvNvB1v_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB79_3VechE14extend_trustedINtB4p_7FlatMapBP_B2x_B2D_EE0E0E0E0E0EB2Q_(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItertEENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1V_7CicpRgb32subpixel_cast_luma_to_luma_alphattE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenAtj2_uNCINvNvXsi_B4d_B4q_B3o_4fold7flattenINtNtNtBc_5array4iter8IntoItertKB59_EuNCINvNvB3o_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6Y_3VectE14extend_trustedINtB4d_7FlatMapBX_B57_B1M_EE0E0E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  tail call void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldtAtj2_uNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2M_7CicpRgb32subpixel_cast_luma_to_luma_alphattE0NCINvNvMsg_NtB7_7flattenINtB4p_13FlattenCompatppE9iter_fold7flattenB2x_uNCINvNvXsi_B4p_B4C_B1v_4fold7flattenINtNtNtBb_5array4iter8IntoItertKB2z_EuNCINvNvB1v_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB79_3VectE14extend_trustedINtB4p_7FlatMapBP_B2x_B2D_EE0E0E0E0E0EB2Q_(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
