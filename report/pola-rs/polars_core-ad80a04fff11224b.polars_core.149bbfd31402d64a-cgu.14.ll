Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.14?download=true
inline.NumInlined: 11286
inline.NumDeleted: 5449
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable7ipnsortaNCINvMB6_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1, !dbg !93257 ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1, !dbg !93249
  br i1 %exitcond25.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runaNCINvMB6_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.lr.ph18, !dbg !93249

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runaNCINvMB6_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ], !dbg !93258 ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1, !dbg !93259
  tail call void @llvm.assume(i1 %i.j), !dbg !93260
  %i.k = icmp eq i64 %.sroa.0.0.i, %1, !dbg !93261
  br i1 %i.k, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runaNCINvMB6_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.e, !dbg !93261

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runaNCINvMB6_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runaNCINvMB6_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  br i1 %i.c, label %iter.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93262

bb.e:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runaNCINvMB6_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.l = or i64 %1, 1, !dbg !93263
  %i.m = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true), !dbg !93264
  %i.n = trunc nuw nsw i64 %i.m to i32, !dbg !93264
  %i.o = shl nuw nsw i32 %i.n, 1, !dbg !93265
  %i.p = xor i32 %i.o, 126, !dbg !93265
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortaNCINvMB8_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2), !dbg !93266
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93266

_RNvMNtCscgRAwXFJnXP_4core5sliceSa7reverseCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block, %vec.epilog.middle.block, %bb.a, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runaNCINvMB6_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.e
  ret void, !dbg !93267

iter.check:                                       ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runaNCINvMB6_Sa16sort_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  %i.q = lshr i64 %1, 1, !dbg !93268              ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93238), !dbg !93269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93239), !dbg !93269
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !93270 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %1, 8, !dbg !93271
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.main.loop.iter.check, !dbg !93271

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp samesign ult i64 %1, 32, !dbg !93271
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph, !dbg !93271

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.q, 4611686018427387888      ; 4 uses
  br label %vector.body, !dbg !93271

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !93272 ; 3 uses
  %i.s = xor i64 %index, -1, !dbg !93273
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !93274 ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 %i.s, !dbg !93275
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !dbg !93276, !alias.scope !93240
  %i.v = getelementptr i8, ptr %i.u, i64 -15, !dbg !93276 ; 2 uses
  %wide.load40 = load <16 x i8>, ptr %i.v, align 1, !dbg !93276, !alias.scope !93241
  %reverse = shufflevector <16 x i8> %wide.load40, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !93276
  store <16 x i8> %reverse, ptr %i.t, align 1, !dbg !93276, !alias.scope !93240
  %reverse41 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !93276
  store <16 x i8> %reverse41, ptr %i.v, align 1, !dbg !93276, !alias.scope !93241
  %index.next = add nuw i64 %index, 16, !dbg !93272 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !93271
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !93271, !llvm.loop !93228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec, !dbg !93271
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !93271

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.x = and i64 %1, 24
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vec.epilog.ph, !prof !4885

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.q, 4611686018427387900    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ], !dbg !93272 ; 3 uses
  %i.y = xor i64 %index43, -1, !dbg !93273
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index43, !dbg !93274 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.y, !dbg !93275
  %wide.load44 = load <4 x i8>, ptr %i.z, align 1, !dbg !93276, !alias.scope !93240
  %i.ab = getelementptr i8, ptr %i.aa, i64 -3, !dbg !93276 ; 2 uses
  %wide.load45 = load <4 x i8>, ptr %i.ab, align 1, !dbg !93276, !alias.scope !93241
  %reverse46 = shufflevector <4 x i8> %wide.load45, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93276
  store <4 x i8> %reverse46, ptr %i.z, align 1, !dbg !93276, !alias.scope !93240
  %reverse47 = shufflevector <4 x i8> %wide.load44, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93276
  store <4 x i8> %reverse47, ptr %i.ab, align 1, !dbg !93276, !alias.scope !93241
  %index.next48 = add nuw i64 %index43, 4, !dbg !93272 ; 2 uses
  %i.ac = icmp eq i64 %index.next48, %n.vec42, !dbg !93271
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !93271, !llvm.loop !93229

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.q, %n.vec42, !dbg !93271
  br i1 %cmp.n49, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !93271

_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93271

_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ai, %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.ad = xor i64 %.sroa.0.016.i.i, -1, !dbg !93273
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.016.i.i, !dbg !93274 ; 2 uses
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ad, !dbg !93275 ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !dbg !93276, !alias.scope !93240, !noundef !3973
  %i.ah = load i8, ptr %i.af, align 1, !dbg !93276, !alias.scope !93241
  store i8 %i.ah, ptr %i.ae, align 1, !dbg !93276, !alias.scope !93240
  store i8 %i.ag, ptr %i.af, align 1, !dbg !93276, !alias.scope !93241
  %i.ai = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !93272 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.q, !dbg !93271
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93271, !llvm.loop !93230
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable7ipnsortdNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1y_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #3 !dbg !93277 !guid !93339 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !93350
  br i1 %i.a, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !93350

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !93351
  %.val6 = load double, ptr %i.b, align 8, !dbg !93352, !alias.scope !4888, !noundef !3973 ; 3 uses
  %.val7 = load double, ptr %0, align 8, !dbg !93352, !alias.scope !4889, !noundef !3973 ; 2 uses
  %i.c = fcmp ord double %.val7, 0.000000e+00, !dbg !93353
  %i.d = fcmp ult double %.val7, %.val6, !dbg !93354
  %.not2.i.i.i.i = and i1 %i.c, %i.d, !dbg !93355 ; 2 uses
  %.not24 = icmp eq i64 %1, 2, !dbg !93356        ; 2 uses
  br i1 %.not2.i.i.i.i, label %.preheader, label %.preheader14, !dbg !93357

.preheader14:                                     ; preds = %bb.b
  br i1 %.not24, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, label %.lr.ph, !dbg !93358

.preheader:                                       ; preds = %bb.b
  br i1 %.not24, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, label %.lr.ph20, !dbg !93359

.lr.ph:                                           ; preds = %.preheader14, %bb.c
  %.val5 = phi double [ %.val4, %bb.c ], [ %.val6, %.preheader14 ], !dbg !93360 ; 2 uses
  %.sroa.01.0.i16 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader14 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i16, !dbg !93361
  %.val4 = load double, ptr %i.e, align 8, !dbg !93360, !alias.scope !4888, !noundef !3973 ; 2 uses
  %i.f = fcmp ord double %.val5, 0.000000e+00, !dbg !93362
  %i.g = fcmp ult double %.val5, %.val4, !dbg !93363
  %.not2.i.i.i.i8 = and i1 %i.f, %i.g, !dbg !93364
  br i1 %.not2.i.i.i.i8, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, label %bb.c, !dbg !93360

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i16, 1, !dbg !93365 ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1, !dbg !93358
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, label %.lr.ph, !dbg !93358

.lr.ph20:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi double [ %.val, %bb.d ], [ %.val6, %.preheader ], !dbg !93366 ; 2 uses
  %.sroa.01.1.i19 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i19, !dbg !93367
  %.val = load double, ptr %i.i, align 8, !dbg !93366, !alias.scope !4888, !noundef !3973 ; 2 uses
  %i.j = fcmp ord double %.val3, 0.000000e+00, !dbg !93368
  %i.k = fcmp ult double %.val3, %.val, !dbg !93369
  %.not2.i.i.i.i9 = and i1 %i.j, %i.k, !dbg !93370
  br i1 %.not2.i.i.i.i9, label %bb.d, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, !dbg !93366

bb.d:                                             ; preds = %.lr.ph20
  %i.l = add nuw nsw i64 %.sroa.01.1.i19, 1, !dbg !93371 ; 2 uses
  %exitcond27.not = icmp eq i64 %i.l, %1, !dbg !93359
  br i1 %exitcond27.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, label %.lr.ph20, !dbg !93359

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit: ; preds = %.lr.ph, %.lr.ph20, %.preheader14, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader14 ], [ 2, %.preheader ], [ %.sroa.01.1.i19, %.lr.ph20 ], [ %.sroa.01.0.i16, %.lr.ph ], !dbg !93372 ; 2 uses
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %1, !dbg !93373
  tail call void @llvm.assume(i1 %i.m), !dbg !93374
  %i.n = icmp eq i64 %.sroa.0.0.i, %1, !dbg !93375
  br i1 %i.n, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, label %bb.e, !dbg !93375

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit
  br i1 %.not2.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93376

bb.e:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit
  %i.o = or i64 %1, 1, !dbg !93377
  %i.p = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true), !dbg !93378
  %i.q = trunc nuw nsw i64 %i.p to i32, !dbg !93378
  %i.r = shl nuw nsw i32 %i.q, 1, !dbg !93379
  %i.s = xor i32 %i.r, 126, !dbg !93379
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortdNCINvMB8_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1M_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.s, ptr noalias noundef align 8 dereferenceable(8) %2), !dbg !93380
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93380

