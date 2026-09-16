Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ooc-3f61eca032eb34cc.polars_ooc.efc82afb51c03bad-cgu.12?download=true
inline.NumInlined: 752
inline.NumDeleted: 405
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECskAlUH1kY1DR_10polars_ooc:bb.a
  resume { ptr, i32 } %.pn, !dbg !3214
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_7sort_byNCNCNvMNtB19_14memory_managerNtB30_13MemoryManager15find_spillables00E0EB19_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 48038396025285291) %3) unnamed_addr #5 !dbg !3226 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7, !dbg !3259
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !3259

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3, !dbg !3260               ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2, !dbg !3261      ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c, !dbg !3262
  %i.e = mul nuw nsw i64 %i.b, 7, !dbg !3263      ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e, !dbg !3264
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_7sort_byNCNCNvMNtB19_14memory_managerNtB30_13MemoryManager15find_spillables00E0EB19_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b), !dbg !3265
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c, !dbg !3266
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e, !dbg !3267
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_7sort_byNCNCNvMNtB19_14memory_managerNtB30_13MemoryManager15find_spillables00E0EB19_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b), !dbg !3268
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c, !dbg !3269
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e, !dbg !3270
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB14_7sort_byNCNCNvMNtB19_14memory_managerNtB30_13MemoryManager15find_spillables00E0EB19_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b), !dbg !3271
  br label %bb.c, !dbg !3272

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 16, !dbg !3273
  %.sroa.0.0.val13 = load double, ptr %i.n, align 8, !dbg !3273, !noundef !336 ; 5 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 16, !dbg !3273
  %.sroa.04.0.val14 = load double, ptr %i.o, align 8, !dbg !3273, !noundef !336 ; 6 uses
  %i.p = fcmp uno double %.sroa.0.0.val13, 0.000000e+00, !dbg !3274 ; 2 uses
  %i.q = fcmp oge double %.sroa.0.0.val13, %.sroa.04.0.val14, !dbg !3275
  %.not2.i.not.i = or i1 %i.p, %i.q, !dbg !3276
  %i.r = fcmp ord double %.sroa.04.0.val14, 0.000000e+00, !dbg !3276
  %i.s = fcmp ult double %.sroa.04.0.val14, %.sroa.0.0.val13, !dbg !3276
  %.not4.i.i = and i1 %i.r, %i.s, !dbg !3276
  %i.t = and i1 %.not2.i.not.i, %.not4.i.i, !dbg !3276 ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.08.0, i64 16, !dbg !3277
  %.sroa.08.0.val12 = load double, ptr %i.u, align 8, !dbg !3277, !noundef !336 ; 5 uses
  %i.v = fcmp oge double %.sroa.0.0.val13, %.sroa.08.0.val12, !dbg !3278
  %.not2.i.not.i15 = or i1 %i.p, %i.v, !dbg !3279
  %i.w = fcmp ord double %.sroa.08.0.val12, 0.000000e+00, !dbg !3279 ; 2 uses
  %i.x = fcmp ult double %.sroa.08.0.val12, %.sroa.0.0.val13, !dbg !3279
  %i.y = and i1 %i.x, %.not2.i.not.i15, !dbg !3279
  %i.z = and i1 %i.w, %i.y, !dbg !3279
  %i.aa = xor i1 %i.t, %i.z, !dbg !3280
  br i1 %i.aa, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_7sort_byNCNCNvMNtB14_14memory_managerNtB2U_13MemoryManager15find_spillables00E0EB14_.exit, label %bb.d, !dbg !3280

bb.d:                                             ; preds = %bb.c
  %i.ab = fcmp uno double %.sroa.04.0.val14, 0.000000e+00, !dbg !3281
  %i.ac = fcmp oge double %.sroa.04.0.val14, %.sroa.08.0.val12, !dbg !3282
  %.not2.i.not.i17 = or i1 %i.ab, %i.ac, !dbg !3283
  %i.ad = fcmp ult double %.sroa.08.0.val12, %.sroa.04.0.val14, !dbg !3283
  %i.ae = and i1 %i.ad, %.not2.i.not.i17, !dbg !3283
  %i.af = and i1 %i.w, %i.ae, !dbg !3283
  %i.ag = xor i1 %i.t, %i.af, !dbg !3284
  %..i = select i1 %i.ag, ptr %.sroa.08.0, ptr %.sroa.04.0, !dbg !3285
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_7sort_byNCNCNvMNtB14_14memory_managerNtB2U_13MemoryManager15find_spillables00E0EB14_.exit, !dbg !3285

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_7sort_byNCNCNvMNtB14_14memory_managerNtB2U_13MemoryManager15find_spillables00E0EB14_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ], !dbg !3286
  ret ptr %.sroa.0.0.i, !dbg !3287
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1m_7sort_byNCNCNvMNtB1r_14memory_managerNtB3i_13MemoryManager15find_spillables00E0EB1r_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !3288 {
bb.a:
  %.sroa.0.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1, !dbg !3327
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !3327
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !3327

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !3328
  unreachable, !dbg !3328

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1, !dbg !3329
  %.not4 = icmp samesign eq i64 %2, %1, !dbg !3330
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader, !dbg !3330

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2, !dbg !3331
  br label %.lr.ph, !dbg !3332

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCNCNvMNtB1d_14memory_managerNtB34_13MemoryManager15find_spillables00E0EB1d_.exit, %bb.c
  ret void, !dbg !3333

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCNCNvMNtB1d_14memory_managerNtB34_13MemoryManager15find_spillables00E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.r, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCNCNvMNtB1d_14memory_managerNtB34_13MemoryManager15find_spillables00E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 16, !dbg !3332
  %.val9.i = load double, ptr %i.d, align 8, !dbg !3332, !noundef !336 ; 6 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 -8, !dbg !3332
  %.val10.i = load double, ptr %i.e, align 8, !dbg !3332, !noundef !336 ; 3 uses
  %i.f = fcmp uno double %.val9.i, 0.000000e+00, !dbg !3334 ; 2 uses
  %i.g = fcmp oge double %.val9.i, %.val10.i, !dbg !3335
  %.not2.i.not.i.i = or i1 %i.f, %i.g, !dbg !3336
  %i.h = fcmp ord double %.val10.i, 0.000000e+00, !dbg !3336
  %i.i = fcmp ult double %.val10.i, %.val9.i, !dbg !3336
  %.not4.i.i.i = and i1 %i.h, %i.i, !dbg !3336
  %i.j = and i1 %.not2.i.not.i.i, %.not4.i.i.i, !dbg !3336
  br i1 %i.j, label %bb.d, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCNCNvMNtB1d_14memory_managerNtB34_13MemoryManager15find_spillables00E0EB1d_.exit, !dbg !3332

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !3337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, i64 16, i1 false), !dbg !3338
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24, !dbg !3339 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i8, i64 24, i1 false), !dbg !3340
  %i.k = icmp eq ptr %.sroa.0.0.i8, %0, !dbg !3341
  br i1 %i.k, label %._crit_edge13, label %.lr.ph12, !dbg !3341

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -24, !dbg !3339 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i64 24, i1 false), !dbg !3340
  %i.l = icmp eq ptr %.sroa.0.0.i, %0, !dbg !3341
  br i1 %i.l, label %._crit_edge13, label %.lr.ph12, !dbg !3341

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.5.0.i9, i64 -32, !dbg !3342
  %.val8.i = load double, ptr %i.m, align 8, !dbg !3342, !noundef !336 ; 3 uses
  %i.n = fcmp oge double %.val9.i, %.val8.i, !dbg !3343
  %.not2.i.not.i11.i = or i1 %i.f, %i.n, !dbg !3344
  %i.o = fcmp ord double %.val8.i, 0.000000e+00, !dbg !3344
  %i.p = fcmp ult double %.val8.i, %.val9.i, !dbg !3344
  %.not4.i.i12.i = and i1 %i.o, %i.p, !dbg !3344
  %i.q = and i1 %.not2.i.not.i11.i, %.not4.i.i12.i, !dbg !3344
  br i1 %i.q, label %bb.e, label %._crit_edge13, !dbg !3342

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ], !dbg !3345
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ], !dbg !3339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !dbg !3346, !noalias !3325
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8, !dbg !3346
  store double %.val9.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !dbg !3346, !noalias !3325
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !dbg !3347
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCNCNvMNtB1d_14memory_managerNtB34_13MemoryManager15find_spillables00E0EB1d_.exit, !dbg !3348

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCNCNvMNtB1d_14memory_managerNtB34_13MemoryManager15find_spillables00E0EB1d_.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24, !dbg !3349 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.b, !dbg !3330
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !3330
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCNCNvMNtB11_14memory_managerNtB2R_13MemoryManager15find_spillables00E0EB11_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3350 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !3646
  br i1 %i.c, label %bb.ae, label %bb.b, !dbg !3646

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !3647
  %i.e = urem i64 4611686018427387904, %1, !dbg !3648
  %.not = icmp ne i64 %i.e, 0, !dbg !3649
  %i.f = zext i1 %.not to i64, !dbg !3649
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !3649 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !3650
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !3650

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !3651
  br label %bb.e, !dbg !3651

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !3652
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !3653
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !3654
  br label %bb.e, !dbg !3655

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !3656 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3658
  %.not5.i99 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i104 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !3659

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ], !dbg !3660 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.aa ], !dbg !3661 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ], !dbg !3662 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !3663 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !3663

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCNCNvMNtB18_14memory_managerNtB2Z_13MemoryManager15find_spillables00E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.bi, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCNCNvMNtB18_14memory_managerNtB2Z_13MemoryManager15find_spillables00E0EB18_.exit ], [ 0, %bb.f ], !dbg !3664 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCNCNvMNtB18_14memory_managerNtB2Z_13MemoryManager15find_spillables00E0EB18_.exit ], [ 1, %bb.f ], !dbg !3664 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !3665
  br i1 %i.l, label %.lr.ph68, label %._crit_edge, !dbg !3665

.lr.ph68:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !3665

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !3666 ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0, !dbg !3667 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !3668
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !3668

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread102, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !3669

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !3670
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE7reverseBz_.exit, label %bb.k, !dbg !3670

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 40, !dbg !3671
  %.val10.i = load double, ptr %i.q, align 8, !dbg !3671, !alias.scope !3609, !noalias !3610, !noundef !336 ; 5 uses
  %i.r = getelementptr i8, ptr %i.o, i64 16, !dbg !3671
  %.val11.i = load double, ptr %i.r, align 8, !dbg !3671, !alias.scope !3609, !noalias !3610, !noundef !336 ; 3 uses
  %i.s = fcmp ord double %.val10.i, 0.000000e+00, !dbg !3672
  %i.t = fcmp ult double %.val10.i, %.val11.i, !dbg !3673
  %.not2.i.not.i42.not122 = and i1 %i.s, %i.t, !dbg !3674
  %i.u = fcmp uno double %.val11.i, 0.000000e+00, !dbg !3674
  %i.v = fcmp oge double %.val11.i, %.val10.i, !dbg !3674
  %.not4.i.i43.not125 = or i1 %i.u, %i.v, !dbg !3674
  %.not119 = or i1 %.not2.i.not.i42.not122, %.not4.i.i43.not125, !dbg !3675 ; 2 uses
  %.not75 = icmp eq i64 %i.n, 2, !dbg !3675       ; 2 uses
  br i1 %.not119, label %.preheader53, label %.preheader, !dbg !3676

.preheader53:                                     ; preds = %bb.k
  br i1 %.not75, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread, label %.lr.ph, !dbg !3677

.preheader:                                       ; preds = %bb.k
  br i1 %.not75, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread102, label %.lr.ph62, !dbg !3678

