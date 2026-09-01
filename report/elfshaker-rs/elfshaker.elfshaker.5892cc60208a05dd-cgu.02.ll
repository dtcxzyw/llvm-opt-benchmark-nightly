Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.02?download=true
inline.NumInlined: 518
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs1xwejQucwHj_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvNtNtB1q_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 144115188075855872) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvNtNtB1c_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0ECs7BtpbLEd5q3_9elfshaker.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvNtNtB1c_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0ECs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.0.05 = phi ptr [ %i.k, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvNtNtB1c_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0ECs7BtpbLEd5q3_9elfshaker.exit ], [ %i.c, %.lr.ph.preheader ] ; 9 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 24
  %.val9.i = load i64, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 -40
  %.val10.i = load i64, ptr %i.e, align 8, !noundef !6
  %i.f = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.f, label %bb.d, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvNtNtB1c_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0ECs7BtpbLEd5q3_9elfshaker.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, i64 24, i1 false)
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx.i, i64 32, i1 false)
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -64 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i8, i64 64, i1 false)
  %i.g = icmp eq ptr %.sroa.0.0.i8, %0
  br i1 %i.g, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -64 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i, i64 64, i1 false)
  %i.h = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.h, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.5.0.i9, i64 -104
  %.val8.i = load i64, ptr %i.i, align 8, !noundef !6
  %i.j = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.j, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !547
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -40
  store i64 %.val9.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !547
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvNtNtB1c_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0ECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvNtNtB1c_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs1xwejQucwHj_5alloc6string6StringNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs1xwejQucwHj_5alloc6string6StringNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs1xwejQucwHj_5alloc6string6StringNvYB19_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs1xwejQucwHj_5alloc6string6StringNvYB19_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit, %bb.g
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [24 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit.1
  %.sroa.05.040.1 = phi i64 [ %i.ag, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.05.040.1
  %.idx80 = mul nuw nsw i64 %.sroa.05.040.1, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx80 ; 10 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val11.i.1 = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val12.i.1 = load i64, ptr %i.p, align 8, !noundef !6 ; 5 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -16
  %.val13.i.1 = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6
  %i.r = getelementptr i8, ptr %i.n, i64 -8
  %.val14.i.1 = load i64, ptr %i.r, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i30.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.1, i64 range(i64 0, -9223372036854775808) %.val14.i.1)
  %i.s = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.1, ptr nonnull readonly %.val13.i.1, i64 %spec.store.select.i.i.i.i.i.i30.1), !alias.scope !552 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub nsw i64 %.val12.i.1, %.val14.i.1
  %spec.select.i.i.i.i.i.i31.1 = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = icmp slt i64 %spec.select.i.i.i.i.i.i31.1, 0
  br i1 %i.w, label %bb.h, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  %.sroa.011.0.copyload.i.1 = load i64, ptr %i.n, align 8
  %.sroa.0.0.i32.169 = getelementptr inbounds i8, ptr %i.n, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i32.169, i64 24, i1 false)
  %i.x = icmp eq i64 %.sroa.05.040.1, 1
  br i1 %i.x, label %._crit_edge74, label %.lr.ph73