_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, %bb.e
  ret void, !dbg !93381

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchdNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread
  %i.t = lshr i64 %1, 1, !dbg !93382              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93346), !dbg !93383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93347), !dbg !93383
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !93384 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8, !dbg !93385
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.ph, !dbg !93385

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i
  %n.vec = and i64 %i.t, 576460752303423484       ; 3 uses
  br label %vector.body, !dbg !93385

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !93386 ; 3 uses
  %i.v = xor i64 %index, -1, !dbg !93387
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !93388 ; 3 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %i.v, !dbg !93389 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !93390 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.w, align 8, !dbg !93390, !alias.scope !93348
  %wide.load42 = load <2 x double>, ptr %i.y, align 8, !dbg !93390, !alias.scope !93348
  %i.z = getelementptr i8, ptr %i.x, i64 -8, !dbg !93390 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 -24, !dbg !93390 ; 2 uses
  %wide.load43 = load <2 x i64>, ptr %i.z, align 8, !dbg !93390, !alias.scope !93349
  %wide.load44 = load <2 x i64>, ptr %i.aa, align 8, !dbg !93390, !alias.scope !93349
  %reverse = shufflevector <2 x i64> %wide.load43, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !93390
  %reverse45 = shufflevector <2 x i64> %wide.load44, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !93390
  store <2 x i64> %reverse, ptr %i.w, align 8, !dbg !93390, !alias.scope !93348
  store <2 x i64> %reverse45, ptr %i.y, align 8, !dbg !93390, !alias.scope !93348
  %reverse46 = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !93390
  %reverse47 = shufflevector <2 x double> %wide.load42, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !93390
  store <2 x double> %reverse46, ptr %i.z, align 8, !dbg !93390, !alias.scope !93349
  store <2 x double> %reverse47, ptr %i.aa, align 8, !dbg !93390, !alias.scope !93349
  %index.next = add nuw i64 %index, 4, !dbg !93386 ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec, !dbg !93385
  br i1 %i.ab, label %middle.block, label %vector.body, !dbg !93385, !llvm.loop !93337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !93385
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !93385

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93385

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ah, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.ac = xor i64 %.sroa.0.016.i.i, -1, !dbg !93387
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i, !dbg !93388 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.u, i64 %i.ac, !dbg !93389 ; 2 uses
  %i.af = load double, ptr %i.ad, align 8, !dbg !93390, !alias.scope !93348, !noundef !3973
  %i.ag = load i64, ptr %i.ae, align 8, !dbg !93390, !alias.scope !93349
  store i64 %i.ag, ptr %i.ad, align 8, !dbg !93390, !alias.scope !93348
  store double %i.af, ptr %i.ae, align 8, !dbg !93390, !alias.scope !93349
  %i.ah = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !93386 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.t, !dbg !93385
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93385, !llvm.loop !93338
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable7ipnsortdNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #3 !dbg !93391 !guid !93450 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !93461
  br i1 %i.a, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !93461

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !93462
  %.val6 = load double, ptr %i.b, align 8, !dbg !93463, !alias.scope !4890, !noundef !3973 ; 4 uses
  %.val7 = load double, ptr %0, align 8, !dbg !93463, !alias.scope !4891, !noundef !3973
  %i.c = fcmp ord double %.val6, 0.000000e+00, !dbg !93464
  %i.d = fcmp ult double %.val6, %.val7, !dbg !93465
  %.not2.i.i.i = and i1 %i.c, %i.d, !dbg !93466   ; 2 uses
  %.not24 = icmp eq i64 %1, 2, !dbg !93467        ; 2 uses
  br i1 %.not2.i.i.i, label %.preheader, label %.preheader14, !dbg !93468

.preheader14:                                     ; preds = %bb.b
  br i1 %.not24, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph, !dbg !93469

.preheader:                                       ; preds = %bb.b
  br i1 %.not24, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph20, !dbg !93470

.lr.ph:                                           ; preds = %.preheader14, %bb.c
  %.val5 = phi double [ %.val4, %bb.c ], [ %.val6, %.preheader14 ], !dbg !93471
  %.sroa.01.0.i16 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader14 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i16, !dbg !93472
  %.val4 = load double, ptr %i.e, align 8, !dbg !93471, !alias.scope !4890, !noundef !3973 ; 3 uses
  %i.f = fcmp ord double %.val4, 0.000000e+00, !dbg !93473
  %i.g = fcmp ult double %.val4, %.val5, !dbg !93474
  %.not2.i.i.i8 = and i1 %i.f, %i.g, !dbg !93475
  br i1 %.not2.i.i.i8, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !93471

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i16, 1, !dbg !93476 ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1, !dbg !93469
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.lr.ph, !dbg !93469

.lr.ph20:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi double [ %.val, %bb.d ], [ %.val6, %.preheader ], !dbg !93477
  %.sroa.01.1.i19 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i19, !dbg !93478
  %.val = load double, ptr %i.i, align 8, !dbg !93477, !alias.scope !4890, !noundef !3973 ; 3 uses
  %i.j = fcmp ord double %.val, 0.000000e+00, !dbg !93479
  %i.k = fcmp ult double %.val, %.val3, !dbg !93480
  %.not2.i.i.i9 = and i1 %i.j, %i.k, !dbg !93481
  br i1 %.not2.i.i.i9, label %bb.d, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !93477

bb.d:                                             ; preds = %.lr.ph20
  %i.l = add nuw nsw i64 %.sroa.01.1.i19, 1, !dbg !93482 ; 2 uses
  %exitcond27.not = icmp eq i64 %i.l, %1, !dbg !93470
  br i1 %exitcond27.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.lr.ph20, !dbg !93470

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.lr.ph, %.lr.ph20, %.preheader14, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader14 ], [ 2, %.preheader ], [ %.sroa.01.1.i19, %.lr.ph20 ], [ %.sroa.01.0.i16, %.lr.ph ], !dbg !93483 ; 2 uses
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %1, !dbg !93484
  tail call void @llvm.assume(i1 %i.m), !dbg !93485
  %i.n = icmp eq i64 %.sroa.0.0.i, %1, !dbg !93486
  br i1 %i.n, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.e, !dbg !93486

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  br i1 %.not2.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93487

bb.e:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.o = or i64 %1, 1, !dbg !93488
  %i.p = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true), !dbg !93489
  %i.q = trunc nuw nsw i64 %i.p to i32, !dbg !93489
  %i.r = shl nuw nsw i32 %i.q, 1, !dbg !93490
  %i.s = xor i32 %i.r, 126, !dbg !93490
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortdNCINvMB8_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.s, ptr noalias noundef align 8 dereferenceable(8) %2), !dbg !93491
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93491

_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.e
  ret void, !dbg !93492

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMB6_Sd16sort_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  %i.t = lshr i64 %1, 1, !dbg !93493              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93457), !dbg !93494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93458), !dbg !93494
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !93495 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8, !dbg !93496
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.ph, !dbg !93496

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i
  %n.vec = and i64 %i.t, 576460752303423484       ; 3 uses
  br label %vector.body, !dbg !93496

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !93497 ; 3 uses
  %i.v = xor i64 %index, -1, !dbg !93498
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !93499 ; 3 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %i.v, !dbg !93500 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !93501 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.w, align 8, !dbg !93501, !alias.scope !93459
  %wide.load42 = load <2 x double>, ptr %i.y, align 8, !dbg !93501, !alias.scope !93459
  %i.z = getelementptr i8, ptr %i.x, i64 -8, !dbg !93501 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 -24, !dbg !93501 ; 2 uses
  %wide.load43 = load <2 x i64>, ptr %i.z, align 8, !dbg !93501, !alias.scope !93460
  %wide.load44 = load <2 x i64>, ptr %i.aa, align 8, !dbg !93501, !alias.scope !93460
  %reverse = shufflevector <2 x i64> %wide.load43, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !93501
  %reverse45 = shufflevector <2 x i64> %wide.load44, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !93501
  store <2 x i64> %reverse, ptr %i.w, align 8, !dbg !93501, !alias.scope !93459
  store <2 x i64> %reverse45, ptr %i.y, align 8, !dbg !93501, !alias.scope !93459
  %reverse46 = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !93501
  %reverse47 = shufflevector <2 x double> %wide.load42, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !93501
  store <2 x double> %reverse46, ptr %i.z, align 8, !dbg !93501, !alias.scope !93460
  store <2 x double> %reverse47, ptr %i.aa, align 8, !dbg !93501, !alias.scope !93460
  %index.next = add nuw i64 %index, 4, !dbg !93497 ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec, !dbg !93496
  br i1 %i.ab, label %middle.block, label %vector.body, !dbg !93496, !llvm.loop !93448

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !93496
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !93496

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93496

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ah, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.ac = xor i64 %.sroa.0.016.i.i, -1, !dbg !93498
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i, !dbg !93499 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.u, i64 %i.ac, !dbg !93500 ; 2 uses
  %i.af = load double, ptr %i.ad, align 8, !dbg !93501, !alias.scope !93459, !noundef !3973
  %i.ag = load i64, ptr %i.ae, align 8, !dbg !93501, !alias.scope !93460
  store i64 %i.ag, ptr %i.ad, align 8, !dbg !93501, !alias.scope !93459
  store double %i.af, ptr %i.ae, align 8, !dbg !93501, !alias.scope !93460
  %i.ah = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !93497 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.t, !dbg !93496
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93496, !llvm.loop !93449
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable7ipnsortfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1y_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #3 !dbg !93502 !guid !93564 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !93575
  br i1 %i.a, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !93575

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !93576
  %.val6 = load float, ptr %i.b, align 4, !dbg !93577, !alias.scope !4892, !noundef !3973 ; 3 uses
  %.val7 = load float, ptr %0, align 4, !dbg !93577, !alias.scope !4893, !noundef !3973 ; 2 uses
  %i.c = fcmp ord float %.val7, 0.000000e+00, !dbg !93578
  %i.d = fcmp ult float %.val7, %.val6, !dbg !93579
  %.not2.i.i.i.i = and i1 %i.c, %i.d, !dbg !93580 ; 2 uses
  %.not24 = icmp eq i64 %1, 2, !dbg !93581        ; 2 uses
  br i1 %.not2.i.i.i.i, label %.preheader, label %.preheader14, !dbg !93582

.preheader14:                                     ; preds = %bb.b
  br i1 %.not24, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, label %.lr.ph, !dbg !93583

.preheader:                                       ; preds = %bb.b
  br i1 %.not24, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, label %.lr.ph20, !dbg !93584

