Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.13?download=true
inline.NumInlined: 4418
inline.NumDeleted: 1702
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.fq = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0118268
  br i1 %i.fq, label %bb.w, label %bb.v

.lr.ph38.i63:                                     ; preds = %.lr.ph38.i63.preheader, %.lr.ph38.i63
  %.sroa.43.236.i64 = phi ptr [ %i.fv, %.lr.ph38.i63 ], [ %.sroa.43.1.lcssa.i54, %.lr.ph38.i63.preheader ]
  %.sroa.9.235.i65 = phi ptr [ %i.ga, %.lr.ph38.i63 ], [ %.sroa.9.1.lcssa.i53, %.lr.ph38.i63.preheader ] ; 2 uses
  %.sroa.27.234.i66 = phi i64 [ %i.fz, %.lr.ph38.i63 ], [ %.sroa.27.1.lcssa.i52, %.lr.ph38.i63.preheader ] ; 2 uses
  %.val.i67 = load ptr, ptr %.sroa.9.235.i65, align 8, !alias.scope !3730, !noalias !3733, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %.val.i.i.i45.i = load ptr, ptr %i.fo, align 8, !noalias !3735, !nonnull !6, !noundef !6
  %.val1.i.i.i46.i = load i64, ptr %i.fp, align 8, !noalias !3735, !noundef !6
  %i.fr = getelementptr i8, ptr %.val.i67, i64 8
  %.val2.i.i.i47.i = load ptr, ptr %i.fr, align 8, !noalias !3735, !nonnull !6, !noundef !6
  %i.fs = getelementptr i8, ptr %.val.i67, i64 16
  %.val3.i.i.i48.i = load i64, ptr %i.fs, align 8, !noalias !3735, !noundef !6
  %i.ft = call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i45.i, i64 noundef %.val1.i.i.i46.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i47.i, i64 noundef %.val3.i.i.i48.i), !noalias !3735 ; 2 uses
  %.not.i.i.i.i49.i = icmp eq i8 %i.ft, -2
  %i.fu = icmp sgt i8 %i.ft, -1
  %.sroa.0.0.i.i.i.not.i50.i = or i1 %.not.i.i.i.i49.i, %i.fu ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.sroa.43.236.i64, i64 -8 ; 3 uses
  %.sroa.01.0.i51.i69 = select i1 %.sroa.0.0.i.i.i.not.i50.i, ptr %2, ptr %i.fv
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i51.i69, i64 %.sroa.27.234.i66
  %i.fx = ptrtoint ptr %.val.i67 to i64
  store i64 %i.fx, ptr %i.fw, align 8, !alias.scope !3733, !noalias !3748
  %i.fy = zext i1 %.sroa.0.0.i.i.i.not.i50.i to i64
  %i.fz = add i64 %.sroa.27.234.i66, %i.fy        ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i65, i64 8 ; 3 uses
  %i.gb = icmp ult ptr %i.ga, %i.fm
  br i1 %i.gb, label %.lr.ph38.i63, label %._crit_edge39.i55

bb.v:                                             ; preds = %._crit_edge39.i55
  %i.gc = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i58, i64 -8
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i56
  %i.ge = load i64, ptr %.sroa.9.2.lcssa.i57, align 8, !alias.scope !3730, !noalias !3751
  store i64 %i.ge, ptr %i.gd, align 8, !alias.scope !3733, !noalias !3754
  %i.gf = add i64 %.sroa.27.2.lcssa.i56, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i57, i64 8
  br label %bb.t

bb.w:                                             ; preds = %._crit_edge39.i55
  %i.gh = shl i64 %.sroa.27.2.lcssa.i56, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph125, ptr nonnull align 8 %2, i64 %i.gh, i1 false), !alias.scope !3735
  %i.gi = sub i64 %.sroa.16.0118268, %.sroa.27.2.lcssa.i56 ; 7 uses
  %.not47.i59 = icmp eq i64 %.sroa.16.0118268, %.sroa.27.2.lcssa.i56
  %i.gj = getelementptr [8 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i56 ; 3 uses
  br i1 %.not47.i59, label %.outer.thread, label %.lr.ph45.i60

.lr.ph45.i60:                                     ; preds = %bb.w
  %min.iters.check = icmp ult i64 %i.gi, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i60
  %n.vec = and i64 %i.gi, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gk = xor i64 %index, -1
  %i.gl = getelementptr [8 x i8], ptr %i.dr, i64 %i.gk ; 2 uses
  %i.gm = getelementptr [8 x i8], ptr %i.gj, i64 %index ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gl, i64 -8
  %i.go = getelementptr i8, ptr %i.gl, i64 -24
  %wide.load = load <2 x i64>, ptr %i.gn, align 8, !alias.scope !3733, !noalias !3730
  %wide.load274 = load <2 x i64>, ptr %i.go, align 8, !alias.scope !3733, !noalias !3730
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse275 = shufflevector <2 x i64> %wide.load274, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gp = getelementptr i8, ptr %i.gm, i64 16
  store <2 x i64> %reverse, ptr %i.gm, align 8, !alias.scope !3730, !noalias !3733
  store <2 x i64> %reverse275, ptr %i.gp, align 8, !alias.scope !3730, !noalias !3733
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %middle.block, label %vector.body, !llvm.loop !3755

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gi, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCscdodAO9FK5_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i60, %middle.block
  %.sroa.07.043.i61.ph = phi i64 [ 0, %.lr.ph45.i60 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i61 = phi i64 [ %i.gr, %scalar.ph ], [ %.sroa.07.043.i61.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gr = add nuw i64 %.sroa.07.043.i61, 1        ; 2 uses
  %i.gs = xor i64 %.sroa.07.043.i61, -1
  %i.gt = getelementptr [8 x i8], ptr %i.dr, i64 %i.gs
  %i.gu = getelementptr [8 x i8], ptr %i.gj, i64 %.sroa.07.043.i61
  %i.gv = load i64, ptr %i.gt, align 8, !alias.scope !3733, !noalias !3730
  store i64 %i.gv, ptr %i.gu, align 8, !alias.scope !3730, !noalias !3733
  %exitcond.not.i62 = icmp eq i64 %i.gr, %i.gi
  br i1 %exitcond.not.i62, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCscdodAO9FK5_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit, label %scalar.ph, !llvm.loop !3756

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCscdodAO9FK5_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %scalar.ph, %middle.block
  %i.gw = icmp ugt i64 %.sroa.27.2.lcssa.i56, %.sroa.16.0118268
  br i1 %i.gw, label %bb.x, label %.outer, !prof !359

.outer.thread:                                    ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCscdodAO9FK5_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gy = icmp ult i64 %i.gi, 33
  br i1 %i.gy, label %.outer._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCscdodAO9FK5_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i56, i64 noundef %.sroa.16.0118268, i64 noundef %.sroa.16.0118268, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtB1a_8settingsNtB39_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1e_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph128 = phi ptr [ %i.qh, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph127 = phi i64 [ %i.ps, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph126 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph125 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph128 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph125, null
  %i.d = icmp eq i32 %.sroa.025.0.ph126, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph295

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph295

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa116 = phi ptr [ %i.pt, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph128, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit ], [ %i.qh, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit ], [ %i.ps, %.outer ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCNvXs1_NtB1x_8settingsNtB3w_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1B_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa116, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.o

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0119.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvXs1_NtB11_8settingsNtB2Z_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB15_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph128, i64 noundef %.sroa.16.0119.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.o

.lr.ph295:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0118294 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph126, %.lr.ph ]
  %.sroa.16.0119293 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0118294, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  %i.g = lshr i64 %.sroa.16.0119293, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0119293, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph295
  %i.k = call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvXs1_NtB19_8settingsNtB38_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1d_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph128, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.p

bb.d:                                             ; preds = %.lr.ph295
  %.val6.i = load ptr, ptr %.sroa.0.0.ph128, align 8, !alias.scope !3757, !noalias !3760, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !3757, !noalias !3760, !nonnull !6, !align !11, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3762)
  call void @llvm.experimental.noalias.scope.decl(metadata !3765)
  %i.l = load i64, ptr %.val6.i, align 8, !range !16, !alias.scope !3762, !noalias !3767, !noundef !6
  %i.m = icmp ne i64 %i.l, -1                     ; 5 uses
  %i.n = zext i1 %i.m to i8                       ; 2 uses
  %i.o = load i64, ptr %.val7.i, align 8, !range !16, !alias.scope !3765, !noalias !3768, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1                     ; 3 uses
  %not..i.i.i.i = xor i1 %i.p, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.q = add nsw i8 %.neg.i.i.i.i, %i.n
  %i.r = xor i1 %i.m, %i.p
  br i1 %i.r, label %bb.e, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8 ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 %not..i.i.i.i)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3762, !noalias !3767, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !3762, !noalias !3767, !noundef !6 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !3765, !noalias !3768, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !3765, !noalias !3768, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.z)
  %i.aa = call i32 @memcmp(ptr nonnull %i.t, ptr nonnull %i.x, i64 %spec.store.select.i.i.i.i), !noalias !3769 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %i.v, %i.z
  %spec.select.i.i.i.i = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 %i.p)
  %i.af = load i8, ptr %i.s, align 8, !range !3770, !alias.scope !3762, !noalias !3767, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !range !3770, !alias.scope !3765, !noalias !3768, !noundef !6
  %i.ai = call i8 @llvm.ucmp.i8.i8(i8 %i.af, i8 %i.ah)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ae, %bb.f ], [ %i.ai, %bb.g ], [ %i.q, %bb.d ]
  %i.aj = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 2 uses
  %.val5.i = load ptr, ptr %i.i, align 8, !alias.scope !3757, !noalias !3760, !nonnull !6, !align !11, !noundef !6 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3771)
  call void @llvm.experimental.noalias.scope.decl(metadata !3774)
  %i.ak = load i64, ptr %.val5.i, align 8, !range !16, !alias.scope !3774, !noalias !3776, !noundef !6
  %i.al = icmp eq i64 %i.ak, -1                   ; 5 uses
  %not..i.i.i8.i = xor i1 %i.al, true             ; 3 uses
  %.neg.i.i.i9.i = sext i1 %not..i.i.i8.i to i8   ; 2 uses
  %i.am = add nsw i8 %.neg.i.i.i9.i, %i.n
  %i.an = xor i1 %i.m, %i.al
  br i1 %i.an, label %bb.h, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit13.i

bb.h:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8 ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 %not..i.i.i8.i)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !3771, !noalias !3777, !nonnull !6, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3771, !noalias !3777, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !3774, !noalias !3776, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !3774, !noalias !3776, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i11.i = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.av)
  %i.aw = call i32 @memcmp(ptr nonnull %i.ap, ptr nonnull %i.at, i64 %spec.store.select.i.i.i11.i), !noalias !3778 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %i.ar, %i.av
  %spec.select.i.i.i12.i = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i12.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit13.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 %i.al)
  %i.bb = load i8, ptr %i.ao, align 8, !range !3770, !alias.scope !3771, !noalias !3777, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !range !3770, !alias.scope !3774, !noalias !3776, !noundef !6
  %i.be = call i8 @llvm.ucmp.i8.i8(i8 %i.bb, i8 %i.bd)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit13.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit13.i: ; preds = %bb.j, %bb.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i
  %.sroa.0.0.i.i.i10.i = phi i8 [ %i.ba, %bb.i ], [ %i.be, %bb.j ], [ %i.am, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i ]
  %i.bf = icmp eq i8 %.sroa.0.0.i.i.i10.i, -1
  %i.bg = xor i1 %i.aj, %i.bf
  br i1 %i.bg, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit13.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3779)
  call void @llvm.experimental.noalias.scope.decl(metadata !3782)
  %i.bh = icmp ne i64 %i.o, -1                    ; 3 uses
  %i.bi = zext i1 %i.bh to i8
  %i.bj = add nsw i8 %.neg.i.i.i9.i, %i.bi
  %i.bk = xor i1 %i.bh, %i.al
  br i1 %i.bk, label %bb.l, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit19.i

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 %not..i.i.i8.i)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !3779, !noalias !3784, !nonnull !6, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !3779, !noalias !3784, !noundef !6 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !3782, !noalias !3785, !nonnull !6, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !3782, !noalias !3785, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i17.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bs)
  %i.bt = call i32 @memcmp(ptr nonnull %i.bm, ptr nonnull %i.bq, i64 %spec.store.select.i.i.i17.i), !noalias !3786 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %i.bo, %i.bs
  %spec.select.i.i.i18.i = select i1 %i.bv, i64 %i.bw, i64 %i.bu
  %i.bx = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i18.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit19.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.assume(i1 %i.al)
  %i.by = load i8, ptr %i.bl, align 8, !range !3770, !alias.scope !3779, !noalias !3784, !noundef !6
  %i.bz = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.ca = load i8, ptr %i.bz, align 8, !range !3770, !alias.scope !3782, !noalias !3785, !noundef !6
  %i.cb = call i8 @llvm.ucmp.i8.i8(i8 %i.by, i8 %i.ca)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit19.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit19.i: ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i.i.i16.i = phi i8 [ %i.bx, %bb.m ], [ %i.cb, %bb.n ], [ %i.bj, %bb.k ]
  %i.cc = icmp eq i8 %.sroa.0.0.i.i.i16.i, -1
  %i.cd = xor i1 %i.aj, %i.cc
  %..i.i = select i1 %i.cd, ptr %i.i, ptr %i.h
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.p:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit19.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit13.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.0.ph128, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit13.i ], [ %..i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit19.i ]
  %i.ce = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cf = sub nuw i64 %i.ce, %i.c                 ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.cf, 3          ; 3 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0119293
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8            ; 10 uses
  store ptr %i.ci, ptr %i.a, align 8
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph125, align 8, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3787)
  call void @llvm.experimental.noalias.scope.decl(metadata !3790)
  %i.cj = load i64, ptr %.sroa.028.0.val, align 8, !range !16, !alias.scope !3787, !noalias !3790, !noundef !6
  %i.ck = icmp ne i64 %i.cj, -1                   ; 3 uses
  %i.cl = zext i1 %i.ck to i8
  %i.cm = load i64, ptr %i.ci, align 8, !range !16, !alias.scope !3790, !noalias !3787, !noundef !6
  %i.cn = icmp eq i64 %i.cm, -1                   ; 3 uses
  %not..i.i.i = xor i1 %i.cn, true                ; 2 uses
  %.neg.i.i.i = sext i1 %not..i.i.i to i8
  %i.co = add nsw i8 %.neg.i.i.i, %i.cl
  %i.cp = xor i1 %i.ck, %i.cn
  br i1 %i.cp, label %bb.r, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val, i64 8 ; 2 uses
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 %not..i.i.i)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !3787, !noalias !3790, !nonnull !6, !noundef !6
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !3787, !noalias !3790, !noundef !6 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !3790, !noalias !3787, !nonnull !6, !noundef !6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !3790, !noalias !3787, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cx)
  %i.cy = call i32 @memcmp(ptr nonnull %i.cr, ptr nonnull %i.cv, i64 %spec.store.select.i.i.i), !noalias !3792 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp eq i32 %i.cy, 0
  %i.db = sub i64 %i.ct, %i.cx
  %spec.select.i.i.i = select i1 %i.da, i64 %i.db, i64 %i.cz
  %i.dc = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.assume(i1 %i.cn)
  %i.dd = load i8, ptr %i.cq, align 8, !range !3770, !alias.scope !3787, !noalias !3790, !noundef !6
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.df = load i8, ptr %i.de, align 8, !range !3770, !alias.scope !3790, !noalias !3787, !noundef !6
  %i.dg = call i8 @llvm.ucmp.i8.i8(i8 %i.dd, i8 %i.df)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit: ; preds = %bb.q, %bb.s, %bb.t
  %.sroa.0.0.i.i.i = phi i8 [ %i.dc, %bb.s ], [ %i.dg, %bb.t ], [ %i.co, %bb.q ]
  %i.dh = icmp eq i8 %.sroa.0.0.i.i.i, -1
  br i1 %i.dh, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.p, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3793)
  call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  %.not86 = icmp samesign ult i64 %3, %.sroa.16.0119293
  br i1 %.not86, label %bb.w, label %bb.v, !prof !1861

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0119293 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 10 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 5 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.ao, %bb.v
  %.sroa.27.0.i = phi i64 [ 0, %bb.v ], [ %.sroa.27.2.lcssa.i, %bb.ao ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph128, %bb.v ], [ %i.ja, %bb.ao ] ; 3 uses
  %.sroa.43.0.i = phi ptr [ %i.di, %bb.v ], [ %i.ix, %bb.ao ] ; 2 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.v ], [ %.sroa.16.0119293, %bb.ao ] ; 3 uses
  %i.dl = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %i.dl ; 2 uses
  %i.dn = icmp ult ptr %.sroa.9.0.i, %i.dm
  br i1 %i.dn, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.x
  %i.do = load i64, ptr %i.ci, align 8, !range !16, !alias.scope !3798, !noalias !3801, !noundef !6
  %i.dp = icmp eq i64 %i.do, -1                   ; 9 uses
  %not..i.i.i.i38 = xor i1 %i.dp, true            ; 5 uses
  %.neg.i.i.i.i39 = sext i1 %not..i.i.i.i38 to i8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i, %.lr.ph.i
  %.sroa.43.131.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.hl, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i ] ; 4 uses
  %.sroa.9.130.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.hp, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i ] ; 5 uses
  %.sroa.27.129.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.ho, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i ] ; 2 uses
  %.val22.i = load ptr, ptr %.sroa.9.130.i, align 8, !alias.scope !3793, !noalias !3796, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3803)
  call void @llvm.experimental.noalias.scope.decl(metadata !3798)
  %i.dq = load i64, ptr %.val22.i, align 8, !range !16, !alias.scope !3803, !noalias !3804, !noundef !6
  %i.dr = icmp ne i64 %i.dq, -1                   ; 3 uses
  %i.ds = zext i1 %i.dr to i8
  %i.dt = add nsw i8 %.neg.i.i.i.i39, %i.ds
  %i.du = xor i1 %i.dr, %i.dp
  %i.dv = ptrtoint ptr %.val22.i to i64
  br i1 %i.du, label %bb.z, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i40

bb.z:                                             ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8 ; 2 uses
  br i1 %i.dr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !3803, !noalias !3804, !nonnull !6, !noundef !6
  %i.dy = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !3803, !noalias !3804, !noundef !6 ; 2 uses
  %i.ea = load ptr, ptr %i.dj, align 8, !alias.scope !3798, !noalias !3801, !nonnull !6, !noundef !6
  %i.eb = load i64, ptr %i.dk, align 8, !alias.scope !3798, !noalias !3801, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i42 = call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.eb)
  %i.ec = call i32 @memcmp(ptr nonnull %i.dx, ptr nonnull %i.ea, i64 %spec.store.select.i.i.i.i42), !noalias !3805 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %i.ef = sub i64 %i.dz, %i.eb
  %spec.select.i.i.i.i43 = select i1 %i.ee, i64 %i.ef, i64 %i.ed
  %i.eg = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i43, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i40

bb.ab:                                            ; preds = %bb.z
  call void @llvm.assume(i1 %i.dp)
  %i.eh = load i8, ptr %i.dw, align 8, !range !3770, !alias.scope !3803, !noalias !3804, !noundef !6
  %i.ei = load i8, ptr %i.dj, align 8, !range !3770, !alias.scope !3798, !noalias !3801, !noundef !6
  %i.ej = call i8 @llvm.ucmp.i8.i8(i8 %i.eh, i8 %i.ei)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i40

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i40: ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.0.0.i.i.i.i41 = phi i8 [ %i.eg, %bb.aa ], [ %i.ej, %bb.ab ], [ %i.dt, %bb.y ]
  %i.ek = icmp eq i8 %.sroa.0.0.i.i.i.i41, -1     ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.ek, ptr %2, ptr %i.el
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.129.i
  store i64 %i.dv, ptr %i.em, align 8, !alias.scope !3796, !noalias !3806
  %i.en = zext i1 %i.ek to i64
  %i.eo = add i64 %.sroa.27.129.i, %i.en          ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 8
  %.val20.i = load ptr, ptr %i.ep, align 8, !alias.scope !3793, !noalias !3796, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3809)
  call void @llvm.experimental.noalias.scope.decl(metadata !3812)
  %i.eq = load i64, ptr %.val20.i, align 8, !range !16, !alias.scope !3809, !noalias !3814, !noundef !6
  %i.er = icmp ne i64 %i.eq, -1                   ; 3 uses
  %i.es = zext i1 %i.er to i8
  %i.et = add nsw i8 %i.es, %.neg.i.i.i.i39
  %i.eu = xor i1 %i.dp, %i.er
  %i.ev = ptrtoint ptr %.val20.i to i64
  br i1 %i.eu, label %bb.ac, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit29.i

bb.ac:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i40
  %i.ew = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8 ; 2 uses
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !3809, !noalias !3814, !nonnull !6, !noundef !6
  %i.ey = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !3809, !noalias !3814, !noundef !6 ; 2 uses
  %i.fa = load ptr, ptr %i.dj, align 8, !alias.scope !3812, !noalias !3815, !nonnull !6, !noundef !6
  %i.fb = load i64, ptr %i.dk, align 8, !alias.scope !3812, !noalias !3815, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i27.i = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.fb)
  %i.fc = call i32 @memcmp(ptr nonnull %i.ex, ptr nonnull %i.fa, i64 %spec.store.select.i.i.i27.i), !noalias !3816 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp eq i32 %i.fc, 0
  %i.ff = sub i64 %i.ez, %i.fb
  %spec.select.i.i.i28.i = select i1 %i.fe, i64 %i.ff, i64 %i.fd
  %i.fg = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i28.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit29.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 %i.dp)
  %i.fh = load i8, ptr %i.ew, align 8, !range !3770, !alias.scope !3809, !noalias !3814, !noundef !6
  %i.fi = load i8, ptr %i.dj, align 8, !range !3770, !alias.scope !3812, !noalias !3815, !noundef !6
  %i.fj = call i8 @llvm.ucmp.i8.i8(i8 %i.fh, i8 %i.fi)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit29.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit29.i: ; preds = %bb.ae, %bb.ad, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i40
  %.sroa.0.0.i.i.i26.i = phi i8 [ %i.fg, %bb.ad ], [ %i.fj, %bb.ae ], [ %i.et, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i40 ]
  %i.fk = icmp eq i8 %.sroa.0.0.i.i.i26.i, -1     ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -16
  %.sroa.01.0.i30.i = select i1 %i.fk, ptr %2, ptr %i.fl
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i30.i, i64 %i.eo
  store i64 %i.ev, ptr %i.fm, align 8, !alias.scope !3796, !noalias !3817
  %i.fn = zext i1 %i.fk to i64
  %i.fo = add i64 %i.eo, %i.fn                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 16
  %.val18.i = load ptr, ptr %i.fp, align 8, !alias.scope !3793, !noalias !3796, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3820)
  call void @llvm.experimental.noalias.scope.decl(metadata !3823)
  %i.fq = load i64, ptr %.val18.i, align 8, !range !16, !alias.scope !3820, !noalias !3825, !noundef !6
  %i.fr = icmp ne i64 %i.fq, -1                   ; 3 uses
  %i.fs = zext i1 %i.fr to i8
  %i.ft = add nsw i8 %i.fs, %.neg.i.i.i.i39
  %i.fu = xor i1 %i.dp, %i.fr
  %i.fv = ptrtoint ptr %.val18.i to i64
  br i1 %i.fu, label %bb.af, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit36.i

