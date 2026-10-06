Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4core5slice4sort6stable14driftsort_main17h158fb465fe748c48E:bb.a

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #46
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  store i64 %.sroa.0.0.i17, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h542ac89259b134fbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.i, i64 noundef %.sroa.0.0.i17, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit" unwind label %bb.f

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9306
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h542ac89259b134fbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 512, i1 noundef zeroext %i.l, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h87a60ecc5147f4baE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw i64 %1, %i.c                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %.sroa.0.0.i16, 513
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %.sroa.0.0.i17, 3                ; 4 uses
  %i.g = icmp ugt i64 %i.d, 2305843009213693951
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9315
  %i.i = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #47, !noalias !9315 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #46
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  store i64 %.sroa.0.0.i17, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hb0537f2e75eeb8deE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.i, i64 noundef %.sroa.0.0.i17, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit" unwind label %bb.f

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9316
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hb0537f2e75eeb8deE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 512, i1 noundef zeroext %i.l, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$csv..string_record..StringRecord$GT$$GT$17h498d125f938803b8E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hb112b0f9c43bb043E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 2000000)
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i20 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i19, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.0.0.i19, 1025
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %.sroa.0.0.i20, 2                ; 5 uses
  %i.f = icmp ugt i64 %i.c, 4611686018427387903
  %i.g = icmp ugt i64 %i.e, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9323
  %i.h = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #47, !noalias !9323 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #46
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.j = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0f726eec0013a00eE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %i.h, i64 noundef %.sroa.0.0.i20, i1 noundef zeroext %i.j, ptr noalias noundef nonnull align 1 %2)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit" unwind label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit21"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #47
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0f726eec0013a00eE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %i.a, i64 noundef 1024, i1 noundef zeroext %i.k, ptr noalias noundef nonnull align 1 %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit21": ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #47
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0f726eec0013a00eE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread96, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.val10.i = load i32, ptr %i.o, align 4, !alias.scope !9357, !noalias !9358, !noundef !6 ; 3 uses
  %.val11.i = load i32, ptr %i.m, align 4, !alias.scope !9359, !noalias !9360, !noundef !6
  %i.p = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread96, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.val9.i = phi i32 [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader50 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %.val8.i = load i32, ptr %i.q, align 4, !alias.scope !9357, !noalias !9358, !noundef !6 ; 2 uses
  %i.r = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi i32 [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %.val.i = load i32, ptr %i.t, align 4, !alias.scope !9357, !noalias !9358, !noundef !6 ; 2 uses
  %i.u = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.v = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i93, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5), !inline_history !9331
  %i.y = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit": ; preds = %.lr.ph.i.i38, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %middle.block ], [ %.sroa.0.0.i.i94101105, %.lr.ph.i.i38 ]
  %i.aa = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9361), !noalias !9362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9363), !noalias !9362
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread96, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread96 ] ; 4 uses
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.i.thread96 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i94101105 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.i.i38.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !alias.scope !9364, !noalias !9365
  %wide.load118 = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !9364, !noalias !9365
  %i.aj = getelementptr i8, ptr %i.ah, i64 -12    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 -28    ; 2 uses
  %wide.load119 = load <4 x i32>, ptr %i.aj, align 4, !alias.scope !9366, !noalias !9367
  %wide.load120 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !9366, !noalias !9367
  %reverse = shufflevector <4 x i32> %wide.load119, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse121 = shufflevector <4 x i32> %wide.load120, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ag, align 4, !alias.scope !9364, !noalias !9365
  store <4 x i32> %reverse121, ptr %i.ai, align 4, !alias.scope !9364, !noalias !9365
  %reverse122 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse123 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %i.aj, align 4, !alias.scope !9366, !noalias !9367
  store <4 x i32> %reverse123, ptr %i.ak, align 4, !alias.scope !9366, !noalias !9367
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !9337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38
  %.sroa.0.014.i.i = phi i64 [ %i.ar, %.lr.ph.i.i38 ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i38.preheader ] ; 3 uses
  %i.am = xor i64 %.sroa.0.014.i.i, -1
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.ae, i64 %i.am ; 2 uses
  %i.ap = load i32, ptr %i.an, align 4, !alias.scope !9364, !noalias !9365, !noundef !6
  %i.aq = load i32, ptr %i.ao, align 4, !alias.scope !9366, !noalias !9367
  store i32 %i.aq, ptr %i.an, align 4, !alias.scope !9364, !noalias !9365
  store i32 %i.ap, ptr %i.ao, align 4, !alias.scope !9366, !noalias !9367
  %i.ar = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %.lr.ph.i.i38, !llvm.loop !9338

_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.as = lshr i64 %.sroa.018.0, 1
  %i.at = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.au = sub i64 %factor, %i.as
  %i.av = add i64 %i.at, %factor
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit
  %.sroa.026.0 = phi i8 [ %i.ba, %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h7b0a8e46d01eff7bE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bb = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bb, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bd, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !6
  %.not29 = icmp ult i8 %i.bf, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !6 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.018.163 to i1
  %i.br = or i64 %i.bj, %.sroa.018.163
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bu = shl i64 %i.bm, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bq, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %i.bo, i64 noundef %i.bk, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.bz, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5), !inline_history !9339
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit35": ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %i.ca, i64 noundef %i.bl, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.cf, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5), !inline_history !9339
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha2014334509b4859E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9369)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.ci, label %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cj, ptr %i.bo
  %i.ck = shl i64 %.sroa.0.0.i.i36, 2             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %.16.i, i64 %i.ck, i1 false), !alias.scope !9370
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.cm = phi ptr [ %i.cx, %.preheader.i ], [ %i.cl, %bb.y ]
  %i.cn = phi ptr [ %i.cv, %.preheader.i ], [ %i.cj, %bb.y ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.bc, %bb.y ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -4 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -4 ; 2 uses
  %.val.i.i = load i32, ptr %i.cp, align 4, !alias.scope !9371, !noalias !9372, !noundef !6 ; 2 uses
  %.val10.i.i = load i32, ptr %i.co, align 4, !alias.scope !9373, !noalias !9374, !noundef !6 ; 2 uses
  %i.cr = icmp ult i32 %.val.i.i, %.val10.i.i     ; 2 uses
  %i.cs = tail call i32 @llvm.umax.i32(i32 %.val.i.i, i32 %.val10.i.i)
  store i32 %i.cs, ptr %i.cq, align 4, !alias.scope !9368, !noalias !9375
  %i.ct = xor i1 %i.cr, true
  %i.cu = zext i1 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cu ; 3 uses
  %i.cw = zext i1 %i.cr to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cw ; 3 uses
  %i.cy = icmp eq ptr %i.cv, %i.bo
  %i.cz = icmp eq ptr %i.cx, %2
  %or.cond.i.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hacb86664c95e2878E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.da = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.bo, %bb.y ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cj, %bb.y ] ; 2 uses
  %i.db = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %2, %bb.y ] ; 2 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.04.i.i, align 4, !alias.scope !9376, !noalias !9377, !noundef !6 ; 2 uses
  %.val.i19.i = load i32, ptr %i.db, align 4, !alias.scope !9378, !noalias !9379, !noundef !6 ; 2 uses
  %i.dc = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 2 uses
  %i.dd = xor i1 %i.dc, true
  %i.de = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.val.i.i, i32 %.val.i19.i)
  store i32 %i.de, ptr %i.da, align 4, !alias.scope !9368, !noalias !9380
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.dc to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.04.i.i, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dk = icmp ne ptr %i.dg, %i.cl
  %i.dl = icmp ne ptr %i.di, %i.bc
  %or.cond.i20.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hacb86664c95e2878E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hacb86664c95e2878E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cv, %.preheader.i ], [ %i.dj, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cx, %.preheader.i ], [ %i.cl, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dg, %.lr.ph.i.i ] ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dn = ptrtoint ptr %.sroa.0.1.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.do, i1 false), !alias.scope !9370, !noalias !9381
  br label %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit

_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hacb86664c95e2878E.exit.i"
  %i.dp = shl i64 %i.bm, 1
  %i.dq = or disjoint i64 %i.dp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h830b1908ca1c9830E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit
  %.sroa.0.0.i = phi i64 [ %i.dq, %_ZN4core5slice4sort6stable5merge5merge17hf724ffe3d1051108E.exit ], [ %i.bu, %bb.t ] ; 2 uses
  %i.dr = icmp ugt i64 %i.bd, 1
  br i1 %i.dr, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ds = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dt = lshr i64 %.sroa.023.0, 1
  %i.du = add i64 %i.dt, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dv = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dv, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dw = or i64 %1, 1
  %i.dx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3a3de7aae3d2697bE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.ea, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5), !inline_history !9339
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h2eaa57a4a6b23babE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ak, label %bb.b

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
  %.not5.i246 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i251 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ag ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gc, %bb.ag ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ga, %bb.ag ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9422)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread249, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val10.i = load ptr, ptr %i.o, align 8, !alias.scope !9422, !noalias !9423, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %.val11.i = load ptr, ptr %i.m, align 8, !alias.scope !9422, !noalias !9423
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val10.i, ptr %.val11.i), !noalias !9424, !inline_history !9386 ; 2 uses
  %.not158 = icmp eq i64 %i.l, 2                  ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader68

.preheader68:                                     ; preds = %bb.i
  br i1 %.not158, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not158, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread249, label %.lr.ph145

.lr.ph:                                           ; preds = %.preheader68, %bb.j
  %.val9.i = phi ptr [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader68 ]
  %.sroa.01.0.i.i141 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader68 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i141
  %.val8.i = load ptr, ptr %i.q, align 8, !alias.scope !9422, !noalias !9423, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val8.i, ptr nonnull %.val9.i), !noalias !9424, !inline_history !9386
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i141, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i, label %.lr.ph

.lr.ph145:                                        ; preds = %.preheader, %bb.k
  %.val7.i = phi ptr [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i144 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i144
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !9422, !noalias !9423, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h3b3d03a9c176fba1E"(ptr nonnull %.val.i, ptr nonnull %.val7.i), !noalias !9424, !inline_history !9386
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i

bb.k:                                             ; preds = %.lr.ph145
  %i.v = add nuw i64 %.sroa.01.1.i.i144, 1        ; 2 uses
  %exitcond217.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond217.not, label %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i, label %.lr.ph145

_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph145
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i144, %.lr.ph145 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i141, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread249: ; preds = %.preheader
  br i1 %.not5.i251, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread: ; preds = %.preheader68
  br i1 %.not5.i246, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9386
  %i.y = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit": ; preds = %.lr.ph.i.i39, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i6366 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread ], [ %.sroa.0.0.i.i247254258, %middle.block ], [ %.sroa.0.0.i.i247254258, %.lr.ph.i.i39 ]
  %i.aa = shl i64 %.sroa.0.0.i.i6366, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9425), !noalias !9423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9426), !noalias !9423
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread249, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread249 ] ; 4 uses
  %.sroa.0.0.i.i247254258 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h468ad39021d49062E.exit.i.thread249 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i247254258 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.i.i39.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ad, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.af ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !9427, !noalias !9428
  %wide.load375 = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !9427, !noalias !9428
  %i.aj = getelementptr i8, ptr %i.ah, i64 -8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %wide.load376 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !9429, !noalias !9430
  %wide.load377 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !9429, !noalias !9430
  %reverse = shufflevector <2 x i64> %wide.load376, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse378 = shufflevector <2 x i64> %wide.load377, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> %reverse, ptr %i.ag, align 8, !alias.scope !9427, !noalias !9428
  store <2 x i64> %reverse378, ptr %i.al, align 8, !alias.scope !9427, !noalias !9428
  %i.am = getelementptr i8, ptr %i.ah, i64 -8
  %i.an = getelementptr i8, ptr %i.ah, i64 -24
  %reverse379 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse380 = shufflevector <2 x ptr> %wide.load375, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse379, ptr %i.am, align 8, !alias.scope !9429, !noalias !9430
  store <2 x ptr> %reverse380, ptr %i.an, align 8, !alias.scope !9429, !noalias !9430
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !9392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.i.i39.preheader

.lr.ph.i.i39.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39.preheader, %.lr.ph.i.i39
  %.sroa.0.014.i.i = phi i64 [ %i.au, %.lr.ph.i.i39 ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i39.preheader ] ; 3 uses
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ae, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !9427, !noalias !9428, !nonnull !6, !align !8, !noundef !6
  %i.at = load i64, ptr %i.ar, align 8, !alias.scope !9429, !noalias !9430
  store i64 %i.at, ptr %i.aq, align 8, !alias.scope !9427, !noalias !9428
  store ptr %i.as, ptr %i.ar, align 8, !alias.scope !9429, !noalias !9430
  %i.au = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.i.i39, !llvm.loop !9393