bb.i:                                             ; preds = %.lr.ph73
  %.sroa.0.0.i32.1 = getelementptr inbounds i8, ptr %.sroa.0.0.i32.171, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i32.171, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i32.1, i64 24, i1 false)
  %i.y = icmp eq ptr %.sroa.0.0.i32.1, %i.k
  br i1 %i.y, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i32.171 = phi ptr [ %.sroa.0.0.i32.1, %bb.i ], [ %.sroa.0.0.i32.169, %bb.h ] ; 5 uses
  %.sroa.5.0.i.170 = phi ptr [ %.sroa.0.0.i32.171, %bb.i ], [ %i.n, %bb.h ] ; 3 uses
  %i.z = getelementptr i8, ptr %.sroa.5.0.i.170, i64 -40
  %.val9.i.1 = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.aa = getelementptr i8, ptr %.sroa.5.0.i.170, i64 -32
  %.val10.i.1 = load i64, ptr %i.aa, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i15.i.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.1, i64 range(i64 0, -9223372036854775808) %.val10.i.1)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.1, ptr nonnull readonly %.val9.i.1, i64 %spec.store.select.i.i.i.i.i15.i.1), !alias.scope !556 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val12.i.1, %.val10.i.1
  %spec.select.i.i.i.i.i16.i.1 = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i16.i.1, 0
  br i1 %i.af, label %bb.i, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.i, %.lr.ph73, %bb.h
  %.sroa.5.0.i.1.lcssa = phi ptr [ %i.n, %bb.h ], [ %.sroa.0.0.i32.171, %bb.i ], [ %.sroa.5.0.i.170, %.lr.ph73 ] ; 2 uses
  %.sroa.0.0.i32.lcssa.1 = phi ptr [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %.sroa.0.0.i32.171, %.lr.ph73 ]
  store i64 %.sroa.011.0.copyload.i.1, ptr %.sroa.0.0.i32.lcssa.1, align 8, !noalias !560
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -16
  store ptr %.val11.i.1, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !560
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -8
  store i64 %.val12.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !560
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit.1

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit.1: ; preds = %._crit_edge74, %.lr.ph.1
  %i.ag = add nuw nsw i64 %.sroa.05.040.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ag, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.ah = add nsw i64 %1, -1                      ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.k, i64 -24
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.al = getelementptr i8, ptr %i.bl, i64 24     ; 3 uses
  %i.am = getelementptr i8, ptr %i.bk, i64 24
  %i.an = and i64 %1, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ap, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.k, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %i.ak, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.aj, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.ai, %.loopexit.1 ] ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val.i = load ptr, ptr %i.aq, align 8, !alias.scope !565, !nonnull !6, !noundef !6
  %i.ar = getelementptr i8, ptr %.sroa.011.07.i, i64 16
  %.sroa.011.0.val22.i = load i64, ptr %i.ar, align 8, !alias.scope !565, !noundef !6 ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val.i = load ptr, ptr %i.as, align 8, !alias.scope !565, !nonnull !6, !noundef !6
  %i.at = getelementptr i8, ptr %.sroa.06.08.i, i64 16
  %.sroa.06.0.val23.i = load i64, ptr %i.at, align 8, !alias.scope !565, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.011.0.val22.i, i64 range(i64 0, -9223372036854775808) %.sroa.06.0.val23.i)
  %i.au = tail call i32 @memcmp(ptr nonnull readonly %.sroa.011.0.val.i, ptr nonnull readonly %.sroa.06.0.val.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !568, !noalias !565 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp eq i32 %i.au, 0
  %i.ax = sub nsw i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %spec.select.i.i.i.i.i.i = select i1 %i.aw, i64 %i.ax, i64 %i.av ; 3 uses
  %5 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  %..i21.i = select i1 %5, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %6 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(24) %..i21.i, i64 24, i1 false), !noalias !572
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.07.i, i64 %spec.select.i.i.i.i.i.lobit.i ; 4 uses
  %i.az = zext i1 %6 to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.08.i, i64 %i.az ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 24 ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.017.05.i, i64 8
  %.sroa.017.0.val.i = load ptr, ptr %i.bc, align 8, !alias.scope !565, !nonnull !6, !noundef !6
  %i.bd = getelementptr i8, ptr %.sroa.017.05.i, i64 16
  %.sroa.017.0.val24.i = load i64, ptr %i.bd, align 8, !alias.scope !565, !noundef !6 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.015.06.i, i64 8
  %.sroa.015.0.val.i = load ptr, ptr %i.be, align 8, !alias.scope !565, !nonnull !6, !noundef !6
  %i.bf = getelementptr i8, ptr %.sroa.015.06.i, i64 16
  %.sroa.015.0.val25.i = load i64, ptr %i.bf, align 8, !alias.scope !565, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i26.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.017.0.val24.i, i64 range(i64 0, -9223372036854775808) %.sroa.015.0.val25.i)
  %i.bg = tail call i32 @memcmp(ptr nonnull readonly %.sroa.017.0.val.i, ptr nonnull readonly %.sroa.015.0.val.i, i64 %spec.store.select.i.i.i.i.i26.i), !alias.scope !576, !noalias !565 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %i.bj = sub nsw i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %spec.select.i.i.i.i.i27.i = select i1 %i.bi, i64 %i.bj, i64 %i.bh ; 3 uses
  %7 = icmp slt i64 %spec.select.i.i.i.i.i27.i, 0
  %..i.i = select i1 %7, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %8 = icmp sgt i64 %spec.select.i.i.i.i.i27.i, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !noalias !580
  %.neg.i.i = sext i1 %8 to i64
  %i.bk = getelementptr [24 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %spec.select.i.i.i.i.i27.lobit.i = ashr i64 %spec.select.i.i.i.i.i27.i, 63
  %i.bl = getelementptr [24 x i8], ptr %.sroa.015.06.i, i64 %spec.select.i.i.i.i.i27.lobit.i ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -24
  %exitcond.not.i = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bn = icmp ult ptr %i.ba, %i.al               ; 2 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bn, ptr %i.ba, ptr %i.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i, i64 24, i1 false)
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.bo
  %9 = icmp uge ptr %i.ba, %i.al
  %i.bq = zext i1 %9 to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.bq
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.ay, %._crit_edge.i ], [ %i.br, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.ba, %._crit_edge.i ], [ %i.bp, %bb.j ]
  %i.bs = icmp ne ptr %.sroa.06.1.i, %i.al
  %i.bt = icmp ne ptr %.sroa.011.1.i, %i.am
  %or.cond.i = select i1 %i.bs, i1 true, i1 %i.bt, !prof !584
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs1xwejQucwHj_5alloc6string6StringNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit, !prof !584

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #25
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = mul nuw nsw i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.bv, i1 false), !noalias !585
  resume { ptr, i32 } %i.bu

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs1xwejQucwHj_5alloc6string6StringNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.05.040 = phi i64 [ %i.cq, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.040
  %.idx = mul nuw nsw i64 %.sroa.05.040, 24
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 10 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %.val11.i = load ptr, ptr %i.by, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 16
  %.val12.i = load i64, ptr %i.bz, align 8, !noundef !6 ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bx, i64 -16
  %.val13.i = load ptr, ptr %i.ca, align 8, !nonnull !6, !noundef !6
  %i.cb = getelementptr i8, ptr %i.bx, i64 -8
  %.val14.i = load i64, ptr %i.cb, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i30 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i, i64 range(i64 0, -9223372036854775808) %.val14.i)
  %i.cc = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i.i.i.i30), !alias.scope !552 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp eq i32 %i.cc, 0
  %i.cf = sub nsw i64 %.val12.i, %.val14.i
  %spec.select.i.i.i.i.i.i31 = select i1 %i.ce, i64 %i.cf, i64 %i.cd
  %i.cg = icmp slt i64 %spec.select.i.i.i.i.i.i31, 0
  br i1 %i.cg, label %bb.n, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit

