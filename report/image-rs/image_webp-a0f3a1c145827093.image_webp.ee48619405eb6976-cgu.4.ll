Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.4?download=true
inline.NumInlined: 129
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTjmENCINvMB8_SB19_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1U_:.lr.ph.i
  %i.ds = getelementptr i8, ptr %i.di, i64 8
  %.sroa.06.0.val.i.3 = load i32, ptr %i.ds, align 8, !alias.scope !17, !noundef !6
  %i.dt = icmp ult i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 3 uses
  %..i21.i.3 = select i1 %i.dt, ptr %i.dg, ptr %i.di
  %i.du = xor i1 %i.dt, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.3, i64 16, i1 false), !noalias !20
  %i.dv = zext i1 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dv
  %i.dx = zext i1 %i.du to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.do, i64 8
  %.sroa.017.0.val.i.3 = load i32, ptr %i.dz, align 8, !alias.scope !17, !noundef !6
  %i.ea = getelementptr i8, ptr %i.dp, i64 8
  %.sroa.015.0.val.i.3 = load i32, ptr %i.ea, align 8, !alias.scope !17, !noundef !6
  %i.eb = icmp ult i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 3 uses
  %..i.i.3 = select i1 %i.eb, ptr %i.dp, ptr %i.do
  %i.ec = xor i1 %i.eb, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !24
  %.neg.i.i.3 = sext i1 %i.ec to i64
  %i.ed = getelementptr [16 x i8], ptr %i.do, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.eb to i64
  %i.ee = getelementptr [16 x i8], ptr %i.dp, i64 %.neg13.i.i.3
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %i.eg = getelementptr i8, ptr %i.ed, i64 16
  %i.eh = icmp ne ptr %i.dy, %i.ef
  %i.ei = icmp ne ptr %i.dw, %i.eg
  %or.cond.i = select i1 %i.eh, i1 true, i1 %i.ei, !prof !28
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTjmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB21_.exit, !prof !28

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #26, !noalias !17
  unreachable

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTjmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB21_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjmENCINvMB8_SB1m_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB27_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit
  %.sroa.0.05 = phi ptr [ %i.l, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val9.i = load i32, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 -8
  %.val10.i = load i32, ptr %i.e, align 8, !noundef !6
  %i.f = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.f, label %bb.d, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.g = load i64, ptr %.sroa.0.05, align 8, !noundef !6
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i8, i64 16, i1 false)
  %i.h = icmp eq ptr %.sroa.0.0.i8, %0
  br i1 %i.h, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i, i64 16, i1 false)
  %i.i = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.i, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.5.0.i9, i64 -24
  %.val8.i = load i32, ptr %i.j, align 8, !noundef !6
  %i.k = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.k, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ]
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  store i64 %i.g, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !29
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i32 %.val9.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !29
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1                 ; 2 uses
  %.not17 = icmp eq i64 %i.c, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph19

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTjmENCINvMB8_SB16_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1R_.exit, %bb.a
  ret void

.lr.ph19:                                         ; preds = %bb.a, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTjmENCINvMB8_SB16_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1R_.exit
  %.sroa.2.018 = phi i64 [ %i.d, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTjmENCINvMB8_SB16_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1R_.exit ], [ %i.c, %bb.a ]
  %i.d = add nsw i64 %.sroa.2.018, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph19
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph19
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !alias.scope !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i14 = icmp samesign ult i64 %i.i, %..i
  br i1 %.not.i14, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTjmENCINvMB8_SB16_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1R_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ac, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.ab, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i15 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %..i
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load i32, ptr %i.p, align 8, !noundef !6
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val11 = load i32, ptr %i.q, align 8, !noundef !6
  %i.r = icmp ult i32 %.val, %.val11
  %i.s = zext i1 %i.r to i64
  %i.t = add nuw nsw i64 %i.j, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i15 ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val12 = load i32, ptr %i.w, align 8, !noundef !6
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val13 = load i32, ptr %i.x, align 8, !noundef !6
  %i.y = icmp ult i32 %.val12, %.val13
  br i1 %i.y, label %bb.g, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTjmENCINvMB8_SB16_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1R_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load <2 x i64>, ptr %i.u, align 8, !alias.scope !37, !noalias !6
  %i.aa = load <2 x i64>, ptr %i.v, align 8, !alias.scope !41, !noalias !6
  store <2 x i64> %i.aa, ptr %i.u, align 8, !alias.scope !37, !noalias !6
  store <2 x i64> %i.z, ptr %i.v, align 8, !alias.scope !41, !noalias !6
  %i.ab = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ac, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTjmENCINvMB8_SB16_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1R_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTjmENCINvMB8_SB16_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1R_.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTjmENCINvMB8_SB17_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1S_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [768 x i8], align 8               ; 20 uses
  %i.h = icmp samesign ult i64 %1, 33
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = icmp eq i32 %3, 0
  br i1 %i.k, label %._crit_edge160, label %.lr.ph159