bb.af:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit29.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8 ; 2 uses
  br i1 %i.fr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !3820, !noalias !3825, !nonnull !6, !noundef !6
  %i.fy = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !3820, !noalias !3825, !noundef !6 ; 2 uses
  %i.ga = load ptr, ptr %i.dj, align 8, !alias.scope !3823, !noalias !3826, !nonnull !6, !noundef !6
  %i.gb = load i64, ptr %i.dk, align 8, !alias.scope !3823, !noalias !3826, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i34.i = call i64 @llvm.umin.i64(i64 %i.fz, i64 %i.gb)
  %i.gc = call i32 @memcmp(ptr nonnull %i.fx, ptr nonnull %i.ga, i64 %spec.store.select.i.i.i34.i), !noalias !3827 ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp eq i32 %i.gc, 0
  %i.gf = sub i64 %i.fz, %i.gb
  %spec.select.i.i.i35.i = select i1 %i.ge, i64 %i.gf, i64 %i.gd
  %i.gg = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i35.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit36.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.assume(i1 %i.dp)
  %i.gh = load i8, ptr %i.fw, align 8, !range !3770, !alias.scope !3820, !noalias !3825, !noundef !6
  %i.gi = load i8, ptr %i.dj, align 8, !range !3770, !alias.scope !3823, !noalias !3826, !noundef !6
  %i.gj = call i8 @llvm.ucmp.i8.i8(i8 %i.gh, i8 %i.gi)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit36.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit36.i: ; preds = %bb.ah, %bb.ag, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit29.i
  %.sroa.0.0.i.i.i33.i = phi i8 [ %i.gg, %bb.ag ], [ %i.gj, %bb.ah ], [ %i.ft, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit29.i ]
  %i.gk = icmp eq i8 %.sroa.0.0.i.i.i33.i, -1     ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -24
  %.sroa.01.0.i37.i = select i1 %i.gk, ptr %2, ptr %i.gl
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i, i64 %i.fo
  store i64 %i.fv, ptr %i.gm, align 8, !alias.scope !3796, !noalias !3828
  %i.gn = zext i1 %i.gk to i64
  %i.go = add i64 %i.fo, %i.gn                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 24
  %.val16.i = load ptr, ptr %i.gp, align 8, !alias.scope !3793, !noalias !3796, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3831)
  call void @llvm.experimental.noalias.scope.decl(metadata !3834)
  %i.gq = load i64, ptr %.val16.i, align 8, !range !16, !alias.scope !3831, !noalias !3836, !noundef !6
  %i.gr = icmp ne i64 %i.gq, -1                   ; 3 uses
  %i.gs = zext i1 %i.gr to i8
  %i.gt = add nsw i8 %i.gs, %.neg.i.i.i.i39
  %i.gu = xor i1 %i.dp, %i.gr
  %i.gv = ptrtoint ptr %.val16.i to i64
  br i1 %i.gu, label %bb.ai, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i

bb.ai:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit36.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8 ; 2 uses
  br i1 %i.gr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !3831, !noalias !3836, !nonnull !6, !noundef !6
  %i.gy = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !3831, !noalias !3836, !noundef !6 ; 2 uses
  %i.ha = load ptr, ptr %i.dj, align 8, !alias.scope !3834, !noalias !3837, !nonnull !6, !noundef !6
  %i.hb = load i64, ptr %i.dk, align 8, !alias.scope !3834, !noalias !3837, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i41.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 %i.hb)
  %i.hc = call i32 @memcmp(ptr nonnull %i.gx, ptr nonnull %i.ha, i64 %spec.store.select.i.i.i41.i), !noalias !3838 ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp eq i32 %i.hc, 0
  %i.hf = sub i64 %i.gz, %i.hb
  %spec.select.i.i.i42.i = select i1 %i.he, i64 %i.hf, i64 %i.hd
  %i.hg = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i42.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 %i.dp)
  %i.hh = load i8, ptr %i.gw, align 8, !range !3770, !alias.scope !3831, !noalias !3836, !noundef !6
  %i.hi = load i8, ptr %i.dj, align 8, !range !3770, !alias.scope !3834, !noalias !3837, !noundef !6
  %i.hj = call i8 @llvm.ucmp.i8.i8(i8 %i.hh, i8 %i.hi)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i: ; preds = %bb.ak, %bb.aj, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit36.i
  %.sroa.0.0.i.i.i40.i = phi i8 [ %i.hg, %bb.aj ], [ %i.hj, %bb.ak ], [ %i.gt, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit36.i ]
  %i.hk = icmp eq i8 %.sroa.0.0.i.i.i40.i, -1     ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -32 ; 3 uses
  %.sroa.01.0.i44.i = select i1 %i.hk, ptr %2, ptr %i.hl
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i44.i, i64 %i.go
  store i64 %i.gv, ptr %i.hm, align 8, !alias.scope !3796, !noalias !3839
  %i.hn = zext i1 %i.hk to i64
  %i.ho = add i64 %i.go, %i.hn                    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 32 ; 3 uses
  %i.hq = icmp ult ptr %i.hp, %i.dm
  br i1 %i.hq, label %bb.y, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i, %bb.x
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.x ], [ %i.ho, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.x ], [ %i.hp, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i ] ; 3 uses
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.x ], [ %i.hl, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit43.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i37 ; 2 uses
  %i.hs = icmp ult ptr %.sroa.9.1.lcssa.i, %i.hr
  br i1 %i.hs, label %.lr.ph38.i.preheader, label %._crit_edge39.i

.lr.ph38.i.preheader:                             ; preds = %._crit_edge.i
  %i.ht = load i64, ptr %i.ci, align 8, !range !16, !alias.scope !3842, !noalias !3845, !noundef !6
  %i.hu = icmp eq i64 %i.ht, -1                   ; 3 uses
  %not..i.i.i45.i = xor i1 %i.hu, true            ; 2 uses
  %.neg.i.i.i46.i = sext i1 %not..i.i.i45.i to i8
  br label %.lr.ph38.i

._crit_edge39.i:                                  ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i, %._crit_edge.i
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.iu, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.iv, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i ] ; 2 uses
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.ir, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i ]
  %i.hv = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0119293
  br i1 %i.hv, label %bb.ap, label %bb.ao

.lr.ph38.i:                                       ; preds = %.lr.ph38.i.preheader, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i
  %.sroa.43.236.i = phi ptr [ %i.ir, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i ], [ %.sroa.43.1.lcssa.i, %.lr.ph38.i.preheader ]
  %.sroa.9.235.i = phi ptr [ %i.iv, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i ], [ %.sroa.9.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.sroa.27.234.i = phi i64 [ %i.iu, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i ], [ %.sroa.27.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.val.i = load ptr, ptr %.sroa.9.235.i, align 8, !alias.scope !3793, !noalias !3796, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3847)
  call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  %i.hw = load i64, ptr %.val.i, align 8, !range !16, !alias.scope !3847, !noalias !3848, !noundef !6
  %i.hx = icmp ne i64 %i.hw, -1                   ; 3 uses
  %i.hy = zext i1 %i.hx to i8
  %i.hz = add nsw i8 %.neg.i.i.i46.i, %i.hy
  %i.ia = xor i1 %i.hx, %i.hu
  %i.ib = ptrtoint ptr %.val.i to i64
  br i1 %i.ia, label %bb.al, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i

bb.al:                                            ; preds = %.lr.ph38.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.hx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 %not..i.i.i45.i)
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !3847, !noalias !3848, !nonnull !6, !noundef !6
  %i.ie = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !3847, !noalias !3848, !noundef !6 ; 2 uses
  %i.ig = load ptr, ptr %i.dj, align 8, !alias.scope !3842, !noalias !3845, !nonnull !6, !noundef !6
  %i.ih = load i64, ptr %i.dk, align 8, !alias.scope !3842, !noalias !3845, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i48.i = call i64 @llvm.umin.i64(i64 %i.if, i64 %i.ih)
  %i.ii = call i32 @memcmp(ptr nonnull %i.id, ptr nonnull %i.ig, i64 %spec.store.select.i.i.i48.i), !noalias !3849 ; 2 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp eq i32 %i.ii, 0
  %i.il = sub i64 %i.if, %i.ih
  %spec.select.i.i.i49.i = select i1 %i.ik, i64 %i.il, i64 %i.ij
  %i.im = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i49.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 %i.hu)
  %i.in = load i8, ptr %i.ic, align 8, !range !3770, !alias.scope !3847, !noalias !3848, !noundef !6
  %i.io = load i8, ptr %i.dj, align 8, !range !3770, !alias.scope !3842, !noalias !3845, !noundef !6
  %i.ip = call i8 @llvm.ucmp.i8.i8(i8 %i.in, i8 %i.io)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit50.i: ; preds = %bb.an, %bb.am, %.lr.ph38.i
  %.sroa.0.0.i.i.i47.i = phi i8 [ %i.im, %bb.am ], [ %i.ip, %bb.an ], [ %i.hz, %.lr.ph38.i ]
  %i.iq = icmp eq i8 %.sroa.0.0.i.i.i47.i, -1     ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.sroa.43.236.i, i64 -8 ; 3 uses
  %.sroa.01.0.i51.i = select i1 %i.iq, ptr %2, ptr %i.ir
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i51.i, i64 %.sroa.27.234.i
  store i64 %i.ib, ptr %i.is, align 8, !alias.scope !3796, !noalias !3850
  %i.it = zext i1 %i.iq to i64
  %i.iu = add i64 %.sroa.27.234.i, %i.it          ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i, i64 8 ; 3 uses
  %i.iw = icmp ult ptr %i.iv, %i.hr
  br i1 %i.iw, label %.lr.ph38.i, label %._crit_edge39.i

bb.ao:                                            ; preds = %._crit_edge39.i
  %i.ix = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.sroa.27.2.lcssa.i
  %i.iz = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !3793, !noalias !3853
  store i64 %i.iz, ptr %i.iy, align 8, !alias.scope !3796, !noalias !3856
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.x

bb.ap:                                            ; preds = %._crit_edge39.i
  %i.jb = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph128, ptr nonnull align 8 %2, i64 %i.jb, i1 false), !alias.scope !3857
  %i.jc = sub i64 %.sroa.16.0119293, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0119293, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ap
  %i.jd = getelementptr [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check302 = icmp ult i64 %i.jc, 4
  br i1 %min.iters.check302, label %scalar.ph301.preheader, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph45.i
  %n.vec304 = and i64 %i.jc, -4                   ; 3 uses
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 3 uses
  %i.je = xor i64 %index306, -1
  %i.jf = getelementptr [8 x i8], ptr %i.di, i64 %i.je ; 2 uses
  %i.jg = getelementptr [8 x i8], ptr %i.jd, i64 %index306 ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jf, i64 -8
  %i.ji = getelementptr i8, ptr %i.jf, i64 -24
  %wide.load307 = load <2 x i64>, ptr %i.jh, align 8, !alias.scope !3796, !noalias !3793
  %wide.load308 = load <2 x i64>, ptr %i.ji, align 8, !alias.scope !3796, !noalias !3793
  %reverse309 = shufflevector <2 x i64> %wide.load307, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse310 = shufflevector <2 x i64> %wide.load308, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jj = getelementptr i8, ptr %i.jg, i64 16
  store <2 x i64> %reverse309, ptr %i.jg, align 8, !alias.scope !3793, !noalias !3796
  store <2 x i64> %reverse310, ptr %i.jj, align 8, !alias.scope !3793, !noalias !3796
  %index.next311 = add nuw i64 %index306, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.jk, label %middle.block312, label %vector.body305, !llvm.loop !3858

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.jc, %n.vec304
  br i1 %cmp.n313, label %.loopexit, label %scalar.ph301.preheader

scalar.ph301.preheader:                           ; preds = %.lr.ph45.i, %middle.block312
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec304, %middle.block312 ]
  br label %scalar.ph301

scalar.ph301:                                     ; preds = %scalar.ph301.preheader, %scalar.ph301
  %.sroa.07.043.i = phi i64 [ %i.jl, %scalar.ph301 ], [ %.sroa.07.043.i.ph, %scalar.ph301.preheader ] ; 3 uses
  %i.jl = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.jm = xor i64 %.sroa.07.043.i, -1
  %i.jn = getelementptr [8 x i8], ptr %i.di, i64 %i.jm
  %i.jo = getelementptr [8 x i8], ptr %i.jd, i64 %.sroa.07.043.i
  %i.jp = load i64, ptr %i.jn, align 8, !alias.scope !3796, !noalias !3793
  store i64 %i.jp, ptr %i.jo, align 8, !alias.scope !3793, !noalias !3796
  %exitcond.not.i = icmp eq i64 %i.jl, %i.jc
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph301, !llvm.loop !3859

.loopexit:                                        ; preds = %scalar.ph301, %middle.block312, %bb.ap
  %i.jq = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.jq, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0119293
  br i1 %.not.i44, label %bb.ar, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit, !prof !359

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @63, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !noalias !3860
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit: ; preds = %bb.aq
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph128) ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtB1a_8settingsNtB39_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.jr, i64 noundef %i.jc, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.js = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.js, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit, %.loopexit
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %i.cf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3864)
  call void @llvm.experimental.noalias.scope.decl(metadata !3867)
  %.not87 = icmp samesign ult i64 %3, %.sroa.16.0119293
  br i1 %.not87, label %bb.at, label %bb.as, !prof !1861

bb.as:                                            ; preds = %.thread
  %i.ju = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0119293 ; 3 uses
  br label %bb.au

bb.at:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.bk, %bb.as
  %.sroa.27.0.i47 = phi i64 [ 0, %bb.as ], [ %i.pp, %bb.bk ] ; 2 uses
  %.sroa.9.0.i48 = phi ptr [ %.sroa.0.0.ph128, %bb.as ], [ %i.pq, %bb.bk ] ; 3 uses
  %.sroa.43.0.i49 = phi ptr [ %i.ju, %bb.as ], [ %i.pm, %bb.bk ] ; 2 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.as ], [ %.sroa.16.0119293, %bb.bk ] ; 3 uses
  %i.jv = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i50, i64 3)
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %i.jv ; 2 uses
  %i.jx = icmp ult ptr %.sroa.9.0.i48, %i.jw
  br i1 %i.jx, label %.lr.ph.i70, label %._crit_edge.i51

.lr.ph.i70:                                       ; preds = %bb.au
  %.val23.i71 = load ptr, ptr %i.jt, align 8, !alias.scope !3864, !noalias !3867, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.val23.i71, i64 8 ; 8 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.val23.i71, i64 16 ; 4 uses
  %i.ka = load i64, ptr %.val23.i71, align 8, !range !16, !alias.scope !3869, !noalias !3872, !noundef !6
  %i.kb = icmp ne i64 %i.ka, -1                   ; 9 uses
  %i.kc = zext i1 %i.kb to i8                     ; 4 uses
  br label %bb.av

bb.av:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i, %.lr.ph.i70
  %.sroa.43.131.i72 = phi ptr [ %.sroa.43.0.i49, %.lr.ph.i70 ], [ %i.nq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i ] ; 4 uses
  %.sroa.9.130.i73 = phi ptr [ %.sroa.9.0.i48, %.lr.ph.i70 ], [ %i.nu, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i ] ; 5 uses
  %.sroa.27.129.i74 = phi i64 [ %.sroa.27.0.i47, %.lr.ph.i70 ], [ %i.nt, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i ] ; 2 uses
  %.val22.i75 = load ptr, ptr %.sroa.9.130.i73, align 8, !alias.scope !3864, !noalias !3867, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3869)
  call void @llvm.experimental.noalias.scope.decl(metadata !3874)
  %i.kd = load i64, ptr %.val22.i75, align 8, !range !16, !alias.scope !3874, !noalias !3875, !noundef !6
  %i.ke = icmp eq i64 %i.kd, -1                   ; 3 uses
  %not..i.i.i.i.i = xor i1 %i.ke, true            ; 2 uses
  %.neg.i.i.i.i.i = sext i1 %not..i.i.i.i.i to i8
  %i.kf = add nsw i8 %.neg.i.i.i.i.i, %i.kc
  %i.kg = xor i1 %i.kb, %i.ke
  %i.kh = ptrtoint ptr %.val22.i75 to i64
  br i1 %i.kg, label %bb.aw, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit.i

bb.aw:                                            ; preds = %bb.av
  br i1 %i.kb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 %not..i.i.i.i.i)
  %i.ki = load ptr, ptr %i.jy, align 8, !alias.scope !3869, !noalias !3872, !nonnull !6, !noundef !6
  %i.kj = load i64, ptr %i.jz, align 8, !alias.scope !3869, !noalias !3872, !noundef !6 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.val22.i75, i64 8
  %i.kk = load ptr, ptr %7, align 8, !alias.scope !3874, !noalias !3875, !nonnull !6, !noundef !6
  %i.kl = getelementptr inbounds nuw i8, ptr %.val22.i75, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !3874, !noalias !3875, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.kj, i64 %i.km)
  %i.kn = call i32 @memcmp(ptr nonnull %i.ki, ptr nonnull %i.kk, i64 %spec.store.select.i.i.i.i.i), !noalias !3876 ; 2 uses
  %i.ko = sext i32 %i.kn to i64
  %i.kp = icmp eq i32 %i.kn, 0
  %i.kq = sub i64 %i.kj, %i.km
  %spec.select.i.i.i.i.i = select i1 %i.kp, i64 %i.kq, i64 %i.ko
  %i.kr = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit.i

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 %i.ke)
  %i.ks = load i8, ptr %i.jy, align 8, !range !3770, !alias.scope !3869, !noalias !3872, !noundef !6
  %8 = getelementptr inbounds nuw i8, ptr %.val22.i75, i64 8
  %i.kt = load i8, ptr %8, align 8, !range !3770, !alias.scope !3874, !noalias !3875, !noundef !6
  %i.ku = call i8 @llvm.ucmp.i8.i8(i8 %i.ks, i8 %i.kt)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit.i: ; preds = %bb.ay, %bb.ax, %bb.av
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.kr, %bb.ax ], [ %i.ku, %bb.ay ], [ %i.kf, %bb.av ]
  %i.kv = icmp ne i8 %.sroa.0.0.i.i.i.i.i, -1     ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -8
  %.sroa.01.0.i.i76 = select i1 %i.kv, ptr %2, ptr %i.kw
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i76, i64 %.sroa.27.129.i74
  store i64 %i.kh, ptr %i.kx, align 8, !alias.scope !3867, !noalias !3877
  %i.ky = zext i1 %i.kv to i64
  %i.kz = add i64 %.sroa.27.129.i74, %i.ky        ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 8
  %.val20.i77 = load ptr, ptr %i.la, align 8, !alias.scope !3864, !noalias !3867, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3880)
  call void @llvm.experimental.noalias.scope.decl(metadata !3883)
  %i.lb = load i64, ptr %.val20.i77, align 8, !range !16, !alias.scope !3883, !noalias !3885, !noundef !6
  %i.lc = icmp eq i64 %i.lb, -1                   ; 3 uses
  %not..i.i.i.i24.i = xor i1 %i.lc, true          ; 2 uses
  %.neg.i.i.i.i25.i = sext i1 %not..i.i.i.i24.i to i8
  %i.ld = add nsw i8 %.neg.i.i.i.i25.i, %i.kc
  %i.le = xor i1 %i.kb, %i.lc
  %i.lf = ptrtoint ptr %.val20.i77 to i64
  br i1 %i.le, label %bb.az, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit29.i

bb.az:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit.i
  br i1 %i.kb, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 %not..i.i.i.i24.i)
  %i.lg = load ptr, ptr %i.jy, align 8, !alias.scope !3880, !noalias !3886, !nonnull !6, !noundef !6
  %i.lh = load i64, ptr %i.jz, align 8, !alias.scope !3880, !noalias !3886, !noundef !6 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.val20.i77, i64 8
  %i.li = load ptr, ptr %9, align 8, !alias.scope !3883, !noalias !3885, !nonnull !6, !noundef !6
  %i.lj = getelementptr inbounds nuw i8, ptr %.val20.i77, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !3883, !noalias !3885, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i27.i = call i64 @llvm.umin.i64(i64 %i.lh, i64 %i.lk)
  %i.ll = call i32 @memcmp(ptr nonnull %i.lg, ptr nonnull %i.li, i64 %spec.store.select.i.i.i.i27.i), !noalias !3887 ; 2 uses
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp eq i32 %i.ll, 0
  %i.lo = sub i64 %i.lh, %i.lk
  %spec.select.i.i.i.i28.i = select i1 %i.ln, i64 %i.lo, i64 %i.lm
  %i.lp = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i28.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit29.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.assume(i1 %i.lc)
  %i.lq = load i8, ptr %i.jy, align 8, !range !3770, !alias.scope !3880, !noalias !3886, !noundef !6
  %10 = getelementptr inbounds nuw i8, ptr %.val20.i77, i64 8
  %i.lr = load i8, ptr %10, align 8, !range !3770, !alias.scope !3883, !noalias !3885, !noundef !6
  %i.ls = call i8 @llvm.ucmp.i8.i8(i8 %i.lq, i8 %i.lr)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit29.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit29.i: ; preds = %bb.bb, %bb.ba, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit.i
  %.sroa.0.0.i.i.i.i26.i = phi i8 [ %i.lp, %bb.ba ], [ %i.ls, %bb.bb ], [ %i.ld, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit.i ]
  %i.lt = icmp ne i8 %.sroa.0.0.i.i.i.i26.i, -1   ; 2 uses
  %i.lu = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -16
  %.sroa.01.0.i30.i78 = select i1 %i.lt, ptr %2, ptr %i.lu
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i30.i78, i64 %i.kz
  store i64 %i.lf, ptr %i.lv, align 8, !alias.scope !3867, !noalias !3888
  %i.lw = zext i1 %i.lt to i64
  %i.lx = add i64 %i.kz, %i.lw                    ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 16
  %.val18.i79 = load ptr, ptr %i.ly, align 8, !alias.scope !3864, !noalias !3867, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  %i.lz = load i64, ptr %.val18.i79, align 8, !range !16, !alias.scope !3894, !noalias !3896, !noundef !6
  %i.ma = icmp eq i64 %i.lz, -1                   ; 3 uses
  %not..i.i.i.i31.i = xor i1 %i.ma, true          ; 2 uses
  %.neg.i.i.i.i32.i = sext i1 %not..i.i.i.i31.i to i8
  %i.mb = add nsw i8 %.neg.i.i.i.i32.i, %i.kc
  %i.mc = xor i1 %i.kb, %i.ma
  %i.md = ptrtoint ptr %.val18.i79 to i64
  br i1 %i.mc, label %bb.bc, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit36.i

bb.bc:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit29.i
  br i1 %i.kb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 %not..i.i.i.i31.i)
  %i.me = load ptr, ptr %i.jy, align 8, !alias.scope !3891, !noalias !3897, !nonnull !6, !noundef !6
  %i.mf = load i64, ptr %i.jz, align 8, !alias.scope !3891, !noalias !3897, !noundef !6 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.val18.i79, i64 8
  %i.mg = load ptr, ptr %11, align 8, !alias.scope !3894, !noalias !3896, !nonnull !6, !noundef !6
  %i.mh = getelementptr inbounds nuw i8, ptr %.val18.i79, i64 16
  %i.mi = load i64, ptr %i.mh, align 8, !alias.scope !3894, !noalias !3896, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i34.i = call i64 @llvm.umin.i64(i64 %i.mf, i64 %i.mi)
  %i.mj = call i32 @memcmp(ptr nonnull %i.me, ptr nonnull %i.mg, i64 %spec.store.select.i.i.i.i34.i), !noalias !3898 ; 2 uses
  %i.mk = sext i32 %i.mj to i64
  %i.ml = icmp eq i32 %i.mj, 0
  %i.mm = sub i64 %i.mf, %i.mi
  %spec.select.i.i.i.i35.i = select i1 %i.ml, i64 %i.mm, i64 %i.mk
  %i.mn = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i35.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit36.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 %i.ma)
  %i.mo = load i8, ptr %i.jy, align 8, !range !3770, !alias.scope !3891, !noalias !3897, !noundef !6
  %12 = getelementptr inbounds nuw i8, ptr %.val18.i79, i64 8
  %i.mp = load i8, ptr %12, align 8, !range !3770, !alias.scope !3894, !noalias !3896, !noundef !6
  %i.mq = call i8 @llvm.ucmp.i8.i8(i8 %i.mo, i8 %i.mp)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit36.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit36.i: ; preds = %bb.be, %bb.bd, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit29.i
  %.sroa.0.0.i.i.i.i33.i = phi i8 [ %i.mn, %bb.bd ], [ %i.mq, %bb.be ], [ %i.mb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit29.i ]
  %i.mr = icmp ne i8 %.sroa.0.0.i.i.i.i33.i, -1   ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -24
  %.sroa.01.0.i37.i80 = select i1 %i.mr, ptr %2, ptr %i.ms
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i80, i64 %i.lx
  store i64 %i.md, ptr %i.mt, align 8, !alias.scope !3867, !noalias !3899
  %i.mu = zext i1 %i.mr to i64
  %i.mv = add i64 %i.lx, %i.mu                    ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 24
  %.val16.i81 = load ptr, ptr %i.mw, align 8, !alias.scope !3864, !noalias !3867, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3902)
  call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  %i.mx = load i64, ptr %.val16.i81, align 8, !range !16, !alias.scope !3905, !noalias !3907, !noundef !6
  %i.my = icmp eq i64 %i.mx, -1                   ; 3 uses
  %not..i.i.i.i38.i = xor i1 %i.my, true          ; 2 uses
  %.neg.i.i.i.i39.i = sext i1 %not..i.i.i.i38.i to i8
  %i.mz = add nsw i8 %.neg.i.i.i.i39.i, %i.kc
  %i.na = xor i1 %i.kb, %i.my
  %i.nb = ptrtoint ptr %.val16.i81 to i64
  br i1 %i.na, label %bb.bf, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i

