Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sortNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBN_INtB4_16ParallelSliceMutBN_E11par_sort_byNCNvBP_7sort_by0E0EBP_:bb.a
.lr.ph23.i:                                       ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr nonnull align 8 %i.cj, i64 %.idx26.i, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx26.i ; 3 uses
  %i.cq = icmp ne i64 %i.bx, 0
  %i.cr = icmp samesign ult i64 %i.bx, %i.ci
  %or.cond2714.i = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond2714.i, label %.lr.ph.i37, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit

.lr.ph.i37:                                       ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph23.i
  %.sroa.08.022.i = phi ptr [ %i.cl, %.lr.ph23.i ], [ %i.cz, %bb.af ]
  %.sroa.9.021.i = phi ptr [ %i.co, %.lr.ph23.i ], [ %i.cy, %bb.af ] ; 2 uses
  %.sroa.16.020.i = phi ptr [ %i.ck, %.lr.ph23.i ], [ %i.cw, %bb.af ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.9.021.i, i64 -24
  %i.ct = getelementptr inbounds i8, ptr %.sroa.16.020.i, i64 -24
  %.val.i.i38 = load ptr, ptr %.val29, align 8, !noalias !7466, !nonnull !11, !align !13, !noundef !11
  %.val1.i.i39 = load ptr, ptr %i.d, align 8, !noalias !7466, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.cu = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.i38, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i39, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i39) #34
  %i.cv = icmp eq i8 %i.cu, -1                    ; 3 uses
  %.neg.i = sext i1 %i.cv to i64
  %i.cw = getelementptr inbounds [24 x i8], ptr %.sroa.16.020.i, i64 %.neg.i ; 4 uses
  %i.cx = xor i1 %i.cv, true
  %.neg26.i = sext i1 %i.cx to i64
  %i.cy = getelementptr inbounds [24 x i8], ptr %.sroa.9.021.i, i64 %.neg26.i ; 4 uses
  %.sroa.020.0.i = select i1 %i.cv, ptr %i.cw, ptr %i.cy
  %i.cz = getelementptr inbounds i8, ptr %.sroa.08.022.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020.0.i, i64 24, i1 false)
  %i.da = icmp ult ptr %i.cj, %i.cw
  %i.db = icmp ult ptr %2, %i.cy
  %or.cond.i40 = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond.i40, label %bb.af, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i37
  %.sroa.0.017.i = phi ptr [ %i.ck, %.lr.ph.i37 ], [ %i.dg, %bb.ag ] ; 3 uses
  %.sroa.0.116.i = phi ptr [ %2, %.lr.ph.i37 ], [ %i.dj, %bb.ag ] ; 3 uses
  %.sroa.16.215.i = phi ptr [ %i.cj, %.lr.ph.i37 ], [ %i.de, %bb.ag ] ; 2 uses
  %.val.i29.i = load ptr, ptr %.val29, align 8, !noalias !7467, !nonnull !11, !align !13, !noundef !11
  %.val1.i30.i = load ptr, ptr %i.d, align 8, !noalias !7467, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.dc = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.017.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.116.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i29.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i30.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i30.i) #34
  %i.dd = icmp eq i8 %i.dc, -1                    ; 3 uses
  %.sroa.012.0.i = select i1 %i.dd, ptr %.sroa.0.017.i, ptr %.sroa.0.116.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.215.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.0.i, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.16.215.i, i64 24 ; 2 uses
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.017.i, i64 %i.df ; 2 uses
  %i.dh = xor i1 %i.dd, true
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.116.i, i64 %i.di ; 3 uses
  %i.dk = icmp ult ptr %i.dj, %i.cp
  %i.dl = icmp ult ptr %i.dg, %i.cl
  %or.cond27.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond27.i, label %bb.ag, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsks7Y7MMeG6s_5rayon5slice4sort10TimSortRunE6removeCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ae
  %.sroa.16.1.i = phi ptr [ %i.cw, %bb.af ], [ %i.ck, %bb.ad ], [ %i.cj, %bb.ae ], [ %i.de, %bb.ag ]
  %.sroa.9.1.i = phi ptr [ %i.cy, %bb.af ], [ %i.co, %bb.ad ], [ %i.cp, %bb.ae ], [ %i.cp, %bb.ag ]
  %.sroa.0.012.i = phi ptr [ %2, %bb.af ], [ %2, %bb.ad ], [ %2, %bb.ae ], [ %i.dj, %bb.ag ] ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.9.1.i to i64
  %i.dn = ptrtoint ptr %.sroa.0.012.i to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.16.1.i, ptr align 8 %.sroa.0.012.i, i64 %i.do, i1 false), !noalias !7468
  %i.dp = add i64 %i.cd, %i.bx
  store i64 %i.dp, ptr %i.cc, align 8
  store i64 %i.bz, ptr %i.ce, align 8
  %i.dq = icmp samesign ult i64 %storemerge82, 576460752303423488
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ds = xor i64 %.sroa.4.0.i33.ph, -1
  %i.dt = add nsw i64 %storemerge82, %i.ds
  %i.du = shl nuw nsw i64 %i.dt, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 8 %i.dr, i64 %i.du, i1 false), !noalias !7469
  %i.dv = add nsw i64 %storemerge82, -1
  %i.dw = icmp samesign ugt i64 %storemerge82, 2
  br i1 %i.dw, label %.lr.ph, label %_RNvNvNtNtCsks7Y7MMeG6s_5rayon5slice4sort10merge_sort8collapse.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBQ_INtB4_16ParallelSliceMutBQ_E11par_sort_byNCNvBS_7sort_by0E0EBS_(ptr noundef %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 18 uses
  switch i64 %3, label %bb.e [
    i64 1, label %bb.b
    i64 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load i64, ptr %2, align 8, !noundef !11  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !11
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.b
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.b
  %i.g = sub i64 %i.d, %i.b
  %i.h = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort13merge_recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2u_INtB1I_16ParallelSliceMutB2u_E11par_sort_byNCNvB2w_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2w_.exit
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = load i64, ptr %2, align 8, !noundef !11  ; 3 uses
  %i.j = lshr i64 %3, 1                           ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !11 ; 3 uses
  %i.m = getelementptr [16 x i8], ptr %2, i64 %3
  %i.n = getelementptr i8, ptr %i.m, i64 -8
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
  %i.c = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
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

.lr.ph85:                                         ; preds = %.lr.ph32.preheader, %.lr.ph32
  %.sroa.02.120.us3184 = phi i64 [ %i.d, %.lr.ph32 ], [ 1, %.lr.ph32.preheader ] ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.02.120.us3184, 1  ; 4 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.02.120.us3184
  %.val.i.us = load ptr, ptr %.val, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11
  %.val1.i.us = load ptr, ptr %i.b, align 8, !noalias !7481, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.g = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.us) #34
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %.._crit_edge.us.loopexit_crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph85
  %exitcond41.not = icmp eq i64 %i.d, %i.m
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
  br i1 %i.l, label %.split28, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.lr.ph.us
  %i.m = add nsw i64 %1, -1                       ; 2 uses
  %exitcond41.not83 = icmp eq i64 %i.m, 1
  br i1 %exitcond41.not83, label %.split28, label %.lr.ph85

.split28:                                         ; preds = %bb.b, %bb.g, %bb.l, %bb.q, %bb.v, %.lr.ph32, %.lr.ph32.preheader, %.._crit_edge.us.loopexit_crit_edge, %bb.y, %bb.z, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %.lr.ph.us
  %.us-phi = phi i1 [ false, %.lr.ph.us ], [ true, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph32 ], [ true, %._crit_edge.1 ], [ true, %._crit_edge.4 ], [ true, %._crit_edge.2 ], [ true, %._crit_edge.3 ], [ true, %bb.g ], [ false, %bb.y ], [ true, %bb.l ], [ true, %bb.v ], [ false, %bb.z ], [ %i.i, %.._crit_edge.us.loopexit_crit_edge ], [ true, %.lr.ph32.preheader ], [ true, %bb.b ]
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
end_hunk_0
begin_hunk_1_@_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNvBL_7sort_by0E0EBL_:bb.a
  %.val1.i117.i.i = load ptr, ptr %i.x, align 8, !noalias !7622, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.eo = call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.em, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i116.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i117.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i117.i.i) #34
  %i.ep = icmp eq i8 %i.eo, -1
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.ep to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.213.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.el, %.sroa.044.1.i.i
  br i1 %exitcond33.not.i.i, label %.loopexit.i.i, label %.lr.ph15.i.i