bb.n:                                             ; preds = %.lr.ph
  %.sroa.011.0.copyload.i = load i64, ptr %i.bx, align 8
  %.sroa.0.0.i3261 = getelementptr inbounds i8, ptr %i.bx, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i3261, i64 24, i1 false)
  %i.ch = icmp eq i64 %.sroa.05.040, 1
  br i1 %i.ch, label %._crit_edge, label %.lr.ph64

bb.o:                                             ; preds = %.lr.ph64
  %.sroa.0.0.i32 = getelementptr inbounds i8, ptr %.sroa.0.0.i3263, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i3263, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i32, i64 24, i1 false)
  %i.ci = icmp eq ptr %.sroa.0.0.i32, %2
  br i1 %i.ci, label %._crit_edge, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.0.i3263 = phi ptr [ %.sroa.0.0.i32, %bb.o ], [ %.sroa.0.0.i3261, %bb.n ] ; 5 uses
  %.sroa.5.0.i62 = phi ptr [ %.sroa.0.0.i3263, %bb.o ], [ %i.bx, %bb.n ] ; 3 uses
  %i.cj = getelementptr i8, ptr %.sroa.5.0.i62, i64 -40
  %.val9.i = load ptr, ptr %i.cj, align 8, !nonnull !6, !noundef !6
  %i.ck = getelementptr i8, ptr %.sroa.5.0.i62, i64 -32
  %.val10.i = load i64, ptr %i.ck, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i, i64 range(i64 0, -9223372036854775808) %.val10.i)
  %i.cl = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i.i.i.i15.i), !alias.scope !556 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = sub nsw i64 %.val12.i, %.val10.i
  %spec.select.i.i.i.i.i16.i = select i1 %i.cn, i64 %i.co, i64 %i.cm
  %i.cp = icmp slt i64 %spec.select.i.i.i.i.i16.i, 0
  br i1 %i.cp, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph64, %bb.n
  %.sroa.5.0.i.lcssa = phi ptr [ %i.bx, %bb.n ], [ %.sroa.0.0.i3263, %bb.o ], [ %.sroa.5.0.i62, %.lr.ph64 ] ; 2 uses
  %.sroa.0.0.i32.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i3263, %.lr.ph64 ]
  store i64 %.sroa.011.0.copyload.i, ptr %.sroa.0.0.i32.lcssa, align 8, !noalias !560
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !560
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !560
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs1xwejQucwHj_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %._crit_edge, %.lr.ph
  %i.cq = add nuw nsw i64 %.sroa.05.040, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtB3_10filter_map9FilterMapNtCs35zZu0fmp16_7walkdir8IntoIterNCINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB2K_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB2M_4pack6PackIdEE0ENCB2D_s_0ENCB2D_s0_0EINtNtB7_6result6ResultzNtNtB2M_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB7g_17NeverShortCircuituE10wrap_mut_2uAhj14_NCINvB11_8map_foldB8g_TB8g_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB8Z_7HashSetB8g_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB6w_7collect6ExtendB8g_E6extendBE_E0NCINvNvB6s_8for_each4callB8I_NCINvXs1i_NtB91_3mapINtBbS_7HashMapB8g_uB9M_EIBaB_B8I_E6extendIBZ_BE_B8Q_EE0E0E0E0B7B_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(192) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !15, !noundef !6
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtCs35zZu0fmp16_7walkdir8IntoIterNCINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB2t_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB2v_4pack6PackIdEE0ENCB2m_s_0ENCB2m_s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB2v_5error5ErrorEEB5s_8try_folduNCINvMNtNtBc_3ops9try_traitINtB7J_17NeverShortCircuituE10wrap_mut_2uAhj14_NCINvB6_8map_foldB8J_TB8J_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB9r_7HashSetB8J_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB5w_7collect6ExtendB8J_E6extendB6j_E0NCINvNvB5s_8for_each4callB9a_NCINvXs1i_NtB9t_3mapINtBcl_7HashMapB8J_uBae_EIBb3_B9a_E6extendIBO_B6j_B9i_EE0E0E0E0B84_E0INtNtB7L_12control_flow11ControlFlowB84_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCs4u2a9tqgjUw_9hashbrown3set8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefENCINvMsd_B1W_NtB1W_9PackIndex13push_snapshotB1U_INtB1h_7HashSetB1U_EE0EINtNtB7_6result6ResultzNtB1W_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB5l_17NeverShortCircuituE10wrap_mut_2uNtB1W_10FileHandleNCINvB11_8map_foldB6l_TB6l_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB7g_7HashSetB6l_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB4B_7collect6ExtendB6l_E6extendBE_E0NCINvNvB4x_8for_each4callB6Z_NCINvXs1i_NtB7i_3mapINtBa9_7HashMapB6l_uB83_EIB8S_B6Z_E6extendIBZ_BE_B77_EE0E0E0E0B5G_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !15, !noundef !6
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtCs4u2a9tqgjUw_9hashbrown3set8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefENCINvMsd_B1F_NtB1F_9PackIndex13push_snapshotB1D_INtB10_7HashSetB1D_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtB1F_9PackErrorEEB3B_8try_folduNCINvMNtNtBc_3ops9try_traitINtB5O_17NeverShortCircuituE10wrap_mut_2uNtB1F_10FileHandleNCINvB6_8map_foldB6O_TB6O_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB7I_7HashSetB6O_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3F_7collect6ExtendB6O_E6extendB4s_E0NCINvNvB3B_8for_each4callB7r_NCINvXs1i_NtB7K_3mapINtBaC_7HashMapB6O_uB8v_EIB9k_B7r_E6extendIBO_B4s_B7z_EE0E0E0E0B69_E0INtNtB5Q_12control_flow11ControlFlowB69_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultIB32_NtNtB1l_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB44_4algo15run_in_parallelRNtNtB44_4pack6PackIdB3c_NCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB7_5slice4iter4IterB5p_EE0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B90_zEEB5T_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !15, !noundef !6
  call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultIB2L_NtNtB14_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3N_4algo15run_in_parallelRNtNtB3N_4pack6PackIdB2V_NCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB58_EE0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB6Y_8try_foldB7F_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B7F_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbb_B7F_EEB5C_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB7_2io5error5ErrorEEEENCNCINvNtNtB3C_4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufB3c_NCINvMs0_NtB4T_10repositoryNtB6c_10Repository15create_snapshotIB1f_B5q_EB5q_E0B73_E0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B9e_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !15, !noundef !6
  call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBc_2io5error5ErrorEEEENCNCINvNtNtB3l_4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufB2V_NCINvMs0_NtB4C_10repositoryNtB5V_10Repository15create_snapshotIBY_B59_EB59_E0B6M_E0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB7b_8try_foldB7S_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B7S_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbo_B7S_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3C_5error5ErrorEEEENCNCINvNtB3C_4algo15run_in_parallelTNtB3A_10PackReaderIB32_NtNtB3E_7packidx9FileEntryEEB3c_NCINvMsa_B3A_NtB3A_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB1f_B5n_EE0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B9z_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !15, !noundef !6
  call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3l_5error5ErrorEEEENCNCINvNtB3l_4algo15run_in_parallelTNtB3j_10PackReaderIB2L_NtNtB3n_7packidx9FileEntryEEB2V_NCINvMsa_B3j_NtB3j_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IBY_B56_EE0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB7w_8try_foldB8d_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B8d_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbJ_B8d_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3D_4algo15run_in_parallelNtNtB3D_4pack6PackIdB3c_NCINvMs0_NtB3D_10repositoryNtB5u_10Repository25find_unreferenced_objectsIB1f_B4X_EEs1_0B6v_E0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B8F_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !15, !noundef !6
  call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3m_4algo15run_in_parallelNtNtB3m_4pack6PackIdB2V_NCINvMs0_NtB3m_10repositoryNtB5d_10Repository25find_unreferenced_objectsIBY_B4G_EEs1_0B6e_E0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB6C_8try_foldB7j_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B7j_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBaP_B7j_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCINvMsd_B24_NtB24_9PackIndex13push_snapshotB22_INtB1j_3VecB22_EE0EINtNtB7_6result6ResultzNtB24_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB5l_17NeverShortCircuituE10wrap_mut_2uNtB24_10FileHandleNCINvB11_8map_foldB6l_TB6l_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB7g_7HashSetB6l_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB4B_7collect6ExtendB6l_E6extendBE_E0NCINvNvB4x_8for_each4callB6Z_NCINvXs1i_NtB7i_3mapINtBa9_7HashMapB6l_uB83_EIB8S_B6Z_E6extendIBZ_BE_B77_EE0E0E0E0B5G_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