bb.bf:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit36.i
  br i1 %i.kb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 %not..i.i.i.i38.i)
  %i.nc = load ptr, ptr %i.jy, align 8, !alias.scope !3902, !noalias !3908, !nonnull !6, !noundef !6
  %i.nd = load i64, ptr %i.jz, align 8, !alias.scope !3902, !noalias !3908, !noundef !6 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.val16.i81, i64 8
  %i.ne = load ptr, ptr %13, align 8, !alias.scope !3905, !noalias !3907, !nonnull !6, !noundef !6
  %i.nf = getelementptr inbounds nuw i8, ptr %.val16.i81, i64 16
  %i.ng = load i64, ptr %i.nf, align 8, !alias.scope !3905, !noalias !3907, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i41.i = call i64 @llvm.umin.i64(i64 %i.nd, i64 %i.ng)
  %i.nh = call i32 @memcmp(ptr nonnull %i.nc, ptr nonnull %i.ne, i64 %spec.store.select.i.i.i.i41.i), !noalias !3909 ; 2 uses
  %i.ni = sext i32 %i.nh to i64
  %i.nj = icmp eq i32 %i.nh, 0
  %i.nk = sub i64 %i.nd, %i.ng
  %spec.select.i.i.i.i42.i = select i1 %i.nj, i64 %i.nk, i64 %i.ni
  %i.nl = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i42.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 %i.my)
  %i.nm = load i8, ptr %i.jy, align 8, !range !3770, !alias.scope !3902, !noalias !3908, !noundef !6
  %14 = getelementptr inbounds nuw i8, ptr %.val16.i81, i64 8
  %i.nn = load i8, ptr %14, align 8, !range !3770, !alias.scope !3905, !noalias !3907, !noundef !6
  %i.no = call i8 @llvm.ucmp.i8.i8(i8 %i.nm, i8 %i.nn)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i: ; preds = %bb.bh, %bb.bg, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit36.i
  %.sroa.0.0.i.i.i.i40.i = phi i8 [ %i.nl, %bb.bg ], [ %i.no, %bb.bh ], [ %i.mz, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit36.i ]
  %i.np = icmp ne i8 %.sroa.0.0.i.i.i.i40.i, -1   ; 2 uses
  %i.nq = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -32 ; 3 uses
  %.sroa.01.0.i44.i82 = select i1 %i.np, ptr %2, ptr %i.nq
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i44.i82, i64 %i.mv
  store i64 %i.nb, ptr %i.nr, align 8, !alias.scope !3867, !noalias !3910
  %i.ns = zext i1 %i.np to i64
  %i.nt = add i64 %i.mv, %i.ns                    ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 32 ; 3 uses
  %i.nv = icmp ult ptr %i.nu, %i.jw
  br i1 %i.nv, label %bb.av, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i, %bb.au
  %.sroa.27.1.lcssa.i52 = phi i64 [ %.sroa.27.0.i47, %bb.au ], [ %i.nt, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i ] ; 3 uses
  %.sroa.9.1.lcssa.i53 = phi ptr [ %.sroa.9.0.i48, %bb.au ], [ %i.nu, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i ] ; 4 uses
  %.sroa.43.1.lcssa.i54 = phi ptr [ %.sroa.43.0.i49, %bb.au ], [ %i.nq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit43.i ] ; 3 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i50 ; 3 uses
  %i.nx = icmp ult ptr %.sroa.9.1.lcssa.i53, %i.nw
  br i1 %i.nx, label %.lr.ph38.i63.preheader, label %._crit_edge39.i55

.lr.ph38.i63.preheader:                           ; preds = %._crit_edge.i51
  %.val15.i68 = load ptr, ptr %i.jt, align 8, !alias.scope !3864, !noalias !3867, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %i.ny = load i64, ptr %.val15.i68, align 8, !range !16, !alias.scope !3913, !noalias !3916, !noundef !6
  %i.nz = icmp ne i64 %i.ny, -1                   ; 2 uses
  %i.oa = zext i1 %i.nz to i8
  %i.ob = getelementptr inbounds nuw i8, ptr %.val15.i68, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.val15.i68, i64 16
  br i1 %i.nz, label %.lr.ph38.i63.us, label %.lr.ph38.i63

.lr.ph38.i63.us:                                  ; preds = %.lr.ph38.i63.preheader, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us
  %.sroa.43.236.i64.us = phi ptr [ %i.oq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us ], [ %.sroa.43.1.lcssa.i54, %.lr.ph38.i63.preheader ]
  %.sroa.9.235.i65.us = phi ptr [ %i.ou, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us ], [ %.sroa.9.1.lcssa.i53, %.lr.ph38.i63.preheader ] ; 2 uses
  %.sroa.27.234.i66.us = phi i64 [ %i.ot, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us ], [ %.sroa.27.1.lcssa.i52, %.lr.ph38.i63.preheader ] ; 2 uses
  %.val.i67.us = load ptr, ptr %.sroa.9.235.i65.us, align 8, !alias.scope !3864, !noalias !3867, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3913)
  call void @llvm.experimental.noalias.scope.decl(metadata !3918)
  %i.od = load i64, ptr %.val.i67.us, align 8, !range !16, !alias.scope !3918, !noalias !3919, !noundef !6
  %.not243 = icmp eq i64 %i.od, -1
  %i.oe = ptrtoint ptr %.val.i67.us to i64
  br i1 %.not243, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph38.i63.us
  %i.of = load ptr, ptr %i.ob, align 8, !alias.scope !3913, !noalias !3916, !nonnull !6, !noundef !6
  %i.og = load i64, ptr %i.oc, align 8, !alias.scope !3913, !noalias !3916, !noundef !6 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.val.i67.us, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !alias.scope !3918, !noalias !3919, !nonnull !6, !noundef !6
  %i.oj = getelementptr inbounds nuw i8, ptr %.val.i67.us, i64 16
  %i.ok = load i64, ptr %i.oj, align 8, !alias.scope !3918, !noalias !3919, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i48.i.us = call i64 @llvm.umin.i64(i64 %i.og, i64 %i.ok)
  %i.ol = call i32 @memcmp(ptr nonnull %i.of, ptr nonnull %i.oi, i64 %spec.store.select.i.i.i.i48.i.us), !noalias !3920 ; 2 uses
  %i.om = sext i32 %i.ol to i64
  %i.on = icmp eq i32 %i.ol, 0
  %i.oo = sub i64 %i.og, %i.ok
  %spec.select.i.i.i.i49.i.us = select i1 %i.on, i64 %i.oo, i64 %i.om
  %i.op = icmp sgt i64 %spec.select.i.i.i.i49.i.us, -1
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us: ; preds = %bb.bi, %.lr.ph38.i63.us
  %.sroa.0.0.i.i.i.i47.i.us = phi i1 [ %i.op, %bb.bi ], [ true, %.lr.ph38.i63.us ] ; 2 uses
  %i.oq = getelementptr inbounds i8, ptr %.sroa.43.236.i64.us, i64 -8 ; 3 uses
  %.sroa.01.0.i51.i69.us = select i1 %.sroa.0.0.i.i.i.i47.i.us, ptr %2, ptr %i.oq
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i51.i69.us, i64 %.sroa.27.234.i66.us
  store i64 %i.oe, ptr %i.or, align 8, !alias.scope !3867, !noalias !3921
  %i.os = zext i1 %.sroa.0.0.i.i.i.i47.i.us to i64
  %i.ot = add i64 %.sroa.27.234.i66.us, %i.os     ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i65.us, i64 8 ; 3 uses
  %i.ov = icmp ult ptr %i.ou, %i.nw
  br i1 %i.ov, label %.lr.ph38.i63.us, label %._crit_edge39.i55

._crit_edge39.i55:                                ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us, %._crit_edge.i51
  %.sroa.27.2.lcssa.i56 = phi i64 [ %.sroa.27.1.lcssa.i52, %._crit_edge.i51 ], [ %i.ot, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us ], [ %i.pj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i ] ; 9 uses
  %.sroa.9.2.lcssa.i57 = phi ptr [ %.sroa.9.1.lcssa.i53, %._crit_edge.i51 ], [ %i.ou, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us ], [ %i.pk, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i ] ; 2 uses
  %.sroa.43.2.lcssa.i58 = phi ptr [ %.sroa.43.1.lcssa.i54, %._crit_edge.i51 ], [ %i.oq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i.us ], [ %i.pg, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i ]
  %i.ow = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0119293
  br i1 %i.ow, label %bb.bl, label %bb.bk

.lr.ph38.i63:                                     ; preds = %.lr.ph38.i63.preheader, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i
  %.sroa.43.236.i64 = phi ptr [ %i.pg, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i ], [ %.sroa.43.1.lcssa.i54, %.lr.ph38.i63.preheader ]
  %.sroa.9.235.i65 = phi ptr [ %i.pk, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i ], [ %.sroa.9.1.lcssa.i53, %.lr.ph38.i63.preheader ] ; 2 uses
  %.sroa.27.234.i66 = phi i64 [ %i.pj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i ], [ %.sroa.27.1.lcssa.i52, %.lr.ph38.i63.preheader ] ; 2 uses
  %.val.i67 = load ptr, ptr %.sroa.9.235.i65, align 8, !alias.scope !3864, !noalias !3867, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3913)
  call void @llvm.experimental.noalias.scope.decl(metadata !3918)
  %i.ox = load i64, ptr %.val.i67, align 8, !range !16, !alias.scope !3918, !noalias !3919, !noundef !6
  %i.oy = icmp ne i64 %i.ox, -1                   ; 2 uses
  %.neg.i.i.i.i46.i = sext i1 %i.oy to i8
  %i.oz = add nsw i8 %.neg.i.i.i.i46.i, %i.oa
  %i.pa = ptrtoint ptr %.val.i67 to i64
  br i1 %i.oy, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph38.i63
  %i.pb = load i8, ptr %i.ob, align 8, !range !3770, !alias.scope !3913, !noalias !3916, !noundef !6
  %i.pc = getelementptr inbounds nuw i8, ptr %.val.i67, i64 8
  %i.pd = load i8, ptr %i.pc, align 8, !range !3770, !alias.scope !3918, !noalias !3919, !noundef !6
  %i.pe = call i8 @llvm.ucmp.i8.i8(i8 %i.pb, i8 %i.pd)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvXs1_NtB1c_8settingsNtB3b_8SettingsNtNtBc_3fmt7Display3fmts4_0E0E0B1g_.exit50.i: ; preds = %bb.bj, %.lr.ph38.i63
  %.sroa.0.0.i.i.i.i47.i = phi i8 [ %i.oz, %.lr.ph38.i63 ], [ %i.pe, %bb.bj ]
  %i.pf = icmp ne i8 %.sroa.0.0.i.i.i.i47.i, -1   ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %.sroa.43.236.i64, i64 -8 ; 3 uses
  %.sroa.01.0.i51.i69 = select i1 %i.pf, ptr %2, ptr %i.pg
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i51.i69, i64 %.sroa.27.234.i66
  store i64 %i.pa, ptr %i.ph, align 8, !alias.scope !3867, !noalias !3921
  %i.pi = zext i1 %i.pf to i64
  %i.pj = add i64 %.sroa.27.234.i66, %i.pi        ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i65, i64 8 ; 3 uses
  %i.pl = icmp ult ptr %i.pk, %i.nw
  br i1 %i.pl, label %.lr.ph38.i63, label %._crit_edge39.i55

bb.bk:                                            ; preds = %._crit_edge39.i55
  %i.pm = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i58, i64 -8
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i56
  %i.po = load i64, ptr %.sroa.9.2.lcssa.i57, align 8, !alias.scope !3864, !noalias !3924
  store i64 %i.po, ptr %i.pn, align 8, !alias.scope !3867, !noalias !3927
  %i.pp = add i64 %.sroa.27.2.lcssa.i56, 1
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i57, i64 8
  br label %bb.au

bb.bl:                                            ; preds = %._crit_edge39.i55
  %i.pr = shl i64 %.sroa.27.2.lcssa.i56, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph128, ptr nonnull align 8 %2, i64 %i.pr, i1 false), !alias.scope !3928
  %i.ps = sub i64 %.sroa.16.0119293, %.sroa.27.2.lcssa.i56 ; 7 uses
  %.not47.i59 = icmp eq i64 %.sroa.16.0119293, %.sroa.27.2.lcssa.i56
  %i.pt = getelementptr [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i56 ; 3 uses
  br i1 %.not47.i59, label %.outer.thread, label %.lr.ph45.i60

.lr.ph45.i60:                                     ; preds = %bb.bl
  %min.iters.check = icmp ult i64 %i.ps, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i60
  %n.vec = and i64 %i.ps, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pu = xor i64 %index, -1
  %i.pv = getelementptr [8 x i8], ptr %i.ju, i64 %i.pu ; 2 uses
  %i.pw = getelementptr [8 x i8], ptr %i.pt, i64 %index ; 2 uses
  %i.px = getelementptr i8, ptr %i.pv, i64 -8
  %i.py = getelementptr i8, ptr %i.pv, i64 -24
  %wide.load = load <2 x i64>, ptr %i.px, align 8, !alias.scope !3867, !noalias !3864
  %wide.load299 = load <2 x i64>, ptr %i.py, align 8, !alias.scope !3867, !noalias !3864
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse300 = shufflevector <2 x i64> %wide.load299, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.pz = getelementptr i8, ptr %i.pw, i64 16
  store <2 x i64> %reverse, ptr %i.pw, align 8, !alias.scope !3864, !noalias !3867
  store <2 x i64> %reverse300, ptr %i.pz, align 8, !alias.scope !3864, !noalias !3867
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qa = icmp eq i64 %index.next, %n.vec
  br i1 %i.qa, label %middle.block, label %vector.body, !llvm.loop !3929

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ps, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvXs1_NtB1i_8settingsNtB3D_8SettingsNtNtBa_3fmt7Display3fmts4_0E0E0EB1m_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i60, %middle.block
  %.sroa.07.043.i61.ph = phi i64 [ 0, %.lr.ph45.i60 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i61 = phi i64 [ %i.qb, %scalar.ph ], [ %.sroa.07.043.i61.ph, %scalar.ph.preheader ] ; 3 uses
  %i.qb = add nuw i64 %.sroa.07.043.i61, 1        ; 2 uses
  %i.qc = xor i64 %.sroa.07.043.i61, -1
  %i.qd = getelementptr [8 x i8], ptr %i.ju, i64 %i.qc
  %i.qe = getelementptr [8 x i8], ptr %i.pt, i64 %.sroa.07.043.i61
  %i.qf = load i64, ptr %i.qd, align 8, !alias.scope !3867, !noalias !3864
  store i64 %i.qf, ptr %i.qe, align 8, !alias.scope !3864, !noalias !3867
  %exitcond.not.i62 = icmp eq i64 %i.qb, %i.ps
  br i1 %exitcond.not.i62, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvXs1_NtB1i_8settingsNtB3D_8SettingsNtNtBa_3fmt7Display3fmts4_0E0E0EB1m_.exit, label %scalar.ph, !llvm.loop !3930

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvXs1_NtB1i_8settingsNtB3D_8SettingsNtNtBa_3fmt7Display3fmts4_0E0E0EB1m_.exit: ; preds = %scalar.ph, %middle.block
  %i.qg = icmp ugt i64 %.sroa.27.2.lcssa.i56, %.sroa.16.0119293
  br i1 %i.qg, label %bb.bm, label %.outer, !prof !359

.outer.thread:                                    ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvXs1_NtB1i_8settingsNtB3D_8SettingsNtNtBa_3fmt7Display3fmts4_0E0E0EB1m_.exit
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.qi = icmp ult i64 %i.ps, 33
  br i1 %i.qi, label %.outer._crit_edge, label %.lr.ph

bb.bm:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvXs1_NtB1i_8settingsNtB3D_8SettingsNtNtBa_3fmt7Display3fmts4_0E0E0EB1m_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i56, i64 noundef %.sroa.16.0119293, i64 noundef %.sroa.16.0119293, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias noundef nonnull %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph131 = phi ptr [ %i.qa, %.outer ], [ %0, %bb.a ] ; 25 uses
  %.sroa.16.0.ph130 = phi i64 [ %i.pl, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph129 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph128 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph131 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph128, null
  %i.d = icmp eq i32 %.sroa.025.0.ph129, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph333

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph333

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa116 = phi ptr [ %i.pm, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph131, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit ], [ %i.qa, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit ], [ %i.pl, %.outer ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1B_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa116, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias noundef nonnull %6)
  br label %bb.n

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0121.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph130, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYBW_NtNtBa_3cmp10PartialOrd2ltEB15_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph131, i64 noundef %.sroa.16.0121.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull %6)
  br label %bb.n

.lr.ph333:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0120332 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph129, %.lr.ph ]
  %.sroa.16.0121331 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph130, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0120332, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  %i.g = lshr i64 %.sroa.16.0121331, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %.idx2.i ; 6 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0121331, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph333
  %i.k = call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph131, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias noundef nonnull %6)
  br label %bb.o

bb.d:                                             ; preds = %.lr.ph333
  %.val6.i = load ptr, ptr %.sroa.0.0.ph131, align 8, !alias.scope !3931, !noalias !3934, !nonnull !6, !align !11, !noundef !6 ; 7 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !3931, !noalias !3934, !nonnull !6, !align !11, !noundef !6 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3936)
  call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  call void @llvm.experimental.noalias.scope.decl(metadata !3941)
  call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  %i.l = load i64, ptr %.val6.i, align 8, !range !16, !alias.scope !3946, !noalias !3947, !noundef !6
  %.not87.i = icmp eq i64 %i.l, -1                ; 3 uses
  %i.m = load i64, ptr %.val7.i, align 8, !range !16, !alias.scope !3948, !noalias !3949, !noundef !6
  %.not.i = icmp eq i64 %i.m, -1                  ; 3 uses
  br i1 %.not87.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %bb.g, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread24.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i, label %bb.h

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !3770, !alias.scope !3946, !noalias !3947, !noundef !6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !3770, !alias.scope !3948, !noalias !3949, !noundef !6
  %i.r = icmp samesign ult i8 %i.o, %i.q          ; 2 uses
  %.val517.i = load ptr, ptr %i.i, align 8, !alias.scope !3931, !noalias !3934, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.s = load i64, ptr %.val517.i, align 8, !range !16, !alias.scope !3950, !noalias !3955, !noundef !6
  %.not37.i = icmp eq i64 %i.s, -1
  br i1 %.not37.i, label %bb.i, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread._RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit11_crit_edge.i

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread._RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit11_crit_edge.i: ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i
  br i1 %i.r, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit15.i, label %bb.o

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread24.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3946, !noalias !3947, !nonnull !6, !noundef !6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3946, !noalias !3947, !noundef !6 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3948, !noalias !3949, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !3948, !noalias !3949, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.aa)
  %i.ab = call i32 @memcmp(ptr nonnull %i.u, ptr nonnull %i.y, i64 %spec.store.select.i.i.i.i.i), !noalias !3958 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.w, %i.aa
  %spec.select.i.i.i.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i, 0  ; 2 uses
  %.val526.i = load ptr, ptr %i.i, align 8, !alias.scope !3931, !noalias !3934, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.ag = load i64, ptr %.val526.i, align 8, !range !16, !alias.scope !3959, !noalias !3962, !noundef !6
  %.not36.i = icmp eq i64 %i.ag, -1
  br i1 %.not36.i, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread24._RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit11_crit_edge.i, label %bb.j

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread24._RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit11_crit_edge.i: ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread24.i
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB16_EIB1W_jEENCINvMNtB20_5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4c_:bb.a
  br i1 %i.bs, label %bb.v, label %bb.u

.lr.ph.i53:                                       ; preds = %bb.t, %.lr.ph.i53
  %.sroa.19.114.i54 = phi ptr [ %i.cb, %.lr.ph.i53 ], [ %.sroa.19.0.i43, %bb.t ]
  %.sroa.5.113.i55 = phi ptr [ %i.cf, %.lr.ph.i53 ], [ %.sroa.5.0.i42, %bb.t ] ; 3 uses
  %.sroa.11.112.i56 = phi i64 [ %i.ce, %.lr.ph.i53 ], [ %.sroa.11.0.i41, %bb.t ] ; 2 uses
  %i.bt = getelementptr i8, ptr %.sroa.5.113.i55, i64 24
  %.val.i57 = load ptr, ptr %i.bt, align 8, !alias.scope !5181, !noalias !5184, !nonnull !6, !noundef !6 ; 2 uses
  %.val12.i58 = load ptr, ptr %i.bp, align 8, !alias.scope !5181, !noalias !5184, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.bu = load i32, ptr %.val12.i58, align 8, !range !410, !noalias !5186, !noundef !6
  %i.bv = zext nneg i32 %i.bu to i64
  %switch.gep262 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.bv
  %switch.load263 = load i8, ptr %switch.gep262, align 1
  %switch.ext264 = zext i8 %switch.load263 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.val12.i58, i64 %switch.ext264
  %.sroa.0.0.i.i.i.i61 = load i32, ptr %i.bw, align 4, !noalias !5186, !noundef !6
  %i.bx = load i32, ptr %.val.i57, align 8, !range !410, !noalias !5186, !noundef !6
  %i.by = zext nneg i32 %i.bx to i64
  %switch.gep268 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.by
  %switch.load269 = load i8, ptr %switch.gep268, align 1
  %switch.ext270 = zext i8 %switch.load269 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i57, i64 %switch.ext270
  %.sroa.0.0.i.i6.i.i64 = load i32, ptr %i.bz, align 4, !noalias !5186, !noundef !6
  %i.ca = icmp uge i32 %.sroa.0.0.i.i.i.i61, %.sroa.0.0.i.i6.i.i64 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.19.114.i54, i64 -56 ; 3 uses
  %.sroa.01.0.i.i65 = select i1 %i.ca, ptr %2, ptr %i.cb
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0.i.i65, i64 %.sroa.11.112.i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.113.i55, i64 56, i1 false), !alias.scope !5186, !noalias !5187
  %i.cd = zext i1 %i.ca to i64
  %i.ce = add i64 %.sroa.11.112.i56, %i.cd        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.5.113.i55, i64 56 ; 3 uses
  %i.cg = icmp ult ptr %i.cf, %i.bq
  br i1 %i.cg, label %.lr.ph.i53, label %._crit_edge.i45

bb.u:                                             ; preds = %._crit_edge.i45
  %i.ch = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i48, i64 -56
  %i.ci = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i47, i64 56, i1 false), !alias.scope !5186, !noalias !5190
  %i.cj = add i64 %.sroa.11.1.lcssa.i46, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i47, i64 56
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.i45
  %i.cl = mul i64 %.sroa.11.1.lcssa.i46, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph110, ptr nonnull align 8 %2, i64 %i.cl, i1 false), !alias.scope !5186
  %i.cm = sub i64 %.sroa.16.0103256, %.sroa.11.1.lcssa.i46 ; 6 uses
  %.not21.i49 = icmp eq i64 %.sroa.16.0103256, %.sroa.11.1.lcssa.i46
  %i.cn = getelementptr [56 x i8], ptr %.sroa.0.0.ph110, i64 %.sroa.11.1.lcssa.i46 ; 4 uses
  br i1 %.not21.i49, label %.outer.thread, label %.lr.ph19.i50.preheader

.lr.ph19.i50.preheader:                           ; preds = %bb.v
  %.neg340 = add i64 %.sroa.11.1.lcssa.i46, 1
  %xtraiter335 = and i64 %i.cm, 1
  %i.co = icmp eq i64 %.sroa.16.0103256, %.neg340
  br i1 %i.co, label %.lr.ph19.i50.epil.preheader, label %.lr.ph19.i50.preheader.new

