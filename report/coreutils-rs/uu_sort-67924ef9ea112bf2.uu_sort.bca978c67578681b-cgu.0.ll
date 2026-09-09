Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBQ_INtB4_16ParallelSliceMutBQ_E11par_sort_byNCNvBS_7sort_by0E0EBS_:bb.a
  %i.o = load i64, ptr %i.n, align 8, !noundef !11
  %i.p = sub nuw nsw i64 %3, %i.j
  %.sroa.022.0 = select i1 %4, ptr %0, ptr %1     ; 2 uses
  %.sroa.025.0 = select i1 %4, ptr %1, ptr %0
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.022.0, i64 %i.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.025.0, i64 %i.i
  %i.s = zext i1 %4 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.p, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %5, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %.sroa.719.0..sroa_idx, align 8
  %.sroa.820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 %i.s, ptr %.sroa.820.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %2, ptr %i.t, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.j, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %5, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %1, ptr %.sroa.712.0..sroa_idx, align 8
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 %i.s, ptr %.sroa.813.0..sroa_idx, align 8
  %i.u = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3ewIIPtxFMv_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i = load ptr, ptr %i.u, align 8, !noalias !7476, !noundef !11 ; 2 uses
  %i.v = icmp eq ptr %.val.i.i, null
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtCs3ewIIPtxFMv_10rayon_core4join12join_contextNCINvNvB4_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB23_INtB1h_16ParallelSliceMutB23_E11par_sort_byNCNvB25_7sort_by0E0E0E0NCIBS_uNCB1c_s_0E0uuE0B25_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a, ptr noundef nonnull align 128 %.val.i.i) #38
  br label %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2u_INtB1I_16ParallelSliceMutB2u_E11par_sort_byNCNvB2w_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2w_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef nonnull align 8 ptr @_RNvNtCs3ewIIPtxFMv_10rayon_core8registry15global_registry() #34, !noalias !7476, !inline_history !7472
  %i.x = load ptr, ptr %i.w, align 8, !noalias !7476, !nonnull !11, !noundef !11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !noalias !7477, !noundef !11 ; 4 uses
  %i.z = icmp eq ptr %.val.i.i.i, null
  br i1 %i.z, label %bb.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.ab = load ptr, ptr %i.aa, align 16, !noalias !7477, !nonnull !11, !noundef !11
  %.not.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not.i, label %bb.j, label %bb.k, !prof !17

bb.i:                                             ; preds = %bb.g
  call fastcc void @_RINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvB1g_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2T_INtB27_16ParallelSliceMutB2T_E11par_sort_byNCNvB2V_7sort_by0E0E0E0NCIB1H_uNCB22_s_0E0uuE0TuuEEB2V_(ptr noundef nonnull align 128 %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.a) #34, !inline_history !7475
  br label %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2u_INtB1I_16ParallelSliceMutB2u_E11par_sort_byNCNvB2w_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2w_.exit

bb.j:                                             ; preds = %bb.h
  call fastcc void @_RNCINvNtCs3ewIIPtxFMv_10rayon_core4join12join_contextNCINvNvB4_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB23_INtB1h_16ParallelSliceMutB23_E11par_sort_byNCNvB25_7sort_by0E0E0E0NCIBS_uNCB1c_s_0E0uuE0B25_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a, ptr noundef nonnull align 128 %.val.i.i.i) #38
  br label %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2u_INtB1I_16ParallelSliceMutB2u_E11par_sort_byNCNvB2w_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2w_.exit

bb.k:                                             ; preds = %bb.h
  call fastcc void @_RINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvB1h_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2U_INtB28_16ParallelSliceMutB2U_E11par_sort_byNCNvB2W_7sort_by0E0E0E0NCIB1I_uNCB23_s_0E0uuE0TuuEEB2W_(ptr noundef nonnull align 128 %i.y, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.a) #34, !inline_history !7475
  br label %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2u_INtB1I_16ParallelSliceMutB2u_E11par_sort_byNCNvB2w_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2w_.exit

_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2u_INtB1I_16ParallelSliceMutB2u_E11par_sort_byNCNvB2w_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2w_.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = sub i64 %i.l, %i.i
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.sroa.022.0, i64 %i.l
  %i.ae = sub i64 %i.o, %i.l
  tail call fastcc void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort9par_mergeNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBL_INtB4_16ParallelSliceMutBL_E11par_sort_byNCNvBN_7sort_by0E0EBN_(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ac, ptr noalias nofree noundef nonnull align 8 %i.ad, i64 noundef %i.ae, ptr noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %5) #34
  br label %bb.d

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #40
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort14break_patternsNtCsgcf5BHVXlUt_7uu_sort4LineEBT_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 384307168202282326) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = add nsw i64 %1, -1
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = lshr i64 -1, %i.c                        ; 3 uses
  %i.e = lshr i64 %1, 1                           ; 2 uses
  %i.f = and i64 %i.e, 288230376151711742         ; 4 uses
  %i.g = add nsw i64 %i.f, -1                     ; 3 uses
  %i.h = shl i64 %1, 13
  %i.i = xor i64 %i.h, %1                         ; 2 uses
  %i.j = lshr i64 %i.i, 7
  %i.k = xor i64 %i.j, %i.i                       ; 2 uses
  %i.l = shl i64 %i.k, 17
  %i.m = xor i64 %i.l, %i.k                       ; 3 uses
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %.not = icmp samesign ult i64 %i.n, %1
  %i.o = select i1 %.not, i64 0, i64 %1
  %spec.select = sub nuw nsw i64 %i.n, %i.o       ; 3 uses
  %i.p = icmp samesign ult i64 %i.g, %1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = icmp samesign ult i64 %spec.select, %1
  br i1 %i.q, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i64 [ %i.g, %bb.a ], [ %i.f, %bb.d ], [ %i.an, %bb.f ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #40
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %spec.select ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = shl i64 %i.m, 13
  %i.u = xor i64 %i.t, %i.m                       ; 2 uses
  %i.v = lshr i64 %i.u, 7
  %i.w = xor i64 %i.v, %i.u                       ; 2 uses
  %i.x = shl i64 %i.w, 17
  %i.y = xor i64 %i.x, %i.w                       ; 3 uses
  %i.z = and i64 %i.y, %i.d                       ; 2 uses
  %.not.1 = icmp samesign ult i64 %i.z, %1
  %i.aa = select i1 %.not.1, i64 0, i64 %1
  %spec.select.1 = sub nuw nsw i64 %i.z, %i.aa    ; 3 uses
  %i.ab = icmp samesign ult i64 %i.f, %1
  br i1 %i.ab, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %spec.select.1, %1
  br i1 %i.ac, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %spec.select.1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = shl i64 %i.y, 13
  %i.ag = xor i64 %i.af, %i.y                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 7
  %i.ai = xor i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = shl i64 %i.ai, 17
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, %i.d                     ; 2 uses
  %.not.2 = icmp samesign ult i64 %i.al, %1
  %i.am = select i1 %.not.2, i64 0, i64 %1
  %spec.select.2 = sub nuw nsw i64 %i.al, %i.am   ; 3 uses
  %i.an = or i64 %i.e, 1                          ; 3 uses
  %i.ao = icmp samesign ult i64 %i.an, %1
  br i1 %i.ao, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp samesign ult i64 %spec.select.2, %1
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %spec.select.2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.b
  %spec.select.lcssa27 = phi i64 [ %spec.select, %bb.b ], [ %spec.select.1, %bb.e ], [ %spec.select.2, %bb.g ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %spec.select.lcssa27, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #40
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort22partial_insertion_sortNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCNvB11_7sort_by0E0EB11_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 21, 384307168202282326) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 20 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !11, !align !13 ; 8 uses
  %i.b = getelementptr i8, ptr %.val, i64 8       ; 7 uses
  %i.c = icmp samesign ult i64 %1, 50
  br i1 %i.c, label %.lr.ph.us, label %.lr.ph

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %.lr.ph32
  %.sroa.02.120.us3184 = phi i64 [ %i.d, %.lr.ph32 ], [ 1, %.lr.ph85.preheader ] ; 3 uses
  %i.d = add nuw nsw i64 %.sroa.02.120.us3184, 1  ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.120.us3184
  %.val.i.us = load ptr, ptr %.val, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11
  %.val1.i.us = load ptr, ptr %i.b, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.g = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.us) #34
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph85
  %exitcond41.not = icmp eq i64 %.sroa.02.120.us3184, %i.m
  br i1 %exitcond41.not, label %.split28, label %.lr.ph85

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph85
  %i.i = icmp eq i64 %i.d, %1
  br label %.split28

.lr.ph.us:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.us29 = load ptr, ptr %.val, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11
  %.val1.i.us30 = load ptr, ptr %i.b, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.k = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.us29, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.us30, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.us30) #34
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %.split28, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %.lr.ph.us
  %i.m = add nsw i64 %1, -2
  br label %.lr.ph85

.split28:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph32, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph32 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.i, %.._crit_edge.us.loopexit_crit_edge ], [ true, %bb.b ]
  ret i1 %.us-phi

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.02.120 = phi i64 [ %i.u, %bb.b ], [ 1, %bb.a ] ; 12 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.120
  %i.o = add nsw i64 %.sroa.02.120, -1            ; 2 uses
  %i.p = icmp samesign ult i64 %i.o, %1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.o
  %.val.i = load ptr, ptr %.val, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11
  %.val1.i = load ptr, ptr %i.b, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.r = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i) #34
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph
  %i.t = icmp eq i64 %.sroa.02.120, %1
  br i1 %i.t, label %.split28, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.u = add nuw nsw i64 %.sroa.02.120, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %1
  br i1 %exitcond.not, label %.split28, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.v = add nsw i64 %.sroa.02.120, -1            ; 4 uses
  %i.w = icmp ult i64 %i.v, %1
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.c
  %.lcssa36 = phi i64 [ %i.v, %bb.c ], [ %i.aj, %bb.h ], [ %i.ax, %bb.m ], [ %i.bl, %bb.r ], [ %i.bz, %bb.w ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.lcssa36, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp samesign ugt i64 %.sroa.02.120, 1
  br i1 %i.z, label %bb.aa, label %.split.1

bb.f:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i
  %.sroa.02.1.lcssa.lcssa39 = phi i64 [ %.sroa.02.1.lcssa.4, %bb.x ], [ %.sroa.02.1.lcssa.1, %bb.i ], [ %.sroa.02.1.lcssa.2, %bb.n ], [ %.sroa.02.1.lcssa.3, %bb.s ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.1.lcssa.lcssa39, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #40
  unreachable

.split.1:                                         ; preds = %bb.e, %bb.aa
  %i.aa = icmp samesign ult i64 %.sroa.02.120, %1 ; 2 uses
  br i1 %i.aa, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %.split.1, %bb.g
  %.sroa.02.120.1 = phi i64 [ %i.ah, %bb.g ], [ %.sroa.02.120, %.split.1 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.120.1
  %i.ac = add nsw i64 %.sroa.02.120.1, -1         ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ac
  %.val.i.1 = load ptr, ptr %.val, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11
  %.val1.i.1 = load ptr, ptr %i.b, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.af = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.1) #34
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %._crit_edge.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  %i.ah = add i64 %.sroa.02.120.1, 1              ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond.1.not, label %.split28, label %.lr.ph.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.split.1
  %.sroa.02.1.lcssa.1 = phi i64 [ %.sroa.02.120, %.split.1 ], [ %.sroa.02.120.1, %.lr.ph.1 ] ; 10 uses
  %i.ai = icmp eq i64 %.sroa.02.1.lcssa.1, %1
  br i1 %i.ai, label %.split28, label %bb.h

bb.h:                                             ; preds = %._crit_edge.1
  %i.aj = add i64 %.sroa.02.1.lcssa.1, -1         ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %1
  br i1 %i.ak, label %bb.i, label %bb.d

bb.i:                                             ; preds = %bb.h
  br i1 %i.aa, label %bb.j, label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.1.lcssa.1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = icmp ugt i64 %.sroa.02.1.lcssa.1, 1
  br i1 %i.an, label %bb.k, label %.split.2

bb.k:                                             ; preds = %bb.j
  tail call void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort25insertion_sort_shift_leftNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCNvB14_7sort_by0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #39
  tail call void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort26insertion_sort_shift_rightNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCNvB15_7sort_by0E0EB15_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #39
  br label %.split.2

.split.2:                                         ; preds = %bb.k, %bb.j
  %i.ao = icmp ult i64 %.sroa.02.1.lcssa.1, %1    ; 2 uses
  br i1 %i.ao, label %.lr.ph.2, label %._crit_edge.2

.lr.ph.2:                                         ; preds = %.split.2, %bb.l
  %.sroa.02.120.2 = phi i64 [ %i.av, %bb.l ], [ %.sroa.02.1.lcssa.1, %.split.2 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.120.2
  %i.aq = add nsw i64 %.sroa.02.120.2, -1         ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.aq
  %.val.i.2 = load ptr, ptr %.val, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11
  %.val1.i.2 = load ptr, ptr %i.b, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.at = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.2) #34
  %i.au = icmp eq i8 %i.at, -1
  br i1 %i.au, label %._crit_edge.2, label %bb.l

bb.l:                                             ; preds = %.lr.ph.2
  %i.av = add i64 %.sroa.02.120.2, 1              ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.av, %1
  br i1 %exitcond.2.not, label %.split28, label %.lr.ph.2

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.split.2
  %.sroa.02.1.lcssa.2 = phi i64 [ %.sroa.02.1.lcssa.1, %.split.2 ], [ %.sroa.02.120.2, %.lr.ph.2 ] ; 10 uses
  %i.aw = icmp eq i64 %.sroa.02.1.lcssa.2, %1
  br i1 %i.aw, label %.split28, label %bb.m

bb.m:                                             ; preds = %._crit_edge.2
  %i.ax = add i64 %.sroa.02.1.lcssa.2, -1         ; 4 uses
  %i.ay = icmp ult i64 %i.ax, %1
  br i1 %i.ay, label %bb.n, label %bb.d

bb.n:                                             ; preds = %bb.m
  br i1 %i.ao, label %bb.o, label %bb.f

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.1.lcssa.2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = icmp ugt i64 %.sroa.02.1.lcssa.2, 1
  br i1 %i.bb, label %bb.p, label %.split.3

bb.p:                                             ; preds = %bb.o
  tail call void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort25insertion_sort_shift_leftNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCNvB14_7sort_by0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #39
  tail call void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort26insertion_sort_shift_rightNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCNvB15_7sort_by0E0EB15_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.2, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #39
  br label %.split.3

.split.3:                                         ; preds = %bb.p, %bb.o
  %i.bc = icmp ult i64 %.sroa.02.1.lcssa.2, %1    ; 2 uses
  br i1 %i.bc, label %.lr.ph.3, label %._crit_edge.3

.lr.ph.3:                                         ; preds = %.split.3, %bb.q
  %.sroa.02.120.3 = phi i64 [ %i.bj, %bb.q ], [ %.sroa.02.1.lcssa.2, %.split.3 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.120.3
  %i.be = add nsw i64 %.sroa.02.120.3, -1         ; 2 uses
  %i.bf = icmp ult i64 %i.be, %1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.be
  %.val.i.3 = load ptr, ptr %.val, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11
  %.val1.i.3 = load ptr, ptr %i.b, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.bh = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.3) #34
  %i.bi = icmp eq i8 %i.bh, -1
  br i1 %i.bi, label %._crit_edge.3, label %bb.q

bb.q:                                             ; preds = %.lr.ph.3
  %i.bj = add i64 %.sroa.02.120.3, 1              ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.bj, %1
  br i1 %exitcond.3.not, label %.split28, label %.lr.ph.3

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.split.3
  %.sroa.02.1.lcssa.3 = phi i64 [ %.sroa.02.1.lcssa.2, %.split.3 ], [ %.sroa.02.120.3, %.lr.ph.3 ] ; 10 uses
  %i.bk = icmp eq i64 %.sroa.02.1.lcssa.3, %1
  br i1 %i.bk, label %.split28, label %bb.r

bb.r:                                             ; preds = %._crit_edge.3
  %i.bl = add i64 %.sroa.02.1.lcssa.3, -1         ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %1
  br i1 %i.bm, label %bb.s, label %bb.d

bb.s:                                             ; preds = %bb.r
  br i1 %i.bc, label %bb.t, label %bb.f

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.1.lcssa.3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = icmp ugt i64 %.sroa.02.1.lcssa.3, 1
  br i1 %i.bp, label %bb.u, label %.split.4

bb.u:                                             ; preds = %bb.t
  tail call void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort25insertion_sort_shift_leftNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCNvB14_7sort_by0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %.sroa.02.1.lcssa.3, i64 noundef %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #39
end_hunk_0
begin_hunk_1_@_RNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings:bb.a

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit330: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i323.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd)
  store i64 0, ptr %i.hd, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store i64 0, ptr %.sroa.543.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %.not.i = icmp slt i64 %.sroa.6.0.copyload, 0
  br i1 %.not.i, label %bb.bk, label %bb.bi, !prof !12

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit330
  %i.nr = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.nr, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !10538
  %i.ns = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.sroa.6.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10538 ; 18 uses
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %bb.bk, label %bb.bl

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit353: ; preds = %bb.co, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit350, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit313
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !nonnull !11, !noundef !11 ; 14 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nx = load i64, ptr %i.nw, align 8, !noundef !11 ; 12 uses
  %.idx1542 = mul nuw nsw i64 %i.nx, 56
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.idx1542 ; 13 uses
  %cond = icmp eq i64 %i.nx, 0
  br i1 %cond, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvBS_19emit_debug_warningss0_0EBS_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit353
  %.idx = shl nuw nsw i64 %3, 6
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.oa = icmp eq i64 %3, 0
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.og = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.oi = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.sroa.51093.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %.sroa.47.0..sroa_idx.i810 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ok = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.sroa.51101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.sroa.91103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.op = load i8, ptr %1, align 1, !range !18
  %i.oq = trunc nuw i8 %i.op to i1                ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.51112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.81113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.pe = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.51130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.81131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.51121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.81122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  br label %bb.cp

bb.bk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit330, %bb.bj
  %.sroa.41198.0.ph = phi i64 [ 1, %bb.bj ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit330 ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41198.0.ph, i64 %.sroa.6.0.copyload) #37
  unreachable

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ns, ptr nonnull align 1 %.sroa.4.0.copyload, i64 %.sroa.6.0.copyload, i1 false)
  %cond1427 = icmp eq i64 %.sroa.6.0.copyload, 1
  %i.ps = load i8, ptr %i.ns, align 1, !alias.scope !10539, !noalias !10540 ; 2 uses
  br i1 %cond1427, label %bb.bm, label %thread-pre-split.i

bb.bm:                                            ; preds = %bb.bl
  switch i8 %i.ps, label %bb.bt [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.bl
  switch i8 %i.ps, label %bb.bt [
    i8 43, label %bb.bn
    i8 45, label %bb.bo
  ]

bb.bn:                                            ; preds = %thread-pre-split.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  %i.pu = add nsw i64 %.sroa.6.0.copyload, -1
  br label %bb.bt

bb.bo:                                            ; preds = %thread-pre-split.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ns, i64 1 ; 2 uses
  %i.pw = add nsw i64 %.sroa.6.0.copyload, -1     ; 2 uses
  %i.px = icmp samesign ult i64 %.sroa.6.0.copyload, 17
  br i1 %i.px, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bo, %bb.br
  %.sroa.0.1136.i = phi ptr [ %i.py, %bb.br ], [ %i.pv, %bb.bo ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.pz, %bb.br ], [ %i.pw, %bb.bo ]
  %.sroa.084.0134.i = phi i64 [ %i.qk, %bb.br ], [ 0, %bb.bo ]
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.pz = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.qa = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.qb = extractvalue { i64, i1 } %i.qa, 0
  %i.qc = extractvalue { i64, i1 } %i.qa, 1
  br i1 %i.qc, label %.thread, label %bb.bp, !prof !21

bb.bp:                                            ; preds = %.lr.ph.i
  %i.qd = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !10539, !noalias !10540, !noundef !11
  %i.qe = zext i8 %i.qd to i32
  %i.qf = add nsw i32 %i.qe, -48                  ; 2 uses
  %i.qg = icmp ult i32 %i.qf, 10
  br i1 %i.qg, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %bb.bp
  %i.qh = zext nneg i32 %i.qf to i64
  %i.qi = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.qb, i64 %i.qh) ; 2 uses
  %i.qj = extractvalue { i64, i1 } %i.qi, 1
  br i1 %i.qj, label %.thread, label %bb.br, !prof !21

bb.br:                                            ; preds = %bb.bq
  %i.qk = extractvalue { i64, i1 } %i.qi, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.pz, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.bo, %bb.bs
  %.sroa.0.2140.i = phi ptr [ %i.qr, %bb.bs ], [ %i.pv, %bb.bo ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.qq, %bb.bs ], [ %i.pw, %bb.bo ]
  %.sroa.084.2138.i = phi i64 [ %i.qt, %bb.bs ], [ 0, %bb.bo ]
  %i.ql = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !10539, !noalias !10540, !noundef !11
  %i.qm = zext i8 %i.ql to i32
  %i.qn = add nsw i32 %i.qm, -48                  ; 2 uses
  %i.qo = icmp ult i32 %i.qn, 10
  br i1 %i.qo, label %bb.bs, label %.thread

bb.bs:                                            ; preds = %.lr.ph141.i
  %i.qp = mul i64 %.sroa.084.2138.i, 10
  %i.qq = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.qs = zext nneg i32 %i.qn to i64
  %i.qt = sub i64 %i.qp, %i.qs                    ; 2 uses
  %.not103.i = icmp eq i64 %i.qq, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.bt:                                            ; preds = %bb.bm, %bb.bn, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.pu, %bb.bn ], [ %.sroa.6.0.copyload, %thread-pre-split.i ], [ %.sroa.6.0.copyload, %bb.bm ] ; 4 uses
  %.sroa.0.0.i332 = phi ptr [ %i.pt, %bb.bn ], [ %i.ns, %thread-pre-split.i ], [ %i.ns, %bb.bm ] ; 2 uses
  %i.qu = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.qu, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.bt
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.bt, %bb.bw
  %.sroa.0.3145.i = phi ptr [ %i.qv, %bb.bw ], [ %.sroa.0.0.i332, %bb.bt ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.qw, %bb.bw ], [ %.sroa.26.0.i, %bb.bt ]
  %.sroa.084.3143.i = phi i64 [ %i.rh, %bb.bw ], [ 0, %bb.bt ]
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.qw = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.qx = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.qy = extractvalue { i64, i1 } %i.qx, 0
  %i.qz = extractvalue { i64, i1 } %i.qx, 1
  br i1 %i.qz, label %.thread, label %bb.bu, !prof !21