_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.av = lshr i64 %.sroa.018.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ax = sub i64 %factor, %i.av
  %i.ay = add i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit
  %.sroa.026.0 = phi i8 [ %i.bd, %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hc12a19fea931e422E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.be = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.be, label %.lr.ph151, label %._crit_edge

.lr.ph151:                                        ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph151, %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit
  %.sroa.02.1150 = phi i64 [ %.sroa.02.0, %.lr.ph151 ], [ %i.bg, %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit ] ; 2 uses
  %.sroa.018.1149 = phi i64 [ %.sroa.018.0, %.lr.ph151 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.1150, -1              ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !6
  %.not29 = icmp ult i8 %i.bi, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.1149, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.1150, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bk, align 1
  br i1 %i.k, label %bb.ag, label %bb.ah

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 8 uses
  %i.bo = lshr i64 %.sroa.018.1149, 1             ; 6 uses
  %i.bp = add nuw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq ; 6 uses
  %i.bs = icmp ugt i64 %i.bp, %3
  %i.bt = trunc i64 %.sroa.018.1149 to i1
  %i.bu = or i64 %i.bm, %.sroa.018.1149
  %i.bv = trunc i64 %i.bu to i1
  %or.cond3.i = or i1 %i.bs, %i.bv
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bx = shl i64 %i.bp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bt, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.by = or i64 %i.bn, 1
  %i.bz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE(ptr noalias noundef nonnull align 8 %i.br, i64 noundef %i.bn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9394
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35": ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn
  %i.ce = or i64 %i.bo, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef %i.bo, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9394
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9432)
  %i.cj = icmp eq i64 %i.bn, 0
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h2eaa57a4a6b23babE:bb.a
  %.sroa.13.1.i = phi ptr [ %i.fo, %.noexc21.i ], [ %i.br, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fm, %.noexc21.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fn, %.noexc21.i ], [ %i.cm, %bb.y ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !9431, !noalias !9443, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %.val.i19.i = load ptr, ptr %.sroa.0.0.i38, align 8, !alias.scope !9432, !noalias !9444 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9445), !noalias !9433
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 80
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !9445, !noalias !9446, !noundef !6
  %.not.i.i.i.i = icmp ne i64 %i.ef, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 72
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !9445, !noalias !9446
  %i.ei = icmp ne i64 %i.eh, 0
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ei, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ac, label %.invoke383

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !9445, !noalias !9446, !nonnull !6, !noundef !6
  %i.el = load i64, ptr %i.ek, align 8, !noalias !9447, !noundef !6 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 48
  %i.en = load i64, ptr %i.em, align 8, !noalias !9433, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.el, %i.en
  br i1 %.not.i.i.i, label %.invoke385, label %bb.ad, !prof !9

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !9433, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i19.i) ], !noalias !9433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9448), !noalias !9433
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !9448, !noalias !9449, !noundef !6
  %.not.i.i14.i.i = icmp ne i64 %i.er, 0
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 72
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !9448, !noalias !9449
  %i.eu = icmp ne i64 %i.et, 0
  %or.cond.i.i15.i.i = select i1 %.not.i.i14.i.i, i1 %i.eu, i1 false
  br i1 %or.cond.i.i15.i.i, label %bb.ae, label %.invoke383

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !9448, !noalias !9449, !nonnull !6, !noundef !6
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !9450, !noundef !6 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 48
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !9433, !noundef !6 ; 2 uses
  %.not.i18.i.i = icmp ugt i64 %i.ex, %i.ez
  br i1 %.not.i18.i.i, label %.invoke385, label %.noexc21.i, !prof !9

.invoke385:                                       ; preds = %bb.ae, %bb.ac
  %i.fa = phi i64 [ %i.el, %bb.ac ], [ %i.ex, %bb.ae ]
  %i.fb = phi i64 [ %i.en, %bb.ac ], [ %i.ez, %bb.ae ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.fa, i64 noundef %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
          to label %.cont386 unwind label %.loopexit.split-lp.i

.cont386:                                         ; preds = %.invoke385
  unreachable

.invoke383:                                       ; preds = %bb.ad, %.lr.ph.i.i
  %i.fc = phi ptr [ @181, %.lr.ph.i.i ], [ @182, %bb.ad ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc) #46
          to label %.cont384 unwind label %.loopexit.split-lp.i

.cont384:                                         ; preds = %.invoke383
  unreachable

.noexc21.i:                                       ; preds = %bb.ae
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !9433, !nonnull !6, !noundef !6
  %..i.i42 = tail call i64 @llvm.umin.i64(i64 %i.el, i64 %i.ex)
  %i.ff = sub i64 %i.el, %i.ex
  %i.fg = tail call i32 @memcmp(ptr nonnull %i.ep, ptr nonnull %i.fe, i64 %..i.i42), !noalias !9433 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp eq i32 %i.fg, 0
  %spec.store.select.i.i = select i1 %i.fi, i64 %i.ff, i64 %i.fh ; 2 uses
  %i.fj = icmp sgt i64 %spec.store.select.i.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.fj, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  %i.fk = load i64, ptr %spec.select.i.i, align 8, !alias.scope !9433, !noalias !9451
  store i64 %i.fk, ptr %.sroa.13.1.i, align 8, !alias.scope !9431, !noalias !9443
  %i.fl = zext i1 %i.fj to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i38, i64 %i.fl ; 3 uses
  %spec.store.select.i.i.lobit = lshr i64 %spec.store.select.i.i, 63
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.lobit ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.fp = icmp ne ptr %i.fm, %i.co
  %i.fq = icmp ne ptr %i.fn, %i.bf
  %or.cond.i20.i = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7d096b92730302cbE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7d096b92730302cbE.exit.i": ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ea, %.noexc.i ], [ %i.fo, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.eb, %.noexc.i ], [ %i.co, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.fm, %.noexc21.i ] ; 2 uses
  %i.fr = ptrtoint ptr %.sroa.7.2.i to i64
  %i.fs = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ft = sub nuw i64 %i.fr, %i.fs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ft, i1 false), !alias.scope !9433, !noalias !9452
  br label %_ZN4core5slice4sort6stable5merge5merge17h276595fdfdded4e5E.exit