bb.b:                                             ; preds = %.backedge
  %i.l = icmp eq i32 %i.eb, 0
  br i1 %i.l, label %._crit_edge160, label %.lr.ph159

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.m = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.m, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTjmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB20_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.p, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTjmENCINvMB8_SB19_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1U_(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.g, ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTjmENCINvMB8_SB19_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1U_(ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.t)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 24
  %.val8.i.i.i = load i32, ptr %i.u, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.v = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 8
  %.val9.i.i.i = load i32, ptr %i.v, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.w = icmp ult i32 %.val8.i.i.i, %.val9.i.i.i  ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 56
  %.val6.i.i.i = load i32, ptr %i.x, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.y = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 40
  %.val7.i.i.i = load i32, ptr %i.y, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.z = icmp ult i32 %.val6.i.i.i, %.val7.i.i.i  ; 2 uses
  %i.aa = zext i1 %i.w to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.aa ; 3 uses
  %i.ac = xor i1 %i.w, true
  %i.ad = zext i1 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ad ; 4 uses
  %i.af = select i1 %i.z, i64 3, i64 2
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.af ; 4 uses
  %i.ah = select i1 %i.z, i64 2, i64 3
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ah ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %.val4.i.i.i = load i32, ptr %i.aj, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ak = getelementptr i8, ptr %i.ab, i64 8
  %.val5.i.i.i = load i32, ptr %i.ak, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.al = icmp ult i32 %.val4.i.i.i, %.val5.i.i.i ; 3 uses
  %i.am = getelementptr i8, ptr %i.ai, i64 8
  %.val2.i.i.i = load i32, ptr %i.am, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.an = getelementptr i8, ptr %i.ae, i64 8
  %.val3.i.i.i = load i32, ptr %i.an, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ao = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i ; 3 uses
  %i.ap = select i1 %i.al, ptr %i.ag, ptr %i.ab, !unpredictable !6
  %i.aq = select i1 %i.ao, ptr %i.ae, ptr %i.ai, !unpredictable !6
  %i.ar = select i1 %i.ao, ptr %i.ag, ptr %i.ae, !unpredictable !6
  %i.as = select i1 %i.al, ptr %i.ab, ptr %i.ar, !unpredictable !6 ; 3 uses
  %i.at = select i1 %i.al, ptr %i.ae, ptr %i.ag, !unpredictable !6
  %i.au = select i1 %i.ao, ptr %i.ai, ptr %i.at, !unpredictable !6 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val.i.i.i = load i32, ptr %i.av, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.aw = getelementptr i8, ptr %i.as, i64 8
  %.val1.i.i.i = load i32, ptr %i.aw, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ax = icmp ult i32 %.val.i.i.i, %.val1.i.i.i  ; 2 uses
  %i.ay = select i1 %i.ax, ptr %i.au, ptr %i.as, !unpredictable !6
  %i.az = select i1 %i.ax, ptr %i.as, ptr %i.au, !unpredictable !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !53
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !53
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !53
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n ; 8 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 4 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 24
  %.val8.i30.i.i = load i32, ptr %i.bf, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val9.i31.i.i = load i32, ptr %i.bg, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bh = icmp ult i32 %.val8.i30.i.i, %.val9.i31.i.i ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bd, i64 56
  %.val6.i32.i.i = load i32, ptr %i.bi, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bj = getelementptr i8, ptr %i.bd, i64 40
  %.val7.i33.i.i = load i32, ptr %i.bj, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bk = icmp ult i32 %.val6.i32.i.i, %.val7.i33.i.i ; 2 uses
  %i.bl = zext i1 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bl ; 3 uses
  %i.bn = xor i1 %i.bh, true
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bk, i64 3, i64 2
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bq ; 4 uses
  %i.bs = select i1 %i.bk, i64 2, i64 3
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bs ; 3 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  %.val4.i34.i.i = load i32, ptr %i.bu, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bv = getelementptr i8, ptr %i.bm, i64 8
  %.val5.i35.i.i = load i32, ptr %i.bv, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bw = icmp ult i32 %.val4.i34.i.i, %.val5.i35.i.i ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bt, i64 8
  %.val2.i36.i.i = load i32, ptr %i.bx, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.by = getelementptr i8, ptr %i.bp, i64 8
  %.val3.i37.i.i = load i32, ptr %i.by, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.bz = icmp ult i32 %.val2.i36.i.i, %.val3.i37.i.i ; 3 uses
  %i.ca = select i1 %i.bw, ptr %i.br, ptr %i.bm, !unpredictable !6
  %i.cb = select i1 %i.bz, ptr %i.bp, ptr %i.bt, !unpredictable !6
  %i.cc = select i1 %i.bz, ptr %i.br, ptr %i.bp, !unpredictable !6
  %i.cd = select i1 %i.bw, ptr %i.bm, ptr %i.cc, !unpredictable !6 ; 3 uses
  %i.ce = select i1 %i.bw, ptr %i.bp, ptr %i.br, !unpredictable !6
  %i.cf = select i1 %i.bz, ptr %i.bt, ptr %i.ce, !unpredictable !6 ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %.val.i38.i.i = load i32, ptr %i.cg, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ch = getelementptr i8, ptr %i.cd, i64 8
  %.val1.i39.i.i = load i32, ptr %i.ch, align 8, !alias.scope !52, !noalias !50, !noundef !6
  %i.ci = icmp ult i32 %.val.i38.i.i, %.val1.i39.i.i ; 2 uses
  %i.cj = select i1 %i.ci, ptr %i.cf, ptr %i.cd, !unpredictable !6
  %i.ck = select i1 %i.ci, ptr %i.cd, ptr %i.cf, !unpredictable !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !alias.scope !53
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !alias.scope !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !alias.scope !53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !alias.scope !53
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !53
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %5 = sub nsw i64 %.sroa.15.0.lcssa, %i.n        ; 2 uses
  %i.cq = icmp samesign ult i64 %.sroa.0.0.i.i, %i.n
  br i1 %i.cq, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i, %bb.h
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.n
  %6 = getelementptr [16 x i8], ptr %i.g, i64 %i.n ; 6 uses
  %i.cs = icmp ult i64 %.sroa.0.0.i.i, %5
  br i1 %i.cs, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i
  %.sroa.05.08.1.i.i = phi i64 [ %i.dd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.sroa.05.08.1.i.i
  %.idx184 = shl nuw nsw i64 %.sroa.05.08.1.i.i, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 %.idx184 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !alias.scope !53
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val9.i40.1.i.i = load i32, ptr %i.cv, align 8, !alias.scope !50, !noalias !52, !noundef !6 ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 -8
  %.val10.i.1.i.i = load i32, ptr %i.cw, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %i.cx = icmp ult i32 %.val9.i40.1.i.i, %.val10.i.1.i.i
  br i1 %i.cx, label %bb.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i

bb.i:                                             ; preds = %.lr.ph.1.i.i
  %i.cy = load i64, ptr %i.cu, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %.sroa.0.0.i41.1.i.i173 = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i.i173, i64 16, i1 false), !alias.scope !50, !noalias !52
  %i.cz = icmp eq i64 %.sroa.05.08.1.i.i, 1
  br i1 %i.cz, label %._crit_edge178, label %.lr.ph177

bb.j:                                             ; preds = %.lr.ph177
  %.sroa.0.0.i41.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i.i175, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i.i175, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i.i, i64 16, i1 false), !alias.scope !50, !noalias !52
  %i.da = icmp eq ptr %.sroa.0.0.i41.1.i.i, %6
  br i1 %i.da, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i41.1.i.i175 = phi ptr [ %.sroa.0.0.i41.1.i.i, %bb.j ], [ %.sroa.0.0.i41.1.i.i173, %bb.i ] ; 5 uses
  %.sroa.5.0.i.1.i.i174 = phi ptr [ %.sroa.0.0.i41.1.i.i175, %bb.j ], [ %i.cu, %bb.i ] ; 2 uses
  %i.db = getelementptr i8, ptr %.sroa.5.0.i.1.i.i174, i64 -24
  %.val8.i42.1.i.i = load i32, ptr %i.db, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %i.dc = icmp ult i32 %.val9.i40.1.i.i, %.val8.i42.1.i.i
  br i1 %i.dc, label %bb.j, label %._crit_edge178