.lr.ph:                                           ; preds = %.preheader14, %bb.c
  %.val5 = phi float [ %.val4, %bb.c ], [ %.val6, %.preheader14 ], !dbg !93585 ; 2 uses
  %.sroa.01.0.i16 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader14 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i16, !dbg !93586
  %.val4 = load float, ptr %i.e, align 4, !dbg !93585, !alias.scope !4892, !noundef !3973 ; 2 uses
  %i.f = fcmp ord float %.val5, 0.000000e+00, !dbg !93587
  %i.g = fcmp ult float %.val5, %.val4, !dbg !93588
  %.not2.i.i.i.i8 = and i1 %i.f, %i.g, !dbg !93589
  br i1 %.not2.i.i.i.i8, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, label %bb.c, !dbg !93585

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i16, 1, !dbg !93590 ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1, !dbg !93583
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, label %.lr.ph, !dbg !93583

.lr.ph20:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi float [ %.val, %bb.d ], [ %.val6, %.preheader ], !dbg !93591 ; 2 uses
  %.sroa.01.1.i19 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.1.i19, !dbg !93592
  %.val = load float, ptr %i.i, align 4, !dbg !93591, !alias.scope !4892, !noundef !3973 ; 2 uses
  %i.j = fcmp ord float %.val3, 0.000000e+00, !dbg !93593
  %i.k = fcmp ult float %.val3, %.val, !dbg !93594
  %.not2.i.i.i.i9 = and i1 %i.j, %i.k, !dbg !93595
  br i1 %.not2.i.i.i.i9, label %bb.d, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, !dbg !93591

bb.d:                                             ; preds = %.lr.ph20
  %i.l = add nuw nsw i64 %.sroa.01.1.i19, 1, !dbg !93596 ; 2 uses
  %exitcond27.not = icmp eq i64 %i.l, %1, !dbg !93584
  br i1 %exitcond27.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, label %.lr.ph20, !dbg !93584

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit: ; preds = %.lr.ph, %.lr.ph20, %.preheader14, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader14 ], [ 2, %.preheader ], [ %.sroa.01.1.i19, %.lr.ph20 ], [ %.sroa.01.0.i16, %.lr.ph ], !dbg !93597 ; 2 uses
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %1, !dbg !93598
  tail call void @llvm.assume(i1 %i.m), !dbg !93599
  %i.n = icmp eq i64 %.sroa.0.0.i, %1, !dbg !93600
  br i1 %i.n, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, label %bb.e, !dbg !93600

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit
  br i1 %.not2.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93601

bb.e:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit
  %i.o = or i64 %1, 1, !dbg !93602
  %i.p = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true), !dbg !93603
  %i.q = trunc nuw nsw i64 %i.p to i32, !dbg !93603
  %i.r = shl nuw nsw i32 %i.q, 1, !dbg !93604
  %i.s = xor i32 %i.r, 126, !dbg !93604
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortfNCINvMB8_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1M_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, i32 noundef %i.s, ptr noalias noundef align 8 dereferenceable(8) %2), !dbg !93605
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93605

_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, %bb.e
  ret void, !dbg !93606

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread
  %i.t = lshr i64 %1, 1, !dbg !93607              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93571), !dbg !93608
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93572), !dbg !93608
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1, !dbg !93609 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 16, !dbg !93610
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.ph, !dbg !93610

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i
  %n.vec = and i64 %i.t, 1152921504606846968      ; 3 uses
  br label %vector.body, !dbg !93610

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !93611 ; 3 uses
  %i.v = xor i64 %index, -1, !dbg !93612
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !93613 ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %i.u, i64 %i.v, !dbg !93614 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !93615 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.w, align 4, !dbg !93615, !alias.scope !93573
  %wide.load42 = load <4 x float>, ptr %i.y, align 4, !dbg !93615, !alias.scope !93573
  %i.z = getelementptr i8, ptr %i.x, i64 -12, !dbg !93615 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 -28, !dbg !93615 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.z, align 4, !dbg !93615, !alias.scope !93574
  %wide.load44 = load <4 x i32>, ptr %i.aa, align 4, !dbg !93615, !alias.scope !93574
  %reverse = shufflevector <4 x i32> %wide.load43, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93615
  %reverse45 = shufflevector <4 x i32> %wide.load44, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93615
  store <4 x i32> %reverse, ptr %i.w, align 4, !dbg !93615, !alias.scope !93573
  store <4 x i32> %reverse45, ptr %i.y, align 4, !dbg !93615, !alias.scope !93573
  %reverse46 = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93615
  %reverse47 = shufflevector <4 x float> %wide.load42, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93615
  store <4 x float> %reverse46, ptr %i.z, align 4, !dbg !93615, !alias.scope !93574
  store <4 x float> %reverse47, ptr %i.aa, align 4, !dbg !93615, !alias.scope !93574
  %index.next = add nuw i64 %index, 8, !dbg !93611 ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec, !dbg !93610
  br i1 %i.ab, label %middle.block, label %vector.body, !dbg !93610, !llvm.loop !93562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !93610
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !93610

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93610

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ah, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.ac = xor i64 %.sroa.0.016.i.i, -1, !dbg !93612
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.016.i.i, !dbg !93613 ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.u, i64 %i.ac, !dbg !93614 ; 2 uses
  %i.af = load float, ptr %i.ad, align 4, !dbg !93615, !alias.scope !93573, !noundef !3973
  %i.ag = load i32, ptr %i.ae, align 4, !dbg !93615, !alias.scope !93574
  store i32 %i.ag, ptr %i.ad, align 4, !dbg !93615, !alias.scope !93573
  store float %i.af, ptr %i.ae, align 4, !dbg !93615, !alias.scope !93574
  %i.ah = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !93611 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.t, !dbg !93610
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93610, !llvm.loop !93563
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable7ipnsortfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #3 !dbg !93616 !guid !93675 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !93686
  br i1 %i.a, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !93686

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !93687
  %.val6 = load float, ptr %i.b, align 4, !dbg !93688, !alias.scope !4894, !noundef !3973 ; 4 uses
  %.val7 = load float, ptr %0, align 4, !dbg !93688, !alias.scope !4895, !noundef !3973
  %i.c = fcmp ord float %.val6, 0.000000e+00, !dbg !93689
  %i.d = fcmp ult float %.val6, %.val7, !dbg !93690
  %.not2.i.i.i = and i1 %i.c, %i.d, !dbg !93691   ; 2 uses
  %.not24 = icmp eq i64 %1, 2, !dbg !93692        ; 2 uses
  br i1 %.not2.i.i.i, label %.preheader, label %.preheader14, !dbg !93693

.preheader14:                                     ; preds = %bb.b
  br i1 %.not24, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph, !dbg !93694

.preheader:                                       ; preds = %bb.b
  br i1 %.not24, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph20, !dbg !93695

.lr.ph:                                           ; preds = %.preheader14, %bb.c
  %.val5 = phi float [ %.val4, %bb.c ], [ %.val6, %.preheader14 ], !dbg !93696
  %.sroa.01.0.i16 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader14 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i16, !dbg !93697
  %.val4 = load float, ptr %i.e, align 4, !dbg !93696, !alias.scope !4894, !noundef !3973 ; 3 uses
  %i.f = fcmp ord float %.val4, 0.000000e+00, !dbg !93698
  %i.g = fcmp ult float %.val4, %.val5, !dbg !93699
  %.not2.i.i.i8 = and i1 %i.f, %i.g, !dbg !93700
  br i1 %.not2.i.i.i8, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !93696

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i16, 1, !dbg !93701 ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1, !dbg !93694
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.lr.ph, !dbg !93694

.lr.ph20:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi float [ %.val, %bb.d ], [ %.val6, %.preheader ], !dbg !93702
  %.sroa.01.1.i19 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.1.i19, !dbg !93703
  %.val = load float, ptr %i.i, align 4, !dbg !93702, !alias.scope !4894, !noundef !3973 ; 3 uses
  %i.j = fcmp ord float %.val, 0.000000e+00, !dbg !93704
  %i.k = fcmp ult float %.val, %.val3, !dbg !93705
  %.not2.i.i.i9 = and i1 %i.j, %i.k, !dbg !93706
  br i1 %.not2.i.i.i9, label %bb.d, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !93702

bb.d:                                             ; preds = %.lr.ph20
  %i.l = add nuw nsw i64 %.sroa.01.1.i19, 1, !dbg !93707 ; 2 uses
  %exitcond27.not = icmp eq i64 %i.l, %1, !dbg !93695
  br i1 %exitcond27.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.lr.ph20, !dbg !93695

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.lr.ph, %.lr.ph20, %.preheader14, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader14 ], [ 2, %.preheader ], [ %.sroa.01.1.i19, %.lr.ph20 ], [ %.sroa.01.0.i16, %.lr.ph ], !dbg !93708 ; 2 uses
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %1, !dbg !93709
  tail call void @llvm.assume(i1 %i.m), !dbg !93710
  %i.n = icmp eq i64 %.sroa.0.0.i, %1, !dbg !93711
  br i1 %i.n, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.e, !dbg !93711

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  br i1 %.not2.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93712

bb.e:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.o = or i64 %1, 1, !dbg !93713
  %i.p = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true), !dbg !93714
  %i.q = trunc nuw nsw i64 %i.p to i32, !dbg !93714
  %i.r = shl nuw nsw i32 %i.q, 1, !dbg !93715
  %i.s = xor i32 %i.r, 126, !dbg !93715
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortfNCINvMB8_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, i32 noundef %i.s, ptr noalias noundef align 8 dereferenceable(8) %2), !dbg !93716
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93716

