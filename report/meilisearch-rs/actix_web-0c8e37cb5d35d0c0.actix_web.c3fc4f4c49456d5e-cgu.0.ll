Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4core5slice4sort6stable14driftsort_main17h88c5b1a02b87627fE:bb.a
  store i64 %.sroa.0.0.i17, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8eef295c95f2d4f3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.i, i64 noundef %.sroa.0.0.i17, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr203drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$$GT$17hde1ab4660770297bE.exit" unwind label %bb.f

"_ZN4core3ptr203drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$$GT$17hde1ab4660770297bE.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !7043
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8eef295c95f2d4f3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 128, i1 noundef zeroext %i.l, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr203drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$$GT$17hde1ab4660770297bE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr203drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$$GT$17hde1ab4660770297bE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hc310332344a5dac4E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 83333)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = mul i64 %.sroa.0.0.i17, 96               ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.c, 96076792050570581
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !7052
  %i.f = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #46, !noalias !7052 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @370) #52
  unreachable

bb.c:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.0.0.i17, %bb.b ] ; 4 uses
  %i.h = icmp samesign ule i64 %.sroa.0.0.i17, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.h)
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h196ff358816a25ebE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = mul nuw nsw i64 %.sroa.4.0.i.i, 96
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !7053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$GT$17hf817c962f99692d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hf0e40f45a62d7de1E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw i64 %1, %i.c                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 100000)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %.sroa.0.0.i16, 52
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i64 %.sroa.0.0.i17, 80               ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.d, 115292150460684697
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !7062
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #46, !noalias !7062 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @370) #52
  unreachable

bb.d:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.0.0.i17, %bb.c ] ; 4 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i17, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.j)
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h04db14e187c5b612E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr186drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$GT$17h12ff89f94f19a767E.exit" unwind label %bb.g

