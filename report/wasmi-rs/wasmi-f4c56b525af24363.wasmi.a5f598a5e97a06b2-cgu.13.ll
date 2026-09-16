Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.13?download=true
inline.NumInlined: 466
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort4_stableTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1f_5sliceSB19_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3f_8BTreeMapB1a_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtB4i_8adapters12GenericShuntINtNtB5d_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB60_4core7exports6ExportENCNvMNtB1P_6parserNtB7y_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1R_5error5ErrorEEE0E0EB1R_:bb.a
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %spec.select.i.i.i.i.lobit ; 4 uses
  %i.s = zext i1 %i.h to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.s ; 5 uses
  %i.u = select i1 %i.q, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.u ; 5 uses
  %i.w = select i1 %i.q, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.w ; 4 uses
  %.val8 = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %.val9 = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %.val10 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr i8, ptr %i.r, i64 8
  %.val11 = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 %.val9, i64 %.val11)
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.val8, ptr nonnull readonly %.val10, i64 %spec.store.select.i.i.i.i22), !alias.scope !402 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %.val9, %.val11
  %spec.select.i.i.i.i23 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i.i23, 0  ; 3 uses
  %.val4 = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr i8, ptr %i.x, i64 8
  %.val5 = load i64, ptr %i.af, align 8, !noundef !4 ; 2 uses
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %i.t, i64 8
  %.val7 = load i64, ptr %i.ag, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %.val5, i64 %.val7)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.val4, ptr nonnull readonly %.val6, i64 %spec.store.select.i.i.i.i24), !alias.scope !403 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %.val5, %.val7
  %spec.select.i.i.i.i25 = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp slt i64 %spec.select.i.i.i.i25, 0  ; 3 uses
  %i.am = select i1 %i.ae, ptr %i.v, ptr %i.r, !unpredictable !4
  %i.an = select i1 %i.al, ptr %i.t, ptr %i.x, !unpredictable !4
  %i.ao = select i1 %i.al, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ap = select i1 %i.ae, ptr %i.r, ptr %i.ao, !unpredictable !4 ; 4 uses
  %i.aq = select i1 %i.ae, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.ar = select i1 %i.al, ptr %i.x, ptr %i.aq, !unpredictable !4 ; 4 uses
  %.val = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val1 = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.val2 = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %.val3 = load i64, ptr %i.at, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.val3)
  %i.au = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i.i26), !alias.scope !404 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp eq i32 %i.au, 0
  %i.ax = sub i64 %.val1, %.val3
  %spec.select.i.i.i.i27 = select i1 %i.aw, i64 %i.ax, i64 %i.av
  %i.ay = icmp slt i64 %spec.select.i.i.i.i27, 0  ; 2 uses
  %i.az = select i1 %i.ay, ptr %i.ar, ptr %i.ap, !unpredictable !4
  %i.ba = select i1 %i.ay, ptr %i.ap, ptr %i.ar, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1s_5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB1s_11collections5btree3mapINtB3s_8BTreeMapB1n_B1Y_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtB4v_8adapters12GenericShuntINtNtB5q_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6d_4core7exports6ExportENCNvMNtB22_6parserNtB7L_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB24_5error5ErrorEEE0E0EB24_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit
  %.sroa.0.05 = phi ptr [ %i.u, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %.val11.i = load ptr, ptr %.sroa.0.05, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val12.i = load i64, ptr %i.e, align 8, !noundef !4 ; 5 uses
  %.val13.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -16
  %.val14.i = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.g = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !415 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp eq i32 %i.g, 0
  %i.j = sub i64 %.val12.i, %.val14.i
  %spec.select.i.i.i.i.i = select i1 %i.i, i64 %i.j, i64 %i.h
  %i.k = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.k, label %bb.d, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit

bb.d:                                             ; preds = %.lr.ph
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.l = icmp eq ptr %i.d, %0
  br i1 %i.l, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.m = icmp eq ptr %i.n, %0
  br i1 %i.m, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.n, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -24 ; 4 uses
  %.val9.i = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %.sroa.0.0.i8, i64 -16
  %.val10.i = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val10.i)
  %i.p = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i.i.i15.i), !alias.scope !416 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %.val12.i, %.val10.i
  %spec.select.i.i.i.i16.i = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = icmp slt i64 %spec.select.i.i.i.i16.i, 0
  br i1 %i.t, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 3 uses
  store ptr %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !417
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !417
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !417
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1e_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB3e_8BTreeMapB19_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtB4h_8adapters12GenericShuntINtNtB5c_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5Z_4core7exports6ExportENCNvMNtB1O_6parserNtB7x_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1Q_5error5ErrorEEE0E0EB1Q_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB12_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB31_8BTreeMapBX_B1y_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtB43_8adapters12GenericShuntINtNtB4X_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5K_4core7exports6ExportENCNvMNtB1C_6parserNtB7i_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1E_5error5ErrorEEE0E0EB1E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i99 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i104 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_.exit
  %.sroa.021.0 = phi i8 [ %i.bk, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread102, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE7reverseB1c_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !450, !noalias !451, !nonnull !4, !noundef !4 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 32
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !450, !noalias !451, !noundef !4 ; 4 uses
  %.val16.i = load ptr, ptr %i.o, align 8, !alias.scope !450, !noalias !451, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !450, !noalias !451, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i40 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i40), !alias.scope !452, !noalias !453 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i41 = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i41, -1  ; 2 uses
  %.not73 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.x, label %.preheader51, label %.preheader