.loopexit.i:                                      ; preds = %.invoke381, %.invoke
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp.i:                             ; preds = %.invoke385, %.invoke383
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.co, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fu = ptrtoint ptr %.sroa.7.1.i to i64
  %i.fv = ptrtoint ptr %.sroa.0.2.i to i64
  %i.fw = sub nuw i64 %i.fu, %i.fv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.fw, i1 false), !alias.scope !9433, !noalias !9453
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h276595fdfdded4e5E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7d096b92730302cbE.exit.i"
  %i.fx = shl i64 %i.bp, 1
  %i.fy = or disjoint i64 %i.fx, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h60c5e78110bb893dE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h276595fdfdded4e5E.exit
  %.sroa.0.0.i = phi i64 [ %i.fy, %_ZN4core5slice4sort6stable5merge5merge17h276595fdfdded4e5E.exit ], [ %i.bx, %bb.t ] ; 2 uses
  %i.fz = icmp ugt i64 %i.bg, 1
  br i1 %i.fz, label %bb.q, label %._crit_edge

bb.ag:                                            ; preds = %._crit_edge
  %i.ga = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gb = lshr i64 %.sroa.023.0, 1
  %i.gc = add i64 %i.gb, %.sroa.09.0
  br label %bb.f

bb.ah:                                            ; preds = %._crit_edge
  %i.gd = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gd, 0
  br i1 %.not31, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ge = or i64 %1, 1
  %i.gf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ge, i1 true)
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = shl nuw nsw i32 %i.gg, 1
  %i.gi = xor i32 %i.gh, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7ddf27d5d9d76b2fE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9394
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h542ac89259b134fbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

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
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9482)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread117, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val10.i = load ptr, ptr %i.o, align 8, !alias.scope !9482, !noalias !9483, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %.val11.i = load ptr, ptr %i.m, align 8, !alias.scope !9482, !noalias !9483
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val10.i, ptr %.val11.i), !noalias !9484, !inline_history !9458 ; 2 uses
  %.not83 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread117, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.j
  %.val9.i = phi ptr [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i66 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader51 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %.val8.i = load ptr, ptr %i.q, align 8, !alias.scope !9482, !noalias !9483, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val8.i, ptr nonnull %.val9.i), !noalias !9484, !inline_history !9458
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i66, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi ptr [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i69 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !9482, !noalias !9483, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val.i, ptr nonnull %.val7.i), !noalias !9484, !inline_history !9458
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i

bb.k:                                             ; preds = %.lr.ph70
  %i.v = add nuw i64 %.sroa.01.1.i.i69, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i114, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9458
  %i.y = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit": ; preds = %.lr.ph.i.i39, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4649 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %middle.block ], [ %.sroa.0.0.i.i115122126, %.lr.ph.i.i39 ]
  %i.aa = shl i64 %.sroa.0.0.i.i4649, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9485), !noalias !9483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9486), !noalias !9483
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread117, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h47e300cd072dfbf1E.exit.i.thread117 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i115122126 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.i.i39.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ad, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.af ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !9487, !noalias !9488
  %wide.load151 = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !9487, !noalias !9488
  %i.aj = getelementptr i8, ptr %i.ah, i64 -8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %wide.load152 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !9489, !noalias !9490
  %wide.load153 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !9489, !noalias !9490
  %reverse = shufflevector <2 x i64> %wide.load152, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse154 = shufflevector <2 x i64> %wide.load153, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> %reverse, ptr %i.ag, align 8, !alias.scope !9487, !noalias !9488
  store <2 x i64> %reverse154, ptr %i.al, align 8, !alias.scope !9487, !noalias !9488
  %i.am = getelementptr i8, ptr %i.ah, i64 -8
  %i.an = getelementptr i8, ptr %i.ah, i64 -24
  %reverse155 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse156 = shufflevector <2 x ptr> %wide.load151, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse155, ptr %i.am, align 8, !alias.scope !9489, !noalias !9490
  store <2 x ptr> %reverse156, ptr %i.an, align 8, !alias.scope !9489, !noalias !9490
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !9464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.i.i39.preheader

.lr.ph.i.i39.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39.preheader, %.lr.ph.i.i39
  %.sroa.0.014.i.i = phi i64 [ %i.au, %.lr.ph.i.i39 ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i39.preheader ] ; 3 uses
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ae, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !9487, !noalias !9488, !nonnull !6, !align !8, !noundef !6
  %i.at = load i64, ptr %i.ar, align 8, !alias.scope !9489, !noalias !9490
  store i64 %i.at, ptr %i.aq, align 8, !alias.scope !9487, !noalias !9488
  store ptr %i.as, ptr %i.ar, align 8, !alias.scope !9489, !noalias !9490
  %i.au = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.i.i39, !llvm.loop !9465