"_ZN4core3ptr186drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$GT$17h12ff89f94f19a767E.exit": ; preds = %bb.d
  %i.l = mul nuw nsw i64 %.sroa.4.0.i.i, 80
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !7063
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h04db14e187c5b612E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 51, i1 noundef zeroext %i.m, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN4core3ptr186drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$GT$17h12ff89f94f19a767E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr186drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$GT$17h12ff89f94f19a767E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h04db14e187c5b612E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i100 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread98, %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 152
  %.val10.i = load i16, ptr %i.o, align 8, !alias.scope !7107, !noalias !7108, !noundef !25 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 72
  %.val11.i = load i16, ptr %i.p, align 8, !alias.scope !7107, !noalias !7108, !noundef !25
  %i.q = icmp ult i16 %.val11.i, %.val10.i        ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread98, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.val9.i = phi i16 [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader50 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %6 = add i64 %.sroa.01.0.i.i55, -1
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %i.s = getelementptr i8, ptr %i.r, i64 72
  %.val8.i = load i16, ptr %i.s, align 8, !alias.scope !7107, !noalias !7108, !noundef !25 ; 2 uses
  %i.t = icmp ult i16 %.val9.i, %.val8.i
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi i16 [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.y, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %8 = add i64 %.sroa.01.1.i.i58, -1
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %i.w = getelementptr i8, ptr %i.v, i64 72
  %.val.i = load i16, ptr %i.w, align 8, !alias.scope !7107, !noalias !7108, !noundef !25 ; 2 uses
  %i.x = icmp ult i16 %.val7.i, %.val.i
  br i1 %i.x, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.y = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.y, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.z = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread98: ; preds = %.preheader
  br i1 %.not5.i100, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i95, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i
  br i1 %i.q, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aa = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h74c4a75aa347e4b3E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7068
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread ], [ %.sroa.0.0.i.i96103107, %.lr.ph.i.i38 ]
  %i.ad = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit

bb.o:                                             ; preds = %bb.l
  %i.af = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7109), !noalias !7108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7110), !noalias !7108
  %.not15.i.i = icmp eq i64 %i.af, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread98, %bb.o
  %i.ag = phi i64 [ %i.af, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread98 ]
  %.sroa.0.0.i.i96103107 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdb4293a813d2a374E.exit.i.thread98 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.0.0.i.i96103107
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bd, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ai = xor i64 %.sroa.0.014.i.i, -1
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 6 uses
  %i.ak = getelementptr [80 x i8], ptr %i.ah, i64 %i.ai ; 6 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !7111, !noalias !7112
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !7113, !noalias !7114
  store <2 x i64> %i.am, ptr %i.aj, align 8, !alias.scope !7111, !noalias !7112
  store <2 x i64> %i.al, ptr %i.ak, align 8, !alias.scope !7113, !noalias !7114
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !7115, !noalias !7112
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !7116, !noalias !7114
  store <2 x i64> %i.aq, ptr %i.an, align 8, !alias.scope !7115, !noalias !7112
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !alias.scope !7116, !noalias !7114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !7117, !noalias !7112
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !7118, !noalias !7114
  store <2 x i64> %i.au, ptr %i.ar, align 8, !alias.scope !7117, !noalias !7112
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !7118, !noalias !7114
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !7119, !noalias !7112
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !7120, !noalias !7114
  store <2 x i64> %i.ay, ptr %i.av, align 8, !alias.scope !7119, !noalias !7112
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !alias.scope !7120, !noalias !7114
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !7121, !noalias !7112
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !7122, !noalias !7114
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !7121, !noalias !7112
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !7122, !noalias !7114
  %i.bd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.ag
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ae, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8ae4ef892252429fE.exit" ], [ %i.ac, %bb.n ], [ %i.aa, %bb.m ] ; 2 uses
  %i.be = lshr i64 %.sroa.018.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bg = sub i64 %factor, %i.be
  %i.bh = add i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit
  %.sroa.026.0 = phi i8 [ %i.bm, %_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h56275a2330d02c6bE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bn, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bp, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !25
  %.not29 = icmp ult i8 %i.br, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bt, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !25 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.018.163 to i1
  %i.cd = or i64 %i.bv, %.sroa.018.163
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cg = shl i64 %i.by, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cc, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h74c4a75aa347e4b3E(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7095
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit35": ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw
  %i.cn = or i64 %i.bx, 1
  %i.co = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h74c4a75aa347e4b3E(ptr noalias noundef nonnull align 8 %i.cm, i64 noundef %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7095
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h8c0eaaa980aa594aE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7124)
  %i.cs = icmp eq i64 %i.bw, 0
  %i.ct = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.ct, %i.cs
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.cu = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cu, label %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cv, ptr %i.ca
  %i.cw = mul i64 %.sroa.0.0.i.i36, 80            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cw, i1 false), !alias.scope !7125
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.cy = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %bb.y ] ; 2 uses
  %i.cz = phi ptr [ %i.di, %.preheader.i ], [ %i.cv, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.bo, %bb.y ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -80 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 -80 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -80 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cy, i64 -8
  %.val.i.i = load i16, ptr %i.dd, align 8, !alias.scope !7124, !noalias !7126, !noundef !25
  %i.de = getelementptr i8, ptr %i.cz, i64 -8
  %.val10.i.i = load i16, ptr %i.de, align 8, !alias.scope !7123, !noalias !7127, !noundef !25
  %i.df = icmp ult i16 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.df, ptr %i.da, ptr %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dc, ptr noundef nonnull align 8 dereferenceable(80) %..i.i, i64 80, i1 false), !alias.scope !7125, !noalias !7128
  %i.dg = xor i1 %i.df, true
  %i.dh = zext i1 %i.dg to i64
  %i.di = getelementptr inbounds nuw [80 x i8], ptr %i.da, i64 %i.dh ; 3 uses
  %i.dj = zext i1 %i.df to i64
  %i.dk = getelementptr inbounds nuw [80 x i8], ptr %i.db, i64 %i.dj ; 3 uses
  %i.dl = icmp eq ptr %i.di, %i.ca
  %i.dm = icmp eq ptr %i.dk, %2
  %or.cond.i.i = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2168033e8543e2f3E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dn = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.ca, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.cv, %bb.y ] ; 3 uses
  %i.do = phi ptr [ %i.du, %.lr.ph.i.i ], [ %2, %bb.y ] ; 3 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.02.i.i, i64 72
  %.sroa.0.0.val.i.i = load i16, ptr %i.dp, align 8, !alias.scope !7123, !noalias !7129, !noundef !25
  %i.dq = getelementptr i8, ptr %i.do, i64 72
  %.val.i19.i = load i16, ptr %i.dq, align 8, !alias.scope !7124, !noalias !7130, !noundef !25
  %i.dr = icmp ult i16 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.ds = xor i1 %i.dr, true
  %spec.select.i.i = select i1 %i.dr, ptr %.sroa.0.02.i.i, ptr %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dn, ptr noundef nonnull align 8 dereferenceable(80) %spec.select.i.i, i64 80, i1 false), !alias.scope !7125, !noalias !7131
  %i.dt = zext i1 %i.ds to i64
  %i.du = getelementptr inbounds nuw [80 x i8], ptr %i.do, i64 %i.dt ; 3 uses
  %i.dv = zext i1 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.02.i.i, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 80 ; 2 uses
  %i.dy = icmp ne ptr %i.du, %i.cx
  %i.dz = icmp ne ptr %i.dw, %i.bo
  %or.cond.i20.i = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2168033e8543e2f3E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2168033e8543e2f3E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.di, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.du, %.lr.ph.i.i ] ; 2 uses
  %i.ea = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eb = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ec = sub nuw i64 %i.ea, %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ec, i1 false), !alias.scope !7125, !noalias !7132
  br label %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit

_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2168033e8543e2f3E.exit.i"
  %i.ed = shl i64 %i.by, 1
  %i.ee = or disjoint i64 %i.ed, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hfc198c9c41949f21E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit
  %.sroa.0.0.i = phi i64 [ %i.ee, %_ZN4core5slice4sort6stable5merge5merge17h0202e1fd916b2b56E.exit ], [ %i.cg, %bb.t ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bp, 1
  br i1 %i.ef, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.023.0, 1
  %i.ei = add i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h74c4a75aa347e4b3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7095
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h196ff358816a25ebE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i111 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i116 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ee, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ec, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m), !noalias !7183, !inline_history !7136 ; 2 uses
  %.not83 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.j
  %.sroa.01.0.i.i66 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader51 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %6 = add i64 %.sroa.01.0.i.i66, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %6
  %i.r = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %8), !noalias !7183, !inline_history !7136
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i66, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i69 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %9 = add i64 %.sroa.01.1.i.i69, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.l
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %9
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %11), !noalias !7183, !inline_history !7136
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i

bb.k:                                             ; preds = %.lr.ph70
  %i.v = add nuw i64 %.sroa.01.1.i.i69, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114: ; preds = %.preheader
  br i1 %.not5.i116, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i111, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f1a2d8607cb203cE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7136
  %i.y = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit": ; preds = %.lr.ph.i.i39, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4649 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread ], [ %.sroa.0.0.i.i112119123, %.lr.ph.i.i39 ]
  %i.aa = shl i64 %.sroa.0.0.i.i4649, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7184), !noalias !7183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7185), !noalias !7183
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114 ]
  %.sroa.0.0.i.i112119123 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd51ff3d3ed8ffadeE.exit.i.thread114 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.0.0.i.i112119123
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.be, %.lr.ph.i.i39 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.af = xor i64 %.sroa.0.014.i.i, -1
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 7 uses
  %i.ah = getelementptr [96 x i8], ptr %i.ae, i64 %i.af ; 7 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !7186, !noalias !7187
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !7188, !noalias !7189
  store <2 x i64> %i.aj, ptr %i.ag, align 8, !alias.scope !7186, !noalias !7187
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !alias.scope !7188, !noalias !7189
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !7190, !noalias !7187
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !7191, !noalias !7189
  store <2 x i64> %i.an, ptr %i.ak, align 8, !alias.scope !7190, !noalias !7187
  store <2 x i64> %i.am, ptr %i.al, align 8, !alias.scope !7191, !noalias !7189
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !7192, !noalias !7187
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !7193, !noalias !7189
  store <2 x i64> %i.ar, ptr %i.ao, align 8, !alias.scope !7192, !noalias !7187
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !alias.scope !7193, !noalias !7189
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !7194, !noalias !7187
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !7195, !noalias !7189
  store <2 x i64> %i.av, ptr %i.as, align 8, !alias.scope !7194, !noalias !7187
  store <2 x i64> %i.au, ptr %i.at, align 8, !alias.scope !7195, !noalias !7189
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !7196, !noalias !7187
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !7197, !noalias !7189
  store <2 x i64> %i.az, ptr %i.aw, align 8, !alias.scope !7196, !noalias !7187
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !alias.scope !7197, !noalias !7189
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 2 uses
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !7198, !noalias !7187
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !7199, !noalias !7189
  store <2 x i64> %i.bd, ptr %i.ba, align 8, !alias.scope !7198, !noalias !7187
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !alias.scope !7199, !noalias !7189
  %i.be = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1415f4a45f2afac2E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.bf = lshr i64 %.sroa.018.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bh = sub i64 %factor, %i.bf
  %i.bi = add i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit
  %.sroa.026.0 = phi i8 [ %i.bn, %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17he333fed14cbe7c34E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bo = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bo, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.bq, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit ] ; 4 uses
  %i.bq = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !25
  %.not29 = icmp ult i8 %i.bs, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.174, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.175, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bu, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !25 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 8 uses
  %i.by = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 4 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.ca ; 6 uses
  %i.cc = icmp ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.018.174 to i1
  %i.ce = or i64 %i.bw, %.sroa.018.174
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl i64 %i.bz, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6ec8190475693117E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f1a2d8607cb203cE(ptr noalias noundef nonnull align 8 %i.cb, i64 noundef %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7167
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit35": ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f1a2d8607cb203cE(ptr noalias noundef nonnull align 8 %i.cn, i64 noundef %i.by, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7167
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6f98a60fdcc39898E.exit35", %bb.u
  %i.ct = icmp eq i64 %i.bx, 0
  %i.cu = icmp eq i64 %i.by, 0
  %or.cond.i = or i1 %i.cu, %i.ct
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h75ef162df6654f6aE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.by, i64 range(i64 0, -9223372036854775808) %i.bx) ; 2 uses
  %i.cv = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cv, label %_ZN4core5slice4sort6stable5merge5merge17h75ef162df6654f6aE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bx, %i.by  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cw, ptr %i.cb
  %i.cx = mul i64 %.sroa.0.0.i.i36, 96            ; 2 uses
end_hunk_0