bb.y:                                             ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %.sroa.046.2.i.i = phi ptr [ %i.ff, %._crit_edge.i.i ], [ %.sroa.046.1.i.i, %.loopexit.i.i ] ; 5 uses
  %.sroa.018.2.i.i = phi ptr [ %i.fe, %._crit_edge.i.i ], [ %.sroa.018.1.i.i, %.loopexit.i.i ] ; 5 uses
  %i.eq = icmp eq ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  %spec.select.idx.i.i = select i1 %i.eq, i64 %.sroa.015.1.i.i, i64 0
  %spec.select.i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %spec.select.idx.i.i ; 9 uses
  %i.er = icmp eq ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  %i.es = sub nsw i64 0, %.sroa.044.1.i.i
  %.sroa.032.1.idx.i.i = select i1 %i.er, i64 %i.es, i64 0
  %.sroa.032.1.i.i = getelementptr inbounds [24 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.032.1.idx.i.i ; 6 uses
  br i1 %i.ds, label %bb.aa, label %bb.u

bb.z:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.et = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !7620, !noundef !11
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false), !noalias !7623
  %i.ew = load i8, ptr %.sroa.046.1.i.i, align 1, !noalias !7620, !noundef !11 ; 2 uses
  %i.ex = zext i8 %i.ew to i64
  %i.ey = xor i64 %i.ex, -1                       ; 2 uses
  %i.ez = getelementptr inbounds [24 x i8], ptr %.sroa.032.0.i.i, i64 %i.ey
  %i.fa = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !7620, !noundef !11
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false), !alias.scope !7624, !noalias !7623
  %.not29.i.i = icmp eq i64 %..i.i.i, 1
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %.lr.ph20.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph20.i.i, %bb.z
  %.pre-phi20.i = phi i64 [ %i.ey, %bb.z ], [ %i.fs, %.lr.ph20.i.i ]
  %.sroa.046.3.lcssa.i.i = phi ptr [ %.sroa.046.1.i.i, %bb.z ], [ %i.fp, %.lr.ph20.i.i ]
  %.sroa.018.3.lcssa.i.i = phi ptr [ %.sroa.018.1.i.i, %bb.z ], [ %i.fi, %.lr.ph20.i.i ]
  %i.fd = getelementptr inbounds [24 x i8], ptr %.sroa.032.0.i.i, i64 %.pre-phi20.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !7623
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.018.3.lcssa.i.i, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.046.3.lcssa.i.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.y