bb.bu:                                            ; preds = %.preheader111.i
  %i.ra = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !10539, !noalias !10540, !noundef !11
  %i.rb = zext i8 %i.ra to i32
  %i.rc = add nsw i32 %i.rb, -48                  ; 2 uses
  %i.rd = icmp ult i32 %i.rc, 10
  br i1 %i.rd, label %bb.bv, label %.thread

bb.bv:                                            ; preds = %bb.bu
  %i.re = zext nneg i32 %i.rc to i64
  %i.rf = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.qy, i64 %i.re) ; 2 uses
  %i.rg = extractvalue { i64, i1 } %i.rf, 1
  br i1 %i.rg, label %.thread, label %bb.bw, !prof !21

bb.bw:                                            ; preds = %bb.bv
  %i.rh = extractvalue { i64, i1 } %i.rf, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.qw, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.bx
  %.sroa.0.4149.i = phi ptr [ %i.ro, %bb.bx ], [ %.sroa.0.0.i332, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.rn, %bb.bx ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.rq, %bb.bx ], [ 0, %.preheader.i ]
  %i.ri = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !10539, !noalias !10540, !noundef !11
  %i.rj = zext i8 %i.ri to i32
  %i.rk = add nsw i32 %i.rj, -48                  ; 2 uses
  %i.rl = icmp ult i32 %i.rk, 10
  br i1 %i.rl, label %bb.bx, label %.thread

bb.bx:                                            ; preds = %.lr.ph150.i
  %i.rm = mul i64 %.sroa.084.4147.i, 10
  %i.rn = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.rp = zext nneg i32 %i.rk to i64
  %i.rq = add i64 %i.rm, %i.rp                    ; 2 uses
  %.not105.i = icmp eq i64 %i.rn, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i, %bb.bq, %bb.bp, %.lr.ph141.i, %.preheader111.i, %bb.bu, %bb.bv, %.lr.ph150.i, %bb.bm, %bb.bm, %bb.bi
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.bi ], [ %i.ns, %.preheader111.i ], [ %i.ns, %.lr.ph150.i ], [ %i.ns, %bb.bm ], [ %i.ns, %.lr.ph141.i ], [ %i.ns, %bb.bm ], [ %i.ns, %bb.bv ], [ %i.ns, %bb.bu ], [ %i.ns, %bb.bp ], [ %i.ns, %bb.bq ], [ %i.ns, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.hc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %.sroa.6.0.copyload) #39
  %i.rr = load i8, ptr %i.hc, align 8, !range !18, !noundef !11
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %bb.ca, label %bb.cb

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.br, %bb.bs, %bb.bw, %bb.bx, %.preheader.i
  %.sroa.151079.0 = phi i64 [ %i.rh, %bb.bw ], [ %i.qt, %bb.bs ], [ %i.rq, %bb.bx ], [ 0, %.preheader.i ], [ %i.qk, %bb.br ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 6, i64 noundef %.sroa.151079.0) #34
  br label %bb.by

bb.by:                                            ; preds = %bb.cb, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.rt = phi ptr [ %.ph, %bb.cb ], [ %i.ns, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ha) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  %i.ru = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.ru, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit335, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rt, i64 noundef %.sroa.6.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10541
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit335

bb.ca:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  store i64 %.sroa.6.0.copyload, ptr %i.hb, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.hb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ha) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit335

bb.cb:                                            ; preds = %.thread
  %i.rv = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.rw = load double, ptr %i.rv, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 6, double noundef %i.rw) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  br label %bb.by

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit335: ; preds = %bb.bz, %bb.by, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz)
  store ptr %i.he, ptr %i.gz, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !10542
  store ptr %i.hi, ptr %i.bx, align 8, !noalias !10542
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr null, ptr %i.rx, align 8, !noalias !10542
  %i.ry = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @111, ptr noundef nonnull @56, ptr noundef nonnull %i.gz) #34
  %i.rz = load ptr, ptr %i.rx, align 8, !noalias !10542, !noundef !11 ; 7 uses
  %.not.i5.i337 = icmp eq ptr %i.rz, null         ; 2 uses
  br i1 %i.ry, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit335
  br i1 %.not.i5.i337, label %bb.ch, label %bb.ci, !prof !21

bb.cd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit335
  br i1 %.not.i5.i337, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i339.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !10543
  %i.sa = ptrtoint ptr %i.rz to i64               ; 2 uses
  %i.sb = and i64 %i.sa, 3
  switch i64 %i.sb, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i338
    i64 3, label %bb.cf
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i338
    i64 1, label %bb.cg
  ], !prof !31

bb.cf:                                            ; preds = %bb.ce
  %i.sc = icmp ult ptr %i.rz, inttoptr (i64 188978561024 to ptr)
  %i.sd = and i64 %i.sa, 1095216660480
  %i.se = icmp ne i64 %i.sd, 1095216660480
  call void @llvm.assume(i1 %i.sc)
  call void @llvm.assume(i1 %i.se)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i338

bb.cg:                                            ; preds = %bb.ce
  %i.sf = getelementptr i8, ptr %i.rz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sf) ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.sf, ptr %i.sg, align 8, !alias.scope !10544, !noalias !10543
  store i8 3, ptr %i.bw, align 8, !alias.scope !10544, !noalias !10543
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sg) #34, !noalias !10545
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i338

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i338: ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !10543
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i339.thread

bb.ch:                                            ; preds = %bb.cc
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #40
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i339.thread: ; preds = %bb.cd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !10542
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit346

bb.ci:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !10542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !10546
  %i.sh = ptrtoint ptr %i.rz to i64               ; 2 uses
  %i.si = and i64 %i.sh, 3
  switch i64 %i.si, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i344
    i64 3, label %bb.cj
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i344
    i64 1, label %bb.ck
  ], !prof !31

bb.cj:                                            ; preds = %bb.ci
  %i.sj = icmp ult ptr %i.rz, inttoptr (i64 188978561024 to ptr)
  %i.sk = and i64 %i.sh, 1095216660480
  %i.sl = icmp ne i64 %i.sk, 1095216660480
  call void @llvm.assume(i1 %i.sj)
  call void @llvm.assume(i1 %i.sl)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i344

bb.ck:                                            ; preds = %bb.ci
  %i.sm = getelementptr i8, ptr %i.rz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sm) ]
  %i.sn = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  store ptr %i.sm, ptr %i.sn, align 8, !alias.scope !10547, !noalias !10546
  store i8 3, ptr %i.bv, align 8, !alias.scope !10547, !noalias !10546
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sn) #34, !noalias !10546
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i344

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i344: ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !10546
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit346

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit346: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i339.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz)
  call void @llvm.experimental.noalias.scope.decl(metadata !10548)
  call void @llvm.experimental.noalias.scope.decl(metadata !10549)
  %.val.i.i347 = load i64, ptr %i.he, align 8, !range !22, !alias.scope !10550, !noundef !11 ; 2 uses
  %i.so = icmp eq i64 %.val.i.i347, 0
  br i1 %i.so, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit349, label %bb.cl

bb.cl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit346
  %i.sp = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.val1.i.i348 = load ptr, ptr %i.sp, align 8, !alias.scope !10550, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i348, i64 noundef %.val.i.i347, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10550
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit349

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit349: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit346, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he)
  %.val271 = load ptr, ptr %i.hi, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.val271, i64 12 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !noundef !11
  %i.ss = add i32 %i.sr, -1                       ; 2 uses
  store i32 %i.ss, ptr %i.sq, align 4
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %bb.cm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit350

bb.cm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit349
  store atomic i64 0, ptr %.val271 monotonic, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %.val271, i64 8 ; 2 uses
  %i.sv = atomicrmw xchg ptr %i.su, i32 0 release, align 4
  %i.sw = icmp eq i32 %i.sv, 2
  br i1 %i.sw, label %bb.cn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit350, !prof !21

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.su) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit350

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit350: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit349, %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi)
  %i.sx = icmp eq i64 %.sroa.01071.0.copyload, 0
  br i1 %i.sx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit353, label %bb.co

bb.co:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit350
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.01071.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10551
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit353

bb.cp:                                            ; preds = %.lr.ph, %.backedge
  %i.sy = phi i64 [ 2, %.lr.ph ], [ %i.bcx, %.backedge ] ; 2 uses
  %.sroa.01085.01541 = phi ptr [ %i.nv, %.lr.ph ], [ %i.sz, %.backedge ] ; 10 uses
  %.sroa.7.01539 = phi i64 [ 1, %.lr.ph ], [ %i.sy, %.backedge ] ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.01085.01541, i64 56 ; 2 uses
  br i1 %i.oa, label %.loopexit1478, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %bb.cp, %_RNCNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings0B3_.exit.thread.i
  %i.ta = phi ptr [ %i.tb, %_RNCNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings0B3_.exit.thread.i ], [ %2, %bb.cp ] ; 11 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 64 ; 2 uses
  %i.tc = load i64, ptr %i.ta, align 8, !range !34, !noalias !10552, !noundef !11
  %i.td = trunc nuw i64 %i.tc to i1
  br i1 %i.td, label %_RNCNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings0B3_.exit.i, label %_RNCNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings0B3_.exit.thread.i

_RNCNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings0B3_.exit.i: ; preds = %.lr.ph.i354
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tf = load i64, ptr %i.te, align 8, !noalias !10552, !noundef !11
  %i.tg = icmp eq i64 %i.tf, %.sroa.7.01539
  br i1 %i.tg, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_19emit_debug_warnings0EBS_.exit, label %_RNCNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings0B3_.exit.thread.i

_RNCNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings0B3_.exit.thread.i: ; preds = %_RNCNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings0B3_.exit.i, %.lr.ph.i354
  %i.th = icmp eq ptr %i.tb, %i.nz
  br i1 %i.th, label %.loopexit1478, label %.lr.ph.i354
end_hunk_1
begin_hunk_2_@_RNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings:bb.a
  store ptr %i.fs, ptr %i.fr, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgcf5BHVXlUt_7uu_sort, ptr %.sroa.494.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10750
  store ptr %i.fu, ptr %i.o, align 8, !noalias !10750
  store ptr null, ptr %i.pk, align 8, !noalias !10750
  %i.azd = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @111, ptr noundef nonnull @199, ptr noundef nonnull %i.fr) #34
  %i.aze = load ptr, ptr %i.pk, align 8, !noalias !10750, !noundef !11 ; 7 uses
  %.not.i5.i887 = icmp eq ptr %i.aze, null        ; 2 uses
  br i1 %i.azd, label %bb.om, label %bb.on

bb.om:                                            ; preds = %bb.ol
  br i1 %.not.i5.i887, label %bb.or, label %bb.os, !prof !21

bb.on:                                            ; preds = %bb.ol
  br i1 %.not.i5.i887, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i889.thread, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10751
  %i.azf = ptrtoint ptr %i.aze to i64             ; 2 uses
  %i.azg = and i64 %i.azf, 3
  switch i64 %i.azg, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i888
    i64 3, label %bb.op
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i888
    i64 1, label %bb.oq
  ], !prof !31

bb.op:                                            ; preds = %bb.oo
  %i.azh = icmp ult ptr %i.aze, inttoptr (i64 188978561024 to ptr)
  %i.azi = and i64 %i.azf, 1095216660480
  %i.azj = icmp ne i64 %i.azi, 1095216660480
  call void @llvm.assume(i1 %i.azh)
  call void @llvm.assume(i1 %i.azj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i888

bb.oq:                                            ; preds = %bb.oo
  %i.azk = getelementptr i8, ptr %i.aze, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.azk) ]
  store ptr %i.azk, ptr %i.pl, align 8, !alias.scope !10752, !noalias !10751
  store i8 3, ptr %i.n, align 8, !alias.scope !10752, !noalias !10751
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pl) #34, !noalias !10753
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i888

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i888: ; preds = %bb.oq, %bb.op, %bb.oo, %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10751
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i889.thread

bb.or:                                            ; preds = %bb.om
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #40
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i889.thread: ; preds = %bb.on, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10750
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit896

bb.os:                                            ; preds = %bb.om
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10754
  %i.azl = ptrtoint ptr %i.aze to i64             ; 2 uses
  %i.azm = and i64 %i.azl, 3
  switch i64 %i.azm, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i894
    i64 3, label %bb.ot
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i894
    i64 1, label %bb.ou
  ], !prof !31

bb.ot:                                            ; preds = %bb.os
  %i.azn = icmp ult ptr %i.aze, inttoptr (i64 188978561024 to ptr)
  %i.azo = and i64 %i.azl, 1095216660480
  %i.azp = icmp ne i64 %i.azo, 1095216660480
  call void @llvm.assume(i1 %i.azn)
  call void @llvm.assume(i1 %i.azp)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i894

bb.ou:                                            ; preds = %bb.os
  %i.azq = getelementptr i8, ptr %i.aze, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.azq) ]
  store ptr %i.azq, ptr %i.pm, align 8, !alias.scope !10755, !noalias !10754
  store i8 3, ptr %i.m, align 8, !alias.scope !10755, !noalias !10754
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pm) #34, !noalias !10754
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i894

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i894: ; preds = %bb.ou, %bb.ot, %bb.os, %bb.os
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10754
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit896

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit896: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i889.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  store i64 0, ptr %i.fp, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.496.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.597.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  %i.azr = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.7.01539, ptr noalias nofree noundef nonnull %i.co, i64 noundef 20) #34 ; 2 uses
  %i.azs = extractvalue { ptr, i64 } %i.azr, 0
  %i.azt = extractvalue { ptr, i64 } %i.azr, 1    ; 16 uses
  %.not.i897 = icmp slt i64 %i.azt, 0
  br i1 %.not.i897, label %bb.qc, label %bb.ov, !prof !12

bb.ov:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit896
  %i.azu = icmp eq i64 %i.azt, 0
  br i1 %i.azu, label %.thread1381, label %bb.ow

.thread1381:                                      ; preds = %bb.ov
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %.loopexit1443

bb.ow:                                            ; preds = %bb.ov
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !10756
  %i.azv = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.azt, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10756 ; 18 uses
  %i.azw = icmp eq ptr %i.azv, null
  br i1 %i.azw, label %bb.qc, label %bb.qd

bb.ox:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit882, %bb.oi
  %.sroa.41210.0.ph = phi i64 [ 1, %bb.oi ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit882 ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41210.0.ph, i64 %i.ayp) #37
  unreachable

bb.oy:                                            ; preds = %bb.oi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ayr, ptr align 1 %i.ayo, i64 %i.ayp, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  %cond1426 = icmp eq i64 %i.ayp, 1
  %i.azx = load i8, ptr %i.ayr, align 1, !alias.scope !10757, !noalias !10758 ; 2 uses
  br i1 %cond1426, label %bb.oz, label %thread-pre-split.i931

bb.oz:                                            ; preds = %bb.oy
  switch i8 %i.azx, label %bb.pg [
    i8 43, label %.loopexit1457
    i8 45, label %.loopexit1457
  ]

thread-pre-split.i931:                            ; preds = %bb.oy
  switch i8 %i.azx, label %bb.pg [
    i8 43, label %bb.pa
    i8 45, label %bb.pb
  ]

bb.pa:                                            ; preds = %thread-pre-split.i931
  %i.azy = getelementptr inbounds nuw i8, ptr %i.ayr, i64 1
  %i.azz = add nsw i64 %i.ayp, -1
  br label %bb.pg

bb.pb:                                            ; preds = %thread-pre-split.i931
  %i.baa = getelementptr inbounds nuw i8, ptr %i.ayr, i64 1 ; 2 uses
  %i.bab = add nsw i64 %i.ayp, -1                 ; 2 uses
  %i.bac = icmp samesign ult i64 %i.ayp, 17
  br i1 %i.bac, label %.lr.ph141.i911, label %.lr.ph.i901

.lr.ph.i901:                                      ; preds = %bb.pb, %bb.pe
  %.sroa.0.1136.i902 = phi ptr [ %i.bad, %bb.pe ], [ %i.baa, %bb.pb ] ; 2 uses
  %.sroa.26.1135.i903 = phi i64 [ %i.bae, %bb.pe ], [ %i.bab, %bb.pb ]
  %.sroa.084.0134.i904 = phi i64 [ %i.bap, %bb.pe ], [ 0, %bb.pb ]
  %i.bad = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i902, i64 1
  %i.bae = add nsw i64 %.sroa.26.1135.i903, -1    ; 2 uses
  %i.baf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i904, i64 10) ; 2 uses
  %i.bag = extractvalue { i64, i1 } %i.baf, 0
  %i.bah = extractvalue { i64, i1 } %i.baf, 1
  br i1 %i.bah, label %.loopexit1457, label %bb.pc, !prof !21

bb.pc:                                            ; preds = %.lr.ph.i901
  %i.bai = load i8, ptr %.sroa.0.1136.i902, align 1, !alias.scope !10757, !noalias !10758, !noundef !11
  %i.baj = zext i8 %i.bai to i32
  %i.bak = add nsw i32 %i.baj, -48                ; 2 uses
  %i.bal = icmp ult i32 %i.bak, 10
  br i1 %i.bal, label %bb.pd, label %.loopexit1457

bb.pd:                                            ; preds = %bb.pc
  %i.bam = zext nneg i32 %i.bak to i64
  %i.ban = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bag, i64 %i.bam) ; 2 uses
  %i.bao = extractvalue { i64, i1 } %i.ban, 1
  br i1 %i.bao, label %.loopexit1457, label %bb.pe, !prof !21

bb.pe:                                            ; preds = %bb.pd
  %i.bap = extractvalue { i64, i1 } %i.ban, 0     ; 2 uses
  %.not102.i906 = icmp eq i64 %i.bae, 0
  br i1 %.not102.i906, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit933, label %.lr.ph.i901

.lr.ph141.i911:                                   ; preds = %bb.pb, %bb.pf
  %.sroa.0.2140.i912 = phi ptr [ %i.baw, %bb.pf ], [ %i.baa, %bb.pb ] ; 2 uses
  %.sroa.26.2139.i913 = phi i64 [ %i.bav, %bb.pf ], [ %i.bab, %bb.pb ]
  %.sroa.084.2138.i914 = phi i64 [ %i.bay, %bb.pf ], [ 0, %bb.pb ]
  %i.baq = load i8, ptr %.sroa.0.2140.i912, align 1, !alias.scope !10757, !noalias !10758, !noundef !11
  %i.bar = zext i8 %i.baq to i32
  %i.bas = add nsw i32 %i.bar, -48                ; 2 uses
  %i.bat = icmp ult i32 %i.bas, 10
  br i1 %i.bat, label %bb.pf, label %.loopexit1457

bb.pf:                                            ; preds = %.lr.ph141.i911
  %i.bau = mul i64 %.sroa.084.2138.i914, 10
  %i.bav = add nsw i64 %.sroa.26.2139.i913, -1    ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i912, i64 1
  %i.bax = zext nneg i32 %i.bas to i64
  %i.bay = sub i64 %i.bau, %i.bax                 ; 2 uses
  %.not103.i915 = icmp eq i64 %i.bav, 0
  br i1 %.not103.i915, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit933, label %.lr.ph141.i911

bb.pg:                                            ; preds = %bb.oz, %bb.pa, %thread-pre-split.i931
  %.sroa.26.0.i916 = phi i64 [ %i.azz, %bb.pa ], [ %i.ayp, %thread-pre-split.i931 ], [ %i.ayp, %bb.oz ] ; 4 uses
  %.sroa.0.0.i917 = phi ptr [ %i.azy, %bb.pa ], [ %i.ayr, %thread-pre-split.i931 ], [ %i.ayr, %bb.oz ] ; 2 uses
  %i.baz = icmp samesign ult i64 %.sroa.26.0.i916, 16
  br i1 %i.baz, label %.preheader.i924, label %.preheader111.i918

.preheader.i924:                                  ; preds = %bb.pg
  %.not105146.i925 = icmp eq i64 %.sroa.26.0.i916, 0
  br i1 %.not105146.i925, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit933, label %.lr.ph150.i926

.preheader111.i918:                               ; preds = %bb.pg, %bb.pj
  %.sroa.0.3145.i919 = phi ptr [ %i.bba, %bb.pj ], [ %.sroa.0.0.i917, %bb.pg ] ; 2 uses
  %.sroa.26.3144.i920 = phi i64 [ %i.bbb, %bb.pj ], [ %.sroa.26.0.i916, %bb.pg ]
  %.sroa.084.3143.i921 = phi i64 [ %i.bbm, %bb.pj ], [ 0, %bb.pg ]
  %i.bba = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i919, i64 1
  %i.bbb = add nsw i64 %.sroa.26.3144.i920, -1    ; 2 uses
  %i.bbc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i921, i64 10) ; 2 uses
  %i.bbd = extractvalue { i64, i1 } %i.bbc, 0
  %i.bbe = extractvalue { i64, i1 } %i.bbc, 1
  br i1 %i.bbe, label %.loopexit1457, label %bb.ph, !prof !21

bb.ph:                                            ; preds = %.preheader111.i918
  %i.bbf = load i8, ptr %.sroa.0.3145.i919, align 1, !alias.scope !10757, !noalias !10758, !noundef !11
  %i.bbg = zext i8 %i.bbf to i32
  %i.bbh = add nsw i32 %i.bbg, -48                ; 2 uses
  %i.bbi = icmp ult i32 %i.bbh, 10
  br i1 %i.bbi, label %bb.pi, label %.loopexit1457

bb.pi:                                            ; preds = %bb.ph
  %i.bbj = zext nneg i32 %i.bbh to i64
  %i.bbk = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bbd, i64 %i.bbj) ; 2 uses
  %i.bbl = extractvalue { i64, i1 } %i.bbk, 1
  br i1 %i.bbl, label %.loopexit1457, label %bb.pj, !prof !21

bb.pj:                                            ; preds = %bb.pi
  %i.bbm = extractvalue { i64, i1 } %i.bbk, 0     ; 2 uses
  %.not104.i923 = icmp eq i64 %i.bbb, 0
  br i1 %.not104.i923, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit933, label %.preheader111.i918

.lr.ph150.i926:                                   ; preds = %.preheader.i924, %bb.pk
  %.sroa.0.4149.i927 = phi ptr [ %i.bbt, %bb.pk ], [ %.sroa.0.0.i917, %.preheader.i924 ] ; 2 uses
  %.sroa.26.4148.i928 = phi i64 [ %i.bbs, %bb.pk ], [ %.sroa.26.0.i916, %.preheader.i924 ]
  %.sroa.084.4147.i929 = phi i64 [ %i.bbv, %bb.pk ], [ 0, %.preheader.i924 ]
  %i.bbn = load i8, ptr %.sroa.0.4149.i927, align 1, !alias.scope !10757, !noalias !10758, !noundef !11
  %i.bbo = zext i8 %i.bbn to i32
  %i.bbp = add nsw i32 %i.bbo, -48                ; 2 uses
  %i.bbq = icmp ult i32 %i.bbp, 10
  br i1 %i.bbq, label %bb.pk, label %.loopexit1457