.lr.ph:                                           ; preds = %.preheader53, %bb.l
  %.val9.i = phi double [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader53 ], !dbg !3679 ; 3 uses
  %.sroa.01.0.i.i58 = phi i64 [ %i.ad, %bb.l ], [ 2, %.preheader53 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i58, !dbg !3680
  %i.x = getelementptr i8, ptr %i.w, i64 16, !dbg !3679
  %.val8.i = load double, ptr %i.x, align 8, !dbg !3679, !alias.scope !3609, !noalias !3610, !noundef !336 ; 4 uses
  %i.y = fcmp uno double %.val8.i, 0.000000e+00, !dbg !3681
  %i.z = fcmp oge double %.val8.i, %.val9.i, !dbg !3682
  %.not2.i.not.i40 = or i1 %i.y, %i.z, !dbg !3683
  %i.aa = fcmp ord double %.val9.i, 0.000000e+00, !dbg !3683
  %i.ab = fcmp ult double %.val9.i, %.val8.i, !dbg !3683
  %.not4.i.i41 = and i1 %i.aa, %i.ab, !dbg !3683
  %i.ac = and i1 %.not2.i.not.i40, %.not4.i.i41, !dbg !3683
  br i1 %i.ac, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i, label %bb.l, !dbg !3679

bb.l:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i58, 1, !dbg !3684 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.n, !dbg !3677
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i, label %.lr.ph, !dbg !3677

.lr.ph62:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi double [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ], !dbg !3685 ; 3 uses
  %.sroa.01.1.i.i61 = phi i64 [ %i.al, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i61, !dbg !3686
  %i.af = getelementptr i8, ptr %i.ae, i64 16, !dbg !3685
  %.val.i = load double, ptr %i.af, align 8, !dbg !3685, !alias.scope !3609, !noalias !3610, !noundef !336 ; 4 uses
  %i.ag = fcmp uno double %.val.i, 0.000000e+00, !dbg !3687
  %i.ah = fcmp oge double %.val.i, %.val7.i, !dbg !3688
  %.not2.i.not.i = or i1 %i.ag, %i.ah, !dbg !3689
  %i.ai = fcmp ord double %.val7.i, 0.000000e+00, !dbg !3689
  %i.aj = fcmp ult double %.val7.i, %.val.i, !dbg !3689
  %.not4.i.i = and i1 %i.ai, %i.aj, !dbg !3689
  %i.ak = and i1 %.not2.i.not.i, %.not4.i.i, !dbg !3689
  br i1 %i.ak, label %bb.m, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i, !dbg !3685

bb.m:                                             ; preds = %.lr.ph62
  %i.al = add nuw i64 %.sroa.01.1.i.i61, 1, !dbg !3690 ; 2 uses
  %exitcond82.not = icmp eq i64 %i.al, %i.n, !dbg !3678
  br i1 %exitcond82.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i, label %.lr.ph62, !dbg !3678

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i: ; preds = %bb.m, %.lr.ph62, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i58, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i61, %.lr.ph62 ], [ %i.n, %bb.m ], !dbg !3691 ; 5 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !3692
  tail call void @llvm.assume(i1 %i.am), !dbg !3693
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !3694
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !3694

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread102: ; preds = %.preheader
  br i1 %.not5.i104, label %bb.i, label %.lr.ph.preheader.i.i, !dbg !3694

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i99, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE7reverseBz_.exit, !dbg !3694

bb.n:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i
  %i.an = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  %or.cond = or i1 %.not119, %.not.i.i, !dbg !3695
  br i1 %or.cond, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE7reverseBz_.exit, label %.lr.ph.preheader.i.i, !dbg !3695

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0), !dbg !3696
  %i.ao = shl nuw nsw i64 %.sroa.0.0.i39, 1, !dbg !3697
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCNCNvMNtB18_14memory_managerNtB2Z_13MemoryManager15find_spillables00E0EB18_.exit, !dbg !3698

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32), !dbg !3699 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCNCNvMNtB1a_14memory_managerNtB31_13MemoryManager15find_spillables00E0EB1a_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #36, !dbg !3700, !inline_history !3423
  %i.ap = shl nuw nsw i64 %.sroa.0.0.i38, 1, !dbg !3701
  %i.aq = or disjoint i64 %i.ap, 1, !dbg !3701
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCNCNvMNtB18_14memory_managerNtB2Z_13MemoryManager15find_spillables00E0EB18_.exit, !dbg !3698

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE7reverseBz_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEB15_.exit.i.i, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4851 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread ], [ %.sroa.0.0.i.i100107111, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEB15_.exit.i.i ]
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i.i4851, 1, !dbg !3702
  %i.as = or disjoint i64 %i.ar, 1, !dbg !3702
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCNCNvMNtB18_14memory_managerNtB2Z_13MemoryManager15find_spillables00E0EB18_.exit, !dbg !3703

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread102
  %i.at = phi i64 [ %i.an, %bb.n ], [ 1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread102 ]
  %.sroa.0.0.i.i100107111 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCNCNvMNtB17_14memory_managerNtB2Y_13MemoryManager15find_spillables00E0EB17_.exit.i.thread102 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i100107111, !dbg !3704
  br label %.lr.ph.i.i37, !dbg !3705

.lr.ph.i.i37:                                     ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEB15_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.az, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEB15_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.017.i.i, -1, !dbg !3706
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i, !dbg !3707
  %i.ax = getelementptr [24 x i8], ptr %i.au, i64 %i.av, !dbg !3708
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, i64 noundef 3)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEB15_.exit.i.i unwind label %bb.q, !dbg !3705, !noalias !3610

bb.q:                                             ; preds = %.lr.ph.i.i37
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #33, !dbg !3709, !noalias !3610
  unreachable, !dbg !3709

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEB15_.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.az = add nuw nsw i64 %.sroa.0.017.i.i, 1, !dbg !3710 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.at, !dbg !3711
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE7reverseBz_.exit, label %.lr.ph.i.i37, !dbg !3711

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCNCNvMNtB18_14memory_managerNtB2Z_13MemoryManager15find_spillables00E0EB18_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE7reverseBz_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.as, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE7reverseBz_.exit ], [ %i.aq, %bb.p ], [ %i.ao, %bb.o ], !dbg !3712 ; 2 uses
  %i.ba = lshr i64 %.sroa.023.0, 1, !dbg !3713
  %i.bb = lshr i64 %.sroa.0.0.i34, 1, !dbg !3714
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !3715 ; 2 uses
  %i.bc = sub nsw i64 %factor, %i.ba, !dbg !3715
  %i.bd = add nuw nsw i64 %i.bb, %factor, !dbg !3716
  %i.be = mul i64 %i.bc, %.sroa.0.0, !dbg !3717
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !3718
  %i.bg = xor i64 %i.bf, %i.be, !dbg !3719
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false), !dbg !3720
  %i.bi = trunc nuw nsw i64 %i.bh to i8, !dbg !3719
  br label %bb.g, !dbg !3721

bb.r:                                             ; preds = %.lr.ph68, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCNCNvMNtB1b_14memory_managerNtB32_13MemoryManager15find_spillables00E0EB1b_.exit
  %.sroa.02.167 = phi i64 [ %.sroa.02.0, %.lr.ph68 ], [ %i.bj, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCNCNvMNtB1b_14memory_managerNtB32_13MemoryManager15find_spillables00E0EB1b_.exit ] ; 2 uses
  %.sroa.023.166 = phi i64 [ %.sroa.023.0, %.lr.ph68 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCNCNvMNtB1b_14memory_managerNtB32_13MemoryManager15find_spillables00E0EB1b_.exit ] ; 4 uses
  %i.bj = add i64 %.sroa.02.167, -1, !dbg !3722   ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj, !dbg !3723
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !3724, !noundef !336
  %.not29 = icmp ult i8 %i.bl, %.sroa.021.0, !dbg !3724
  br i1 %.not29, label %._crit_edge, label %bb.s, !dbg !3724

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCNCNvMNtB1b_14memory_managerNtB32_13MemoryManager15find_spillables00E0EB1b_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.166, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCNCNvMNtB1b_14memory_managerNtB32_13MemoryManager15find_spillables00E0EB1b_.exit ], !dbg !3660 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.167, %bb.r ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCNCNvMNtB1b_14memory_managerNtB32_13MemoryManager15find_spillables00E0EB1b_.exit ], !dbg !3662 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !3725
  store i64 %.sroa.023.1.lcssa, ptr %i.bm, align 8, !dbg !3726
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !3727
  store i8 %.sroa.021.0, ptr %i.bn, align 1, !dbg !3728
  br i1 %i.k, label %bb.aa, label %bb.ab, !dbg !3729

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bj, !dbg !3730
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !3731, !noundef !336 ; 3 uses
  %i.bq = lshr i64 %i.bp, 1, !dbg !3732           ; 8 uses
  %i.br = lshr i64 %.sroa.023.166, 1, !dbg !3733  ; 6 uses
  %i.bs = add nuw i64 %i.bq, %i.br, !dbg !3734    ; 4 uses
  %i.bt = sub i64 %.sroa.09.0, %i.bs, !dbg !3735
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bt, !dbg !3736 ; 6 uses
  %i.bv = icmp samesign ugt i64 %i.bs, %3, !dbg !3737
  %i.bw = trunc i64 %.sroa.023.166 to i1
  %i.bx = or i64 %i.bp, %.sroa.023.166, !dbg !3738
  %i.by = trunc i64 %i.bx to i1, !dbg !3738
  %or.cond3.i = or i1 %i.bv, %i.by, !dbg !3738
  br i1 %or.cond3.i, label %bb.t, label %bb.u, !dbg !3738

bb.t:                                             ; preds = %bb.s
  %i.bz = trunc i64 %i.bp to i1
  br i1 %i.bz, label %bb.v, label %bb.w, !dbg !3739

bb.u:                                             ; preds = %bb.s
  %i.ca = shl nuw nsw i64 %i.bs, 1, !dbg !3740
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCNCNvMNtB1b_14memory_managerNtB32_13MemoryManager15find_spillables00E0EB1b_.exit, !dbg !3741

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bw, label %bb.x, label %bb.z, !dbg !3742

bb.w:                                             ; preds = %bb.t
  %i.cb = or i64 %i.bq, 1, !dbg !3743
  %i.cc = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true), !dbg !3744
  %i.cd = trunc nuw nsw i64 %i.cc to i32, !dbg !3744
  %i.ce = shl nuw nsw i32 %i.cd, 1, !dbg !3745
  %i.cf = xor i32 %i.ce, 126, !dbg !3745
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCNCNvMNtB1a_14memory_managerNtB31_13MemoryManager15find_spillables00E0EB1a_(ptr noalias noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 384307168202282326) %i.bq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #36, !dbg !3746, !inline_history !3488
  br label %bb.v, !dbg !3747

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3629), !dbg !3748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3630), !dbg !3748
  %i.cg = icmp eq i64 %i.bq, 0, !dbg !3749
  %i.ch = icmp eq i64 %i.br, 0
  %or.cond.i = or i1 %i.ch, %i.cg, !dbg !3749
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCNCNvMNtB12_14memory_managerNtB2S_13MemoryManager15find_spillables00E0EB12_.exit, label %bb.y, !dbg !3749

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.br, i64 range(i64 0, -9223372036854775808) %i.bq), !dbg !3750 ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !3751
  br i1 %i.ci, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCNCNvMNtB12_14memory_managerNtB2S_13MemoryManager15find_spillables00E0EB12_.exit, label %.critedge.i, !dbg !3751