.lr.ph20.i.i:                                     ; preds = %bb.z, %.lr.ph20.i.i
  %i.fg = phi i8 [ %i.fq, %.lr.ph20.i.i ], [ %i.ew, %bb.z ]
  %.sroa.018.319.i.i = phi ptr [ %i.fi, %.lr.ph20.i.i ], [ %.sroa.018.1.i.i, %bb.z ]
  %.sroa.046.318.i.i = phi ptr [ %i.fp, %.lr.ph20.i.i ], [ %.sroa.046.1.i.i, %bb.z ]
  %.sroa.0109.017.i.i = phi i64 [ %i.fh, %.lr.ph20.i.i ], [ 1, %bb.z ]
  %i.fh = add nuw i64 %.sroa.0109.017.i.i, 1      ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.018.319.i.i, i64 1 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !7620, !noundef !11
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %i.fk ; 2 uses
  %i.fm = zext i8 %i.fg to i64
  %i.fn = xor i64 %i.fm, -1
  %i.fo = getelementptr inbounds [24 x i8], ptr %.sroa.032.0.i.i, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 24, i1 false), !alias.scope !7624, !noalias !7623
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.046.318.i.i, i64 1 ; 3 uses
  %i.fq = load i8, ptr %i.fp, align 1, !noalias !7620, !noundef !11 ; 2 uses
  %i.fr = zext i8 %i.fq to i64
  %i.fs = xor i64 %i.fr, -1                       ; 2 uses
  %i.ft = getelementptr inbounds [24 x i8], ptr %.sroa.032.0.i.i, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i64 24, i1 false), !alias.scope !7624, !noalias !7623
  %exitcond34.not.i.i = icmp eq i64 %i.fh, %..i.i.i
  br i1 %exitcond34.not.i.i, label %._crit_edge.i.i, label %.lr.ph20.i.i