bb.pk:                                            ; preds = %.lr.ph150.i926
  %i.bbr = mul i64 %.sroa.084.4147.i929, 10
  %i.bbs = add nsw i64 %.sroa.26.4148.i928, -1    ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i927, i64 1
  %i.bbu = zext nneg i32 %i.bbp to i64
  %i.bbv = add i64 %i.bbr, %i.bbu                 ; 2 uses
  %.not105.i930 = icmp eq i64 %i.bbs, 0
  br i1 %.not105.i930, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit933, label %.lr.ph150.i926

.loopexit1457:                                    ; preds = %.lr.ph.i901, %bb.pd, %bb.pc, %.lr.ph141.i911, %.preheader111.i918, %bb.ph, %bb.pi, %.lr.ph150.i926, %bb.oz, %bb.oz, %.thread1359
  %.ph1367 = phi ptr [ %i.ayr, %.preheader111.i918 ], [ %i.ayr, %.lr.ph141.i911 ], [ %i.ayr, %.lr.ph150.i926 ], [ %i.ayr, %bb.oz ], [ inttoptr (i64 1 to ptr), %.thread1359 ], [ %i.ayr, %bb.oz ], [ %i.ayr, %bb.pi ], [ %i.ayr, %bb.ph ], [ %i.ayr, %bb.pc ], [ %i.ayr, %bb.pd ], [ %i.ayr, %.lr.ph.i901 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.fy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1367, i64 noundef %i.ayp) #39
  %i.bbw = load i8, ptr %i.fy, align 8, !range !18, !noundef !11
  %i.bbx = trunc nuw i8 %i.bbw to i1
  br i1 %i.bbx, label %bb.pn, label %bb.po

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit933: ; preds = %bb.pe, %bb.pf, %bb.pj, %bb.pk, %.preheader.i924
  %.sroa.151117.0 = phi i64 [ %i.bbm, %bb.pj ], [ %i.bay, %bb.pf ], [ %i.bbv, %bb.pk ], [ 0, %.preheader.i924 ], [ %i.bap, %bb.pe ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 3, i64 noundef %.sroa.151117.0) #34
  br label %bb.pl

bb.pl:                                            ; preds = %bb.po, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit933
  %i.bby = phi ptr [ %.ph1367, %bb.po ], [ %i.ayr, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit933 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ga, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @256, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fw) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw)
  %i.bbz = icmp eq i64 %i.ayp, 0
  br i1 %i.bbz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit936, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bby, i64 noundef %i.ayp, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10759
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit936

bb.pn:                                            ; preds = %.loopexit1457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  store i64 %i.ayp, ptr %i.fx, align 8
  store ptr %.ph1367, ptr %.sroa.51112.0..sroa_idx, align 8
  store i64 %i.ayp, ptr %.sroa.81113.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.fx) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ga, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @256, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fw) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit936

bb.po:                                            ; preds = %.loopexit1457
  %i.bca = load double, ptr %i.ov, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 3, double noundef %i.bca) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  br label %bb.pl

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit936: ; preds = %bb.pm, %bb.pl, %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  store ptr %i.ga, ptr %i.fv, align 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.488.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10760
  store ptr %i.ge, ptr %i.l, align 8, !noalias !10760
  store ptr null, ptr %i.ow, align 8, !noalias !10760
  %i.bcb = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @111, ptr noundef nonnull @56, ptr noundef nonnull %i.fv) #34
  %i.bcc = load ptr, ptr %i.ow, align 8, !noalias !10760, !noundef !11 ; 7 uses
  %.not.i5.i938 = icmp eq ptr %i.bcc, null        ; 2 uses
  br i1 %i.bcb, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit936
  br i1 %.not.i5.i938, label %bb.pu, label %bb.pv, !prof !21

bb.pq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit936
  br i1 %.not.i5.i938, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i940.thread, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10761
  %i.bcd = ptrtoint ptr %i.bcc to i64             ; 2 uses
  %i.bce = and i64 %i.bcd, 3
  switch i64 %i.bce, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i939
    i64 3, label %bb.ps
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i939
    i64 1, label %bb.pt
  ], !prof !31

bb.ps:                                            ; preds = %bb.pr
  %i.bcf = icmp ult ptr %i.bcc, inttoptr (i64 188978561024 to ptr)
  %i.bcg = and i64 %i.bcd, 1095216660480
  %i.bch = icmp ne i64 %i.bcg, 1095216660480
  call void @llvm.assume(i1 %i.bcf)
  call void @llvm.assume(i1 %i.bch)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i939

bb.pt:                                            ; preds = %bb.pr
  %i.bci = getelementptr i8, ptr %i.bcc, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bci) ]
  store ptr %i.bci, ptr %i.ox, align 8, !alias.scope !10762, !noalias !10761
  store i8 3, ptr %i.k, align 8, !alias.scope !10762, !noalias !10761
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ox) #34, !noalias !10763
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i939

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i939: ; preds = %bb.pt, %bb.ps, %bb.pr, %bb.pr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10761
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i940.thread

bb.pu:                                            ; preds = %bb.pp
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #40
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i940.thread: ; preds = %bb.pq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10760
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit947

bb.pv:                                            ; preds = %bb.pp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10764
  %i.bcj = ptrtoint ptr %i.bcc to i64             ; 2 uses
  %i.bck = and i64 %i.bcj, 3
  switch i64 %i.bck, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i945
    i64 3, label %bb.pw
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i945
    i64 1, label %bb.px
  ], !prof !31

bb.pw:                                            ; preds = %bb.pv
  %i.bcl = icmp ult ptr %i.bcc, inttoptr (i64 188978561024 to ptr)
  %i.bcm = and i64 %i.bcj, 1095216660480
  %i.bcn = icmp ne i64 %i.bcm, 1095216660480
  call void @llvm.assume(i1 %i.bcl)
  call void @llvm.assume(i1 %i.bcn)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i945

bb.px:                                            ; preds = %bb.pv
  %i.bco = getelementptr i8, ptr %i.bcc, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bco) ]
  store ptr %i.bco, ptr %i.oy, align 8, !alias.scope !10765, !noalias !10764
  store i8 3, ptr %i.j, align 8, !alias.scope !10765, !noalias !10764
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oy) #34, !noalias !10764
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i945

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i945: ; preds = %bb.px, %bb.pw, %bb.pv, %bb.pv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10764
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit947

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit947: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i940.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  call void @llvm.experimental.noalias.scope.decl(metadata !10766)
  call void @llvm.experimental.noalias.scope.decl(metadata !10767)
  %.val.i.i948 = load i64, ptr %i.ga, align 8, !range !22, !alias.scope !10768, !noundef !11 ; 2 uses
  %i.bcp = icmp eq i64 %.val.i.i948, 0
  br i1 %i.bcp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit950, label %bb.py

bb.py:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit947
  %.val1.i.i949 = load ptr, ptr %i.oz, align 8, !alias.scope !10768, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i949, i64 noundef %.val.i.i948, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10768
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit950

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit950: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit947, %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  %.val262 = load ptr, ptr %i.ge, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %.val262, i64 12 ; 2 uses
  %i.bcr = load i32, ptr %i.bcq, align 4, !noundef !11
  %i.bcs = add i32 %i.bcr, -1                     ; 2 uses
  store i32 %i.bcs, ptr %i.bcq, align 4
  %i.bct = icmp eq i32 %i.bcs, 0
  br i1 %i.bct, label %bb.pz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit951

bb.pz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit950
  store atomic i64 0, ptr %.val262 monotonic, align 8
  %i.bcu = getelementptr inbounds nuw i8, ptr %.val262, i64 8 ; 2 uses
  %i.bcv = atomicrmw xchg ptr %i.bcu, i32 0 release, align 4
  %i.bcw = icmp eq i32 %i.bcv, 2
  br i1 %i.bcw, label %bb.qa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit951, !prof !21

bb.qa:                                            ; preds = %bb.pz
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bcu) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit951

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit951: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit950, %bb.pz, %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1003, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1069, %bb.rh, %bb.nw, %bb.ns, %bb.rg, %bb.ok, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit951
  %i.bcx = add nuw nsw i64 %i.sy, 1
  %i.bcy = icmp eq ptr %i.sz, %i.ny
  br i1 %i.bcy, label %.lr.ph2001, label %bb.cp

bb.qb:                                            ; preds = %bb.ns
  %i.bcz = getelementptr inbounds nuw i8, ptr %.sroa.01085.01541, i64 53
  %i.bda = load i8, ptr %i.bcz, align 1, !range !20, !noundef !11 ; 2 uses
  %switch232 = icmp samesign ult i8 %i.bda, 3
  br i1 %switch232, label %bb.ol, label %bb.ok

bb.qc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit896, %bb.ow
  %.sroa.41214.0.ph = phi i64 [ 1, %bb.ow ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit896 ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41214.0.ph, i64 %i.azt) #37
  unreachable

bb.qd:                                            ; preds = %bb.ow
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azv, ptr align 1 %i.azs, i64 %i.azt, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %cond1424 = icmp eq i64 %i.azt, 1
  %i.bdb = load i8, ptr %i.azv, align 1, !alias.scope !10769, !noalias !10770 ; 2 uses
  br i1 %cond1424, label %bb.qe, label %thread-pre-split.i983

bb.qe:                                            ; preds = %bb.qd
  switch i8 %i.bdb, label %bb.ql [
    i8 43, label %.loopexit1443
    i8 45, label %.loopexit1443
  ]

thread-pre-split.i983:                            ; preds = %bb.qd
  switch i8 %i.bdb, label %bb.ql [
    i8 43, label %bb.qf
    i8 45, label %bb.qg
  ]

bb.qf:                                            ; preds = %thread-pre-split.i983
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.azv, i64 1
  %i.bdd = add nsw i64 %i.azt, -1
  br label %bb.ql

bb.qg:                                            ; preds = %thread-pre-split.i983
  %i.bde = getelementptr inbounds nuw i8, ptr %i.azv, i64 1 ; 2 uses
  %i.bdf = add nsw i64 %i.azt, -1                 ; 2 uses
  %i.bdg = icmp samesign ult i64 %i.azt, 17
  br i1 %i.bdg, label %.lr.ph141.i963, label %.lr.ph.i953

.lr.ph.i953:                                      ; preds = %bb.qg, %bb.qj
  %.sroa.0.1136.i954 = phi ptr [ %i.bdh, %bb.qj ], [ %i.bde, %bb.qg ] ; 2 uses
  %.sroa.26.1135.i955 = phi i64 [ %i.bdi, %bb.qj ], [ %i.bdf, %bb.qg ]
  %.sroa.084.0134.i956 = phi i64 [ %i.bdt, %bb.qj ], [ 0, %bb.qg ]
  %i.bdh = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i954, i64 1
  %i.bdi = add nsw i64 %.sroa.26.1135.i955, -1    ; 2 uses
  %i.bdj = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i956, i64 10) ; 2 uses
  %i.bdk = extractvalue { i64, i1 } %i.bdj, 0
  %i.bdl = extractvalue { i64, i1 } %i.bdj, 1
  br i1 %i.bdl, label %.loopexit1443, label %bb.qh, !prof !21

bb.qh:                                            ; preds = %.lr.ph.i953
  %i.bdm = load i8, ptr %.sroa.0.1136.i954, align 1, !alias.scope !10769, !noalias !10770, !noundef !11
  %i.bdn = zext i8 %i.bdm to i32
  %i.bdo = add nsw i32 %i.bdn, -48                ; 2 uses
  %i.bdp = icmp ult i32 %i.bdo, 10
  br i1 %i.bdp, label %bb.qi, label %.loopexit1443

bb.qi:                                            ; preds = %bb.qh
  %i.bdq = zext nneg i32 %i.bdo to i64
  %i.bdr = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bdk, i64 %i.bdq) ; 2 uses
  %i.bds = extractvalue { i64, i1 } %i.bdr, 1
  br i1 %i.bds, label %.loopexit1443, label %bb.qj, !prof !21

bb.qj:                                            ; preds = %bb.qi
  %i.bdt = extractvalue { i64, i1 } %i.bdr, 0     ; 2 uses
  %.not102.i958 = icmp eq i64 %i.bdi, 0
  br i1 %.not102.i958, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit985, label %.lr.ph.i953

.lr.ph141.i963:                                   ; preds = %bb.qg, %bb.qk
  %.sroa.0.2140.i964 = phi ptr [ %i.bea, %bb.qk ], [ %i.bde, %bb.qg ] ; 2 uses
  %.sroa.26.2139.i965 = phi i64 [ %i.bdz, %bb.qk ], [ %i.bdf, %bb.qg ]
  %.sroa.084.2138.i966 = phi i64 [ %i.bec, %bb.qk ], [ 0, %bb.qg ]
  %i.bdu = load i8, ptr %.sroa.0.2140.i964, align 1, !alias.scope !10769, !noalias !10770, !noundef !11
  %i.bdv = zext i8 %i.bdu to i32
  %i.bdw = add nsw i32 %i.bdv, -48                ; 2 uses
  %i.bdx = icmp ult i32 %i.bdw, 10
  br i1 %i.bdx, label %bb.qk, label %.loopexit1443

bb.qk:                                            ; preds = %.lr.ph141.i963
  %i.bdy = mul i64 %.sroa.084.2138.i966, 10
  %i.bdz = add nsw i64 %.sroa.26.2139.i965, -1    ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i964, i64 1
  %i.beb = zext nneg i32 %i.bdw to i64
  %i.bec = sub i64 %i.bdy, %i.beb                 ; 2 uses
  %.not103.i967 = icmp eq i64 %i.bdz, 0
  br i1 %.not103.i967, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit985, label %.lr.ph141.i963

bb.ql:                                            ; preds = %bb.qe, %bb.qf, %thread-pre-split.i983
  %.sroa.26.0.i968 = phi i64 [ %i.bdd, %bb.qf ], [ %i.azt, %thread-pre-split.i983 ], [ %i.azt, %bb.qe ] ; 4 uses
  %.sroa.0.0.i969 = phi ptr [ %i.bdc, %bb.qf ], [ %i.azv, %thread-pre-split.i983 ], [ %i.azv, %bb.qe ] ; 2 uses
  %i.bed = icmp samesign ult i64 %.sroa.26.0.i968, 16
  br i1 %i.bed, label %.preheader.i976, label %.preheader111.i970

.preheader.i976:                                  ; preds = %bb.ql
  %.not105146.i977 = icmp eq i64 %.sroa.26.0.i968, 0
  br i1 %.not105146.i977, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit985, label %.lr.ph150.i978

.preheader111.i970:                               ; preds = %bb.ql, %bb.qo
  %.sroa.0.3145.i971 = phi ptr [ %i.bee, %bb.qo ], [ %.sroa.0.0.i969, %bb.ql ] ; 2 uses
  %.sroa.26.3144.i972 = phi i64 [ %i.bef, %bb.qo ], [ %.sroa.26.0.i968, %bb.ql ]
  %.sroa.084.3143.i973 = phi i64 [ %i.beq, %bb.qo ], [ 0, %bb.ql ]
  %i.bee = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i971, i64 1
  %i.bef = add nsw i64 %.sroa.26.3144.i972, -1    ; 2 uses
  %i.beg = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i973, i64 10) ; 2 uses
  %i.beh = extractvalue { i64, i1 } %i.beg, 0
  %i.bei = extractvalue { i64, i1 } %i.beg, 1
  br i1 %i.bei, label %.loopexit1443, label %bb.qm, !prof !21

bb.qm:                                            ; preds = %.preheader111.i970
  %i.bej = load i8, ptr %.sroa.0.3145.i971, align 1, !alias.scope !10769, !noalias !10770, !noundef !11
  %i.bek = zext i8 %i.bej to i32
  %i.bel = add nsw i32 %i.bek, -48                ; 2 uses
  %i.bem = icmp ult i32 %i.bel, 10
  br i1 %i.bem, label %bb.qn, label %.loopexit1443

bb.qn:                                            ; preds = %bb.qm
  %i.ben = zext nneg i32 %i.bel to i64
  %i.beo = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.beh, i64 %i.ben) ; 2 uses
  %i.bep = extractvalue { i64, i1 } %i.beo, 1
  br i1 %i.bep, label %.loopexit1443, label %bb.qo, !prof !21

bb.qo:                                            ; preds = %bb.qn
  %i.beq = extractvalue { i64, i1 } %i.beo, 0     ; 2 uses
  %.not104.i975 = icmp eq i64 %i.bef, 0
  br i1 %.not104.i975, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit985, label %.preheader111.i970

.lr.ph150.i978:                                   ; preds = %.preheader.i976, %bb.qp
  %.sroa.0.4149.i979 = phi ptr [ %i.bex, %bb.qp ], [ %.sroa.0.0.i969, %.preheader.i976 ] ; 2 uses
  %.sroa.26.4148.i980 = phi i64 [ %i.bew, %bb.qp ], [ %.sroa.26.0.i968, %.preheader.i976 ]
  %.sroa.084.4147.i981 = phi i64 [ %i.bez, %bb.qp ], [ 0, %.preheader.i976 ]
  %i.ber = load i8, ptr %.sroa.0.4149.i979, align 1, !alias.scope !10769, !noalias !10770, !noundef !11
  %i.bes = zext i8 %i.ber to i32
  %i.bet = add nsw i32 %i.bes, -48                ; 2 uses
  %i.beu = icmp ult i32 %i.bet, 10
  br i1 %i.beu, label %bb.qp, label %.loopexit1443

bb.qp:                                            ; preds = %.lr.ph150.i978
  %i.bev = mul i64 %.sroa.084.4147.i981, 10
  %i.bew = add nsw i64 %.sroa.26.4148.i980, -1    ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i979, i64 1
  %i.bey = zext nneg i32 %i.bet to i64
  %i.bez = add i64 %i.bev, %i.bey                 ; 2 uses
  %.not105.i982 = icmp eq i64 %i.bew, 0
  br i1 %.not105.i982, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit985, label %.lr.ph150.i978

.loopexit1443:                                    ; preds = %.lr.ph.i953, %bb.qi, %bb.qh, %.lr.ph141.i963, %.preheader111.i970, %bb.qm, %bb.qn, %.lr.ph150.i978, %bb.qe, %bb.qe, %.thread1381
  %.ph1389 = phi ptr [ %i.azv, %.preheader111.i970 ], [ %i.azv, %.lr.ph141.i963 ], [ %i.azv, %.lr.ph150.i978 ], [ %i.azv, %bb.qe ], [ inttoptr (i64 1 to ptr), %.thread1381 ], [ %i.azv, %bb.qe ], [ %i.azv, %bb.qn ], [ %i.azv, %bb.qm ], [ %i.azv, %bb.qh ], [ %i.azv, %bb.qi ], [ %i.azv, %.lr.ph.i953 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.fo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1389, i64 noundef %i.azt) #39
  %i.bfa = load i8, ptr %i.fo, align 8, !range !18, !noundef !11
  %i.bfb = trunc nuw i8 %i.bfa to i1
  br i1 %i.bfb, label %bb.qs, label %bb.qt

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit985: ; preds = %bb.qj, %bb.qk, %bb.qo, %bb.qp, %.preheader.i976
  %.sroa.151126.0 = phi i64 [ %i.beq, %bb.qo ], [ %i.bec, %bb.qk ], [ %i.bez, %bb.qp ], [ 0, %.preheader.i976 ], [ %i.bdt, %bb.qj ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 3, i64 noundef %.sroa.151126.0) #34
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qt, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit985
  %i.bfc = phi ptr [ %.ph1389, %bb.qt ], [ %i.azv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit985 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 37, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fm) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  %i.bfd = icmp eq i64 %i.azt, 0
  br i1 %i.bfd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit988, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bfc, i64 noundef %i.azt, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10771
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit988

bb.qs:                                            ; preds = %.loopexit1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  store i64 %i.azt, ptr %i.fn, align 8
  store ptr %.ph1389, ptr %.sroa.51121.0..sroa_idx, align 8
  store i64 %i.azt, ptr %.sroa.81122.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.fn) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 37, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fm) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit988

bb.qt:                                            ; preds = %.loopexit1443
  %i.bfe = load double, ptr %i.pn, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 3, double noundef %i.bfe) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  br label %bb.qq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit988: ; preds = %bb.qr, %bb.qq, %bb.qs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  store ptr %i.fq, ptr %i.fl, align 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4104.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10772
  store ptr %i.fu, ptr %i.i, align 8, !noalias !10772
  store ptr null, ptr %i.po, align 8, !noalias !10772
  %i.bff = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @111, ptr noundef nonnull @56, ptr noundef nonnull %i.fl) #34
  %i.bfg = load ptr, ptr %i.po, align 8, !noalias !10772, !noundef !11 ; 7 uses
  %.not.i5.i990 = icmp eq ptr %i.bfg, null        ; 2 uses
  br i1 %i.bff, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit988
  br i1 %.not.i5.i990, label %bb.qz, label %bb.ra, !prof !21

bb.qv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit988
  br i1 %.not.i5.i990, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i992.thread, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10773
  %i.bfh = ptrtoint ptr %i.bfg to i64             ; 2 uses
  %i.bfi = and i64 %i.bfh, 3
  switch i64 %i.bfi, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i991
    i64 3, label %bb.qx
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i991
    i64 1, label %bb.qy
  ], !prof !31

bb.qx:                                            ; preds = %bb.qw
  %i.bfj = icmp ult ptr %i.bfg, inttoptr (i64 188978561024 to ptr)
  %i.bfk = and i64 %i.bfh, 1095216660480
  %i.bfl = icmp ne i64 %i.bfk, 1095216660480
  call void @llvm.assume(i1 %i.bfj)
  call void @llvm.assume(i1 %i.bfl)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i991

bb.qy:                                            ; preds = %bb.qw
  %i.bfm = getelementptr i8, ptr %i.bfg, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bfm) ]
  store ptr %i.bfm, ptr %i.pp, align 8, !alias.scope !10774, !noalias !10773
  store i8 3, ptr %i.h, align 8, !alias.scope !10774, !noalias !10773
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pp) #34, !noalias !10775
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i991

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i991: ; preds = %bb.qy, %bb.qx, %bb.qw, %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10773
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i992.thread

bb.qz:                                            ; preds = %bb.qu
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #40
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i992.thread: ; preds = %bb.qv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10772
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit999

bb.ra:                                            ; preds = %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10776
  %i.bfn = ptrtoint ptr %i.bfg to i64             ; 2 uses
  %i.bfo = and i64 %i.bfn, 3
  switch i64 %i.bfo, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i997
    i64 3, label %bb.rb
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i997
    i64 1, label %bb.rc
  ], !prof !31

bb.rb:                                            ; preds = %bb.ra
  %i.bfp = icmp ult ptr %i.bfg, inttoptr (i64 188978561024 to ptr)
  %i.bfq = and i64 %i.bfn, 1095216660480
  %i.bfr = icmp ne i64 %i.bfq, 1095216660480
  call void @llvm.assume(i1 %i.bfp)
  call void @llvm.assume(i1 %i.bfr)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i997