_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, %bb.e
  ret void, !dbg !93717

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMB6_Sf16sort_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  %i.t = lshr i64 %1, 1, !dbg !93718              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93682), !dbg !93719
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93683), !dbg !93719
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1, !dbg !93720 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 16, !dbg !93721
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.ph, !dbg !93721

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i
  %n.vec = and i64 %i.t, 1152921504606846968      ; 3 uses
  br label %vector.body, !dbg !93721

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !93722 ; 3 uses
  %i.v = xor i64 %index, -1, !dbg !93723
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !93724 ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %i.u, i64 %i.v, !dbg !93725 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !93726 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.w, align 4, !dbg !93726, !alias.scope !93684
  %wide.load42 = load <4 x float>, ptr %i.y, align 4, !dbg !93726, !alias.scope !93684
  %i.z = getelementptr i8, ptr %i.x, i64 -12, !dbg !93726 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 -28, !dbg !93726 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.z, align 4, !dbg !93726, !alias.scope !93685
  %wide.load44 = load <4 x i32>, ptr %i.aa, align 4, !dbg !93726, !alias.scope !93685
  %reverse = shufflevector <4 x i32> %wide.load43, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93726
  %reverse45 = shufflevector <4 x i32> %wide.load44, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93726
  store <4 x i32> %reverse, ptr %i.w, align 4, !dbg !93726, !alias.scope !93684
  store <4 x i32> %reverse45, ptr %i.y, align 4, !dbg !93726, !alias.scope !93684
  %reverse46 = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93726
  %reverse47 = shufflevector <4 x float> %wide.load42, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93726
  store <4 x float> %reverse46, ptr %i.z, align 4, !dbg !93726, !alias.scope !93685
  store <4 x float> %reverse47, ptr %i.aa, align 4, !dbg !93726, !alias.scope !93685
  %index.next = add nuw i64 %index, 8, !dbg !93722 ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec, !dbg !93721
  br i1 %i.ab, label %middle.block, label %vector.body, !dbg !93721, !llvm.loop !93673

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !93721
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !93721

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93721

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ah, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.ac = xor i64 %.sroa.0.016.i.i, -1, !dbg !93723
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.016.i.i, !dbg !93724 ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.u, i64 %i.ac, !dbg !93725 ; 2 uses
  %i.af = load float, ptr %i.ad, align 4, !dbg !93726, !alias.scope !93684, !noundef !3973
  %i.ag = load i32, ptr %i.ae, align 4, !dbg !93726, !alias.scope !93685
  store i32 %i.ag, ptr %i.ad, align 4, !dbg !93726, !alias.scope !93684
  store float %i.af, ptr %i.ae, align 4, !dbg !93726, !alias.scope !93685
  %i.ah = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !93722 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.t, !dbg !93721
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93721, !llvm.loop !93674
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable7ipnsorthNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1y_(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #3 !dbg !93727 !guid !93769 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !93780
  br i1 %i.a, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !93780

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !93781
  %.val6 = load i8, ptr %i.b, align 1, !dbg !93782, !alias.scope !4896, !noundef !3973 ; 3 uses
  %.val7 = load i8, ptr %0, align 1, !dbg !93782, !alias.scope !4897, !noundef !3973
  %i.c = icmp ult i8 %.val7, %.val6, !dbg !93783  ; 2 uses
  %.not22 = icmp eq i64 %1, 2, !dbg !93784        ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12, !dbg !93785

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, label %.lr.ph, !dbg !93786

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, label %.lr.ph18, !dbg !93787

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i8 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ], !dbg !93788
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i14, !dbg !93789
  %.val4 = load i8, ptr %i.d, align 1, !dbg !93788, !alias.scope !4896, !noundef !3973 ; 2 uses
  %i.e = icmp ult i8 %.val5, %.val4, !dbg !93790
  br i1 %i.e, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, label %bb.c, !dbg !93788

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1, !dbg !93791 ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1, !dbg !93786
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, label %.lr.ph, !dbg !93786

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i8 [ %.val, %bb.d ], [ %.val6, %.preheader ], !dbg !93792
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.1.i17, !dbg !93793
  %.val = load i8, ptr %i.g, align 1, !dbg !93792, !alias.scope !4896, !noundef !3973 ; 2 uses
  %i.h = icmp ult i8 %.val3, %.val, !dbg !93794
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit, !dbg !93792

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1, !dbg !93795 ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1, !dbg !93787
  br i1 %exitcond25.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, label %.lr.ph18, !dbg !93787

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ], !dbg !93796 ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1, !dbg !93797
  tail call void @llvm.assume(i1 %i.j), !dbg !93798
  %i.k = icmp eq i64 %.sroa.0.0.i, %1, !dbg !93799
  br i1 %i.k, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, label %bb.e, !dbg !93799

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit
  br i1 %i.c, label %iter.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93800

bb.e:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit
  %i.l = or i64 %1, 1, !dbg !93801
  %i.m = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true), !dbg !93802
  %i.n = trunc nuw nsw i64 %i.m to i32, !dbg !93802
  %i.o = shl nuw nsw i32 %i.n, 1, !dbg !93803
  %i.p = xor i32 %i.o, 126, !dbg !93803
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksorthNCINvMB8_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1M_(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2), !dbg !93804
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh7reverseCs1LHh8CLbVkQ_11polars_core.exit, !dbg !93804

_RNvMNtCscgRAwXFJnXP_4core5sliceSh7reverseCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, %middle.block, %vec.epilog.middle.block, %bb.a, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread, %bb.e
  ret void, !dbg !93805

iter.check:                                       ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpEs_0E0EB1H_.exit.thread
  %i.q = lshr i64 %1, 1, !dbg !93806              ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93776), !dbg !93807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93777), !dbg !93807
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !93808 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %1, 8, !dbg !93809
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vector.main.loop.iter.check, !dbg !93809

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp samesign ult i64 %1, 32, !dbg !93809
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph, !dbg !93809

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.q, 4611686018427387888      ; 4 uses
  br label %vector.body, !dbg !93809

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !93810 ; 3 uses
  %i.s = xor i64 %index, -1, !dbg !93811
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !93812 ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 %i.s, !dbg !93813
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !dbg !93814, !alias.scope !93778
  %i.v = getelementptr i8, ptr %i.u, i64 -15, !dbg !93814 ; 2 uses
  %wide.load40 = load <16 x i8>, ptr %i.v, align 1, !dbg !93814, !alias.scope !93779
  %reverse = shufflevector <16 x i8> %wide.load40, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !93814
  store <16 x i8> %reverse, ptr %i.t, align 1, !dbg !93814, !alias.scope !93778
  %reverse41 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !93814
  store <16 x i8> %reverse41, ptr %i.v, align 1, !dbg !93814, !alias.scope !93779
  %index.next = add nuw i64 %index, 16, !dbg !93810 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !93809
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !93809, !llvm.loop !93766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec, !dbg !93809
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !93809

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.x = and i64 %1, 24
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, label %vec.epilog.ph, !prof !4885

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.q, 4611686018427387900    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ], !dbg !93810 ; 3 uses
  %i.y = xor i64 %index43, -1, !dbg !93811
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index43, !dbg !93812 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.y, !dbg !93813
  %wide.load44 = load <4 x i8>, ptr %i.z, align 1, !dbg !93814, !alias.scope !93778
  %i.ab = getelementptr i8, ptr %i.aa, i64 -3, !dbg !93814 ; 2 uses
  %wide.load45 = load <4 x i8>, ptr %i.ab, align 1, !dbg !93814, !alias.scope !93779
  %reverse46 = shufflevector <4 x i8> %wide.load45, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93814
  store <4 x i8> %reverse46, ptr %i.z, align 1, !dbg !93814, !alias.scope !93778
  %reverse47 = shufflevector <4 x i8> %wide.load44, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !93814
  store <4 x i8> %reverse47, ptr %i.ab, align 1, !dbg !93814, !alias.scope !93779
  %index.next48 = add nuw i64 %index43, 4, !dbg !93810 ; 2 uses
  %i.ac = icmp eq i64 %index.next48, %n.vec42, !dbg !93809
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !93809, !llvm.loop !93767

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.q, %n.vec42, !dbg !93809
  br i1 %cmp.n49, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, !dbg !93809

_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93809

_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ai, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.preheader ] ; 3 uses
  %i.ad = xor i64 %.sroa.0.016.i.i, -1, !dbg !93811
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.016.i.i, !dbg !93812 ; 2 uses
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ad, !dbg !93813 ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !dbg !93814, !alias.scope !93778, !noundef !3973
  %i.ah = load i8, ptr %i.af, align 1, !dbg !93814, !alias.scope !93779
  store i8 %i.ah, ptr %i.ae, align 1, !dbg !93814, !alias.scope !93778
  store i8 %i.ag, ptr %i.af, align 1, !dbg !93814, !alias.scope !93779
  %i.ai = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !93810 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.q, !dbg !93809
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i, !dbg !93809, !llvm.loop !93768
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable7ipnsorthNCINvMB6_Sh16sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #3 !dbg !93815 !guid !93857 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !93868
  br i1 %i.a, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh7reverseCs1LHh8CLbVkQ_11polars_core.exit, label %bb.b, !dbg !93868

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !93869
  %.val6 = load i8, ptr %i.b, align 1, !dbg !93870, !alias.scope !4898, !noundef !3973 ; 3 uses
  %.val7 = load i8, ptr %0, align 1, !dbg !93870, !alias.scope !4899, !noundef !3973
  %i.c = icmp ult i8 %.val6, %.val7, !dbg !93871  ; 2 uses
  %.not22 = icmp eq i64 %1, 2, !dbg !93872        ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12, !dbg !93873

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph, !dbg !93874

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runhNCINvMB6_Sh16sort_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph18, !dbg !93875

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i8 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ], !dbg !93876
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortaNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  %i.dp = or i64 %i.bp, 1, !dbg !150999
  %i.dq = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true), !dbg !151000
  %i.dr = trunc nuw nsw i64 %i.dq to i32, !dbg !151000
  %i.ds = shl nuw nsw i32 %i.dr, 1, !dbg !151001
  %i.dt = xor i32 %i.ds, 126, !dbg !151001
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortaNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %i.do, i64 noundef range(i64 0, -9223372036854775808) %i.bp, ptr noalias noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.dt, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #33, !dbg !151002
  br label %bb.x, !dbg !151003

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeaNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeaNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.0.0.i = phi i64 [ %i.dn, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeaNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.by, %bb.u ], !dbg !151004 ; 2 uses
  %i.du = icmp ugt i64 %i.bh, 1, !dbg !150879
  br i1 %i.du, label %bb.r, label %._crit_edge, !dbg !150879