bb.aa:                                            ; preds = %bb.y
  %.sroa.084.1.i.i.lcssa459460 = ptrtoaddr ptr %.sroa.084.1.i.i to i64 ; 2 uses
  %.sroa.046.2.i.i.lcssa461462 = ptrtoaddr ptr %.sroa.046.2.i.i to i64 ; 2 uses
  %i.fu = icmp ult ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  br i1 %i.fu, label %.preheader.i.i.preheader, label %bb.ab

.preheader.i.i.preheader:                         ; preds = %bb.aa
  %.sroa.018.2.i.i.lcssa465466 = ptrtoaddr ptr %.sroa.018.2.i.i to i64 ; 2 uses
  %.sroa.068.1.i.i.lcssa463464 = ptrtoaddr ptr %.sroa.068.1.i.i to i64 ; 2 uses
  %i.fv = sub i64 %.sroa.068.1.i.i.lcssa463464, %.sroa.018.2.i.i.lcssa465466
  %xtraiter467 = and i64 %i.fv, 1
  %lcmp.mod468.not = icmp eq i64 %xtraiter467, 0
  br i1 %lcmp.mod468.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.fw = getelementptr inbounds i8, ptr %.sroa.068.1.i.i, i64 -1 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !7620, !noundef !11
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %spec.select.i.i, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %.sroa.032.1.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 24, i1 false), !noalias !7623
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false), !alias.scope !7624, !noalias !7623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !7623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.sroa.032.226.i.i.unr = phi ptr [ %.sroa.032.1.i.i, %.preheader.i.i.preheader ], [ %i.ga, %.preheader.i.i.prol ]
  %.sroa.068.325.i.i.unr = phi ptr [ %.sroa.068.1.i.i, %.preheader.i.i.preheader ], [ %i.fw, %.preheader.i.i.prol ]
  %.lcssa422.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.ga, %.preheader.i.i.prol ]
  %i.gb = add i64 %.sroa.068.1.i.i.lcssa463464, -1
  %i.gc = icmp eq i64 %i.gb, %.sroa.018.2.i.i.lcssa465466
  br i1 %i.gc, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort19partition_in_blocksNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBW_INtB4_16ParallelSliceMutBW_E20par_sort_unstable_byNCNvBY_7sort_by0E0EBY_.exit.i, label %.preheader.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gd = icmp ult ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  br i1 %i.gd, label %.preheader5.i.i.preheader, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort19partition_in_blocksNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBW_INtB4_16ParallelSliceMutBW_E20par_sort_unstable_byNCNvBY_7sort_by0E0EBY_.exit.i

.preheader5.i.i.preheader:                        ; preds = %bb.ab
  %i.ge = sub i64 %.sroa.084.1.i.i.lcssa459460, %.sroa.046.2.i.i.lcssa461462
  %xtraiter = and i64 %i.ge, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader5.i.i.prol.loopexit, label %.preheader5.i.i.prol

.preheader5.i.i.prol:                             ; preds = %.preheader5.i.i.preheader
  %i.gf = getelementptr inbounds i8, ptr %.sroa.084.1.i.i, i64 -1 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !7620, !noundef !11
  %i.gh = zext i8 %i.gg to i64
  %i.gi = xor i64 %i.gh, -1
  %i.gj = getelementptr inbounds [24 x i8], ptr %.sroa.032.1.i.i, i64 %i.gi ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !noalias !7623
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i64 24, i1 false), !alias.scope !7624, !noalias !7623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !7623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gk = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24 ; 2 uses
  br label %.preheader5.i.i.prol.loopexit