.lr.ph19.i50.preheader.new:                       ; preds = %.lr.ph19.i50.preheader
  %unroll_iter338 = and i64 %i.cm, -2
  br label %.lr.ph19.i50

.lr.ph19.i50:                                     ; preds = %.lr.ph19.i50, %.lr.ph19.i50.preheader.new
  %.sroa.06.017.i51 = phi i64 [ 0, %.lr.ph19.i50.preheader.new ], [ %i.cs, %.lr.ph19.i50 ] ; 5 uses
  %niter339 = phi i64 [ 0, %.lr.ph19.i50.preheader.new ], [ %niter339.next.1, %.lr.ph19.i50 ]
  %i.cp = xor i64 %.sroa.06.017.i51, -1
  %i.cq = getelementptr [56 x i8], ptr %i.bo, i64 %i.cp
  %i.cr = getelementptr [56 x i8], ptr %i.cn, i64 %.sroa.06.017.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cr, ptr noundef nonnull align 8 dereferenceable(56) %i.cq, i64 56, i1 false), !alias.scope !5186
  %i.cs = add nuw i64 %.sroa.06.017.i51, 2        ; 2 uses
  %i.ct = xor i64 %.sroa.06.017.i51, -2
  %i.cu = getelementptr [56 x i8], ptr %i.bo, i64 %i.ct
  %i.cv = getelementptr [56 x i8], ptr %i.cn, i64 %.sroa.06.017.i51
  %i.cw = getelementptr i8, ptr %i.cv, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cw, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 56, i1 false), !alias.scope !5186
  %niter339.next.1 = add i64 %niter339, 2         ; 2 uses
  %niter339.ncmp.1 = icmp eq i64 %niter339.next.1, %unroll_iter338
  br i1 %niter339.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit.unr-lcssa, label %.lr.ph19.i50

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit.unr-lcssa: ; preds = %.lr.ph19.i50
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit, label %.lr.ph19.i50.epil.preheader

.lr.ph19.i50.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit.unr-lcssa, %.lr.ph19.i50.preheader
  %.sroa.06.017.i51.epil.init = phi i64 [ 0, %.lr.ph19.i50.preheader ], [ %i.cs, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod337 = trunc i64 %i.cm to i1
  call void @llvm.assume(i1 %lcmp.mod337)
  %i.cx = xor i64 %.sroa.06.017.i51.epil.init, -1
  %i.cy = getelementptr [56 x i8], ptr %i.bo, i64 %i.cx
  %i.cz = getelementptr [56 x i8], ptr %i.cn, i64 %.sroa.06.017.i51.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cz, ptr noundef nonnull align 8 dereferenceable(56) %i.cy, i64 56, i1 false), !alias.scope !5186
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit.unr-lcssa, %.lr.ph19.i50.epil.preheader
  %i.da = icmp ugt i64 %.sroa.11.1.lcssa.i46, %.sroa.16.0103256
  br i1 %i.da, label %bb.w, label %.outer, !prof !359

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit
  %i.db = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph110, i64 %.sroa.11.1.lcssa.i46 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dc = icmp ult i64 %i.cm, 33
  br i1 %i.dc, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1e_EIB24_jEENCINvB2_9quicksortB1d_NCINvMNtB28_5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0E0EB4G_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i46, i64 noundef %.sroa.16.0103256, i64 noundef %.sroa.16.0103256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXs1_NtB1b_8settingsNtB3y_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1f_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph125 = phi ptr [ %i.pr, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph124 = phi i64 [ %i.pc, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph123 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph122 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph125 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph122, null
  %i.d = icmp eq i32 %.sroa.025.0.ph123, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph274

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph274

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa116 = phi ptr [ %i.pd, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph125, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit ], [ %i.pr, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit ], [ %i.pc, %.outer ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2K_5sliceSB1s_7sort_byNCNvXs1_NtB1y_8settingsNtB3V_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1C_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa116, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.o

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0118.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph124, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2e_5sliceSBW_7sort_byNCNvXs1_NtB12_8settingsNtB3o_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB16_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph125, i64 noundef %.sroa.16.0118.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.o

.lr.ph274:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0117273 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph123, %.lr.ph ]
  %.sroa.16.0118272 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph124, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.0117273, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5193)
  %i.g = lshr i64 %.sroa.16.0118272, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 6
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph125, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 112
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph125, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0118272, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph274
  %i.k = call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXs1_NtB1a_8settingsNtB3x_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1e_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph125, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.p

bb.d:                                             ; preds = %.lr.ph274
  %.val6.i = load ptr, ptr %.sroa.0.0.ph125, align 8, !alias.scope !5193, !noalias !5196, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !5193, !noalias !5196, !nonnull !6, !align !11, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5198)
  call void @llvm.experimental.noalias.scope.decl(metadata !5201)
  %i.l = load i64, ptr %.val6.i, align 8, !range !16, !alias.scope !5198, !noalias !5203, !noundef !6
  %i.m = icmp ne i64 %i.l, -1                     ; 5 uses
  %i.n = zext i1 %i.m to i8                       ; 2 uses
  %i.o = load i64, ptr %.val7.i, align 8, !range !16, !alias.scope !5201, !noalias !5204, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1                     ; 3 uses
  %not..i.i.i.i = xor i1 %i.p, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.q = add nsw i8 %.neg.i.i.i.i, %i.n
  %i.r = xor i1 %i.m, %i.p
  br i1 %i.r, label %bb.e, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8 ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 %not..i.i.i.i)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !5198, !noalias !5203, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !5198, !noalias !5203, !noundef !6 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !5201, !noalias !5204, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5201, !noalias !5204, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.z)
  %i.aa = call i32 @memcmp(ptr nonnull %i.t, ptr nonnull %i.x, i64 %spec.store.select.i.i.i.i), !noalias !5205 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %i.v, %i.z
  %spec.select.i.i.i.i = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 %i.p)
  %i.af = load i8, ptr %i.s, align 8, !range !3770, !alias.scope !5198, !noalias !5203, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !range !3770, !alias.scope !5201, !noalias !5204, !noundef !6
  %i.ai = call i8 @llvm.ucmp.i8.i8(i8 %i.af, i8 %i.ah)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ae, %bb.f ], [ %i.ai, %bb.g ], [ %i.q, %bb.d ]
  %i.aj = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 2 uses
  %.val5.i = load ptr, ptr %i.i, align 8, !alias.scope !5193, !noalias !5196, !nonnull !6, !align !11, !noundef !6 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5206)
  call void @llvm.experimental.noalias.scope.decl(metadata !5209)
  %i.ak = load i64, ptr %.val5.i, align 8, !range !16, !alias.scope !5209, !noalias !5211, !noundef !6
  %i.al = icmp eq i64 %i.ak, -1                   ; 5 uses
  %not..i.i.i8.i = xor i1 %i.al, true             ; 3 uses
  %.neg.i.i.i9.i = sext i1 %not..i.i.i8.i to i8   ; 2 uses
  %i.am = add nsw i8 %.neg.i.i.i9.i, %i.n
  %i.an = xor i1 %i.m, %i.al
  br i1 %i.an, label %bb.h, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit13.i

bb.h:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8 ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 %not..i.i.i8.i)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !5206, !noalias !5212, !nonnull !6, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !5206, !noalias !5212, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !5209, !noalias !5211, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !5209, !noalias !5211, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i11.i = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.av)
  %i.aw = call i32 @memcmp(ptr nonnull %i.ap, ptr nonnull %i.at, i64 %spec.store.select.i.i.i11.i), !noalias !5213 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %i.ar, %i.av
  %spec.select.i.i.i12.i = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i12.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit13.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 %i.al)
  %i.bb = load i8, ptr %i.ao, align 8, !range !3770, !alias.scope !5206, !noalias !5212, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !range !3770, !alias.scope !5209, !noalias !5211, !noundef !6
  %i.be = call i8 @llvm.ucmp.i8.i8(i8 %i.bb, i8 %i.bd)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit13.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit13.i: ; preds = %bb.j, %bb.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i
  %.sroa.0.0.i.i.i10.i = phi i8 [ %i.ba, %bb.i ], [ %i.be, %bb.j ], [ %i.am, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i ]
  %i.bf = icmp eq i8 %.sroa.0.0.i.i.i10.i, -1
  %i.bg = xor i1 %i.aj, %i.bf
  br i1 %i.bg, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit13.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5214)
  call void @llvm.experimental.noalias.scope.decl(metadata !5217)
  %i.bh = icmp ne i64 %i.o, -1                    ; 3 uses
  %i.bi = zext i1 %i.bh to i8
  %i.bj = add nsw i8 %.neg.i.i.i9.i, %i.bi
  %i.bk = xor i1 %i.bh, %i.al
  br i1 %i.bk, label %bb.l, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit19.i

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 %not..i.i.i8.i)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !5214, !noalias !5219, !nonnull !6, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !5214, !noalias !5219, !noundef !6 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !5217, !noalias !5220, !nonnull !6, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !5217, !noalias !5220, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i17.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bs)
  %i.bt = call i32 @memcmp(ptr nonnull %i.bm, ptr nonnull %i.bq, i64 %spec.store.select.i.i.i17.i), !noalias !5221 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %i.bo, %i.bs
  %spec.select.i.i.i18.i = select i1 %i.bv, i64 %i.bw, i64 %i.bu
  %i.bx = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i18.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit19.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.assume(i1 %i.al)
  %i.by = load i8, ptr %i.bl, align 8, !range !3770, !alias.scope !5214, !noalias !5219, !noundef !6
  %i.bz = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.ca = load i8, ptr %i.bz, align 8, !range !3770, !alias.scope !5217, !noalias !5220, !noundef !6
  %i.cb = call i8 @llvm.ucmp.i8.i8(i8 %i.by, i8 %i.ca)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit19.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit19.i: ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i.i.i16.i = phi i8 [ %i.bx, %bb.m ], [ %i.cb, %bb.n ], [ %i.bj, %bb.k ]
  %i.cc = icmp eq i8 %.sroa.0.0.i.i.i16.i, -1
  %i.cd = xor i1 %i.aj, %i.cc
  %..i.i = select i1 %i.cd, ptr %i.i, ptr %i.h
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.p:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit19.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit13.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.0.ph125, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit13.i ], [ %..i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit19.i ]
  %i.ce = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cf = sub nuw i64 %i.ce, %i.c                 ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.cf, 4          ; 3 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0118272
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph125, i64 %i.cf ; 6 uses
  %i.ci = load <2 x ptr>, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.ch, align 8            ; 5 uses
  store <2 x ptr> %i.ci, ptr %i.a, align 16
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph122, align 8, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5222)
  call void @llvm.experimental.noalias.scope.decl(metadata !5225)
  %i.ck = load i64, ptr %.sroa.028.0.val, align 8, !range !16, !alias.scope !5222, !noalias !5225, !noundef !6
  %i.cl = icmp ne i64 %i.ck, -1                   ; 3 uses
  %i.cm = zext i1 %i.cl to i8
  %i.cn = load i64, ptr %i.cj, align 8, !range !16, !alias.scope !5225, !noalias !5222, !noundef !6
  %i.co = icmp eq i64 %i.cn, -1                   ; 3 uses
  %not..i.i.i = xor i1 %i.co, true                ; 2 uses
  %.neg.i.i.i = sext i1 %not..i.i.i to i8
  %i.cp = add nsw i8 %.neg.i.i.i, %i.cm
  %i.cq = xor i1 %i.cl, %i.co
  br i1 %i.cq, label %bb.r, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val, i64 8 ; 2 uses
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 %not..i.i.i)
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !5222, !noalias !5225, !nonnull !6, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !5222, !noalias !5225, !noundef !6 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !5225, !noalias !5222, !nonnull !6, !noundef !6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !5225, !noalias !5222, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cy)
  %i.cz = call i32 @memcmp(ptr nonnull %i.cs, ptr nonnull %i.cw, i64 %spec.store.select.i.i.i), !noalias !5227 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp eq i32 %i.cz, 0
  %i.dc = sub i64 %i.cu, %i.cy
  %spec.select.i.i.i = select i1 %i.db, i64 %i.dc, i64 %i.da
  %i.dd = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.assume(i1 %i.co)
  %i.de = load i8, ptr %i.cr, align 8, !range !3770, !alias.scope !5222, !noalias !5225, !noundef !6
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.dg = load i8, ptr %i.df, align 8, !range !3770, !alias.scope !5225, !noalias !5222, !noundef !6
  %i.dh = call i8 @llvm.ucmp.i8.i8(i8 %i.de, i8 %i.dg)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit: ; preds = %bb.q, %bb.s, %bb.t
  %.sroa.0.0.i.i.i = phi i8 [ %i.dd, %bb.s ], [ %i.dh, %bb.t ], [ %i.cp, %bb.q ]
  %i.di = icmp eq i8 %.sroa.0.0.i.i.i, -1
  br i1 %i.di, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.p, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5228)
  call void @llvm.experimental.noalias.scope.decl(metadata !5231)
  %.not86 = icmp samesign ult i64 %3, %.sroa.16.0118272
  br i1 %.not86, label %bb.w, label %bb.v, !prof !1861

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0118272 ; 4 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.ao, %bb.v
  %.sroa.27.0.i = phi i64 [ 0, %bb.v ], [ %.sroa.27.2.lcssa.i, %bb.ao ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph125, %bb.v ], [ %i.iy, %bb.ao ] ; 3 uses
  %.sroa.43.0.i = phi ptr [ %i.dj, %bb.v ], [ %i.iw, %bb.ao ] ; 2 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.v ], [ %.sroa.16.0118272, %bb.ao ] ; 3 uses
  %i.dk = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3)
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %i.dk ; 2 uses
  %i.dm = icmp ult ptr %.sroa.9.0.i, %i.dl
  br i1 %i.dm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.x
  %.val23.i = load ptr, ptr %i.ch, align 8, !alias.scope !5228, !noalias !5231, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val23.i, i64 8 ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val23.i, i64 16 ; 4 uses
  %i.dp = load i64, ptr %.val23.i, align 8, !range !16, !alias.scope !5233, !noalias !5236, !noundef !6
  %i.dq = icmp eq i64 %i.dp, -1                   ; 9 uses
  %not..i.i.i.i38 = xor i1 %i.dq, true            ; 5 uses
  %.neg.i.i.i.i39 = sext i1 %not..i.i.i.i38 to i8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i, %.lr.ph.i
  %.sroa.43.131.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.hi, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i ] ; 4 uses
  %.sroa.9.130.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.hm, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i ] ; 6 uses
  %.sroa.27.129.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.hl, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i ] ; 2 uses
  %.val22.i = load ptr, ptr %.sroa.9.130.i, align 8, !alias.scope !5228, !noalias !5231, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5238)
  call void @llvm.experimental.noalias.scope.decl(metadata !5233)
  %i.dr = load i64, ptr %.val22.i, align 8, !range !16, !alias.scope !5238, !noalias !5239, !noundef !6
  %i.ds = icmp ne i64 %i.dr, -1                   ; 3 uses
  %i.dt = zext i1 %i.ds to i8
  %i.du = add nsw i8 %.neg.i.i.i.i39, %i.dt
  %i.dv = xor i1 %i.ds, %i.dq
  br i1 %i.dv, label %bb.z, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i40

bb.z:                                             ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8 ; 2 uses
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !5238, !noalias !5239, !nonnull !6, !noundef !6
  %i.dy = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !5238, !noalias !5239, !noundef !6 ; 2 uses
  %i.ea = load ptr, ptr %i.dn, align 8, !alias.scope !5233, !noalias !5236, !nonnull !6, !noundef !6
  %i.eb = load i64, ptr %i.do, align 8, !alias.scope !5233, !noalias !5236, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i42 = call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.eb)
  %i.ec = call i32 @memcmp(ptr nonnull %i.dx, ptr nonnull %i.ea, i64 %spec.store.select.i.i.i.i42), !noalias !5240 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %i.ef = sub i64 %i.dz, %i.eb
  %spec.select.i.i.i.i43 = select i1 %i.ee, i64 %i.ef, i64 %i.ed
  %i.eg = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i43, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i40

bb.ab:                                            ; preds = %bb.z
  call void @llvm.assume(i1 %i.dq)
  %i.eh = load i8, ptr %i.dw, align 8, !range !3770, !alias.scope !5238, !noalias !5239, !noundef !6
  %i.ei = load i8, ptr %i.dn, align 8, !range !3770, !alias.scope !5233, !noalias !5236, !noundef !6
  %i.ej = call i8 @llvm.ucmp.i8.i8(i8 %i.eh, i8 %i.ei)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i40

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i40: ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.0.0.i.i.i.i41 = phi i8 [ %i.eg, %bb.aa ], [ %i.ej, %bb.ab ], [ %i.du, %bb.y ]
  %i.ek = icmp eq i8 %.sroa.0.0.i.i.i.i41, -1     ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.ek, ptr %2, ptr %i.el
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.129.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.130.i, i64 16, i1 false), !alias.scope !5241, !noalias !5242
  %i.en = zext i1 %i.ek to i64
  %i.eo = add i64 %.sroa.27.129.i, %i.en          ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 16 ; 2 uses
  %.val20.i = load ptr, ptr %i.ep, align 8, !alias.scope !5228, !noalias !5231, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5245)
  call void @llvm.experimental.noalias.scope.decl(metadata !5248)
  %i.eq = load i64, ptr %.val20.i, align 8, !range !16, !alias.scope !5245, !noalias !5250, !noundef !6
  %i.er = icmp ne i64 %i.eq, -1                   ; 3 uses
  %i.es = zext i1 %i.er to i8
  %i.et = add nsw i8 %i.es, %.neg.i.i.i.i39
  %i.eu = xor i1 %i.dq, %i.er
  br i1 %i.eu, label %bb.ac, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit29.i

bb.ac:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i40
  %i.ev = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8 ; 2 uses
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !5245, !noalias !5250, !nonnull !6, !noundef !6
  %i.ex = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !5245, !noalias !5250, !noundef !6 ; 2 uses
  %i.ez = load ptr, ptr %i.dn, align 8, !alias.scope !5248, !noalias !5251, !nonnull !6, !noundef !6
  %i.fa = load i64, ptr %i.do, align 8, !alias.scope !5248, !noalias !5251, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i27.i = call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.fa)
  %i.fb = call i32 @memcmp(ptr nonnull %i.ew, ptr nonnull %i.ez, i64 %spec.store.select.i.i.i27.i), !noalias !5252 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp eq i32 %i.fb, 0
  %i.fe = sub i64 %i.ey, %i.fa
  %spec.select.i.i.i28.i = select i1 %i.fd, i64 %i.fe, i64 %i.fc
  %i.ff = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i28.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit29.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 %i.dq)
  %i.fg = load i8, ptr %i.ev, align 8, !range !3770, !alias.scope !5245, !noalias !5250, !noundef !6
  %i.fh = load i8, ptr %i.dn, align 8, !range !3770, !alias.scope !5248, !noalias !5251, !noundef !6
  %i.fi = call i8 @llvm.ucmp.i8.i8(i8 %i.fg, i8 %i.fh)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit29.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit29.i: ; preds = %bb.ae, %bb.ad, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i40
  %.sroa.0.0.i.i.i26.i = phi i8 [ %i.ff, %bb.ad ], [ %i.fi, %bb.ae ], [ %i.et, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i40 ]
  %i.fj = icmp eq i8 %.sroa.0.0.i.i.i26.i, -1     ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -32
  %.sroa.01.0.i30.i = select i1 %i.fj, ptr %2, ptr %i.fk
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i30.i, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !alias.scope !5241, !noalias !5253
  %i.fm = zext i1 %i.fj to i64
  %i.fn = add i64 %i.eo, %i.fm                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 32 ; 2 uses
  %.val18.i = load ptr, ptr %i.fo, align 8, !alias.scope !5228, !noalias !5231, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5256)
  call void @llvm.experimental.noalias.scope.decl(metadata !5259)
  %i.fp = load i64, ptr %.val18.i, align 8, !range !16, !alias.scope !5256, !noalias !5261, !noundef !6
  %i.fq = icmp ne i64 %i.fp, -1                   ; 3 uses
  %i.fr = zext i1 %i.fq to i8
  %i.fs = add nsw i8 %i.fr, %.neg.i.i.i.i39
  %i.ft = xor i1 %i.dq, %i.fq
  br i1 %i.ft, label %bb.af, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit36.i

bb.af:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit29.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8 ; 2 uses
  br i1 %i.fq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !5256, !noalias !5261, !nonnull !6, !noundef !6
  %i.fw = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !5256, !noalias !5261, !noundef !6 ; 2 uses
  %i.fy = load ptr, ptr %i.dn, align 8, !alias.scope !5259, !noalias !5262, !nonnull !6, !noundef !6
  %i.fz = load i64, ptr %i.do, align 8, !alias.scope !5259, !noalias !5262, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i34.i = call i64 @llvm.umin.i64(i64 %i.fx, i64 %i.fz)
  %i.ga = call i32 @memcmp(ptr nonnull %i.fv, ptr nonnull %i.fy, i64 %spec.store.select.i.i.i34.i), !noalias !5263 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp eq i32 %i.ga, 0
  %i.gd = sub i64 %i.fx, %i.fz
  %spec.select.i.i.i35.i = select i1 %i.gc, i64 %i.gd, i64 %i.gb
  %i.ge = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i35.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit36.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.assume(i1 %i.dq)
  %i.gf = load i8, ptr %i.fu, align 8, !range !3770, !alias.scope !5256, !noalias !5261, !noundef !6
  %i.gg = load i8, ptr %i.dn, align 8, !range !3770, !alias.scope !5259, !noalias !5262, !noundef !6
  %i.gh = call i8 @llvm.ucmp.i8.i8(i8 %i.gf, i8 %i.gg)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit36.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit36.i: ; preds = %bb.ah, %bb.ag, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit29.i
  %.sroa.0.0.i.i.i33.i = phi i8 [ %i.ge, %bb.ag ], [ %i.gh, %bb.ah ], [ %i.fs, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit29.i ]
  %i.gi = icmp eq i8 %.sroa.0.0.i.i.i33.i, -1     ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -48
  %.sroa.01.0.i37.i = select i1 %i.gi, ptr %2, ptr %i.gj
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i37.i, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false), !alias.scope !5241, !noalias !5264
  %i.gl = zext i1 %i.gi to i64
  %i.gm = add i64 %i.fn, %i.gl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 48 ; 2 uses
  %.val16.i = load ptr, ptr %i.gn, align 8, !alias.scope !5228, !noalias !5231, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5267)
  call void @llvm.experimental.noalias.scope.decl(metadata !5270)
  %i.go = load i64, ptr %.val16.i, align 8, !range !16, !alias.scope !5267, !noalias !5272, !noundef !6
  %i.gp = icmp ne i64 %i.go, -1                   ; 3 uses
  %i.gq = zext i1 %i.gp to i8
  %i.gr = add nsw i8 %i.gq, %.neg.i.i.i.i39
  %i.gs = xor i1 %i.dq, %i.gp
  br i1 %i.gs, label %bb.ai, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i