._crit_edge178:                                   ; preds = %bb.j, %.lr.ph177, %bb.i
  %.sroa.5.0.i.1.i.i.lcssa = phi ptr [ %i.cu, %bb.i ], [ %.sroa.0.0.i41.1.i.i175, %bb.j ], [ %.sroa.5.0.i.1.i.i174, %.lr.ph177 ]
  %.sroa.0.0.i41.lcssa.1.i.i = phi ptr [ %6, %bb.i ], [ %6, %bb.j ], [ %.sroa.0.0.i41.1.i.i175, %.lr.ph177 ]
  store i64 %i.cy, ptr %.sroa.0.0.i41.lcssa.1.i.i, align 8, !alias.scope !50, !noalias !54
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.i.lcssa, i64 -8
  store i32 %.val9.i40.1.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !50, !noalias !54
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i: ; preds = %._crit_edge178, %.lr.ph.1.i.i
  %i.dd = add nuw i64 %.sroa.05.08.1.i.i, 1       ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.dd, %5
  br i1 %exitcond.1.not.i.i, label %.loopexit.1.i.i, label %.lr.ph.1.i.i

.loopexit.1.i.i:                                  ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.1.i.i, %.loopexit.i.i
  %i.de = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.de
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.de
  %i.dh = getelementptr i8, ptr %6, i64 -16
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.di = getelementptr i8, ptr %i.dv, i64 16     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.du, i64 16
  %i.dk = and i64 %.sroa.15.0.lcssa, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.l, label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.loopexit.1.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i ], [ %.sroa.0.0.lcssa, %.loopexit.1.i.i ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i ], [ 0, %.loopexit.1.i.i ]
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.g, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.011.07.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %6, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.015.06.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i ], [ %i.dh, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.017.05.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %i.dg, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.019.04.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i ], [ %i.df, %.loopexit.1.i.i ] ; 2 uses
  %i.dm = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  %i.dn = getelementptr i8, ptr %.sroa.011.07.i.i.i, i64 8
  %.sroa.011.0.val.i.i.i = load i32, ptr %i.dn, align 8, !alias.scope !59, !noalias !52, !noundef !6
  %i.do = getelementptr i8, ptr %.sroa.06.08.i.i.i, i64 8
  %.sroa.06.0.val.i.i.i = load i32, ptr %i.do, align 8, !alias.scope !59, !noalias !52, !noundef !6
  %.not.i = icmp ult i32 %.sroa.011.0.val.i.i.i, %.sroa.06.0.val.i.i.i ; 3 uses
  %..i21.i.i.i = select i1 %.not.i, ptr %.sroa.011.07.i.i.i, ptr %.sroa.06.08.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i.i, i64 16, i1 false), !alias.scope !53, !noalias !62
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 16, i64 0
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 16
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 16 ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.017.05.i.i.i, i64 8
  %.sroa.017.0.val.i.i.i = load i32, ptr %i.dq, align 8, !alias.scope !59, !noalias !52, !noundef !6
  %i.dr = getelementptr i8, ptr %.sroa.015.06.i.i.i, i64 8
  %.sroa.015.0.val.i.i.i = load i32, ptr %i.dr, align 8, !alias.scope !59, !noalias !52, !noundef !6
  %i.ds = icmp ult i32 %.sroa.017.0.val.i.i.i, %.sroa.015.0.val.i.i.i ; 3 uses
  %..i.i.i.i = select i1 %i.ds, ptr %.sroa.015.06.i.i.i, ptr %.sroa.017.05.i.i.i
  %i.dt = xor i1 %i.ds, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i, i64 16, i1 false), !alias.scope !53, !noalias !66
  %.neg.i.i.i.i = sext i1 %i.dt to i64
  %i.du = getelementptr [16 x i8], ptr %.sroa.017.05.i.i.i, i64 %.neg.i.i.i.i ; 2 uses
  %.neg13.i.i.i.i = sext i1 %i.ds to i64
  %i.dv = getelementptr [16 x i8], ptr %.sroa.015.06.i.i.i, i64 %.neg13.i.i.i.i ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.019.04.i.i.i, i64 -16
  %exitcond.not.i.i.i = icmp eq i64 %i.dm, %i.n
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %.not23.i = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.di ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i.i = select i1 %.not23.i, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i.i, i64 16, i1 false), !alias.scope !53
  %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not23.i, i64 16, i64 0
  %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not23.i, i64 0, i64 16
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  %.sroa.011.1.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel, %bb.k ]
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel, %bb.k ]
  %i.dx = icmp ne ptr %.sroa.06.1.i.i.i, %i.di
  %i.dy = icmp ne ptr %.sroa.011.1.i.i.i, %i.dj
  %or.cond.i.i.i = select i1 %i.dx, i1 true, i1 %i.dy, !prof !28
  br i1 %or.cond.i.i.i, label %bb.m, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTjmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB20_.exit, !prof !28

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #26
          to label %.noexc.i.i unwind label %bb.n