bb.rc:                                            ; preds = %bb.ra
  %i.bfs = getelementptr i8, ptr %i.bfg, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bfs) ]
  store ptr %i.bfs, ptr %i.pq, align 8, !alias.scope !10777, !noalias !10776
  store i8 3, ptr %i.g, align 8, !alias.scope !10777, !noalias !10776
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pq) #34, !noalias !10776
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i997

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i997: ; preds = %bb.rc, %bb.rb, %bb.ra, %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10776
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit999

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit999: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i992.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.experimental.noalias.scope.decl(metadata !10778)
  call void @llvm.experimental.noalias.scope.decl(metadata !10779)
  %.val.i.i1000 = load i64, ptr %i.fq, align 8, !range !22, !alias.scope !10780, !noundef !11 ; 2 uses
  %i.bft = icmp eq i64 %.val.i.i1000, 0
  br i1 %i.bft, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1002, label %bb.rd

bb.rd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit999
  %.val1.i.i1001 = load ptr, ptr %i.pr, align 8, !alias.scope !10780, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1001, i64 noundef %.val.i.i1000, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10780
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1002

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1002: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit999, %bb.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  %.val261 = load ptr, ptr %i.fu, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %.val261, i64 12 ; 2 uses
  %i.bfv = load i32, ptr %i.bfu, align 4, !noundef !11
  %i.bfw = add i32 %i.bfv, -1                     ; 2 uses
  store i32 %i.bfw, ptr %i.bfu, align 4
  %i.bfx = icmp eq i32 %i.bfw, 0
  br i1 %i.bfx, label %bb.re, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1003

bb.re:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1002
  store atomic i64 0, ptr %.val261 monotonic, align 8
  %i.bfy = getelementptr inbounds nuw i8, ptr %.val261, i64 8 ; 2 uses
  %i.bfz = atomicrmw xchg ptr %i.bfy, i32 0 release, align 4
  %i.bga = icmp eq i32 %i.bfz, 2
  br i1 %i.bga, label %bb.rf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1003, !prof !21

bb.rf:                                            ; preds = %bb.re
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bfy) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1003

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1003: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1002, %bb.re, %bb.rf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  br label %.backedge

bb.rg:                                            ; preds = %bb.ok
  %i.bgb = getelementptr inbounds nuw i8, ptr %.sroa.01085.01541, i64 40
  %i.bgc = load i8, ptr %i.bgb, align 8, !range !18, !noundef !11
  %i.bgd = trunc nuw i8 %i.bgc to i1
  br i1 %i.bgd, label %.backedge, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bge = load i8, ptr %i.ayx, align 8, !range !18, !noundef !11
  %i.bgf = trunc nuw i8 %i.bge to i1
  br i1 %i.bgf, label %.backedge, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.fj, align 8
  %i.bgg = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fj) #34
  store ptr %i.bgg, ptr %i.fk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  %i.bgh = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #34 ; 2 uses
  %i.bgi = extractvalue { ptr, i64 } %i.bgh, 0
  %i.bgj = extractvalue { ptr, i64 } %i.bgh, 1
  store ptr %i.bgi, ptr %i.fi, align 8
  store i64 %i.bgj, ptr %i.pa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  store ptr %i.fi, ptr %i.fh, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgcf5BHVXlUt_7uu_sort, ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10781
  store ptr %i.fk, ptr %i.f, align 8, !noalias !10781
  store ptr null, ptr %i.pb, align 8, !noalias !10781
  %i.bgk = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @111, ptr noundef nonnull @199, ptr noundef nonnull %i.fh) #34
  %i.bgl = load ptr, ptr %i.pb, align 8, !noalias !10781, !noundef !11 ; 7 uses
  %.not.i5.i1005 = icmp eq ptr %i.bgl, null       ; 2 uses
  br i1 %i.bgk, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  br i1 %.not.i5.i1005, label %bb.ro, label %bb.rp, !prof !21

bb.rk:                                            ; preds = %bb.ri
  br i1 %.not.i5.i1005, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i1007.thread, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10782
  %i.bgm = ptrtoint ptr %i.bgl to i64             ; 2 uses
  %i.bgn = and i64 %i.bgm, 3
  switch i64 %i.bgn, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1006
    i64 3, label %bb.rm
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1006
    i64 1, label %bb.rn
  ], !prof !31

bb.rm:                                            ; preds = %bb.rl
  %i.bgo = icmp ult ptr %i.bgl, inttoptr (i64 188978561024 to ptr)
  %i.bgp = and i64 %i.bgm, 1095216660480
  %i.bgq = icmp ne i64 %i.bgp, 1095216660480
  call void @llvm.assume(i1 %i.bgo)
  call void @llvm.assume(i1 %i.bgq)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1006

bb.rn:                                            ; preds = %bb.rl
  %i.bgr = getelementptr i8, ptr %i.bgl, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bgr) ]
  store ptr %i.bgr, ptr %i.pc, align 8, !alias.scope !10783, !noalias !10782
  store i8 3, ptr %i.e, align 8, !alias.scope !10783, !noalias !10782
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pc) #34, !noalias !10784
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1006

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1006: ; preds = %bb.rn, %bb.rm, %bb.rl, %bb.rl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10782
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i1007.thread

bb.ro:                                            ; preds = %bb.rj
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #40
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i1007.thread: ; preds = %bb.rk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10781
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1014

bb.rp:                                            ; preds = %bb.rj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10785
  %i.bgs = ptrtoint ptr %i.bgl to i64             ; 2 uses
  %i.bgt = and i64 %i.bgs, 3
  switch i64 %i.bgt, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1012
    i64 3, label %bb.rq
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1012
    i64 1, label %bb.rr
  ], !prof !31

bb.rq:                                            ; preds = %bb.rp
  %i.bgu = icmp ult ptr %i.bgl, inttoptr (i64 188978561024 to ptr)
  %i.bgv = and i64 %i.bgs, 1095216660480
  %i.bgw = icmp ne i64 %i.bgv, 1095216660480
  call void @llvm.assume(i1 %i.bgu)
  call void @llvm.assume(i1 %i.bgw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1012

bb.rr:                                            ; preds = %bb.rp
  %i.bgx = getelementptr i8, ptr %i.bgl, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bgx) ]
  store ptr %i.bgx, ptr %i.pd, align 8, !alias.scope !10786, !noalias !10785
  store i8 3, ptr %i.d, align 8, !alias.scope !10786, !noalias !10785
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pd) #34, !noalias !10785
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1012

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1012: ; preds = %bb.rr, %bb.rq, %bb.rp, %bb.rp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10785
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1014

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1014: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i1007.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  store i64 0, ptr %i.ff, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4110.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5111.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.bgy = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.7.01539, ptr noalias nofree noundef nonnull %i.cn, i64 noundef 20) #34 ; 2 uses
  %i.bgz = extractvalue { ptr, i64 } %i.bgy, 0
  %i.bha = extractvalue { ptr, i64 } %i.bgy, 1    ; 16 uses
  %.not.i1015 = icmp slt i64 %i.bha, 0
  br i1 %.not.i1015, label %bb.ru, label %bb.rs, !prof !12

bb.rs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1014
  %i.bhb = icmp eq i64 %i.bha, 0
  br i1 %i.bhb, label %.thread1408, label %bb.rt

.thread1408:                                      ; preds = %bb.rs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %.loopexit1450

bb.rt:                                            ; preds = %bb.rs
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !10787
  %i.bhc = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bha, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10787 ; 18 uses
  %i.bhd = icmp eq ptr %i.bhc, null
  br i1 %i.bhd, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1014, %bb.rt
  %.sroa.41218.0.ph = phi i64 [ 1, %bb.rt ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1014 ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41218.0.ph, i64 %i.bha) #37
  unreachable

bb.rv:                                            ; preds = %bb.rt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhc, ptr align 1 %i.bgz, i64 %i.bha, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %cond1425 = icmp eq i64 %i.bha, 1
  %i.bhe = load i8, ptr %i.bhc, align 1, !alias.scope !10788, !noalias !10789 ; 2 uses
  br i1 %cond1425, label %bb.rw, label %thread-pre-split.i1049

bb.rw:                                            ; preds = %bb.rv
  switch i8 %i.bhe, label %bb.sd [
    i8 43, label %.loopexit1450
    i8 45, label %.loopexit1450
  ]

thread-pre-split.i1049:                           ; preds = %bb.rv
  switch i8 %i.bhe, label %bb.sd [
    i8 43, label %bb.rx
    i8 45, label %bb.ry
  ]

bb.rx:                                            ; preds = %thread-pre-split.i1049
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhc, i64 1
  %i.bhg = add nsw i64 %i.bha, -1
  br label %bb.sd

bb.ry:                                            ; preds = %thread-pre-split.i1049
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhc, i64 1 ; 2 uses
  %i.bhi = add nsw i64 %i.bha, -1                 ; 2 uses
  %i.bhj = icmp samesign ult i64 %i.bha, 17
  br i1 %i.bhj, label %.lr.ph141.i1029, label %.lr.ph.i1019

.lr.ph.i1019:                                     ; preds = %bb.ry, %bb.sb
  %.sroa.0.1136.i1020 = phi ptr [ %i.bhk, %bb.sb ], [ %i.bhh, %bb.ry ] ; 2 uses
  %.sroa.26.1135.i1021 = phi i64 [ %i.bhl, %bb.sb ], [ %i.bhi, %bb.ry ]
  %.sroa.084.0134.i1022 = phi i64 [ %i.bhw, %bb.sb ], [ 0, %bb.ry ]
  %i.bhk = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i1020, i64 1
  %i.bhl = add nsw i64 %.sroa.26.1135.i1021, -1   ; 2 uses
  %i.bhm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i1022, i64 10) ; 2 uses
  %i.bhn = extractvalue { i64, i1 } %i.bhm, 0
  %i.bho = extractvalue { i64, i1 } %i.bhm, 1
  br i1 %i.bho, label %.loopexit1450, label %bb.rz, !prof !21

bb.rz:                                            ; preds = %.lr.ph.i1019
  %i.bhp = load i8, ptr %.sroa.0.1136.i1020, align 1, !alias.scope !10788, !noalias !10789, !noundef !11
  %i.bhq = zext i8 %i.bhp to i32
  %i.bhr = add nsw i32 %i.bhq, -48                ; 2 uses
  %i.bhs = icmp ult i32 %i.bhr, 10
  br i1 %i.bhs, label %bb.sa, label %.loopexit1450

bb.sa:                                            ; preds = %bb.rz
  %i.bht = zext nneg i32 %i.bhr to i64
  %i.bhu = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bhn, i64 %i.bht) ; 2 uses
  %i.bhv = extractvalue { i64, i1 } %i.bhu, 1
  br i1 %i.bhv, label %.loopexit1450, label %bb.sb, !prof !21

bb.sb:                                            ; preds = %bb.sa
  %i.bhw = extractvalue { i64, i1 } %i.bhu, 0     ; 2 uses
  %.not102.i1024 = icmp eq i64 %i.bhl, 0
  br i1 %.not102.i1024, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit1051, label %.lr.ph.i1019

.lr.ph141.i1029:                                  ; preds = %bb.ry, %bb.sc
  %.sroa.0.2140.i1030 = phi ptr [ %i.bid, %bb.sc ], [ %i.bhh, %bb.ry ] ; 2 uses
  %.sroa.26.2139.i1031 = phi i64 [ %i.bic, %bb.sc ], [ %i.bhi, %bb.ry ]
  %.sroa.084.2138.i1032 = phi i64 [ %i.bif, %bb.sc ], [ 0, %bb.ry ]
  %i.bhx = load i8, ptr %.sroa.0.2140.i1030, align 1, !alias.scope !10788, !noalias !10789, !noundef !11
  %i.bhy = zext i8 %i.bhx to i32
  %i.bhz = add nsw i32 %i.bhy, -48                ; 2 uses
  %i.bia = icmp ult i32 %i.bhz, 10
  br i1 %i.bia, label %bb.sc, label %.loopexit1450

bb.sc:                                            ; preds = %.lr.ph141.i1029
  %i.bib = mul i64 %.sroa.084.2138.i1032, 10
  %i.bic = add nsw i64 %.sroa.26.2139.i1031, -1   ; 2 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i1030, i64 1
  %i.bie = zext nneg i32 %i.bhz to i64
  %i.bif = sub i64 %i.bib, %i.bie                 ; 2 uses
  %.not103.i1033 = icmp eq i64 %i.bic, 0
  br i1 %.not103.i1033, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit1051, label %.lr.ph141.i1029

bb.sd:                                            ; preds = %bb.rw, %bb.rx, %thread-pre-split.i1049
  %.sroa.26.0.i1034 = phi i64 [ %i.bhg, %bb.rx ], [ %i.bha, %thread-pre-split.i1049 ], [ %i.bha, %bb.rw ] ; 4 uses
  %.sroa.0.0.i1035 = phi ptr [ %i.bhf, %bb.rx ], [ %i.bhc, %thread-pre-split.i1049 ], [ %i.bhc, %bb.rw ] ; 2 uses
  %i.big = icmp samesign ult i64 %.sroa.26.0.i1034, 16
  br i1 %i.big, label %.preheader.i1042, label %.preheader111.i1036

.preheader.i1042:                                 ; preds = %bb.sd
  %.not105146.i1043 = icmp eq i64 %.sroa.26.0.i1034, 0
  br i1 %.not105146.i1043, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit1051, label %.lr.ph150.i1044

.preheader111.i1036:                              ; preds = %bb.sd, %bb.sg
  %.sroa.0.3145.i1037 = phi ptr [ %i.bih, %bb.sg ], [ %.sroa.0.0.i1035, %bb.sd ] ; 2 uses
  %.sroa.26.3144.i1038 = phi i64 [ %i.bii, %bb.sg ], [ %.sroa.26.0.i1034, %bb.sd ]
  %.sroa.084.3143.i1039 = phi i64 [ %i.bit, %bb.sg ], [ 0, %bb.sd ]
  %i.bih = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i1037, i64 1
  %i.bii = add nsw i64 %.sroa.26.3144.i1038, -1   ; 2 uses
  %i.bij = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i1039, i64 10) ; 2 uses
  %i.bik = extractvalue { i64, i1 } %i.bij, 0
  %i.bil = extractvalue { i64, i1 } %i.bij, 1
  br i1 %i.bil, label %.loopexit1450, label %bb.se, !prof !21

bb.se:                                            ; preds = %.preheader111.i1036
  %i.bim = load i8, ptr %.sroa.0.3145.i1037, align 1, !alias.scope !10788, !noalias !10789, !noundef !11
  %i.bin = zext i8 %i.bim to i32
  %i.bio = add nsw i32 %i.bin, -48                ; 2 uses
  %i.bip = icmp ult i32 %i.bio, 10
  br i1 %i.bip, label %bb.sf, label %.loopexit1450

bb.sf:                                            ; preds = %bb.se
  %i.biq = zext nneg i32 %i.bio to i64
  %i.bir = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bik, i64 %i.biq) ; 2 uses
  %i.bis = extractvalue { i64, i1 } %i.bir, 1
  br i1 %i.bis, label %.loopexit1450, label %bb.sg, !prof !21

bb.sg:                                            ; preds = %bb.sf
  %i.bit = extractvalue { i64, i1 } %i.bir, 0     ; 2 uses
  %.not104.i1041 = icmp eq i64 %i.bii, 0
  br i1 %.not104.i1041, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit1051, label %.preheader111.i1036

.lr.ph150.i1044:                                  ; preds = %.preheader.i1042, %bb.sh
  %.sroa.0.4149.i1045 = phi ptr [ %i.bja, %bb.sh ], [ %.sroa.0.0.i1035, %.preheader.i1042 ] ; 2 uses
  %.sroa.26.4148.i1046 = phi i64 [ %i.biz, %bb.sh ], [ %.sroa.26.0.i1034, %.preheader.i1042 ]
  %.sroa.084.4147.i1047 = phi i64 [ %i.bjc, %bb.sh ], [ 0, %.preheader.i1042 ]
  %i.biu = load i8, ptr %.sroa.0.4149.i1045, align 1, !alias.scope !10788, !noalias !10789, !noundef !11
  %i.biv = zext i8 %i.biu to i32
  %i.biw = add nsw i32 %i.biv, -48                ; 2 uses
  %i.bix = icmp ult i32 %i.biw, 10
  br i1 %i.bix, label %bb.sh, label %.loopexit1450

bb.sh:                                            ; preds = %.lr.ph150.i1044
  %i.biy = mul i64 %.sroa.084.4147.i1047, 10
  %i.biz = add nsw i64 %.sroa.26.4148.i1046, -1   ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i1045, i64 1
  %i.bjb = zext nneg i32 %i.biw to i64
  %i.bjc = add i64 %i.biy, %i.bjb                 ; 2 uses
  %.not105.i1048 = icmp eq i64 %i.biz, 0
  br i1 %.not105.i1048, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit1051, label %.lr.ph150.i1044

.loopexit1450:                                    ; preds = %.lr.ph.i1019, %bb.sa, %bb.rz, %.lr.ph141.i1029, %.preheader111.i1036, %bb.se, %bb.sf, %.lr.ph150.i1044, %bb.rw, %bb.rw, %.thread1408
  %.ph1416 = phi ptr [ %i.bhc, %.preheader111.i1036 ], [ %i.bhc, %.lr.ph141.i1029 ], [ %i.bhc, %.lr.ph150.i1044 ], [ %i.bhc, %bb.rw ], [ inttoptr (i64 1 to ptr), %.thread1408 ], [ %i.bhc, %bb.rw ], [ %i.bhc, %bb.sf ], [ %i.bhc, %bb.se ], [ %i.bhc, %bb.rz ], [ %i.bhc, %bb.sa ], [ %i.bhc, %.lr.ph.i1019 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.fe, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1416, i64 noundef %i.bha) #39
  %i.bjd = load i8, ptr %i.fe, align 8, !range !18, !noundef !11
  %i.bje = trunc nuw i8 %i.bjd to i1
  br i1 %i.bje, label %bb.sk, label %bb.sl

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit1051: ; preds = %bb.sb, %bb.sc, %bb.sg, %bb.sh, %.preheader.i1042
  %.sroa.151135.0 = phi i64 [ %i.bit, %bb.sg ], [ %i.bif, %bb.sc ], [ %i.bjc, %bb.sh ], [ 0, %.preheader.i1042 ], [ %i.bhw, %bb.sb ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ff, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 3, i64 noundef %.sroa.151135.0) #34
  br label %bb.si

bb.si:                                            ; preds = %bb.sl, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit1051
  %i.bjf = phi ptr [ %.ph1416, %bb.sl ], [ %i.bhc, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit1051 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fc) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  %i.bjg = icmp eq i64 %i.bha, 0
  br i1 %i.bjg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1054, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bjf, i64 noundef %i.bha, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10790
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1054

bb.sk:                                            ; preds = %.loopexit1450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  store i64 %i.bha, ptr %i.fd, align 8
  store ptr %.ph1416, ptr %.sroa.51130.0..sroa_idx, align 8
  store i64 %i.bha, ptr %.sroa.81131.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ff, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.fd) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fc) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1054

bb.sl:                                            ; preds = %.loopexit1450
  %i.bjh = load double, ptr %i.pe, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ff, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 3, double noundef %i.bjh) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  br label %bb.si

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1054: ; preds = %bb.sj, %bb.si, %bb.sk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  store ptr %i.fg, ptr %i.fb, align 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4118.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10791
  store ptr %i.fk, ptr %i.c, align 8, !noalias !10791
  store ptr null, ptr %i.pf, align 8, !noalias !10791
  %i.bji = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @111, ptr noundef nonnull @56, ptr noundef nonnull %i.fb) #34
  %i.bjj = load ptr, ptr %i.pf, align 8, !noalias !10791, !noundef !11 ; 7 uses
  %.not.i5.i1056 = icmp eq ptr %i.bjj, null       ; 2 uses
  br i1 %i.bji, label %bb.sm, label %bb.sn

bb.sm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1054
  br i1 %.not.i5.i1056, label %bb.sr, label %bb.ss, !prof !21

bb.sn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1054
  br i1 %.not.i5.i1056, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i1058.thread, label %bb.so

bb.so:                                            ; preds = %bb.sn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10792
  %i.bjk = ptrtoint ptr %i.bjj to i64             ; 2 uses
  %i.bjl = and i64 %i.bjk, 3
  switch i64 %i.bjl, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1057
    i64 3, label %bb.sp
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1057
    i64 1, label %bb.sq
  ], !prof !31

bb.sp:                                            ; preds = %bb.so
  %i.bjm = icmp ult ptr %i.bjj, inttoptr (i64 188978561024 to ptr)
  %i.bjn = and i64 %i.bjk, 1095216660480
  %i.bjo = icmp ne i64 %i.bjn, 1095216660480
  call void @llvm.assume(i1 %i.bjm)
  call void @llvm.assume(i1 %i.bjo)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1057

bb.sq:                                            ; preds = %bb.so
  %i.bjp = getelementptr i8, ptr %i.bjj, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bjp) ]
  store ptr %i.bjp, ptr %i.pg, align 8, !alias.scope !10793, !noalias !10792
  store i8 3, ptr %i.b, align 8, !alias.scope !10793, !noalias !10792
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pg) #34, !noalias !10794
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1057

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1057: ; preds = %bb.sq, %bb.sp, %bb.so, %bb.so
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10792
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i1058.thread

bb.sr:                                            ; preds = %bb.sm
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #40
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i1058.thread: ; preds = %bb.sn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i.i.i1057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10791
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1065

bb.ss:                                            ; preds = %bb.sm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10795
  %i.bjq = ptrtoint ptr %i.bjj to i64             ; 2 uses
  %i.bjr = and i64 %i.bjq, 3
  switch i64 %i.bjr, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1063
    i64 3, label %bb.st
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1063
    i64 1, label %bb.su
  ], !prof !31

bb.st:                                            ; preds = %bb.ss
  %i.bjs = icmp ult ptr %i.bjj, inttoptr (i64 188978561024 to ptr)
  %i.bjt = and i64 %i.bjq, 1095216660480
  %i.bju = icmp ne i64 %i.bjt, 1095216660480
  call void @llvm.assume(i1 %i.bjs)
  call void @llvm.assume(i1 %i.bju)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1063