.preheader51:                                     ; preds = %bb.k
  br i1 %.not73, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not73, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread102, label %.lr.ph60

.lr.ph:                                           ; preds = %.preheader51, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader51 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader51 ]
  %.sroa.01.0.i.i56 = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader51 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i56 ; 2 uses
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !450, !noalias !451, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !450, !noalias !451, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i38 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i38), !alias.scope !454, !noalias !453 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i39 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i.i39, 0
  br i1 %i.ae, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i56, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i, label %.lr.ph

.lr.ph60:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i59 = phi i64 [ %i.an, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i59 ; 2 uses
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !450, !noalias !451, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val7.i = load i64, ptr %i.ah, align 8, !alias.scope !450, !noalias !451, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ai = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i), !alias.scope !455, !noalias !453 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp eq i32 %i.ai, 0
  %i.al = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i = select i1 %i.ak, i64 %i.al, i64 %i.aj
  %i.am = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.am, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i

bb.m:                                             ; preds = %.lr.ph60
  %i.an = add nuw i64 %.sroa.01.1.i.i59, 1        ; 2 uses
  %exitcond80.not = icmp eq i64 %i.an, %i.n
  br i1 %exitcond80.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i, label %.lr.ph60

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i: ; preds = %bb.m, %.lr.ph60, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i56, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i59, %.lr.ph60 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ao = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ao)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread102: ; preds = %.preheader
  br i1 %.not5.i104, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i99, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE7reverseB1c_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i
  %i.ap = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ap, 0
  %or.cond = or i1 %i.x, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE7reverseB1c_.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.aq = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3b_8BTreeMapB16_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4e_8adapters12GenericShuntINtNtB59_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5W_4core7exports6ExportENCNvMNtB1L_6parserNtB7u_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1N_5error5ErrorEEE0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !431
  %i.ar = shl nuw nsw i64 %..i36, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE7reverseB1c_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1I_.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4649 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread ], [ %.sroa.0.0.i.i100107111, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1I_.exit.i.i ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i.i4649, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread102
  %i.av = phi i64 [ %i.ap, %bb.n ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread102 ]
  %.sroa.0.0.i.i100107111 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB18_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB38_8BTreeMapB13_B1E_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4b_8adapters12GenericShuntINtNtB56_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5T_4core7exports6ExportENCNvMNtB1I_6parserNtB7r_12ModuleParser15process_exports0EINtNtB8_6result6ResultzNtNtB1K_5error5ErrorEEE0E0EB1K_.exit.i.thread102 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i100107111
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1I_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bb, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1I_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ax = xor i64 %.sroa.0.017.i.i, -1
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.az = getelementptr [24 x i8], ptr %i.aw, i64 %i.ax
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsefoF4u9kbII_5wasmi(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1I_.exit.i.i unwind label %bb.q, !noalias !451

bb.q:                                             ; preds = %.lr.ph.i.i35
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #32, !noalias !451
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1I_.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.bb = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.av
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE7reverseB1c_.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB19_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB39_8BTreeMapB14_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4c_8adapters12GenericShuntINtNtB57_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5U_4core7exports6ExportENCNvMNtB1J_6parserNtB7s_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1L_5error5ErrorEEE0E0EB1L_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE7reverseB1c_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCskKLDkoKarTP_4core5sliceSTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE7reverseB1c_.exit ], [ %i.as, %bb.p ], [ %i.aq, %bb.o ] ; 2 uses
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
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph66, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit
  %.sroa.02.165 = phi i64 [ %.sroa.02.0, %.lr.ph66 ], [ %i.bl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit ] ; 2 uses
  %.sroa.023.164 = phi i64 [ %.sroa.023.0, %.lr.ph66 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit ] ; 4 uses
  %i.bl = add i64 %.sroa.02.165, -1               ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bn, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.164, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.165, %bb.r ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bp, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bl
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4 ; 3 uses
  %i.bs = lshr i64 %i.br, 1                       ; 8 uses
  %i.bt = lshr i64 %.sroa.023.164, 1              ; 6 uses
  %i.bu = add nuw i64 %i.bs, %i.bt                ; 4 uses
  %i.bv = sub i64 %.sroa.09.0, %i.bu
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bv ; 6 uses
  %i.bx = icmp samesign ugt i64 %i.bu, %3
  %i.by = trunc i64 %.sroa.023.164 to i1
  %i.bz = or i64 %i.br, %.sroa.023.164
  %i.ca = trunc i64 %i.bz to i1
  %or.cond3.i = or i1 %i.bx, %i.ca
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = trunc i64 %i.br to i1
  br i1 %i.cb, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cc = shl nuw nsw i64 %i.bu, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1c_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB3c_8BTreeMapB17_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4f_8adapters12GenericShuntINtNtB5a_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5X_4core7exports6ExportENCNvMNtB1M_6parserNtB7v_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1O_5error5ErrorEEE0E0EB1O_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.by, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cd = or i64 %i.bs, 1
  %i.ce = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3b_8BTreeMapB16_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4e_8adapters12GenericShuntINtNtB59_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5W_4core7exports6ExportENCNvMNtB1L_6parserNtB7u_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1N_5error5ErrorEEE0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 384307168202282326) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !432
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bs
  %i.cj = or i64 %i.bt, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB1b_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB3b_8BTreeMapB16_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4e_8adapters12GenericShuntINtNtB59_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5W_4core7exports6ExportENCNvMNtB1L_6parserNtB7u_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1N_5error5ErrorEEE0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 384307168202282326) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !432
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.co = icmp eq i64 %i.bs, 0
  %i.cp = icmp eq i64 %i.bt, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 range(i64 0, -9223372036854775808) %i.bs) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cq, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB32_8BTreeMapBY_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Y_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB5L_4core7exports6ExportENCNvMNtB1D_6parserNtB7j_12ModuleParser15process_exports0EINtNtBa_6result6ResultzNtNtB1F_5error5ErrorEEE0E0EB1F_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bs ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bs, %i.bt  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cr, ptr %i.bw
  %i.cs = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !458
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cu = phi ptr [ %i.di, %.preheader.i ], [ %i.ct, %.critedge.i ] ; 2 uses
  %i.cv = phi ptr [ %i.dh, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cy, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -24 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -24 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !457, !noalias !459, !nonnull !4, !noundef !4
  %i.cz = getelementptr i8, ptr %i.cu, i64 -16
  %.val12.i.i = load i64, ptr %i.cz, align 8, !alias.scope !457, !noalias !459, !noundef !4 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !456, !noalias !460, !nonnull !4, !noundef !4
  %i.da = getelementptr i8, ptr %i.cv, i64 -16
  %.val14.i.i = load i64, ptr %i.da, align 8, !alias.scope !456, !noalias !460, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.db = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !461, !noalias !462 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp eq i32 %i.db, 0
  %i.de = sub i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.dd, i64 %i.de, i64 %i.dc ; 2 uses
  %i.df = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i17.i = select i1 %i.df, ptr %i.cx, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i, i64 24, i1 false), !alias.scope !458, !noalias !463
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.dg ; 3 uses
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %spec.select.i.i.i.i.lobit.i.i ; 3 uses
  %i.dj = icmp eq ptr %i.dh, %i.bw
  %i.dk = icmp eq ptr %i.di, %2
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB3t_8BTreeMapB1b_B1M_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4w_8adapters12GenericShuntINtNtB5r_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6e_4core7exports6ExportENCNvMNtB1Q_6parserNtB7M_12ModuleParser15process_exports0EINtNtBb_6result6ResultzNtNtB1S_5error5ErrorEEE0E0EB1S_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dl = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.bw, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.cr, %.critedge.i ] ; 4 uses
  %i.dm = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !456, !noalias !464, !nonnull !4, !noundef !4
  %i.dn = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dn, align 8, !alias.scope !456, !noalias !464, !noundef !4 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.dm, align 8, !alias.scope !457, !noalias !465, !nonnull !4, !noundef !4
  %i.do = getelementptr i8, ptr %i.dm, i64 8
  %.val7.i.i = load i64, ptr %i.do, align 8, !alias.scope !457, !noalias !465, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRjNtB6_7Display3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core6global10GlobalTypeNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRmNtB6_7Display3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRyNtB6_7Display3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs5zeGauAcNNa_10wasmi_core5table5error10TableErrorNtB6_7Display3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core9func_type8FuncTypeNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs5zeGauAcNNa_10wasmi_core5table5error10TableErrorNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs6kx5fqqPdgs_8wasmi_ir5indexNtB5_12InternalFuncNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1VvpiNK3DOA_4wast5error10ErrorInnerENtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder3PosNtNtCs6kx5fqqPdgs_8wasmi_ir2op2OpENtB6_5Debug3fmtBH_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs1VvpiNK3DOA_4wast5lexer8LexErrorNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsf_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRtNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtB5_12WasmiRefTypeINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7RefTypeE4from(i24) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1t_(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core6global10MutabilityNtB6_5Debug3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi7reftype8NullableNtNtBB_4func4FuncENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi7reftype8NullableNtBz_9ExternRefENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtBB_4func4FuncENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtBB_5table5TableENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtBB_6global6GlobalENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtBB_6memory6MemoryENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtBB_7reftype9ExternRefENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtBB_8instance8InstanceENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtBB_8instance6handle12RawAnyHandleENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi6global6GlobalNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi6memory6MemoryNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi4func4FuncNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6labels9LabelUserENtB6_5Debug3fmtB1d_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i16(i16, i16) #23

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6labels5LabelENtB6_5Debug3fmtB1d_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder3PosNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive12BranchOffsetENtB6_5Debug3fmtBH_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsefoF4u9kbII_5wasmi5table2ty9TableTypeINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6labels5LabelINtNtNtBa_5slice4iter4IterB14_EEB1e_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6labels9LabelUserINtNtNtBa_5slice4iter4IterB14_EEB1e_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #27

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { cold }
attributes #29 = { nounwind }
attributes #30 = { noinline noreturn }
attributes #31 = { noreturn }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { noinline }
attributes #34 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = !{i32 -2, i32 4}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{i8 0, i8 3}
!10 = !{i8 0, i8 2}
!11 = !{i8 0, i8 7}
!12 = !{i8 0, i8 4}
!13 = !{!"branch_weights", i32 4001, i32 4000000}
!14 = !{i64 4}
!15 = !{i64 2}
!16 = !{i64 8}
!17 = !{i8 1, i8 13}
!18 = !{i32 0, i32 2}
!19 = !{i64 0, i64 2}
!20 = !{!"branch_weights", i32 4000000, i32 4001}
!21 = !{i64 0, i64 -9223372036854775808}
!22 = !{i8 0, i8 6}
!23 = !{i8 0, i8 20}
!24 = !{i8 0, i8 13}
!25 = !{!"address", !"read_provenance"}
!26 = distinct !{!26, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1k_14LeafOrInternalE14last_leaf_edgeB21_"}
!27 = distinct !{!27, !26, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1k_14LeafOrInternalE14last_leaf_edgeB21_: argument 0"}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEEB1J_"}
!30 = distinct !{!30, !29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEEB1J_: argument 0"}
!31 = distinct !{!31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB1F_"}
!32 = distinct !{!32, !31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB1F_: argument 0"}
!33 = distinct !{!33, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!34 = distinct !{!34, !33, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!35 = distinct !{!35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!36 = distinct !{!36, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!37 = distinct !{!37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEEB1J_"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEEB1J_: argument 0"}
!39 = distinct !{!39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterINtNtBK_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxINtNtNtBK_3vec9into_iter8IntoIterTB1X_B2h_EEEEB2n_"}
!40 = distinct !{!40, !39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterINtNtBK_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxINtNtNtBK_3vec9into_iter8IntoIterTB1X_B2h_EEEEB2n_: argument 0"}
!41 = distinct !{!41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTINtNtB1q_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEEB2z_"}
!42 = distinct !{!42, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTINtNtB1q_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEEB2z_: argument 0"}
!43 = distinct !{!43, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB1F_"}
!44 = distinct !{!44, !43, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB1F_: argument 0"}
!45 = distinct !{!45, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!46 = distinct !{!46, !45, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!47 = distinct !{!47, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!48 = distinct !{!48, !47, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!49 = distinct !{!49, !"_RNvMsX_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_8InternalENtB1m_2KVE22consider_for_balancingB22_"}
!50 = distinct !{!50, !49, !"_RNvMsX_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_8InternalENtB1m_2KVE22consider_for_balancingB22_: argument 1"}
!51 = distinct !{!51, !49, !"_RNvMsX_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_8InternalENtB1m_2KVE22consider_for_balancingB22_: argument 0"}
!52 = distinct !{!52, !"_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE15bulk_steal_leftB1I_"}
!53 = distinct !{!53, !52, !"_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE15bulk_steal_leftB1I_: argument 0"}
!54 = distinct !{!54, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node9slice_shrINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!55 = distinct !{!55, !54, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node9slice_shrINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!56 = distinct !{!56, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node9slice_shrNtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEB16_"}
!57 = distinct !{!57, !56, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node9slice_shrNtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEB16_: argument 0"}
!58 = distinct !{!58, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!59 = distinct !{!59, !58, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 1"}
!60 = distinct !{!60, !58, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtB8_5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!61 = distinct !{!61, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEB1b_"}
!62 = distinct !{!62, !61, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEB1b_: argument 1"}
!63 = distinct !{!63, !61, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEB1b_: argument 0"}
!64 = distinct !{!64, !"_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_8InternalENtB1m_2KVE10replace_kvB22_"}
!65 = distinct !{!65, !64, !"_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_8InternalENtB1m_2KVE10replace_kvB22_: argument 1"}
!66 = distinct !{!66, !64, !"_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_8InternalENtB1m_2KVE10replace_kvB22_: argument 0"}
!67 = distinct !{!67, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node9slice_shrINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2q_"}
!68 = distinct !{!68, !67, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node9slice_shrINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2q_: argument 0"}
!69 = distinct !{!69, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2v_"}
!70 = distinct !{!70, !69, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2v_: argument 1"}
!71 = distinct !{!71, !69, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEEB2v_: argument 0"}
!72 = distinct !{!72, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB19_14LeafOrInternalE6ascendB1P_"}
!73 = distinct !{!73, !72, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB19_14LeafOrInternalE6ascendB1P_: argument 0"}
!74 = distinct !{!74, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB23_"}
!75 = distinct !{!75, !74, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB23_: argument 0"}
!76 = distinct !{!76, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalEB1S_"}
!77 = distinct !{!77, !76, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalEB1S_: argument 0"}
!78 = distinct !{!78, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEEB1Q_"}
!79 = distinct !{!79, !78, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEEB1Q_: argument 0"}
!80 = distinct !{!80, !"_RNvMsv_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB19_8InternalE4pushB1P_"}
!81 = distinct !{!81, !80, !"_RNvMsv_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB19_8InternalE4pushB1P_: argument 0"}
!82 = distinct !{!82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!83 = distinct !{!83, !82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!84 = distinct !{!84, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1k_14LeafOrInternalE14last_leaf_edgeB21_"}
!85 = distinct !{!85, !84, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1k_14LeafOrInternalE14last_leaf_edgeB21_: argument 0"}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB23_"}
!88 = distinct !{!88, !87, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB23_: argument 0"}
!89 = distinct !{!89, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalEB1S_"}
!90 = distinct !{!90, !89, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalEB1S_: argument 0"}
!91 = distinct !{!91, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEEB1Q_"}
!92 = distinct !{!92, !91, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEEB1Q_: argument 0"}
!93 = distinct !{!93, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB19_4LeafE16push_with_handleB1P_"}
!94 = distinct !{!94, !93, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB19_4LeafE16push_with_handleB1P_: argument 1"}
!95 = distinct !{!95, !93, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB19_4LeafE16push_with_handleB1P_: argument 0"}
!96 = distinct !{!96, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi"}
!97 = distinct !{!97, !96, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi: argument 0"}
!98 = !{!27}
!99 = !{i32 -1, i32 4}
!100 = !{!30}
!101 = !{!32}
!102 = !{!34, !32, !30}
!103 = !{!32, !30}
!104 = !{!36, !32, !30}
!105 = !{!38}
!106 = !{!38, !42, !40}
!107 = !{!44}
!108 = !{!46, !44, !38, !42, !40}
!109 = !{!44, !38, !42, !40}
!110 = !{!48, !44, !38}
!111 = !{!51, !50}
!112 = !{!53}
!113 = !{!55}
!114 = !{!57}
!115 = !{!60, !59}
!116 = !{!63, !62}
!117 = !{!66, !65, !53}
!118 = !{!68}
!119 = !{!71, !70}
!120 = !{!73}
!121 = !{!75}
!122 = !{!79, !77, !75}
!123 = !{!79, !75}
!124 = !{!81}
!125 = !{!83}
!126 = !{!85}
!127 = !{!88}
!128 = !{!92, !90, !88}
!129 = !{!92, !88}
!130 = !{!95, !94}
!131 = !{!97}
!132 = distinct !{!132, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!133 = distinct !{!133, !132, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!134 = distinct !{!134, !132, !"_RNvXNtNtCskKLDkoKarTP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!135 = !{!134, !133}
!136 = distinct !{!136, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1F_6handle9RawHandleNtNtNtB1F_6engine10func_types13DedupFuncTypeENtB1j_14LeafOrInternalE14find_key_indexB1z_EB1F_"}
!137 = distinct !{!137, !136, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1F_6handle9RawHandleNtNtNtB1F_6engine10func_types13DedupFuncTypeENtB1j_14LeafOrInternalE14find_key_indexB1z_EB1F_: argument 0"}
!138 = distinct !{!138, !"_RNvXs7_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncTypeNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp"}
!139 = distinct !{!139, !138, !"_RNvXs7_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncTypeNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp: argument 1"}
!140 = distinct !{!140, !"_RNvXsh_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInnerNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp"}
!141 = distinct !{!141, !140, !"_RNvXsh_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInnerNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp: argument 1"}
!142 = distinct !{!142, !138, !"_RNvXs7_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncTypeNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp: argument 0"}
!143 = distinct !{!143, !140, !"_RNvXsh_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInnerNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp: argument 0"}
!144 = distinct !{!144, !"_RINvNtNtCskKLDkoKarTP_4core5slice3cmp13chaining_implNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1T_s_0ECsefoF4u9kbII_5wasmi"}
!145 = distinct !{!145, !144, !"_RINvNtNtCskKLDkoKarTP_4core5slice3cmp13chaining_implNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1T_s_0ECsefoF4u9kbII_5wasmi: argument 0"}
!146 = distinct !{!146, !144, !"_RINvNtNtCskKLDkoKarTP_4core5slice3cmp13chaining_implNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1T_s_0ECsefoF4u9kbII_5wasmi: argument 1"}
!147 = distinct !{!147, !"_RINvNtNtCskKLDkoKarTP_4core5slice3cmp13chaining_implNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1T_s_0ECsefoF4u9kbII_5wasmi"}
!148 = distinct !{!148, !147, !"_RINvNtNtCskKLDkoKarTP_4core5slice3cmp13chaining_implNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1T_s_0ECsefoF4u9kbII_5wasmi: argument 1"}
!149 = distinct !{!149, !147, !"_RINvNtNtCskKLDkoKarTP_4core5slice3cmp13chaining_implNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1T_s_0ECsefoF4u9kbII_5wasmi: argument 0"}
!150 = !{!137}
!151 = !{!139}
!152 = !{!141}
!153 = !{!141, !139}
!154 = !{!143, !142, !137}
!155 = !{!145}
!156 = !{!146}
!157 = !{!146, !143, !141, !142, !139, !137}
!158 = !{!145, !143, !141, !142, !139, !137}
!159 = !{!148, !141, !139}
!160 = !{!149, !143, !142, !137}
end_hunk_1