.noexc.i.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = shl nuw nsw i64 %.sroa.15.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.g, i64 %i.ea, i1 false), !alias.scope !53, !noalias !70
  resume { ptr, i32 } %i.dz

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i
  %.sroa.05.08.i.i = phi i64 [ %19, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %7 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.08.i.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i.i, 4
  %8 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !alias.scope !53
  %9 = getelementptr i8, ptr %8, i64 8
  %.val9.i40.i.i = load i32, ptr %9, align 8, !alias.scope !50, !noalias !52, !noundef !6 ; 3 uses
  %10 = getelementptr i8, ptr %8, i64 -8
  %.val10.i.i.i = load i32, ptr %10, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %11 = icmp ult i32 %.val9.i40.i.i, %.val10.i.i.i
  br i1 %11, label %12, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i

12:                                               ; preds = %.lr.ph.i.i
  %13 = load i64, ptr %8, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %.sroa.0.0.i41.i.i162 = getelementptr inbounds i8, ptr %8, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i.i162, i64 16, i1 false), !alias.scope !50, !noalias !52
  %14 = icmp eq i64 %.sroa.05.08.i.i, 1
  br i1 %14, label %._crit_edge167, label %.lr.ph166

15:                                               ; preds = %.lr.ph166
  %.sroa.0.0.i41.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i.i164, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i.i164, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i.i, i64 16, i1 false), !alias.scope !50, !noalias !52
  %16 = icmp eq ptr %.sroa.0.0.i41.i.i, %i.g
  br i1 %16, label %._crit_edge167, label %.lr.ph166