bb.aa:                                            ; preds = %._crit_edge
  %i.dv = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !151005
  %i.dw = lshr i64 %.sroa.018.0, 1, !dbg !151006
  %i.dx = add nuw i64 %i.dw, %.sroa.09.0, !dbg !151007
  br label %bb.f, !dbg !150873

bb.ab:                                            ; preds = %._crit_edge
  %i.dy = and i64 %.sroa.023.1.lcssa, 1, !dbg !151008
  %.not31 = icmp eq i64 %i.dy, 0, !dbg !151009
  br i1 %.not31, label %bb.ac, label %bb.ad, !dbg !151009

bb.ac:                                            ; preds = %bb.ab
  %i.dz = or i64 %1, 1, !dbg !151010
  %i.ea = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true), !dbg !151011
  %i.eb = trunc nuw nsw i64 %i.ea to i32, !dbg !151011
  %i.ec = shl nuw nsw i32 %i.eb, 1, !dbg !151012
  %i.ed = xor i32 %i.ec, 126, !dbg !151012
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortaNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.ed, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #33, !dbg !151013
  br label %bb.ad, !dbg !151014

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !151015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !151016
  br label %bb.ae, !dbg !151017

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void, !dbg !151017
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !151018 !guid !151260 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !151301
  br i1 %i.c, label %bb.ae, label %bb.b, !dbg !151301

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !151302
  %i.e = urem i64 4611686018427387904, %1, !dbg !151303
  %.not = icmp ne i64 %i.e, 0, !dbg !151304
  %i.f = zext i1 %.not to i64, !dbg !151304
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !151304 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !151305
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !151305

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !151306
  br label %bb.e, !dbg !151306

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !151307
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !151308
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !151309
  br label %bb.e, !dbg !151310

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !151311 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !151312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !151313
  br label %bb.f, !dbg !151314

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ], !dbg !151315 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.aa ], !dbg !151316 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dv, %bb.aa ], !dbg !151317 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !151318 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !151318

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.021.0 = phi i8 [ %i.bf, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ 0, %bb.f ], !dbg !151319 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ 1, %bb.f ], !dbg !151319 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !151320
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !151320

.lr.ph:                                           ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !151320

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !151321 ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0, !dbg !151322 ; 8 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !151323
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !151323

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !151324

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !151325
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.k, !dbg !151325

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !151326
  %.val10.i = load double, ptr %i.q, align 8, !dbg !151327, !alias.scope !151267, !noundef !3973 ; 4 uses
  %.val11.i = load double, ptr %i.o, align 8, !dbg !151327, !alias.scope !151268, !noundef !3973
  %i.r = fcmp ord double %.val10.i, 0.000000e+00, !dbg !151328
  %i.s = fcmp ult double %.val10.i, %.val11.i, !dbg !151329
  %.not2.i.i.i.i = and i1 %i.r, %i.s, !dbg !151330 ; 2 uses
  %.not35.i = icmp eq i64 %i.n, 2, !dbg !151331   ; 2 uses
  br i1 %.not2.i.i.i.i, label %.preheader.i, label %.preheader24.i, !dbg !151332

.preheader24.i:                                   ; preds = %bb.k
  br i1 %.not35.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %.lr.ph.i, !dbg !151333

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not35.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i, label %.lr.ph30.i, !dbg !151334

.lr.ph.i:                                         ; preds = %.preheader24.i, %bb.l
  %.val9.i = phi double [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader24.i ], !dbg !151335
  %.sroa.01.0.i26.i = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader24.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i26.i, !dbg !151336
  %.val8.i = load double, ptr %i.t, align 8, !dbg !151335, !alias.scope !151267, !noundef !3973 ; 3 uses
  %i.u = fcmp ord double %.val8.i, 0.000000e+00, !dbg !151337
  %i.v = fcmp ult double %.val8.i, %.val9.i, !dbg !151338
  %.not2.i.i.i12.i = and i1 %i.u, %i.v, !dbg !151339
  br i1 %.not2.i.i.i12.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.l, !dbg !151335

bb.l:                                             ; preds = %.lr.ph.i
  %i.w = add nuw nsw i64 %.sroa.01.0.i26.i, 1, !dbg !151340 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.n, !dbg !151333
  br i1 %exitcond.not.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, label %.lr.ph.i, !dbg !151333

.lr.ph30.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi double [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ], !dbg !151341
  %.sroa.01.1.i29.i = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i29.i, !dbg !151342
  %.val.i = load double, ptr %i.x, align 8, !dbg !151341, !alias.scope !151267, !noundef !3973 ; 3 uses
  %i.y = fcmp ord double %.val.i, 0.000000e+00, !dbg !151343
  %i.z = fcmp ult double %.val.i, %.val7.i, !dbg !151344
  %.not2.i.i.i13.i = and i1 %i.y, %i.z, !dbg !151345
  br i1 %.not2.i.i.i13.i, label %bb.m, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !151341

bb.m:                                             ; preds = %.lr.ph30.i
  %i.aa = add nuw nsw i64 %.sroa.01.1.i29.i, 1, !dbg !151346 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.aa, %i.n, !dbg !151334
  br i1 %exitcond38.not.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, label %.lr.ph30.i, !dbg !151334

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph30.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i29.i, %.lr.ph30.i ], [ %.sroa.01.0.i26.i, %.lr.ph.i ], [ %i.n, %bb.l ], !dbg !151347 ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !151348
  tail call void @llvm.assume(i1 %i.ab), !dbg !151349
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !151350
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !151350

bb.n:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  br i1 %.not2.i.i.i.i, label %bb.q, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !151351

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0), !dbg !151352
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i14.i, 1, !dbg !151353
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151354

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i15.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32), !dbg !151355 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i15.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #33, !dbg !151356
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i15.i, 1, !dbg !151357
  %i.ae = or disjoint i64 %i.ad, 1, !dbg !151357
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151354

_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i, %middle.block, %.preheader24.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i21.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader24.i ], [ %.sroa.0.0.i495660.i, %middle.block ], [ %.sroa.0.0.i495660.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i21.i, 1, !dbg !151358
  %i.ag = or disjoint i64 %i.af, 1, !dbg !151358
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151359

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1, !dbg !151360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151271), !dbg !151361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151272), !dbg !151361
  %.not.i.i.i = icmp eq i64 %i.ah, 0, !dbg !151362
  br i1 %.not.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i, !dbg !151362

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i495660.i, !dbg !151363 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ai, 4, !dbg !151362
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader, label %vector.ph, !dbg !151362

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ai, 9223372036854775804     ; 3 uses
  br label %vector.body, !dbg !151362

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !151364 ; 3 uses
  %i.ak = xor i64 %index, -1, !dbg !151365
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index, !dbg !151366 ; 3 uses
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.ak, !dbg !151367 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !151368 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.al, align 8, !dbg !151368, !alias.scope !151273
  %wide.load77 = load <2 x double>, ptr %i.an, align 8, !dbg !151368, !alias.scope !151273
  %i.ao = getelementptr i8, ptr %i.am, i64 -8, !dbg !151368 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 -24, !dbg !151368 ; 2 uses
  %wide.load78 = load <2 x i64>, ptr %i.ao, align 8, !dbg !151368, !alias.scope !151274
  %wide.load79 = load <2 x i64>, ptr %i.ap, align 8, !dbg !151368, !alias.scope !151274
  %reverse = shufflevector <2 x i64> %wide.load78, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !151368
  %reverse80 = shufflevector <2 x i64> %wide.load79, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !151368
  store <2 x i64> %reverse, ptr %i.al, align 8, !dbg !151368, !alias.scope !151273
  store <2 x i64> %reverse80, ptr %i.an, align 8, !dbg !151368, !alias.scope !151273
  %reverse81 = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !151368
  %reverse82 = shufflevector <2 x double> %wide.load77, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !151368
  store <2 x double> %reverse81, ptr %i.ao, align 8, !dbg !151368, !alias.scope !151274
  store <2 x double> %reverse82, ptr %i.ap, align 8, !dbg !151368, !alias.scope !151274
  %index.next = add nuw i64 %index, 4, !dbg !151364 ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec, !dbg !151362
  br i1 %i.aq, label %middle.block, label %vector.body, !dbg !151362, !llvm.loop !151109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec, !dbg !151362
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader, !dbg !151362

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i, !dbg !151362

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.aw, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.016.i.i.i, -1, !dbg !151365
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i, !dbg !151366 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.aj, i64 %i.ar, !dbg !151367 ; 2 uses
  %i.au = load double, ptr %i.as, align 8, !dbg !151368, !alias.scope !151273, !noundef !3973
  %i.av = load i64, ptr %i.at, align 8, !dbg !151368, !alias.scope !151274
  store i64 %i.av, ptr %i.as, align 8, !dbg !151368, !alias.scope !151273
  store double %i.au, ptr %i.at, align 8, !dbg !151368, !alias.scope !151274
  %i.aw = add nuw nsw i64 %.sroa.0.016.i.i.i, 1, !dbg !151364 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aw, %i.ai, !dbg !151362
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i, !dbg !151362, !llvm.loop !151110

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_rundNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscgRAwXFJnXP_4core5sliceSd7reverseCs1LHh8CLbVkQ_11polars_core.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ], !dbg !151369 ; 2 uses
  %i.ax = lshr i64 %.sroa.023.0, 1, !dbg !151370
  %i.ay = lshr i64 %.sroa.0.0.i34, 1, !dbg !151371
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !151372 ; 2 uses
  %i.az = sub nsw i64 %factor, %i.ax, !dbg !151372
  %i.ba = add nuw nsw i64 %i.ay, %factor, !dbg !151373
  %i.bb = mul i64 %i.az, %.sroa.0.0, !dbg !151374
  %i.bc = mul i64 %i.ba, %.sroa.0.0, !dbg !151375
  %i.bd = xor i64 %i.bc, %i.bb, !dbg !151376
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false), !dbg !151377
  %i.bf = trunc nuw nsw i64 %i.be to i8, !dbg !151376
  br label %bb.g, !dbg !151378

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.145 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bg, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %.sroa.023.144 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.145, -1, !dbg !151379 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg, !dbg !151380
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !151381, !noundef !3973
  %.not29 = icmp ult i8 %i.bi, %.sroa.021.0, !dbg !151381
  br i1 %.not29, label %._crit_edge, label %bb.s, !dbg !151381

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.144, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], !dbg !151315 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.145, %bb.r ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], !dbg !151317 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !151382
  store i64 %.sroa.023.1.lcssa, ptr %i.bj, align 8, !dbg !151383
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !151384
  store i8 %.sroa.021.0, ptr %i.bk, align 1, !dbg !151385
  br i1 %i.k, label %bb.aa, label %bb.ab, !dbg !151386

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg, !dbg !151387
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !151388, !noundef !3973 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1, !dbg !151389         ; 8 uses
  %i.bo = lshr i64 %.sroa.023.144, 1, !dbg !151390 ; 6 uses
  %i.bp = add nuw i64 %i.bn, %i.bo, !dbg !151391  ; 4 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp, !dbg !151392
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq, !dbg !151393 ; 6 uses
  %i.bs = icmp samesign ugt i64 %i.bp, %3, !dbg !151394
  %i.bt = trunc i64 %.sroa.023.144 to i1
  %i.bu = or i64 %i.bm, %.sroa.023.144, !dbg !151395
  %i.bv = trunc i64 %i.bu to i1, !dbg !151395
  %or.cond3.i = or i1 %i.bs, %i.bv, !dbg !151395
  br i1 %or.cond3.i, label %bb.t, label %bb.u, !dbg !151395

