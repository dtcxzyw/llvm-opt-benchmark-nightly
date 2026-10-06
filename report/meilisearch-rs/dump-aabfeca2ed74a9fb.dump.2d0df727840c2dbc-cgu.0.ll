Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31029
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h958c2f86dce55328E:.lr.ph.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %.lr.ph5 ]
  store i64 %.sroa.08.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !61385
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -96
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !61385
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -88
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !61385
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.i, i64 80, i1 false), !noalias !61385
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 104 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc43e24d049e58c2aE(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h23bb8d3a55e745b2E.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h23bb8d3a55e745b2E.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h23bb8d3a55e745b2E.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 7 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h23bb8d3a55e745b2E.exit ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.b = getelementptr i8, ptr %.pn3, i64 32
  %.val11.i = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 40
  %.val12.i = load i64, ptr %i.c, align 8, !noundef !21 ; 5 uses
  %i.d = getelementptr i8, ptr %.pn3, i64 8
  %.val13.i = load ptr, ptr %i.d, align 8, !nonnull !21, !noundef !21
  %i.e = getelementptr i8, ptr %.pn3, i64 16
  %.val14.i = load i64, ptr %i.e, align 8, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.f = sub i64 %.val12.i, %.val14.i
  %i.g = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val13.i, i64 %..i.i.i.i.i.i.i), !alias.scope !61402 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp eq i32 %i.g, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.i, i64 %i.f, i64 %i.h
  %i.j = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.a, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h23bb8d3a55e745b2E.exit

bb.a:                                             ; preds = %.lr.ph
  %.sroa.08.0.copyload.i = load i64, ptr %.sroa.0.04, align 8
  %.sroa.0.0.i1 = getelementptr inbounds i8, ptr %.sroa.0.04, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i1, i64 24, i1 false)
  %i.k = icmp eq ptr %.sroa.0.0.i1, %0
  br i1 %i.k, label %._crit_edge6, label %.lr.ph5

bb.b:                                             ; preds = %.lr.ph5
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i64 24, i1 false)
  %i.l = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.l, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %.sroa.0.0.i1, %bb.a ] ; 5 uses
  %.sroa.5.0.i2 = phi ptr [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.0.04, %bb.a ] ; 3 uses
  %i.m = getelementptr i8, ptr %.sroa.5.0.i2, i64 -40
  %.val9.i = load ptr, ptr %i.m, align 8, !nonnull !21, !noundef !21
  %i.n = getelementptr i8, ptr %.sroa.5.0.i2, i64 -32
  %.val10.i = load i64, ptr %i.n, align 8, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val10.i)
  %i.o = sub i64 %.val12.i, %.val10.i
  %i.p = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val9.i, i64 %..i.i.i.i.i.i15.i), !alias.scope !61403 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %spec.store.select.i.i.i.i.i.i16.i = select i1 %i.r, i64 %i.o, i64 %i.q
  %i.s = icmp slt i64 %spec.store.select.i.i.i.i.i.i16.i, 0
  br i1 %i.s, label %bb.b, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.b, %.lr.ph5, %bb.a
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.04, %bb.a ], [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.5.0.i2, %.lr.ph5 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %.lr.ph5 ]
  store i64 %.sroa.08.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !61404
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !61404
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !61404
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h23bb8d3a55e745b2E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h23bb8d3a55e745b2E.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h49c206fb3c1c1e39E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 76923)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = mul i64 %.sroa.0.0.i17, 104              ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.c, 88686269585142075
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !37

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !61411
  %i.f = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #42, !noalias !61411 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1645) #41
  unreachable