_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.av = lshr i64 %.sroa.018.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ax = sub i64 %factor, %i.av
  %i.ay = add i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit
  %.sroa.026.0 = phi i8 [ %i.bd, %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h0749cf3a7902462aE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.be = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.be, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.bg, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !6
  %.not29 = icmp ult i8 %i.bi, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.174, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.175, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bk, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 8 uses
  %i.bo = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.bp = add nuw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq ; 6 uses
  %i.bs = icmp ugt i64 %i.bp, %3
  %i.bt = trunc i64 %.sroa.018.174 to i1
  %i.bu = or i64 %i.bm, %.sroa.018.174
  %i.bv = trunc i64 %i.bu to i1
  %or.cond3.i = or i1 %i.bs, %i.bv
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bx = shl i64 %i.bp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bt, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.by = or i64 %i.bn, 1
  %i.bz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %i.br, i64 noundef %i.bn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9466
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35": ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn
  %i.ce = or i64 %i.bo, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef %i.bo, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9466
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9492)
  %i.cj = icmp eq i64 %i.bn, 0
  %i.ck = icmp eq i64 %i.bo, 0
  %or.cond.i = or i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 range(i64 0, -9223372036854775808) %i.bn) ; 2 uses
  %i.cl = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cl, label %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bn, %i.bo  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cm, ptr %i.br
  %i.cn = shl i64 %.sroa.0.0.i.i36, 3             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cn, i1 false), !alias.scope !9493
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cw, %.noexc.i ], [ %i.cm, %bb.y ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.co, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cs, %.noexc.i ], [ %i.bf, %bb.y ]
  %i.cp = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !9492, !noalias !9494, !nonnull !6, !align !8, !noundef !6
  %.val10.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !9491, !noalias !9495
  %i.cr = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.val.i.i, ptr %.val10.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !9493 ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %..i.i = select i1 %i.cr, ptr %i.cp, ptr %i.cq
  %i.ct = load i64, ptr %..i.i, align 8, !alias.scope !9493, !noalias !9496
  store i64 %i.ct, ptr %i.cs, align 8, !alias.scope !9491, !noalias !9495
  %i.cu = xor i1 %i.cr, true
  %i.cv = zext i1 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cv ; 3 uses
  %i.cx = zext i1 %i.cr to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cx ; 3 uses
  %i.cz = icmp eq ptr %i.cw, %i.br
  %i.da = icmp eq ptr %i.cy, %2
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h646f22c7d4ee0132E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.di, %.noexc21.i ], [ %i.br, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.df, %.noexc21.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dh, %.noexc21.i ], [ %i.cm, %bb.y ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !9491, !noalias !9497, !nonnull !6, !align !8, !noundef !6
  %.val.i19.i = load ptr, ptr %.sroa.0.0.i38, align 8, !alias.scope !9492, !noalias !9498
  %i.db = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nonnull %.sroa.0.0.val.i.i, ptr %.val.i19.i)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i, !noalias !9493 ; 3 uses

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.dc = xor i1 %i.db, true
  %spec.select.i.i = select i1 %i.db, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  %i.dd = load i64, ptr %spec.select.i.i, align 8, !alias.scope !9493, !noalias !9499
  store i64 %i.dd, ptr %.sroa.13.1.i, align 8, !alias.scope !9491, !noalias !9497
  %i.de = zext i1 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i38, i64 %i.de ; 3 uses
  %i.dg = zext i1 %i.db to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dj = icmp ne ptr %i.df, %i.co
  %i.dk = icmp ne ptr %i.dh, %i.bf
  %or.cond.i20.i = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h646f22c7d4ee0132E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h646f22c7d4ee0132E.exit.i": ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cw, %.noexc.i ], [ %i.di, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.co, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.df, %.noexc21.i ] ; 2 uses
  %i.dl = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dm = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dn = sub nuw i64 %i.dl, %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dn, i1 false), !alias.scope !9493, !noalias !9500
  br label %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.co, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.do = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dp = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dq = sub nuw i64 %i.do, %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.dq, i1 false), !alias.scope !9493, !noalias !9501
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h646f22c7d4ee0132E.exit.i"
  %i.dr = shl i64 %i.bp, 1
  %i.ds = or disjoint i64 %i.dr, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h6f089e3263d8771fE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit
  %.sroa.0.0.i = phi i64 [ %i.ds, %_ZN4core5slice4sort6stable5merge5merge17ha20076a62ee3fb0eE.exit ], [ %i.bx, %bb.t ] ; 2 uses
  %i.dt = icmp ugt i64 %i.bg, 1
  br i1 %i.dt, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.du = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dv = lshr i64 %.sroa.023.0, 1
  %i.dw = add i64 %i.dv, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dx = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dx, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = or i64 %1, 1
  %i.dz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h73bbf79b86abfb69E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9466
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hb0537f2e75eeb8deE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

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
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9530)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread117, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val10.i = load ptr, ptr %i.o, align 8, !alias.scope !9530, !noalias !9531, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %.val11.i = load ptr, ptr %i.m, align 8, !alias.scope !9530, !noalias !9531
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val10.i, ptr %.val11.i), !noalias !9532, !inline_history !9506 ; 2 uses
  %.not83 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread117, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.j
  %.val9.i = phi ptr [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i66 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader51 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %.val8.i = load ptr, ptr %i.q, align 8, !alias.scope !9530, !noalias !9531, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val8.i, ptr nonnull %.val9.i), !noalias !9532, !inline_history !9506
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i66, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi ptr [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i69 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !9530, !noalias !9531, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull %.val.i, ptr nonnull %.val7.i), !noalias !9532, !inline_history !9506
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i

bb.k:                                             ; preds = %.lr.ph70
  %i.v = add nuw i64 %.sroa.01.1.i.i69, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i114, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8f22d88c1dd45868E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9506
  %i.y = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit": ; preds = %.lr.ph.i.i39, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4649 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %middle.block ], [ %.sroa.0.0.i.i115122126, %.lr.ph.i.i39 ]
  %i.aa = shl i64 %.sroa.0.0.i.i4649, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9533), !noalias !9531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9534), !noalias !9531
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread117, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h93d79140479f7fe1E.exit.i.thread117 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i115122126 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.i.i39.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ad, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.af ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !9535, !noalias !9536
  %wide.load151 = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !9535, !noalias !9536
  %i.aj = getelementptr i8, ptr %i.ah, i64 -8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %wide.load152 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !9537, !noalias !9538
  %wide.load153 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !9537, !noalias !9538
  %reverse = shufflevector <2 x i64> %wide.load152, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse154 = shufflevector <2 x i64> %wide.load153, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> %reverse, ptr %i.ag, align 8, !alias.scope !9535, !noalias !9536
  store <2 x i64> %reverse154, ptr %i.al, align 8, !alias.scope !9535, !noalias !9536
  %i.am = getelementptr i8, ptr %i.ah, i64 -8
  %i.an = getelementptr i8, ptr %i.ah, i64 -24
  %reverse155 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse156 = shufflevector <2 x ptr> %wide.load151, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse155, ptr %i.am, align 8, !alias.scope !9537, !noalias !9538
  store <2 x ptr> %reverse156, ptr %i.an, align 8, !alias.scope !9537, !noalias !9538
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !9512

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.i.i39.preheader

.lr.ph.i.i39.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39.preheader, %.lr.ph.i.i39
  %.sroa.0.014.i.i = phi i64 [ %i.au, %.lr.ph.i.i39 ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i39.preheader ] ; 3 uses
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ae, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !9535, !noalias !9536, !nonnull !6, !align !8, !noundef !6
  %i.at = load i64, ptr %i.ar, align 8, !alias.scope !9537, !noalias !9538
  store i64 %i.at, ptr %i.aq, align 8, !alias.scope !9535, !noalias !9536
  store ptr %i.as, ptr %i.ar, align 8, !alias.scope !9537, !noalias !9538
  %i.au = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit", label %.lr.ph.i.i39, !llvm.loop !9513

