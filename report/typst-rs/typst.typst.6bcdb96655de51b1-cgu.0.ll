Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3j_:.lr.ph.preheader
  %i.u = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.sroa.017.0.val)
  %i.v = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.sroa.015.0.val)
  %i.w = icmp ult i64 %i.u, %i.v                  ; 3 uses
  %..i = select i1 %i.w, ptr %.sroa.015.06, ptr %.sroa.017.05
  %i.x = xor i1 %i.w, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.019.04, ptr noundef nonnull align 4 dereferenceable(16) %..i, i64 16, i1 false), !noalias !13456
  %.neg.i = sext i1 %i.x to i64
  %i.y = getelementptr [16 x i8], ptr %.sroa.017.05, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.w to i64
  %i.z = getelementptr [16 x i8], ptr %.sroa.015.06, i64 %.neg13.i ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.019.04, i64 -16
  %exitcond.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %._crit_edge
  %i.ab = icmp ult ptr %i.s, %i.g                 ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.ab, ptr %i.s, ptr %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0..sroa.011.0, i64 16, i1 false)
  %i.ac = zext i1 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ac
  %i.ae = xor i1 %i.ab, true
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.af
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.011.1 = phi ptr [ %i.q, %._crit_edge ], [ %i.ag, %bb.a ]
  %.sroa.06.1 = phi ptr [ %i.s, %._crit_edge ], [ %i.ad, %bb.a ]
  %i.ah = icmp ne ptr %.sroa.06.1, %i.g
  %i.ai = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ai, !prof !105
  br i1 %or.cond, label %bb.d, label %bb.c, !prof !105

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #65
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3p_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.sroa.6.i = alloca [12 x i8], align 4          ; 5 uses
  %.idx = shl nuw nsw i64 %1, 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.02 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3b_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3b_.exit
  %.sroa.0.05 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3b_.exit ], [ %.sroa.0.02, %.lr.ph.preheader ] ; 5 uses
  %.pn4 = phi ptr [ %.sroa.0.05, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3b_.exit ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4
  %.val10.i = load i32, ptr %.pn4, align 4
  %i.b = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.val9.i)
  %i.c = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.val10.i)
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3b_.exit

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.010.0.copyload.i = load i32, ptr %.sroa.0.05, align 4 ; 3 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.411.0..sroa_idx.i, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 4 dereferenceable(16) %.pn4, i64 16, i1 false)
  %i.e = icmp eq ptr %.pn4, %0
  br i1 %i.e, label %._crit_edge6, label %.lr.ph5

bb.b:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.i3, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.f = icmp eq ptr %i.g, %0
  br i1 %i.f, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %i.g, %bb.b ], [ %.pn4, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -16 ; 4 uses
  %.val8.i = load i32, ptr %i.g, align 4
  %i.h = invoke noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.sroa.010.0.copyload.i)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %.lr.ph5
  %i.i = invoke noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.val8.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %bb.c ] ; 2 uses
  store i32 %.sroa.010.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !13465
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i, i64 12, i1 false), !noalias !13465
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3b_.exit