.preheader5.i.i.prol.loopexit:                    ; preds = %.preheader5.i.i.prol, %.preheader5.i.i.preheader
  %.sroa.01.224.i.i.unr = phi ptr [ %spec.select.i.i, %.preheader5.i.i.preheader ], [ %i.gk, %.preheader5.i.i.prol ]
  %.sroa.084.323.i.i.unr = phi ptr [ %.sroa.084.1.i.i, %.preheader5.i.i.preheader ], [ %i.gf, %.preheader5.i.i.prol ]
  %.lcssa421.unr = phi ptr [ poison, %.preheader5.i.i.preheader ], [ %i.gk, %.preheader5.i.i.prol ]
  %i.gl = add i64 %.sroa.084.1.i.i.lcssa459460, -1
  %i.gm = icmp eq i64 %i.gl, %.sroa.046.2.i.i.lcssa461462
  br i1 %i.gm, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort19partition_in_blocksNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBW_INtB4_16ParallelSliceMutBW_E20par_sort_unstable_byNCNvBY_7sort_by0E0EBY_.exit.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %.preheader5.i.i.prol.loopexit, %.preheader5.i.i
  %.sroa.01.224.i.i = phi ptr [ %i.gy, %.preheader5.i.i ], [ %.sroa.01.224.i.i.unr, %.preheader5.i.i.prol.loopexit ] ; 4 uses
  %.sroa.084.323.i.i = phi ptr [ %i.gt, %.preheader5.i.i ], [ %.sroa.084.323.i.i.unr, %.preheader5.i.i.prol.loopexit ] ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.sroa.084.323.i.i, i64 -1
  %i.go = load i8, ptr %i.gn, align 1, !noalias !7620, !noundef !11
  %i.gp = zext i8 %i.go to i64
  %i.gq = xor i64 %i.gp, -1
  %i.gr = getelementptr inbounds [24 x i8], ptr %.sroa.032.1.i.i, i64 %i.gq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.224.i.i, i64 24, i1 false), !noalias !7623
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.224.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i64 24, i1 false), !alias.scope !7624, !noalias !7623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !7623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.01.224.i.i, i64 24 ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %.sroa.084.323.i.i, i64 -2 ; 3 uses
  %i.gu = load i8, ptr %i.gt, align 1, !noalias !7620, !noundef !11
  %i.gv = zext i8 %i.gu to i64
  %i.gw = xor i64 %i.gv, -1
  %i.gx = getelementptr inbounds [24 x i8], ptr %.sroa.032.1.i.i, i64 %i.gw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i64 24, i1 false), !noalias !7623
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i64 24, i1 false), !alias.scope !7624, !noalias !7623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !7623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.01.224.i.i, i64 48 ; 2 uses
  %i.gz = icmp ult ptr %.sroa.046.2.i.i, %i.gt
  br i1 %i.gz, label %.preheader5.i.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort19partition_in_blocksNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBW_INtB4_16ParallelSliceMutBW_E20par_sort_unstable_byNCNvBY_7sort_by0E0EBY_.exit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.sroa.032.226.i.i = phi ptr [ %i.hj, %.preheader.i.i ], [ %.sroa.032.226.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %.sroa.068.325.i.i = phi ptr [ %i.hf, %.preheader.i.i ], [ %.sroa.068.325.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.sroa.068.325.i.i, i64 -1
  %i.hb = load i8, ptr %i.ha, align 1, !noalias !7620, !noundef !11
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %spec.select.i.i, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.sroa.032.226.i.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 24, i1 false), !noalias !7623
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false), !alias.scope !7624, !noalias !7623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !7623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hf = getelementptr inbounds i8, ptr %.sroa.068.325.i.i, i64 -2 ; 3 uses
  %i.hg = load i8, ptr %i.hf, align 1, !noalias !7620, !noundef !11
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %spec.select.i.i, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %.sroa.032.226.i.i, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i64 24, i1 false), !noalias !7623
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i64 24, i1 false), !alias.scope !7624, !noalias !7623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !7623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hk = icmp ult ptr %.sroa.018.2.i.i, %i.hf
  br i1 %i.hk, label %.preheader.i.i, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort19partition_in_blocksNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBW_INtB4_16ParallelSliceMutBW_E20par_sort_unstable_byNCNvBY_7sort_by0E0EBY_.exit.i

_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort19partition_in_blocksNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBW_INtB4_16ParallelSliceMutBW_E20par_sort_unstable_byNCNvBY_7sort_by0E0EBY_.exit.i: ; preds = %.preheader5.i.i.prol.loopexit, %.preheader5.i.i, %.preheader.i.i.prol.loopexit, %.preheader.i.i, %bb.ab
  %spec.select.lcssa.sink.i.i = phi ptr [ %i.hj, %.preheader.i.i ], [ %spec.select.i.i, %bb.ab ], [ %.lcssa422.unr, %.preheader.i.i.prol.loopexit ], [ %.lcssa421.unr, %.preheader5.i.i.prol.loopexit ], [ %i.gy, %.preheader5.i.i ]
  %i.hl = ptrtoint ptr %spec.select.lcssa.sink.i.i to i64
  %i.hm = ptrtoint ptr %i.dn to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %.sroa.0.0.i.i = udiv i64 %i.hn, 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7620
  %i.ho = add nuw i64 %.sroa.0.0.i.i, %.sroa.0.0.lcssa.ph.i ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0141.lcssa166, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7616
  %i.hp = icmp ult i64 %i.ho, %.sroa.20.0140.lcssa157
  br i1 %i.hp, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa.ph.i, i64 noundef %.sroa.07.0.i.lcssa, i64 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #40, !noalias !7616
  unreachable