bb.c:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.0.0.i17, %bb.b ] ; 3 uses
  %i.h = icmp samesign ule i64 %.sroa.0.0.i17, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.h)
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h6aa4e88c1157adabE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17h2fb799273b75d6daE"(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17h2fb799273b75d6daE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #43
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h6aa4e88c1157adabE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fm, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fk, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61476)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h92493ac8e713f002E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 112
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !61476, !noalias !61477, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 120
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !61476, !noalias !61477, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !61476, !noalias !61477, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !61476, !noalias !61477, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !61478, !noalias !61479 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 4 uses
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %6 = add i64 %.sroa.01.0.i.i59, -1
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !61476, !noalias !61477, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !61476, !noalias !61477, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !61480, !noalias !61479 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %8 = add i64 %.sroa.01.1.i.i62, -1
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !61476, !noalias !61477, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !61476, !noalias !61477, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !61481, !noalias !61479 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h92493ac8e713f002E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h92493ac8e713f002E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb703bd75840b7146E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h96528b58921b6adaE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !61425
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb703bd75840b7146E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h92493ac8e713f002E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb703bd75840b7146E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61482), !noalias !61477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61483), !noalias !61477
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h92493ac8e713f002E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h26352d3f4b1c5628E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bz, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.014.i.i, -1
  %i.az = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 8 uses
  %i.ba = getelementptr [104 x i8], ptr %i.ax, i64 %i.ay ; 8 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !61484, !noalias !61485
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !61486, !noalias !61487
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !61484, !noalias !61485
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !61486, !noalias !61487
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !61488, !noalias !61485
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !61489, !noalias !61487
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !61488, !noalias !61485
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !61489, !noalias !61487
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !61490, !noalias !61485
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !61491, !noalias !61487
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !alias.scope !61490, !noalias !61485
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !alias.scope !61491, !noalias !61487
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !61492, !noalias !61485
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !61493, !noalias !61487
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !alias.scope !61492, !noalias !61485
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !alias.scope !61493, !noalias !61487
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !61494, !noalias !61485
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !61495, !noalias !61487
  store <2 x i64> %i.bs, ptr %i.bp, align 8, !alias.scope !61494, !noalias !61485
  store <2 x i64> %i.br, ptr %i.bq, align 8, !alias.scope !61495, !noalias !61487
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 80 ; 2 uses
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !61496, !noalias !61485
  %i.bw = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !61497, !noalias !61487
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !alias.scope !61496, !noalias !61485
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !alias.scope !61497, !noalias !61487
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 96 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61498), !noalias !61477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61499), !noalias !61477
  %.sroa.0.0.copyload.i.12.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !61500, !noalias !61501
  %.sroa.02.0.copyload.i.12.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !61502, !noalias !61503
  store i64 %.sroa.02.0.copyload.i.12.i.i.i.i.i.i, ptr %i.bx, align 8, !alias.scope !61500, !noalias !61501
  store i64 %.sroa.0.0.copyload.i.12.i.i.i.i.i.i, ptr %i.by, align 8, !alias.scope !61502, !noalias !61503
  %i.bz = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bz, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h92493ac8e713f002E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17hb703bd75840b7146E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h92493ac8e713f002E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h92493ac8e713f002E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.ca = lshr i64 %.sroa.018.0, 1
  %i.cb = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.cc = sub i64 %factor, %i.ca
  %i.cd = add i64 %i.cb, %factor
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = mul i64 %i.cd, %.sroa.0.0
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 false)
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hb703bd75840b7146E.exit
  %.sroa.026.0 = phi i8 [ %i.ci, %_ZN4core5slice4sort6stable5drift10create_run17hb703bd75840b7146E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hb703bd75840b7146E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cj = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cj, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cl, %_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit ] ; 4 uses
  %i.cl = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.cn, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cp, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !21 ; 3 uses
  %i.cs = lshr i64 %i.cr, 1                       ; 8 uses
  %i.ct = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cu = add nuw i64 %i.cs, %i.ct                ; 4 uses
  %i.cv = sub i64 %.sroa.09.0, %i.cu
  %i.cw = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.cv ; 6 uses
  %i.cx = icmp ugt i64 %i.cu, %3
  %i.cy = trunc i64 %.sroa.018.167 to i1
  %i.cz = or i64 %i.cr, %.sroa.018.167
  %i.da = trunc i64 %i.cz to i1
  %or.cond3.i = or i1 %i.cx, %i.da
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i64 %i.cr to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dc = shl i64 %i.cu, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cy, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dd = or i64 %i.cs, 1
  %i.de = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h96528b58921b6adaE(ptr noalias noundef nonnull align 8 %i.cw, i64 noundef %i.cs, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !61458
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit35": ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [104 x i8], ptr %i.cw, i64 %i.cs
  %i.dj = or i64 %i.ct, 1
  %i.dk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
end_hunk_0