.lr.ph166:                                        ; preds = %12, %15
  %.sroa.0.0.i41.i.i164 = phi ptr [ %.sroa.0.0.i41.i.i, %15 ], [ %.sroa.0.0.i41.i.i162, %12 ] ; 5 uses
  %.sroa.5.0.i.i.i163 = phi ptr [ %.sroa.0.0.i41.i.i164, %15 ], [ %8, %12 ] ; 2 uses
  %17 = getelementptr i8, ptr %.sroa.5.0.i.i.i163, i64 -24
  %.val8.i42.i.i = load i32, ptr %17, align 8, !alias.scope !50, !noalias !52, !noundef !6
  %18 = icmp ult i32 %.val9.i40.i.i, %.val8.i42.i.i
  br i1 %18, label %15, label %._crit_edge167

._crit_edge167:                                   ; preds = %15, %.lr.ph166, %12
  %.sroa.5.0.i.i.i.lcssa = phi ptr [ %8, %12 ], [ %.sroa.0.0.i41.i.i164, %15 ], [ %.sroa.5.0.i.i.i163, %.lr.ph166 ]
  %.sroa.0.0.i41.lcssa.i.i = phi ptr [ %i.g, %12 ], [ %i.g, %15 ], [ %.sroa.0.0.i41.i.i164, %.lr.ph166 ]
  store i64 %13, ptr %.sroa.0.0.i41.lcssa.i.i, align 8, !alias.scope !50, !noalias !54
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i.lcssa, i64 -8
  store i32 %.val9.i40.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !50, !noalias !54
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTjmENCINvMB8_SB18_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1T_.exit.i.i: ; preds = %._crit_edge167, %.lr.ph.i.i
  %19 = add nuw i64 %.sroa.05.08.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %19, %i.n
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTjmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB20_.exit: ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44
  br label %bb.p