bb.ad:                                            ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort19partition_in_blocksNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBW_INtB4_16ParallelSliceMutBW_E20par_sort_unstable_byNCNvBY_7sort_by0E0EBY_.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ho, i64 noundef range(i64 21, 384307168202282326) %.sroa.20.0140.lcssa157, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit: ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort19partition_in_blocksNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBW_INtB4_16ParallelSliceMutBW_E20par_sort_unstable_byNCNvBY_7sort_by0E0EBY_.exit.i
  %i.hq = icmp uge i64 %.sroa.0.0.lcssa.ph.i, %.sroa.07.0.i.lcssa
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0141.lcssa166, i64 %i.ho ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0141.lcssa166, i64 24, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0141.lcssa166, ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 24, i1 false), !alias.scope !7616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.hs = zext i1 %i.hq to i8
  %i.ht = sub nuw i64 %.sroa.20.0140.lcssa157, %i.ho ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ht, i64 %i.ho)
  %i.hu = lshr i64 %.sroa.20.0140.lcssa157, 3
  %i.hv = icmp uge i64 %..i, %i.hu
  %i.hw = zext i1 %i.hv to i8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 24 ; 3 uses
  %i.hy = add nsw i64 %i.ht, -1                   ; 5 uses
  %..i79 = call noundef i64 @llvm.umax.i64(i64 %i.hy, i64 %i.ho)
  %i.hz = icmp ult i64 %..i79, 2001
  br i1 %i.hz, label %bb.at, label %bb.am

bb.ae:                                            ; preds = %bb.n
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0141, i64 %.sroa.0.0.i236 ; 3 uses
  %.val.i = load ptr, ptr %.val, align 8, !noalias !7625, !nonnull !11, !align !13, !noundef !11
  %.val1.i = load ptr, ptr %i.x, align 8, !noalias !7625, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.ib = call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.032.0.ph147, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ia, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i) #34
  %i.ic = icmp eq i8 %i.ib, -1
  br i1 %i.ic, label %bb.o, label %bb.ag

bb.af:                                            ; preds = %bb.n
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i236, i64 noundef %.sroa.20.0140, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #40
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !7626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0141, i64 24, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0141, ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i64 24, i1 false), !alias.scope !7626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.0141, i64 24 ; 2 uses
  %i.ie = add nsw i64 %.sroa.20.0140, -1          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0141, i64 24, i1 false)
  br label %.outer.i

.outer.i:                                         ; preds = %bb.aj, %bb.ag
  %.sroa.09.0.ph.i = phi i64 [ %i.ie, %bb.ag ], [ %i.in, %bb.aj ] ; 5 uses
  %.sroa.01.0.ph.i = phi i64 [ 0, %bb.ag ], [ %i.it, %bb.aj ] ; 3 uses
  %i.if = icmp ult i64 %.sroa.01.0.ph.i, %.sroa.09.0.ph.i
  br i1 %i.if, label %.lr.ph.i75, label %._crit_edge.i74

.lr.ph.i75:                                       ; preds = %.outer.i, %bb.ah
  %.sroa.01.05.i = phi i64 [ %i.il, %bb.ah ], [ %.sroa.01.0.ph.i, %.outer.i ] ; 4 uses
  %i.ig = icmp ult i64 %.sroa.01.05.i, %i.ie
  call void @llvm.assume(i1 %i.ig)
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %.sroa.01.05.i
  %.val.i.i76 = load ptr, ptr %.val, align 8, !noalias !7627, !nonnull !11, !align !13, !noundef !11
  %.val1.i.i77 = load ptr, ptr %i.x, align 8, !noalias !7627, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.ii = call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ih, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.i76, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i77, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i.i77) #34
  %i.ij = icmp eq i8 %i.ii, -1
  br i1 %i.ij, label %._crit_edge.i74, label %bb.ah