bb.su:                                            ; preds = %bb.ss
  %i.bjv = getelementptr i8, ptr %i.bjj, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bjv) ]
  store ptr %i.bjv, ptr %i.ph, align 8, !alias.scope !10796, !noalias !10795
  store i8 3, ptr %i.a, align 8, !alias.scope !10796, !noalias !10795
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ph) #34, !noalias !10795
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1063

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1063: ; preds = %bb.su, %bb.st, %bb.ss, %bb.ss
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10795
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1065

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1065: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit.i1058.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgcf5BHVXlUt_7uu_sort.exit.i1063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.experimental.noalias.scope.decl(metadata !10797)
  call void @llvm.experimental.noalias.scope.decl(metadata !10798)
  %.val.i.i1066 = load i64, ptr %i.fg, align 8, !range !22, !alias.scope !10799, !noundef !11 ; 2 uses
  %i.bjw = icmp eq i64 %.val.i.i1066, 0
  br i1 %i.bjw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1068, label %bb.sv

bb.sv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1065
  %.val1.i.i1067 = load ptr, ptr %i.pi, align 8, !alias.scope !10799, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1067, i64 noundef %.val.i.i1066, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !10799
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1068

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1068: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgcf5BHVXlUt_7uu_sort.exit1065, %bb.sv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  %.val260 = load ptr, ptr %i.fk, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %.val260, i64 12 ; 2 uses
  %i.bjy = load i32, ptr %i.bjx, align 4, !noundef !11
  %i.bjz = add i32 %i.bjy, -1                     ; 2 uses
  store i32 %i.bjz, ptr %i.bjx, align 4
  %i.bka = icmp eq i32 %i.bjz, 0
  br i1 %i.bka, label %bb.sw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1069

bb.sw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1068
  store atomic i64 0, ptr %.val260 monotonic, align 8
  %i.bkb = getelementptr inbounds nuw i8, ptr %.val260, i64 8 ; 2 uses
  %i.bkc = atomicrmw xchg ptr %i.bkb, i32 0 release, align 4
  %i.bkd = icmp eq i32 %i.bkc, 2
  br i1 %i.bkd, label %bb.sx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1069, !prof !21

bb.sx:                                            ; preds = %bb.sw
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bkb) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1069

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgcf5BHVXlUt_7uu_sort.exit1069: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit1068, %bb.sw, %bb.sx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  br label %.backedge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc ptr @_RNvCsgcf5BHVXlUt_7uu_sort19invalid_count_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 29, 35) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %3, ptr %.sroa.53.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 1, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10820
  store i64 0, ptr %i.c, align 8, !noalias !10820
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvCsgcf5BHVXlUt_7uu_sort23salt_from_random_source:bb.a

bb.v:                                             ; preds = %bb.t
  %i.bg = call noundef i64 @llvm.fshr.i64(i64 %.sroa.9.0, i64 %.sroa.9.0, i64 %..i) ; 4 uses
  %i.bh = icmp samesign ult i64 %..i, 17
  br i1 %i.bh, label %bb.x, label %bb.w, !prof !17

bb.w:                                             ; preds = %bb.v
  %i.bi = call noundef i64 @_RNvCs8xMRKdnofT_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %..i, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8) #39, !noalias !11081
  br label %_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit

bb.x:                                             ; preds = %bb.v
  %i.bj = icmp samesign ugt i64 %..i, 7
  br i1 %i.bj, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = icmp samesign ugt i64 %..i, 3
  br i1 %i.bk, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.z

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.x
  %.sroa.014.0.copyload.i.i = load i64, ptr %i.f, align 8, !alias.scope !11082, !noalias !11083
  %i.bl = xor i64 %.sroa.014.0.copyload.i.i, %i.bg
  %i.bm = getelementptr i8, ptr %i.f, i64 %..i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %.sroa.016.0.copyload.i.i = load i64, ptr %i.bn, align 1, !alias.scope !11082, !noalias !11083
  br label %_RNvCs8xMRKdnofT_8foldhash16hash_bytes_short.exit.i

bb.z:                                             ; preds = %bb.y
  %i.bo = load i8, ptr %i.f, align 8, !alias.scope !11082, !noalias !11083, !noundef !11
  %i.bp = lshr i64 %..i, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !11082, !noalias !11083, !noundef !11
  %i.bs = getelementptr i8, ptr %i.f, i64 %..i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !11082, !noalias !11083, !noundef !11
  %i.bv = zext i8 %i.bo to i64
  %i.bw = xor i64 %i.bg, %i.bv
  %i.bx = zext i8 %i.bu to i64
  %i.by = shl nuw nsw i64 %i.bx, 8
  %i.bz = zext i8 %i.br to i64
  %i.ca = or disjoint i64 %i.by, %i.bz
  br label %_RNvCs8xMRKdnofT_8foldhash16hash_bytes_short.exit.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.y
  %i.cb = getelementptr i8, ptr %i.f, i64 %..i
  %i.cc = getelementptr i8, ptr %i.cb, i64 -4
  %.sroa.019.0.copyload.i.i = load i32, ptr %i.cc, align 1, !alias.scope !11082, !noalias !11083
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.f, align 8, !alias.scope !11082, !noalias !11083
  %i.cd = zext i32 %.sroa.018.0.copyload.i.i to i64
  %i.ce = xor i64 %i.bg, %i.cd
  %i.cf = zext i32 %.sroa.019.0.copyload.i.i to i64
  br label %_RNvCs8xMRKdnofT_8foldhash16hash_bytes_short.exit.i

_RNvCs8xMRKdnofT_8foldhash16hash_bytes_short.exit.i: ; preds = %bb.z, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i
  %.sroa.04.0.i.i.in = phi i64 [ %.sroa.016.0.copyload.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i ], [ %i.cf, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i ], [ %i.ca, %bb.z ]
  %.sroa.0.0.i.i = phi i64 [ %i.bl, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i ], [ %i.ce, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i ], [ %i.bw, %bb.z ]
  %.sroa.04.0.i.i = xor i64 %.sroa.04.0.i.i.in, 4577018097722394903
  %i.cg = zext i64 %.sroa.0.0.i.i to i128
  %i.ch = zext i64 %.sroa.04.0.i.i to i128
  %i.ci = mul nuw i128 %i.cg, %i.ch               ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = xor i128 %i.cj, %i.ci
  %i.cl = trunc i128 %i.ck to i64
  br label %_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit

_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit: ; preds = %bb.w, %_RNvCs8xMRKdnofT_8foldhash16hash_bytes_short.exit.i
  %storemerge.i38 = phi i64 [ %i.bi, %bb.w ], [ %i.cl, %_RNvCs8xMRKdnofT_8foldhash16hash_bytes_short.exit.i ] ; 2 uses
  %i.cm = add nuw nsw i64 %..i, %.sroa.03.0
  %i.cn = icmp ult i64 %i.be, %i.ac
  br i1 %i.cn, label %_RNvXs_NtCs8xMRKdnofT_8foldhash4fastNtB4_10FoldHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish.exit, label %bb.l

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadNtNtB4_6marker4SendEL_EECsgcf5BHVXlUt_7uu_sort.exit50: ; preds = %bb.j, %bb.p, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i49, %bb.s
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvCsgcf5BHVXlUt_7uu_sort24allows_traditional_usage() unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtNtCsh036I4OHgIr_6uucore4mods5posix13posix_version() #34 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = trunc nuw i64 %i.b to i1
  %i.e = add i64 %i.c, -200809
  %spec.select.i = icmp ult i64 %i.e, -697
  %not. = xor i1 %i.d, true
  %i.f = select i1 %not., i1 true, i1 %spec.select.i
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCsgcf5BHVXlUt_7uu_sort26incompatible_options_error(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.not.i = icmp slt i64 %1, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !11095
  %i.i = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !11095 ; 18 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %1) #37
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %0, i64 %1, i1 false)
  %cond = icmp eq i64 %1, 1
  %i.k = load i8, ptr %i.i, align 1, !alias.scope !11096, !noalias !11097 ; 2 uses
  br i1 %cond, label %bb.f, label %thread-pre-split.i

bb.f:                                             ; preds = %bb.e
  switch i8 %i.k, label %bb.m [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.e
  switch i8 %i.k, label %bb.m [
    i8 43, label %bb.g
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %thread-pre-split.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.m = add nsw i64 %1, -1
  br label %bb.m

bb.h:                                             ; preds = %thread-pre-split.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp samesign ult i64 %1, 17
  br i1 %i.p, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %.sroa.0.1136.i = phi ptr [ %i.q, %bb.k ], [ %i.n, %bb.h ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.r, %bb.k ], [ %i.o, %bb.h ]
  %.sroa.084.0134.i = phi i64 [ %i.ac, %bb.k ], [ 0, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.r = add nsw i64 %.sroa.26.1135.i, -1         ; 2 uses
  %i.s = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 0
  %i.u = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.u, label %.thread, label %bb.i, !prof !21

bb.i:                                             ; preds = %.lr.ph.i
  %i.v = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !11096, !noalias !11097, !noundef !11
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.t, i64 %i.z) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %.thread, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.ac = extractvalue { i64, i1 } %i.aa, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.r, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.h, %bb.l
  %.sroa.0.2140.i = phi ptr [ %i.aj, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ai, %bb.l ], [ %i.o, %bb.h ]
  %.sroa.084.2138.i = phi i64 [ %i.al, %bb.l ], [ 0, %bb.h ]
  %i.ad = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !11096, !noalias !11097, !noundef !11
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %i.ag = icmp ult i32 %i.af, 10
  br i1 %i.ag, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph141.i
  %i.ah = mul i64 %.sroa.084.2138.i, 10
  %i.ai = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.ak = zext nneg i32 %i.af to i64
  %i.al = sub i64 %i.ah, %i.ak                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ai, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.m:                                             ; preds = %bb.f, %bb.g, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.m, %bb.g ], [ %1, %thread-pre-split.i ], [ %1, %bb.f ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.l, %bb.g ], [ %i.i, %thread-pre-split.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.am = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.am, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.m
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.m, %bb.p
  %.sroa.0.3145.i = phi ptr [ %i.an, %bb.p ], [ %.sroa.0.0.i, %bb.m ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.ao, %bb.p ], [ %.sroa.26.0.i, %bb.m ]
  %.sroa.084.3143.i = phi i64 [ %i.az, %bb.p ], [ 0, %bb.m ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.ao = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.ap = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 0
  %i.ar = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.ar, label %.thread, label %bb.n, !prof !21

bb.n:                                             ; preds = %.preheader111.i
  %i.as = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !11096, !noalias !11097, !noundef !11
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aq, i64 %i.aw) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  br i1 %i.ay, label %.thread, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.az = extractvalue { i64, i1 } %i.ax, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.ao, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.q
  %.sroa.0.4149.i = phi ptr [ %i.bg, %bb.q ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.bf, %bb.q ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.bi, %bb.q ], [ 0, %.preheader.i ]
  %i.ba = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !11096, !noalias !11097, !noundef !11
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.q, label %.thread

bb.q:                                             ; preds = %.lr.ph150.i
  %i.be = mul i64 %.sroa.084.4147.i, 10
  %i.bf = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.bh = zext nneg i32 %i.bc to i64
  %i.bi = add i64 %i.be, %i.bh                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bf, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i, %bb.j, %bb.i, %.lr.ph141.i, %.preheader111.i, %bb.n, %bb.o, %.lr.ph150.i, %bb.f, %bb.f, %bb.b
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.i, %.preheader111.i ], [ %i.i, %.lr.ph150.i ], [ %i.i, %bb.f ], [ %i.i, %.lr.ph141.i ], [ %i.i, %bb.f ], [ %i.i, %bb.o ], [ %i.i, %bb.n ], [ %i.i, %bb.i ], [ %i.i, %bb.j ], [ %i.i, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %1) #39
  %i.bj = load i8, ptr %i.f, align 8, !range !18, !noundef !11
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.r, label %bb.s

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.k, %bb.l, %bb.p, %bb.q, %.preheader.i
  %.sroa.1516.0 = phi i64 [ %i.az, %bb.p ], [ %i.al, %bb.l ], [ %i.bi, %bb.q ], [ 0, %.preheader.i ], [ %i.ac, %bb.k ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 4, i64 noundef %.sroa.1516.0) #34
  br label %bb.t

bb.r:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %1, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %1, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.s:                                             ; preds = %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 4, double noundef %i.bm) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.bn = phi ptr [ %.ph, %bb.r ], [ %.ph, %bb.s ], [ %i.i, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.0.0.not = phi i1 [ true, %bb.r ], [ false, %bb.s ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #39
  %i.bo = load i8, ptr %i.d, align 8, !range !18, !noundef !11
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.u, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = load double, ptr %i.bq, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 4, double noundef %i.br) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.819.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bs = icmp eq i64 %1, 0
  %or.cond = or i1 %.sroa.0.0.not, %i.bs
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit12, label %bb.x

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit12: ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !11098
  %i.bt = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !11098 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.w, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit12
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #37, !noalias !11098
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i32 2, ptr %.sroa.429.0..sroa_idx, align 8
  %i.bv = insertvalue { ptr, ptr } poison, ptr %i.bt, 0
  %i.bw = insertvalue { ptr, ptr } %i.bv, ptr @89, 1
  ret { ptr, ptr } %i.bw

bb.x:                                             ; preds = %bb.v
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !11099
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit12
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCsgcf5BHVXlUt_7uu_sort4exec(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef align 8 dereferenceable(64) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [160 x i8], align 8         ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 10 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.4.i.i3 = alloca [24 x i8], align 8       ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [224 x i8], align 8               ; 4 uses
  %i.q = alloca [224 x i8], align 8               ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 6 uses
  %i.v = alloca [224 x i8], align 8               ; 28 uses
  %i.w = alloca [224 x i8], align 8               ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 9 uses
  %i.ab = alloca [56 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [96 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 9 uses
  %i.af = alloca [56 x i8], align 8               ; 13 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [96 x i8], align 8               ; 8 uses
  %i.ai = alloca [96 x i8], align 8               ; 9 uses
  %i.aj = alloca [56 x i8], align 8               ; 10 uses
  %i.ak = alloca [96 x i8], align 8               ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [56 x i8], align 8               ; 13 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [96 x i8], align 8               ; 8 uses
  %i.ap = alloca [96 x i8], align 8               ; 10 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 10 uses
  %i.as = alloca [24 x i8], align 8               ; 12 uses
  %i.at = alloca [96 x i8], align 8               ; 7 uses
  %i.au = alloca [96 x i8], align 8               ; 8 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.4218.i.i = alloca [24 x i8], align 8     ; 4 uses
  %i.ay = alloca [112 x i8], align 8              ; 4 uses
  %i.az = alloca [48 x i8], align 8               ; 8 uses
  %i.ba = alloca [96 x i8], align 8               ; 4 uses
  %i.bb = alloca [32 x i8], align 8               ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 9 uses
  %i.bd = alloca [112 x i8], align 8              ; 8 uses
  %i.be = alloca [112 x i8], align 8              ; 11 uses
  %i.bf = alloca [32 x i8], align 8               ; 7 uses
  %i.bg = alloca [96 x i8], align 8               ; 8 uses
  %i.bh = alloca [96 x i8], align 8               ; 9 uses
  %.sroa.4.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.bi = alloca [112 x i8], align 8              ; 4 uses
  %i.bj = alloca [48 x i8], align 8               ; 8 uses
  %i.bk = alloca [96 x i8], align 8               ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [112 x i8], align 8              ; 8 uses
  %i.bo = alloca [112 x i8], align 8              ; 11 uses
  %i.bp = alloca [32 x i8], align 8               ; 7 uses
  %i.bq = alloca [96 x i8], align 8               ; 8 uses
  %i.br = alloca [96 x i8], align 8               ; 10 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [24 x i8], align 8               ; 10 uses
  %i.bu = alloca [24 x i8], align 8               ; 12 uses
  %i.bv = alloca [96 x i8], align 8               ; 7 uses
  %i.bw = alloca [96 x i8], align 8               ; 8 uses
  %i.bx = alloca [8 x i8], align 8                ; 5 uses
  %i.by = alloca [16 x i8], align 8               ; 4 uses
  %i.bz = alloca [16 x i8], align 8               ; 4 uses
  %i.ca = alloca [56 x i8], align 8               ; 10 uses
  %i.cb = alloca [56 x i8], align 8               ; 14 uses
  %i.cc = alloca [56 x i8], align 8               ; 4 uses
  %i.cd = alloca [64 x i8], align 8               ; 12 uses
  %i.ce = alloca [64 x i8], align 8               ; 12 uses
  %.sroa.5.i.i.i.i.i.i = alloca [39 x i8], align 1 ; 6 uses
  %.sroa.518.i.i.i.i.i.i = alloca [39 x i8], align 1 ; 6 uses
  %i.cf = alloca [64 x i8], align 8               ; 13 uses
  %i.cg = alloca [64 x i8], align 8               ; 13 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [32 x i8], align 8               ; 8 uses
  %i.cj = alloca [24 x i8], align 8               ; 7 uses
  %i.ck = alloca [24 x i8], align 8               ; 2 uses
  %i.cl = alloca [16 x i8], align 8               ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 131
  %i.cn = load i8, ptr %i.cm, align 1, !range !18, !noundef !11
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 135
  %i.cq = load i8, ptr %i.cp, align 1, !range !18, !noundef !11
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.eq, label %bb.ep

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11548)
  %i.cs = load i64, ptr %3, align 8, !range !10, !alias.scope !11549, !noalias !11550, !noundef !11 ; 7 uses
  %.not.i.i = icmp eq i64 %i.cs, -1               ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_3
begin_hunk_4_@_RNvXse_Csgcf5BHVXlUt_7uu_sortNtB5_9SortErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %i.adz = extractvalue { i64, i1 } %i.adx, 1
  br i1 %i.adz, label %.loopexit1420, label %bb.hh, !prof !21

bb.hh:                                            ; preds = %.preheader111.i644
  %i.aea = load i8, ptr %.sroa.0.3145.i645, align 1, !alias.scope !16487, !noalias !16488, !noundef !11
  %i.aeb = zext i8 %i.aea to i32
  %i.aec = add nsw i32 %i.aeb, -48                ; 2 uses
  %i.aed = icmp ult i32 %i.aec, 10
  br i1 %i.aed, label %bb.hi, label %.loopexit1420

bb.hi:                                            ; preds = %bb.hh
  %i.aee = zext nneg i32 %i.aec to i64
  %i.aef = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ady, i64 %i.aee) ; 2 uses
  %i.aeg = extractvalue { i64, i1 } %i.aef, 1
  br i1 %i.aeg, label %.loopexit1420, label %bb.hj, !prof !21

bb.hj:                                            ; preds = %bb.hi
  %i.aeh = extractvalue { i64, i1 } %i.aef, 0     ; 2 uses
  %.not104.i649 = icmp eq i64 %i.adw, 0
  br i1 %.not104.i649, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit659, label %.preheader111.i644

.lr.ph150.i652:                                   ; preds = %.preheader.i650, %bb.hk
  %.sroa.0.4149.i653 = phi ptr [ %i.aeo, %bb.hk ], [ %.sroa.0.0.i643, %.preheader.i650 ] ; 2 uses
  %.sroa.26.4148.i654 = phi i64 [ %i.aen, %bb.hk ], [ %.sroa.26.0.i642, %.preheader.i650 ]
  %.sroa.084.4147.i655 = phi i64 [ %i.aeq, %bb.hk ], [ 0, %.preheader.i650 ]
  %i.aei = load i8, ptr %.sroa.0.4149.i653, align 1, !alias.scope !16487, !noalias !16488, !noundef !11
  %i.aej = zext i8 %i.aei to i32
  %i.aek = add nsw i32 %i.aej, -48                ; 2 uses
  %i.ael = icmp ult i32 %i.aek, 10
  br i1 %i.ael, label %bb.hk, label %.loopexit1420

bb.hk:                                            ; preds = %.lr.ph150.i652
  %i.aem = mul i64 %.sroa.084.4147.i655, 10
  %i.aen = add nsw i64 %.sroa.26.4148.i654, -1    ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i653, i64 1
  %i.aep = zext nneg i32 %i.aek to i64
  %i.aeq = add i64 %i.aem, %i.aep                 ; 2 uses
  %.not105.i656 = icmp eq i64 %i.aen, 0
  br i1 %.not105.i656, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit659, label %.lr.ph150.i652

bb.hl:                                            ; preds = %bb.bu
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mc, ptr nonnull align 1 %i.ly, i64 %i.ma, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit385.thread1250

.loopexit1420:                                    ; preds = %.lr.ph.i627, %bb.hd, %bb.hc, %.lr.ph141.i637, %.preheader111.i644, %bb.hh, %bb.hi, %.lr.ph150.i652, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit625, %bb.gy, %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.acp, i64 noundef %i.ma) #39
  %i.aer = load i8, ptr %i.ce, align 8, !range !18, !noundef !11
  %i.aes = trunc nuw i8 %i.aer to i1
  br i1 %i.aes, label %bb.ho, label %bb.hp

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit659: ; preds = %bb.he, %bb.hf, %bb.hj, %bb.hk, %.preheader.i650, %.preheader114.i635
  %.sroa.151022.0 = phi i64 [ %i.aeq, %bb.hk ], [ %i.adt, %bb.hf ], [ %i.aeh, %bb.hj ], [ 0, %.preheader.i650 ], [ 0, %.preheader114.i635 ], [ %i.adk, %bb.he ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 5, i64 noundef %.sroa.151022.0) #34
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ch, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @719, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cc) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br i1 %i.mb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit662, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acp, i64 noundef %i.ma, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16489
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit662

bb.ho:                                            ; preds = %.loopexit1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store i64 %i.ma, ptr %i.cd, align 8
  %.sroa.51015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.acp, ptr %.sroa.51015.0..sroa_idx, align 8
  %.sroa.91017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 %i.ma, ptr %.sroa.91017.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cd) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ch, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @719, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cc) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit662

bb.hp:                                            ; preds = %.loopexit1420
  %i.aet = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.aeu = load double, ptr %i.aet, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 5, double noundef %i.aeu) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.hm

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit662: ; preds = %bb.hn, %bb.hm, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store ptr %i.ch, ptr %i.cb, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4113.0..sroa_idx, align 8
  %i.aev = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.aew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aex = load ptr, ptr %i.aew, align 8, !nonnull !11, !align !13, !noundef !11
  %i.aey = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.aev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aex, ptr noundef nonnull @55, ptr noundef nonnull %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.experimental.noalias.scope.decl(metadata !16490)
  call void @llvm.experimental.noalias.scope.decl(metadata !16491)
  %.val.i.i663 = load i64, ptr %i.ch, align 8, !range !22, !alias.scope !16492, !noundef !11 ; 2 uses
  %i.aez = icmp eq i64 %.val.i.i663, 0
  br i1 %i.aez, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit665, label %bb.hq

bb.hq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit662
  %i.afa = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.val1.i.i664 = load ptr, ptr %i.afa, align 8, !alias.scope !16492, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i664, i64 noundef %.val.i.i663, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16492
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit665

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit665: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit662, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %bb.dn

bb.hr:                                            ; preds = %bb.bv, %bb.bx
  %.sroa.41142.0.ph = phi i64 [ 1, %bb.bx ], [ 0, %bb.bv ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41142.0.ph, i64 %i.mi) #37
  unreachable