._crit_edge160:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.092.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.091.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.092.lcssa, i64 noundef %.sroa.15.091.lcssa, ptr noalias nofree nonnull align 8 poison) #27
  br label %bb.p

.lr.ph159:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.089158 = phi i32 [ %i.eb, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.090157 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.sroa.15.091156 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 9 uses
  %.sroa.0.092155 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 30 uses
  %i.eb = add nsw i32 %.sroa.026.089158, -1       ; 3 uses
  %i.ec = lshr i64 %.sroa.15.091156, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ec, 6
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ec, 112
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 %.idx2.i ; 3 uses
  %i.ef = icmp samesign ult i64 %.sroa.15.091156, 64
  br i1 %i.ef, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph159
  %i.eg = tail call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTjmENCINvMB8_SB14_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1P_(ptr noundef nonnull readonly align 8 %.sroa.0.092155, ptr noundef readonly %i.ed, ptr noundef readonly %i.ee, i64 noundef %i.ec)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit.i: ; preds = %.lr.ph159
  %i.eh = getelementptr i8, ptr %.sroa.0.092155, i64 8
  %.val6.i = load i32, ptr %i.eh, align 8, !alias.scope !75, !noundef !6 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.ed, i64 8
  %.val7.i = load i32, ptr %i.ei, align 8, !alias.scope !75, !noundef !6 ; 2 uses
  %i.ej = icmp ult i32 %.val6.i, %.val7.i         ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ee, i64 8
  %.val5.i = load i32, ptr %i.ek, align 8, !alias.scope !75, !noundef !6 ; 2 uses
  %i.el = icmp ult i32 %.val6.i, %.val5.i
  %i.em = xor i1 %i.ej, %i.el
  %i.en = icmp ult i32 %.val7.i, %.val5.i
  %i.eo = xor i1 %i.ej, %i.en
  %..i.i = select i1 %i.eo, ptr %i.ee, ptr %i.ed
  %.sroa.0.0.i.i34 = select i1 %i.em, ptr %.sroa.0.092155, ptr %..i.i
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit: ; preds = %bb.o, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i34, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TjmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1J_.exit.i ], [ %i.eg, %bb.o ]
  %i.ep = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.eq = ptrtoint ptr %.sroa.0.092155 to i64
  %i.er = sub nuw i64 %i.ep, %i.eq                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.er, 4
  %i.es = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.091156
  tail call void @llvm.assume(i1 %i.es)
  %.not = icmp eq ptr %.sroa.023.090157, null
  br i1 %.not, label %bb.q, label %bb.s