bb.d:                                             ; preds = %.noexc.i, %.lr.ph5
  %i.k = landingpad { ptr, i32 }
          cleanup
  store i32 %.sroa.010.0.copyload.i, ptr %.sroa.0.0.i3, align 4, !noalias !13466
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i, i64 12, i1 false), !noalias !13466
  resume { ptr, i32 } %i.k

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB3b_.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB2Y_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 21, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw nsw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %..i, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i109 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.aa, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.ed, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.eb, %bb.aa ] ; 3 uses
  %i.h = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB36_.exit
  %.sroa.021.0 = phi i8 [ %i.bk, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB36_.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB36_.exit ], [ 1, %bb.e ] ; 2 uses
  %i.i = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.i, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.f
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.k = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13496)
  %.not.i31 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread112, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.m = icmp samesign ult i64 %i.k, 2
  br i1 %i.m, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val10.i = load i32, ptr %i.n, align 4, !alias.scope !13496, !noalias !13497 ; 3 uses
  %.val11.i = load i32, ptr %i.l, align 4, !alias.scope !13496, !noalias !13497
  %i.o = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.val10.i), !noalias !13498
  %i.p = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.val11.i), !noalias !13498
  %i.q = icmp ult i64 %i.o, %i.p                  ; 2 uses
  %.not78 = icmp eq i64 %i.k, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.j
  br i1 %.not78, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.j
  br i1 %.not78, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread112, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.k
  %.val9.i = phi i32 [ %.val8.i, %bb.k ], [ %.val10.i, %.preheader47 ]
  %.sroa.01.0.i.i62 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader47 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.01.0.i.i62
  %.val8.i = load i32, ptr %i.r, align 4, !alias.scope !13496, !noalias !13497 ; 2 uses
  %i.s = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.val8.i), !noalias !13498
  %i.t = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.val9.i), !noalias !13498
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i62, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.k
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.l
  %.val7.i = phi i32 [ %.val.i, %bb.l ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i65 = phi i64 [ %i.aa, %bb.l ], [ 2, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.01.1.i.i65
  %.val.i = load i32, ptr %i.w, align 4, !alias.scope !13496, !noalias !13497 ; 2 uses
  %i.x = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.val.i), !noalias !13498
  %i.y = tail call noundef i64 @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4text4font10variationsNtB5_12StandardAxes5order(i32 noundef %.val7.i), !noalias !13498
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.l, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i

bb.l:                                             ; preds = %.lr.ph66
  %i.aa = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond91.not = icmp eq i64 %i.aa, %i.k
  br i1 %exitcond91.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i, label %.lr.ph66

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.k, %bb.l ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.k, %bb.k ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.h, label %bb.m

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread112: ; preds = %.preheader
  br i1 %.not5.i114, label %bb.h, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i109, label %bb.h, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit

bb.m:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i
  br i1 %i.q, label %bb.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit

bb.n:                                             ; preds = %bb.h
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.k, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB36_.exit

bb.o:                                             ; preds = %bb.h
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.k, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB38_(ptr noalias nofree noundef nonnull align 4 %i.l, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(16) null) #63
  %i.ad = shl nuw nsw i64 %..i36, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB36_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i.epil.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i ], [ %i.bb, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.af = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ah = getelementptr [16 x i8], ptr %i.ao, i64 %i.af ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 4, !alias.scope !13499, !noalias !13500
  %i.aj = load <2 x i64>, ptr %i.ah, align 4, !alias.scope !13501, !noalias !13502
  store <2 x i64> %i.aj, ptr %i.ag, align 4, !alias.scope !13499, !noalias !13500
  store <2 x i64> %i.ai, ptr %i.ah, align 4, !alias.scope !13501, !noalias !13502
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i.epil.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit.loopexit.unr-lcssa, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i4245 = phi i64 [ %i.k, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread ], [ %.sroa.0.0.i.i110117121, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i110117121, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i.epil.preheader ]
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB36_.exit

bb.p:                                             ; preds = %bb.m
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13503), !noalias !13497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13504), !noalias !13497
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread112, %bb.p
  %i.an = phi i64 [ %i.am, %bb.p ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread112 ] ; 4 uses
  %.sroa.0.0.i.i110117121 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB35_.exit.i.thread112 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.0.i.i110117121 ; 3 uses
  %xtraiter = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.an, 1
  br i1 %i.ap, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i.new

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i
  %unroll_iter = and i64 %i.an, 9223372036854775806
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i.new ], [ %i.bb, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i ]
  %i.aq = xor i64 %.sroa.0.016.i.i, -1
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.016.i.i ; 2 uses
  %i.as = getelementptr [16 x i8], ptr %i.ao, i64 %i.aq ; 2 uses
  %i.at = load <2 x i64>, ptr %i.ar, align 4, !alias.scope !13499, !noalias !13500
  %i.au = load <2 x i64>, ptr %i.as, align 4, !alias.scope !13501, !noalias !13502
  store <2 x i64> %i.au, ptr %i.ar, align 4, !alias.scope !13499, !noalias !13500
  store <2 x i64> %i.at, ptr %i.as, align 4, !alias.scope !13501, !noalias !13502
  %i.av = xor i64 %.sroa.0.016.i.i, -2
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.016.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.ao, i64 %i.av ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 4, !alias.scope !13499, !noalias !13500
  %i.ba = load <2 x i64>, ptr %i.ay, align 4, !alias.scope !13501, !noalias !13502
  store <2 x i64> %i.ba, ptr %i.ax, align 4, !alias.scope !13499, !noalias !13500
  store <2 x i64> %i.az, ptr %i.ay, align 4, !alias.scope !13501, !noalias !13502
  %i.bb = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit.loopexit.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis12split_at_mutCs9fPPV5zPXBl_5typst.exit11.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB36_.exit: ; preds = %bb.n, %bb.o, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit
  %.sroa.0.0.i32 = phi i64 [ %i.al, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxis7reverseCs9fPPV5zPXBl_5typst.exit ], [ %i.ae, %bb.o ], [ %i.ac, %bb.n ] ; 2 uses
  %i.bc = lshr i64 %.sroa.023.0, 1
  %i.bd = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.be = sub nsw i64 %factor, %i.bc
  %i.bf = add nuw nsw i64 %i.bd, %factor
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 false)
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  br label %bb.f