._crit_edge.i74:                                  ; preds = %bb.ah, %.lr.ph.i75, %.outer.i
  %.sroa.01.0.lcssa.i = phi i64 [ %.sroa.01.0.ph.i, %.outer.i ], [ %.sroa.09.0.ph.i, %bb.ah ], [ %.sroa.01.05.i, %.lr.ph.i75 ] ; 5 uses
  %i.ik = add i64 %.sroa.09.0.ph.i, -1            ; 2 uses
  %.not20.i376 = icmp ult i64 %.sroa.01.0.lcssa.i, %i.ik
  br i1 %.not20.i376, label %.lr.ph378, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort15partition_equalNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNvBU_7sort_by0E0EBU_.exit

bb.ah:                                            ; preds = %.lr.ph.i75
  %i.il = add nuw nsw i64 %.sroa.01.05.i, 1       ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %i.il, %.sroa.09.0.ph.i
  br i1 %exitcond.not.i78, label %._crit_edge.i74, label %.lr.ph.i75

bb.ai:                                            ; preds = %.lr.ph378
  %i.im = add i64 %i.in, -1                       ; 2 uses
  %.not20.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.im
  br i1 %.not20.i, label %.lr.ph378, label %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort15partition_equalNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNvBU_7sort_by0E0EBU_.exit

.lr.ph378:                                        ; preds = %._crit_edge.i74, %bb.ai
  %i.in = phi i64 [ %i.im, %bb.ai ], [ %i.ik, %._crit_edge.i74 ] ; 4 uses
  %.sroa.09.1.i377 = phi i64 [ %i.in, %bb.ai ], [ %.sroa.09.0.ph.i, %._crit_edge.i74 ]
  %i.io = icmp ult i64 %i.in, %i.ie
  call void @llvm.assume(i1 %i.io)
  %i.ip = getelementptr [24 x i8], ptr %.sroa.0.0141, i64 %.sroa.09.1.i377 ; 3 uses
  %.val.i26.i = load ptr, ptr %.val, align 8, !noalias !7628, !nonnull !11, !align !13, !noundef !11
  %.val1.i27.i = load ptr, ptr %i.x, align 8, !noalias !7628, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.iq = call fastcc noundef range(i8 -1, 2) i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ip, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i26.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i27.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val1.i27.i) #34
  %i.ir = icmp eq i8 %i.iq, -1
  br i1 %i.ir, label %bb.ai, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph378
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %.sroa.01.0.lcssa.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.is, i64 24, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.ip, i64 24, i1 false), !alias.scope !7626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.it = add nuw i64 %.sroa.01.0.lcssa.i, 1
  br label %.outer.i

_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort15partition_equalNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNvBU_7sort_by0E0EBU_.exit: ; preds = %._crit_edge.i74, %bb.ai
  %i.iu = add i64 %.sroa.01.0.lcssa.i, 1          ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0141, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7626
  %i.iv = icmp ugt i64 %i.iu, %.sroa.20.0140
  br i1 %i.iv, label %bb.al, label %bb.ak, !prof !21

bb.ak:                                            ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort15partition_equalNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNvBU_7sort_by0E0EBU_.exit
  %i.iw = sub nuw i64 %.sroa.20.0140, %i.iu       ; 3 uses
  %i.ix = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0141, i64 %i.iu ; 2 uses
  %i.iy = icmp ult i64 %i.iw, 21
  br i1 %i.iy, label %.outer._crit_edge, label %bb.b

bb.al:                                            ; preds = %_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort15partition_equalNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNvBU_7sort_by0E0EBU_.exit
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.iu, i64 noundef %.sroa.20.0140, i64 noundef %.sroa.20.0140, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #40
  unreachable

bb.am:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.hx, ptr %i.r, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.hy, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %2, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.hr, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.s, ptr %.sroa.754.0..sroa_idx, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %.sroa.0.0141.lcssa166, ptr %i.iz, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 %i.ho, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %2, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.s, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr %.sroa.032.0.ph147, ptr %.sroa.749.0..sroa_idx, align 8
  %i.ja = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3ewIIPtxFMv_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i82 = load ptr, ptr %i.ja, align 8, !noalias !7629, !noundef !11 ; 2 uses
  %i.jb = icmp eq ptr %.val.i.i82, null
  br i1 %i.jb, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call fastcc void @_RNCINvNtCs3ewIIPtxFMv_10rayon_core4join12join_contextNCINvNvB4_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB1W_INtB1h_16ParallelSliceMutB1W_E20par_sort_unstable_byNCNvB1Y_7sort_by0E0E0E0NCIBS_uNCB1c_s_0E0uuE0B1Y_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.r, ptr noundef nonnull align 128 %.val.i.i82) #38
  br label %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2n_INtB1I_16ParallelSliceMutB2n_E20par_sort_unstable_byNCNvB2p_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2p_.exit