bb.p:                                             ; preds = %._crit_edge160, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTjmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB20_.exit
  ret void

bb.q:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit, %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 %i.er ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false), !alias.scope !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !89
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !90, !noalias !87, !noundef !6
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 24
  %i.ex = load i32, ptr %i.ew, align 8, !alias.scope !90, !noalias !87, !noundef !6
  store i64 %i.ev, ptr %i.e, align 8, !noalias !89
  store i32 %i.ex, ptr %i.j, align 8, !noalias !89
  %i.ey = getelementptr [16 x i8], ptr %.sroa.0.092155, i64 %.sroa.15.091156 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -16    ; 2 uses
  %.sroa.13.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 32 ; 3 uses
  %i.fa = icmp ult ptr %.sroa.13.033.i.i, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 8
  %.val1.i12.i.i = load i32, ptr %i.fb, align 8, !alias.scope !91, !noalias !84 ; 3 uses
  br i1 %i.fa, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i37, %bb.q
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.fr, %.lr.ph.i.i37 ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.033.i.i, %bb.q ], [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.eu, %bb.q ], [ %i.fm, %.lr.ph.i.i37 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.fg, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep26.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.fc = icmp eq ptr %.sroa.13.1.i.i, %i.ey      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fc, ptr %i.e, ptr %.sroa.13.1.i.i
  %.sroa.13.1.sroa.gep.i.i = getelementptr i8, ptr %.sroa.13.1.i.i, i64 8
  %.sroa.01.0.sroa.sel.i.i = select i1 %i.fc, ptr %i.j, ptr %.sroa.13.1.sroa.gep.i.i
  %.val.i.i.i36 = load i32, ptr %.sroa.01.0.sroa.sel.i.i, align 8, !noalias !92, !noundef !6
  %i.fd = icmp ult i32 %.val.i.i.i36, %.val1.i12.i.i
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !alias.scope !90, !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !92
  %i.ff = zext i1 %i.fd to i64
  %i.fg = add i64 %.sroa.23.1.i.i, %i.ff          ; 5 uses
  %.sroa.13.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.fc, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB2i_.exit.i, label %.preheader.i.i

.lr.ph.i.i37:                                     ; preds = %bb.q, %.lr.ph.i.i37
  %.sroa.13.036.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ], [ %.sroa.13.033.i.i, %bb.q ] ; 2 uses
  %.sroa.015.035.i.i = phi ptr [ %i.fm, %.lr.ph.i.i37 ], [ %i.eu, %bb.q ] ; 5 uses
  %.sroa.23.034.i.i = phi i64 [ %i.fr, %.lr.ph.i.i37 ], [ 0, %bb.q ] ; 2 uses
  %i.fh = getelementptr i8, ptr %.sroa.015.035.i.i, i64 24
  %.val.i11.i.i = load i32, ptr %i.fh, align 8, !alias.scope !90, !noalias !95, !noundef !6
  %i.fi = icmp ult i32 %.val.i11.i.i, %.val1.i12.i.i
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %.sroa.23.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.035.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false), !alias.scope !90, !noalias !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, i64 16, i1 false), !alias.scope !90, !noalias !95
  %i.fk = zext i1 %i.fi to i64
  %i.fl = add i64 %.sroa.23.034.i.i, %i.fk        ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 32 ; 3 uses
  %i.fn = getelementptr i8, ptr %.sroa.015.035.i.i, i64 40
  %.val.i13.i.i = load i32, ptr %i.fn, align 8, !alias.scope !90, !noalias !98, !noundef !6
  %i.fo = icmp ult i32 %.val.i13.i.i, %.val1.i12.i.i
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.fl ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.036.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 16, i1 false), !alias.scope !90, !noalias !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !alias.scope !90, !noalias !98
  %i.fq = zext i1 %i.fo to i64
  %i.fr = add i64 %i.fl, %i.fq                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 48 ; 3 uses
  %i.fs = icmp ult ptr %.sroa.13.0.i.i, %i.ez
  br i1 %i.fs, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB2i_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !89
  %.not7.i = icmp ult i64 %i.fg, %.sroa.15.091156
  br i1 %.not7.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB2i_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjmE12split_at_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTjmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB2i_.exit.i
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.092155, i64 %i.fg ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !alias.scope !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = xor i64 %i.fg, -1
  %i.fw = add i64 %.sroa.15.091156, %i.fv
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTjmENCINvMB8_SB17_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1S_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.092155, i64 noundef %i.fg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.090157, i32 noundef %i.eb, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.s:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTjmENCINvMB8_SB15_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1Q_.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 %i.er ; 3 uses
  %i.fy = getelementptr i8, ptr %.sroa.023.090157, i64 8
  %.sroa.023.0.val = load i32, ptr %i.fy, align 8, !noundef !6
  %i.fz = getelementptr i8, ptr %i.fx, i64 8
  %.val = load i32, ptr %i.fz, align 8, !noundef !6
  %i.ga = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.ga, label %bb.q, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.092155, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !alias.scope !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !115
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !116, !noalias !113, !noundef !6
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 24
  %i.ge = load i32, ptr %i.gd, align 8, !alias.scope !116, !noalias !113, !noundef !6
  store i64 %i.gc, ptr %i.b, align 8, !noalias !115
  store i32 %i.ge, ptr %i.i, align 8, !noalias !115
  %i.gf = getelementptr [16 x i8], ptr %.sroa.0.092155, i64 %.sroa.15.091156 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 -16    ; 2 uses
  %.sroa.13.033.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 32 ; 3 uses
  %i.gh = icmp ult ptr %.sroa.13.033.i.i45, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.092155, i64 8
  %.val1.i12.i.i46 = load i32, ptr %i.gi, align 8, !alias.scope !117, !noalias !110 ; 3 uses
  br i1 %i.gh, label %.lr.ph.i.i60, label %.preheader.i.i47.preheader