_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he79e7530934b1227E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.av = lshr i64 %.sroa.018.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ax = sub i64 %factor, %i.av
  %i.ay = add i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit
  %.sroa.026.0 = phi i8 [ %i.bd, %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17he0116fa2f8489170E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.be = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.be, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.bg, %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !6
  %.not29 = icmp ult i8 %i.bi, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.174, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.175, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bk, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 8 uses
  %i.bo = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.bp = add nuw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq ; 6 uses
  %i.bs = icmp ugt i64 %i.bp, %3
  %i.bt = trunc i64 %.sroa.018.174 to i1
  %i.bu = or i64 %i.bm, %.sroa.018.174
  %i.bv = trunc i64 %i.bu to i1
  %or.cond3.i = or i1 %i.bs, %i.bv
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bx = shl i64 %i.bp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h5af18712f5014f75E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bt, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.by = or i64 %i.bn, 1
  %i.bz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8f22d88c1dd45868E(ptr noalias noundef nonnull align 8 %i.br, i64 noundef %i.bn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9514
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35": ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn
  %i.ce = or i64 %i.bo, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8f22d88c1dd45868E(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef %i.bo, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !9514
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9540)
  %i.cj = icmp eq i64 %i.bn, 0
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable9quicksort9quicksort17h8f22d88c1dd45868E:bb.a
  %i.ib = add i64 %.sroa.27.130.i65, %i.ia        ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i64, i64 8
  %.val32.i69 = load ptr, ptr %i.ic, align 8, !alias.scope !10067, !noalias !10068 ; 2 uses
  %i.id = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull readonly %.val35.i63, ptr readonly %.val32.i69), !noalias !10069 ; 2 uses
  %i.ie = xor i1 %i.id, true
  %i.if = getelementptr inbounds i8, ptr %.sroa.43.129.i66, i64 -16
  %.sroa.01.0.i36.i70 = select i1 %i.id, ptr %i.if, ptr %2
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i70, i64 %i.ib
  %.cast83 = ptrtoint ptr %.val32.i69 to i64
  store i64 %.cast83, ptr %i.ig, align 8, !alias.scope !10068, !noalias !10071
  %i.ih = zext i1 %i.ie to i64
  %i.ii = add i64 %i.ib, %i.ih                    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i64, i64 16
  %.val30.i71 = load ptr, ptr %i.ij, align 8, !alias.scope !10067, !noalias !10068 ; 2 uses
  %i.ik = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull readonly %.val35.i63, ptr readonly %.val30.i71), !noalias !10069 ; 2 uses
  %i.il = xor i1 %i.ik, true
  %i.im = getelementptr inbounds i8, ptr %.sroa.43.129.i66, i64 -24
  %.sroa.01.0.i37.i72 = select i1 %i.ik, ptr %i.im, ptr %2
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i72, i64 %i.ii
  %.cast84 = ptrtoint ptr %.val30.i71 to i64
  store i64 %.cast84, ptr %i.in, align 8, !alias.scope !10068, !noalias !10072
  %i.io = zext i1 %i.il to i64
  %i.ip = add i64 %i.ii, %i.io                    ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i64, i64 24
  %.val28.i73 = load ptr, ptr %i.iq, align 8, !alias.scope !10067, !noalias !10068 ; 2 uses
  %i.ir = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull readonly %.val35.i63, ptr readonly %.val28.i73), !noalias !10069 ; 2 uses
  %i.is = xor i1 %i.ir, true
  %i.it = getelementptr inbounds i8, ptr %.sroa.43.129.i66, i64 -32 ; 3 uses
  %.sroa.01.0.i38.i74 = select i1 %i.ir, ptr %i.it, ptr %2
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i38.i74, i64 %i.ip
  %.cast85 = ptrtoint ptr %.val28.i73 to i64
  store i64 %.cast85, ptr %i.iu, align 8, !alias.scope !10068, !noalias !10073
  %i.iv = zext i1 %i.is to i64
  %i.iw = add i64 %i.ip, %i.iv                    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i64, i64 32 ; 3 uses
  %i.iy = icmp ult ptr %i.ix, %i.hu
  br i1 %i.iy, label %bb.ag, label %._crit_edge.i43