bb.hs:                                            ; preds = %bb.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mk, ptr nonnull align 1 %i.mg, i64 %i.mi, i1 false)
  %cond = icmp eq i64 %i.mi, 1
  %i.afb = load i8, ptr %i.mk, align 1, !alias.scope !16493, !noalias !16494 ; 2 uses
  br i1 %cond, label %bb.ht, label %thread-pre-split.i697

bb.ht:                                            ; preds = %bb.hs
  switch i8 %i.afb, label %bb.ia [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i697:                            ; preds = %bb.hs
  switch i8 %i.afb, label %bb.ia [
    i8 43, label %bb.hu
    i8 45, label %bb.hv
  ]

bb.hu:                                            ; preds = %thread-pre-split.i697
  %i.afc = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.afd = add nsw i64 %i.mi, -1
  br label %bb.ia

bb.hv:                                            ; preds = %thread-pre-split.i697
  %i.afe = getelementptr inbounds nuw i8, ptr %i.mk, i64 1 ; 2 uses
  %i.aff = add nsw i64 %i.mi, -1                  ; 2 uses
  %i.afg = icmp samesign ult i64 %i.mi, 17
  br i1 %i.afg, label %.lr.ph141.i677, label %.lr.ph.i667

.lr.ph.i667:                                      ; preds = %bb.hv, %bb.hy
  %.sroa.0.1136.i668 = phi ptr [ %i.afh, %bb.hy ], [ %i.afe, %bb.hv ] ; 2 uses
  %.sroa.26.1135.i669 = phi i64 [ %i.afi, %bb.hy ], [ %i.aff, %bb.hv ]
  %.sroa.084.0134.i670 = phi i64 [ %i.aft, %bb.hy ], [ 0, %bb.hv ]
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i668, i64 1
  %i.afi = add nsw i64 %.sroa.26.1135.i669, -1    ; 2 uses
  %i.afj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i670, i64 10) ; 2 uses
  %i.afk = extractvalue { i64, i1 } %i.afj, 0
  %i.afl = extractvalue { i64, i1 } %i.afj, 1
  br i1 %i.afl, label %.thread, label %bb.hw, !prof !21

bb.hw:                                            ; preds = %.lr.ph.i667
  %i.afm = load i8, ptr %.sroa.0.1136.i668, align 1, !alias.scope !16493, !noalias !16494, !noundef !11
  %i.afn = zext i8 %i.afm to i32
  %i.afo = add nsw i32 %i.afn, -48                ; 2 uses
  %i.afp = icmp ult i32 %i.afo, 10
  br i1 %i.afp, label %bb.hx, label %.thread

bb.hx:                                            ; preds = %bb.hw
  %i.afq = zext nneg i32 %i.afo to i64
  %i.afr = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.afk, i64 %i.afq) ; 2 uses
  %i.afs = extractvalue { i64, i1 } %i.afr, 1
  br i1 %i.afs, label %.thread, label %bb.hy, !prof !21

bb.hy:                                            ; preds = %bb.hx
  %i.aft = extractvalue { i64, i1 } %i.afr, 0     ; 2 uses
  %.not102.i672 = icmp eq i64 %i.afi, 0
  br i1 %.not102.i672, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit699, label %.lr.ph.i667

.lr.ph141.i677:                                   ; preds = %bb.hv, %bb.hz
  %.sroa.0.2140.i678 = phi ptr [ %i.aga, %bb.hz ], [ %i.afe, %bb.hv ] ; 2 uses
  %.sroa.26.2139.i679 = phi i64 [ %i.afz, %bb.hz ], [ %i.aff, %bb.hv ]
  %.sroa.084.2138.i680 = phi i64 [ %i.agc, %bb.hz ], [ 0, %bb.hv ]
  %i.afu = load i8, ptr %.sroa.0.2140.i678, align 1, !alias.scope !16493, !noalias !16494, !noundef !11
  %i.afv = zext i8 %i.afu to i32
  %i.afw = add nsw i32 %i.afv, -48                ; 2 uses
  %i.afx = icmp ult i32 %i.afw, 10
  br i1 %i.afx, label %bb.hz, label %.thread

bb.hz:                                            ; preds = %.lr.ph141.i677
  %i.afy = mul i64 %.sroa.084.2138.i680, 10
  %i.afz = add nsw i64 %.sroa.26.2139.i679, -1    ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i678, i64 1
  %i.agb = zext nneg i32 %i.afw to i64
  %i.agc = sub i64 %i.afy, %i.agb                 ; 2 uses
  %.not103.i681 = icmp eq i64 %i.afz, 0
  br i1 %.not103.i681, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit699, label %.lr.ph141.i677

bb.ia:                                            ; preds = %bb.ht, %bb.hu, %thread-pre-split.i697
  %.sroa.26.0.i682 = phi i64 [ %i.afd, %bb.hu ], [ %i.mi, %thread-pre-split.i697 ], [ %i.mi, %bb.ht ] ; 4 uses
  %.sroa.0.0.i683 = phi ptr [ %i.afc, %bb.hu ], [ %i.mk, %thread-pre-split.i697 ], [ %i.mk, %bb.ht ] ; 2 uses
  %i.agd = icmp samesign ult i64 %.sroa.26.0.i682, 16
  br i1 %i.agd, label %.preheader.i690, label %.preheader111.i684

.preheader.i690:                                  ; preds = %bb.ia
  %.not105146.i691 = icmp eq i64 %.sroa.26.0.i682, 0
  br i1 %.not105146.i691, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit699, label %.lr.ph150.i692

.preheader111.i684:                               ; preds = %bb.ia, %bb.id
  %.sroa.0.3145.i685 = phi ptr [ %i.age, %bb.id ], [ %.sroa.0.0.i683, %bb.ia ] ; 2 uses
  %.sroa.26.3144.i686 = phi i64 [ %i.agf, %bb.id ], [ %.sroa.26.0.i682, %bb.ia ]
  %.sroa.084.3143.i687 = phi i64 [ %i.agq, %bb.id ], [ 0, %bb.ia ]
  %i.age = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i685, i64 1
  %i.agf = add nsw i64 %.sroa.26.3144.i686, -1    ; 2 uses
  %i.agg = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i687, i64 10) ; 2 uses
  %i.agh = extractvalue { i64, i1 } %i.agg, 0
  %i.agi = extractvalue { i64, i1 } %i.agg, 1
  br i1 %i.agi, label %.thread, label %bb.ib, !prof !21

bb.ib:                                            ; preds = %.preheader111.i684
  %i.agj = load i8, ptr %.sroa.0.3145.i685, align 1, !alias.scope !16493, !noalias !16494, !noundef !11
  %i.agk = zext i8 %i.agj to i32
  %i.agl = add nsw i32 %i.agk, -48                ; 2 uses
  %i.agm = icmp ult i32 %i.agl, 10
  br i1 %i.agm, label %bb.ic, label %.thread

bb.ic:                                            ; preds = %bb.ib
  %i.agn = zext nneg i32 %i.agl to i64
  %i.ago = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.agh, i64 %i.agn) ; 2 uses
  %i.agp = extractvalue { i64, i1 } %i.ago, 1
  br i1 %i.agp, label %.thread, label %bb.id, !prof !21

bb.id:                                            ; preds = %bb.ic
  %i.agq = extractvalue { i64, i1 } %i.ago, 0     ; 2 uses
  %.not104.i689 = icmp eq i64 %i.agf, 0
  br i1 %.not104.i689, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit699, label %.preheader111.i684

.lr.ph150.i692:                                   ; preds = %.preheader.i690, %bb.ie
  %.sroa.0.4149.i693 = phi ptr [ %i.agx, %bb.ie ], [ %.sroa.0.0.i683, %.preheader.i690 ] ; 2 uses
  %.sroa.26.4148.i694 = phi i64 [ %i.agw, %bb.ie ], [ %.sroa.26.0.i682, %.preheader.i690 ]
  %.sroa.084.4147.i695 = phi i64 [ %i.agz, %bb.ie ], [ 0, %.preheader.i690 ]
  %i.agr = load i8, ptr %.sroa.0.4149.i693, align 1, !alias.scope !16493, !noalias !16494, !noundef !11
  %i.ags = zext i8 %i.agr to i32
  %i.agt = add nsw i32 %i.ags, -48                ; 2 uses
  %i.agu = icmp ult i32 %i.agt, 10
  br i1 %i.agu, label %bb.ie, label %.thread

bb.ie:                                            ; preds = %.lr.ph150.i692
  %i.agv = mul i64 %.sroa.084.4147.i695, 10
  %i.agw = add nsw i64 %.sroa.26.4148.i694, -1    ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i693, i64 1
  %i.agy = zext nneg i32 %i.agt to i64
  %i.agz = add i64 %i.agv, %i.agy                 ; 2 uses
  %.not105.i696 = icmp eq i64 %i.agw, 0
  br i1 %.not105.i696, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit699, label %.lr.ph150.i692

.thread:                                          ; preds = %.lr.ph.i667, %bb.hx, %bb.hw, %.lr.ph141.i677, %.preheader111.i684, %bb.ib, %bb.ic, %.lr.ph150.i692, %bb.ht, %bb.ht, %bb.bw
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.bw ], [ %i.mk, %.preheader111.i684 ], [ %i.mk, %.lr.ph150.i692 ], [ %i.mk, %bb.ht ], [ %i.mk, %.lr.ph141.i677 ], [ %i.mk, %bb.ht ], [ %i.mk, %bb.ic ], [ %i.mk, %bb.ib ], [ %i.mk, %bb.hw ], [ %i.mk, %bb.hx ], [ %i.mk, %.lr.ph.i667 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.mi) #39
  %i.aha = load i8, ptr %i.by, align 8, !range !18, !noundef !11
  %i.ahb = trunc nuw i8 %i.aha to i1
  br i1 %i.ahb, label %bb.ii, label %bb.ij

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit699: ; preds = %bb.hy, %bb.hz, %bb.id, %bb.ie, %.preheader.i690
  %.sroa.151028.0 = phi i64 [ %i.agq, %bb.id ], [ %i.agc, %bb.hz ], [ %i.agz, %bb.ie ], [ 0, %.preheader.i690 ], [ %i.aft, %bb.hy ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 4, i64 noundef %.sroa.151028.0) #34
  br label %bb.if

bb.if:                                            ; preds = %bb.ij, %bb.ii, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit699
  %i.ahc = phi ptr [ %.ph, %bb.ii ], [ %.ph, %bb.ij ], [ %i.mk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit699 ]
  %.sroa.03.0.not = phi i1 [ true, %bb.ii ], [ false, %bb.ij ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit699 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.me) #34
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ahg = load i64, ptr %i.ahf, align 8, !noundef !11 ; 14 uses
  %.not.i700 = icmp slt i64 %i.ahg, 0
  br i1 %.not.i700, label %bb.ik, label %bb.ig, !prof !12

bb.ig:                                            ; preds = %bb.if
  %i.ahh = icmp eq i64 %i.ahg, 0                  ; 2 uses
  br i1 %i.ahh, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit703.thread1283, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !16495
  %i.ahi = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ahg, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16495 ; 3 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.ik, label %bb.iz

bb.ii:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store i64 %i.mi, ptr %i.bx, align 8
  %.sroa.51024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %.ph, ptr %.sroa.51024.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.mi, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bx) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.if

bb.ij:                                            ; preds = %.thread
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ahl = load double, ptr %i.ahk, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 4, double noundef %i.ahl) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.if

bb.ik:                                            ; preds = %bb.if, %bb.ih
  %.sroa.41146.0.ph = phi i64 [ 1, %bb.ih ], [ 0, %bb.if ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41146.0.ph, i64 %i.ahg) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit703.thread1283: ; preds = %bb.ig, %bb.iz
  %i.ahm = phi ptr [ %i.ahi, %bb.iz ], [ inttoptr (i64 1 to ptr), %bb.ig ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16496)
  call void @llvm.experimental.noalias.scope.decl(metadata !16497)
  %.val.i.i704 = load i64, ptr %i.bw, align 8, !range !22, !alias.scope !16498, !noundef !11 ; 2 uses
  %i.ahn = icmp eq i64 %.val.i.i704, 0
  br i1 %i.ahn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit706, label %bb.il

bb.il:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit703.thread1283
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahe, i64 noundef %.val.i.i704, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16498
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit706

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit706: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit703.thread1283, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  switch i64 %i.ahg, label %thread-pre-split.i738 [
    i64 0, label %.loopexit1427
    i64 1, label %bb.im
  ]

bb.im:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit706
  %i.aho = load i8, ptr %i.ahm, align 1, !alias.scope !16499, !noalias !16500, !noundef !11 ; 2 uses
  switch i8 %i.aho, label %bb.in [
    i8 43, label %.loopexit1427
    i8 45, label %.loopexit1427
  ]

thread-pre-split.i738:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit706
  %.pr.i739 = load i8, ptr %i.ahm, align 1, !alias.scope !16499, !noalias !16500
  br label %bb.in

bb.in:                                            ; preds = %thread-pre-split.i738, %bb.im
  %i.ahp = phi i8 [ %.pr.i739, %thread-pre-split.i738 ], [ %i.aho, %bb.im ]
  switch i8 %i.ahp, label %bb.iu [
    i8 43, label %bb.io
    i8 45, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahm, i64 1
  %i.ahr = add nsw i64 %i.ahg, -1
  br label %bb.iu

bb.ip:                                            ; preds = %bb.in
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahm, i64 1 ; 2 uses
  %i.aht = add nsw i64 %i.ahg, -1                 ; 3 uses
  %i.ahu = icmp samesign ult i64 %i.ahg, 17
  br i1 %i.ahu, label %.preheader114.i716, label %.lr.ph.i708

.preheader114.i716:                               ; preds = %bb.ip
  %.not103137.i717 = icmp eq i64 %i.aht, 0
  br i1 %.not103137.i717, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit740, label %.lr.ph141.i718

.lr.ph.i708:                                      ; preds = %bb.ip, %bb.is
  %.sroa.0.1136.i709 = phi ptr [ %i.ahv, %bb.is ], [ %i.ahs, %bb.ip ] ; 2 uses
  %.sroa.26.1135.i710 = phi i64 [ %i.ahw, %bb.is ], [ %i.aht, %bb.ip ]
  %.sroa.084.0134.i711 = phi i64 [ %i.aih, %bb.is ], [ 0, %bb.ip ]
  %i.ahv = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i709, i64 1
  %i.ahw = add nsw i64 %.sroa.26.1135.i710, -1    ; 2 uses
  %i.ahx = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i711, i64 10) ; 2 uses
  %i.ahy = extractvalue { i64, i1 } %i.ahx, 0
  %i.ahz = extractvalue { i64, i1 } %i.ahx, 1
  br i1 %i.ahz, label %.loopexit1427, label %bb.iq, !prof !21

bb.iq:                                            ; preds = %.lr.ph.i708
  %i.aia = load i8, ptr %.sroa.0.1136.i709, align 1, !alias.scope !16499, !noalias !16500, !noundef !11
  %i.aib = zext i8 %i.aia to i32
  %i.aic = add nsw i32 %i.aib, -48                ; 2 uses
  %i.aid = icmp ult i32 %i.aic, 10
  br i1 %i.aid, label %bb.ir, label %.loopexit1427

bb.ir:                                            ; preds = %bb.iq
  %i.aie = zext nneg i32 %i.aic to i64
  %i.aif = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ahy, i64 %i.aie) ; 2 uses
  %i.aig = extractvalue { i64, i1 } %i.aif, 1
  br i1 %i.aig, label %.loopexit1427, label %bb.is, !prof !21

bb.is:                                            ; preds = %bb.ir
  %i.aih = extractvalue { i64, i1 } %i.aif, 0     ; 2 uses
  %.not102.i713 = icmp eq i64 %i.ahw, 0
  br i1 %.not102.i713, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit740, label %.lr.ph.i708

.lr.ph141.i718:                                   ; preds = %.preheader114.i716, %bb.it
  %.sroa.0.2140.i719 = phi ptr [ %i.aio, %bb.it ], [ %i.ahs, %.preheader114.i716 ] ; 2 uses
  %.sroa.26.2139.i720 = phi i64 [ %i.ain, %bb.it ], [ %i.aht, %.preheader114.i716 ]
  %.sroa.084.2138.i721 = phi i64 [ %i.aiq, %bb.it ], [ 0, %.preheader114.i716 ]
  %i.aii = load i8, ptr %.sroa.0.2140.i719, align 1, !alias.scope !16499, !noalias !16500, !noundef !11
  %i.aij = zext i8 %i.aii to i32
  %i.aik = add nsw i32 %i.aij, -48                ; 2 uses
  %i.ail = icmp ult i32 %i.aik, 10
  br i1 %i.ail, label %bb.it, label %.loopexit1427

bb.it:                                            ; preds = %.lr.ph141.i718
  %i.aim = mul i64 %.sroa.084.2138.i721, 10
  %i.ain = add nsw i64 %.sroa.26.2139.i720, -1    ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i719, i64 1
  %i.aip = zext nneg i32 %i.aik to i64
  %i.aiq = sub i64 %i.aim, %i.aip                 ; 2 uses
  %.not103.i722 = icmp eq i64 %i.ain, 0
  br i1 %.not103.i722, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit740, label %.lr.ph141.i718

bb.iu:                                            ; preds = %bb.io, %bb.in
  %.sroa.26.0.i723 = phi i64 [ %i.ahr, %bb.io ], [ %i.ahg, %bb.in ] ; 4 uses
  %.sroa.0.0.i724 = phi ptr [ %i.ahq, %bb.io ], [ %i.ahm, %bb.in ] ; 2 uses
  %i.air = icmp samesign ult i64 %.sroa.26.0.i723, 16
  br i1 %i.air, label %.preheader.i731, label %.preheader111.i725

.preheader.i731:                                  ; preds = %bb.iu
  %.not105146.i732 = icmp eq i64 %.sroa.26.0.i723, 0
  br i1 %.not105146.i732, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit740, label %.lr.ph150.i733

.preheader111.i725:                               ; preds = %bb.iu, %bb.ix
  %.sroa.0.3145.i726 = phi ptr [ %i.ais, %bb.ix ], [ %.sroa.0.0.i724, %bb.iu ] ; 2 uses
  %.sroa.26.3144.i727 = phi i64 [ %i.ait, %bb.ix ], [ %.sroa.26.0.i723, %bb.iu ]
  %.sroa.084.3143.i728 = phi i64 [ %i.aje, %bb.ix ], [ 0, %bb.iu ]
  %i.ais = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i726, i64 1
  %i.ait = add nsw i64 %.sroa.26.3144.i727, -1    ; 2 uses
  %i.aiu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i728, i64 10) ; 2 uses
  %i.aiv = extractvalue { i64, i1 } %i.aiu, 0
  %i.aiw = extractvalue { i64, i1 } %i.aiu, 1
  br i1 %i.aiw, label %.loopexit1427, label %bb.iv, !prof !21

bb.iv:                                            ; preds = %.preheader111.i725
  %i.aix = load i8, ptr %.sroa.0.3145.i726, align 1, !alias.scope !16499, !noalias !16500, !noundef !11
  %i.aiy = zext i8 %i.aix to i32
  %i.aiz = add nsw i32 %i.aiy, -48                ; 2 uses
  %i.aja = icmp ult i32 %i.aiz, 10
  br i1 %i.aja, label %bb.iw, label %.loopexit1427

bb.iw:                                            ; preds = %bb.iv
  %i.ajb = zext nneg i32 %i.aiz to i64
  %i.ajc = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aiv, i64 %i.ajb) ; 2 uses
  %i.ajd = extractvalue { i64, i1 } %i.ajc, 1
  br i1 %i.ajd, label %.loopexit1427, label %bb.ix, !prof !21

bb.ix:                                            ; preds = %bb.iw
  %i.aje = extractvalue { i64, i1 } %i.ajc, 0     ; 2 uses
  %.not104.i730 = icmp eq i64 %i.ait, 0
  br i1 %.not104.i730, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit740, label %.preheader111.i725

.lr.ph150.i733:                                   ; preds = %.preheader.i731, %bb.iy
  %.sroa.0.4149.i734 = phi ptr [ %i.ajl, %bb.iy ], [ %.sroa.0.0.i724, %.preheader.i731 ] ; 2 uses
  %.sroa.26.4148.i735 = phi i64 [ %i.ajk, %bb.iy ], [ %.sroa.26.0.i723, %.preheader.i731 ]
  %.sroa.084.4147.i736 = phi i64 [ %i.ajn, %bb.iy ], [ 0, %.preheader.i731 ]
  %i.ajf = load i8, ptr %.sroa.0.4149.i734, align 1, !alias.scope !16499, !noalias !16500, !noundef !11
  %i.ajg = zext i8 %i.ajf to i32
  %i.ajh = add nsw i32 %i.ajg, -48                ; 2 uses
  %i.aji = icmp ult i32 %i.ajh, 10
  br i1 %i.aji, label %bb.iy, label %.loopexit1427

bb.iy:                                            ; preds = %.lr.ph150.i733
  %i.ajj = mul i64 %.sroa.084.4147.i736, 10
end_hunk_4
begin_hunk_5_@_RNvXse_Csgcf5BHVXlUt_7uu_sortNtB5_9SortErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i814, i64 1
  %i.anz = zext nneg i32 %i.anu to i64
  %i.aoa = sub i64 %i.anw, %i.anz                 ; 2 uses
  %.not103.i817 = icmp eq i64 %i.anx, 0
  br i1 %.not103.i817, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit835, label %.lr.ph141.i813

bb.kq:                                            ; preds = %bb.kk, %bb.kj
  %.sroa.26.0.i818 = phi i64 [ %i.anb, %bb.kk ], [ %.sroa.61073.0.copyload, %bb.kj ] ; 4 uses
  %.sroa.0.0.i819 = phi ptr [ %i.ana, %bb.kk ], [ %i.amw, %bb.kj ] ; 2 uses
  %i.aob = icmp samesign ult i64 %.sroa.26.0.i818, 16
  br i1 %i.aob, label %.preheader.i826, label %.preheader111.i820

.preheader.i826:                                  ; preds = %bb.kq
  %.not105146.i827 = icmp eq i64 %.sroa.26.0.i818, 0
  br i1 %.not105146.i827, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit835, label %.lr.ph150.i828

.preheader111.i820:                               ; preds = %bb.kq, %bb.kt
  %.sroa.0.3145.i821 = phi ptr [ %i.aoc, %bb.kt ], [ %.sroa.0.0.i819, %bb.kq ] ; 2 uses
  %.sroa.26.3144.i822 = phi i64 [ %i.aod, %bb.kt ], [ %.sroa.26.0.i818, %bb.kq ]
  %.sroa.084.3143.i823 = phi i64 [ %i.aoo, %bb.kt ], [ 0, %bb.kq ]
  %i.aoc = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i821, i64 1
  %i.aod = add nsw i64 %.sroa.26.3144.i822, -1    ; 2 uses
  %i.aoe = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i823, i64 10) ; 2 uses
  %i.aof = extractvalue { i64, i1 } %i.aoe, 0
  %i.aog = extractvalue { i64, i1 } %i.aoe, 1
  br i1 %i.aog, label %.loopexit1460, label %bb.kr, !prof !21