.critedge.i:                                      ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bq, !dbg !3752 ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bq, %i.br, !dbg !3753 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cj, ptr %i.bu, !dbg !3754
  %i.ck = mul nuw nsw i64 %.sroa.0.0.i.i35, 24, !dbg !3755 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !dbg !3755, !alias.scope !3633
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck, !dbg !3756 ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i, !dbg !3757

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cm = phi ptr [ %i.dc, %.preheader.i ], [ %i.cl, %.critedge.i ], !dbg !3758 ; 2 uses
  %i.cn = phi ptr [ %i.da, %.preheader.i ], [ %i.cj, %.critedge.i ], !dbg !3759 ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -24, !dbg !3758 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -24, !dbg !3760 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24, !dbg !3761 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cm, i64 -8, !dbg !3762
  %.val.i.i = load double, ptr %i.cr, align 8, !dbg !3762, !alias.scope !3630, !noalias !3635, !noundef !336 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cn, i64 -8, !dbg !3762
  %.val10.i.i = load double, ptr %i.cs, align 8, !dbg !3762, !alias.scope !3629, !noalias !3636, !noundef !336 ; 3 uses
  %i.ct = fcmp uno double %.val.i.i, 0.000000e+00, !dbg !3763
  %i.cu = fcmp oge double %.val.i.i, %.val10.i.i, !dbg !3764
  %.not2.i.not.i.i.i = or i1 %i.ct, %i.cu, !dbg !3765
  %i.cv = fcmp ord double %.val10.i.i, 0.000000e+00, !dbg !3765
  %i.cw = fcmp ult double %.val10.i.i, %.val.i.i, !dbg !3765
  %.not4.i.i.i.i = and i1 %i.cv, %i.cw, !dbg !3765
  %i.cx = and i1 %.not2.i.not.i.i.i, %.not4.i.i.i.i, !dbg !3765 ; 3 uses
  %..i.i = select i1 %i.cx, ptr %i.co, ptr %i.cp, !dbg !3766
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !dbg !3767, !alias.scope !3633, !noalias !3637
  %i.cy = xor i1 %i.cx, true, !dbg !3768
  %i.cz = zext i1 %i.cy to i64, !dbg !3768
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cz, !dbg !3769 ; 3 uses
  %i.db = zext i1 %i.cx to i64, !dbg !3770
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.db, !dbg !3771 ; 3 uses
  %i.dd = icmp eq ptr %i.da, %i.bu, !dbg !3772
  %i.de = icmp eq ptr %i.dc, %2
  %or.cond.i.i = select i1 %i.dd, i1 true, i1 %i.de, !dbg !3772
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNCNvMNtB1f_14memory_managerNtB3j_13MemoryManager15find_spillables00E0EB1f_.exit.i, label %.preheader.i, !dbg !3772

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.df = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %i.bu, %.critedge.i ], !dbg !3773 ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %i.cj, %.critedge.i ] ; 3 uses
  %i.dg = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dh = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16, !dbg !3773
  %.sroa.0.0.val.i.i = load double, ptr %i.dh, align 8, !dbg !3773, !alias.scope !3629, !noalias !3638, !noundef !336 ; 3 uses
  %i.di = getelementptr i8, ptr %i.dg, i64 16, !dbg !3773
  %.val.i19.i = load double, ptr %i.di, align 8, !dbg !3773, !alias.scope !3630, !noalias !3639, !noundef !336 ; 3 uses
  %i.dj = fcmp uno double %.sroa.0.0.val.i.i, 0.000000e+00, !dbg !3774
  %i.dk = fcmp oge double %.sroa.0.0.val.i.i, %.val.i19.i, !dbg !3775
  %.not2.i.not.i.i20.i = or i1 %i.dj, %i.dk, !dbg !3776
  %i.dl = fcmp ord double %.val.i19.i, 0.000000e+00, !dbg !3776
  %i.dm = fcmp ult double %.val.i19.i, %.sroa.0.0.val.i.i, !dbg !3776
  %.not4.i.i.i21.i = and i1 %i.dl, %i.dm, !dbg !3776
  %i.dn = and i1 %.not2.i.not.i.i20.i, %.not4.i.i.i21.i, !dbg !3776 ; 3 uses
  %i.do = xor i1 %i.dn, true, !dbg !3777
  %spec.select.i.i = select i1 %i.dn, ptr %.sroa.0.02.i.i, ptr %i.dg, !dbg !3778
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !dbg !3779, !alias.scope !3633, !noalias !3640
  %i.dp = zext i1 %i.do to i64, !dbg !3780
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.dp, !dbg !3781 ; 3 uses
  %i.dr = zext i1 %i.dn to i64, !dbg !3782