._crit_edge.i43:                                  ; preds = %bb.ag, %bb.af
  %.sroa.43.1.lcssa.i44 = phi ptr [ %.sroa.43.0.i39, %bb.af ], [ %i.it, %bb.ag ] ; 2 uses
  %.sroa.27.1.lcssa.i45 = phi i64 [ %.sroa.27.0.i40, %bb.af ], [ %i.iw, %bb.ag ] ; 2 uses
  %.sroa.9.1.lcssa.i46 = phi ptr [ %.sroa.9.0.i41, %bb.af ], [ %i.ix, %bb.ag ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.02.0.i42 ; 2 uses
  %i.ja = icmp ult ptr %.sroa.9.1.lcssa.i46, %i.iz
  br i1 %i.ja, label %.lr.ph38.i55.preheader, label %._crit_edge39.i47

.lr.ph38.i55.preheader:                           ; preds = %._crit_edge.i43
  %.val27.i60 = load ptr, ptr %i.fi, align 8, !alias.scope !10067, !noalias !10068, !nonnull !6, !align !8, !noundef !6
  br label %.lr.ph38.i55

._crit_edge39.i47:                                ; preds = %.lr.ph38.i55, %._crit_edge.i43
  %.sroa.43.2.lcssa.i48 = phi ptr [ %.sroa.43.1.lcssa.i44, %._crit_edge.i43 ], [ %i.je, %.lr.ph38.i55 ]
  %.sroa.27.2.lcssa.i49 = phi i64 [ %.sroa.27.1.lcssa.i45, %._crit_edge.i43 ], [ %i.jh, %.lr.ph38.i55 ] ; 9 uses
  %.sroa.9.2.lcssa.i50 = phi ptr [ %.sroa.9.1.lcssa.i46, %._crit_edge.i43 ], [ %i.ji, %.lr.ph38.i55 ] ; 2 uses
  %i.jb = icmp eq i64 %.sroa.02.0.i42, %.sroa.15.0128320
  br i1 %i.jb, label %bb.ai, label %bb.ah

.lr.ph38.i55:                                     ; preds = %.lr.ph38.i55.preheader, %.lr.ph38.i55
  %.sroa.9.236.i56 = phi ptr [ %i.ji, %.lr.ph38.i55 ], [ %.sroa.9.1.lcssa.i46, %.lr.ph38.i55.preheader ] ; 2 uses
  %.sroa.27.235.i57 = phi i64 [ %i.jh, %.lr.ph38.i55 ], [ %.sroa.27.1.lcssa.i45, %.lr.ph38.i55.preheader ] ; 2 uses
  %.sroa.43.234.i58 = phi ptr [ %i.je, %.lr.ph38.i55 ], [ %.sroa.43.1.lcssa.i44, %.lr.ph38.i55.preheader ]
  %.val.i59 = load ptr, ptr %.sroa.9.236.i56, align 8, !alias.scope !10067, !noalias !10068 ; 2 uses
  %i.jc = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h939acc691c6b46b5E"(ptr nonnull readonly %.val27.i60, ptr readonly %.val.i59), !noalias !10069 ; 2 uses
  %i.jd = xor i1 %i.jc, true
  %i.je = getelementptr inbounds i8, ptr %.sroa.43.234.i58, i64 -8 ; 3 uses
  %.sroa.01.0.i39.i61 = select i1 %i.jc, ptr %i.je, ptr %2
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i61, i64 %.sroa.27.235.i57
  %.cast138 = ptrtoint ptr %.val.i59 to i64
  store i64 %.cast138, ptr %i.jf, align 8, !alias.scope !10068, !noalias !10074
  %i.jg = zext i1 %i.jd to i64
  %i.jh = add i64 %.sroa.27.235.i57, %i.jg        ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i56, i64 8 ; 3 uses
  %i.jj = icmp ult ptr %i.ji, %i.iz
  br i1 %i.jj, label %.lr.ph38.i55, label %._crit_edge39.i47

bb.ah:                                            ; preds = %._crit_edge39.i47
  %i.jk = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i48, i64 -8
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i49
  %i.jm = load i64, ptr %.sroa.9.2.lcssa.i50, align 8, !alias.scope !10067, !noalias !10075
  store i64 %i.jm, ptr %i.jl, align 8, !alias.scope !10068, !noalias !10076
  %i.jn = add i64 %.sroa.27.2.lcssa.i49, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i50, i64 8
  br label %bb.af

bb.ai:                                            ; preds = %._crit_edge39.i47
  %i.jp = shl i64 %.sroa.27.2.lcssa.i49, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph135, ptr nonnull align 8 %2, i64 %i.jp, i1 false), !alias.scope !10069
  %i.jq = sub i64 %.sroa.15.0128320, %.sroa.27.2.lcssa.i49 ; 7 uses
  %.not47.i51 = icmp eq i64 %.sroa.15.0128320, %.sroa.27.2.lcssa.i49
  br i1 %.not47.i51, label %.outer._crit_edge.thread, label %.lr.ph45.i52