.preheader.i.i47.preheader:                       ; preds = %.lr.ph.i.i60, %bb.t
  %.sroa.23.1.i.i51.ph = phi i64 [ 0, %bb.t ], [ %i.gy, %.lr.ph.i.i60 ]
  %.sroa.13.1.i.i52.ph = phi ptr [ %.sroa.13.033.i.i45, %bb.t ], [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ]
  %.sroa.015.1.i.i53.ph = phi ptr [ %i.gb, %bb.t ], [ %i.gt, %.lr.ph.i.i60 ]
  br label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.preheader, %.preheader.i.i47
  %.sroa.23.1.i.i51 = phi i64 [ %i.gn, %.preheader.i.i47 ], [ %.sroa.23.1.i.i51.ph, %.preheader.i.i47.preheader ] ; 2 uses
  %.sroa.13.1.i.i52 = phi ptr [ %.sroa.13.1.sroa.gep26.i.i58, %.preheader.i.i47 ], [ %.sroa.13.1.i.i52.ph, %.preheader.i.i47.preheader ] ; 5 uses
  %.sroa.015.1.i.i53 = phi ptr [ %.sroa.13.1.i.i52, %.preheader.i.i47 ], [ %.sroa.015.1.i.i53.ph, %.preheader.i.i47.preheader ]
  %i.gj = icmp eq ptr %.sroa.13.1.i.i52, %i.gf    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.gj, ptr %i.b, ptr %.sroa.13.1.i.i52
  %.sroa.13.1.sroa.gep.i.i55 = getelementptr i8, ptr %.sroa.13.1.i.i52, i64 8
end_hunk_0