bb.ai:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit36.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8 ; 2 uses
  br i1 %i.gp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !5267, !noalias !5272, !nonnull !6, !noundef !6
  %i.gv = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !5267, !noalias !5272, !noundef !6 ; 2 uses
  %i.gx = load ptr, ptr %i.dn, align 8, !alias.scope !5270, !noalias !5273, !nonnull !6, !noundef !6
  %i.gy = load i64, ptr %i.do, align 8, !alias.scope !5270, !noalias !5273, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i41.i = call i64 @llvm.umin.i64(i64 %i.gw, i64 %i.gy)
  %i.gz = call i32 @memcmp(ptr nonnull %i.gu, ptr nonnull %i.gx, i64 %spec.store.select.i.i.i41.i), !noalias !5274 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp eq i32 %i.gz, 0
  %i.hc = sub i64 %i.gw, %i.gy
  %spec.select.i.i.i42.i = select i1 %i.hb, i64 %i.hc, i64 %i.ha
  %i.hd = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i42.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 %i.dq)
  %i.he = load i8, ptr %i.gt, align 8, !range !3770, !alias.scope !5267, !noalias !5272, !noundef !6
  %i.hf = load i8, ptr %i.dn, align 8, !range !3770, !alias.scope !5270, !noalias !5273, !noundef !6
  %i.hg = call i8 @llvm.ucmp.i8.i8(i8 %i.he, i8 %i.hf)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i: ; preds = %bb.ak, %bb.aj, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit36.i
  %.sroa.0.0.i.i.i40.i = phi i8 [ %i.hd, %bb.aj ], [ %i.hg, %bb.ak ], [ %i.gr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit36.i ]
  %i.hh = icmp eq i8 %.sroa.0.0.i.i.i40.i, -1     ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -64 ; 3 uses
  %.sroa.01.0.i44.i = select i1 %i.hh, ptr %2, ptr %i.hi
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i44.i, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i64 16, i1 false), !alias.scope !5241, !noalias !5275
  %i.hk = zext i1 %i.hh to i64
  %i.hl = add i64 %i.gm, %i.hk                    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 64 ; 3 uses
  %i.hn = icmp ult ptr %i.hm, %i.dl
  br i1 %i.hn, label %bb.y, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i, %bb.x
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.x ], [ %i.hl, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.x ], [ %i.hm, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i ] ; 3 uses
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.x ], [ %i.hi, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit43.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.0.0.i37 ; 2 uses
  %i.hp = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ho
  br i1 %i.hp, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i, %._crit_edge.i
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.it, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.iu, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i ] ; 2 uses
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.iq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i ]
  %i.hq = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0118272
  br i1 %i.hq, label %bb.ap, label %bb.ao

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i
  %.sroa.43.236.i = phi ptr [ %i.iq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.sroa.9.235.i = phi ptr [ %i.iu, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.234.i = phi i64 [ %i.it, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.val.i = load ptr, ptr %.sroa.9.235.i, align 8, !alias.scope !5228, !noalias !5231, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %.val15.i = load ptr, ptr %i.ch, align 8, !alias.scope !5228, !noalias !5231, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5278)
  call void @llvm.experimental.noalias.scope.decl(metadata !5281)
  %i.hr = load i64, ptr %.val.i, align 8, !range !16, !alias.scope !5278, !noalias !5283, !noundef !6
  %i.hs = icmp ne i64 %i.hr, -1                   ; 3 uses
  %i.ht = zext i1 %i.hs to i8
  %i.hu = load i64, ptr %.val15.i, align 8, !range !16, !alias.scope !5281, !noalias !5284, !noundef !6
  %i.hv = icmp eq i64 %i.hu, -1                   ; 3 uses
  %not..i.i.i45.i = xor i1 %i.hv, true            ; 2 uses
  %.neg.i.i.i46.i = sext i1 %not..i.i.i45.i to i8
  %i.hw = add nsw i8 %.neg.i.i.i46.i, %i.ht
  %i.hx = xor i1 %i.hs, %i.hv
  br i1 %i.hx, label %bb.al, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i

bb.al:                                            ; preds = %.lr.ph38.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.hs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 %not..i.i.i45.i)
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !5278, !noalias !5283, !nonnull !6, !noundef !6
  %i.ia = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !5278, !noalias !5283, !noundef !6 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.val15.i, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !5281, !noalias !5284, !nonnull !6, !noundef !6
  %i.ie = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !5281, !noalias !5284, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i48.i = call i64 @llvm.umin.i64(i64 %i.ib, i64 %i.if)
  %i.ig = call i32 @memcmp(ptr nonnull %i.hz, ptr nonnull %i.id, i64 %spec.store.select.i.i.i48.i), !noalias !5285 ; 2 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = icmp eq i32 %i.ig, 0
  %i.ij = sub i64 %i.ib, %i.if
  %spec.select.i.i.i49.i = select i1 %i.ii, i64 %i.ij, i64 %i.ih
  %i.ik = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i49.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 %i.hv)
  %i.il = load i8, ptr %i.hy, align 8, !range !3770, !alias.scope !5278, !noalias !5283, !noundef !6
  %i.im = getelementptr inbounds nuw i8, ptr %.val15.i, i64 8
  %i.in = load i8, ptr %i.im, align 8, !range !3770, !alias.scope !5281, !noalias !5284, !noundef !6
  %i.io = call i8 @llvm.ucmp.i8.i8(i8 %i.il, i8 %i.in)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit50.i: ; preds = %bb.an, %bb.am, %.lr.ph38.i
  %.sroa.0.0.i.i.i47.i = phi i8 [ %i.ik, %bb.am ], [ %i.io, %bb.an ], [ %i.hw, %.lr.ph38.i ]
  %i.ip = icmp eq i8 %.sroa.0.0.i.i.i47.i, -1     ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %.sroa.43.236.i, i64 -16 ; 3 uses
  %.sroa.01.0.i51.i = select i1 %i.ip, ptr %2, ptr %i.iq
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i51.i, i64 %.sroa.27.234.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.235.i, i64 16, i1 false), !alias.scope !5241, !noalias !5286
  %i.is = zext i1 %i.ip to i64
  %i.it = add i64 %.sroa.27.234.i, %i.is          ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i, i64 16 ; 3 uses
  %i.iv = icmp ult ptr %i.iu, %i.ho
  br i1 %i.iv, label %.lr.ph38.i, label %._crit_edge39.i

bb.ao:                                            ; preds = %._crit_edge39.i
  %i.iw = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !5241, !noalias !5289
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.x

bb.ap:                                            ; preds = %._crit_edge39.i
  %i.iz = shl i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph125, ptr nonnull align 8 %2, i64 %i.iz, i1 false), !alias.scope !5241
  %i.ja = sub i64 %.sroa.16.0118272, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0118272, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ap
  %i.jb = getelementptr [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.ja, 1
  %i.jc = icmp eq i64 %.sroa.16.0118272, %.neg
  br i1 %i.jc, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.ja, -2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.jg, %bb.aq ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.aq ]
  %i.jd = xor i64 %.sroa.07.043.i, -1
  %i.je = getelementptr [16 x i8], ptr %i.dj, i64 %i.jd
  %i.jf = getelementptr [16 x i8], ptr %i.jb, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.je, i64 16, i1 false), !alias.scope !5241
  %i.jg = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.jh = xor i64 %.sroa.07.043.i, -2
  %i.ji = getelementptr [16 x i8], ptr %i.dj, i64 %i.jh
  %i.jj = getelementptr [16 x i8], ptr %i.jb, i64 %.sroa.07.043.i
  %i.jk = getelementptr i8, ptr %i.jj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i64 16, i1 false), !alias.scope !5241
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.aq

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.jg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod341 = trunc i64 %i.ja to i1
  call void @llvm.assume(i1 %lcmp.mod341)
  %i.jl = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.jm = getelementptr [16 x i8], ptr %i.dj, i64 %i.jl
  %i.jn = getelementptr [16 x i8], ptr %i.jb, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i64 16, i1 false), !alias.scope !5241
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ap
  %i.jo = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.jo, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0118272
  br i1 %.not.i44, label %bb.as, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit, !prof !359

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @63, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !noalias !5292
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit: ; preds = %bb.ar
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph125) ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXs1_NtB1b_8settingsNtB3y_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1f_(ptr noalias noundef nonnull align 8 %i.jp, i64 noundef %i.ja, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jq = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.jq, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !5296)
  call void @llvm.experimental.noalias.scope.decl(metadata !5299)
  %.not87 = icmp samesign ult i64 %3, %.sroa.16.0118272
  br i1 %.not87, label %bb.au, label %bb.at, !prof !1861

bb.at:                                            ; preds = %.thread
  %i.jr = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0118272 ; 4 uses
  br label %bb.av

bb.au:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.bm, %bb.at
  %.sroa.27.0.i47 = phi i64 [ 0, %bb.at ], [ %i.oz, %bb.bm ] ; 2 uses
  %.sroa.9.0.i48 = phi ptr [ %.sroa.0.0.ph125, %bb.at ], [ %i.pa, %bb.bm ] ; 3 uses
  %.sroa.43.0.i49 = phi ptr [ %i.jr, %bb.at ], [ %i.ox, %bb.bm ] ; 2 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.at ], [ %.sroa.16.0118272, %bb.bm ] ; 3 uses
  %i.js = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i50, i64 3)
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %i.js ; 2 uses
  %i.ju = icmp ult ptr %.sroa.9.0.i48, %i.jt
  br i1 %i.ju, label %.lr.ph.i70, label %._crit_edge.i51

.lr.ph.i70:                                       ; preds = %bb.av
  %.val23.i71 = load ptr, ptr %i.ch, align 8, !alias.scope !5296, !noalias !5299, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val23.i71, i64 8 ; 8 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.val23.i71, i64 16 ; 4 uses
  %i.jx = load i64, ptr %.val23.i71, align 8, !range !16, !alias.scope !5301, !noalias !5304, !noundef !6
  %i.jy = icmp ne i64 %i.jx, -1                   ; 9 uses
  %i.jz = zext i1 %i.jy to i8                     ; 4 uses
  br label %bb.aw

bb.aw:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i, %.lr.ph.i70
  %.sroa.43.131.i72 = phi ptr [ %.sroa.43.0.i49, %.lr.ph.i70 ], [ %i.nj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i ] ; 4 uses
  %.sroa.9.130.i73 = phi ptr [ %.sroa.9.0.i48, %.lr.ph.i70 ], [ %i.nn, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i ] ; 6 uses
  %.sroa.27.129.i74 = phi i64 [ %.sroa.27.0.i47, %.lr.ph.i70 ], [ %i.nm, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i ] ; 2 uses
  %.val22.i75 = load ptr, ptr %.sroa.9.130.i73, align 8, !alias.scope !5296, !noalias !5299, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5301)
  call void @llvm.experimental.noalias.scope.decl(metadata !5306)
  %i.ka = load i64, ptr %.val22.i75, align 8, !range !16, !alias.scope !5306, !noalias !5307, !noundef !6
  %i.kb = icmp eq i64 %i.ka, -1                   ; 3 uses
  %not..i.i.i.i.i = xor i1 %i.kb, true            ; 2 uses
  %.neg.i.i.i.i.i = sext i1 %not..i.i.i.i.i to i8
  %i.kc = add nsw i8 %.neg.i.i.i.i.i, %i.jz
  %i.kd = xor i1 %i.jy, %i.kb
  br i1 %i.kd, label %bb.ax, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit.i

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.jy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 %not..i.i.i.i.i)
  %i.ke = load ptr, ptr %i.jv, align 8, !alias.scope !5301, !noalias !5304, !nonnull !6, !noundef !6
  %i.kf = load i64, ptr %i.jw, align 8, !alias.scope !5301, !noalias !5304, !noundef !6 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.val22.i75, i64 8
  %i.kg = load ptr, ptr %7, align 8, !alias.scope !5306, !noalias !5307, !nonnull !6, !noundef !6
  %i.kh = getelementptr inbounds nuw i8, ptr %.val22.i75, i64 16
  %i.ki = load i64, ptr %i.kh, align 8, !alias.scope !5306, !noalias !5307, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.kf, i64 %i.ki)
  %i.kj = call i32 @memcmp(ptr nonnull %i.ke, ptr nonnull %i.kg, i64 %spec.store.select.i.i.i.i.i), !noalias !5308 ; 2 uses
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp eq i32 %i.kj, 0
  %i.km = sub i64 %i.kf, %i.ki
  %spec.select.i.i.i.i.i = select i1 %i.kl, i64 %i.km, i64 %i.kk
  %i.kn = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 %i.kb)
  %i.ko = load i8, ptr %i.jv, align 8, !range !3770, !alias.scope !5301, !noalias !5304, !noundef !6
  %8 = getelementptr inbounds nuw i8, ptr %.val22.i75, i64 8
  %i.kp = load i8, ptr %8, align 8, !range !3770, !alias.scope !5306, !noalias !5307, !noundef !6
  %i.kq = call i8 @llvm.ucmp.i8.i8(i8 %i.ko, i8 %i.kp)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit.i: ; preds = %bb.az, %bb.ay, %bb.aw
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.kn, %bb.ay ], [ %i.kq, %bb.az ], [ %i.kc, %bb.aw ]
  %i.kr = icmp ne i8 %.sroa.0.0.i.i.i.i.i, -1     ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -16
  %.sroa.01.0.i.i76 = select i1 %i.kr, ptr %2, ptr %i.ks
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i76, i64 %.sroa.27.129.i74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.130.i73, i64 16, i1 false), !alias.scope !5309, !noalias !5310
  %i.ku = zext i1 %i.kr to i64
  %i.kv = add i64 %.sroa.27.129.i74, %i.ku        ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 16 ; 2 uses
  %.val20.i77 = load ptr, ptr %i.kw, align 8, !alias.scope !5296, !noalias !5299, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5313)
  call void @llvm.experimental.noalias.scope.decl(metadata !5316)
  %i.kx = load i64, ptr %.val20.i77, align 8, !range !16, !alias.scope !5316, !noalias !5318, !noundef !6
  %i.ky = icmp eq i64 %i.kx, -1                   ; 3 uses
  %not..i.i.i.i24.i = xor i1 %i.ky, true          ; 2 uses
  %.neg.i.i.i.i25.i = sext i1 %not..i.i.i.i24.i to i8
  %i.kz = add nsw i8 %.neg.i.i.i.i25.i, %i.jz
  %i.la = xor i1 %i.jy, %i.ky
  br i1 %i.la, label %bb.ba, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit29.i

bb.ba:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit.i
  br i1 %i.jy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 %not..i.i.i.i24.i)
  %i.lb = load ptr, ptr %i.jv, align 8, !alias.scope !5313, !noalias !5319, !nonnull !6, !noundef !6
  %i.lc = load i64, ptr %i.jw, align 8, !alias.scope !5313, !noalias !5319, !noundef !6 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.val20.i77, i64 8
  %i.ld = load ptr, ptr %9, align 8, !alias.scope !5316, !noalias !5318, !nonnull !6, !noundef !6
  %i.le = getelementptr inbounds nuw i8, ptr %.val20.i77, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !5316, !noalias !5318, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i27.i = call i64 @llvm.umin.i64(i64 %i.lc, i64 %i.lf)
  %i.lg = call i32 @memcmp(ptr nonnull %i.lb, ptr nonnull %i.ld, i64 %spec.store.select.i.i.i.i27.i), !noalias !5320 ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp eq i32 %i.lg, 0
  %i.lj = sub i64 %i.lc, %i.lf
  %spec.select.i.i.i.i28.i = select i1 %i.li, i64 %i.lj, i64 %i.lh
  %i.lk = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i28.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit29.i

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 %i.ky)
  %i.ll = load i8, ptr %i.jv, align 8, !range !3770, !alias.scope !5313, !noalias !5319, !noundef !6
  %10 = getelementptr inbounds nuw i8, ptr %.val20.i77, i64 8
  %i.lm = load i8, ptr %10, align 8, !range !3770, !alias.scope !5316, !noalias !5318, !noundef !6
  %i.ln = call i8 @llvm.ucmp.i8.i8(i8 %i.ll, i8 %i.lm)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit29.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit29.i: ; preds = %bb.bc, %bb.bb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit.i
  %.sroa.0.0.i.i.i.i26.i = phi i8 [ %i.lk, %bb.bb ], [ %i.ln, %bb.bc ], [ %i.kz, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit.i ]
  %i.lo = icmp ne i8 %.sroa.0.0.i.i.i.i26.i, -1   ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -32
  %.sroa.01.0.i30.i78 = select i1 %i.lo, ptr %2, ptr %i.lp
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i30.i78, i64 %i.kv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, ptr noundef nonnull align 8 dereferenceable(16) %i.kw, i64 16, i1 false), !alias.scope !5309, !noalias !5321
  %i.lr = zext i1 %i.lo to i64
  %i.ls = add i64 %i.kv, %i.lr                    ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 32 ; 2 uses
  %.val18.i79 = load ptr, ptr %i.lt, align 8, !alias.scope !5296, !noalias !5299, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5324)
  call void @llvm.experimental.noalias.scope.decl(metadata !5327)
  %i.lu = load i64, ptr %.val18.i79, align 8, !range !16, !alias.scope !5327, !noalias !5329, !noundef !6
  %i.lv = icmp eq i64 %i.lu, -1                   ; 3 uses
  %not..i.i.i.i31.i = xor i1 %i.lv, true          ; 2 uses
  %.neg.i.i.i.i32.i = sext i1 %not..i.i.i.i31.i to i8
  %i.lw = add nsw i8 %.neg.i.i.i.i32.i, %i.jz
  %i.lx = xor i1 %i.jy, %i.lv
  br i1 %i.lx, label %bb.bd, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit36.i

bb.bd:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit29.i
  br i1 %i.jy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 %not..i.i.i.i31.i)
  %i.ly = load ptr, ptr %i.jv, align 8, !alias.scope !5324, !noalias !5330, !nonnull !6, !noundef !6
  %i.lz = load i64, ptr %i.jw, align 8, !alias.scope !5324, !noalias !5330, !noundef !6 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.val18.i79, i64 8
  %i.ma = load ptr, ptr %11, align 8, !alias.scope !5327, !noalias !5329, !nonnull !6, !noundef !6
  %i.mb = getelementptr inbounds nuw i8, ptr %.val18.i79, i64 16
  %i.mc = load i64, ptr %i.mb, align 8, !alias.scope !5327, !noalias !5329, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i34.i = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.mc)
  %i.md = call i32 @memcmp(ptr nonnull %i.ly, ptr nonnull %i.ma, i64 %spec.store.select.i.i.i.i34.i), !noalias !5331 ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = icmp eq i32 %i.md, 0
  %i.mg = sub i64 %i.lz, %i.mc
  %spec.select.i.i.i.i35.i = select i1 %i.mf, i64 %i.mg, i64 %i.me
  %i.mh = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i35.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit36.i

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 %i.lv)
  %i.mi = load i8, ptr %i.jv, align 8, !range !3770, !alias.scope !5324, !noalias !5330, !noundef !6
  %12 = getelementptr inbounds nuw i8, ptr %.val18.i79, i64 8
  %i.mj = load i8, ptr %12, align 8, !range !3770, !alias.scope !5327, !noalias !5329, !noundef !6
  %i.mk = call i8 @llvm.ucmp.i8.i8(i8 %i.mi, i8 %i.mj)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit36.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit36.i: ; preds = %bb.bf, %bb.be, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit29.i
  %.sroa.0.0.i.i.i.i33.i = phi i8 [ %i.mh, %bb.be ], [ %i.mk, %bb.bf ], [ %i.lw, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit29.i ]
  %i.ml = icmp ne i8 %.sroa.0.0.i.i.i.i33.i, -1   ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -48
  %.sroa.01.0.i37.i80 = select i1 %i.ml, ptr %2, ptr %i.mm
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i37.i80, i64 %i.ls
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mn, ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i64 16, i1 false), !alias.scope !5309, !noalias !5332
  %i.mo = zext i1 %i.ml to i64
  %i.mp = add i64 %i.ls, %i.mo                    ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 48 ; 2 uses
  %.val16.i81 = load ptr, ptr %i.mq, align 8, !alias.scope !5296, !noalias !5299, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5335)
  call void @llvm.experimental.noalias.scope.decl(metadata !5338)
  %i.mr = load i64, ptr %.val16.i81, align 8, !range !16, !alias.scope !5338, !noalias !5340, !noundef !6
  %i.ms = icmp eq i64 %i.mr, -1                   ; 3 uses
  %not..i.i.i.i38.i = xor i1 %i.ms, true          ; 2 uses
  %.neg.i.i.i.i39.i = sext i1 %not..i.i.i.i38.i to i8
  %i.mt = add nsw i8 %.neg.i.i.i.i39.i, %i.jz
  %i.mu = xor i1 %i.jy, %i.ms
  br i1 %i.mu, label %bb.bg, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i

bb.bg:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit36.i
  br i1 %i.jy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 %not..i.i.i.i38.i)
  %i.mv = load ptr, ptr %i.jv, align 8, !alias.scope !5335, !noalias !5341, !nonnull !6, !noundef !6
  %i.mw = load i64, ptr %i.jw, align 8, !alias.scope !5335, !noalias !5341, !noundef !6 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.val16.i81, i64 8
  %i.mx = load ptr, ptr %13, align 8, !alias.scope !5338, !noalias !5340, !nonnull !6, !noundef !6
  %i.my = getelementptr inbounds nuw i8, ptr %.val16.i81, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !alias.scope !5338, !noalias !5340, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i41.i = call i64 @llvm.umin.i64(i64 %i.mw, i64 %i.mz)
  %i.na = call i32 @memcmp(ptr nonnull %i.mv, ptr nonnull %i.mx, i64 %spec.store.select.i.i.i.i41.i), !noalias !5342 ; 2 uses
  %i.nb = sext i32 %i.na to i64
  %i.nc = icmp eq i32 %i.na, 0
  %i.nd = sub i64 %i.mw, %i.mz
  %spec.select.i.i.i.i42.i = select i1 %i.nc, i64 %i.nd, i64 %i.nb
  %i.ne = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i42.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 %i.ms)
  %i.nf = load i8, ptr %i.jv, align 8, !range !3770, !alias.scope !5335, !noalias !5341, !noundef !6
  %14 = getelementptr inbounds nuw i8, ptr %.val16.i81, i64 8
  %i.ng = load i8, ptr %14, align 8, !range !3770, !alias.scope !5338, !noalias !5340, !noundef !6
  %i.nh = call i8 @llvm.ucmp.i8.i8(i8 %i.nf, i8 %i.ng)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i: ; preds = %bb.bi, %bb.bh, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit36.i
  %.sroa.0.0.i.i.i.i40.i = phi i8 [ %i.ne, %bb.bh ], [ %i.nh, %bb.bi ], [ %i.mt, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit36.i ]
  %i.ni = icmp ne i8 %.sroa.0.0.i.i.i.i40.i, -1   ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -64 ; 3 uses
  %.sroa.01.0.i44.i82 = select i1 %i.ni, ptr %2, ptr %i.nj
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i44.i82, i64 %i.mp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, ptr noundef nonnull align 8 dereferenceable(16) %i.mq, i64 16, i1 false), !alias.scope !5309, !noalias !5343
  %i.nl = zext i1 %i.ni to i64
  %i.nm = add i64 %i.mp, %i.nl                    ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 64 ; 3 uses
  %i.no = icmp ult ptr %i.nn, %i.jt
  br i1 %i.no, label %bb.aw, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i, %bb.av
  %.sroa.27.1.lcssa.i52 = phi i64 [ %.sroa.27.0.i47, %bb.av ], [ %i.nm, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i ] ; 2 uses
  %.sroa.9.1.lcssa.i53 = phi ptr [ %.sroa.9.0.i48, %bb.av ], [ %i.nn, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i ] ; 3 uses
  %.sroa.43.1.lcssa.i54 = phi ptr [ %.sroa.43.0.i49, %bb.av ], [ %i.nj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit43.i ] ; 2 uses
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.0.0.i50 ; 2 uses
  %i.nq = icmp ult ptr %.sroa.9.1.lcssa.i53, %i.np
  br i1 %i.nq, label %.lr.ph38.i63, label %._crit_edge39.i55

._crit_edge39.i55:                                ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i, %._crit_edge.i51
  %.sroa.27.2.lcssa.i56 = phi i64 [ %.sroa.27.1.lcssa.i52, %._crit_edge.i51 ], [ %i.ou, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i ] ; 10 uses
  %.sroa.9.2.lcssa.i57 = phi ptr [ %.sroa.9.1.lcssa.i53, %._crit_edge.i51 ], [ %i.ov, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i ] ; 2 uses
  %.sroa.43.2.lcssa.i58 = phi ptr [ %.sroa.43.1.lcssa.i54, %._crit_edge.i51 ], [ %i.or, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i ]
  %i.nr = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0118272
  br i1 %i.nr, label %bb.bn, label %bb.bm