bb.t:                                             ; preds = %bb.s
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.v, label %bb.w, !dbg !151396

bb.u:                                             ; preds = %bb.s
  %i.bx = shl nuw nsw i64 %i.bp, 1, !dbg !151397
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151398

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bt, label %bb.x, label %bb.z, !dbg !151399

bb.w:                                             ; preds = %bb.t
  %i.by = or i64 %i.bn, 1, !dbg !151400
  %i.bz = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true), !dbg !151401
  %i.ca = trunc nuw nsw i64 %i.bz to i32, !dbg !151401
  %i.cb = shl nuw nsw i32 %i.ca, 1, !dbg !151402
  %i.cc = xor i32 %i.cb, 126, !dbg !151402
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 1152921504606846976) %i.bn, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #33, !dbg !151403
  br label %bb.v, !dbg !151404

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151288), !dbg !151405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151289), !dbg !151405
  %i.cd = icmp eq i64 %i.bn, 0, !dbg !151406
  %i.ce = icmp eq i64 %i.bo, 0
  %or.cond.i = or i1 %i.ce, %i.cd, !dbg !151406
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.y, !dbg !151406

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 range(i64 0, -9223372036854775808) %i.bn), !dbg !151407 ; 2 uses
  %i.cf = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !151408
  br i1 %i.cf, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.critedge.i, !dbg !151408

.critedge.i:                                      ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn, !dbg !151409 ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bn, %i.bo, !dbg !151410 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cg, ptr %i.br, !dbg !151411
  %i.ch = shl nuw nsw i64 %.sroa.0.0.i.i35, 3, !dbg !151412 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ch, i1 false), !dbg !151412, !alias.scope !151290
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch, !dbg !151413 ; 3 uses
  br i1 %.not.i36, label %.preheader.i37, label %.lr.ph.i.i, !dbg !151414

.preheader.i37:                                   ; preds = %.critedge.i, %.preheader.i37
  %i.cj = phi ptr [ %i.cu, %.preheader.i37 ], [ %i.ci, %.critedge.i ], !dbg !151415
  %i.ck = phi ptr [ %i.cs, %.preheader.i37 ], [ %i.cg, %.critedge.i ], !dbg !151416
  %.sroa.0.0.i17.i = phi ptr [ %i.cn, %.preheader.i37 ], [ %i.m, %.critedge.i ]
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -8, !dbg !151415 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 -8, !dbg !151417 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8, !dbg !151418 ; 2 uses
  %.val.i.i = load double, ptr %i.cm, align 8, !dbg !151419, !alias.scope !151291, !noalias !151292, !noundef !3973 ; 3 uses
  %.val10.i.i = load double, ptr %i.cl, align 8, !dbg !151419, !alias.scope !151293, !noalias !151292, !noundef !3973 ; 2 uses
  %i.co = fcmp ord double %.val.i.i, 0.000000e+00, !dbg !151420
  %i.cp = fcmp ult double %.val.i.i, %.val10.i.i, !dbg !151421
  %.not2.i.i.i.i.i = and i1 %i.co, %i.cp, !dbg !151422 ; 3 uses
  %.v.i.i = select i1 %.not2.i.i.i.i.i, double %.val10.i.i, double %.val.i.i, !dbg !151423
  store double %.v.i.i, ptr %i.cn, align 8, !dbg !151424, !alias.scope !151288, !noalias !151292
  %i.cq = xor i1 %.not2.i.i.i.i.i, true, !dbg !151425
  %i.cr = zext i1 %i.cq to i64, !dbg !151425
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cr, !dbg !151426 ; 3 uses
  %i.ct = zext i1 %.not2.i.i.i.i.i to i64, !dbg !151427
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ct, !dbg !151428 ; 3 uses
  %i.cv = icmp eq ptr %i.cs, %i.br, !dbg !151429
  %i.cw = icmp eq ptr %i.cu, %2
  %or.cond.i.i = select i1 %i.cv, i1 true, i1 %i.cw, !dbg !151429
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, label %.preheader.i37, !dbg !151429

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cx = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.br, %.critedge.i ], !dbg !151430 ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.cg, %.critedge.i ] ; 2 uses
  %i.cy = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load double, ptr %.sroa.0.04.i.i, align 8, !dbg !151430, !alias.scope !151294, !noalias !151295, !noundef !3973 ; 3 uses
  %.val.i19.i = load double, ptr %i.cy, align 8, !dbg !151430, !alias.scope !151296, !noalias !151295, !noundef !3973 ; 2 uses
  %i.cz = fcmp ord double %.sroa.0.0.val.i.i, 0.000000e+00, !dbg !151431
  %i.da = fcmp ult double %.sroa.0.0.val.i.i, %.val.i19.i, !dbg !151432
  %.not2.i.i.i.i20.i = and i1 %i.cz, %i.da, !dbg !151433 ; 3 uses
  %i.db = xor i1 %.not2.i.i.i.i20.i, true, !dbg !151434
  %.v.i21.i = select i1 %.not2.i.i.i.i20.i, double %.sroa.0.0.val.i.i, double %.val.i19.i, !dbg !151435
  store double %.v.i21.i, ptr %i.cx, align 8, !dbg !151436, !alias.scope !151288, !noalias !151295
  %i.dc = zext i1 %i.db to i64, !dbg !151437
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dc, !dbg !151438 ; 3 uses
  %i.de = zext i1 %.not2.i.i.i.i20.i to i64, !dbg !151439
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.04.i.i, i64 %i.de, !dbg !151440 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 8, !dbg !151441 ; 2 uses
  %i.dh = icmp ne ptr %i.dd, %i.ci, !dbg !151442
  %i.di = icmp ne ptr %i.df, %i.m
  %or.cond.i22.i = select i1 %i.dh, i1 %i.di, i1 false, !dbg !151442
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !151442

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i37
  %.sroa.13.1.i = phi ptr [ %i.cs, %.preheader.i37 ], [ %i.dg, %.lr.ph.i.i ], !dbg !151443
  %.sroa.7.0.i = phi ptr [ %i.cu, %.preheader.i37 ], [ %i.ci, %.lr.ph.i.i ], !dbg !151444
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i37 ], [ %i.dd, %.lr.ph.i.i ], !dbg !151444 ; 2 uses
  %i.dj = ptrtoint ptr %.sroa.7.0.i to i64, !dbg !151445
  %i.dk = ptrtoint ptr %.sroa.0.1.i to i64, !dbg !151445
  %i.dl = sub nuw i64 %i.dj, %i.dk, !dbg !151445
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dl, i1 false), !dbg !151446, !alias.scope !151290, !noalias !151297
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151447

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  %i.dm = shl nuw nsw i64 %i.bp, 1, !dbg !151448
  %i.dn = or disjoint i64 %i.dm, 1, !dbg !151448
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151398

bb.z:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn, !dbg !151449
  %i.dp = or i64 %i.bo, 1, !dbg !151450
  %i.dq = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true), !dbg !151451
  %i.dr = trunc nuw nsw i64 %i.dq to i32, !dbg !151451
  %i.ds = shl nuw nsw i32 %i.dr, 1, !dbg !151452
  %i.dt = xor i32 %i.ds, 126, !dbg !151452
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %i.do, i64 noundef range(i64 0, 1152921504606846976) %i.bo, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #33, !dbg !151453
  br label %bb.x, !dbg !151454

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.0.0.i = phi i64 [ %i.dn, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergedNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.bx, %bb.u ], !dbg !151455 ; 2 uses
  %i.du = icmp ugt i64 %i.bg, 1, !dbg !151320
  br i1 %i.du, label %bb.r, label %._crit_edge, !dbg !151320

bb.aa:                                            ; preds = %._crit_edge
  %i.dv = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !151456
  %i.dw = lshr i64 %.sroa.018.0, 1, !dbg !151457
  %i.dx = add nuw i64 %i.dw, %.sroa.09.0, !dbg !151458
  br label %bb.f, !dbg !151314