bb.ao:                                            ; preds = %bb.am
  %i.jc = call noundef nonnull align 8 ptr @_RNvNtCs3ewIIPtxFMv_10rayon_core8registry15global_registry() #34, !noalias !7629, !inline_history !7580
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !7629, !nonnull !11, !noundef !11 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 128 ; 2 uses
  %.val.i.i.i80 = load ptr, ptr %i.ja, align 8, !noalias !7630, !noundef !11 ; 4 uses
  %i.jf = icmp eq ptr %.val.i.i.i80, null
  br i1 %i.jf, label %bb.aq, label %bb.ap, !prof !21

bb.ap:                                            ; preds = %bb.ao
  %i.jg = getelementptr inbounds nuw i8, ptr %.val.i.i.i80, i64 272
  %i.jh = load ptr, ptr %i.jg, align 16, !noalias !7630, !nonnull !11, !noundef !11
  %.not.i81 = icmp eq ptr %i.jh, %i.jd
  br i1 %.not.i81, label %bb.ar, label %bb.as, !prof !17

bb.aq:                                            ; preds = %bb.ao
  call fastcc void @_RINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvB1g_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2M_INtB27_16ParallelSliceMutB2M_E20par_sort_unstable_byNCNvB2O_7sort_by0E0E0E0NCIB1H_uNCB22_s_0E0uuE0TuuEEB2O_(ptr noundef nonnull align 128 %i.je, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.r) #34, !inline_history !7583
  br label %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2n_INtB1I_16ParallelSliceMutB2n_E20par_sort_unstable_byNCNvB2p_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2p_.exit

bb.ar:                                            ; preds = %bb.ap
  call fastcc void @_RNCINvNtCs3ewIIPtxFMv_10rayon_core4join12join_contextNCINvNvB4_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB1W_INtB1h_16ParallelSliceMutB1W_E20par_sort_unstable_byNCNvB1Y_7sort_by0E0E0E0NCIBS_uNCB1c_s_0E0uuE0B1Y_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.r, ptr noundef nonnull align 128 %.val.i.i.i80) #38
  br label %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2n_INtB1I_16ParallelSliceMutB2n_E20par_sort_unstable_byNCNvB2p_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2p_.exit

bb.as:                                            ; preds = %bb.ap
  call fastcc void @_RINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvB1h_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2N_INtB28_16ParallelSliceMutB2N_E20par_sort_unstable_byNCNvB2P_7sort_by0E0E0E0NCIB1I_uNCB23_s_0E0uuE0TuuEEB2P_(ptr noundef nonnull align 128 %i.je, ptr noundef nonnull align 128 %.val.i.i.i80, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.r) #34, !inline_history !7583
  br label %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2n_INtB1I_16ParallelSliceMutB2n_E20par_sort_unstable_byNCNvB2p_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2p_.exit

_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2n_INtB1I_16ParallelSliceMutB2n_E20par_sort_unstable_byNCNvB2p_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2p_.exit: ; preds = %bb.as, %bb.ar, %bb.aq, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.loopexit

bb.at:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSNtCsgcf5BHVXlUt_7uu_sort4Line12split_at_mutBw_.exit
  %i.ji = icmp ult i64 %i.ho, %i.hy
  br i1 %i.ji, label %bb.av, label %bb.au

.loopexit:                                        ; preds = %bb.m, %bb.c, %bb.aw, %.outer._crit_edge, %_RINvNtCs3ewIIPtxFMv_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSB2n_INtB1I_16ParallelSliceMutB2n_E20par_sort_unstable_byNCNvB2p_7sort_by0E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB2p_.exit
  ret void

bb.au:                                            ; preds = %bb.at
  call fastcc void @_RINvNtNtCsks7Y7MMeG6s_5rayon5slice4sort7recurseNtCsgcf5BHVXlUt_7uu_sort4LineNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNvBL_7sort_by0E0EBL_(ptr noalias nofree noundef nonnull align 8 %i.hx, i64 noundef %i.hy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(24) %i.hr, i32 noundef %i.cu) #34
  br label %.outer
end_hunk_1