end_hunk_0
begin_hunk_1_@_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2
declare void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification24try_check_offsets_boundslECskAlUH1kY1DR_10polars_ooc(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i8, i8 } @_RNvMs_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB4_13ArrowDataType16to_physical_type(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification24try_check_offsets_boundsxECskAlUH1kY1DR_10polars_ooc(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEE8grow_oneB2e_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCsfyRUffk9zcp_6planus6OffsetNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FieldEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCsfyRUffk9zcp_6planus6OffsetNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskAlUH1kY1DR_10polars_ooc(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame14estimated_size(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiVhEzONuCBT_8foldhash4fast11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs6_NtCsfyRUffk9zcp_6planus13builder_cacheINtB5_5CacheNtB5_7ByteVecE3getCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsfyRUffk9zcp_6planus7builderNtB5_7Builder10write_withNCNvXNtNtB7_5impls3streINtNtB7_6traits13WriteAsOffseteE7prepare0ECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(160), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskAlUH1kY1DR_10polars_ooc(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsfyRUffk9zcp_6planus7builderNtB5_7Builder10write_withNCNvXNtNtB7_5impls5sliceSNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockINtNtB7_6traits13WriteAsOffsetB1n_E7prepare0ECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(160), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsfyRUffk9zcp_6planus7builderNtB5_7Builder10write_withNCNvXNtNtB7_5impls5sliceSNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockINtNtB7_6traits13WriteAsOffsetB1n_E7prepares_0ECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(160), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsfyRUffk9zcp_6planus7builderNtB5_7Builder10write_withNCNvXNtNtB7_5impls5sliceSNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FieldINtNtB7_6traits13WriteAsOffsetSINtB7_6OffsetB1o_EE7prepare0ECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(160), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsfyRUffk9zcp_6planus7builderNtB5_7Builder10write_withNCNvXNtNtB7_5impls5sliceSNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FieldINtNtB7_6traits13WriteAsOffsetSINtB7_6OffsetB1o_EE7prepares_0ECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(160), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsfyRUffk9zcp_6planus7builderNtB5_7Builder10write_withNCNvXNtNtB7_5impls5sliceSNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureINtNtB7_6traits13WriteAsOffsetB1n_E7prepare0ECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(160), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsfyRUffk9zcp_6planus7builderNtB5_7Builder10write_withNCNvXNtNtB7_5impls5sliceSNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureINtNtB7_6traits13WriteAsOffsetB1n_E7prepares_0ECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(160), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsfyRUffk9zcp_6planus7builderNtB5_7Builder10write_withNCNvXNtNtB7_5impls5sliceSNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueINtNtB7_6traits13WriteAsOffsetSINtB7_6OffsetB1o_EE7prepare0ECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(160), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsfyRUffk9zcp_6planus7builderNtB5_7Builder10write_withNCNvXNtNtB7_5impls5sliceSNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueINtNtB7_6traits13WriteAsOffsetSINtB7_6OffsetB1o_EE7prepares_0ECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(160), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMsX_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB5_4Null6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs1J_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_9LargeList6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferlENtNtB7_5array9Splitable19__split_at_uncheckedCskAlUH1kY1DR_10polars_ooc(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtB7_6bitmap9immutable6BitmapENtB5_9Splitable19__split_at_unchecked(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxENtNtB7_5array9Splitable19__split_at_uncheckedCskAlUH1kY1DR_10polars_ooc(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXNtNtCsfyRUffk9zcp_6planus5impls5sliceSlINtNtB6_6traits13WriteAsOffsetBD_E7prepareCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs1d_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_6Struct6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs1t_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_4List6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs1Z_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_8ListView6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs2f_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_13LargeListView6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskAlUH1kY1DR_10polars_ooc(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs4M_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_9LargeUtf86create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs4g_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_4Utf86create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs4w_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_6Binary6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs52_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_11LargeBinary6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs5y_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_10BinaryView6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs5i_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_8Utf8View6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs65_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_4Bool6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs6l_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_13RunEndEncoded6create(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE13new_uninit_inCskAlUH1kY1DR_10polars_ooc() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE13new_uninit_inCskAlUH1kY1DR_10polars_ooc() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeE13new_uninit_inCskAlUH1kY1DR_10polars_ooc() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCskAlUH1kY1DR_10polars_ooc() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskAlUH1kY1DR_10polars_ooc(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvNtCs8774dFTUdNv_12polars_arrow5array15new_empty_array(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #25

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { noreturn }
attributes #31 = { inlinehint }
attributes #32 = { cold }
attributes #33 = { cold noreturn nounwind }
attributes #34 = { nounwind }
attributes #35 = { noinline noreturn }
attributes #36 = { noinline }

!llvm.module.flags = !{!321, !322, !323, !324}
!llvm.ident = !{!325}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !326, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXss_NtNtCscgRAwXFJnXP_4core3cmp5implslNtB7_9PartialEq2eq", scope: !342, file: !338, line: 1879, type: !337, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!2 = distinct !DISubprogram(name: "eq<i32, i32>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRlNtB7_9PartialEq2eqCskAlUH1kY1DR_10polars_ooc", scope: !343, file: !338, line: 2123, type: !337, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3 = distinct !DISubprogram(name: "prepare", linkageName: "_RNvXsv_NtNtCsfyRUffk9zcp_6planus5impls10primitiveslINtNtB9_6traits14WriteAsDefaultllE7prepare", scope: !348, file: !344, line: 34, type: !349, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!4 = distinct !DILexicalBlock(scope: !3, file: !344, line: 36, column: 17)
!5 = distinct !DISubprogram(name: "prepare", linkageName: "_RNvXs1_NtNtCsfyRUffk9zcp_6planus5impls5bool_bINtNtB9_6traits14WriteAsDefaultbbE7prepare", scope: !352, file: !350, line: 32, type: !349, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!6 = distinct !DISubprogram(name: "write_entry<8, i32>", linkageName: "_RINvMs_NtCsfyRUffk9zcp_6planus12table_writerINtB5_11TableWriterKj8_E11write_entrylECskAlUH1kY1DR_10polars_ooc", scope: !356, file: !353, line: 33, type: !337, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!7 = distinct !DILexicalBlock(scope: !6, file: !353, line: 36, column: 9)
!8 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3maxCskAlUH1kY1DR_10polars_ooc", scope: !357, file: !338, line: 1034, type: !337, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!9 = distinct !DISubprogram(name: "_mm_movemask_epi8", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse217__mm_movemask_epi8", scope: !397, file: !394, line: 1611, type: !349, scopeLine: 1611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!10 = distinct !DILexicalBlock(scope: !9, file: !394, line: 1613, column: 9)
!11 = distinct !DILexicalBlock(scope: !10, file: !394, line: 1614, column: 9)
!12 = distinct !DISubprogram(name: "swap_nonoverlapping_bytes", linkageName: "_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes", scope: !403, file: !406, line: 1445, type: !337, scopeLine: 1445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!13 = distinct !DILexicalBlock(scope: !12, file: !406, line: 1486, column: 5)
!14 = distinct !DILexicalBlock(scope: !13, file: !406, line: 1488, column: 5)
!15 = distinct !DILexicalBlock(scope: !14, file: !406, line: 1489, column: 5)
!16 = distinct !DILexicalBlock(scope: !15, file: !406, line: 1490, column: 48)
!17 = distinct !DISubprogram(name: "drop_in_place<hashbrown::scopeguard::ScopeGuard<hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::prepare_resize::{closure_env#0}<allocator_api2::stable::alloc::global::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!18 = distinct !DISubprogram(name: "drop<hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::prepare_resize::{closure_env#0}<allocator_api2::stable::alloc::global::Global>>", linkageName: "_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc", scope: !412, file: !410, line: 69, type: !337, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!19 = distinct !DISubprogram(name: "{closure#0}<allocator_api2::stable::alloc::global::Global>", linkageName: "_RNCINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0CskAlUH1kY1DR_10polars_ooc", scope: !414, file: !377, line: 2704, type: !349, scopeLine: 2704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!20 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !381, file: !377, line: 2634, type: !337, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!21 = distinct !DISubprogram(name: "allocation_info", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15allocation_info", scope: !381, file: !377, line: 3138, type: !337, scopeLine: 3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!22 = distinct !DISubprogram(name: "free_buckets<allocator_api2::stable::alloc::global::Global>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECskAlUH1kY1DR_10polars_ooc", scope: !381, file: !377, line: 3106, type: !337, scopeLine: 3106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!23 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj15overflowing_mul", scope: !361, file: !359, line: 3104, type: !337, scopeLine: 3104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!24 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_mul", scope: !361, file: !359, line: 1214, type: !337, scopeLine: 1214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!25 = distinct !DISubprogram(name: "calculate_layout_for", linkageName: "_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for", scope: !415, file: !377, line: 216, type: !337, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!26 = distinct !DILexicalBlock(scope: !25, file: !377, line: 219, column: 9)
!27 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_add", scope: !361, file: !359, line: 815, type: !337, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!28 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCscgRAwXFJnXP_4core10intrinsics8unlikely", scope: !384, file: !383, line: 456, type: !337, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!29 = distinct !DILexicalBlock(scope: !26, file: !377, line: 221, column: 9)
!30 = distinct !DISubprogram(name: "unwrap_unchecked<(core::alloc::layout::Layout, usize)>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionTNtNtNtB4_5alloc6layout6LayoutjEE16unwrap_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !419, file: !417, line: 1128, type: !337, scopeLine: 1128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!31 = distinct !DILexicalBlock(scope: !21, file: !377, line: 3145, column: 13)
!32 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate", scope: !425, file: !420, line: 109, type: !337, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!33 = distinct !DILexicalBlock(scope: !22, file: !377, line: 3113, column: 13)
!34 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3subCskAlUH1kY1DR_10polars_ooc", scope: !405, file: !402, line: 1033, type: !337, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!35 = distinct !DILexicalBlock(scope: !21, file: !377, line: 3144, column: 9)
!36 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !428, file: !426, line: 127, type: !337, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!37 = distinct !DISubprogram(name: "dealloc", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc7dealloc", scope: !428, file: !426, line: 120, type: !337, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!38 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 531, type: !337, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!39 = distinct !DISubprogram(name: "_mm_loadu_si128", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128", scope: !397, file: !394, line: 1333, type: !337, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!40 = distinct !DILexicalBlock(scope: !39, file: !394, line: 1334, column: 5)
!41 = distinct !DISubprogram(name: "match_empty_or_deleted", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group22match_empty_or_deleted", scope: !393, file: !389, line: 98, type: !337, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!42 = distinct !DILexicalBlock(scope: !41, file: !389, line: 106, column: 9)
!43 = distinct !DISubprogram(name: "find_insert_index_in_group", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner26find_insert_index_in_group", scope: !381, file: !377, line: 1748, type: !349, scopeLine: 1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!44 = distinct !DISubprogram(name: "lowest_set_bit", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask14lowest_set_bit", scope: !400, file: !398, line: 39, type: !337, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!45 = distinct !DILexicalBlock(scope: !44, file: !398, line: 40, column: 64)
!46 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMs10_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB6_7NonZerotE14trailing_zeros", scope: !431, file: !429, line: 639, type: !337, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!47 = distinct !DISubprogram(name: "nonzero_trailing_zeros", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask22nonzero_trailing_zeros", scope: !400, file: !398, line: 64, type: !337, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!48 = distinct !DILexicalBlock(scope: !43, file: !377, line: 1749, column: 9)
!49 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCskAlUH1kY1DR_10polars_ooc", scope: !405, file: !402, line: 927, type: !337, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!50 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !381, file: !377, line: 2621, type: !337, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!51 = distinct !DISubprogram(name: "is_bucket_full", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner14is_bucket_full", scope: !381, file: !377, line: 2644, type: !337, scopeLine: 2644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!52 = distinct !DISubprogram(name: "fix_insert_index", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index", scope: !381, file: !377, line: 1709, type: !349, scopeLine: 1709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!53 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCs7tGzs63DEEy_9hashbrown4util8unlikely", scope: !436, file: !435, line: 23, type: !337, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!54 = distinct !DISubprogram(name: "load_aligned", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group12load_aligned", scope: !393, file: !389, line: 55, type: !337, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!55 = distinct !DISubprogram(name: "match_empty_or_deleted", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group22match_empty_or_deleted", scope: !393, file: !389, line: 98, type: !337, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!56 = distinct !DILexicalBlock(scope: !55, file: !389, line: 106, column: 9)
!57 = distinct !DISubprogram(name: "lowest_set_bit", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask14lowest_set_bit", scope: !400, file: !398, line: 39, type: !337, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!58 = distinct !DILexicalBlock(scope: !57, file: !398, line: 40, column: 64)
!59 = distinct !DISubprogram(name: "unwrap_unchecked<usize>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionjE16unwrap_uncheckedCskAlUH1kY1DR_10polars_ooc", scope: !419, file: !417, line: 1128, type: !337, scopeLine: 1128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!60 = distinct !DISubprogram(name: "_mm_cmpeq_epi8", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse214__mm_cmpeq_epi8", scope: !397, file: !394, line: 913, type: !349, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!61 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !474, file: !471, line: 609, type: !337, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!62 = distinct !DISubprogram(name: "as_slice", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice", scope: !474, file: !471, line: 355, type: !337, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!63 = distinct !DILexicalBlock(scope: !62, file: !471, line: 357, column: 9)
!64 = distinct !DILexicalBlock(scope: !63, file: !471, line: 358, column: 9)
!65 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs4_NtCscgRAwXFJnXP_4core3numh12wrapping_sub", scope: !485, file: !359, line: 2547, type: !337, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!66 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCskAlUH1kY1DR_10polars_ooc", scope: !357, file: !338, line: 1073, type: !337, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!67 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECskAlUH1kY1DR_10polars_ooc", scope: !340, file: !338, line: 1575, type: !337, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!68 = distinct !DILexicalBlock(scope: !64, file: !471, line: 364, column: 9)
!69 = distinct !DILexicalBlock(scope: !68, file: !471, line: 368, column: 9)
!70 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Feature, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!71 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Feature, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!72 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !349, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!73 = distinct !DISubprogram(name: "size_of_val_raw<dyn polars_arrow::array::Array>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ECskAlUH1kY1DR_10polars_ooc", scope: !409, file: !408, line: 455, type: !337, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!74 = distinct !DISubprogram(name: "for_value_raw<dyn polars_arrow::array::Array>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ECskAlUH1kY1DR_10polars_ooc", scope: !535, file: !532, line: 253, type: !337, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!75 = distinct !DISubprogram(name: "drop<dyn polars_arrow::array::Array, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskAlUH1kY1DR_10polars_ooc", scope: !538, file: !536, line: 1913, type: !349, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!76 = distinct !DILexicalBlock(scope: !75, file: !536, line: 1916, column: 9)
!77 = distinct !DILexicalBlock(scope: !76, file: !536, line: 1919, column: 13)
!78 = distinct !DISubprogram(name: "align_of_val_raw<dyn polars_arrow::array::Array>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem16align_of_val_rawDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ECskAlUH1kY1DR_10polars_ooc", scope: !409, file: !408, line: 594, type: !337, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!79 = distinct !DISubprogram(name: "of_val_raw<dyn polars_arrow::array::Array>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ECskAlUH1kY1DR_10polars_ooc", scope: !542, file: !540, line: 123, type: !337, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!80 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !428, file: !426, line: 127, type: !337, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!81 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !543, file: !426, line: 219, type: !337, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!82 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !543, file: !426, line: 343, type: !337, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!83 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !544, file: !426, line: 460, type: !349, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!84 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !474, file: !471, line: 609, type: !337, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!85 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !474, file: !471, line: 446, type: !337, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!86 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !549, file: !471, line: 776, type: !337, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!87 = distinct !DISubprogram(name: "drop_in_place<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!88 = distinct !DISubprogram(name: "drop_in_place<compact_str::CompactString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!89 = distinct !DISubprogram(name: "drop_in_place<polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!90 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::vec::Vec<i32, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!91 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<i32, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!92 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<i32, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVeclEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!93 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Field>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCsfyRUffk9zcp_6planus6OffsetNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FieldEEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!94 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Field>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtCsfyRUffk9zcp_6planus6OffsetNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FieldEEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!95 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::KeyValue>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCsfyRUffk9zcp_6planus6OffsetNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!96 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::KeyValue>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtCsfyRUffk9zcp_6planus6OffsetNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!97 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<polars_arrow::datatypes::field::Field, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!98 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<polars_arrow::datatypes::field::Field, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!99 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Block, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!100 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Block, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!101 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::storage::SharedStorage<i32>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragelEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!102 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::buffer::Buffer<i32>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!103 = distinct !DISubprogram(name: "drop_in_place<polars_arrow::offset::OffsetsBuffer<i32>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset13OffsetsBufferlEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!104 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::storage::SharedStorage<u8>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!105 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::buffer::Buffer<u8>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!106 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<polars_arrow::bitmap::immutable::Bitmap>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!107 = distinct !DISubprogram(name: "drop_in_place<polars_arrow::bitmap::immutable::Bitmap>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!108 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::storage::SharedStorage<i64>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragexEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!109 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::buffer::Buffer<i64>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferxEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!110 = distinct !DISubprogram(name: "drop_in_place<polars_arrow::offset::OffsetsBuffer<i64>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset13OffsetsBufferxEECskAlUH1kY1DR_10polars_ooc", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!111 = distinct !DISubprogram(name: "median3<(polars_ooc::spill_context::WeakSpillContext, f64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_7sort_byNCNCNvMNtB14_14memory_managerNtB2U_13MemoryManager15find_spillables00E0EB14_", scope: !562, file: !559, line: 79, type: !337, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!112 = distinct !DISubprogram(name: "is_nan", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3f64d6is_nan", scope: !565, file: !563, line: 603, type: !337, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!113 = distinct !DISubprogram(name: "tot_ge", linkageName: "_RNvXs1p_NtCs2mZqlW55729_12polars_utils9total_orddNtB6_8TotalOrd6tot_ge", scope: !568, file: !566, line: 358, type: !337, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!114 = distinct !DISubprogram(name: "tot_lt", linkageName: "_RNvXs1p_NtCs2mZqlW55729_12polars_utils9total_orddNtB6_8TotalOrd6tot_lt", scope: !568, file: !566, line: 343, type: !337, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!115 = distinct !DISubprogram(name: "tot_cmp", linkageName: "_RNvXs1p_NtCs2mZqlW55729_12polars_utils9total_orddNtB6_8TotalOrd7tot_cmp", scope: !568, file: !566, line: 332, type: !337, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!116 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB6_13MemoryManager15find_spillables00B8_", scope: !574, file: !569, line: 165, type: !349, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!117 = distinct !DISubprogram(name: "{closure#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>", linkageName: "_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE7sort_byNCNCNvMNtBD_14memory_managerNtB1R_13MemoryManager15find_spillables00E0BD_", scope: !578, file: !575, line: 196, type: !349, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!118 = distinct !DISubprogram(name: "ge", linkageName: "_RNvXsQ_NtNtCscgRAwXFJnXP_4core3cmp5implsdNtB7_10PartialOrd2ge", scope: !579, file: !338, line: 1923, type: !337, scopeLine: 1923, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!119 = distinct !DISubprogram(name: "ge<f64, f64>", linkageName: "_RNvXs8_NtNtCscgRAwXFJnXP_4core3cmp5implsRdNtB7_10PartialOrd2geCskAlUH1kY1DR_10polars_ooc", scope: !580, file: !338, line: 2154, type: !337, scopeLine: 2154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!120 = distinct !DILexicalBlock(scope: !111, file: !559, line: 82, column: 5)
!121 = distinct !DILexicalBlock(scope: !120, file: !559, line: 83, column: 5)
!122 = distinct !DILexicalBlock(scope: !121, file: !559, line: 88, column: 9)
!123 = distinct !DISubprogram(name: "insert_tail<(polars_ooc::spill_context::WeakSpillContext, f64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCNCNvMNtB1d_14memory_managerNtB34_13MemoryManager15find_spillables00E0EB1d_", scope: !582, file: !581, line: 542, type: !349, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!124 = distinct !DILexicalBlock(scope: !123, file: !581, line: 546, column: 9)
!125 = distinct !DISubprogram(name: "sub<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE3subBH_", scope: !405, file: !402, line: 1033, type: !337, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!126 = distinct !DISubprogram(name: "copy_nonoverlapping<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEBR_", scope: !403, file: !406, line: 531, type: !337, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!127 = distinct !DILexicalBlock(scope: !124, file: !581, line: 556, column: 9)
!128 = distinct !DILexicalBlock(scope: !127, file: !581, line: 557, column: 9)
!129 = distinct !DISubprogram(name: "copy_nonoverlapping<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEBR_", scope: !403, file: !406, line: 531, type: !337, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!130 = distinct !DISubprogram(name: "drop<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvXs5_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEENtNtNtBd_3ops4drop4Drop4dropB1l_", scope: !583, file: !581, line: 302, type: !337, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!131 = distinct !DISubprogram(name: "drop_in_place<core::slice::sort::shared::smallsort::CopyOnDrop<(polars_ooc::spill_context::WeakSpillContext, f64)>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEEB1D_", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!132 = distinct !DISubprogram(name: "sliced_unchecked", linkageName: "_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap16sliced_unchecked", scope: !598, file: !595, line: 339, type: !337, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!133 = distinct !DISubprogram(name: "slice_unchecked", linkageName: "_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap15slice_unchecked", scope: !598, file: !595, line: 280, type: !337, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!134 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<u64>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8yEE3getCskAlUH1kY1DR_10polars_ooc", scope: !601, file: !599, line: 2443, type: !337, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!135 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE6as_ptr", scope: !556, file: !553, line: 3614, type: !337, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!136 = distinct !DISubprogram(name: "get_mut", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE7get_mut", scope: !556, file: !553, line: 2710, type: !337, scopeLine: 2710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!137 = distinct !DISubprogram(name: "get_mut", linkageName: "_RNvXsa_NtCs2mZqlW55729_12polars_utils12relaxed_cellyNtB5_12AtomicNative7get_mut", scope: !604, file: !602, line: 114, type: !337, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!138 = distinct !DISubprogram(name: "get_mut<u64>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils12relaxed_cellINtB2_11RelaxedCellyE7get_mutCskAlUH1kY1DR_10polars_ooc", scope: !605, file: !602, line: 35, type: !337, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!139 = distinct !DILexicalBlock(scope: !133, file: !595, line: 287, column: 9)
!140 = distinct !DILexicalBlock(scope: !139, file: !595, line: 304, column: 13)
!141 = distinct !DISubprogram(name: "deref<u8>", linkageName: "_RNvXsc_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskAlUH1kY1DR_10polars_ooc", scope: !610, file: !607, line: 458, type: !337, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!142 = distinct !DILexicalBlock(scope: !141, file: !607, line: 460, column: 13)
!143 = distinct !DILexicalBlock(scope: !140, file: !595, line: 307, column: 17)
!144 = distinct !DILexicalBlock(scope: !142, file: !607, line: 461, column: 13)
!145 = distinct !DILexicalBlock(scope: !141, file: !607, line: 460, column: 13)
!146 = distinct !DILexicalBlock(scope: !143, file: !595, line: 308, column: 17)
!147 = distinct !DILexicalBlock(scope: !145, file: !607, line: 461, column: 13)
!148 = distinct !DILexicalBlock(scope: !146, file: !595, line: 309, column: 17)
!149 = distinct !DISubprogram(name: "slice<i32>", linkageName: "_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB2_11BinaryArraylE5sliceCskAlUH1kY1DR_10polars_ooc", scope: !592, file: !588, line: 219, type: !337, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!150 = distinct !DISubprogram(name: "len<i32>", linkageName: "_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE3lenCskAlUH1kY1DR_10polars_ooc", scope: !613, file: !611, line: 147, type: !337, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!151 = distinct !DISubprogram(name: "len<i32>", linkageName: "_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB2_11BinaryArraylE3lenCskAlUH1kY1DR_10polars_ooc", scope: !592, file: !588, line: 151, type: !337, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!152 = distinct !DISubprogram(name: "len_proxy<i32>", linkageName: "_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferlE9len_proxyCskAlUH1kY1DR_10polars_ooc", scope: !616, file: !614, line: 419, type: !337, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!153 = distinct !DISubprogram(name: "slice<i64>", linkageName: "_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB2_11BinaryArrayxE5sliceCskAlUH1kY1DR_10polars_ooc", scope: !592, file: !588, line: 219, type: !337, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!154 = distinct !DISubprogram(name: "len<i64>", linkageName: "_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE3lenCskAlUH1kY1DR_10polars_ooc", scope: !613, file: !611, line: 147, type: !337, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!155 = distinct !DISubprogram(name: "len<i64>", linkageName: "_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB2_11BinaryArrayxE3lenCskAlUH1kY1DR_10polars_ooc", scope: !592, file: !588, line: 151, type: !337, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!156 = distinct !DISubprogram(name: "len_proxy<i64>", linkageName: "_RNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_13OffsetsBufferxE9len_proxyCskAlUH1kY1DR_10polars_ooc", scope: !616, file: !614, line: 419, type: !337, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!157 = distinct !DISubprogram(name: "reserve<usize, allocator_api2::stable::alloc::global::Global, indexmap::inner::get_hash::{closure_env#0}<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>>", linkageName: "_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE0ECskAlUH1kY1DR_10polars_ooc", scope: !380, file: !377, line: 909, type: !337, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
end_hunk_1
begin_hunk_2_@llvm.umin.i8/@llvm.smax.i64
!3478 = distinct !DISubprogram(name: "leading_zeros", linkageName: "_RNvMs1s_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB6_7NonZerojE13leading_zeros", scope: !431, file: !429, line: 609, type: !337, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3479 = distinct !DISubprogram(name: "ilog2", linkageName: "_RNvMs1s_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB6_7NonZerojE5ilog2", scope: !431, file: !429, line: 1791, type: !337, scopeLine: 1791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3480 = distinct !DISubprogram(name: "checked_ilog2", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13checked_ilog2", scope: !361, file: !359, line: 1805, type: !337, scopeLine: 1805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3481 = distinct !DILexicalBlock(scope: !3480, file: !359, line: 1807, column: 17)
!3482 = distinct !DISubprogram(name: "ilog2", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj5ilog2", scope: !361, file: !359, line: 1693, type: !337, scopeLine: 1693, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3483 = distinct !DILexicalBlock(scope: !3482, file: !359, line: 1694, column: 53)
!3484 = distinct !DILocation(line: 269, column: 35, scope: !3476, inlinedAt: !3477)
!3485 = distinct !DILocation(line: 1694, column: 37, scope: !3483, inlinedAt: !3484)
!3486 = distinct !DILocation(line: 1807, column: 35, scope: !3481, inlinedAt: !3485)
!3487 = distinct !DILocation(line: 1792, column: 35, scope: !3479, inlinedAt: !3486)
!3488 = distinct !{null}
!3489 = distinct !DILexicalBlock(scope: !3476, file: !3599, line: 269, column: 5)
!3490 = distinct !{!3490, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCNCNvMNtB12_14memory_managerNtB2S_13MemoryManager15find_spillables00E0EB12_"}
!3491 = distinct !{!3491, !3490, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCNCNvMNtB12_14memory_managerNtB2S_13MemoryManager15find_spillables00E0EB12_: argument 0"}
!3492 = distinct !{!3492, !3490, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCNCNvMNtB12_14memory_managerNtB2S_13MemoryManager15find_spillables00E0EB12_: argument 1"}
!3493 = distinct !DISubprogram(name: "merge<(polars_ooc::spill_context::WeakSpillContext, f64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCNCNvMNtB12_14memory_managerNtB2S_13MemoryManager15find_spillables00E0EB12_", scope: !3632, file: !3631, line: 8, type: !349, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3494 = distinct !DILexicalBlock(scope: !3493, file: !3631, line: 14, column: 5)
!3495 = distinct !DILocation(line: 211, column: 9, scope: !3473, inlinedAt: !3472)
!3496 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECskAlUH1kY1DR_10polars_ooc", scope: !340, file: !338, line: 1575, type: !337, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3497 = distinct !DILocation(line: 16, column: 50, scope: !3494, inlinedAt: !3495)
!3498 = distinct !DILocation(line: 1576, column: 8, scope: !3496, inlinedAt: !3497)
!3499 = distinct !DISubprogram(name: "add<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE3addBH_", scope: !405, file: !402, line: 927, type: !337, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3500 = distinct !DILexicalBlock(scope: !3494, file: !3631, line: 38, column: 9)
!3501 = distinct !DILexicalBlock(scope: !3500, file: !3631, line: 40, column: 9)
!3502 = distinct !DILocation(line: 41, column: 28, scope: !3501, inlinedAt: !3495)
!3503 = distinct !DILexicalBlock(scope: !3501, file: !3631, line: 41, column: 9)
!3504 = distinct !DILexicalBlock(scope: !3503, file: !3631, line: 42, column: 9)
!3505 = distinct !DILexicalBlock(scope: !3504, file: !3631, line: 44, column: 9)
!3506 = distinct !DILexicalBlock(scope: !3505, file: !3631, line: 45, column: 9)
!3507 = distinct !DILexicalBlock(scope: !3506, file: !3631, line: 47, column: 9)
!3508 = distinct !DISubprogram(name: "copy_nonoverlapping<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEBR_", scope: !403, file: !406, line: 531, type: !337, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3509 = distinct !DILexicalBlock(scope: !3507, file: !3631, line: 48, column: 9)
!3510 = distinct !DILexicalBlock(scope: !3509, file: !3631, line: 49, column: 9)
!3511 = distinct !DILocation(line: 51, column: 9, scope: !3510, inlinedAt: !3495)
!3512 = distinct !DILocation(line: 53, column: 65, scope: !3510, inlinedAt: !3495)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !3631, line: 53, column: 9)
!3514 = distinct !DISubprogram(name: "sub<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE3subBH_", scope: !405, file: !402, line: 1033, type: !337, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3515 = distinct !DISubprogram(name: "merge_down<(polars_ooc::spill_context::WeakSpillContext, f64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>>", linkageName: "_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNCNvMNtB1f_14memory_managerNtB3j_13MemoryManager15find_spillables00E0EB1f_", scope: !3634, file: !3631, line: 108, type: !349, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3516 = distinct !DILocation(line: 58, column: 25, scope: !3513, inlinedAt: !3495)
!3517 = distinct !DILocation(line: 118, column: 37, scope: !3515, inlinedAt: !3516)
!3518 = distinct !DILexicalBlock(scope: !3515, file: !3631, line: 118, column: 17)
!3519 = distinct !DILocation(line: 119, column: 38, scope: !3518, inlinedAt: !3516)
!3520 = distinct !DILexicalBlock(scope: !3518, file: !3631, line: 119, column: 17)
!3521 = distinct !DILocation(line: 120, column: 27, scope: !3520, inlinedAt: !3516)
!3522 = distinct !{!3522, !"_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNCNvMNtB1f_14memory_managerNtB3j_13MemoryManager15find_spillables00E0EB1f_"}
!3523 = distinct !{!3523, !3522, !"_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNCNvMNtB1f_14memory_managerNtB3j_13MemoryManager15find_spillables00E0EB1f_: argument 0"}
!3524 = distinct !DILocation(line: 122, column: 36, scope: !3520, inlinedAt: !3516)
!3525 = distinct !DILocation(line: 196, column: 34, scope: !117, inlinedAt: !3524)
!3526 = distinct !DILocation(line: 165, column: 42, scope: !116, inlinedAt: !3525)
!3527 = distinct !DILocation(line: 333, column: 25, scope: !115, inlinedAt: !3526)
!3528 = distinct !DILocation(line: 344, column: 23, scope: !114, inlinedAt: !3527)
!3529 = distinct !DILocation(line: 364, column: 22, scope: !113, inlinedAt: !3528)
!3530 = distinct !DILocation(line: 364, column: 33, scope: !113, inlinedAt: !3528)
!3531 = distinct !DILocation(line: 2155, column: 13, scope: !119, inlinedAt: !3530)
!3532 = distinct !DILexicalBlock(scope: !3520, file: !3631, line: 122, column: 17)
!3533 = distinct !DISubprogram(name: "copy_nonoverlapping<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEBR_", scope: !403, file: !406, line: 531, type: !337, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3534 = distinct !DILexicalBlock(scope: !3532, file: !3631, line: 124, column: 17)
!3535 = distinct !DILocation(line: 125, column: 17, scope: !3534, inlinedAt: !3516)
!3536 = distinct !DISubprogram(name: "add<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE3addBH_", scope: !405, file: !402, line: 927, type: !337, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3537 = distinct !DILocation(line: 127, column: 33, scope: !3534, inlinedAt: !3516)
!3538 = distinct !DILocation(line: 128, column: 34, scope: !3534, inlinedAt: !3516)
!3539 = distinct !DISubprogram(name: "merge_up<(polars_ooc::spill_context::WeakSpillContext, f64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>>", linkageName: "_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEE8merge_upNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNCNvMNtB1f_14memory_managerNtB3g_13MemoryManager15find_spillables00E0EB1f_", scope: !3634, file: !3631, line: 78, type: !349, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3540 = distinct !DILexicalBlock(scope: !3539, file: !3631, line: 86, column: 13)
!3541 = distinct !DILexicalBlock(scope: !3540, file: !3631, line: 87, column: 13)
!3542 = distinct !DILocation(line: 56, column: 25, scope: !3513, inlinedAt: !3495)
!3543 = distinct !{!3543, !"_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEE8merge_upNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNCNvMNtB1f_14memory_managerNtB3g_13MemoryManager15find_spillables00E0EB1f_"}
!3544 = distinct !{!3544, !3543, !"_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEE8merge_upNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNCNvMNtB1f_14memory_managerNtB3g_13MemoryManager15find_spillables00E0EB1f_: argument 0"}
!3545 = distinct !DILocation(line: 90, column: 37, scope: !3541, inlinedAt: !3542)
!3546 = distinct !DILocation(line: 196, column: 34, scope: !117, inlinedAt: !3545)
!3547 = distinct !DILocation(line: 165, column: 42, scope: !116, inlinedAt: !3546)
!3548 = distinct !DILocation(line: 333, column: 25, scope: !115, inlinedAt: !3547)
!3549 = distinct !DILocation(line: 344, column: 23, scope: !114, inlinedAt: !3548)
!3550 = distinct !DILocation(line: 364, column: 22, scope: !113, inlinedAt: !3549)
!3551 = distinct !DILocation(line: 364, column: 33, scope: !113, inlinedAt: !3549)
!3552 = distinct !DILocation(line: 2155, column: 13, scope: !119, inlinedAt: !3551)
!3553 = distinct !DILexicalBlock(scope: !3541, file: !3631, line: 90, column: 17)
!3554 = distinct !DISubprogram(name: "copy_nonoverlapping<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEBR_", scope: !403, file: !406, line: 531, type: !337, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3555 = distinct !DILexicalBlock(scope: !3553, file: !3631, line: 92, column: 17)
!3556 = distinct !DILocation(line: 93, column: 17, scope: !3555, inlinedAt: !3542)
!3557 = distinct !DISubprogram(name: "add<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE3addBH_", scope: !405, file: !402, line: 927, type: !337, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3558 = distinct !DILocation(line: 95, column: 30, scope: !3555, inlinedAt: !3542)
!3559 = distinct !DISubprogram(name: "add<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE3addBJ_", scope: !531, file: !529, line: 829, type: !337, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3560 = distinct !DILocation(line: 96, column: 31, scope: !3555, inlinedAt: !3542)
!3561 = distinct !DILocation(line: 98, column: 28, scope: !3555, inlinedAt: !3542)
!3562 = distinct !DISubprogram(name: "offset_from_unsigned<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE20offset_from_unsignedBJ_", scope: !531, file: !529, line: 701, type: !337, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3563 = distinct !DILexicalBlock(scope: !3562, file: !529, line: 726, column: 9)
!3564 = distinct !DISubprogram(name: "offset_from_unsigned<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE20offset_from_unsignedBH_", scope: !405, file: !402, line: 882, type: !337, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3565 = distinct !DISubprogram(name: "drop<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvXs_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB4_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEENtNtNtBc_3ops4drop4Drop4dropB1g_", scope: !3641, file: !3631, line: 139, type: !337, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3566 = distinct !DISubprogram(name: "drop_in_place<core::slice::sort::stable::merge::MergeState<(polars_ooc::spill_context::WeakSpillContext, f64)>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEEB1z_", scope: !403, file: !406, line: 810, type: !337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3567 = distinct !DILocation(line: 62, column: 5, scope: !3510, inlinedAt: !3495)
!3568 = distinct !DILocation(line: 810, column: 1, scope: !3566, inlinedAt: !3567)
!3569 = distinct !DILocation(line: 146, column: 32, scope: !3565, inlinedAt: !3568)
!3570 = distinct !DILocation(line: 887, column: 37, scope: !3564, inlinedAt: !3569)
!3571 = distinct !{!3571, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEEB1z_"}
!3572 = distinct !{!3572, !3571, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEEB1z_: argument 0"}
!3573 = distinct !{!3573, !"_RNvXs_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB4_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEENtNtNtBc_3ops4drop4Drop4dropB1g_"}
!3574 = distinct !{!3574, !3573, !"_RNvXs_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB4_10MergeStateTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEENtNtNtBc_3ops4drop4Drop4dropB1g_: argument 0"}
!3575 = distinct !DISubprogram(name: "copy_nonoverlapping<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEBR_", scope: !403, file: !406, line: 531, type: !337, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3576 = distinct !DILexicalBlock(scope: !3565, file: !3631, line: 146, column: 13)
!3577 = distinct !DILocation(line: 147, column: 13, scope: !3576, inlinedAt: !3568)
!3578 = distinct !DISubprogram(name: "new_sorted", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5driftNtB2_12DriftsortRun10new_sorted", scope: !3613, file: !3599, line: 280, type: !337, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3579 = distinct !DILocation(line: 213, column: 9, scope: !3473, inlinedAt: !3472)
!3580 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEB1a_", scope: !364, file: !362, line: 94, type: !337, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3581 = distinct !DILexicalBlock(scope: !3580, file: !362, line: 99, column: 5)
!3582 = distinct !DISubprogram(name: "index_mut<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEE9index_mutB1y_", scope: !585, file: !362, line: 579, type: !337, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3583 = distinct !DILexicalBlock(scope: !3582, file: !362, line: 585, column: 13)
!3584 = distinct !DISubprogram(name: "index_mut<(polars_ooc::spill_context::WeakSpillContext, f64), core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEINtNtNtB8_3ops5index8IndexMutINtNtB1N_5range9RangeFromjEE9index_mutBJ_", scope: !586, file: !362, line: 30, type: !337, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3585 = distinct !DILocation(line: 209, column: 36, scope: !3473, inlinedAt: !3472)
!3586 = distinct !DILocation(line: 31, column: 15, scope: !3643, inlinedAt: !3585)
!3587 = distinct !DILocation(line: 586, column: 19, scope: !3583, inlinedAt: !3586)
!3588 = distinct !DILocation(line: 209, column: 13, scope: !3473, inlinedAt: !3472)
!3589 = distinct !DILocation(line: 269, column: 35, scope: !3476, inlinedAt: !3588)
!3590 = distinct !DILocation(line: 1694, column: 37, scope: !3483, inlinedAt: !3589)
!3591 = distinct !DILocation(line: 1807, column: 35, scope: !3481, inlinedAt: !3590)
!3592 = distinct !DILocation(line: 1792, column: 35, scope: !3479, inlinedAt: !3591)
!3593 = distinct !DISubprogram(name: "sorted", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5driftNtB2_12DriftsortRun6sorted", scope: !3613, file: !3599, line: 290, type: !337, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3594 = distinct !DILocation(line: 118, column: 9, scope: !3366)
!3595 = distinct !DILocation(line: 269, column: 35, scope: !3476, inlinedAt: !3594)
!3596 = distinct !DILocation(line: 1694, column: 37, scope: !3483, inlinedAt: !3595)
!3597 = distinct !DILocation(line: 1807, column: 35, scope: !3481, inlinedAt: !3596)
!3598 = distinct !DILocation(line: 1792, column: 35, scope: !3479, inlinedAt: !3597)
!3599 = !DIFile(filename: "library/core/src/slice/sort/stable/drift.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "45ada0f6d66a135183fb6260ca4f4329")
!3600 = !DINamespace(name: "drift", scope: !584)
!3601 = !DINamespace(name: "{impl#9}", scope: !360)
!3602 = !DILocation(line: 30, column: 24, scope: !3351)
!3603 = !DILocation(line: 161, column: 18, scope: !3353, inlinedAt: !3602)
!3604 = !DILocation(line: 40, column: 9, scope: !3356)
!3605 = !DILocation(line: 64, column: 34, scope: !3367)
!3606 = !DILocation(line: 31, column: 15, scope: !3369, inlinedAt: !3605)
!3607 = !DILocation(line: 586, column: 19, scope: !3372, inlinedAt: !3606)
!3608 = !DIFile(filename: "library/core/src/slice/sort/shared/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "694d50307d8b09e28f18230edf6cbedb")
!3609 = !{!3381}
!3610 = !{!3383, !3382}
!3611 = !DILexicalBlockFile(scope: !3394, file: !520, discriminator: 8)
!3612 = !DILexicalBlockFile(scope: !3394, file: !520, discriminator: 4)
!3613 = !DINamespace(name: "DriftsortRun", scope: !3600)
!3614 = !DILexicalBlockFile(scope: !3440, file: !383, discriminator: 0)
!3615 = !DINamespace(name: "reverse", scope: !521)
!3616 = !DILocation(line: 66, column: 37, scope: !3367)
!3617 = !DILocation(line: 68, column: 37, scope: !3367)
!3618 = !DILocation(line: 65, column: 29, scope: !3367)
!3619 = !DILocation(line: 170, column: 47, scope: !3458, inlinedAt: !3618)
!3620 = !DILocation(line: 87, column: 52, scope: !3367)
!3621 = !DILocation(line: 103, column: 19, scope: !3367)
!3622 = !DILocation(line: 104, column: 29, scope: !3367)
!3623 = !DILocation(line: 90, column: 34, scope: !3367)
!3624 = !DILocation(line: 91, column: 39, scope: !3462)
!3625 = !DILocation(line: 91, column: 56, scope: !3462)
!3626 = !DILocation(line: 93, column: 37, scope: !3465)
!3627 = !DILocation(line: 691, column: 30, scope: !3466, inlinedAt: !3626)
!3628 = !DILocation(line: 430, column: 13, scope: !3468, inlinedAt: !3627)
!3629 = !{!3491}
!3630 = !{!3492}
!3631 = !DIFile(filename: "library/core/src/slice/sort/stable/merge.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "90afbaa2075bc1e9689ef92c7df39f20")
!3632 = !DINamespace(name: "merge", scope: !584)
!3633 = !{!3491, !3492}
!3634 = !DINamespace(name: "MergeState", scope: !3632)
!3635 = !{!3523, !3491}
!3636 = !{!3523, !3492}
!3637 = !{!3523}
!3638 = !{!3544, !3492}
!3639 = !{!3544, !3491}
!3640 = !{!3544}
!3641 = !DINamespace(name: "{impl#1}", scope: !3632)
!3642 = !{!3574, !3572}
!3643 = !DILexicalBlockFile(scope: !3584, file: !362, discriminator: 2)
!3644 = !DILocation(line: 113, column: 30, scope: !3367)
!3645 = !DILocation(line: 117, column: 18, scope: !3366)
!3646 = !DILocation(line: 27, column: 8, scope: !3351)
!3647 = !DILocation(line: 3712, column: 21, scope: !3352, inlinedAt: !3603)
!3648 = !DILocation(line: 3713, column: 21, scope: !3354, inlinedAt: !3603)
!3649 = !DILocation(line: 3714, column: 16, scope: !3355, inlinedAt: !3603)
!3650 = !DILocation(line: 37, column: 31, scope: !3356)
!3651 = !DILocation(line: 42, column: 9, scope: !3356)
!3652 = !DILocation(line: 40, column: 24, scope: !3356)
!3653 = !DILocation(line: 40, column: 18, scope: !3356)
!3654 = !DILocation(line: 1077, column: 12, scope: !66, inlinedAt: !3358)
!3655 = !DILocation(line: 37, column: 28, scope: !3356)
!3656 = !DILocation(line: 0, scope: !3356)
!3657 = !DILocation(line: 50, column: 9, scope: !3360)
!3658 = !DILocation(line: 52, column: 9, scope: !3362)
!3659 = !DILocation(line: 57, column: 5, scope: !3366)
!3660 = !DILocation(line: 0, scope: !3365)
!3661 = !DILocation(line: 0, scope: !3364)
!3662 = !DILocation(line: 0, scope: !3359)
!3663 = !DILocation(line: 62, column: 12, scope: !3367)
!3664 = !DILocation(line: 0, scope: !3367)
!3665 = !DILocation(line: 87, column: 19, scope: !3367)
!3666 = !DILocation(line: 585, column: 27, scope: !3368, inlinedAt: !3606)
!3667 = !DILocation(line: 101, column: 24, scope: !3371, inlinedAt: !3607)
!3668 = !DILocation(line: 234, column: 8, scope: !3374, inlinedAt: !3375)
!3669 = !DILocation(line: 249, column: 8, scope: !3374, inlinedAt: !3375)
!3670 = !DILocation(line: 25, column: 8, scope: !3377, inlinedAt: !3378)
!3671 = !DILocation(line: 34, column: 35, scope: !3379, inlinedAt: !3378)
!3672 = !DILocation(line: 604, column: 9, scope: !112, inlinedAt: !3389)
!3673 = !DILocation(line: 1923, column: 50, scope: !118, inlinedAt: !3391)
!3674 = !DILocation(line: 333, column: 20, scope: !115, inlinedAt: !3386)
!3675 = !DILocation(line: 0, scope: !3392, inlinedAt: !3378)
!3676 = !DILocation(line: 35, column: 12, scope: !3392, inlinedAt: !3378)
!3677 = !DILocation(line: 40, column: 19, scope: !3392, inlinedAt: !3378)
!3678 = !DILocation(line: 36, column: 19, scope: !3392, inlinedAt: !3378)
!3679 = !DILocation(line: 40, column: 37, scope: !3392, inlinedAt: !3378)
!3680 = !DILocation(line: 253, column: 13, scope: !3393, inlinedAt: !3396)
!3681 = !DILocation(line: 604, column: 9, scope: !112, inlinedAt: !3402)
!3682 = !DILocation(line: 1923, column: 50, scope: !118, inlinedAt: !3404)
!3683 = !DILocation(line: 333, column: 20, scope: !115, inlinedAt: !3399)
!3684 = !DILocation(line: 42, column: 17, scope: !3392, inlinedAt: !3378)
!3685 = !DILocation(line: 36, column: 36, scope: !3392, inlinedAt: !3378)
!3686 = !DILocation(line: 253, column: 13, scope: !3393, inlinedAt: !3406)
!3687 = !DILocation(line: 604, column: 9, scope: !112, inlinedAt: !3412)
!3688 = !DILocation(line: 1923, column: 50, scope: !118, inlinedAt: !3414)
!3689 = !DILocation(line: 333, column: 20, scope: !115, inlinedAt: !3409)
!3690 = !DILocation(line: 37, column: 17, scope: !3392, inlinedAt: !3378)
!3691 = !DILocation(line: 0, scope: !3377, inlinedAt: !3378)
!3692 = !DILocation(line: 238, column: 37, scope: !3415, inlinedAt: !3375)
!3693 = !DILocation(line: 238, column: 18, scope: !3415, inlinedAt: !3375)
!3694 = !DILocation(line: 240, column: 12, scope: !3415, inlinedAt: !3375)
!3695 = !DILocation(line: 241, column: 16, scope: !3415, inlinedAt: !3375)
!3696 = !DILocation(line: 1077, column: 12, scope: !66, inlinedAt: !3418)
!3697 = !DILocation(line: 286, column: 14, scope: !3419, inlinedAt: !3420)
!3698 = !DILocation(line: 249, column: 5, scope: !3374, inlinedAt: !3375)
!3699 = !DILocation(line: 1077, column: 12, scope: !66, inlinedAt: !3422)
!3700 = !DILocation(line: 255, column: 9, scope: !3424, inlinedAt: !3375)
!3701 = !DILocation(line: 281, column: 14, scope: !3425, inlinedAt: !3426)
!3702 = !DILocation(line: 281, column: 14, scope: !3425, inlinedAt: !3427)
!3703 = !DILocation(line: 260, column: 2, scope: !3373, inlinedAt: !3375)
!3704 = !DILocation(line: 961, column: 18, scope: !3428, inlinedAt: !3435)
!3705 = !DILocation(line: 1493, column: 18, scope: !16, inlinedAt: !3454)
!3706 = !DILocation(line: 1015, column: 45, scope: !3446, inlinedAt: !3449)
!3707 = !DILocation(line: 1015, column: 27, scope: !3446, inlinedAt: !3449)
!3708 = !DILocation(line: 1015, column: 38, scope: !3446, inlinedAt: !3449)
!3709 = !DILocation(line: 2567, column: 1, scope: !3441, inlinedAt: !3451)
!3710 = !DILocation(line: 1016, column: 17, scope: !3446, inlinedAt: !3449)
!3711 = !DILocation(line: 1014, column: 19, scope: !3446, inlinedAt: !3449)
!3712 = !DILocation(line: 0, scope: !3374, inlinedAt: !3375)
!3713 = !DILocation(line: 296, column: 9, scope: !3455, inlinedAt: !3616)
!3714 = !DILocation(line: 296, column: 9, scope: !3455, inlinedAt: !3617)
!3715 = !DILocation(line: 168, column: 13, scope: !3456, inlinedAt: !3618)
!3716 = !DILocation(line: 169, column: 13, scope: !3457, inlinedAt: !3618)
!3717 = !DILocation(line: 170, column: 6, scope: !3458, inlinedAt: !3618)
!3718 = !DILocation(line: 170, column: 27, scope: !3458, inlinedAt: !3618)
!3719 = !DILocation(line: 170, column: 5, scope: !3458, inlinedAt: !3618)
!3720 = !DILocation(line: 154, column: 20, scope: !3459, inlinedAt: !3619)
!3721 = !DILocation(line: 62, column: 9, scope: !3367)
!3722 = !DILocation(line: 87, column: 56, scope: !3367)
!3723 = !DILocation(line: 961, column: 18, scope: !3460, inlinedAt: !3620)
!3724 = !DILocation(line: 87, column: 36, scope: !3367)
!3725 = !DILocation(line: 961, column: 18, scope: !3461, inlinedAt: !3621)
!3726 = !DILocation(line: 103, column: 13, scope: !3367)
!3727 = !DILocation(line: 961, column: 18, scope: !3460, inlinedAt: !3622)
!3728 = !DILocation(line: 104, column: 13, scope: !3367)
!3729 = !DILocation(line: 109, column: 12, scope: !3367)
!3730 = !DILocation(line: 961, column: 18, scope: !3461, inlinedAt: !3623)
!3731 = !DILocation(line: 90, column: 28, scope: !3367)
!3732 = !DILocation(line: 296, column: 9, scope: !3455, inlinedAt: !3624)
!3733 = !DILocation(line: 296, column: 9, scope: !3455, inlinedAt: !3625)
!3734 = !DILocation(line: 91, column: 34, scope: !3462)
!3735 = !DILocation(line: 92, column: 39, scope: !3463)
!3736 = !DILocation(line: 101, column: 24, scope: !3464, inlinedAt: !3628)
!3737 = !DILocation(line: 203, column: 30, scope: !3470, inlinedAt: !3472)
!3738 = !DILocation(line: 204, column: 9, scope: !3473, inlinedAt: !3472)
!3739 = !DILocation(line: 205, column: 13, scope: !3473, inlinedAt: !3472)
!3740 = !DILocation(line: 286, column: 14, scope: !3474, inlinedAt: !3475)
!3741 = !DILocation(line: 204, column: 5, scope: !3473, inlinedAt: !3472)
!3742 = !DILocation(line: 208, column: 13, scope: !3473, inlinedAt: !3472)
!3743 = !DILocation(line: 269, column: 21, scope: !3476, inlinedAt: !3477)
!3744 = !DILocation(line: 612, column: 21, scope: !3478, inlinedAt: !3487)
!3745 = !DILocation(line: 269, column: 17, scope: !3476, inlinedAt: !3477)
!3746 = !DILocation(line: 270, column: 5, scope: !3489, inlinedAt: !3477)
!3747 = !DILocation(line: 206, column: 13, scope: !3473, inlinedAt: !3472)
!3748 = !DILocation(line: 211, column: 9, scope: !3473, inlinedAt: !3472)
!3749 = !DILocation(line: 16, column: 8, scope: !3494, inlinedAt: !3495)
!3750 = !DILocation(line: 1077, column: 12, scope: !66, inlinedAt: !3498)
!3751 = !DILocation(line: 16, column: 34, scope: !3494, inlinedAt: !3495)
!3752 = !DILocation(line: 961, column: 18, scope: !3499, inlinedAt: !3502)
!3753 = !DILocation(line: 47, column: 31, scope: !3506, inlinedAt: !3495)
!3754 = !DILocation(line: 48, column: 28, scope: !3507, inlinedAt: !3495)
!3755 = !DILocation(line: 552, column: 14, scope: !3508, inlinedAt: !3511)
!3756 = !DILocation(line: 961, column: 18, scope: !3499, inlinedAt: !3512)
!3757 = !DILocation(line: 55, column: 12, scope: !3513, inlinedAt: !3495)
!3758 = !DILocation(line: 1072, column: 22, scope: !3514, inlinedAt: !3517)
!3759 = !DILocation(line: 118, column: 28, scope: !3515, inlinedAt: !3516)
!3760 = !DILocation(line: 1072, column: 22, scope: !3514, inlinedAt: !3519)
!3761 = !DILocation(line: 1072, column: 22, scope: !3514, inlinedAt: !3521)
!3762 = !DILocation(line: 122, column: 36, scope: !3520, inlinedAt: !3516)
!3763 = !DILocation(line: 604, column: 9, scope: !112, inlinedAt: !3529)
!3764 = !DILocation(line: 1923, column: 50, scope: !118, inlinedAt: !3531)
!3765 = !DILocation(line: 333, column: 20, scope: !115, inlinedAt: !3526)
!3766 = !DILocation(line: 124, column: 27, scope: !3532, inlinedAt: !3516)
!3767 = !DILocation(line: 552, column: 14, scope: !3533, inlinedAt: !3535)
!3768 = !DILocation(line: 127, column: 37, scope: !3534, inlinedAt: !3516)
!3769 = !DILocation(line: 961, column: 18, scope: !3536, inlinedAt: !3537)
!3770 = !DILocation(line: 128, column: 38, scope: !3534, inlinedAt: !3516)
!3771 = !DILocation(line: 961, column: 18, scope: !3536, inlinedAt: !3538)
!3772 = !DILocation(line: 130, column: 20, scope: !3534, inlinedAt: !3516)
!3773 = !DILocation(line: 90, column: 37, scope: !3541, inlinedAt: !3542)
!3774 = !DILocation(line: 604, column: 9, scope: !112, inlinedAt: !3550)
!3775 = !DILocation(line: 1923, column: 50, scope: !118, inlinedAt: !3552)
!3776 = !DILocation(line: 333, column: 20, scope: !115, inlinedAt: !3547)
!3777 = !DILocation(line: 90, column: 36, scope: !3541, inlinedAt: !3542)
!3778 = !DILocation(line: 92, column: 30, scope: !3553, inlinedAt: !3542)
!3779 = !DILocation(line: 552, column: 14, scope: !3554, inlinedAt: !3556)
!3780 = !DILocation(line: 95, column: 34, scope: !3555, inlinedAt: !3542)
!3781 = !DILocation(line: 961, column: 18, scope: !3557, inlinedAt: !3558)
!3782 = !DILocation(line: 96, column: 35, scope: !3555, inlinedAt: !3542)
!3783 = !DILocation(line: 863, column: 18, scope: !3559, inlinedAt: !3560)
!3784 = !DILocation(line: 961, column: 18, scope: !3557, inlinedAt: !3561)
!3785 = !DILocation(line: 89, column: 19, scope: !3541, inlinedAt: !3542)
!3786 = !DILocation(line: 0, scope: !3513, inlinedAt: !3495)
!3787 = !DILocation(line: 0, scope: !3510, inlinedAt: !3495)
!3788 = !DILocation(line: 729, column: 18, scope: !3563, inlinedAt: !3570)
!3789 = !DILocation(line: 552, column: 14, scope: !3575, inlinedAt: !3577)
!3790 = !DILocation(line: 63, column: 2, scope: !3493, inlinedAt: !3495)
!3791 = !DILocation(line: 281, column: 14, scope: !3578, inlinedAt: !3579)
!3792 = !DILocation(line: 101, column: 24, scope: !3581, inlinedAt: !3587)
!3793 = !DILocation(line: 269, column: 21, scope: !3476, inlinedAt: !3588)
!3794 = !DILocation(line: 612, column: 21, scope: !3478, inlinedAt: !3592)
!3795 = !DILocation(line: 269, column: 17, scope: !3476, inlinedAt: !3588)
!3796 = !DILocation(line: 270, column: 5, scope: !3489, inlinedAt: !3588)
!3797 = !DILocation(line: 209, column: 13, scope: !3473, inlinedAt: !3472)
!3798 = !DILocation(line: 0, scope: !3473, inlinedAt: !3472)
!3799 = !DILocation(line: 105, column: 13, scope: !3367)
!3800 = !DILocation(line: 296, column: 9, scope: !3455, inlinedAt: !3644)
!3801 = !DILocation(line: 113, column: 9, scope: !3367)
!3802 = !DILocation(line: 291, column: 9, scope: !3593, inlinedAt: !3645)
!3803 = !DILocation(line: 117, column: 9, scope: !3366)
!3804 = !DILocation(line: 269, column: 21, scope: !3476, inlinedAt: !3594)
!3805 = !DILocation(line: 612, column: 21, scope: !3478, inlinedAt: !3598)
!3806 = !DILocation(line: 269, column: 17, scope: !3476, inlinedAt: !3594)
!3807 = !DILocation(line: 270, column: 5, scope: !3489, inlinedAt: !3594)
!3808 = !DILocation(line: 118, column: 9, scope: !3366)
!3809 = !DILocation(line: 120, column: 1, scope: !3362)
!3810 = !DILocation(line: 120, column: 1, scope: !3360)
!3811 = !DILocation(line: 120, column: 2, scope: !3350)
!3812 = distinct !DISubprogram(name: "quicksort<(polars_ooc::spill_context::WeakSpillContext, f64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCNCNvMNtB1a_14memory_managerNtB31_13MemoryManager15find_spillables00E0EB1a_", scope: !4337, file: !4336, line: 16, type: !337, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3813 = distinct !DILexicalBlock(scope: !3812, file: !4336, line: 24, column: 9)
!3814 = distinct !{!3814, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCNCNvMNtB1x_14memory_managerNtB3o_13MemoryManager15find_spillables00E0EB1x_"}
!3815 = distinct !{!3815, !3814, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCNCNvMNtB1x_14memory_managerNtB3o_13MemoryManager15find_spillables00E0EB1x_: argument 0"}
!3816 = distinct !DISubprogram(name: "small_sort<(polars_ooc::spill_context::WeakSpillContext, f64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>>", linkageName: "_RINvXs_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENtB5_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBY_7sort_byNCNCNvMNtB13_14memory_managerNtB3z_13MemoryManager15find_spillables00E0EB13_", scope: !4339, file: !581, line: 56, type: !337, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3817 = distinct !DILocation(line: 27, column: 13, scope: !3813)
!3818 = distinct !{!3818, !3814, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCNCNvMNtB1x_14memory_managerNtB3o_13MemoryManager15find_spillables00E0EB1x_: argument 1"}
!3819 = distinct !DISubprogram(name: "small_sort_general_with_scratch<(polars_ooc::spill_context::WeakSpillContext, f64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCNCNvMNtB1x_14memory_managerNtB3o_13MemoryManager15find_spillables00E0EB1x_", scope: !582, file: !581, line: 220, type: !349, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3820 = distinct !DILexicalBlock(scope: !3819, file: !581, line: 225, column: 5)
!3821 = distinct !DILocation(line: 61, column: 9, scope: !3816, inlinedAt: !3817)
!3822 = distinct !DILexicalBlock(scope: !3820, file: !581, line: 234, column: 5)
!3823 = distinct !DILexicalBlock(scope: !3822, file: !581, line: 235, column: 5)
!3824 = distinct !DILexicalBlock(scope: !3823, file: !581, line: 239, column: 9)
!3825 = distinct !DISubprogram(name: "sort4_stable<(polars_ooc::spill_context::WeakSpillContext, f64), alloc::slice::{impl#0}::sort_by::{closure_env#0}<(polars_ooc::spill_context::WeakSpillContext, f64), polars_ooc::memory_manager::{impl#0}::find_spillables::{async_fn#0}::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCNCNvMNtB1e_14memory_managerNtB35_13MemoryManager15find_spillables00E0EB1e_", scope: !582, file: !581, line: 612, type: !349, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3826 = distinct !DILocation(line: 254, column: 13, scope: !3824, inlinedAt: !3821)
!3827 = distinct !DILocation(line: 626, column: 18, scope: !3825, inlinedAt: !3826)
!3828 = distinct !DILocation(line: 196, column: 34, scope: !117, inlinedAt: !3827)
!3829 = distinct !DILocation(line: 165, column: 42, scope: !116, inlinedAt: !3828)
!3830 = distinct !DILocation(line: 333, column: 25, scope: !115, inlinedAt: !3829)
!3831 = distinct !DILocation(line: 344, column: 23, scope: !114, inlinedAt: !3830)
!3832 = distinct !DILocation(line: 364, column: 22, scope: !113, inlinedAt: !3831)
!3833 = distinct !DILocation(line: 364, column: 33, scope: !113, inlinedAt: !3831)
!3834 = distinct !DILocation(line: 2155, column: 13, scope: !119, inlinedAt: !3833)
!3835 = distinct !DILexicalBlock(scope: !3825, file: !581, line: 626, column: 9)
!3836 = distinct !DILocation(line: 627, column: 18, scope: !3835, inlinedAt: !3826)
!3837 = distinct !DILocation(line: 196, column: 34, scope: !117, inlinedAt: !3836)
!3838 = distinct !DILocation(line: 165, column: 42, scope: !116, inlinedAt: !3837)
!3839 = distinct !DILocation(line: 333, column: 25, scope: !115, inlinedAt: !3838)
!3840 = distinct !DILocation(line: 344, column: 23, scope: !114, inlinedAt: !3839)
!3841 = distinct !DILocation(line: 364, column: 22, scope: !113, inlinedAt: !3840)
!3842 = distinct !DILocation(line: 364, column: 33, scope: !113, inlinedAt: !3840)
!3843 = distinct !DILocation(line: 2155, column: 13, scope: !119, inlinedAt: !3842)
!3844 = distinct !DILexicalBlock(scope: !3835, file: !581, line: 627, column: 9)
!3845 = distinct !DISubprogram(name: "add<(polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdE3addBJ_", scope: !531, file: !529, line: 829, type: !337, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3846 = distinct !DILocation(line: 628, column: 24, scope: !3844, inlinedAt: !3826)
!3847 = distinct !DILexicalBlock(scope: !3844, file: !581, line: 628, column: 9)
!3848 = distinct !DILocation(line: 629, column: 24, scope: !3847, inlinedAt: !3826)
!3849 = distinct !DILexicalBlock(scope: !3847, file: !581, line: 629, column: 9)
!3850 = distinct !DILocation(line: 630, column: 24, scope: !3849, inlinedAt: !3826)
!3851 = distinct !DILexicalBlock(scope: !3849, file: !581, line: 630, column: 9)
!3852 = distinct !DILocation(line: 631, column: 24, scope: !3851, inlinedAt: !3826)
!3853 = distinct !DILexicalBlock(scope: !3851, file: !581, line: 631, column: 9)
!3854 = distinct !DILocation(line: 641, column: 18, scope: !3853, inlinedAt: !3826)
!3855 = distinct !DILocation(line: 196, column: 34, scope: !117, inlinedAt: !3854)
!3856 = distinct !DILocation(line: 165, column: 42, scope: !116, inlinedAt: !3855)
!3857 = distinct !DILocation(line: 333, column: 25, scope: !115, inlinedAt: !3856)
!3858 = distinct !DILocation(line: 344, column: 23, scope: !114, inlinedAt: !3857)
!3859 = distinct !DILocation(line: 364, column: 22, scope: !113, inlinedAt: !3858)
!3860 = distinct !DILocation(line: 364, column: 33, scope: !113, inlinedAt: !3858)
!3861 = distinct !DILocation(line: 2155, column: 13, scope: !119, inlinedAt: !3860)
!3862 = distinct !DILexicalBlock(scope: !3853, file: !581, line: 641, column: 9)
!3863 = distinct !DILocation(line: 642, column: 18, scope: !3862, inlinedAt: !3826)
!3864 = distinct !DILocation(line: 196, column: 34, scope: !117, inlinedAt: !3863)
!3865 = distinct !DILocation(line: 165, column: 42, scope: !116, inlinedAt: !3864)
!3866 = distinct !DILocation(line: 333, column: 25, scope: !115, inlinedAt: !3865)
!3867 = distinct !DILocation(line: 344, column: 23, scope: !114, inlinedAt: !3866)
!3868 = distinct !DILocation(line: 364, column: 22, scope: !113, inlinedAt: !3867)
!3869 = distinct !DILocation(line: 364, column: 33, scope: !113, inlinedAt: !3867)
!3870 = distinct !DILocation(line: 2155, column: 13, scope: !119, inlinedAt: !3869)
!3871 = distinct !DISubprogram(name: "select_unpredictable<*const (polars_ooc::spill_context::WeakSpillContext, f64)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core4hint20select_unpredictablePTNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextdEEBU_", scope: !516, file: !515, line: 829, type: !337, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !336)
!3872 = distinct !DILexicalBlock(scope: !3871, file: !515, line: 835, column: 5)
!3873 = distinct !DILexicalBlock(scope: !3872, file: !515, line: 836, column: 5)
!3874 = distinct !DILexicalBlock(scope: !3873, file: !515, line: 851, column: 5)
!3875 = distinct !DILexicalBlock(scope: !3874, file: !515, line: 852, column: 5)
!3876 = distinct !DILexicalBlock(scope: !3875, file: !515, line: 862, column: 9)
!3877 = distinct !DILexicalBlock(scope: !3876, file: !515, line: 863, column: 9)
!3878 = distinct !DILexicalBlock(scope: !3877, file: !515, line: 869, column: 9)
!3879 = distinct !DILexicalBlock(scope: !3862, file: !581, line: 642, column: 9)
!3880 = distinct !DILocation(line: 643, column: 19, scope: !3879, inlinedAt: !3826)
!3881 = distinct !DILexicalBlock(scope: !3879, file: !581, line: 643, column: 9)
!3882 = distinct !DILocation(line: 644, column: 19, scope: !3881, inlinedAt: !3826)
!3883 = distinct !DILexicalBlock(scope: !3881, file: !581, line: 644, column: 9)
!3884 = distinct !DILocation(line: 645, column: 62, scope: !3883, inlinedAt: !3826)
!3885 = distinct !DILocation(line: 645, column: 28, scope: !3883, inlinedAt: !3826)
end_hunk_2