bb.ab:                                            ; preds = %._crit_edge
  %i.dy = and i64 %.sroa.023.1.lcssa, 1, !dbg !151459
  %.not31 = icmp eq i64 %i.dy, 0, !dbg !151460
  br i1 %.not31, label %bb.ac, label %bb.ad, !dbg !151460

bb.ac:                                            ; preds = %bb.ab
  %i.dz = or i64 %1, 1, !dbg !151461
  %i.ea = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true), !dbg !151462
  %i.eb = trunc nuw nsw i64 %i.ea to i32, !dbg !151462
  %i.ec = shl nuw nsw i32 %i.eb, 1, !dbg !151463
  %i.ed = xor i32 %i.ec, 126, !dbg !151463
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ed, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #33, !dbg !151464
  br label %bb.ad, !dbg !151465

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !151466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !151467
  br label %bb.ae, !dbg !151468

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void, !dbg !151468
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !151469 !guid !151711 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !151752
  br i1 %i.c, label %bb.ae, label %bb.b, !dbg !151752

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !151753
  %i.e = urem i64 4611686018427387904, %1, !dbg !151754
  %.not = icmp ne i64 %i.e, 0, !dbg !151755
  %i.f = zext i1 %.not to i64, !dbg !151755
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !151755 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !151756
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !151756

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !151757
  br label %bb.e, !dbg !151757

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !151758
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !151759
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !151760
  br label %bb.e, !dbg !151761

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !151762 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !151763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !151764
  br label %bb.f, !dbg !151765

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ], !dbg !151766 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.aa ], !dbg !151767 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dv, %bb.aa ], !dbg !151768 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !151769 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !151769

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.021.0 = phi i8 [ %i.bf, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ 0, %bb.f ], !dbg !151770 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ 1, %bb.f ], !dbg !151770 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !151771
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !151771

.lr.ph:                                           ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !151771

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !151772 ; 11 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0, !dbg !151773 ; 8 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !151774
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !151774

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !151775

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !151776
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.k, !dbg !151776

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !151777
  %.val10.i = load float, ptr %i.q, align 4, !dbg !151778, !alias.scope !151718, !noundef !3973 ; 4 uses
  %.val11.i = load float, ptr %i.o, align 4, !dbg !151778, !alias.scope !151719, !noundef !3973
  %i.r = fcmp ord float %.val10.i, 0.000000e+00, !dbg !151779
  %i.s = fcmp ult float %.val10.i, %.val11.i, !dbg !151780
  %.not2.i.i.i.i = and i1 %i.r, %i.s, !dbg !151781 ; 2 uses
  %.not35.i = icmp eq i64 %i.n, 2, !dbg !151782   ; 2 uses
  br i1 %.not2.i.i.i.i, label %.preheader.i, label %.preheader24.i, !dbg !151783

.preheader24.i:                                   ; preds = %bb.k
  br i1 %.not35.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %.lr.ph.i, !dbg !151784

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not35.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i, label %.lr.ph30.i, !dbg !151785

.lr.ph.i:                                         ; preds = %.preheader24.i, %bb.l
  %.val9.i = phi float [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader24.i ], !dbg !151786
  %.sroa.01.0.i26.i = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader24.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i26.i, !dbg !151787
  %.val8.i = load float, ptr %i.t, align 4, !dbg !151786, !alias.scope !151718, !noundef !3973 ; 3 uses
  %i.u = fcmp ord float %.val8.i, 0.000000e+00, !dbg !151788
  %i.v = fcmp ult float %.val8.i, %.val9.i, !dbg !151789
  %.not2.i.i.i12.i = and i1 %i.u, %i.v, !dbg !151790
  br i1 %.not2.i.i.i12.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.l, !dbg !151786

bb.l:                                             ; preds = %.lr.ph.i
  %i.w = add nuw nsw i64 %.sroa.01.0.i26.i, 1, !dbg !151791 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.n, !dbg !151784
  br i1 %exitcond.not.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, label %.lr.ph.i, !dbg !151784

.lr.ph30.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi float [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ], !dbg !151792
  %.sroa.01.1.i29.i = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i29.i, !dbg !151793
  %.val.i = load float, ptr %i.x, align 4, !dbg !151792, !alias.scope !151718, !noundef !3973 ; 3 uses
  %i.y = fcmp ord float %.val.i, 0.000000e+00, !dbg !151794
  %i.z = fcmp ult float %.val.i, %.val7.i, !dbg !151795
  %.not2.i.i.i13.i = and i1 %i.y, %i.z, !dbg !151796
  br i1 %.not2.i.i.i13.i, label %bb.m, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !151792

bb.m:                                             ; preds = %.lr.ph30.i
  %i.aa = add nuw nsw i64 %.sroa.01.1.i29.i, 1, !dbg !151797 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.aa, %i.n, !dbg !151785
  br i1 %exitcond38.not.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, label %.lr.ph30.i, !dbg !151785

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph30.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i29.i, %.lr.ph30.i ], [ %.sroa.01.0.i26.i, %.lr.ph.i ], [ %i.n, %bb.l ], !dbg !151798 ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !151799
  tail call void @llvm.assume(i1 %i.ab), !dbg !151800
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !151801
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !151801

bb.n:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  br i1 %.not2.i.i.i.i, label %bb.q, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !151802

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0), !dbg !151803
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i14.i, 1, !dbg !151804
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151805

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i15.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32), !dbg !151806 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i15.i, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #33, !dbg !151807
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i15.i, 1, !dbg !151808
  %i.ae = or disjoint i64 %i.ad, 1, !dbg !151808
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151805

_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i, %middle.block, %.preheader24.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i21.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader24.i ], [ %.sroa.0.0.i495660.i, %middle.block ], [ %.sroa.0.0.i495660.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i21.i, 1, !dbg !151809
  %i.ag = or disjoint i64 %i.af, 1, !dbg !151809
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151810

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1, !dbg !151811 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151722), !dbg !151812
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151723), !dbg !151812
  %.not.i.i.i = icmp eq i64 %i.ah, 0, !dbg !151813
  br i1 %.not.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i, !dbg !151813

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i495660.i, !dbg !151814 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ai, 8, !dbg !151813
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader, label %vector.ph, !dbg !151813

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  br label %vector.body, !dbg !151813

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !151815 ; 3 uses
  %i.ak = xor i64 %index, -1, !dbg !151816
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index, !dbg !151817 ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %i.aj, i64 %i.ak, !dbg !151818 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !151819 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.al, align 4, !dbg !151819, !alias.scope !151724
  %wide.load77 = load <4 x float>, ptr %i.an, align 4, !dbg !151819, !alias.scope !151724
  %i.ao = getelementptr i8, ptr %i.am, i64 -12, !dbg !151819 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 -28, !dbg !151819 ; 2 uses
  %wide.load78 = load <4 x i32>, ptr %i.ao, align 4, !dbg !151819, !alias.scope !151725
  %wide.load79 = load <4 x i32>, ptr %i.ap, align 4, !dbg !151819, !alias.scope !151725
  %reverse = shufflevector <4 x i32> %wide.load78, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !151819
  %reverse80 = shufflevector <4 x i32> %wide.load79, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !151819
  store <4 x i32> %reverse, ptr %i.al, align 4, !dbg !151819, !alias.scope !151724
  store <4 x i32> %reverse80, ptr %i.an, align 4, !dbg !151819, !alias.scope !151724
  %reverse81 = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !151819
  %reverse82 = shufflevector <4 x float> %wide.load77, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !151819
  store <4 x float> %reverse81, ptr %i.ao, align 4, !dbg !151819, !alias.scope !151725
  store <4 x float> %reverse82, ptr %i.ap, align 4, !dbg !151819, !alias.scope !151725
  %index.next = add nuw i64 %index, 8, !dbg !151815 ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec, !dbg !151813
  br i1 %i.aq, label %middle.block, label %vector.body, !dbg !151813, !llvm.loop !151560

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec, !dbg !151813
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader, !dbg !151813

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i, !dbg !151813

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.aw, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i.preheader ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.016.i.i.i, -1, !dbg !151816
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i, !dbg !151817 ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.aj, i64 %i.ar, !dbg !151818 ; 2 uses
  %i.au = load float, ptr %i.as, align 4, !dbg !151819, !alias.scope !151724, !noundef !3973
  %i.av = load i32, ptr %i.at, align 4, !dbg !151819, !alias.scope !151725
  store i32 %i.av, ptr %i.as, align 4, !dbg !151819, !alias.scope !151724
  store float %i.au, ptr %i.at, align 4, !dbg !151819, !alias.scope !151725
  %i.aw = add nuw nsw i64 %.sroa.0.016.i.i.i, 1, !dbg !151815 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aw, %i.ai, !dbg !151813
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit11.i.i.i, !dbg !151813, !llvm.loop !151561

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf7reverseCs1LHh8CLbVkQ_11polars_core.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ], !dbg !151820 ; 2 uses
  %i.ax = lshr i64 %.sroa.023.0, 1, !dbg !151821
  %i.ay = lshr i64 %.sroa.0.0.i34, 1, !dbg !151822
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !151823 ; 2 uses
  %i.az = sub nsw i64 %factor, %i.ax, !dbg !151823
  %i.ba = add nuw nsw i64 %i.ay, %factor, !dbg !151824
  %i.bb = mul i64 %i.az, %.sroa.0.0, !dbg !151825
  %i.bc = mul i64 %i.ba, %.sroa.0.0, !dbg !151826
  %i.bd = xor i64 %i.bc, %i.bb, !dbg !151827
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false), !dbg !151828
  %i.bf = trunc nuw nsw i64 %i.be to i8, !dbg !151827
  br label %bb.g, !dbg !151829

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.145 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bg, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %.sroa.023.144 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.145, -1, !dbg !151830 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg, !dbg !151831
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !151832, !noundef !3973
  %.not29 = icmp ult i8 %i.bi, %.sroa.021.0, !dbg !151832
  br i1 %.not29, label %._crit_edge, label %bb.s, !dbg !151832

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.144, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], !dbg !151766 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.145, %bb.r ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], !dbg !151768 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !151833
  store i64 %.sroa.023.1.lcssa, ptr %i.bj, align 8, !dbg !151834
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !151835
  store i8 %.sroa.021.0, ptr %i.bk, align 1, !dbg !151836
  br i1 %i.k, label %bb.aa, label %bb.ab, !dbg !151837

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg, !dbg !151838
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !151839, !noundef !3973 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1, !dbg !151840         ; 8 uses
  %i.bo = lshr i64 %.sroa.023.144, 1, !dbg !151841 ; 6 uses
  %i.bp = add nuw i64 %i.bn, %i.bo, !dbg !151842  ; 4 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp, !dbg !151843
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq, !dbg !151844 ; 6 uses
  %i.bs = icmp samesign ugt i64 %i.bp, %3, !dbg !151845
  %i.bt = trunc i64 %.sroa.023.144 to i1
  %i.bu = or i64 %i.bm, %.sroa.023.144, !dbg !151846
  %i.bv = trunc i64 %i.bu to i1, !dbg !151846
  %or.cond3.i = or i1 %i.bs, %i.bv, !dbg !151846
  br i1 %or.cond3.i, label %bb.t, label %bb.u, !dbg !151846