.lr.ph45.i52:                                     ; preds = %bb.ai
  %i.jr = getelementptr [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i49 ; 2 uses
  %min.iters.check = icmp ult i64 %i.jq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i52
  %n.vec = and i64 %i.jq, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.js = xor i64 %index, -1
  %i.jt = getelementptr [8 x i8], ptr %i.hs, i64 %i.js ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %i.jr, i64 %index ; 2 uses
  %i.jv = getelementptr i8, ptr %i.jt, i64 -8
  %i.jw = getelementptr i8, ptr %i.jt, i64 -24
  %wide.load = load <2 x i64>, ptr %i.jv, align 8, !alias.scope !10068, !noalias !10067
  %wide.load336 = load <2 x i64>, ptr %i.jw, align 8, !alias.scope !10068, !noalias !10067
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse337 = shufflevector <2 x i64> %wide.load336, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jx = getelementptr i8, ptr %i.ju, i64 16
  store <2 x i64> %reverse, ptr %i.ju, align 8, !alias.scope !10067, !noalias !10068
  store <2 x i64> %reverse337, ptr %i.jx, align 8, !alias.scope !10067, !noalias !10068
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jy = icmp eq i64 %index.next, %n.vec
  br i1 %i.jy, label %middle.block, label %vector.body, !llvm.loop !10040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jq, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4c42098b0edaf3d7E.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i52, %middle.block
  %.sroa.05.043.i53.ph = phi i64 [ 0, %.lr.ph45.i52 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.05.043.i53 = phi i64 [ %i.jz, %scalar.ph ], [ %.sroa.05.043.i53.ph, %scalar.ph.preheader ] ; 3 uses
  %i.jz = add nuw i64 %.sroa.05.043.i53, 1        ; 2 uses
  %i.ka = xor i64 %.sroa.05.043.i53, -1
  %i.kb = getelementptr [8 x i8], ptr %i.hs, i64 %i.ka
  %i.kc = getelementptr [8 x i8], ptr %i.jr, i64 %.sroa.05.043.i53
  %i.kd = load i64, ptr %i.kb, align 8, !alias.scope !10068, !noalias !10067
  store i64 %i.kd, ptr %i.kc, align 8, !alias.scope !10067, !noalias !10068
  %exitcond.not.i54 = icmp eq i64 %i.jz, %i.jq
  br i1 %exitcond.not.i54, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4c42098b0edaf3d7E.exit, label %scalar.ph, !llvm.loop !10041

_ZN4core5slice4sort6stable9quicksort16stable_partition17h4c42098b0edaf3d7E.exit: ; preds = %scalar.ph, %middle.block
  %i.ke = icmp ugt i64 %.sroa.27.2.lcssa.i49, %.sroa.15.0128320
  br i1 %i.ke, label %bb.aj, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit", !prof !16

.outer._crit_edge.thread:                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd09660543607871cE.exit

bb.aj:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4c42098b0edaf3d7E.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.27.2.lcssa.i49, i64 noundef %.sroa.15.0128320, i64 noundef %.sroa.15.0128320, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !noalias !10077
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h44a715ef399aee03E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h4c42098b0edaf3d7E.exit
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.kg = icmp ult i64 %i.jq, 33
  br i1 %i.kg, label %.outer._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @302, ptr %i.a, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.kk, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #46
  unreachable

bb.al:                                            ; preds = %bb.ac
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph135) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8f22d88c1dd45868E(ptr noalias noundef nonnull align 8 %i.kl, i64 noundef %i.hd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.km = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.km, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17hc27fd8996ef4a100E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val6 = load i32, ptr %i.b, align 4, !alias.scope !51, !noalias !52, !noundef !6 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !alias.scope !52, !noalias !51, !noundef !6
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i32, ptr %i.d, align 4, !alias.scope !51, !noalias !52, !noundef !6 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw i64 %.sroa.01.0.i14, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i32, ptr %i.g, align 4, !alias.scope !51, !noalias !52, !noundef !6 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw i64 %.sroa.01.1.i17, 1           ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.thread, label %.lr.ph18

_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h051683528d59ed90E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, i32 noundef %i.p, ptr noalias noundef nonnull align 1 %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit": ; preds = %.lr.ph.i.i, %middle.block, %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h823a84dbfad37a14E.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10086)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp ult i64 %1, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !alias.scope !10087, !noalias !10086
  %wide.load40 = load <4 x i32>, ptr %i.v, align 4, !alias.scope !10087, !noalias !10086
  %i.w = getelementptr i8, ptr %i.u, i64 -12      ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -28      ; 2 uses
  %wide.load41 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !10088, !noalias !10085
  %wide.load42 = load <4 x i32>, ptr %i.x, align 4, !alias.scope !10088, !noalias !10085
  %reverse = shufflevector <4 x i32> %wide.load41, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse43 = shufflevector <4 x i32> %wide.load42, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.t, align 4, !alias.scope !10087, !noalias !10086
  store <4 x i32> %reverse43, ptr %i.v, align 4, !alias.scope !10087, !noalias !10086
  %reverse44 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse45 = shufflevector <4 x i32> %wide.load40, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse44, ptr %i.w, align 4, !alias.scope !10088, !noalias !10085
  store <4 x i32> %reverse45, ptr %i.x, align 4, !alias.scope !10088, !noalias !10085
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !10083

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.014.i.i, -1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !alias.scope !10087, !noalias !10086, !noundef !6
  %i.ad = load i32, ptr %i.ab, align 4, !alias.scope !10088, !noalias !10085
  store i32 %i.ad, ptr %i.aa, align 4, !alias.scope !10087, !noalias !10086
  store i32 %i.ac, ptr %i.ab, align 4, !alias.scope !10088, !noalias !10085
  %i.ae = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b9b509eef5ee7daE.exit", label %.lr.ph.i.i, !llvm.loop !10084
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort8unstable8heapsort8heapsort17hdcc453719297553cE(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef %1, ptr noalias nofree nonnull readnone align 1 captures(none) %2) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add i64 %i.a, %1                         ; 2 uses
  %.not19 = icmp eq i64 %i.b, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph21

._crit_edge:                                      ; preds = %_ZN4core5slice4sort8unstable8heapsort9sift_down17hb57c1e8eec93a0ccE.exit, %bb.a
  ret void

.lr.ph21:                                         ; preds = %bb.a, %_ZN4core5slice4sort8unstable8heapsort9sift_down17hb57c1e8eec93a0ccE.exit
  %.sroa.4.020 = phi i64 [ %i.c, %_ZN4core5slice4sort8unstable8heapsort9sift_down17hb57c1e8eec93a0ccE.exit ], [ %i.b, %bb.a ]
  %i.c = add i64 %.sroa.4.020, -1                 ; 6 uses
  %.not10 = icmp ult i64 %i.c, %1
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph21
  %i.d = sub nuw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph21
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4
  %i.f = load i32, ptr %i.e, align 4
  store i32 %i.f, ptr %0, align 4
  store i32 %.sroa.0.0.copyload.i, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.05.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i15 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.g = icmp ule i64 %.sroa.05.0, %.sroa.0.0.i15
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %.sroa.05.0, 1                   ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i16 = icmp ult i64 %i.i, %.sroa.0.0.i15
  br i1 %.not.i16, label %.lr.ph, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17hb57c1e8eec93a0ccE.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.w, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.v, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i17 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.05.0, %bb.d ]
  %i.l = add nuw i64 %i.k, 2                      ; 2 uses
  %i.m = icmp ult i64 %i.l, %.sroa.0.0.i15
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %.val = load i32, ptr %i.n, align 4, !alias.scope !51, !noalias !52, !noundef !6
  %.val12 = load i32, ptr %i.o, align 4, !alias.scope !52, !noalias !51, !noundef !6
  %i.p = icmp ult i32 %.val, %.val12
  %i.q = zext i1 %i.p to i64
  %i.r = add nuw i64 %i.j, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.0.i17 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val13 = load i32, ptr %i.s, align 4, !alias.scope !51, !noalias !52, !noundef !6 ; 2 uses
  %.val14 = load i32, ptr %i.t, align 4, !alias.scope !52, !noalias !51, !noundef !6 ; 2 uses
  %i.u = icmp ult i32 %.val13, %.val14
  br i1 %i.u, label %bb.g, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17hb57c1e8eec93a0ccE.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10093)
  store i32 %.val14, ptr %i.s, align 4, !alias.scope !10092, !noalias !10093
  store i32 %.val13, ptr %i.t, align 4, !alias.scope !10093, !noalias !10092
  %i.v = shl i64 %.sroa.04.0.i, 1                 ; 2 uses
  %i.w = or disjoint i64 %i.v, 1                  ; 2 uses
  %.not.i = icmp ult i64 %i.w, %.sroa.0.0.i15
  br i1 %.not.i, label %.lr.ph, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17hb57c1e8eec93a0ccE.exit

_ZN4core5slice4sort8unstable8heapsort9sift_down17hb57c1e8eec93a0ccE.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph21
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h051683528d59ed90E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(4) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 5 uses
  %i.b = icmp ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph148

.lr.ph:                                           ; preds = %.backedge
  %i.d = icmp eq i32 %i.hg, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph148

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.14.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.14.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10213)
  %i.e = icmp samesign ult i64 %.sroa.14.0.lcssa, 2
  br i1 %i.e, label %_ZN4core5slice4sort6shared9smallsort18small_sort_network17h95c0eb9c9b3c7f9eE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10213
  %i.f = lshr i64 %.sroa.14.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.14.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.14.0.lcssa, i64 %i.f
  %i.h = getelementptr [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.14.0.lcssa, %i.f
  br label %bb.c
end_hunk_2