bb.kr:                                            ; preds = %.preheader111.i820
  %i.aoh = load i8, ptr %.sroa.0.3145.i821, align 1, !alias.scope !16518, !noalias !16519, !noundef !11
  %i.aoi = zext i8 %i.aoh to i32
  %i.aoj = add nsw i32 %i.aoi, -48                ; 2 uses
  %i.aok = icmp ult i32 %i.aoj, 10
  br i1 %i.aok, label %bb.ks, label %.loopexit1460

bb.ks:                                            ; preds = %bb.kr
  %i.aol = zext nneg i32 %i.aoj to i64
  %i.aom = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aof, i64 %i.aol) ; 2 uses
  %i.aon = extractvalue { i64, i1 } %i.aom, 1
  br i1 %i.aon, label %.loopexit1460, label %bb.kt, !prof !21

bb.kt:                                            ; preds = %bb.ks
  %i.aoo = extractvalue { i64, i1 } %i.aom, 0     ; 2 uses
  %.not104.i825 = icmp eq i64 %i.aod, 0
  br i1 %.not104.i825, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit835, label %.preheader111.i820

.lr.ph150.i828:                                   ; preds = %.preheader.i826, %bb.ku
  %.sroa.0.4149.i829 = phi ptr [ %i.aov, %bb.ku ], [ %.sroa.0.0.i819, %.preheader.i826 ] ; 2 uses
  %.sroa.26.4148.i830 = phi i64 [ %i.aou, %bb.ku ], [ %.sroa.26.0.i818, %.preheader.i826 ]
  %.sroa.084.4147.i831 = phi i64 [ %i.aox, %bb.ku ], [ 0, %.preheader.i826 ]
  %i.aop = load i8, ptr %.sroa.0.4149.i829, align 1, !alias.scope !16518, !noalias !16519, !noundef !11
  %i.aoq = zext i8 %i.aop to i32
  %i.aor = add nsw i32 %i.aoq, -48                ; 2 uses
  %i.aos = icmp ult i32 %i.aor, 10
  br i1 %i.aos, label %bb.ku, label %.loopexit1460

bb.ku:                                            ; preds = %.lr.ph150.i828
  %i.aot = mul i64 %.sroa.084.4147.i831, 10
  %i.aou = add nsw i64 %.sroa.26.4148.i830, -1    ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i829, i64 1
  %i.aow = zext nneg i32 %i.aor to i64
  %i.aox = add i64 %i.aot, %i.aow                 ; 2 uses
  %.not105.i832 = icmp eq i64 %i.aou, 0
  br i1 %.not105.i832, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit835, label %.lr.ph150.i828

bb.kv:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pi, ptr nonnull align 1 %.sroa.41072.0.copyload, i64 %.sroa.61073.0.copyload, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit401.thread1299

.loopexit1460:                                    ; preds = %.lr.ph.i803, %bb.kn, %bb.km, %.lr.ph141.i813, %.preheader111.i820, %bb.kr, %bb.ks, %.lr.ph150.i828, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit801, %bb.ki, %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.amw, i64 noundef %.sroa.61073.0.copyload) #39
  %i.aoy = load i8, ptr %i.aw, align 8, !range !18, !noundef !11
  %i.aoz = trunc nuw i8 %i.aoy to i1
  br i1 %i.aoz, label %bb.kz, label %bb.la

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit835: ; preds = %bb.ko, %bb.kp, %bb.kt, %bb.ku, %.preheader.i826, %.preheader114.i811
  %.sroa.151079.0 = phi i64 [ %i.aox, %bb.ku ], [ %i.aoa, %bb.kp ], [ %i.aoo, %bb.kt ], [ 0, %.preheader.i826 ], [ 0, %.preheader114.i811 ], [ %i.anr, %bb.ko ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, i64 noundef %.sroa.151079.0) #34
  br label %bb.kw

bb.kw:                                            ; preds = %bb.la, %bb.kz, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit835
  %.sroa.04.0.not = phi i1 [ true, %bb.kz ], [ %i.ph, %bb.la ], [ %i.ph, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit835 ]
  %i.apa = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() #34 ; 2 uses
  %i.apb = extractvalue { ptr, i64 } %i.apa, 0
  %i.apc = extractvalue { ptr, i64 } %i.apa, 1    ; 16 uses
  %.not.i836 = icmp slt i64 %i.apc, 0
  br i1 %.not.i836, label %bb.lb, label %bb.kx, !prof !12

bb.kx:                                            ; preds = %bb.kw
  %i.apd = icmp eq i64 %i.apc, 0
  br i1 %i.apd, label %.thread1318, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !16520
  %i.ape = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.apc, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16520 ; 18 uses
  %i.apf = icmp eq ptr %i.ape, null
  br i1 %i.apf, label %bb.lb, label %bb.lc

bb.kz:                                            ; preds = %.loopexit1460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 %.sroa.61073.0.copyload, ptr %i.av, align 8
  %.sroa.51067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.amw, ptr %.sroa.51067.0..sroa_idx, align 8
  %.sroa.91069.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.61073.0.copyload, ptr %.sroa.91069.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.av) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.kw

bb.la:                                            ; preds = %.loopexit1460
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.aph = load double, ptr %i.apg, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, double noundef %i.aph) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.kw

bb.lb:                                            ; preds = %bb.kw, %bb.ky
  %.sroa.41158.0.ph = phi i64 [ 1, %bb.ky ], [ 0, %bb.kw ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41158.0.ph, i64 %i.apc) #37
  unreachable

bb.lc:                                            ; preds = %bb.ky
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ape, ptr align 1 %i.apb, i64 %i.apc, i1 false)
  %cond1369 = icmp eq i64 %i.apc, 1
  %i.api = load i8, ptr %i.ape, align 1, !alias.scope !16521, !noalias !16522 ; 2 uses
  br i1 %cond1369, label %bb.ld, label %thread-pre-split.i871

bb.ld:                                            ; preds = %bb.lc
  switch i8 %i.api, label %bb.lk [
    i8 43, label %.thread1318
    i8 45, label %.thread1318
  ]

thread-pre-split.i871:                            ; preds = %bb.lc
  switch i8 %i.api, label %bb.lk [
    i8 43, label %bb.le
    i8 45, label %bb.lf
  ]

bb.le:                                            ; preds = %thread-pre-split.i871
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ape, i64 1
  %i.apk = add nsw i64 %i.apc, -1
  br label %bb.lk

bb.lf:                                            ; preds = %thread-pre-split.i871
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ape, i64 1 ; 2 uses
  %i.apm = add nsw i64 %i.apc, -1                 ; 2 uses
  %i.apn = icmp samesign ult i64 %i.apc, 17
  br i1 %i.apn, label %.lr.ph141.i851, label %.lr.ph.i841

.lr.ph.i841:                                      ; preds = %bb.lf, %bb.li
  %.sroa.0.1136.i842 = phi ptr [ %i.apo, %bb.li ], [ %i.apl, %bb.lf ] ; 2 uses
  %.sroa.26.1135.i843 = phi i64 [ %i.app, %bb.li ], [ %i.apm, %bb.lf ]
  %.sroa.084.0134.i844 = phi i64 [ %i.aqa, %bb.li ], [ 0, %bb.lf ]
  %i.apo = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i842, i64 1
  %i.app = add nsw i64 %.sroa.26.1135.i843, -1    ; 2 uses
  %i.apq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i844, i64 10) ; 2 uses
  %i.apr = extractvalue { i64, i1 } %i.apq, 0
  %i.aps = extractvalue { i64, i1 } %i.apq, 1
  br i1 %i.aps, label %.thread1318, label %bb.lg, !prof !21

bb.lg:                                            ; preds = %.lr.ph.i841
  %i.apt = load i8, ptr %.sroa.0.1136.i842, align 1, !alias.scope !16521, !noalias !16522, !noundef !11
  %i.apu = zext i8 %i.apt to i32
  %i.apv = add nsw i32 %i.apu, -48                ; 2 uses
  %i.apw = icmp ult i32 %i.apv, 10
  br i1 %i.apw, label %bb.lh, label %.thread1318

bb.lh:                                            ; preds = %bb.lg
  %i.apx = zext nneg i32 %i.apv to i64
  %i.apy = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.apr, i64 %i.apx) ; 2 uses
  %i.apz = extractvalue { i64, i1 } %i.apy, 1
  br i1 %i.apz, label %.thread1318, label %bb.li, !prof !21

bb.li:                                            ; preds = %bb.lh
  %i.aqa = extractvalue { i64, i1 } %i.apy, 0     ; 2 uses
  %.not102.i846 = icmp eq i64 %i.app, 0
  br i1 %.not102.i846, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit873, label %.lr.ph.i841

.lr.ph141.i851:                                   ; preds = %bb.lf, %bb.lj
  %.sroa.0.2140.i852 = phi ptr [ %i.aqh, %bb.lj ], [ %i.apl, %bb.lf ] ; 2 uses
  %.sroa.26.2139.i853 = phi i64 [ %i.aqg, %bb.lj ], [ %i.apm, %bb.lf ]
  %.sroa.084.2138.i854 = phi i64 [ %i.aqj, %bb.lj ], [ 0, %bb.lf ]
  %i.aqb = load i8, ptr %.sroa.0.2140.i852, align 1, !alias.scope !16521, !noalias !16522, !noundef !11
  %i.aqc = zext i8 %i.aqb to i32
  %i.aqd = add nsw i32 %i.aqc, -48                ; 2 uses
  %i.aqe = icmp ult i32 %i.aqd, 10
  br i1 %i.aqe, label %bb.lj, label %.thread1318

bb.lj:                                            ; preds = %.lr.ph141.i851
  %i.aqf = mul i64 %.sroa.084.2138.i854, 10
  %i.aqg = add nsw i64 %.sroa.26.2139.i853, -1    ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i852, i64 1
  %i.aqi = zext nneg i32 %i.aqd to i64
  %i.aqj = sub i64 %i.aqf, %i.aqi                 ; 2 uses
  %.not103.i855 = icmp eq i64 %i.aqg, 0
  br i1 %.not103.i855, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit873, label %.lr.ph141.i851

bb.lk:                                            ; preds = %bb.ld, %bb.le, %thread-pre-split.i871
  %.sroa.26.0.i856 = phi i64 [ %i.apk, %bb.le ], [ %i.apc, %thread-pre-split.i871 ], [ %i.apc, %bb.ld ] ; 4 uses
  %.sroa.0.0.i857 = phi ptr [ %i.apj, %bb.le ], [ %i.ape, %thread-pre-split.i871 ], [ %i.ape, %bb.ld ] ; 2 uses
  %i.aqk = icmp samesign ult i64 %.sroa.26.0.i856, 16
  br i1 %i.aqk, label %.preheader.i864, label %.preheader111.i858

.preheader.i864:                                  ; preds = %bb.lk
  %.not105146.i865 = icmp eq i64 %.sroa.26.0.i856, 0
  br i1 %.not105146.i865, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit873, label %.lr.ph150.i866

.preheader111.i858:                               ; preds = %bb.lk, %bb.ln
  %.sroa.0.3145.i859 = phi ptr [ %i.aql, %bb.ln ], [ %.sroa.0.0.i857, %bb.lk ] ; 2 uses
  %.sroa.26.3144.i860 = phi i64 [ %i.aqm, %bb.ln ], [ %.sroa.26.0.i856, %bb.lk ]
  %.sroa.084.3143.i861 = phi i64 [ %i.aqx, %bb.ln ], [ 0, %bb.lk ]
  %i.aql = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i859, i64 1
  %i.aqm = add nsw i64 %.sroa.26.3144.i860, -1    ; 2 uses
  %i.aqn = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i861, i64 10) ; 2 uses
  %i.aqo = extractvalue { i64, i1 } %i.aqn, 0
  %i.aqp = extractvalue { i64, i1 } %i.aqn, 1
  br i1 %i.aqp, label %.thread1318, label %bb.ll, !prof !21

bb.ll:                                            ; preds = %.preheader111.i858
  %i.aqq = load i8, ptr %.sroa.0.3145.i859, align 1, !alias.scope !16521, !noalias !16522, !noundef !11
  %i.aqr = zext i8 %i.aqq to i32
  %i.aqs = add nsw i32 %i.aqr, -48                ; 2 uses
  %i.aqt = icmp ult i32 %i.aqs, 10
  br i1 %i.aqt, label %bb.lm, label %.thread1318

bb.lm:                                            ; preds = %bb.ll
  %i.aqu = zext nneg i32 %i.aqs to i64
  %i.aqv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aqo, i64 %i.aqu) ; 2 uses
  %i.aqw = extractvalue { i64, i1 } %i.aqv, 1
  br i1 %i.aqw, label %.thread1318, label %bb.ln, !prof !21

bb.ln:                                            ; preds = %bb.lm
  %i.aqx = extractvalue { i64, i1 } %i.aqv, 0     ; 2 uses
  %.not104.i863 = icmp eq i64 %i.aqm, 0
  br i1 %.not104.i863, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit873, label %.preheader111.i858

.lr.ph150.i866:                                   ; preds = %.preheader.i864, %bb.lo
  %.sroa.0.4149.i867 = phi ptr [ %i.are, %bb.lo ], [ %.sroa.0.0.i857, %.preheader.i864 ] ; 2 uses
  %.sroa.26.4148.i868 = phi i64 [ %i.ard, %bb.lo ], [ %.sroa.26.0.i856, %.preheader.i864 ]
  %.sroa.084.4147.i869 = phi i64 [ %i.arg, %bb.lo ], [ 0, %.preheader.i864 ]
  %i.aqy = load i8, ptr %.sroa.0.4149.i867, align 1, !alias.scope !16521, !noalias !16522, !noundef !11
  %i.aqz = zext i8 %i.aqy to i32
  %i.ara = add nsw i32 %i.aqz, -48                ; 2 uses
  %i.arb = icmp ult i32 %i.ara, 10
  br i1 %i.arb, label %bb.lo, label %.thread1318

bb.lo:                                            ; preds = %.lr.ph150.i866
  %i.arc = mul i64 %.sroa.084.4147.i869, 10
  %i.ard = add nsw i64 %.sroa.26.4148.i868, -1    ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i867, i64 1
  %i.arf = zext nneg i32 %i.ara to i64
  %i.arg = add i64 %i.arc, %i.arf                 ; 2 uses
  %.not105.i870 = icmp eq i64 %i.ard, 0
  br i1 %.not105.i870, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit873, label %.lr.ph150.i866

.thread1318:                                      ; preds = %.lr.ph.i841, %bb.lh, %bb.lg, %.lr.ph141.i851, %.preheader111.i858, %bb.ll, %bb.lm, %.lr.ph150.i866, %bb.ld, %bb.ld, %bb.kx
  %.ph1326 = phi ptr [ inttoptr (i64 1 to ptr), %bb.kx ], [ %i.ape, %.preheader111.i858 ], [ %i.ape, %.lr.ph150.i866 ], [ %i.ape, %bb.ld ], [ %i.ape, %.lr.ph141.i851 ], [ %i.ape, %bb.ld ], [ %i.ape, %bb.lm ], [ %i.ape, %bb.ll ], [ %i.ape, %bb.lg ], [ %i.ape, %bb.lh ], [ %i.ape, %.lr.ph.i841 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1326, i64 noundef %i.apc) #39
  %i.arh = load i8, ptr %i.au, align 8, !range !18, !noundef !11
  %i.ari = trunc nuw i8 %i.arh to i1
  br i1 %i.ari, label %bb.lr, label %bb.ls

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit873: ; preds = %bb.li, %bb.lj, %bb.ln, %bb.lo, %.preheader.i864
  %.sroa.151086.0 = phi i64 [ %i.aqx, %bb.ln ], [ %i.aqj, %bb.lj ], [ %i.arg, %bb.lo ], [ 0, %.preheader.i864 ], [ %i.aqa, %bb.li ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @282, i64 noundef 4, i64 noundef %.sroa.151086.0) #34
  br label %bb.lp

bb.lp:                                            ; preds = %bb.ls, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit873
  %i.arj = phi ptr [ %.ph1326, %bb.ls ], [ %i.ape, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit873 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @723, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.ark = icmp eq i64 %i.apc, 0
  br i1 %i.ark, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit876, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.arj, i64 noundef %i.apc, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16523
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit876

bb.lr:                                            ; preds = %.thread1318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 %i.apc, ptr %i.at, align 8
  %.sroa.51081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.ph1326, ptr %.sroa.51081.0..sroa_idx, align 8
  %.sroa.81082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.apc, ptr %.sroa.81082.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @282, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.at) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @723, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit876

bb.ls:                                            ; preds = %.thread1318
  %i.arl = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.arm = load double, ptr %i.arl, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @282, i64 noundef 4, double noundef %i.arm) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.lp

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit876: ; preds = %bb.lq, %bb.lp, %bb.lr
  br i1 %.sroa.04.0.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit882, label %bb.lu

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit882: ; preds = %bb.lu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.bb, ptr %i.ar, align 8
  %.sroa.4213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4213.0..sroa_idx, align 8
  %i.arn = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.aro = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.arp = load ptr, ptr %i.aro, align 8, !nonnull !11, !align !13, !noundef !11
  %i.arq = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.arn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.arp, ptr noundef nonnull @55, ptr noundef nonnull %i.ar) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.experimental.noalias.scope.decl(metadata !16524)
  call void @llvm.experimental.noalias.scope.decl(metadata !16525)
  %.val.i.i877 = load i64, ptr %i.bb, align 8, !range !22, !alias.scope !16526, !noundef !11 ; 2 uses
  %i.arr = icmp eq i64 %.val.i.i877, 0
  br i1 %i.arr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit879, label %bb.lt

bb.lt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit882
  %i.ars = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val1.i.i878 = load ptr, ptr %i.ars, align 8, !alias.scope !16526, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i878, i64 noundef %.val.i.i877, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16526
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit879

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit879: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit882, %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.dn

bb.lu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit876
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amw, i64 noundef %.sroa.61073.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16527
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit882

bb.lv:                                            ; preds = %.split339, %bb.cx
  %.sroa.41162.0.ph = phi i64 [ 1, %bb.cx ], [ 0, %.split339 ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41162.0.ph, i64 %.sroa.61094.0.copyload) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit411.thread1334: ; preds = %bb.cw, %bb.mk
  %i.art = phi ptr [ %i.qh, %bb.mk ], [ inttoptr (i64 1 to ptr), %bb.cw ] ; 8 uses
  %i.aru = icmp eq i64 %.sroa.01092.0.copyload, 0
  br i1 %i.aru, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit885, label %bb.lw

bb.lw:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit411.thread1334
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41093.0.copyload, i64 noundef %.sroa.01092.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16528
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit885

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit885: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit411.thread1334, %bb.lw
  switch i64 %.sroa.61094.0.copyload, label %thread-pre-split.i917 [
    i64 0, label %.loopexit1467
    i64 1, label %bb.lx
  ]

bb.lx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit885
  %i.arv = load i8, ptr %i.art, align 1, !alias.scope !16529, !noalias !16530, !noundef !11 ; 2 uses
  switch i8 %i.arv, label %bb.ly [
    i8 43, label %.loopexit1467
    i8 45, label %.loopexit1467
  ]

thread-pre-split.i917:                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit885
  %.pr.i918 = load i8, ptr %i.art, align 1, !alias.scope !16529, !noalias !16530
  br label %bb.ly

bb.ly:                                            ; preds = %thread-pre-split.i917, %bb.lx
  %i.arw = phi i8 [ %.pr.i918, %thread-pre-split.i917 ], [ %i.arv, %bb.lx ]
  switch i8 %i.arw, label %bb.mf [
    i8 43, label %bb.lz
    i8 45, label %bb.ma
  ]

bb.lz:                                            ; preds = %bb.ly
  %i.arx = getelementptr inbounds nuw i8, ptr %i.art, i64 1
  %i.ary = add nsw i64 %.sroa.61094.0.copyload, -1
  br label %bb.mf

bb.ma:                                            ; preds = %bb.ly
  %i.arz = getelementptr inbounds nuw i8, ptr %i.art, i64 1 ; 2 uses
  %i.asa = add nsw i64 %.sroa.61094.0.copyload, -1 ; 3 uses
  %i.asb = icmp samesign ult i64 %.sroa.61094.0.copyload, 17
  br i1 %i.asb, label %.preheader114.i895, label %.lr.ph.i887

.preheader114.i895:                               ; preds = %bb.ma
  %.not103137.i896 = icmp eq i64 %i.asa, 0
  br i1 %.not103137.i896, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit919, label %.lr.ph141.i897

.lr.ph.i887:                                      ; preds = %bb.ma, %bb.md
  %.sroa.0.1136.i888 = phi ptr [ %i.asc, %bb.md ], [ %i.arz, %bb.ma ] ; 2 uses
  %.sroa.26.1135.i889 = phi i64 [ %i.asd, %bb.md ], [ %i.asa, %bb.ma ]
  %.sroa.084.0134.i890 = phi i64 [ %i.aso, %bb.md ], [ 0, %bb.ma ]
  %i.asc = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i888, i64 1
  %i.asd = add nsw i64 %.sroa.26.1135.i889, -1    ; 2 uses
  %i.ase = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i890, i64 10) ; 2 uses
  %i.asf = extractvalue { i64, i1 } %i.ase, 0
  %i.asg = extractvalue { i64, i1 } %i.ase, 1
  br i1 %i.asg, label %.loopexit1467, label %bb.mb, !prof !21

bb.mb:                                            ; preds = %.lr.ph.i887
  %i.ash = load i8, ptr %.sroa.0.1136.i888, align 1, !alias.scope !16529, !noalias !16530, !noundef !11
  %i.asi = zext i8 %i.ash to i32
  %i.asj = add nsw i32 %i.asi, -48                ; 2 uses
  %i.ask = icmp ult i32 %i.asj, 10
  br i1 %i.ask, label %bb.mc, label %.loopexit1467

bb.mc:                                            ; preds = %bb.mb
  %i.asl = zext nneg i32 %i.asj to i64
  %i.asm = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.asf, i64 %i.asl) ; 2 uses
  %i.asn = extractvalue { i64, i1 } %i.asm, 1
  br i1 %i.asn, label %.loopexit1467, label %bb.md, !prof !21

bb.md:                                            ; preds = %bb.mc
  %i.aso = extractvalue { i64, i1 } %i.asm, 0     ; 2 uses
  %.not102.i892 = icmp eq i64 %i.asd, 0
  br i1 %.not102.i892, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit919, label %.lr.ph.i887