.lr.ph38.i63:                                     ; preds = %._crit_edge.i51, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i
  %.sroa.43.236.i64 = phi ptr [ %i.or, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i ], [ %.sroa.43.1.lcssa.i54, %._crit_edge.i51 ]
  %.sroa.9.235.i65 = phi ptr [ %i.ov, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i ], [ %.sroa.9.1.lcssa.i53, %._crit_edge.i51 ] ; 3 uses
  %.sroa.27.234.i66 = phi i64 [ %i.ou, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i ], [ %.sroa.27.1.lcssa.i52, %._crit_edge.i51 ] ; 2 uses
  %.val.i67 = load ptr, ptr %.sroa.9.235.i65, align 8, !alias.scope !5296, !noalias !5299, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  %.val15.i68 = load ptr, ptr %i.ch, align 8, !alias.scope !5296, !noalias !5299, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5346)
  call void @llvm.experimental.noalias.scope.decl(metadata !5349)
  %i.ns = load i64, ptr %.val15.i68, align 8, !range !16, !alias.scope !5346, !noalias !5351, !noundef !6
  %i.nt = icmp ne i64 %i.ns, -1                   ; 3 uses
  %i.nu = zext i1 %i.nt to i8
  %i.nv = load i64, ptr %.val.i67, align 8, !range !16, !alias.scope !5349, !noalias !5352, !noundef !6
  %i.nw = icmp eq i64 %i.nv, -1                   ; 3 uses
  %not..i.i.i.i45.i = xor i1 %i.nw, true          ; 2 uses
  %.neg.i.i.i.i46.i = sext i1 %not..i.i.i.i45.i to i8
  %i.nx = add nsw i8 %.neg.i.i.i.i46.i, %i.nu
  %i.ny = xor i1 %i.nt, %i.nw
  br i1 %i.ny, label %bb.bj, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i

bb.bj:                                            ; preds = %.lr.ph38.i63
  %i.nz = getelementptr inbounds nuw i8, ptr %.val15.i68, i64 8 ; 2 uses
  br i1 %i.nt, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 %not..i.i.i.i45.i)
  %i.oa = load ptr, ptr %i.nz, align 8, !alias.scope !5346, !noalias !5351, !nonnull !6, !noundef !6
  %i.ob = getelementptr inbounds nuw i8, ptr %.val15.i68, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !alias.scope !5346, !noalias !5351, !noundef !6 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.val.i67, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !5349, !noalias !5352, !nonnull !6, !noundef !6
  %i.of = getelementptr inbounds nuw i8, ptr %.val.i67, i64 16
  %i.og = load i64, ptr %i.of, align 8, !alias.scope !5349, !noalias !5352, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i48.i = call i64 @llvm.umin.i64(i64 %i.oc, i64 %i.og)
  %i.oh = call i32 @memcmp(ptr nonnull %i.oa, ptr nonnull %i.oe, i64 %spec.store.select.i.i.i.i48.i), !noalias !5353 ; 2 uses
  %i.oi = sext i32 %i.oh to i64
  %i.oj = icmp eq i32 %i.oh, 0
  %i.ok = sub i64 %i.oc, %i.og
  %spec.select.i.i.i.i49.i = select i1 %i.oj, i64 %i.ok, i64 %i.oi
  %i.ol = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i49.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 %i.nw)
  %i.om = load i8, ptr %i.nz, align 8, !range !3770, !alias.scope !5346, !noalias !5351, !noundef !6
  %i.on = getelementptr inbounds nuw i8, ptr %.val.i67, i64 8
  %i.oo = load i8, ptr %i.on, align 8, !range !3770, !alias.scope !5349, !noalias !5352, !noundef !6
  %i.op = call i8 @llvm.ucmp.i8.i8(i8 %i.om, i8 %i.oo)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXs1_NtB1d_8settingsNtB3A_8SettingsNtNtBc_3fmt7Display3fmts5_0E0E0B1h_.exit50.i: ; preds = %bb.bl, %bb.bk, %.lr.ph38.i63
  %.sroa.0.0.i.i.i.i47.i = phi i8 [ %i.ol, %bb.bk ], [ %i.op, %bb.bl ], [ %i.nx, %.lr.ph38.i63 ]
  %i.oq = icmp ne i8 %.sroa.0.0.i.i.i.i47.i, -1   ; 2 uses
  %i.or = getelementptr inbounds i8, ptr %.sroa.43.236.i64, i64 -16 ; 3 uses
  %.sroa.01.0.i51.i69 = select i1 %i.oq, ptr %2, ptr %i.or
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i51.i69, i64 %.sroa.27.234.i66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.os, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.235.i65, i64 16, i1 false), !alias.scope !5309, !noalias !5354
  %i.ot = zext i1 %i.oq to i64
  %i.ou = add i64 %.sroa.27.234.i66, %i.ot        ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i65, i64 16 ; 3 uses
  %i.ow = icmp ult ptr %i.ov, %i.np
  br i1 %i.ow, label %.lr.ph38.i63, label %._crit_edge39.i55

bb.bm:                                            ; preds = %._crit_edge39.i55
  %i.ox = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i58, i64 -16
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i57, i64 16, i1 false), !alias.scope !5309, !noalias !5357
  %i.oz = add i64 %.sroa.27.2.lcssa.i56, 1
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i57, i64 16
  br label %bb.av

bb.bn:                                            ; preds = %._crit_edge39.i55
  %i.pb = shl i64 %.sroa.27.2.lcssa.i56, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph125, ptr nonnull align 8 %2, i64 %i.pb, i1 false), !alias.scope !5309
  %i.pc = sub i64 %.sroa.16.0118272, %.sroa.27.2.lcssa.i56 ; 6 uses
  %.not47.i59 = icmp eq i64 %.sroa.16.0118272, %.sroa.27.2.lcssa.i56
  %i.pd = getelementptr [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i56 ; 4 uses
  br i1 %.not47.i59, label %.outer.thread, label %.lr.ph45.i60.preheader

.lr.ph45.i60.preheader:                           ; preds = %bb.bn
  %.neg353 = add i64 %.sroa.27.2.lcssa.i56, 1
  %xtraiter348 = and i64 %i.pc, 1
  %i.pe = icmp eq i64 %.sroa.16.0118272, %.neg353
  br i1 %i.pe, label %.lr.ph45.i60.epil.preheader, label %.lr.ph45.i60.preheader.new

.lr.ph45.i60.preheader.new:                       ; preds = %.lr.ph45.i60.preheader
  %unroll_iter351 = and i64 %i.pc, -2
  br label %.lr.ph45.i60

.lr.ph45.i60:                                     ; preds = %.lr.ph45.i60, %.lr.ph45.i60.preheader.new
  %.sroa.07.043.i61 = phi i64 [ 0, %.lr.ph45.i60.preheader.new ], [ %i.pi, %.lr.ph45.i60 ] ; 5 uses
  %niter352 = phi i64 [ 0, %.lr.ph45.i60.preheader.new ], [ %niter352.next.1, %.lr.ph45.i60 ]
  %i.pf = xor i64 %.sroa.07.043.i61, -1
  %i.pg = getelementptr [16 x i8], ptr %i.jr, i64 %i.pf
  %i.ph = getelementptr [16 x i8], ptr %i.pd, i64 %.sroa.07.043.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ph, ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i64 16, i1 false), !alias.scope !5309
  %i.pi = add nuw i64 %.sroa.07.043.i61, 2        ; 2 uses
  %i.pj = xor i64 %.sroa.07.043.i61, -2
  %i.pk = getelementptr [16 x i8], ptr %i.jr, i64 %i.pj
  %i.pl = getelementptr [16 x i8], ptr %i.pd, i64 %.sroa.07.043.i61
  %i.pm = getelementptr i8, ptr %i.pl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pm, ptr noundef nonnull align 8 dereferenceable(16) %i.pk, i64 16, i1 false), !alias.scope !5309
  %niter352.next.1 = add i64 %niter352, 2         ; 2 uses
  %niter352.ncmp.1 = icmp eq i64 %niter352.next.1, %unroll_iter351
  br i1 %niter352.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit.unr-lcssa, label %.lr.ph45.i60

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit.unr-lcssa: ; preds = %.lr.ph45.i60
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit, label %.lr.ph45.i60.epil.preheader

.lr.ph45.i60.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit.unr-lcssa, %.lr.ph45.i60.preheader
  %.sroa.07.043.i61.epil.init = phi i64 [ 0, %.lr.ph45.i60.preheader ], [ %i.pi, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod350 = trunc i64 %i.pc to i1
  call void @llvm.assume(i1 %lcmp.mod350)
  %i.pn = xor i64 %.sroa.07.043.i61.epil.init, -1
  %i.po = getelementptr [16 x i8], ptr %i.jr, i64 %i.pn
  %i.pp = getelementptr [16 x i8], ptr %i.pd, i64 %.sroa.07.043.i61.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, ptr noundef nonnull align 8 dereferenceable(16) %i.po, i64 16, i1 false), !alias.scope !5309
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit.unr-lcssa, %.lr.ph45.i60.epil.preheader
  %i.pq = icmp ugt i64 %.sroa.27.2.lcssa.i56, %.sroa.16.0118272
  br i1 %i.pq, label %bb.bo, label %.outer, !prof !359

.outer.thread:                                    ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ps = icmp ult i64 %i.pc, 33
  br i1 %i.ps, label %.outer._crit_edge, label %.lr.ph

bb.bo:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXs1_NtB1j_8settingsNtB42_8SettingsNtNtBa_3fmt7Display3fmts5_0E0E0EB1n_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i56, i64 noundef %.sroa.16.0118272, i64 noundef %.sroa.16.0118272, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB17_B2j_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3y_8CacheKey9cache_key0E0EB1f_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph125 = phi ptr [ %i.pr, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph124 = phi i64 [ %i.pc, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph123 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph122 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph125 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph122, null
  %i.d = icmp eq i32 %.sroa.025.0.ph123, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph274

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph274

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa116 = phi ptr [ %i.pd, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph125, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit ], [ %i.pr, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit ], [ %i.pc, %.outer ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2K_5sliceSB1s_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1u_B2G_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3V_8CacheKey9cache_key0E0EB1C_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa116, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.o

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0118.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph124, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2e_5sliceSBW_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBY_B2a_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3o_8CacheKey9cache_key0E0EB16_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph125, i64 noundef %.sroa.16.0118.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.o

.lr.ph274:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0117273 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph123, %.lr.ph ]
  %.sroa.16.0118272 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph124, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.0117273, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5360)
  %i.g = lshr i64 %.sroa.16.0118272, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 6
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph125, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 112
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph125, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0118272, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph274
  %i.k = call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B2i_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3x_8CacheKey9cache_key0E0EB1e_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph125, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.p

bb.d:                                             ; preds = %.lr.ph274
  %.val6.i = load ptr, ptr %.sroa.0.0.ph125, align 8, !alias.scope !5360, !noalias !5363, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !5360, !noalias !5363, !nonnull !6, !align !11, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5365)
  call void @llvm.experimental.noalias.scope.decl(metadata !5368)
  %i.l = load i64, ptr %.val6.i, align 8, !range !16, !alias.scope !5365, !noalias !5370, !noundef !6
  %i.m = icmp ne i64 %i.l, -1                     ; 5 uses
  %i.n = zext i1 %i.m to i8                       ; 2 uses
  %i.o = load i64, ptr %.val7.i, align 8, !range !16, !alias.scope !5368, !noalias !5371, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1                     ; 3 uses
  %not..i.i.i.i = xor i1 %i.p, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.q = add nsw i8 %.neg.i.i.i.i, %i.n
  %i.r = xor i1 %i.m, %i.p
  br i1 %i.r, label %bb.e, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8 ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 %not..i.i.i.i)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !5365, !noalias !5370, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !5365, !noalias !5370, !noundef !6 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !5368, !noalias !5371, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5368, !noalias !5371, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.z)
  %i.aa = call i32 @memcmp(ptr nonnull %i.t, ptr nonnull %i.x, i64 %spec.store.select.i.i.i.i), !noalias !5372 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %i.v, %i.z
  %spec.select.i.i.i.i = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 %i.p)
  %i.af = load i8, ptr %i.s, align 8, !range !3770, !alias.scope !5365, !noalias !5370, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !range !3770, !alias.scope !5368, !noalias !5371, !noundef !6
  %i.ai = call i8 @llvm.ucmp.i8.i8(i8 %i.af, i8 %i.ah)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ae, %bb.f ], [ %i.ai, %bb.g ], [ %i.q, %bb.d ]
  %i.aj = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 2 uses
  %.val5.i = load ptr, ptr %i.i, align 8, !alias.scope !5360, !noalias !5363, !nonnull !6, !align !11, !noundef !6 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5373)
  call void @llvm.experimental.noalias.scope.decl(metadata !5376)
  %i.ak = load i64, ptr %.val5.i, align 8, !range !16, !alias.scope !5376, !noalias !5378, !noundef !6
  %i.al = icmp eq i64 %i.ak, -1                   ; 5 uses
  %not..i.i.i8.i = xor i1 %i.al, true             ; 3 uses
  %.neg.i.i.i9.i = sext i1 %not..i.i.i8.i to i8   ; 2 uses
  %i.am = add nsw i8 %.neg.i.i.i9.i, %i.n
  %i.an = xor i1 %i.m, %i.al
  br i1 %i.an, label %bb.h, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit13.i

bb.h:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8 ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 %not..i.i.i8.i)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !5373, !noalias !5379, !nonnull !6, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !5373, !noalias !5379, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !5376, !noalias !5378, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !5376, !noalias !5378, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i11.i = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.av)
  %i.aw = call i32 @memcmp(ptr nonnull %i.ap, ptr nonnull %i.at, i64 %spec.store.select.i.i.i11.i), !noalias !5380 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %i.ar, %i.av
  %spec.select.i.i.i12.i = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i12.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit13.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 %i.al)
  %i.bb = load i8, ptr %i.ao, align 8, !range !3770, !alias.scope !5373, !noalias !5379, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !range !3770, !alias.scope !5376, !noalias !5378, !noundef !6
  %i.be = call i8 @llvm.ucmp.i8.i8(i8 %i.bb, i8 %i.bd)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit13.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit13.i: ; preds = %bb.j, %bb.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i
  %.sroa.0.0.i.i.i10.i = phi i8 [ %i.ba, %bb.i ], [ %i.be, %bb.j ], [ %i.am, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i ]
  %i.bf = icmp eq i8 %.sroa.0.0.i.i.i10.i, -1
  %i.bg = xor i1 %i.aj, %i.bf
  br i1 %i.bg, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit13.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5381)
  call void @llvm.experimental.noalias.scope.decl(metadata !5384)
  %i.bh = icmp ne i64 %i.o, -1                    ; 3 uses
  %i.bi = zext i1 %i.bh to i8
  %i.bj = add nsw i8 %.neg.i.i.i9.i, %i.bi
  %i.bk = xor i1 %i.bh, %i.al
  br i1 %i.bk, label %bb.l, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit19.i

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 %not..i.i.i8.i)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !5381, !noalias !5386, !nonnull !6, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !5381, !noalias !5386, !noundef !6 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !5384, !noalias !5387, !nonnull !6, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !5384, !noalias !5387, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i17.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bs)
  %i.bt = call i32 @memcmp(ptr nonnull %i.bm, ptr nonnull %i.bq, i64 %spec.store.select.i.i.i17.i), !noalias !5388 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %i.bo, %i.bs
  %spec.select.i.i.i18.i = select i1 %i.bv, i64 %i.bw, i64 %i.bu
  %i.bx = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i18.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit19.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.assume(i1 %i.al)
  %i.by = load i8, ptr %i.bl, align 8, !range !3770, !alias.scope !5381, !noalias !5386, !noundef !6
  %i.bz = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.ca = load i8, ptr %i.bz, align 8, !range !3770, !alias.scope !5384, !noalias !5387, !noundef !6
  %i.cb = call i8 @llvm.ucmp.i8.i8(i8 %i.by, i8 %i.ca)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit19.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit19.i: ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i.i.i16.i = phi i8 [ %i.bx, %bb.m ], [ %i.cb, %bb.n ], [ %i.bj, %bb.k ]
  %i.cc = icmp eq i8 %.sroa.0.0.i.i.i16.i, -1
  %i.cd = xor i1 %i.aj, %i.cc
  %..i.i = select i1 %i.cd, ptr %i.i, ptr %i.h
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.p:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit19.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit13.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.0.ph125, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit13.i ], [ %..i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit19.i ]
  %i.ce = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cf = sub nuw i64 %i.ce, %i.c                 ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.cf, 4          ; 3 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0118272
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph125, i64 %i.cf ; 6 uses
  %i.ci = load <2 x ptr>, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.ch, align 8            ; 5 uses
  store <2 x ptr> %i.ci, ptr %i.a, align 16
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph122, align 8, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5389)
  call void @llvm.experimental.noalias.scope.decl(metadata !5392)
  %i.ck = load i64, ptr %.sroa.028.0.val, align 8, !range !16, !alias.scope !5389, !noalias !5392, !noundef !6
  %i.cl = icmp ne i64 %i.ck, -1                   ; 3 uses
  %i.cm = zext i1 %i.cl to i8
  %i.cn = load i64, ptr %i.cj, align 8, !range !16, !alias.scope !5392, !noalias !5389, !noundef !6
  %i.co = icmp eq i64 %i.cn, -1                   ; 3 uses
  %not..i.i.i = xor i1 %i.co, true                ; 2 uses
  %.neg.i.i.i = sext i1 %not..i.i.i to i8
  %i.cp = add nsw i8 %.neg.i.i.i, %i.cm
  %i.cq = xor i1 %i.cl, %i.co
  br i1 %i.cq, label %bb.r, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val, i64 8 ; 2 uses
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 %not..i.i.i)
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !5389, !noalias !5392, !nonnull !6, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !5389, !noalias !5392, !noundef !6 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !5392, !noalias !5389, !nonnull !6, !noundef !6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !5392, !noalias !5389, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cy)
  %i.cz = call i32 @memcmp(ptr nonnull %i.cs, ptr nonnull %i.cw, i64 %spec.store.select.i.i.i), !noalias !5394 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp eq i32 %i.cz, 0
  %i.dc = sub i64 %i.cu, %i.cy
  %spec.select.i.i.i = select i1 %i.db, i64 %i.dc, i64 %i.da
  %i.dd = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.assume(i1 %i.co)
  %i.de = load i8, ptr %i.cr, align 8, !range !3770, !alias.scope !5389, !noalias !5392, !noundef !6
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.dg = load i8, ptr %i.df, align 8, !range !3770, !alias.scope !5392, !noalias !5389, !noundef !6
  %i.dh = call i8 @llvm.ucmp.i8.i8(i8 %i.de, i8 %i.dg)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit: ; preds = %bb.q, %bb.s, %bb.t
  %.sroa.0.0.i.i.i = phi i8 [ %i.dd, %bb.s ], [ %i.dh, %bb.t ], [ %i.cp, %bb.q ]
  %i.di = icmp eq i8 %.sroa.0.0.i.i.i, -1
  br i1 %i.di, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.p, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5395)
  call void @llvm.experimental.noalias.scope.decl(metadata !5398)
  %.not86 = icmp samesign ult i64 %3, %.sroa.16.0118272
  br i1 %.not86, label %bb.w, label %bb.v, !prof !1861

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0118272 ; 4 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.ao, %bb.v
  %.sroa.27.0.i = phi i64 [ 0, %bb.v ], [ %.sroa.27.2.lcssa.i, %bb.ao ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph125, %bb.v ], [ %i.iy, %bb.ao ] ; 3 uses
  %.sroa.43.0.i = phi ptr [ %i.dj, %bb.v ], [ %i.iw, %bb.ao ] ; 2 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.v ], [ %.sroa.16.0118272, %bb.ao ] ; 3 uses
  %i.dk = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3)
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %i.dk ; 2 uses
  %i.dm = icmp ult ptr %.sroa.9.0.i, %i.dl
  br i1 %i.dm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.x
  %.val23.i = load ptr, ptr %i.ch, align 8, !alias.scope !5395, !noalias !5398, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val23.i, i64 8 ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val23.i, i64 16 ; 4 uses
  %i.dp = load i64, ptr %.val23.i, align 8, !range !16, !alias.scope !5400, !noalias !5403, !noundef !6
  %i.dq = icmp eq i64 %i.dp, -1                   ; 9 uses
  %not..i.i.i.i38 = xor i1 %i.dq, true            ; 5 uses
  %.neg.i.i.i.i39 = sext i1 %not..i.i.i.i38 to i8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i, %.lr.ph.i
  %.sroa.43.131.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.hi, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i ] ; 4 uses
  %.sroa.9.130.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.hm, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i ] ; 6 uses
  %.sroa.27.129.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.hl, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i ] ; 2 uses
  %.val22.i = load ptr, ptr %.sroa.9.130.i, align 8, !alias.scope !5395, !noalias !5398, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5405)
  call void @llvm.experimental.noalias.scope.decl(metadata !5400)
  %i.dr = load i64, ptr %.val22.i, align 8, !range !16, !alias.scope !5405, !noalias !5406, !noundef !6
  %i.ds = icmp ne i64 %i.dr, -1                   ; 3 uses
  %i.dt = zext i1 %i.ds to i8
  %i.du = add nsw i8 %.neg.i.i.i.i39, %i.dt
  %i.dv = xor i1 %i.ds, %i.dq
  br i1 %i.dv, label %bb.z, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i40

bb.z:                                             ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8 ; 2 uses
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !5405, !noalias !5406, !nonnull !6, !noundef !6
  %i.dy = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !5405, !noalias !5406, !noundef !6 ; 2 uses
  %i.ea = load ptr, ptr %i.dn, align 8, !alias.scope !5400, !noalias !5403, !nonnull !6, !noundef !6
  %i.eb = load i64, ptr %i.do, align 8, !alias.scope !5400, !noalias !5403, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i42 = call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.eb)
  %i.ec = call i32 @memcmp(ptr nonnull %i.dx, ptr nonnull %i.ea, i64 %spec.store.select.i.i.i.i42), !noalias !5407 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %i.ef = sub i64 %i.dz, %i.eb
  %spec.select.i.i.i.i43 = select i1 %i.ee, i64 %i.ef, i64 %i.ed
  %i.eg = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i43, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i40

bb.ab:                                            ; preds = %bb.z
  call void @llvm.assume(i1 %i.dq)
  %i.eh = load i8, ptr %i.dw, align 8, !range !3770, !alias.scope !5405, !noalias !5406, !noundef !6
  %i.ei = load i8, ptr %i.dn, align 8, !range !3770, !alias.scope !5400, !noalias !5403, !noundef !6
  %i.ej = call i8 @llvm.ucmp.i8.i8(i8 %i.eh, i8 %i.ei)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i40

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i40: ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.0.0.i.i.i.i41 = phi i8 [ %i.eg, %bb.aa ], [ %i.ej, %bb.ab ], [ %i.du, %bb.y ]
  %i.ek = icmp eq i8 %.sroa.0.0.i.i.i.i41, -1     ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.ek, ptr %2, ptr %i.el
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.129.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.130.i, i64 16, i1 false), !alias.scope !5408, !noalias !5409
  %i.en = zext i1 %i.ek to i64
  %i.eo = add i64 %.sroa.27.129.i, %i.en          ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 16 ; 2 uses
  %.val20.i = load ptr, ptr %i.ep, align 8, !alias.scope !5395, !noalias !5398, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5412)
  call void @llvm.experimental.noalias.scope.decl(metadata !5415)
  %i.eq = load i64, ptr %.val20.i, align 8, !range !16, !alias.scope !5412, !noalias !5417, !noundef !6
  %i.er = icmp ne i64 %i.eq, -1                   ; 3 uses
  %i.es = zext i1 %i.er to i8
  %i.et = add nsw i8 %i.es, %.neg.i.i.i.i39
  %i.eu = xor i1 %i.dq, %i.er
  br i1 %i.eu, label %bb.ac, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit29.i