bb.t:                                             ; preds = %bb.s
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.v, label %bb.w, !dbg !151847

bb.u:                                             ; preds = %bb.s
  %i.bx = shl nuw nsw i64 %i.bp, 1, !dbg !151848
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151849

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bt, label %bb.x, label %bb.z, !dbg !151850

bb.w:                                             ; preds = %bb.t
  %i.by = or i64 %i.bn, 1, !dbg !151851
  %i.bz = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true), !dbg !151852
  %i.ca = trunc nuw nsw i64 %i.bz to i32, !dbg !151852
  %i.cb = shl nuw nsw i32 %i.ca, 1, !dbg !151853
  %i.cc = xor i32 %i.cb, 126, !dbg !151853
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %i.br, i64 noundef range(i64 0, 2305843009213693952) %i.bn, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.cc, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #33, !dbg !151854
  br label %bb.v, !dbg !151855

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151739), !dbg !151856
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151740), !dbg !151856
  %i.cd = icmp eq i64 %i.bn, 0, !dbg !151857
  %i.ce = icmp eq i64 %i.bo, 0
  %or.cond.i = or i1 %i.ce, %i.cd, !dbg !151857
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.y, !dbg !151857

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 range(i64 0, -9223372036854775808) %i.bn), !dbg !151858 ; 2 uses
  %i.cf = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !151859
  br i1 %i.cf, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.critedge.i, !dbg !151859

.critedge.i:                                      ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bn, !dbg !151860 ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bn, %i.bo, !dbg !151861 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cg, ptr %i.br, !dbg !151862
  %i.ch = shl nuw nsw i64 %.sroa.0.0.i.i35, 2, !dbg !151863 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.ch, i1 false), !dbg !151863, !alias.scope !151741
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch, !dbg !151864 ; 3 uses
  br i1 %.not.i36, label %.preheader.i37, label %.lr.ph.i.i, !dbg !151865

.preheader.i37:                                   ; preds = %.critedge.i, %.preheader.i37
  %i.cj = phi ptr [ %i.cu, %.preheader.i37 ], [ %i.ci, %.critedge.i ], !dbg !151866
  %i.ck = phi ptr [ %i.cs, %.preheader.i37 ], [ %i.cg, %.critedge.i ], !dbg !151867
  %.sroa.0.0.i17.i = phi ptr [ %i.cn, %.preheader.i37 ], [ %i.m, %.critedge.i ]
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4, !dbg !151866 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 -4, !dbg !151868 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -4, !dbg !151869 ; 2 uses
  %.val.i.i = load float, ptr %i.cm, align 4, !dbg !151870, !alias.scope !151742, !noalias !151743, !noundef !3973 ; 3 uses
  %.val10.i.i = load float, ptr %i.cl, align 4, !dbg !151870, !alias.scope !151744, !noalias !151743, !noundef !3973 ; 2 uses
  %i.co = fcmp ord float %.val.i.i, 0.000000e+00, !dbg !151871
  %i.cp = fcmp ult float %.val.i.i, %.val10.i.i, !dbg !151872
  %.not2.i.i.i.i.i = and i1 %i.co, %i.cp, !dbg !151873 ; 3 uses
  %.v.i.i = select i1 %.not2.i.i.i.i.i, float %.val10.i.i, float %.val.i.i, !dbg !151874
  store float %.v.i.i, ptr %i.cn, align 4, !dbg !151875, !alias.scope !151739, !noalias !151743
  %i.cq = xor i1 %.not2.i.i.i.i.i, true, !dbg !151876
  %i.cr = zext i1 %i.cq to i64, !dbg !151876
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cr, !dbg !151877 ; 3 uses
  %i.ct = zext i1 %.not2.i.i.i.i.i to i64, !dbg !151878
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ct, !dbg !151879 ; 3 uses
  %i.cv = icmp eq ptr %i.cs, %i.br, !dbg !151880
  %i.cw = icmp eq ptr %i.cu, %2
  %or.cond.i.i = select i1 %i.cv, i1 true, i1 %i.cw, !dbg !151880
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStatefE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, label %.preheader.i37, !dbg !151880

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cx = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.br, %.critedge.i ], !dbg !151881 ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.cg, %.critedge.i ] ; 2 uses
  %i.cy = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load float, ptr %.sroa.0.04.i.i, align 4, !dbg !151881, !alias.scope !151745, !noalias !151746, !noundef !3973 ; 3 uses
  %.val.i19.i = load float, ptr %i.cy, align 4, !dbg !151881, !alias.scope !151747, !noalias !151746, !noundef !3973 ; 2 uses
  %i.cz = fcmp ord float %.sroa.0.0.val.i.i, 0.000000e+00, !dbg !151882
  %i.da = fcmp ult float %.sroa.0.0.val.i.i, %.val.i19.i, !dbg !151883
  %.not2.i.i.i.i20.i = and i1 %i.cz, %i.da, !dbg !151884 ; 3 uses
  %i.db = xor i1 %.not2.i.i.i.i20.i, true, !dbg !151885
  %.v.i21.i = select i1 %.not2.i.i.i.i20.i, float %.sroa.0.0.val.i.i, float %.val.i19.i, !dbg !151886
  store float %.v.i21.i, ptr %i.cx, align 4, !dbg !151887, !alias.scope !151739, !noalias !151746
  %i.dc = zext i1 %i.db to i64, !dbg !151888
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dc, !dbg !151889 ; 3 uses
  %i.de = zext i1 %.not2.i.i.i.i20.i to i64, !dbg !151890
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.04.i.i, i64 %i.de, !dbg !151891 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 4, !dbg !151892 ; 2 uses
  %i.dh = icmp ne ptr %i.dd, %i.ci, !dbg !151893
  %i.di = icmp ne ptr %i.df, %i.m
  %or.cond.i22.i = select i1 %i.dh, i1 %i.di, i1 false, !dbg !151893
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStatefE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !151893

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStatefE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i37
  %.sroa.13.1.i = phi ptr [ %i.cs, %.preheader.i37 ], [ %i.dg, %.lr.ph.i.i ], !dbg !151894
  %.sroa.7.0.i = phi ptr [ %i.cu, %.preheader.i37 ], [ %i.ci, %.lr.ph.i.i ], !dbg !151895
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i37 ], [ %i.dd, %.lr.ph.i.i ], !dbg !151895 ; 2 uses
  %i.dj = ptrtoint ptr %.sroa.7.0.i to i64, !dbg !151896
  %i.dk = ptrtoint ptr %.sroa.0.1.i to i64, !dbg !151896
  %i.dl = sub nuw i64 %i.dj, %i.dk, !dbg !151896
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dl, i1 false), !dbg !151897, !alias.scope !151741, !noalias !151748
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151898

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStatefE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  %i.dm = shl nuw nsw i64 %i.bp, 1, !dbg !151899
  %i.dn = or disjoint i64 %i.dm, 1, !dbg !151899
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !151849

bb.z:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bn, !dbg !151900
  %i.dp = or i64 %i.bo, 1, !dbg !151901
  %i.dq = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true), !dbg !151902
  %i.dr = trunc nuw nsw i64 %i.dq to i32, !dbg !151902
  %i.ds = shl nuw nsw i32 %i.dr, 1, !dbg !151903
  %i.dt = xor i32 %i.ds, 126, !dbg !151903
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %i.do, i64 noundef range(i64 0, 2305843009213693952) %i.bo, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.dt, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #33, !dbg !151904
  br label %bb.x, !dbg !151905

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.0.0.i = phi i64 [ %i.dn, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergefNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.bx, %bb.u ], !dbg !151906 ; 2 uses
  %i.du = icmp ugt i64 %i.bg, 1, !dbg !151771
  br i1 %i.du, label %bb.r, label %._crit_edge, !dbg !151771

bb.aa:                                            ; preds = %._crit_edge
  %i.dv = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !151907
  %i.dw = lshr i64 %.sroa.018.0, 1, !dbg !151908
  %i.dx = add nuw i64 %i.dw, %.sroa.09.0, !dbg !151909
  br label %bb.f, !dbg !151765

bb.ab:                                            ; preds = %._crit_edge
  %i.dy = and i64 %.sroa.023.1.lcssa, 1, !dbg !151910
  %.not31 = icmp eq i64 %i.dy, 0, !dbg !151911
  br i1 %.not31, label %bb.ac, label %bb.ad, !dbg !151911
end_hunk_1