.lr.ph141.i897:                                   ; preds = %.preheader114.i895, %bb.me
  %.sroa.0.2140.i898 = phi ptr [ %i.asv, %bb.me ], [ %i.arz, %.preheader114.i895 ] ; 2 uses
  %.sroa.26.2139.i899 = phi i64 [ %i.asu, %bb.me ], [ %i.asa, %.preheader114.i895 ]
  %.sroa.084.2138.i900 = phi i64 [ %i.asx, %bb.me ], [ 0, %.preheader114.i895 ]
  %i.asp = load i8, ptr %.sroa.0.2140.i898, align 1, !alias.scope !16529, !noalias !16530, !noundef !11
  %i.asq = zext i8 %i.asp to i32
  %i.asr = add nsw i32 %i.asq, -48                ; 2 uses
  %i.ass = icmp ult i32 %i.asr, 10
  br i1 %i.ass, label %bb.me, label %.loopexit1467

bb.me:                                            ; preds = %.lr.ph141.i897
  %i.ast = mul i64 %.sroa.084.2138.i900, 10
  %i.asu = add nsw i64 %.sroa.26.2139.i899, -1    ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i898, i64 1
  %i.asw = zext nneg i32 %i.asr to i64
  %i.asx = sub i64 %i.ast, %i.asw                 ; 2 uses
  %.not103.i901 = icmp eq i64 %i.asu, 0
  br i1 %.not103.i901, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit919, label %.lr.ph141.i897

bb.mf:                                            ; preds = %bb.lz, %bb.ly
  %.sroa.26.0.i902 = phi i64 [ %i.ary, %bb.lz ], [ %.sroa.61094.0.copyload, %bb.ly ] ; 4 uses
  %.sroa.0.0.i903 = phi ptr [ %i.arx, %bb.lz ], [ %i.art, %bb.ly ] ; 2 uses
  %i.asy = icmp samesign ult i64 %.sroa.26.0.i902, 16
  br i1 %i.asy, label %.preheader.i910, label %.preheader111.i904

.preheader.i910:                                  ; preds = %bb.mf
  %.not105146.i911 = icmp eq i64 %.sroa.26.0.i902, 0
  br i1 %.not105146.i911, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit919, label %.lr.ph150.i912

.preheader111.i904:                               ; preds = %bb.mf, %bb.mi
  %.sroa.0.3145.i905 = phi ptr [ %i.asz, %bb.mi ], [ %.sroa.0.0.i903, %bb.mf ] ; 2 uses
  %.sroa.26.3144.i906 = phi i64 [ %i.ata, %bb.mi ], [ %.sroa.26.0.i902, %bb.mf ]
  %.sroa.084.3143.i907 = phi i64 [ %i.atl, %bb.mi ], [ 0, %bb.mf ]
  %i.asz = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i905, i64 1
  %i.ata = add nsw i64 %.sroa.26.3144.i906, -1    ; 2 uses
  %i.atb = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i907, i64 10) ; 2 uses
  %i.atc = extractvalue { i64, i1 } %i.atb, 0
  %i.atd = extractvalue { i64, i1 } %i.atb, 1
  br i1 %i.atd, label %.loopexit1467, label %bb.mg, !prof !21

bb.mg:                                            ; preds = %.preheader111.i904
  %i.ate = load i8, ptr %.sroa.0.3145.i905, align 1, !alias.scope !16529, !noalias !16530, !noundef !11
  %i.atf = zext i8 %i.ate to i32
  %i.atg = add nsw i32 %i.atf, -48                ; 2 uses
  %i.ath = icmp ult i32 %i.atg, 10
end_hunk_5
begin_hunk_6_@_RNvXse_Csgcf5BHVXlUt_7uu_sortNtB5_9SortErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @726, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ad) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %i.qg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit922, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.art, i64 noundef %.sroa.61094.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16531
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit922

bb.mn:                                            ; preds = %.loopexit1467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 %.sroa.61094.0.copyload, ptr %i.ae, align 8
  %.sroa.51088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.art, ptr %.sroa.51088.0..sroa_idx, align 8
  %.sroa.91090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.sroa.61094.0.copyload, ptr %.sroa.91090.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ae) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @726, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ad) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit922

bb.mo:                                            ; preds = %.loopexit1467
  %i.atx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aty = load double, ptr %i.atx, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, double noundef %i.aty) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ml

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit922: ; preds = %bb.mm, %bb.ml, %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.ak, ptr %i.ac, align 8
  %.sroa.4289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4289.0..sroa_idx, align 8
  %i.atz = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aub = load ptr, ptr %i.aua, align 8, !nonnull !11, !align !13, !noundef !11
  %i.auc = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.atz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aub, ptr noundef nonnull @55, ptr noundef nonnull %i.ac) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.experimental.noalias.scope.decl(metadata !16532)
  call void @llvm.experimental.noalias.scope.decl(metadata !16533)
  %.val.i.i923 = load i64, ptr %i.ak, align 8, !range !22, !alias.scope !16534, !noundef !11 ; 2 uses
  %i.aud = icmp eq i64 %.val.i.i923, 0
  br i1 %i.aud, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit925, label %bb.mp

bb.mp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit922
  %i.aue = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val1.i.i924 = load ptr, ptr %i.aue, align 8, !alias.scope !16534, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i924, i64 noundef %.val.i.i923, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16534
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit925

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit925: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit922, %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.dn

.loopexit1481:                                    ; preds = %.lr.ph.i416, %bb.df, %bb.de, %.lr.ph141.i426, %.preheader111.i433, %bb.dj, %bb.dk, %.lr.ph150.i441, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgcf5BHVXlUt_7uu_sort.exit414, %bb.da, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.51103.0.copyload1105, i64 noundef %.sroa.81107.0.copyload1109) #39
  %i.auf = load i8, ptr %i.y, align 8, !range !18, !noundef !11
  %i.aug = trunc nuw i8 %i.auf to i1
  br i1 %i.aug, label %bb.mt, label %bb.mu

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit448: ; preds = %bb.dg, %bb.dh, %bb.dl, %bb.dm, %.preheader.i439, %.preheader114.i424
  %.sroa.151114.0 = phi i64 [ %i.sq, %bb.dm ], [ %i.rt, %bb.dh ], [ %i.sh, %bb.dl ], [ 0, %.preheader.i439 ], [ 0, %.preheader114.i424 ], [ %i.rk, %bb.dg ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, i64 noundef %.sroa.151114.0) #34
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mu, %bb.mt, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit448
  %.sroa.05.0.not = phi i1 [ true, %bb.mt ], [ false, %bb.mu ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit448 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aui = load i64, ptr %i.auh, align 8, !noundef !11
  %i.auj = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.aui, ptr noalias nofree noundef nonnull %i.s, i64 noundef 20) #34 ; 2 uses
  %i.auk = extractvalue { ptr, i64 } %i.auj, 0
  %i.aul = extractvalue { ptr, i64 } %i.auj, 1    ; 16 uses
  %.not.i926 = icmp slt i64 %i.aul, 0
  br i1 %.not.i926, label %bb.mv, label %bb.mr, !prof !12

bb.mr:                                            ; preds = %bb.mq
  %i.aum = icmp eq i64 %i.aul, 0
  br i1 %i.aum, label %.thread1353, label %bb.ms

.thread1353:                                      ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.loopexit1474

bb.ms:                                            ; preds = %bb.mr
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !16535
  %i.aun = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.aul, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16535 ; 18 uses
  %i.auo = icmp eq ptr %i.aun, null
  br i1 %i.auo, label %bb.mv, label %bb.mw

bb.mt:                                            ; preds = %.loopexit1481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.sroa.01101.0.copyload1102, ptr %i.x, align 8
  %.sroa.51103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.51103.0.copyload1105, ptr %.sroa.51103.0..sroa_idx, align 8
  %.sroa.81107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.81107.0.copyload1109, ptr %.sroa.81107.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.mq

bb.mu:                                            ; preds = %.loopexit1481
  %i.aup = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.auq = load double, ptr %i.aup, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, double noundef %i.auq) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.mq

bb.mv:                                            ; preds = %bb.mq, %bb.ms
  %.sroa.41166.0.ph = phi i64 [ 1, %bb.ms ], [ 0, %bb.mq ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41166.0.ph, i64 %i.aul) #37
  unreachable

bb.mw:                                            ; preds = %bb.ms
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aun, ptr align 1 %i.auk, i64 %i.aul, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %cond1370 = icmp eq i64 %i.aul, 1
  %i.aur = load i8, ptr %i.aun, align 1, !alias.scope !16536, !noalias !16537 ; 2 uses
  br i1 %cond1370, label %bb.mx, label %thread-pre-split.i961

bb.mx:                                            ; preds = %bb.mw
  switch i8 %i.aur, label %bb.ne [
    i8 43, label %.loopexit1474
    i8 45, label %.loopexit1474
  ]

thread-pre-split.i961:                            ; preds = %bb.mw
  switch i8 %i.aur, label %bb.ne [
    i8 43, label %bb.my
    i8 45, label %bb.mz
  ]

bb.my:                                            ; preds = %thread-pre-split.i961
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aun, i64 1
  %i.aut = add nsw i64 %i.aul, -1
  br label %bb.ne

bb.mz:                                            ; preds = %thread-pre-split.i961
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aun, i64 1 ; 2 uses
  %i.auv = add nsw i64 %i.aul, -1                 ; 2 uses
  %i.auw = icmp samesign ult i64 %i.aul, 17
  br i1 %i.auw, label %.lr.ph141.i941, label %.lr.ph.i931

.lr.ph.i931:                                      ; preds = %bb.mz, %bb.nc
  %.sroa.0.1136.i932 = phi ptr [ %i.aux, %bb.nc ], [ %i.auu, %bb.mz ] ; 2 uses
  %.sroa.26.1135.i933 = phi i64 [ %i.auy, %bb.nc ], [ %i.auv, %bb.mz ]
  %.sroa.084.0134.i934 = phi i64 [ %i.avj, %bb.nc ], [ 0, %bb.mz ]
  %i.aux = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i932, i64 1
  %i.auy = add nsw i64 %.sroa.26.1135.i933, -1    ; 2 uses
  %i.auz = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i934, i64 10) ; 2 uses
  %i.ava = extractvalue { i64, i1 } %i.auz, 0
  %i.avb = extractvalue { i64, i1 } %i.auz, 1
  br i1 %i.avb, label %.loopexit1474, label %bb.na, !prof !21

bb.na:                                            ; preds = %.lr.ph.i931
  %i.avc = load i8, ptr %.sroa.0.1136.i932, align 1, !alias.scope !16536, !noalias !16537, !noundef !11
  %i.avd = zext i8 %i.avc to i32
  %i.ave = add nsw i32 %i.avd, -48                ; 2 uses
  %i.avf = icmp ult i32 %i.ave, 10
  br i1 %i.avf, label %bb.nb, label %.loopexit1474

bb.nb:                                            ; preds = %bb.na
  %i.avg = zext nneg i32 %i.ave to i64
  %i.avh = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ava, i64 %i.avg) ; 2 uses
  %i.avi = extractvalue { i64, i1 } %i.avh, 1
  br i1 %i.avi, label %.loopexit1474, label %bb.nc, !prof !21

bb.nc:                                            ; preds = %bb.nb
  %i.avj = extractvalue { i64, i1 } %i.avh, 0     ; 2 uses
  %.not102.i936 = icmp eq i64 %i.auy, 0
  br i1 %.not102.i936, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit963, label %.lr.ph.i931

.lr.ph141.i941:                                   ; preds = %bb.mz, %bb.nd
  %.sroa.0.2140.i942 = phi ptr [ %i.avq, %bb.nd ], [ %i.auu, %bb.mz ] ; 2 uses
  %.sroa.26.2139.i943 = phi i64 [ %i.avp, %bb.nd ], [ %i.auv, %bb.mz ]
  %.sroa.084.2138.i944 = phi i64 [ %i.avs, %bb.nd ], [ 0, %bb.mz ]
  %i.avk = load i8, ptr %.sroa.0.2140.i942, align 1, !alias.scope !16536, !noalias !16537, !noundef !11
  %i.avl = zext i8 %i.avk to i32
  %i.avm = add nsw i32 %i.avl, -48                ; 2 uses
  %i.avn = icmp ult i32 %i.avm, 10
  br i1 %i.avn, label %bb.nd, label %.loopexit1474

bb.nd:                                            ; preds = %.lr.ph141.i941
  %i.avo = mul i64 %.sroa.084.2138.i944, 10
  %i.avp = add nsw i64 %.sroa.26.2139.i943, -1    ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i942, i64 1
  %i.avr = zext nneg i32 %i.avm to i64
  %i.avs = sub i64 %i.avo, %i.avr                 ; 2 uses
  %.not103.i945 = icmp eq i64 %i.avp, 0
  br i1 %.not103.i945, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit963, label %.lr.ph141.i941

bb.ne:                                            ; preds = %bb.mx, %bb.my, %thread-pre-split.i961
  %.sroa.26.0.i946 = phi i64 [ %i.aut, %bb.my ], [ %i.aul, %thread-pre-split.i961 ], [ %i.aul, %bb.mx ] ; 4 uses
  %.sroa.0.0.i947 = phi ptr [ %i.aus, %bb.my ], [ %i.aun, %thread-pre-split.i961 ], [ %i.aun, %bb.mx ] ; 2 uses
  %i.avt = icmp samesign ult i64 %.sroa.26.0.i946, 16
  br i1 %i.avt, label %.preheader.i954, label %.preheader111.i948

.preheader.i954:                                  ; preds = %bb.ne
  %.not105146.i955 = icmp eq i64 %.sroa.26.0.i946, 0
  br i1 %.not105146.i955, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit963, label %.lr.ph150.i956

.preheader111.i948:                               ; preds = %bb.ne, %bb.nh
  %.sroa.0.3145.i949 = phi ptr [ %i.avu, %bb.nh ], [ %.sroa.0.0.i947, %bb.ne ] ; 2 uses
  %.sroa.26.3144.i950 = phi i64 [ %i.avv, %bb.nh ], [ %.sroa.26.0.i946, %bb.ne ]
  %.sroa.084.3143.i951 = phi i64 [ %i.awg, %bb.nh ], [ 0, %bb.ne ]
  %i.avu = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i949, i64 1
  %i.avv = add nsw i64 %.sroa.26.3144.i950, -1    ; 2 uses
  %i.avw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i951, i64 10) ; 2 uses
  %i.avx = extractvalue { i64, i1 } %i.avw, 0
  %i.avy = extractvalue { i64, i1 } %i.avw, 1
  br i1 %i.avy, label %.loopexit1474, label %bb.nf, !prof !21

bb.nf:                                            ; preds = %.preheader111.i948
  %i.avz = load i8, ptr %.sroa.0.3145.i949, align 1, !alias.scope !16536, !noalias !16537, !noundef !11
  %i.awa = zext i8 %i.avz to i32
  %i.awb = add nsw i32 %i.awa, -48                ; 2 uses
  %i.awc = icmp ult i32 %i.awb, 10
  br i1 %i.awc, label %bb.ng, label %.loopexit1474

bb.ng:                                            ; preds = %bb.nf
  %i.awd = zext nneg i32 %i.awb to i64
  %i.awe = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.avx, i64 %i.awd) ; 2 uses
  %i.awf = extractvalue { i64, i1 } %i.awe, 1
  br i1 %i.awf, label %.loopexit1474, label %bb.nh, !prof !21

bb.nh:                                            ; preds = %bb.ng
  %i.awg = extractvalue { i64, i1 } %i.awe, 0     ; 2 uses
  %.not104.i953 = icmp eq i64 %i.avv, 0
  br i1 %.not104.i953, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit963, label %.preheader111.i948

.lr.ph150.i956:                                   ; preds = %.preheader.i954, %bb.ni
  %.sroa.0.4149.i957 = phi ptr [ %i.awn, %bb.ni ], [ %.sroa.0.0.i947, %.preheader.i954 ] ; 2 uses
  %.sroa.26.4148.i958 = phi i64 [ %i.awm, %bb.ni ], [ %.sroa.26.0.i946, %.preheader.i954 ]
  %.sroa.084.4147.i959 = phi i64 [ %i.awp, %bb.ni ], [ 0, %.preheader.i954 ]
  %i.awh = load i8, ptr %.sroa.0.4149.i957, align 1, !alias.scope !16536, !noalias !16537, !noundef !11
  %i.awi = zext i8 %i.awh to i32
  %i.awj = add nsw i32 %i.awi, -48                ; 2 uses
  %i.awk = icmp ult i32 %i.awj, 10
  br i1 %i.awk, label %bb.ni, label %.loopexit1474

bb.ni:                                            ; preds = %.lr.ph150.i956
  %i.awl = mul i64 %.sroa.084.4147.i959, 10
  %i.awm = add nsw i64 %.sroa.26.4148.i958, -1    ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i957, i64 1
  %i.awo = zext nneg i32 %i.awj to i64
  %i.awp = add i64 %i.awl, %i.awo                 ; 2 uses
  %.not105.i960 = icmp eq i64 %i.awm, 0
  br i1 %.not105.i960, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit963, label %.lr.ph150.i956

.loopexit1474:                                    ; preds = %.lr.ph.i931, %bb.nb, %bb.na, %.lr.ph141.i941, %.preheader111.i948, %bb.nf, %bb.ng, %.lr.ph150.i956, %bb.mx, %bb.mx, %.thread1353
  %.ph1361 = phi ptr [ %i.aun, %.preheader111.i948 ], [ %i.aun, %.lr.ph141.i941 ], [ %i.aun, %.lr.ph150.i956 ], [ %i.aun, %bb.mx ], [ inttoptr (i64 1 to ptr), %.thread1353 ], [ %i.aun, %bb.mx ], [ %i.aun, %bb.ng ], [ %i.aun, %bb.nf ], [ %i.aun, %bb.na ], [ %i.aun, %bb.nb ], [ %i.aun, %.lr.ph.i931 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph1361, i64 noundef %i.aul) #39
  %i.awq = load i8, ptr %i.w, align 8, !range !18, !noundef !11
  %i.awr = trunc nuw i8 %i.awq to i1
  br i1 %i.awr, label %bb.nl, label %bb.nm

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit963: ; preds = %bb.nc, %bb.nd, %bb.nh, %bb.ni, %.preheader.i954
  %.sroa.151121.0 = phi i64 [ %i.awg, %bb.nh ], [ %i.avs, %bb.nd ], [ %i.awp, %bb.ni ], [ 0, %.preheader.i954 ], [ %i.avj, %bb.nc ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @712, i64 noundef 8, i64 noundef %.sroa.151121.0) #34
  br label %bb.nj

bb.nj:                                            ; preds = %bb.nm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit963
  %i.aws = phi ptr [ %.ph1361, %bb.nm ], [ %i.aun, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit963 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @727, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.awt = icmp eq i64 %i.aul, 0
  br i1 %i.awt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aws, i64 noundef %i.aul, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16538
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966

bb.nl:                                            ; preds = %.loopexit1474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.aul, ptr %i.v, align 8
  %.sroa.51116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.ph1361, ptr %.sroa.51116.0..sroa_idx, align 8
  %.sroa.81117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.aul, ptr %.sroa.81117.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @712, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @727, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966

bb.nm:                                            ; preds = %.loopexit1474
  %i.awu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.awv = load double, ptr %i.awu, align 8, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @712, i64 noundef 8, double noundef %i.awv) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.nj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966: ; preds = %bb.nk, %bb.nj, %bb.nl
  %i.aww = icmp eq i64 %.sroa.01101.0.copyload1102, 0
  %or.cond1374 = select i1 %.sroa.05.0.not, i1 true, i1 %i.aww
  br i1 %or.cond1374, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972, label %bb.no

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972: ; preds = %bb.no, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ab, ptr %i.t, align 8
  %.sroa.4311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4311.0..sroa_idx, align 8
  %i.awx = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.awy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.awz = load ptr, ptr %i.awy, align 8, !nonnull !11, !align !13, !noundef !11
  %i.axa = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.awx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.awz, ptr noundef nonnull @55, ptr noundef nonnull %i.t) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !16539)
  call void @llvm.experimental.noalias.scope.decl(metadata !16540)
  %.val.i.i967 = load i64, ptr %i.ab, align 8, !range !22, !alias.scope !16541, !noundef !11 ; 2 uses
  %i.axb = icmp eq i64 %.val.i.i967, 0
  br i1 %i.axb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit969, label %bb.nn

bb.nn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972
  %i.axc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i968 = load ptr, ptr %i.axc, align 8, !alias.scope !16541, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i968, i64 noundef %.val.i.i967, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16541
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit969

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit969: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972, %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.dn

bb.no:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit966
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.51103.0.copyload1105, i64 noundef %.sroa.01101.0.copyload1102, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !16542
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit972
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #34 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @729) #40
  unreachable

_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noundef !11
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit

bb.c:                                             ; preds = %_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgcf5BHVXlUt_7uu_sort.exit.i
  store atomic i64 0, ptr %i.a monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = atomicrmw xchg ptr %i.i, i32 0 release, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.d, label %_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.i) #34
  br label %_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit

_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit: ; preds = %_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgcf5BHVXlUt_7uu_sort.exit.i, %bb.c, %bb.d
  ret i1 true
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpscINtB5_9SendErrorNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtBV_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @730, i64 noundef 9) #34
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpscINtB5_9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtBX_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @730, i64 noundef 9) #34
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtBM_3fmt5Debug3fmtCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !13, !noundef !11
  %i.d = tail call noundef zeroext i1 @_RNvXs0_NtCs6JMX4GRUq9U_4core3anyDNtB5_3AnyNtNtB7_6marker4SendEL_NtNtB7_3fmt5Debug3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #34
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXso_Csgcf5BHVXlUt_7uu_sortNtB5_14GlobalSettingsNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.013.i.i = alloca [54 x i8], align 8      ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.5 = alloca [16 x i8], align 1            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 155
  %i.c = load i8, ptr %i.b, align 1, !range !20, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.e = load <8 x i8>, ptr %i.d, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 134
  %i.g = load i8, ptr %i.f, align 2, !range !18, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.i = load i8, ptr %i.h, align 1, !range !18, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = load i8, ptr %i.j, align 8, !range !18, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.m = load i8, ptr %i.l, align 1, !range !18, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 2 dereferenceable(16) %i.o, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !range !10, !noundef !11
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val19 = load i64, ptr %i.s, align 8, !noundef !11 ; 6 uses
  %i.t = icmp eq i64 %.val19, 0
  br i1 %i.t, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !16560
  %i.u = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val19, i64 noundef range(i64 1, 9) 1) #34, !noalias !16560 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val19) #37, !noalias !16561
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val19, i1 false), !noalias !16562
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgcf5BHVXlUt_7uu_sort.exit

end_hunk_6