bb.ac:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i40
  %i.ev = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8 ; 2 uses
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !5412, !noalias !5417, !nonnull !6, !noundef !6
  %i.ex = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !5412, !noalias !5417, !noundef !6 ; 2 uses
  %i.ez = load ptr, ptr %i.dn, align 8, !alias.scope !5415, !noalias !5418, !nonnull !6, !noundef !6
  %i.fa = load i64, ptr %i.do, align 8, !alias.scope !5415, !noalias !5418, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i27.i = call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.fa)
  %i.fb = call i32 @memcmp(ptr nonnull %i.ew, ptr nonnull %i.ez, i64 %spec.store.select.i.i.i27.i), !noalias !5419 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp eq i32 %i.fb, 0
  %i.fe = sub i64 %i.ey, %i.fa
  %spec.select.i.i.i28.i = select i1 %i.fd, i64 %i.fe, i64 %i.fc
  %i.ff = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i28.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit29.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 %i.dq)
  %i.fg = load i8, ptr %i.ev, align 8, !range !3770, !alias.scope !5412, !noalias !5417, !noundef !6
  %i.fh = load i8, ptr %i.dn, align 8, !range !3770, !alias.scope !5415, !noalias !5418, !noundef !6
  %i.fi = call i8 @llvm.ucmp.i8.i8(i8 %i.fg, i8 %i.fh)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit29.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit29.i: ; preds = %bb.ae, %bb.ad, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i40
  %.sroa.0.0.i.i.i26.i = phi i8 [ %i.ff, %bb.ad ], [ %i.fi, %bb.ae ], [ %i.et, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i40 ]
  %i.fj = icmp eq i8 %.sroa.0.0.i.i.i26.i, -1     ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -32
  %.sroa.01.0.i30.i = select i1 %i.fj, ptr %2, ptr %i.fk
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i30.i, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !alias.scope !5408, !noalias !5420
  %i.fm = zext i1 %i.fj to i64
  %i.fn = add i64 %i.eo, %i.fm                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 32 ; 2 uses
  %.val18.i = load ptr, ptr %i.fo, align 8, !alias.scope !5395, !noalias !5398, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5423)
  call void @llvm.experimental.noalias.scope.decl(metadata !5426)
  %i.fp = load i64, ptr %.val18.i, align 8, !range !16, !alias.scope !5423, !noalias !5428, !noundef !6
  %i.fq = icmp ne i64 %i.fp, -1                   ; 3 uses
  %i.fr = zext i1 %i.fq to i8
  %i.fs = add nsw i8 %i.fr, %.neg.i.i.i.i39
  %i.ft = xor i1 %i.dq, %i.fq
  br i1 %i.ft, label %bb.af, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit36.i

bb.af:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit29.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8 ; 2 uses
  br i1 %i.fq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !5423, !noalias !5428, !nonnull !6, !noundef !6
  %i.fw = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !5423, !noalias !5428, !noundef !6 ; 2 uses
  %i.fy = load ptr, ptr %i.dn, align 8, !alias.scope !5426, !noalias !5429, !nonnull !6, !noundef !6
  %i.fz = load i64, ptr %i.do, align 8, !alias.scope !5426, !noalias !5429, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i34.i = call i64 @llvm.umin.i64(i64 %i.fx, i64 %i.fz)
  %i.ga = call i32 @memcmp(ptr nonnull %i.fv, ptr nonnull %i.fy, i64 %spec.store.select.i.i.i34.i), !noalias !5430 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp eq i32 %i.ga, 0
  %i.gd = sub i64 %i.fx, %i.fz
  %spec.select.i.i.i35.i = select i1 %i.gc, i64 %i.gd, i64 %i.gb
  %i.ge = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i35.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit36.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.assume(i1 %i.dq)
  %i.gf = load i8, ptr %i.fu, align 8, !range !3770, !alias.scope !5423, !noalias !5428, !noundef !6
  %i.gg = load i8, ptr %i.dn, align 8, !range !3770, !alias.scope !5426, !noalias !5429, !noundef !6
  %i.gh = call i8 @llvm.ucmp.i8.i8(i8 %i.gf, i8 %i.gg)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit36.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit36.i: ; preds = %bb.ah, %bb.ag, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit29.i
  %.sroa.0.0.i.i.i33.i = phi i8 [ %i.ge, %bb.ag ], [ %i.gh, %bb.ah ], [ %i.fs, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit29.i ]
  %i.gi = icmp eq i8 %.sroa.0.0.i.i.i33.i, -1     ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -48
  %.sroa.01.0.i37.i = select i1 %i.gi, ptr %2, ptr %i.gj
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i37.i, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false), !alias.scope !5408, !noalias !5431
  %i.gl = zext i1 %i.gi to i64
  %i.gm = add i64 %i.fn, %i.gl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 48 ; 2 uses
  %.val16.i = load ptr, ptr %i.gn, align 8, !alias.scope !5395, !noalias !5398, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5434)
  call void @llvm.experimental.noalias.scope.decl(metadata !5437)
  %i.go = load i64, ptr %.val16.i, align 8, !range !16, !alias.scope !5434, !noalias !5439, !noundef !6
  %i.gp = icmp ne i64 %i.go, -1                   ; 3 uses
  %i.gq = zext i1 %i.gp to i8
  %i.gr = add nsw i8 %i.gq, %.neg.i.i.i.i39
  %i.gs = xor i1 %i.dq, %i.gp
  br i1 %i.gs, label %bb.ai, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i

bb.ai:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit36.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8 ; 2 uses
  br i1 %i.gp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 %not..i.i.i.i38)
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !5434, !noalias !5439, !nonnull !6, !noundef !6
  %i.gv = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !5434, !noalias !5439, !noundef !6 ; 2 uses
  %i.gx = load ptr, ptr %i.dn, align 8, !alias.scope !5437, !noalias !5440, !nonnull !6, !noundef !6
  %i.gy = load i64, ptr %i.do, align 8, !alias.scope !5437, !noalias !5440, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i41.i = call i64 @llvm.umin.i64(i64 %i.gw, i64 %i.gy)
  %i.gz = call i32 @memcmp(ptr nonnull %i.gu, ptr nonnull %i.gx, i64 %spec.store.select.i.i.i41.i), !noalias !5441 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp eq i32 %i.gz, 0
  %i.hc = sub i64 %i.gw, %i.gy
  %spec.select.i.i.i42.i = select i1 %i.hb, i64 %i.hc, i64 %i.ha
  %i.hd = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i42.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 %i.dq)
  %i.he = load i8, ptr %i.gt, align 8, !range !3770, !alias.scope !5434, !noalias !5439, !noundef !6
  %i.hf = load i8, ptr %i.dn, align 8, !range !3770, !alias.scope !5437, !noalias !5440, !noundef !6
  %i.hg = call i8 @llvm.ucmp.i8.i8(i8 %i.he, i8 %i.hf)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i: ; preds = %bb.ak, %bb.aj, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit36.i
  %.sroa.0.0.i.i.i40.i = phi i8 [ %i.hd, %bb.aj ], [ %i.hg, %bb.ak ], [ %i.gr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit36.i ]
  %i.hh = icmp eq i8 %.sroa.0.0.i.i.i40.i, -1     ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %.sroa.43.131.i, i64 -64 ; 3 uses
  %.sroa.01.0.i44.i = select i1 %i.hh, ptr %2, ptr %i.hi
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i44.i, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i64 16, i1 false), !alias.scope !5408, !noalias !5442
  %i.hk = zext i1 %i.hh to i64
  %i.hl = add i64 %i.gm, %i.hk                    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i, i64 64 ; 3 uses
  %i.hn = icmp ult ptr %i.hm, %i.dl
  br i1 %i.hn, label %bb.y, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i, %bb.x
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.x ], [ %i.hl, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.x ], [ %i.hm, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i ] ; 3 uses
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.x ], [ %i.hi, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit43.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.0.0.i37 ; 2 uses
  %i.hp = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ho
  br i1 %i.hp, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i, %._crit_edge.i
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.it, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.iu, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i ] ; 2 uses
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.iq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i ]
  %i.hq = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0118272
  br i1 %i.hq, label %bb.ap, label %bb.ao

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i
  %.sroa.43.236.i = phi ptr [ %i.iq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.sroa.9.235.i = phi ptr [ %i.iu, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.234.i = phi i64 [ %i.it, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.val.i = load ptr, ptr %.sroa.9.235.i, align 8, !alias.scope !5395, !noalias !5398, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %.val15.i = load ptr, ptr %i.ch, align 8, !alias.scope !5395, !noalias !5398, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5445)
  call void @llvm.experimental.noalias.scope.decl(metadata !5448)
  %i.hr = load i64, ptr %.val.i, align 8, !range !16, !alias.scope !5445, !noalias !5450, !noundef !6
  %i.hs = icmp ne i64 %i.hr, -1                   ; 3 uses
  %i.ht = zext i1 %i.hs to i8
  %i.hu = load i64, ptr %.val15.i, align 8, !range !16, !alias.scope !5448, !noalias !5451, !noundef !6
  %i.hv = icmp eq i64 %i.hu, -1                   ; 3 uses
  %not..i.i.i45.i = xor i1 %i.hv, true            ; 2 uses
  %.neg.i.i.i46.i = sext i1 %not..i.i.i45.i to i8
  %i.hw = add nsw i8 %.neg.i.i.i46.i, %i.ht
  %i.hx = xor i1 %i.hs, %i.hv
  br i1 %i.hx, label %bb.al, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i

bb.al:                                            ; preds = %.lr.ph38.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.hs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 %not..i.i.i45.i)
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !5445, !noalias !5450, !nonnull !6, !noundef !6
  %i.ia = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !5445, !noalias !5450, !noundef !6 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.val15.i, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !5448, !noalias !5451, !nonnull !6, !noundef !6
  %i.ie = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !5448, !noalias !5451, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i48.i = call i64 @llvm.umin.i64(i64 %i.ib, i64 %i.if)
  %i.ig = call i32 @memcmp(ptr nonnull %i.hz, ptr nonnull %i.id, i64 %spec.store.select.i.i.i48.i), !noalias !5452 ; 2 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = icmp eq i32 %i.ig, 0
  %i.ij = sub i64 %i.ib, %i.if
  %spec.select.i.i.i49.i = select i1 %i.ii, i64 %i.ij, i64 %i.ih
  %i.ik = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i49.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 %i.hv)
  %i.il = load i8, ptr %i.hy, align 8, !range !3770, !alias.scope !5445, !noalias !5450, !noundef !6
  %i.im = getelementptr inbounds nuw i8, ptr %.val15.i, i64 8
  %i.in = load i8, ptr %i.im, align 8, !range !3770, !alias.scope !5448, !noalias !5451, !noundef !6
  %i.io = call i8 @llvm.ucmp.i8.i8(i8 %i.il, i8 %i.in)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit50.i: ; preds = %bb.an, %bb.am, %.lr.ph38.i
  %.sroa.0.0.i.i.i47.i = phi i8 [ %i.ik, %bb.am ], [ %i.io, %bb.an ], [ %i.hw, %.lr.ph38.i ]
  %i.ip = icmp eq i8 %.sroa.0.0.i.i.i47.i, -1     ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %.sroa.43.236.i, i64 -16 ; 3 uses
  %.sroa.01.0.i51.i = select i1 %i.ip, ptr %2, ptr %i.iq
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i51.i, i64 %.sroa.27.234.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.235.i, i64 16, i1 false), !alias.scope !5408, !noalias !5453
  %i.is = zext i1 %i.ip to i64
  %i.it = add i64 %.sroa.27.234.i, %i.is          ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i, i64 16 ; 3 uses
  %i.iv = icmp ult ptr %i.iu, %i.ho
  br i1 %i.iv, label %.lr.ph38.i, label %._crit_edge39.i

bb.ao:                                            ; preds = %._crit_edge39.i
  %i.iw = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !5408, !noalias !5456
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.x

bb.ap:                                            ; preds = %._crit_edge39.i
  %i.iz = shl i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph125, ptr nonnull align 8 %2, i64 %i.iz, i1 false), !alias.scope !5408
  %i.ja = sub i64 %.sroa.16.0118272, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0118272, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ap
  %i.jb = getelementptr [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.ja, 1
  %i.jc = icmp eq i64 %.sroa.16.0118272, %.neg
  br i1 %i.jc, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.ja, -2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.jg, %bb.aq ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.aq ]
  %i.jd = xor i64 %.sroa.07.043.i, -1
  %i.je = getelementptr [16 x i8], ptr %i.dj, i64 %i.jd
  %i.jf = getelementptr [16 x i8], ptr %i.jb, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.je, i64 16, i1 false), !alias.scope !5408
  %i.jg = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.jh = xor i64 %.sroa.07.043.i, -2
  %i.ji = getelementptr [16 x i8], ptr %i.dj, i64 %i.jh
  %i.jj = getelementptr [16 x i8], ptr %i.jb, i64 %.sroa.07.043.i
  %i.jk = getelementptr i8, ptr %i.jj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i64 16, i1 false), !alias.scope !5408
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.aq

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.jg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod341 = trunc i64 %i.ja to i1
  call void @llvm.assume(i1 %lcmp.mod341)
  %i.jl = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.jm = getelementptr [16 x i8], ptr %i.dj, i64 %i.jl
  %i.jn = getelementptr [16 x i8], ptr %i.jb, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i64 16, i1 false), !alias.scope !5408
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ap
  %i.jo = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.jo, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0118272
  br i1 %.not.i44, label %bb.as, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit, !prof !359

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @63, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37, !noalias !5459
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit: ; preds = %bb.ar
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph125) ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB17_B2j_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3y_8CacheKey9cache_key0E0EB1f_(ptr noalias noundef nonnull align 8 %i.jp, i64 noundef %i.ja, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jq = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.jq, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !5463)
  call void @llvm.experimental.noalias.scope.decl(metadata !5466)
  %.not87 = icmp samesign ult i64 %3, %.sroa.16.0118272
  br i1 %.not87, label %bb.au, label %bb.at, !prof !1861

bb.at:                                            ; preds = %.thread
  %i.jr = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0118272 ; 4 uses
  br label %bb.av

bb.au:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.bm, %bb.at
  %.sroa.27.0.i47 = phi i64 [ 0, %bb.at ], [ %i.oz, %bb.bm ] ; 2 uses
  %.sroa.9.0.i48 = phi ptr [ %.sroa.0.0.ph125, %bb.at ], [ %i.pa, %bb.bm ] ; 3 uses
  %.sroa.43.0.i49 = phi ptr [ %i.jr, %bb.at ], [ %i.ox, %bb.bm ] ; 2 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.at ], [ %.sroa.16.0118272, %bb.bm ] ; 3 uses
  %i.js = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i50, i64 3)
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %i.js ; 2 uses
  %i.ju = icmp ult ptr %.sroa.9.0.i48, %i.jt
  br i1 %i.ju, label %.lr.ph.i70, label %._crit_edge.i51

.lr.ph.i70:                                       ; preds = %bb.av
  %.val23.i71 = load ptr, ptr %i.ch, align 8, !alias.scope !5463, !noalias !5466, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val23.i71, i64 8 ; 8 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.val23.i71, i64 16 ; 4 uses
  %i.jx = load i64, ptr %.val23.i71, align 8, !range !16, !alias.scope !5468, !noalias !5471, !noundef !6
  %i.jy = icmp ne i64 %i.jx, -1                   ; 9 uses
  %i.jz = zext i1 %i.jy to i8                     ; 4 uses
  br label %bb.aw

bb.aw:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i, %.lr.ph.i70
  %.sroa.43.131.i72 = phi ptr [ %.sroa.43.0.i49, %.lr.ph.i70 ], [ %i.nj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i ] ; 4 uses
  %.sroa.9.130.i73 = phi ptr [ %.sroa.9.0.i48, %.lr.ph.i70 ], [ %i.nn, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i ] ; 6 uses
  %.sroa.27.129.i74 = phi i64 [ %.sroa.27.0.i47, %.lr.ph.i70 ], [ %i.nm, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i ] ; 2 uses
  %.val22.i75 = load ptr, ptr %.sroa.9.130.i73, align 8, !alias.scope !5463, !noalias !5466, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5468)
  call void @llvm.experimental.noalias.scope.decl(metadata !5473)
  %i.ka = load i64, ptr %.val22.i75, align 8, !range !16, !alias.scope !5473, !noalias !5474, !noundef !6
  %i.kb = icmp eq i64 %i.ka, -1                   ; 3 uses
  %not..i.i.i.i.i = xor i1 %i.kb, true            ; 2 uses
  %.neg.i.i.i.i.i = sext i1 %not..i.i.i.i.i to i8
  %i.kc = add nsw i8 %.neg.i.i.i.i.i, %i.jz
  %i.kd = xor i1 %i.jy, %i.kb
  br i1 %i.kd, label %bb.ax, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit.i

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.jy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 %not..i.i.i.i.i)
  %i.ke = load ptr, ptr %i.jv, align 8, !alias.scope !5468, !noalias !5471, !nonnull !6, !noundef !6
  %i.kf = load i64, ptr %i.jw, align 8, !alias.scope !5468, !noalias !5471, !noundef !6 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.val22.i75, i64 8
  %i.kg = load ptr, ptr %7, align 8, !alias.scope !5473, !noalias !5474, !nonnull !6, !noundef !6
  %i.kh = getelementptr inbounds nuw i8, ptr %.val22.i75, i64 16
  %i.ki = load i64, ptr %i.kh, align 8, !alias.scope !5473, !noalias !5474, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.kf, i64 %i.ki)
  %i.kj = call i32 @memcmp(ptr nonnull %i.ke, ptr nonnull %i.kg, i64 %spec.store.select.i.i.i.i.i), !noalias !5475 ; 2 uses
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp eq i32 %i.kj, 0
  %i.km = sub i64 %i.kf, %i.ki
  %spec.select.i.i.i.i.i = select i1 %i.kl, i64 %i.km, i64 %i.kk
  %i.kn = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 %i.kb)
  %i.ko = load i8, ptr %i.jv, align 8, !range !3770, !alias.scope !5468, !noalias !5471, !noundef !6
  %8 = getelementptr inbounds nuw i8, ptr %.val22.i75, i64 8
  %i.kp = load i8, ptr %8, align 8, !range !3770, !alias.scope !5473, !noalias !5474, !noundef !6
  %i.kq = call i8 @llvm.ucmp.i8.i8(i8 %i.ko, i8 %i.kp)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit.i: ; preds = %bb.az, %bb.ay, %bb.aw
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.kn, %bb.ay ], [ %i.kq, %bb.az ], [ %i.kc, %bb.aw ]
  %i.kr = icmp ne i8 %.sroa.0.0.i.i.i.i.i, -1     ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -16
  %.sroa.01.0.i.i76 = select i1 %i.kr, ptr %2, ptr %i.ks
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i76, i64 %.sroa.27.129.i74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.130.i73, i64 16, i1 false), !alias.scope !5476, !noalias !5477
  %i.ku = zext i1 %i.kr to i64
  %i.kv = add i64 %.sroa.27.129.i74, %i.ku        ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 16 ; 2 uses
  %.val20.i77 = load ptr, ptr %i.kw, align 8, !alias.scope !5463, !noalias !5466, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5480)
  call void @llvm.experimental.noalias.scope.decl(metadata !5483)
  %i.kx = load i64, ptr %.val20.i77, align 8, !range !16, !alias.scope !5483, !noalias !5485, !noundef !6
  %i.ky = icmp eq i64 %i.kx, -1                   ; 3 uses
  %not..i.i.i.i24.i = xor i1 %i.ky, true          ; 2 uses
  %.neg.i.i.i.i25.i = sext i1 %not..i.i.i.i24.i to i8
  %i.kz = add nsw i8 %.neg.i.i.i.i25.i, %i.jz
  %i.la = xor i1 %i.jy, %i.ky
  br i1 %i.la, label %bb.ba, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit29.i

bb.ba:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit.i
  br i1 %i.jy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 %not..i.i.i.i24.i)
  %i.lb = load ptr, ptr %i.jv, align 8, !alias.scope !5480, !noalias !5486, !nonnull !6, !noundef !6
  %i.lc = load i64, ptr %i.jw, align 8, !alias.scope !5480, !noalias !5486, !noundef !6 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.val20.i77, i64 8
  %i.ld = load ptr, ptr %9, align 8, !alias.scope !5483, !noalias !5485, !nonnull !6, !noundef !6
  %i.le = getelementptr inbounds nuw i8, ptr %.val20.i77, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !5483, !noalias !5485, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i27.i = call i64 @llvm.umin.i64(i64 %i.lc, i64 %i.lf)
  %i.lg = call i32 @memcmp(ptr nonnull %i.lb, ptr nonnull %i.ld, i64 %spec.store.select.i.i.i.i27.i), !noalias !5487 ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp eq i32 %i.lg, 0
  %i.lj = sub i64 %i.lc, %i.lf
  %spec.select.i.i.i.i28.i = select i1 %i.li, i64 %i.lj, i64 %i.lh
  %i.lk = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i28.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit29.i

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 %i.ky)
  %i.ll = load i8, ptr %i.jv, align 8, !range !3770, !alias.scope !5480, !noalias !5486, !noundef !6
  %10 = getelementptr inbounds nuw i8, ptr %.val20.i77, i64 8
  %i.lm = load i8, ptr %10, align 8, !range !3770, !alias.scope !5483, !noalias !5485, !noundef !6
  %i.ln = call i8 @llvm.ucmp.i8.i8(i8 %i.ll, i8 %i.lm)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit29.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit29.i: ; preds = %bb.bc, %bb.bb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit.i
  %.sroa.0.0.i.i.i.i26.i = phi i8 [ %i.lk, %bb.bb ], [ %i.ln, %bb.bc ], [ %i.kz, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit.i ]
  %i.lo = icmp ne i8 %.sroa.0.0.i.i.i.i26.i, -1   ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -32
  %.sroa.01.0.i30.i78 = select i1 %i.lo, ptr %2, ptr %i.lp
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i30.i78, i64 %i.kv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, ptr noundef nonnull align 8 dereferenceable(16) %i.kw, i64 16, i1 false), !alias.scope !5476, !noalias !5488
  %i.lr = zext i1 %i.lo to i64
  %i.ls = add i64 %i.kv, %i.lr                    ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 32 ; 2 uses
  %.val18.i79 = load ptr, ptr %i.lt, align 8, !alias.scope !5463, !noalias !5466, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5491)
  call void @llvm.experimental.noalias.scope.decl(metadata !5494)
  %i.lu = load i64, ptr %.val18.i79, align 8, !range !16, !alias.scope !5494, !noalias !5496, !noundef !6
  %i.lv = icmp eq i64 %i.lu, -1                   ; 3 uses
  %not..i.i.i.i31.i = xor i1 %i.lv, true          ; 2 uses
  %.neg.i.i.i.i32.i = sext i1 %not..i.i.i.i31.i to i8
  %i.lw = add nsw i8 %.neg.i.i.i.i32.i, %i.jz
  %i.lx = xor i1 %i.jy, %i.lv
  br i1 %i.lx, label %bb.bd, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit36.i

bb.bd:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit29.i
  br i1 %i.jy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 %not..i.i.i.i31.i)
  %i.ly = load ptr, ptr %i.jv, align 8, !alias.scope !5491, !noalias !5497, !nonnull !6, !noundef !6
  %i.lz = load i64, ptr %i.jw, align 8, !alias.scope !5491, !noalias !5497, !noundef !6 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.val18.i79, i64 8
  %i.ma = load ptr, ptr %11, align 8, !alias.scope !5494, !noalias !5496, !nonnull !6, !noundef !6
  %i.mb = getelementptr inbounds nuw i8, ptr %.val18.i79, i64 16
  %i.mc = load i64, ptr %i.mb, align 8, !alias.scope !5494, !noalias !5496, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i34.i = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.mc)
  %i.md = call i32 @memcmp(ptr nonnull %i.ly, ptr nonnull %i.ma, i64 %spec.store.select.i.i.i.i34.i), !noalias !5498 ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = icmp eq i32 %i.md, 0
  %i.mg = sub i64 %i.lz, %i.mc
  %spec.select.i.i.i.i35.i = select i1 %i.mf, i64 %i.mg, i64 %i.me
  %i.mh = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i35.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit36.i

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 %i.lv)
  %i.mi = load i8, ptr %i.jv, align 8, !range !3770, !alias.scope !5491, !noalias !5497, !noundef !6
  %12 = getelementptr inbounds nuw i8, ptr %.val18.i79, i64 8
  %i.mj = load i8, ptr %12, align 8, !range !3770, !alias.scope !5494, !noalias !5496, !noundef !6
  %i.mk = call i8 @llvm.ucmp.i8.i8(i8 %i.mi, i8 %i.mj)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit36.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit36.i: ; preds = %bb.bf, %bb.be, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit29.i
  %.sroa.0.0.i.i.i.i33.i = phi i8 [ %i.mh, %bb.be ], [ %i.mk, %bb.bf ], [ %i.lw, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit29.i ]
  %i.ml = icmp ne i8 %.sroa.0.0.i.i.i.i33.i, -1   ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -48
  %.sroa.01.0.i37.i80 = select i1 %i.ml, ptr %2, ptr %i.mm
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i37.i80, i64 %i.ls
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mn, ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i64 16, i1 false), !alias.scope !5476, !noalias !5499
  %i.mo = zext i1 %i.ml to i64
  %i.mp = add i64 %i.ls, %i.mo                    ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 48 ; 2 uses
  %.val16.i81 = load ptr, ptr %i.mq, align 8, !alias.scope !5463, !noalias !5466, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5502)
  call void @llvm.experimental.noalias.scope.decl(metadata !5505)
  %i.mr = load i64, ptr %.val16.i81, align 8, !range !16, !alias.scope !5505, !noalias !5507, !noundef !6
  %i.ms = icmp eq i64 %i.mr, -1                   ; 3 uses
  %not..i.i.i.i38.i = xor i1 %i.ms, true          ; 2 uses
  %.neg.i.i.i.i39.i = sext i1 %not..i.i.i.i38.i to i8
  %i.mt = add nsw i8 %.neg.i.i.i.i39.i, %i.jz
  %i.mu = xor i1 %i.jy, %i.ms
  br i1 %i.mu, label %bb.bg, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i