bb.q:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB39_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bl, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB39_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB39_.exit ] ; 4 uses
  %i.bl = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bn, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB39_.exit, %bb.q, %bb.f
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.f ], [ %.sroa.023.170, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB39_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.f ], [ %.sroa.02.171, %bb.q ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB39_.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bp, align 1
  br i1 %i.h, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bl
  %i.br = load i64, ptr %i.bq, align 8, !noundef !28 ; 3 uses
  %i.bs = lshr i64 %i.br, 1                       ; 8 uses
  %i.bt = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bu = add nuw i64 %i.bs, %i.bt                ; 4 uses
  %i.bv = sub i64 %.sroa.09.0, %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bv ; 6 uses
  %i.bx = icmp samesign ugt i64 %i.bu, %3
  %i.by = trunc i64 %.sroa.023.170 to i1
  %i.bz = or i64 %i.br, %.sroa.023.170
  %i.ca = trunc i64 %i.bz to i1
  %or.cond3.i = or i1 %i.bx, %i.ca
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = trunc i64 %i.br to i1
  br i1 %i.cb, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cc = shl nuw nsw i64 %i.bu, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB39_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.by, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cd = or i64 %i.bs, 1
  %i.ce = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB38_(ptr noalias nofree noundef nonnull align 4 %i.bw, i64 noundef range(i64 0, 576460752303423488) %i.bs, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(16) null) #63
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bs
  %i.cj = or i64 %i.bt, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB38_(ptr noalias nofree noundef nonnull align 4 %i.ci, i64 noundef range(i64 0, 576460752303423488) %i.bt, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(16) null) #63
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13506)
  %i.co = icmp eq i64 %i.bs, 0
  %i.cp = icmp eq i64 %i.bt, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB2Z_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 range(i64 0, -9223372036854775808) %i.bs) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cq, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvNtCs9fPPV5zPXBl_5typst5fonts13write_variants_0E0EB2Z_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bs ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bs, %i.bt  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cr, ptr %i.bw
  %i.cs = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !13507
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc18.i
  %.sroa.13.0.i = phi ptr [ %i.dc, %.noexc18.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.de, %.noexc18.i ], [ %i.ct, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cw, %.noexc18.i ], [ %i.j, %.critedge.i ]
  %i.cu = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
end_hunk_0