bb.bg:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit36.i
  br i1 %i.jy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 %not..i.i.i.i38.i)
  %i.mv = load ptr, ptr %i.jv, align 8, !alias.scope !5502, !noalias !5508, !nonnull !6, !noundef !6
  %i.mw = load i64, ptr %i.jw, align 8, !alias.scope !5502, !noalias !5508, !noundef !6 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.val16.i81, i64 8
  %i.mx = load ptr, ptr %13, align 8, !alias.scope !5505, !noalias !5507, !nonnull !6, !noundef !6
  %i.my = getelementptr inbounds nuw i8, ptr %.val16.i81, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !alias.scope !5505, !noalias !5507, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i41.i = call i64 @llvm.umin.i64(i64 %i.mw, i64 %i.mz)
  %i.na = call i32 @memcmp(ptr nonnull %i.mv, ptr nonnull %i.mx, i64 %spec.store.select.i.i.i.i41.i), !noalias !5509 ; 2 uses
  %i.nb = sext i32 %i.na to i64
  %i.nc = icmp eq i32 %i.na, 0
  %i.nd = sub i64 %i.mw, %i.mz
  %spec.select.i.i.i.i42.i = select i1 %i.nc, i64 %i.nd, i64 %i.nb
  %i.ne = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i42.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 %i.ms)
  %i.nf = load i8, ptr %i.jv, align 8, !range !3770, !alias.scope !5502, !noalias !5508, !noundef !6
  %14 = getelementptr inbounds nuw i8, ptr %.val16.i81, i64 8
  %i.ng = load i8, ptr %14, align 8, !range !3770, !alias.scope !5505, !noalias !5507, !noundef !6
  %i.nh = call i8 @llvm.ucmp.i8.i8(i8 %i.nf, i8 %i.ng)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i: ; preds = %bb.bi, %bb.bh, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit36.i
  %.sroa.0.0.i.i.i.i40.i = phi i8 [ %i.ne, %bb.bh ], [ %i.nh, %bb.bi ], [ %i.mt, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit36.i ]
  %i.ni = icmp ne i8 %.sroa.0.0.i.i.i.i40.i, -1   ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %.sroa.43.131.i72, i64 -64 ; 3 uses
  %.sroa.01.0.i44.i82 = select i1 %i.ni, ptr %2, ptr %i.nj
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i44.i82, i64 %i.mp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, ptr noundef nonnull align 8 dereferenceable(16) %i.mq, i64 16, i1 false), !alias.scope !5476, !noalias !5510
  %i.nl = zext i1 %i.ni to i64
  %i.nm = add i64 %i.mp, %i.nl                    ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.9.130.i73, i64 64 ; 3 uses
  %i.no = icmp ult ptr %i.nn, %i.jt
  br i1 %i.no, label %bb.aw, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i, %bb.av
  %.sroa.27.1.lcssa.i52 = phi i64 [ %.sroa.27.0.i47, %bb.av ], [ %i.nm, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i ] ; 2 uses
  %.sroa.9.1.lcssa.i53 = phi ptr [ %.sroa.9.0.i48, %bb.av ], [ %i.nn, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i ] ; 3 uses
  %.sroa.43.1.lcssa.i54 = phi ptr [ %.sroa.43.0.i49, %bb.av ], [ %i.nj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit43.i ] ; 2 uses
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.0.0.i50 ; 2 uses
  %i.nq = icmp ult ptr %.sroa.9.1.lcssa.i53, %i.np
  br i1 %i.nq, label %.lr.ph38.i63, label %._crit_edge39.i55

._crit_edge39.i55:                                ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i, %._crit_edge.i51
  %.sroa.27.2.lcssa.i56 = phi i64 [ %.sroa.27.1.lcssa.i52, %._crit_edge.i51 ], [ %i.ou, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i ] ; 10 uses
  %.sroa.9.2.lcssa.i57 = phi ptr [ %.sroa.9.1.lcssa.i53, %._crit_edge.i51 ], [ %i.ov, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i ] ; 2 uses
  %.sroa.43.2.lcssa.i58 = phi ptr [ %.sroa.43.1.lcssa.i54, %._crit_edge.i51 ], [ %i.or, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i ]
  %i.nr = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0118272
  br i1 %i.nr, label %bb.bn, label %bb.bm

.lr.ph38.i63:                                     ; preds = %._crit_edge.i51, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i
  %.sroa.43.236.i64 = phi ptr [ %i.or, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i ], [ %.sroa.43.1.lcssa.i54, %._crit_edge.i51 ]
  %.sroa.9.235.i65 = phi ptr [ %i.ov, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i ], [ %.sroa.9.1.lcssa.i53, %._crit_edge.i51 ] ; 3 uses
  %.sroa.27.234.i66 = phi i64 [ %i.ou, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i ], [ %.sroa.27.1.lcssa.i52, %._crit_edge.i51 ] ; 2 uses
  %.val.i67 = load ptr, ptr %.sroa.9.235.i65, align 8, !alias.scope !5463, !noalias !5466, !nonnull !6, !align !11, !noundef !6 ; 4 uses
  %.val15.i68 = load ptr, ptr %i.ch, align 8, !alias.scope !5463, !noalias !5466, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5513)
  call void @llvm.experimental.noalias.scope.decl(metadata !5516)
  %i.ns = load i64, ptr %.val15.i68, align 8, !range !16, !alias.scope !5513, !noalias !5518, !noundef !6
  %i.nt = icmp ne i64 %i.ns, -1                   ; 3 uses
  %i.nu = zext i1 %i.nt to i8
  %i.nv = load i64, ptr %.val.i67, align 8, !range !16, !alias.scope !5516, !noalias !5519, !noundef !6
  %i.nw = icmp eq i64 %i.nv, -1                   ; 3 uses
  %not..i.i.i.i45.i = xor i1 %i.nw, true          ; 2 uses
  %.neg.i.i.i.i46.i = sext i1 %not..i.i.i.i45.i to i8
  %i.nx = add nsw i8 %.neg.i.i.i.i46.i, %i.nu
  %i.ny = xor i1 %i.nt, %i.nw
  br i1 %i.ny, label %bb.bj, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i

bb.bj:                                            ; preds = %.lr.ph38.i63
  %i.nz = getelementptr inbounds nuw i8, ptr %.val15.i68, i64 8 ; 2 uses
  br i1 %i.nt, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 %not..i.i.i.i45.i)
  %i.oa = load ptr, ptr %i.nz, align 8, !alias.scope !5513, !noalias !5518, !nonnull !6, !noundef !6
  %i.ob = getelementptr inbounds nuw i8, ptr %.val15.i68, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !alias.scope !5513, !noalias !5518, !noundef !6 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.val.i67, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !5516, !noalias !5519, !nonnull !6, !noundef !6
  %i.of = getelementptr inbounds nuw i8, ptr %.val.i67, i64 16
  %i.og = load i64, ptr %i.of, align 8, !alias.scope !5516, !noalias !5519, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i48.i = call i64 @llvm.umin.i64(i64 %i.oc, i64 %i.og)
  %i.oh = call i32 @memcmp(ptr nonnull %i.oa, ptr nonnull %i.oe, i64 %spec.store.select.i.i.i.i48.i), !noalias !5520 ; 2 uses
  %i.oi = sext i32 %i.oh to i64
  %i.oj = icmp eq i32 %i.oh, 0
  %i.ok = sub i64 %i.oc, %i.og
  %spec.select.i.i.i.i49.i = select i1 %i.oj, i64 %i.ok, i64 %i.oi
  %i.ol = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i49.i, i64 0)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 %i.nw)
  %i.om = load i8, ptr %i.nz, align 8, !range !3770, !alias.scope !5513, !noalias !5518, !noundef !6
  %i.on = getelementptr inbounds nuw i8, ptr %.val.i67, i64 8
  %i.oo = load i8, ptr %i.on, align 8, !range !3770, !alias.scope !5516, !noalias !5519, !noundef !6
  %i.op = call i8 @llvm.ucmp.i8.i8(i8 %i.om, i8 %i.oo)
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2p_5sliceSB17_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB19_B2l_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3A_8CacheKey9cache_key0E0E0B1h_.exit50.i: ; preds = %bb.bl, %bb.bk, %.lr.ph38.i63
  %.sroa.0.0.i.i.i.i47.i = phi i8 [ %i.ol, %bb.bk ], [ %i.op, %bb.bl ], [ %i.nx, %.lr.ph38.i63 ]
  %i.oq = icmp ne i8 %.sroa.0.0.i.i.i.i47.i, -1   ; 2 uses
  %i.or = getelementptr inbounds i8, ptr %.sroa.43.236.i64, i64 -16 ; 3 uses
  %.sroa.01.0.i51.i69 = select i1 %i.oq, ptr %2, ptr %i.or
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i51.i69, i64 %.sroa.27.234.i66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.os, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.235.i65, i64 16, i1 false), !alias.scope !5476, !noalias !5521
  %i.ot = zext i1 %i.oq to i64
  %i.ou = add i64 %.sroa.27.234.i66, %i.ot        ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.9.235.i65, i64 16 ; 3 uses
  %i.ow = icmp ult ptr %i.ov, %i.np
  br i1 %i.ow, label %.lr.ph38.i63, label %._crit_edge39.i55

bb.bm:                                            ; preds = %._crit_edge39.i55
  %i.ox = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i58, i64 -16
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i57, i64 16, i1 false), !alias.scope !5476, !noalias !5524
  %i.oz = add i64 %.sroa.27.2.lcssa.i56, 1
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i57, i64 16
  br label %bb.av

bb.bn:                                            ; preds = %._crit_edge39.i55
  %i.pb = shl i64 %.sroa.27.2.lcssa.i56, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph125, ptr nonnull align 8 %2, i64 %i.pb, i1 false), !alias.scope !5476
  %i.pc = sub i64 %.sroa.16.0118272, %.sroa.27.2.lcssa.i56 ; 6 uses
  %.not47.i59 = icmp eq i64 %.sroa.16.0118272, %.sroa.27.2.lcssa.i56
  %i.pd = getelementptr [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i56 ; 4 uses
  br i1 %.not47.i59, label %.outer.thread, label %.lr.ph45.i60.preheader

.lr.ph45.i60.preheader:                           ; preds = %bb.bn
  %.neg353 = add i64 %.sroa.27.2.lcssa.i56, 1
  %xtraiter348 = and i64 %i.pc, 1
  %i.pe = icmp eq i64 %.sroa.16.0118272, %.neg353
  br i1 %i.pe, label %.lr.ph45.i60.epil.preheader, label %.lr.ph45.i60.preheader.new

.lr.ph45.i60.preheader.new:                       ; preds = %.lr.ph45.i60.preheader
  %unroll_iter351 = and i64 %i.pc, -2
  br label %.lr.ph45.i60

.lr.ph45.i60:                                     ; preds = %.lr.ph45.i60, %.lr.ph45.i60.preheader.new
  %.sroa.07.043.i61 = phi i64 [ 0, %.lr.ph45.i60.preheader.new ], [ %i.pi, %.lr.ph45.i60 ] ; 5 uses
  %niter352 = phi i64 [ 0, %.lr.ph45.i60.preheader.new ], [ %niter352.next.1, %.lr.ph45.i60 ]
  %i.pf = xor i64 %.sroa.07.043.i61, -1
  %i.pg = getelementptr [16 x i8], ptr %i.jr, i64 %i.pf
  %i.ph = getelementptr [16 x i8], ptr %i.pd, i64 %.sroa.07.043.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ph, ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i64 16, i1 false), !alias.scope !5476
  %i.pi = add nuw i64 %.sroa.07.043.i61, 2        ; 2 uses
  %i.pj = xor i64 %.sroa.07.043.i61, -2
  %i.pk = getelementptr [16 x i8], ptr %i.jr, i64 %i.pj
  %i.pl = getelementptr [16 x i8], ptr %i.pd, i64 %.sroa.07.043.i61
  %i.pm = getelementptr i8, ptr %i.pl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pm, ptr noundef nonnull align 8 dereferenceable(16) %i.pk, i64 16, i1 false), !alias.scope !5476
  %niter352.next.1 = add i64 %niter352, 2         ; 2 uses
  %niter352.ncmp.1 = icmp eq i64 %niter352.next.1, %unroll_iter351
  br i1 %niter352.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit.unr-lcssa, label %.lr.ph45.i60

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit.unr-lcssa: ; preds = %.lr.ph45.i60
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit, label %.lr.ph45.i60.epil.preheader

.lr.ph45.i60.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit.unr-lcssa, %.lr.ph45.i60.preheader
  %.sroa.07.043.i61.epil.init = phi i64 [ 0, %.lr.ph45.i60.preheader ], [ %i.pi, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod350 = trunc i64 %i.pc to i1
  call void @llvm.assume(i1 %lcmp.mod350)
  %i.pn = xor i64 %.sroa.07.043.i61.epil.init, -1
  %i.po = getelementptr [16 x i8], ptr %i.jr, i64 %i.pn
  %i.pp = getelementptr [16 x i8], ptr %i.pd, i64 %.sroa.07.043.i61.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, ptr noundef nonnull align 8 dereferenceable(16) %i.po, i64 16, i1 false), !alias.scope !5476
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit.unr-lcssa, %.lr.ph45.i60.epil.preheader
  %i.pq = icmp ugt i64 %.sroa.27.2.lcssa.i56, %.sroa.16.0118272
  br i1 %i.pq, label %bb.bo, label %.outer, !prof !359

.outer.thread:                                    ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph125, i64 %.sroa.27.2.lcssa.i56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ps = icmp ult i64 %i.pc, 33
  br i1 %i.ps, label %.outer._crit_edge, label %.lr.ph

bb.bo:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvB2_9quicksortB1d_NCINvMNtB2v_5sliceSB1d_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1f_B2r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB42_8CacheKey9cache_key0E0E0EB1n_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i56, i64 noundef %.sroa.16.0118272, i64 noundef %.sroa.16.0118272, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB19_ENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2V_12DictElements16into_sorted_elts0E0EB33_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %i.dt, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph95 = phi i64 [ %i.de, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.d = icmp eq i32 %.sroa.025.0.ph94, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph219

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprBy_E12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph219

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprBy_E12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.df, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprBy_E12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.dt, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprBy_E12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.de, %.outer ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB1w_ENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB3i_12DictElements16into_sorted_elts0E0EB3q_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB10_ENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2L_12DictElements16into_sorted_elts0E0EB2T_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.088218, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5527)
  %i.g = lshr i64 %.sroa.16.089217, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 168
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.089217, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph219
  %i.k = call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB18_ENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2U_12DictElements16into_sorted_elts0E0EB32_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph219
  %.val6.i = load ptr, ptr %.sroa.0.0.ph96, align 8, !alias.scope !5527, !noalias !5530, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !5527, !noalias !5530, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %i.l = load ptr, ptr %.val6.i, align 8, !noalias !5532, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !5532, !noundef !6
  %i.o = load ptr, ptr %.val7.i, align 8, !noalias !5532, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !5532, !noundef !6
  %i.r = call noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext false, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q), !noalias !5532
  %i.s = icmp eq i8 %i.r, -1                      ; 2 uses
  %.val5.i = load ptr, ptr %i.i, align 8, !alias.scope !5527, !noalias !5530, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %i.t = load ptr, ptr %.val6.i, align 8, !noalias !5532, !nonnull !6, !noundef !6
  %i.u = load i64, ptr %i.m, align 8, !noalias !5532, !noundef !6
  %i.v = load ptr, ptr %.val5.i, align 8, !noalias !5532, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noalias !5532, !noundef !6
  %i.y = call noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext false, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x), !noalias !5532
  %i.z = icmp eq i8 %i.y, -1
  %i.aa = xor i1 %i.s, %i.z
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %.val7.i, align 8, !noalias !5532, !nonnull !6, !noundef !6
  %i.ac = load i64, ptr %i.p, align 8, !noalias !5532, !noundef !6
  %i.ad = load ptr, ptr %.val5.i, align 8, !noalias !5532, !nonnull !6, !noundef !6
  %i.ae = load i64, ptr %i.w, align 8, !noalias !5532, !noundef !6
  %i.af = call noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext false, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.ae), !noalias !5532
  %i.ag = icmp eq i8 %i.af, -1
  %i.ah = xor i1 %i.s, %i.ag
  %..i.i = select i1 %i.ah, ptr %i.i, ptr %i.h
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.0.ph96, %bb.d ], [ %..i.i, %bb.e ]
  %i.ai = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.aj = sub nuw i64 %i.ai, %i.c                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.aj, 24         ; 3 uses
  %i.ak = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.089217
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %i.aj ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph93, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %.val = load ptr, ptr %i.al, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.am = load ptr, ptr %.sroa.028.0.val, align 8, !nonnull !6, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6
  %i.ap = load ptr, ptr %.val, align 8, !nonnull !6, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !6
  %i.as = call noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext false, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar)
  %i.at = icmp eq i8 %i.as, -1
  br i1 %i.at, label %bb.i, label %.thread
end_hunk_1
begin_hunk_2_@_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter
declare hidden noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVecNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing18resolve_assignment(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 8 captures(none) dereferenceable(144), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_13CommentRanges10intersects(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix15applicable_edit(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 -1, 968) i16 @_RNvMsk_NtCsEhZmuQNqkz_11ruff_linter5codesNtB5_4Rule9from_name(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe11starts_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespaceeNtB2_16PythonWhitespace15trim_whitespace(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #28

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27match_typing_qualified_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16lookup_attribute(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel13lookup_symbol(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapReuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyBO_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits15remove_argumentNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEB6_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i1 noundef zeroext, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22duplicate_union_member16is_optional_type(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_9generated4ExprE4from(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExpruNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker9generator(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB5_9Generator4expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules22duplicate_union_member20DuplicateUnionMemberEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18match_builtin_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBG_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 6) i8 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules23redundant_literal_union18match_builtin_type(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules23redundant_literal_union8ExprTypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBX_(ptr noalias noundef align 8 dereferenceable(32), i8 noundef range(i8 0, 6)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_builtin_symbol(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules24duplicate_literal_member22DuplicateLiteralMemberEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits21remove_unused_importsINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceReEEB6_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance), i64, ptr noundef nonnull align 8, ptr noundef align 8, ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits13remove_member(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef range(i64 0, 128102389400760776), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix11unsafe_edit(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer20get_or_import_symbol(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments19find_argument_value(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib7helpers20is_pathlib_path_call(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix16applicable_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCsEhZmuQNqkz_11ruff_linter8importer15ResolutionErrorE4fromB1n_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue6to_str(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_pytest_style5rules11parametrize35PytestDuplicateParametrizeTestCasesEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i64 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5fixes19fix_unnecessary_map(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef align 8, i8 noundef range(i8 0, 4), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5fixes25fix_unnecessary_list_call(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5fixes30fix_unnecessary_generator_dict(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5fixes34fix_unnecessary_call_around_sorted(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMst_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB7_9generated10AnyNodeRef6ptr_eq(i64 noundef range(i64 0, 94), ptr noundef, i64 noundef range(i64 0, 94), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix12unsafe_editsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB5_4edit4EditEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix12unsafe_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #30

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 -1, 968) i16 @_RNvMNtCsEhZmuQNqkz_11ruff_linter8registryNtNtB4_5codes4Rule9from_code(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpersNtB4_8FileOpen6is_ref(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #28

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters8includes(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCscdodAO9FK5_5alloc6string6StringE18disconnect_sendersCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 128) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCscdodAO9FK5_5alloc6string6StringE10disconnectCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCscdodAO9FK5_5alloc6string6StringE18disconnect_sendersCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 128) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error16value_validationCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error8with_cmdCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer9new_exact(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #32

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #28

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCsEhZmuQNqkz_11ruff_linter3fix7snippetNtB2_17SourceCodeSnippet12full_display(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules15repeated_append11AppendGroupEE14insert_no_growB1V_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprjEE14insert_no_growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCscvBHLZPbXnS_10serde_json5value5ValueE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardE8grow_oneBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules15repeated_append6AppendE8grow_oneBV_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8grow_oneBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsarohYtwVpE2_13libcst_native(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB4_9GeneratorINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB6_7stylist7StylistE4from(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB2_7Stylist11line_ending(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7helpers13QuoteRewriterEB1e_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtNtB8_7set_val9SetValZSTE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic10remove_fix(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard21resolve_applicability(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic7set_fix(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralj1_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB5_8ArrayVecReKj8_EINtNtCs4NRVxsYgnAr_4core7convert7TryFromRSBS_E8try_fromCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 8 captures(none) dereferenceable(144), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze5class24any_qualified_base_classNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django7helpers13is_model_form0EB1u_(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze5class24any_qualified_base_classNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django7helpers8is_model0EB1u_(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins17is_python_builtin(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB1G_3str4iter5SplitcENCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style7helpers11split_names0EE9from_iterB3b_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsS_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValueINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqeE2eq(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue8is_empty(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel20parent_expression_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), i32 noundef range(i32 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze5class24any_qualified_base_classNCNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules20flake8_type_checking7helpers27runtime_required_base_class0EB1u_(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort15AnnotatedImportEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2F_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENCNvNtB14_8annotate16annotate_imports0EE9from_iterB18_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix10safe_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvMs4_NtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB5_10Exceptions13from_try_stmt(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5numpy7helpersNtB4_14ImportSearcherNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_body(ptr noalias noundef align 8 dereferenceable(40), ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12resolve_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer10add_import(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5numpy7helpersNtB5_17AttributeSearcherNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_body(ptr noalias noundef align 8 dereferenceable(160), ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pie5rules18unnecessary_spread17UnnecessarySpreadEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXsb_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_17DictValueIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4last(ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix10safe_editsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB5_4edit4EditEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgQfI1edjipl_9hashbrown3mapINtB4_7HashMapReuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapReuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pie5rules23unnecessary_dict_kwargs21UnnecessaryDictKwargsEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtNtCskLngH8kgpZI_15ruff_python_ast5nodes15DictKeyIteratorNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pie5rules23unnecessary_dict_kwargs23unnecessary_dict_kwargs0EE9from_iterB3H_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterReENtNtCskLngH8kgpZI_15ruff_python_ast5nodes17DictValueIteratorENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pie5rules23unnecessary_dict_kwargs23unnecessary_dict_kwargss1_0ENtCs6Wt4yPw39th_9itertools9Itertools4joinB2K_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers13is_identifier(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules23redundant_numeric_union21RedundantNumericUnionEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull align 8, i8 noundef range(i8 0, 4), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules18generate_union_fix(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtNtB1U_6option6OptionBX_ENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules23redundant_numeric_union19generate_pep604_fix0EB3p_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters4iter(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker21parse_type_annotation(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules24numeric_literal_too_long21NumericLiteralTooLongEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules26future_annotations_in_stub23FutureAnnotationsInStubEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17current_statement(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules27bad_version_info_comparison19BadVersionInfoOrderEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules10flake8_pyi5rules27bad_version_info_comparison24BadVersionInfoComparisonEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits15remove_argumentNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB6_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i1 noundef zeroext, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits12add_argument(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules27generic_not_last_base_class23GenericNotLastBaseClassEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs2_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBodyNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle7helpers14normalize_word(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1
end_hunk_2
