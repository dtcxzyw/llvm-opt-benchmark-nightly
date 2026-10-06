Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11075
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4core5slice4sort6stable14driftsort_main17he554ecb50df935bdE:bb.a
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd56c0c8393a0344eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = mul nuw nsw i64 %.sroa.4.0.i.i, 368
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !70841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr157drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..Dependency$C$nickel_lang_package..PrecisePkg$RP$$GT$$GT$17h4b8170c3f92dedbcE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #75
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hfc400465725d2ad3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw i64 %1, %i.c                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 166666)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %.sroa.0.0.i16, 86
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i64 %.sroa.0.0.i17, 48               ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.d, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !70850
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #67, !noalias !70850 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1370) #73
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h748e7433b3cda089E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.k, ptr noalias noundef nonnull align 1 %2)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..version..SemVer$GT$$GT$17h406a946b2d394ff7E.exit" unwind label %bb.g

"_ZN4core3ptr80drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..version..SemVer$GT$$GT$17h406a946b2d394ff7E.exit": ; preds = %bb.d
  %i.l = mul nuw nsw i64 %.sroa.4.0.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !70851
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h748e7433b3cda089E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 85, i1 noundef zeroext %i.m, ptr noalias noundef nonnull align 1 %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN4core3ptr80drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..version..SemVer$GT$$GT$17h406a946b2d394ff7E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_package..version..SemVer$GT$$GT$17h406a946b2d394ff7E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #75
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hfefaca80f3ba225eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw i64 %1, %i.c                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 125000)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %.sroa.0.0.i16, 65
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %.sroa.0.0.i17, 6                ; 4 uses
  %i.g = icmp ugt i64 %i.d, 288230376151711743
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !70860
  %i.i = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #67, !noalias !70860 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1370) #73
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  store i64 %.sroa.0.0.i17, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1813704fc4d17f2eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.i, i64 noundef %.sroa.0.0.i17, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr119drop_in_place$LT$alloc..vec..Vec$LT$gix_pack..cache..delta..tree..Item$LT$gix_pack..index..write..TreeEntry$GT$$GT$$GT$17h67baea172dd58ad2E.exit" unwind label %bb.f

"_ZN4core3ptr119drop_in_place$LT$alloc..vec..Vec$LT$gix_pack..cache..delta..tree..Item$LT$gix_pack..index..write..TreeEntry$GT$$GT$$GT$17h67baea172dd58ad2E.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !70861
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1813704fc4d17f2eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 64, i1 noundef zeroext %i.l, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr119drop_in_place$LT$alloc..vec..Vec$LT$gix_pack..cache..delta..tree..Item$LT$gix_pack..index..write..TreeEntry$GT$$GT$$GT$17h67baea172dd58ad2E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr119drop_in_place$LT$alloc..vec..Vec$LT$gix_pack..cache..delta..tree..Item$LT$gix_pack..index..write..TreeEntry$GT$$GT$$GT$17h67baea172dd58ad2E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #75
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h1813704fc4d17f2eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i90 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.el, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ej, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread93, %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.o, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.p, i64 20), !alias.scope !70916, !noalias !70917
  %i.r = icmp slt i32 %i.q, 0                     ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread93, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.sroa.01.0.i.i55 = phi i64 [ %i.y, %bb.j ], [ 2, %.preheader50 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %6 = add i64 %.sroa.01.0.i.i55, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %6
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.v, i64 20), !alias.scope !70918, !noalias !70917
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i58 = phi i64 [ %i.af, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %8 = add i64 %.sroa.01.1.i.i58, -1              ; 2 uses
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.ab, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.ac, i64 20), !alias.scope !70919, !noalias !70917
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.af = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ag)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread93: ; preds = %.preheader
  br i1 %.not5.i95, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i90, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i
  br i1 %i.r, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.ah = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h19e81c072814bf33E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17haf5cfff39a2f7460E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !70875
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h19e81c072814bf33E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread ], [ %.sroa.0.0.i.i9198102, %.lr.ph.i.i38 ]
  %i.ak = shl i64 %.sroa.0.0.i.i4548, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h19e81c072814bf33E.exit

bb.o:                                             ; preds = %bb.l
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70920), !noalias !70917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70921), !noalias !70917
  %.not15.i.i = icmp eq i64 %i.am, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread93, %bb.o
  %i.an = phi i64 [ %i.am, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread93 ]
  %.sroa.0.0.i.i9198102 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hf4cd5dfb32c5fb95E.exit.i.thread93 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.0.0.i.i9198102
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bg, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 5 uses
  %i.ar = getelementptr [64 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !70922, !noalias !70923
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !70924, !noalias !70925
  store <2 x i64> %i.at, ptr %i.aq, align 8, !alias.scope !70922, !noalias !70923
  store <2 x i64> %i.as, ptr %i.ar, align 8, !alias.scope !70924, !noalias !70925
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !70926, !noalias !70923
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !70927, !noalias !70925
  store <2 x i64> %i.ax, ptr %i.au, align 8, !alias.scope !70926, !noalias !70923
  store <2 x i64> %i.aw, ptr %i.av, align 8, !alias.scope !70927, !noalias !70925
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !70928, !noalias !70923
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !70929, !noalias !70925
  store <2 x i64> %i.bb, ptr %i.ay, align 8, !alias.scope !70928, !noalias !70923
  store <2 x i64> %i.ba, ptr %i.az, align 8, !alias.scope !70929, !noalias !70925
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !70930, !noalias !70923
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !70931, !noalias !70925
  store <2 x i64> %i.bf, ptr %i.bc, align 8, !alias.scope !70930, !noalias !70923
  store <2 x i64> %i.be, ptr %i.bd, align 8, !alias.scope !70931, !noalias !70925
  %i.bg = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.an
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h19e81c072814bf33E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.al, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit" ], [ %i.aj, %bb.n ], [ %i.ah, %bb.m ] ; 2 uses
  %i.bh = lshr i64 %.sroa.018.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bj = sub i64 %factor, %i.bh
  %i.bk = add i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h19e81c072814bf33E.exit
  %.sroa.026.0 = phi i8 [ %i.bp, %_ZN4core5slice4sort6stable5drift10create_run17h19e81c072814bf33E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h19e81c072814bf33E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bq = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bq, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17he86d39357a47dc1eE.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bs, %_ZN4core5slice4sort6stable5drift13logical_merge17he86d39357a47dc1eE.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he86d39357a47dc1eE.exit ] ; 4 uses
  %i.bs = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.bu, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17he86d39357a47dc1eE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he86d39357a47dc1eE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17he86d39357a47dc1eE.exit ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bw, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bs
  %i.by = load i64, ptr %i.bx, align 8, !noundef !41 ; 3 uses
  %i.bz = lshr i64 %i.by, 1                       ; 8 uses
  %i.ca = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.cb = add nuw i64 %i.bz, %i.ca                ; 4 uses
  %i.cc = sub i64 %.sroa.09.0, %i.cb
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.cc ; 6 uses
  %i.ce = icmp ugt i64 %i.cb, %3
  %i.cf = trunc i64 %.sroa.018.163 to i1
  %i.cg = or i64 %i.by, %.sroa.018.163
  %i.ch = trunc i64 %i.cg to i1
  %or.cond3.i = or i1 %i.ce, %i.ch
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = trunc i64 %i.by to i1
  br i1 %i.ci, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cj = shl i64 %i.cb, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he86d39357a47dc1eE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cf, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ck = or i64 %i.bz, 1
  %i.cl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17haf5cfff39a2f7460E(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef %i.bz, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !70898
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit35": ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.cd, i64 %i.bz
  %i.cq = or i64 %i.ca, 1
  %i.cr = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = xor i32 %i.ct, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17haf5cfff39a2f7460E(ptr noalias noundef nonnull align 8 %i.cp, i64 noundef %i.ca, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !70898
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit35", %bb.u
  %i.cv = icmp eq i64 %i.bz, 0
  %i.cw = icmp eq i64 %i.ca, 0
  %or.cond.i = or i1 %i.cw, %i.cv
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hdc600c6b5ad03ef5E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 range(i64 0, -9223372036854775808) %i.bz) ; 2 uses
  %i.cx = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cx, label %_ZN4core5slice4sort6stable5merge5merge17hdc600c6b5ad03ef5E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %i.cd, i64 %i.bz ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bz, %i.ca  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cy, ptr %i.cd
  %i.cz = shl i64 %.sroa.0.0.i.i36, 6             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cz, i1 false), !alias.scope !70932
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cz ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.db = phi ptr [ %i.dn, %.preheader.i ], [ %i.da, %bb.y ] ; 2 uses
  %i.dc = phi ptr [ %i.dl, %.preheader.i ], [ %i.cy, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.df, %.preheader.i ], [ %i.br, %bb.y ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -64 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -64 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -64 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 -24
  %i.dh = getelementptr inbounds i8, ptr %i.dc, i64 -24
  %i.di = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.dg, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.dh, i64 20), !alias.scope !70933, !noalias !70934 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, -1                  ; 2 uses
  %..i.i = select i1 %i.dj, ptr %i.de, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.df, ptr noundef nonnull align 8 dereferenceable(64) %..i.i, i64 64, i1 false), !alias.scope !70932, !noalias !70934
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [64 x i8], ptr %i.dd, i64 %i.dk ; 3 uses
  %.lobit.i.i = lshr i32 %i.di, 31
  %i.dm = zext nneg i32 %.lobit.i.i to i64
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.de, i64 %i.dm ; 3 uses
  %i.do = icmp eq ptr %i.dl, %i.cd
  %i.dp = icmp eq ptr %i.dn, %2
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h70a7a12d316be93dE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dq = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.cd, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cy, %bb.y ] ; 3 uses
  %i.dr = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %2, %bb.y ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.du = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.ds, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.dt, i64 20), !alias.scope !70935, !noalias !70936 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1                  ; 2 uses
  %spec.select.i.i = select i1 %i.dv, ptr %i.dr, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(64) %spec.select.i.i, i64 64, i1 false), !alias.scope !70932, !noalias !70936
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [64 x i8], ptr %i.dr, i64 %i.dw ; 3 uses
  %.lobit.i19.i = lshr i32 %i.du, 31
  %i.dy = zext nneg i32 %.lobit.i19.i to i64
  %i.dz = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.02.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 64 ; 2 uses
  %i.eb = icmp ne ptr %i.dx, %i.da
  %i.ec = icmp ne ptr %i.dz, %i.br
  %or.cond.i20.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h70a7a12d316be93dE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h70a7a12d316be93dE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dl, %.preheader.i ], [ %i.ea, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dn, %.preheader.i ], [ %i.da, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ef, i1 false), !alias.scope !70932, !noalias !70937
  br label %_ZN4core5slice4sort6stable5merge5merge17hdc600c6b5ad03ef5E.exit

_ZN4core5slice4sort6stable5merge5merge17hdc600c6b5ad03ef5E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h70a7a12d316be93dE.exit.i"
  %i.eg = shl i64 %i.cb, 1
  %i.eh = or disjoint i64 %i.eg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he86d39357a47dc1eE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17he86d39357a47dc1eE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hdc600c6b5ad03ef5E.exit
  %.sroa.0.0.i = phi i64 [ %i.eh, %_ZN4core5slice4sort6stable5merge5merge17hdc600c6b5ad03ef5E.exit ], [ %i.cj, %bb.t ] ; 2 uses
  %i.ei = icmp ugt i64 %i.bs, 1
  br i1 %i.ei, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ej = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ek = lshr i64 %.sroa.023.0, 1
  %i.el = add i64 %i.ek, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.em = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.em, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = or i64 %1, 1
  %i.eo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = xor i32 %i.eq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17haf5cfff39a2f7460E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !70898
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h209f960df124e87aE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i109 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i115 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dg, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.de, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread113, %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = tail call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.m), !noalias !70958
  %i.q = icmp eq i8 %i.p, -1                      ; 2 uses
  %.not82 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not82, label %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not82, label %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread113, label %.lr.ph69

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.sroa.01.0.i.i65 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader50 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.0.i.i65
  %6 = add i64 %.sroa.01.0.i.i65, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %6
  %i.s = tail call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %8), !noalias !70958
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i65, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i, label %.lr.ph

.lr.ph69:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i68 = phi i64 [ %i.y, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.1.i.i68
  %9 = add i64 %.sroa.01.1.i.i68, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.l
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %9
  %i.w = tail call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %11), !noalias !70958
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i

bb.k:                                             ; preds = %.lr.ph69
  %i.y = add nuw i64 %.sroa.01.1.i.i68, 1         ; 2 uses
  %exitcond95.not = icmp eq i64 %i.y, %i.l
  br i1 %exitcond95.not, label %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i, label %.lr.ph69

_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph69
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i68, %.lr.ph69 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i65, %.lr.ph ], [ %i.l, %bb.j ] ; 4 uses
  %i.z = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread113: ; preds = %.preheader
  br i1 %.not5.i115, label %bb.g, label %.thread116

_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i109, label %bb.g, label %.thread

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i
  br i1 %i.q, label %.thread116, label %.thread

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aa = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he5197d57866f36dcE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h818698840b9d67bbE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !70941
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he5197d57866f36dcE.exit

.thread:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread, %bb.h, %.thread116, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i110118, %.thread116 ], [ %i.l, %bb.h ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread ]
  %i.ad = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he5197d57866f36dcE.exit

.thread116:                                       ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread113, %bb.l
  %.sroa.0.0.i.i110118 = phi i64 [ %.sroa.0.0.i.i, %bb.l ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h300181f0a01acad6E.exit.i.thread113 ] ; 2 uses
  tail call fastcc void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0029d6fd3d4cf593E"(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i.i110118), !noalias !70958, !inline_history !70941
  br label %.thread

_ZN4core5slice4sort6stable5drift10create_run17he5197d57866f36dcE.exit: ; preds = %bb.m, %bb.n, %.thread
  %.sroa.0.0.i34 = phi i64 [ %i.ae, %.thread ], [ %i.ac, %bb.n ], [ %i.aa, %bb.m ] ; 2 uses
  %i.af = lshr i64 %.sroa.018.0, 1
  %i.ag = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ah = sub i64 %factor, %i.af
  %i.ai = add i64 %i.ag, %factor
  %i.aj = mul i64 %i.ah, %.sroa.0.0
  %i.ak = mul i64 %i.ai, %.sroa.0.0
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 false)
  %i.an = trunc nuw nsw i64 %i.am to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17he5197d57866f36dcE.exit
  %.sroa.026.0 = phi i8 [ %i.an, %_ZN4core5slice4sort6stable5drift10create_run17he5197d57866f36dcE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17he5197d57866f36dcE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.ao = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ao, label %.lr.ph75, label %._crit_edge

.lr.ph75:                                         ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph75, %_ZN4core5slice4sort6stable5drift13logical_merge17hf65e11f204b12443E.exit
  %.sroa.02.174 = phi i64 [ %.sroa.02.0, %.lr.ph75 ], [ %i.aq, %_ZN4core5slice4sort6stable5drift13logical_merge17hf65e11f204b12443E.exit ] ; 2 uses
  %.sroa.018.173 = phi i64 [ %.sroa.018.0, %.lr.ph75 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf65e11f204b12443E.exit ] ; 4 uses
  %i.aq = add i64 %.sroa.02.174, -1               ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.as, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hf65e11f204b12443E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.173, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf65e11f204b12443E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.174, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hf65e11f204b12443E.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.au, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aq
  %i.aw = load i64, ptr %i.av, align 8, !noundef !41 ; 3 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 8 uses
  %i.ay = lshr i64 %.sroa.018.173, 1              ; 6 uses
  %i.az = add nuw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = sub i64 %.sroa.09.0, %i.az
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %i.ba ; 6 uses
  %i.bc = icmp ugt i64 %i.az, %3
  %i.bd = trunc i64 %.sroa.018.173 to i1
  %i.be = or i64 %i.aw, %.sroa.018.173
  %i.bf = trunc i64 %i.be to i1
  %or.cond3.i = or i1 %i.bc, %i.bf
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = trunc i64 %i.aw to i1
  br i1 %i.bg, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bh = shl i64 %i.az, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf65e11f204b12443E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.bd, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.bi = or i64 %i.ax, 1
  %i.bj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = xor i32 %i.bl, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h818698840b9d67bbE(ptr noalias noundef nonnull align 8 %i.bb, i64 noundef %i.ax, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !70942
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit35": ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %i.ax
  %i.bo = or i64 %i.ay, 1
  %i.bp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = xor i32 %i.br, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h818698840b9d67bbE(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef %i.ay, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !70942
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit35", %bb.t
  %i.bt = icmp eq i64 %i.ax, 0
  %i.bu = icmp eq i64 %i.ay, 0
  %or.cond.i = or i1 %i.bu, %i.bt
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h56941ac82f959b95E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 range(i64 0, -9223372036854775808) %i.ax) ; 2 uses
  %i.bv = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.bv, label %_ZN4core5slice4sort6stable5merge5merge17h56941ac82f959b95E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %i.ax ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ax, %i.ay  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.bw, ptr %i.bb
  %i.bx = shl i64 %.sroa.0.0.i.i36, 7             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.bx, i1 false), !alias.scope !70959
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cg, %.noexc.i ], [ %i.bw, %bb.x ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.ci, %.noexc.i ], [ %i.by, %bb.x ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cc, %.noexc.i ], [ %i.ap, %bb.x ]
  %i.bz = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -128 ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -128 ; 3 uses
  %i.cb = invoke noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bz)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %.preheader.i
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -128 ; 2 uses
  %i.cd = icmp eq i8 %i.cb, -1                    ; 3 uses
  %..i.i = select i1 %i.cd, ptr %i.bz, ptr %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cc, ptr noundef nonnull align 8 dereferenceable(128) %..i.i, i64 128, i1 false), !alias.scope !70959, !noalias !70960
  %i.ce = xor i1 %i.cd, true
  %i.cf = zext i1 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %i.bz, i64 %i.cf ; 3 uses
  %i.ch = zext i1 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %i.ca, i64 %i.ch ; 3 uses
  %i.cj = icmp eq ptr %i.cg, %i.bb
  %i.ck = icmp eq ptr %i.ci, %2
  %or.cond.i.i = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ae78f010e23b37dE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.cs, %.noexc20.i ], [ %i.bb, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.cp, %.noexc20.i ], [ %2, %bb.x ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cr, %.noexc20.i ], [ %i.bw, %bb.x ] ; 3 uses
  %i.cl = invoke noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.0.02.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i38)
          to label %.noexc20.i unwind label %.loopexit.split-lp.i

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.cm = icmp eq i8 %i.cl, -1                    ; 3 uses
  %i.cn = xor i1 %i.cm, true
  %spec.select.i.i = select i1 %i.cm, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(128) %spec.select.i.i, i64 128, i1 false), !alias.scope !70959, !noalias !70961
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.0.i38, i64 %i.co ; 3 uses
  %i.cq = zext i1 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.02.i.i, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 128 ; 2 uses
  %i.ct = icmp ne ptr %i.cp, %i.by
  %i.cu = icmp ne ptr %i.cr, %i.ap
  %or.cond.i19.i = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ae78f010e23b37dE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ae78f010e23b37dE.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cg, %.noexc.i ], [ %i.cs, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.ci, %.noexc.i ], [ %i.by, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.cp, %.noexc20.i ] ; 2 uses
  %i.cv = ptrtoint ptr %.sroa.7.2.i to i64
  %i.cw = ptrtoint ptr %.sroa.0.3.i to i64
  %i.cx = sub nuw i64 %i.cv, %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.cx, i1 false), !alias.scope !70959, !noalias !70962
  br label %_ZN4core5slice4sort6stable5merge5merge17h56941ac82f959b95E.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.by, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.cy = ptrtoint ptr %.sroa.7.1.i to i64
  %i.cz = ptrtoint ptr %.sroa.0.2.i to i64
  %i.da = sub nuw i64 %i.cy, %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.da, i1 false), !alias.scope !70959, !noalias !70963
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h56941ac82f959b95E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ae78f010e23b37dE.exit.i"
  %i.db = shl i64 %i.az, 1
  %i.dc = or disjoint i64 %i.db, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf65e11f204b12443E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hf65e11f204b12443E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h56941ac82f959b95E.exit
  %.sroa.0.0.i = phi i64 [ %i.dc, %_ZN4core5slice4sort6stable5merge5merge17h56941ac82f959b95E.exit ], [ %i.bh, %bb.s ] ; 2 uses
  %i.dd = icmp ugt i64 %i.aq, 1
  br i1 %i.dd, label %bb.p, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.de = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.df = lshr i64 %.sroa.023.0, 1
  %i.dg = add i64 %i.df, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dh = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dh, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.di = or i64 %1, 1
  %i.dj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h818698840b9d67bbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !70942
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h295f87c56fe3fa54E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i90 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.el, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ej, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread93, %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.o, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.p, i64 20), !alias.scope !71018, !noalias !71019
  %i.r = icmp slt i32 %i.q, 0                     ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread93, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.sroa.01.0.i.i55 = phi i64 [ %i.y, %bb.j ], [ 2, %.preheader50 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %6 = add i64 %.sroa.01.0.i.i55, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %6
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.u, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.v, i64 20), !alias.scope !71020, !noalias !71019
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i58 = phi i64 [ %i.af, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %8 = add i64 %.sroa.01.1.i.i58, -1              ; 2 uses
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.ab, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.ac, i64 20), !alias.scope !71021, !noalias !71019
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.af = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ag)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread93: ; preds = %.preheader
  br i1 %.not5.i95, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i90, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i
  br i1 %i.r, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.ah = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17ha6966b339bc5f232E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5a833ef11a9c6abdE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !70977
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17ha6966b339bc5f232E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread ], [ %.sroa.0.0.i.i9198102, %.lr.ph.i.i38 ]
  %i.ak = shl i64 %.sroa.0.0.i.i4548, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17ha6966b339bc5f232E.exit

bb.o:                                             ; preds = %bb.l
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71022), !noalias !71019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71023), !noalias !71019
  %.not15.i.i = icmp eq i64 %i.am, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread93, %bb.o
  %i.an = phi i64 [ %i.am, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread93 ]
  %.sroa.0.0.i.i9198102 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h61995d75725fac82E.exit.i.thread93 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.0.0.i.i9198102
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bg, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ap = xor i64 %.sroa.0.014.i.i, -1
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 5 uses
  %i.ar = getelementptr [64 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !71024, !noalias !71025
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !71026, !noalias !71027
  store <2 x i64> %i.at, ptr %i.aq, align 8, !alias.scope !71024, !noalias !71025
  store <2 x i64> %i.as, ptr %i.ar, align 8, !alias.scope !71026, !noalias !71027
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !71028, !noalias !71025
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !71029, !noalias !71027
  store <2 x i64> %i.ax, ptr %i.au, align 8, !alias.scope !71028, !noalias !71025
  store <2 x i64> %i.aw, ptr %i.av, align 8, !alias.scope !71029, !noalias !71027
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !71030, !noalias !71025
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !71031, !noalias !71027
  store <2 x i64> %i.bb, ptr %i.ay, align 8, !alias.scope !71030, !noalias !71025
  store <2 x i64> %i.ba, ptr %i.az, align 8, !alias.scope !71031, !noalias !71027
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !71032, !noalias !71025
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !71033, !noalias !71027
  store <2 x i64> %i.bf, ptr %i.bc, align 8, !alias.scope !71032, !noalias !71025
  store <2 x i64> %i.be, ptr %i.bd, align 8, !alias.scope !71033, !noalias !71027
  %i.bg = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.an
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17ha6966b339bc5f232E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.al, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h11a9e3750f7f60d0E.exit" ], [ %i.aj, %bb.n ], [ %i.ah, %bb.m ] ; 2 uses
  %i.bh = lshr i64 %.sroa.018.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bj = sub i64 %factor, %i.bh
  %i.bk = add i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17ha6966b339bc5f232E.exit
  %.sroa.026.0 = phi i8 [ %i.bp, %_ZN4core5slice4sort6stable5drift10create_run17ha6966b339bc5f232E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17ha6966b339bc5f232E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bq = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bq, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17h49093de103cd485bE.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bs, %_ZN4core5slice4sort6stable5drift13logical_merge17h49093de103cd485bE.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h49093de103cd485bE.exit ] ; 4 uses
  %i.bs = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.bu, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h49093de103cd485bE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h49093de103cd485bE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h49093de103cd485bE.exit ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bw, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bs
  %i.by = load i64, ptr %i.bx, align 8, !noundef !41 ; 3 uses
  %i.bz = lshr i64 %i.by, 1                       ; 8 uses
  %i.ca = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.cb = add nuw i64 %i.bz, %i.ca                ; 4 uses
  %i.cc = sub i64 %.sroa.09.0, %i.cb
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.cc ; 6 uses
  %i.ce = icmp ugt i64 %i.cb, %3
  %i.cf = trunc i64 %.sroa.018.163 to i1
  %i.cg = or i64 %i.by, %.sroa.018.163
  %i.ch = trunc i64 %i.cg to i1
  %or.cond3.i = or i1 %i.ce, %i.ch
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = trunc i64 %i.by to i1
  br i1 %i.ci, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cj = shl i64 %i.cb, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h49093de103cd485bE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cf, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ck = or i64 %i.bz, 1
  %i.cl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5a833ef11a9c6abdE(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef %i.bz, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71000
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit35": ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.cd, i64 %i.bz
  %i.cq = or i64 %i.ca, 1
  %i.cr = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = xor i32 %i.ct, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5a833ef11a9c6abdE(ptr noalias noundef nonnull align 8 %i.cp, i64 noundef %i.ca, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71000
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h37ff7d42f578b812E.exit35", %bb.u
  %i.cv = icmp eq i64 %i.bz, 0
  %i.cw = icmp eq i64 %i.ca, 0
  %or.cond.i = or i1 %i.cw, %i.cv
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h6a0d4654a3f8176bE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 range(i64 0, -9223372036854775808) %i.bz) ; 2 uses
  %i.cx = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cx, label %_ZN4core5slice4sort6stable5merge5merge17h6a0d4654a3f8176bE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %i.cd, i64 %i.bz ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bz, %i.ca  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cy, ptr %i.cd
  %i.cz = shl i64 %.sroa.0.0.i.i36, 6             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cz, i1 false), !alias.scope !71034
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cz ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.db = phi ptr [ %i.dn, %.preheader.i ], [ %i.da, %bb.y ] ; 2 uses
  %i.dc = phi ptr [ %i.dl, %.preheader.i ], [ %i.cy, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.df, %.preheader.i ], [ %i.br, %bb.y ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -64 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -64 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -64 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 -24
  %i.dh = getelementptr inbounds i8, ptr %i.dc, i64 -24
  %i.di = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.dg, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.dh, i64 20), !alias.scope !71035, !noalias !71036 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, -1                  ; 2 uses
  %..i.i = select i1 %i.dj, ptr %i.de, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.df, ptr noundef nonnull align 8 dereferenceable(64) %..i.i, i64 64, i1 false), !alias.scope !71034, !noalias !71036
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [64 x i8], ptr %i.dd, i64 %i.dk ; 3 uses
  %.lobit.i.i = lshr i32 %i.di, 31
  %i.dm = zext nneg i32 %.lobit.i.i to i64
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.de, i64 %i.dm ; 3 uses
  %i.do = icmp eq ptr %i.dl, %i.cd
  %i.dp = icmp eq ptr %i.dn, %2
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha2e47fb50cb6def1E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dq = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.cd, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cy, %bb.y ] ; 3 uses
  %i.dr = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %2, %bb.y ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.du = tail call i32 @memcmp(ptr noundef nonnull readonly align 1 dereferenceable(20) %i.ds, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.dt, i64 20), !alias.scope !71037, !noalias !71038 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1                  ; 2 uses
  %spec.select.i.i = select i1 %i.dv, ptr %i.dr, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(64) %spec.select.i.i, i64 64, i1 false), !alias.scope !71034, !noalias !71038
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [64 x i8], ptr %i.dr, i64 %i.dw ; 3 uses
  %.lobit.i19.i = lshr i32 %i.du, 31
  %i.dy = zext nneg i32 %.lobit.i19.i to i64
  %i.dz = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.02.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 64 ; 2 uses
  %i.eb = icmp ne ptr %i.dx, %i.da
  %i.ec = icmp ne ptr %i.dz, %i.br
  %or.cond.i20.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha2e47fb50cb6def1E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha2e47fb50cb6def1E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dl, %.preheader.i ], [ %i.ea, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dn, %.preheader.i ], [ %i.da, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ef, i1 false), !alias.scope !71034, !noalias !71039
  br label %_ZN4core5slice4sort6stable5merge5merge17h6a0d4654a3f8176bE.exit

_ZN4core5slice4sort6stable5merge5merge17h6a0d4654a3f8176bE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha2e47fb50cb6def1E.exit.i"
  %i.eg = shl i64 %i.cb, 1
  %i.eh = or disjoint i64 %i.eg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h49093de103cd485bE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h49093de103cd485bE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h6a0d4654a3f8176bE.exit
  %.sroa.0.0.i = phi i64 [ %i.eh, %_ZN4core5slice4sort6stable5merge5merge17h6a0d4654a3f8176bE.exit ], [ %i.cj, %bb.t ] ; 2 uses
  %i.ei = icmp ugt i64 %i.bs, 1
  br i1 %i.ei, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ej = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ek = lshr i64 %.sroa.023.0, 1
  %i.el = add i64 %i.ek, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.em = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.em, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = or i64 %1, 1
  %i.eo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = xor i32 %i.eq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5a833ef11a9c6abdE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71000
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h37861c43299f58fdE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i117 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i122 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ft, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fr, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb4345add19c620a7E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb4345add19c620a7E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread120, %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb4345add19c620a7E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb4345add19c620a7E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h317d482f965f1d7fE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 552
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.q = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o), !noalias !71082 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.s = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p), !noalias !71083 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 1        ; 2 uses
  %..i.i45 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t)
  %i.u = sub i64 %i.r, %i.t
  %i.v = extractvalue { ptr, i64 } %i.s, 0
  %i.w = extractvalue { ptr, i64 } %i.q, 0
  %i.x = tail call i32 @memcmp(ptr %i.w, ptr %i.v, i64 %..i.i45), !noalias !71083 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %spec.store.select.i.i46 = select i1 %i.z, i64 %i.u, i64 %i.y
  %i.aa = icmp slt i64 %spec.store.select.i.i46, 0 ; 2 uses
  %.not88 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.aa, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %bb.i
  br i1 %.not88, label %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not88, label %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread120, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader56, %bb.j
  %.sroa.01.0.i.i71 = phi i64 [ %i.aq, %bb.j ], [ 2, %.preheader56 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.01.0.i.i71
  %6 = add i64 %.sroa.01.0.i.i71, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %i.ac = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 184
  %i.af = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ad), !noalias !71084 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1      ; 2 uses
  %i.ah = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ae), !noalias !71083 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  %..i.i43 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ai)
  %i.aj = sub i64 %i.ag, %i.ai
  %i.ak = extractvalue { ptr, i64 } %i.ah, 0
  %i.al = extractvalue { ptr, i64 } %i.af, 0
  %i.am = tail call i32 @memcmp(ptr %i.al, ptr %i.ak, i64 %..i.i43), !noalias !71083 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %spec.store.select.i.i44 = select i1 %i.ao, i64 %i.aj, i64 %i.an
  %i.ap = icmp slt i64 %spec.store.select.i.i44, 0
  br i1 %i.ap, label %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aq = add nuw i64 %.sroa.01.0.i.i71, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i74 = phi i64 [ %i.bg, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.01.1.i.i74
  %8 = add i64 %.sroa.01.1.i.i74, -1              ; 2 uses
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %i.as = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 184
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  %i.av = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.at), !noalias !71085 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 1      ; 2 uses
  %i.ax = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au), !noalias !71083 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %..i.i42 = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ay)
  %i.az = sub i64 %i.aw, %i.ay
  %i.ba = extractvalue { ptr, i64 } %i.ax, 0
  %i.bb = extractvalue { ptr, i64 } %i.av, 0
  %i.bc = tail call i32 @memcmp(ptr %i.bb, ptr %i.ba, i64 %..i.i42), !noalias !71083 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %spec.store.select.i.i = select i1 %i.be, i64 %i.az, i64 %i.bd
  %i.bf = icmp slt i64 %spec.store.select.i.i, 0
  br i1 %i.bf, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i

bb.k:                                             ; preds = %.lr.ph75
  %i.bg = add nuw i64 %.sroa.01.1.i.i74, 1        ; 2 uses
  %exitcond101.not = icmp eq i64 %i.bg, %i.l
  br i1 %exitcond101.not, label %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i, label %.lr.ph75

_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph75
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i74, %.lr.ph75 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i71, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.bh = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.bh)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread120: ; preds = %.preheader
  br i1 %.not5.i122, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread: ; preds = %.preheader56
  br i1 %.not5.i117, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h317d482f965f1d7fE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i
  br i1 %i.aa, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h317d482f965f1d7fE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.bi = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hba5a850ce4c1da48E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4b19e49a9ca2eedcE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71055
  %i.bj = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hba5a850ce4c1da48E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h317d482f965f1d7fE.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h32179108c82d5d7fE.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i5154 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread ], [ %.sroa.0.0.i.i118125129, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h32179108c82d5d7fE.exit.i.i ]
  %i.bl = shl i64 %.sroa.0.0.i.i5154, 1
  %i.bm = or disjoint i64 %i.bl, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hba5a850ce4c1da48E.exit

bb.o:                                             ; preds = %bb.l
  %i.bn = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71086), !noalias !71083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71087), !noalias !71083
  %.not15.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h317d482f965f1d7fE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread120, %bb.o
  %i.bo = phi i64 [ %i.bn, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread120 ]
  %.sroa.0.0.i.i118125129 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h93018de5471e9edbE.exit.i.thread120 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.0.0.i.i118125129
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h32179108c82d5d7fE.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bz, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h32179108c82d5d7fE.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bq = xor i64 %.sroa.0.014.i.i, -1
  %i.br = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bs = getelementptr [368 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i39
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i39 ], [ %i.bw, %.preheader.i.i.i.i.i ] ; 4 uses
  %i.bt = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71088), !noalias !71083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71089), !noalias !71083
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !71090, !noalias !71091
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !71092, !noalias !71093
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.bu, align 8, !alias.scope !71090, !noalias !71091
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.bv, align 8, !alias.scope !71092, !noalias !71093
  %i.bw = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71094), !noalias !71083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71095), !noalias !71083
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.bx, align 8, !alias.scope !71096, !noalias !71097
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.by, align 8, !alias.scope !71098, !noalias !71099
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.bx, align 8, !alias.scope !71096, !noalias !71097
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.by, align 8, !alias.scope !71098, !noalias !71099
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.bw, 46
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h32179108c82d5d7fE.exit.i.i, label %.preheader.i.i.i.i.i

_ZN4core10intrinsics25typed_swap_nonoverlapping17h32179108c82d5d7fE.exit.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.bz = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bz, %i.bo
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h317d482f965f1d7fE.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17hba5a850ce4c1da48E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h317d482f965f1d7fE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.bm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h317d482f965f1d7fE.exit" ], [ %i.bk, %bb.n ], [ %i.bi, %bb.m ] ; 2 uses
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

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hba5a850ce4c1da48E.exit
  %.sroa.026.0 = phi i8 [ %i.ci, %_ZN4core5slice4sort6stable5drift10create_run17hba5a850ce4c1da48E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hba5a850ce4c1da48E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cj = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cj, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph81, %_ZN4core5slice4sort6stable5drift13logical_merge17h69b1f60d083ac0daE.exit
  %.sroa.02.180 = phi i64 [ %.sroa.02.0, %.lr.ph81 ], [ %i.cl, %_ZN4core5slice4sort6stable5drift13logical_merge17h69b1f60d083ac0daE.exit ] ; 2 uses
  %.sroa.018.179 = phi i64 [ %.sroa.018.0, %.lr.ph81 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h69b1f60d083ac0daE.exit ] ; 4 uses
  %i.cl = add i64 %.sroa.02.180, -1               ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.cn, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h69b1f60d083ac0daE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.179, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h69b1f60d083ac0daE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.180, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h69b1f60d083ac0daE.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cp, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !41 ; 3 uses
  %i.cs = lshr i64 %i.cr, 1                       ; 8 uses
  %i.ct = lshr i64 %.sroa.018.179, 1              ; 6 uses
  %i.cu = add nuw i64 %i.cs, %i.ct                ; 4 uses
  %i.cv = sub i64 %.sroa.09.0, %i.cu
  %i.cw = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %i.cv ; 6 uses
  %i.cx = icmp ugt i64 %i.cu, %3
  %i.cy = trunc i64 %.sroa.018.179 to i1
  %i.cz = or i64 %i.cr, %.sroa.018.179
  %i.da = trunc i64 %i.cz to i1
  %or.cond3.i = or i1 %i.cx, %i.da
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i64 %i.cr to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dc = shl i64 %i.cu, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h69b1f60d083ac0daE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cy, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb4345add19c620a7E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dd = or i64 %i.cs, 1
  %i.de = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4b19e49a9ca2eedcE(ptr noalias noundef nonnull align 8 %i.cw, i64 noundef %i.cs, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71066
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb4345add19c620a7E.exit35": ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [368 x i8], ptr %i.cw, i64 %i.cs
  %i.dj = or i64 %i.ct, 1
  %i.dk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4b19e49a9ca2eedcE(ptr noalias noundef nonnull align 8 %i.di, i64 noundef %i.ct, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71066
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb4345add19c620a7E.exit35", %bb.u
  %i.do = icmp eq i64 %i.cs, 0
  %i.dp = icmp eq i64 %i.ct, 0
  %or.cond.i = or i1 %i.dp, %i.do
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h8807f3dd8642ab6aE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 range(i64 0, -9223372036854775808) %i.cs) ; 2 uses
  %i.dq = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dq, label %_ZN4core5slice4sort6stable5merge5merge17h8807f3dd8642ab6aE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw [368 x i8], ptr %i.cw, i64 %i.cs ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cs, %i.ct  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dr, ptr %i.cw
  %i.ds = mul i64 %.sroa.0.0.i.i36, 368           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ds, i1 false), !alias.scope !71100
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ds ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.noexc18.i
  %.sroa.13.0.i = phi ptr [ %i.el, %.noexc18.i ], [ %i.dr, %bb.y ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.em, %.noexc18.i ], [ %i.dt, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dw, %.noexc18.i ], [ %i.ck, %bb.y ]
  %i.du = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -368 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -368 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -368 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -184
  %i.dy = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dx)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dz = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -184
  %i.ea = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dz)
          to label %.noexc18.i unwind label %.loopexit.i ; 2 uses

.noexc18.i:                                       ; preds = %.noexc.i
  %i.eb = extractvalue { ptr, i64 } %i.dy, 1      ; 2 uses
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1      ; 2 uses
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.ec)
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = extractvalue { ptr, i64 } %i.ea, 0
  %i.ef = extractvalue { ptr, i64 } %i.dy, 0
  %i.eg = tail call i32 @memcmp(ptr %i.ef, ptr %i.ee, i64 %..i.i.i.i), !noalias !71101 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp eq i32 %i.eg, 0
  %spec.store.select.i.i.i.i = select i1 %i.ei, i64 %i.ed, i64 %i.eh ; 2 uses
  %i.ej = icmp sgt i64 %spec.store.select.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.ej, ptr %i.dv, ptr %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.dw, ptr noundef nonnull align 8 dereferenceable(368) %..i.i, i64 368, i1 false), !alias.scope !71100, !noalias !71101
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [368 x i8], ptr %i.du, i64 %i.ek ; 3 uses
  %spec.store.select.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i, 63
  %i.em = getelementptr inbounds nuw [368 x i8], ptr %i.dv, i64 %spec.store.select.i.i.lobit.i.i ; 3 uses
  %i.en = icmp eq ptr %i.el, %i.cw
  %i.eo = icmp eq ptr %i.em, %2
  %or.cond.i.i = select i1 %i.en, i1 true, i1 %i.eo
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h953864f547c0f46aE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc25.i
  %.sroa.13.1.i = phi ptr [ %i.ff, %.noexc25.i ], [ %i.cw, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fd, %.noexc25.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fe, %.noexc25.i ], [ %i.dr, %bb.y ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 184
  %i.eq = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ep)
          to label %.noexc24.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc24.i:                                       ; preds = %.lr.ph.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 184
  %i.es = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.er)
          to label %.noexc25.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc25.i:                                       ; preds = %.noexc24.i
  %i.et = extractvalue { ptr, i64 } %i.eq, 1      ; 2 uses
  %i.eu = extractvalue { ptr, i64 } %i.es, 1      ; 2 uses
  %..i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %i.et, i64 %i.eu)
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = extractvalue { ptr, i64 } %i.es, 0
  %i.ex = extractvalue { ptr, i64 } %i.eq, 0
  %i.ey = tail call i32 @memcmp(ptr %i.ex, ptr %i.ew, i64 %..i.i.i20.i), !noalias !71102 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp eq i32 %i.ey, 0
  %spec.store.select.i.i.i21.i = select i1 %i.fa, i64 %i.ev, i64 %i.ez ; 2 uses
  %i.fb = icmp sgt i64 %spec.store.select.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.fb, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(368) %spec.select.i.i, i64 368, i1 false), !alias.scope !71100, !noalias !71102
  %i.fc = zext i1 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [368 x i8], ptr %.sroa.0.0.i38, i64 %i.fc ; 3 uses
  %spec.store.select.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i21.i, 63
  %i.fe = getelementptr inbounds nuw [368 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.lobit.i22.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 368 ; 2 uses
  %i.fg = icmp ne ptr %i.fd, %i.dt
  %i.fh = icmp ne ptr %i.fe, %i.ck
  %or.cond.i23.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h953864f547c0f46aE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h953864f547c0f46aE.exit.i": ; preds = %.noexc25.i, %.noexc18.i
  %.sroa.13.4.i = phi ptr [ %i.el, %.noexc18.i ], [ %i.ff, %.noexc25.i ]
  %.sroa.7.2.i = phi ptr [ %i.em, %.noexc18.i ], [ %i.dt, %.noexc25.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc18.i ], [ %i.fd, %.noexc25.i ] ; 2 uses
  %i.fi = ptrtoint ptr %.sroa.7.2.i to i64
  %i.fj = ptrtoint ptr %.sroa.0.3.i to i64
  %i.fk = sub nuw i64 %i.fi, %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.fk, i1 false), !alias.scope !71100, !noalias !71103
  br label %_ZN4core5slice4sort6stable5merge5merge17h8807f3dd8642ab6aE.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %.noexc24.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.dt, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fl = ptrtoint ptr %.sroa.7.1.i to i64
  %i.fm = ptrtoint ptr %.sroa.0.2.i to i64
  %i.fn = sub nuw i64 %i.fl, %i.fm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.fn, i1 false), !alias.scope !71100, !noalias !71104
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h8807f3dd8642ab6aE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h953864f547c0f46aE.exit.i"
  %i.fo = shl i64 %i.cu, 1
  %i.fp = or disjoint i64 %i.fo, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h69b1f60d083ac0daE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h69b1f60d083ac0daE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h8807f3dd8642ab6aE.exit
  %.sroa.0.0.i = phi i64 [ %i.fp, %_ZN4core5slice4sort6stable5merge5merge17h8807f3dd8642ab6aE.exit ], [ %i.dc, %bb.t ] ; 2 uses
  %i.fq = icmp ugt i64 %i.cl, 1
  br i1 %i.fq, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.fr = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fs = lshr i64 %.sroa.023.0, 1
  %i.ft = add i64 %i.fs, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.fu = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fu, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fv = or i64 %1, 1
  %i.fw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fv, i1 true)
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = shl nuw nsw i32 %i.fx, 1
  %i.fz = xor i32 %i.fy, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4b19e49a9ca2eedcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71066
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h50210643355daba7E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ew, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h47e7ca891c0c85c6E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h47e7ca891c0c85c6E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread114, %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h47e7ca891c0c85c6E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h47e7ca891c0c85c6E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2edc8a2ba8fb084E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.p = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17heba46255c536b521E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.m), !noalias !71175, !inline_history !71108 ; 2 uses
  %.not83 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread114, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.j
  %.sroa.01.0.i.i66 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader51 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [176 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %6 = add i64 %.sroa.01.0.i.i66, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [176 x i8], ptr %i.m, i64 %6
  %i.r = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17heba46255c536b521E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %8), !noalias !71175, !inline_history !71108
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i66, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i69 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [176 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %9 = add i64 %.sroa.01.1.i.i69, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.l
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [176 x i8], ptr %i.m, i64 %9
  %i.u = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17heba46255c536b521E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %11), !noalias !71175, !inline_history !71108
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i

bb.k:                                             ; preds = %.lr.ph70
  %i.v = add nuw i64 %.sroa.01.1.i.i69, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread114: ; preds = %.preheader
  br i1 %.not5.i116, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i111, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2edc8a2ba8fb084E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2edc8a2ba8fb084E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hba4b98bf569981d7E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8be3e156b418238aE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(176) null, ptr noalias noundef nonnull align 1 %5), !inline_history !71108
  %i.y = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hba4b98bf569981d7E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2edc8a2ba8fb084E.exit": ; preds = %.lr.ph.i.i39, %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4649 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread ], [ %.sroa.0.0.i.i112119123, %.lr.ph.i.i39 ]
  %i.aa = shl i64 %.sroa.0.0.i.i4649, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hba4b98bf569981d7E.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71176), !noalias !71175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71177), !noalias !71175
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2edc8a2ba8fb084E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread114, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread114 ]
  %.sroa.0.0.i.i112119123 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17had3560ddc84f8338E.exit.i.thread114 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [176 x i8], ptr %i.m, i64 %.sroa.0.0.i.i112119123
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.by, %.lr.ph.i.i39 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.af = xor i64 %.sroa.0.014.i.i, -1
  %i.ag = getelementptr inbounds nuw [176 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 12 uses
  %i.ah = getelementptr [176 x i8], ptr %i.ae, i64 %i.af ; 12 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !71178, !noalias !71179
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !71180, !noalias !71181
  store <2 x i64> %i.aj, ptr %i.ag, align 8, !alias.scope !71178, !noalias !71179
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !alias.scope !71180, !noalias !71181
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !71182, !noalias !71179
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !71183, !noalias !71181
  store <2 x i64> %i.an, ptr %i.ak, align 8, !alias.scope !71182, !noalias !71179
  store <2 x i64> %i.am, ptr %i.al, align 8, !alias.scope !71183, !noalias !71181
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !71184, !noalias !71179
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !71185, !noalias !71181
  store <2 x i64> %i.ar, ptr %i.ao, align 8, !alias.scope !71184, !noalias !71179
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !alias.scope !71185, !noalias !71181
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !71186, !noalias !71179
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !71187, !noalias !71181
  store <2 x i64> %i.av, ptr %i.as, align 8, !alias.scope !71186, !noalias !71179
  store <2 x i64> %i.au, ptr %i.at, align 8, !alias.scope !71187, !noalias !71181
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !71188, !noalias !71179
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !71189, !noalias !71181
  store <2 x i64> %i.az, ptr %i.aw, align 8, !alias.scope !71188, !noalias !71179
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !alias.scope !71189, !noalias !71181
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 2 uses
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !71190, !noalias !71179
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !71191, !noalias !71181
  store <2 x i64> %i.bd, ptr %i.ba, align 8, !alias.scope !71190, !noalias !71179
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !alias.scope !71191, !noalias !71181
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 96 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 96 ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !71192, !noalias !71179
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !71193, !noalias !71181
  store <2 x i64> %i.bh, ptr %i.be, align 8, !alias.scope !71192, !noalias !71179
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !alias.scope !71193, !noalias !71181
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 112 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 112 ; 2 uses
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !71194, !noalias !71179
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !71195, !noalias !71181
  store <2 x i64> %i.bl, ptr %i.bi, align 8, !alias.scope !71194, !noalias !71179
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !alias.scope !71195, !noalias !71181
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 128 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 128 ; 2 uses
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !71196, !noalias !71179
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !71197, !noalias !71181
  store <2 x i64> %i.bp, ptr %i.bm, align 8, !alias.scope !71196, !noalias !71179
  store <2 x i64> %i.bo, ptr %i.bn, align 8, !alias.scope !71197, !noalias !71181
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 144 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 144 ; 2 uses
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !71198, !noalias !71179
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !alias.scope !71199, !noalias !71181
  store <2 x i64> %i.bt, ptr %i.bq, align 8, !alias.scope !71198, !noalias !71179
  store <2 x i64> %i.bs, ptr %i.br, align 8, !alias.scope !71199, !noalias !71181
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 160 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 160 ; 2 uses
  %i.bw = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !71200, !noalias !71179
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !71201, !noalias !71181
  store <2 x i64> %i.bx, ptr %i.bu, align 8, !alias.scope !71200, !noalias !71179
  store <2 x i64> %i.bw, ptr %i.bv, align 8, !alias.scope !71201, !noalias !71181
  %i.by = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.by, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2edc8a2ba8fb084E.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17hba4b98bf569981d7E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2edc8a2ba8fb084E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf2edc8a2ba8fb084E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.bz = lshr i64 %.sroa.018.0, 1
  %i.ca = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.cb = sub i64 %factor, %i.bz
  %i.cc = add i64 %i.ca, %factor
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false)
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hba4b98bf569981d7E.exit
  %.sroa.026.0 = phi i8 [ %i.ch, %_ZN4core5slice4sort6stable5drift10create_run17hba4b98bf569981d7E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hba4b98bf569981d7E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.ci = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ci, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f81ba4e27b0b266E.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.ck, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f81ba4e27b0b266E.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f81ba4e27b0b266E.exit ] ; 4 uses
  %i.ck = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.cm, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6f81ba4e27b0b266E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.174, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f81ba4e27b0b266E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.175, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6f81ba4e27b0b266E.exit ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.co, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ck
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !41 ; 3 uses
  %i.cr = lshr i64 %i.cq, 1                       ; 8 uses
  %i.cs = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.ct = add nuw i64 %i.cr, %i.cs                ; 4 uses
  %i.cu = sub i64 %.sroa.09.0, %i.ct
  %i.cv = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %i.cu ; 6 uses
  %i.cw = icmp ugt i64 %i.ct, %3
  %i.cx = trunc i64 %.sroa.018.174 to i1
  %i.cy = or i64 %i.cq, %.sroa.018.174
  %i.cz = trunc i64 %i.cy to i1
  %or.cond3.i = or i1 %i.cw, %i.cz
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = trunc i64 %i.cq to i1
  br i1 %i.da, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.db = shl i64 %i.ct, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f81ba4e27b0b266E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cx, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h47e7ca891c0c85c6E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dc = or i64 %i.cr, 1
  %i.dd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dc, i1 true)
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 1
  %i.dg = xor i32 %i.df, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8be3e156b418238aE(ptr noalias noundef nonnull align 8 %i.cv, i64 noundef %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(176) null, ptr noalias noundef nonnull align 1 %5), !inline_history !71159
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h47e7ca891c0c85c6E.exit35": ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw [176 x i8], ptr %i.cv, i64 %i.cr
  %i.di = or i64 %i.cs, 1
  %i.dj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8be3e156b418238aE(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef %i.cs, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(176) null, ptr noalias noundef nonnull align 1 %5), !inline_history !71159
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h47e7ca891c0c85c6E.exit35", %bb.u
  %i.dn = icmp eq i64 %i.cr, 0
  %i.do = icmp eq i64 %i.cs, 0
  %or.cond.i = or i1 %i.do, %i.dn
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h33c45edd9192489cE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 range(i64 0, -9223372036854775808) %i.cr) ; 2 uses
  %i.dp = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dp, label %_ZN4core5slice4sort6stable5merge5merge17h33c45edd9192489cE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw [176 x i8], ptr %i.cv, i64 %i.cr ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cr, %i.cs  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dq, ptr %i.cv
  %i.dr = mul i64 %.sroa.0.0.i.i36, 176           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dr, i1 false), !alias.scope !71202
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dz, %.noexc.i ], [ %i.dq, %bb.y ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.eb, %.noexc.i ], [ %i.ds, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dw, %.noexc.i ], [ %i.cj, %bb.y ]
  %i.dt = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -176 ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -176 ; 3 uses
  %i.dv = invoke fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17heba46255c536b521E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.dt)
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -176 ; 2 uses
  %..i.i = select i1 %i.dv, ptr %i.dt, ptr %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.dw, ptr noundef nonnull align 8 dereferenceable(176) %..i.i, i64 176, i1 false), !alias.scope !71202, !noalias !71203
  %i.dx = xor i1 %i.dv, true
  %i.dy = zext i1 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [176 x i8], ptr %i.dt, i64 %i.dy ; 3 uses
  %i.ea = zext i1 %i.dv to i64
  %i.eb = getelementptr inbounds nuw [176 x i8], ptr %i.du, i64 %i.ea ; 3 uses
  %i.ec = icmp eq ptr %i.dz, %i.cv
  %i.ed = icmp eq ptr %i.eb, %2
  %or.cond.i.i = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h534e05b4d9980e08E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.ek, %.noexc20.i ], [ %i.cv, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.eh, %.noexc20.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ej, %.noexc20.i ], [ %i.dq, %bb.y ] ; 3 uses
  %i.ee = invoke fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17heba46255c536b521E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.0.0.i38)
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.ef = xor i1 %i.ee, true
  %spec.select.i.i = select i1 %i.ee, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(176) %spec.select.i.i, i64 176, i1 false), !alias.scope !71202, !noalias !71204
  %i.eg = zext i1 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [176 x i8], ptr %.sroa.0.0.i38, i64 %i.eg ; 3 uses
  %i.ei = zext i1 %i.ee to i64
  %i.ej = getelementptr inbounds nuw [176 x i8], ptr %.sroa.0.02.i.i, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 176 ; 2 uses
  %i.el = icmp ne ptr %i.eh, %i.ds
  %i.em = icmp ne ptr %i.ej, %i.cj
  %or.cond.i19.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h534e05b4d9980e08E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h534e05b4d9980e08E.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dz, %.noexc.i ], [ %i.ek, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.eb, %.noexc.i ], [ %i.ds, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.eh, %.noexc20.i ] ; 2 uses
  %i.en = ptrtoint ptr %.sroa.7.2.i to i64
  %i.eo = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ep = sub nuw i64 %i.en, %i.eo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ep, i1 false), !alias.scope !71202, !noalias !71205
  br label %_ZN4core5slice4sort6stable5merge5merge17h33c45edd9192489cE.exit

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
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ds, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eq = ptrtoint ptr %.sroa.7.1.i to i64
  %i.er = ptrtoint ptr %.sroa.0.2.i to i64
  %i.es = sub nuw i64 %i.eq, %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.es, i1 false), !alias.scope !71202, !noalias !71206
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h33c45edd9192489cE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h534e05b4d9980e08E.exit.i"
  %i.et = shl i64 %i.ct, 1
  %i.eu = or disjoint i64 %i.et, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6f81ba4e27b0b266E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h6f81ba4e27b0b266E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h33c45edd9192489cE.exit
  %.sroa.0.0.i = phi i64 [ %i.eu, %_ZN4core5slice4sort6stable5merge5merge17h33c45edd9192489cE.exit ], [ %i.db, %bb.t ] ; 2 uses
  %i.ev = icmp ugt i64 %i.ck, 1
  br i1 %i.ev, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ew = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ex = lshr i64 %.sroa.023.0, 1
  %i.ey = add i64 %i.ex, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ez = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ez, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = or i64 %1, 1
  %i.fb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8be3e156b418238aE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(176) null, ptr noalias noundef nonnull align 1 %5), !inline_history !71159
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h5996aa769fa85574E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b63e49f8ffde460E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b63e49f8ffde460E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71266)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b63e49f8ffde460E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b63e49f8ffde460E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hff93a3ccad5a281aE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 32
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !71266, !noalias !71267, !nonnull !41, !noundef !41 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 40
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !71266, !noalias !71267, !noundef !41 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !71266, !noalias !71267, !nonnull !41, !noundef !41
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !71266, !noalias !71267, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i.i43), !alias.scope !71268, !noalias !71269 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 4 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %6 = add i64 %.sroa.01.0.i.i59, -1
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !71266, !noalias !71267, !nonnull !41, !noundef !41 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !71266, !noalias !71267, !noundef !41 ; 3 uses
  %..i.i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i.i41), !alias.scope !71270, !noalias !71269 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %8 = add i64 %.sroa.01.1.i.i62, -1
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !71266, !noalias !71267, !nonnull !41, !noundef !41 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !71266, !noalias !71267, !noundef !41 ; 3 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i.i), !alias.scope !71271, !noalias !71269 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hff93a3ccad5a281aE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hff93a3ccad5a281aE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h2b46b2e07e69f87eE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8b5edd55fd5cc719E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5), !inline_history !71229
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h2b46b2e07e69f87eE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hff93a3ccad5a281aE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h2b46b2e07e69f87eE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71272), !noalias !71267
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71273), !noalias !71267
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hff93a3ccad5a281aE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h17700951c4d7f118E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bf, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.014.i.i, -1
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 3 uses
  %i.ba = getelementptr [24 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !71274, !noalias !71275
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !71276, !noalias !71277
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !71274, !noalias !71275
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !71276, !noalias !71277
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71278), !noalias !71267
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71279), !noalias !71267
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !71280, !noalias !71281
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !71282, !noalias !71283
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bd, align 8, !alias.scope !71280, !noalias !71281
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.be, align 8, !alias.scope !71282, !noalias !71283
  %i.bf = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bf, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hff93a3ccad5a281aE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h2b46b2e07e69f87eE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hff93a3ccad5a281aE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hff93a3ccad5a281aE.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bg = lshr i64 %.sroa.018.0, 1
  %i.bh = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bi = sub i64 %factor, %i.bg
  %i.bj = add i64 %i.bh, %factor
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false)
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h2b46b2e07e69f87eE.exit
  %.sroa.026.0 = phi i8 [ %i.bo, %_ZN4core5slice4sort6stable5drift10create_run17h2b46b2e07e69f87eE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h2b46b2e07e69f87eE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bp = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bp, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h79a04ac30d733b57E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.br, %_ZN4core5slice4sort6stable5drift13logical_merge17h79a04ac30d733b57E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h79a04ac30d733b57E.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.bt, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h79a04ac30d733b57E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h79a04ac30d733b57E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h79a04ac30d733b57E.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !41 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.018.167 to i1
  %i.cf = or i64 %i.bx, %.sroa.018.167
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ci = shl i64 %i.ca, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h79a04ac30d733b57E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ce, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b63e49f8ffde460E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8b5edd55fd5cc719E(ptr noalias noundef nonnull align 8 %i.cc, i64 noundef %i.by, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5), !inline_history !71242
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b63e49f8ffde460E.exit35": ; preds = %bb.u
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8b5edd55fd5cc719E(ptr noalias noundef nonnull align 8 %i.co, i64 noundef %i.bz, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5), !inline_history !71242
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b63e49f8ffde460E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71285)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4afbd85a72f327d8E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cw = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cw, label %_ZN4core5slice4sort6stable5merge5merge17h4afbd85a72f327d8E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cx, ptr %i.cc
  %i.cy = mul i64 %.sroa.0.0.i.i36, 24            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cy, i1 false), !alias.scope !71286
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.da = phi ptr [ %i.dq, %.preheader.i ], [ %i.cz, %bb.y ] ; 3 uses
  %i.db = phi ptr [ %i.dp, %.preheader.i ], [ %i.cx, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.de, %.preheader.i ], [ %i.bq, %bb.y ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -24 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -16
  %.val.i.i = load ptr, ptr %i.df, align 8, !alias.scope !71285, !noalias !71287, !nonnull !41, !noundef !41
  %i.dg = getelementptr i8, ptr %i.da, i64 -8
  %.val10.i.i = load i64, ptr %i.dg, align 8, !alias.scope !71285, !noalias !71287, !noundef !41 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.db, i64 -16
  %.val11.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !71284, !noalias !71288, !nonnull !41, !noundef !41
  %i.di = getelementptr i8, ptr %i.db, i64 -8
  %.val12.i.i = load i64, ptr %i.di, align 8, !alias.scope !71284, !noalias !71288, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dj = sub i64 %.val10.i.i, %.val12.i.i
  %i.dk = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i.i), !alias.scope !71289, !noalias !71290 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp eq i32 %i.dk, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.dm, i64 %i.dj, i64 %i.dl ; 2 uses
  %i.dn = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dn, ptr %i.dd, ptr %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !71286, !noalias !71291
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.do ; 3 uses
  %spec.store.select.i.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i.i, 63
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %spec.store.select.i.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dr = icmp eq ptr %i.dp, %i.cc
  %i.ds = icmp eq ptr %i.dq, %2
  %or.cond.i.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3f1e90bae7f49d4dE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dt = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.cc, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.cx, %bb.y ] ; 4 uses
  %i.du = phi ptr [ %i.ef, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.dv = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !71284, !noalias !71292, !nonnull !41, !noundef !41
  %i.dw = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dw, align 8, !alias.scope !71284, !noalias !71292, !noundef !41 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.du, i64 8
  %.val.i19.i = load ptr, ptr %i.dx, align 8, !alias.scope !71285, !noalias !71293, !nonnull !41, !noundef !41
  %i.dy = getelementptr i8, ptr %i.du, i64 16
  %.val7.i.i = load i64, ptr %i.dy, align 8, !alias.scope !71285, !noalias !71293, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.dz = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ea = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i.i20.i), !alias.scope !71294, !noalias !71295 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp eq i32 %i.ea, 0
  %spec.store.select.i.i.i.i.i.i.i21.i = select i1 %i.ec, i64 %i.dz, i64 %i.eb ; 2 uses
  %i.ed = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ed, ptr %i.du, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !alias.scope !71286, !noalias !71296
  %i.ee = zext i1 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.ee ; 3 uses
  %spec.store.select.i.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i21.i, 63
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.ei = icmp ne ptr %i.ef, %i.cz
  %i.ej = icmp ne ptr %i.eg, %i.bq
  %or.cond.i23.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3f1e90bae7f49d4dE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3f1e90bae7f49d4dE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dq, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ef, %.lr.ph.i.i ] ; 2 uses
  %i.ek = ptrtoint ptr %.sroa.7.0.i to i64
  %i.el = ptrtoint ptr %.sroa.0.1.i to i64
  %i.em = sub nuw i64 %i.ek, %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.em, i1 false), !alias.scope !71286, !noalias !71297
  br label %_ZN4core5slice4sort6stable5merge5merge17h4afbd85a72f327d8E.exit

_ZN4core5slice4sort6stable5merge5merge17h4afbd85a72f327d8E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3f1e90bae7f49d4dE.exit.i"
  %i.en = shl i64 %i.ca, 1
  %i.eo = or disjoint i64 %i.en, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h79a04ac30d733b57E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h79a04ac30d733b57E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h4afbd85a72f327d8E.exit
  %.sroa.0.0.i = phi i64 [ %i.eo, %_ZN4core5slice4sort6stable5merge5merge17h4afbd85a72f327d8E.exit ], [ %i.ci, %bb.t ] ; 2 uses
  %i.ep = icmp ugt i64 %i.br, 1
  br i1 %i.ep, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.eq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.er = lshr i64 %.sroa.023.0, 1
  %i.es = add i64 %i.er, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.et = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.et, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eu = or i64 %1, 1
  %i.ev = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 1
  %i.ey = xor i32 %i.ex, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8b5edd55fd5cc719E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5), !inline_history !71242
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h650008cf393198f7E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i117 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i122 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ft, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fr, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread120, %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 552
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.q = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o), !noalias !71340 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.s = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p), !noalias !71341 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 1        ; 2 uses
  %..i.i45 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t)
  %i.u = sub i64 %i.r, %i.t
  %i.v = extractvalue { ptr, i64 } %i.s, 0
  %i.w = extractvalue { ptr, i64 } %i.q, 0
  %i.x = tail call i32 @memcmp(ptr %i.w, ptr %i.v, i64 %..i.i45), !noalias !71341 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %spec.store.select.i.i46 = select i1 %i.z, i64 %i.u, i64 %i.y
  %i.aa = icmp slt i64 %spec.store.select.i.i46, 0 ; 2 uses
  %.not88 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.aa, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %bb.i
  br i1 %.not88, label %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not88, label %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread120, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader56, %bb.j
  %.sroa.01.0.i.i71 = phi i64 [ %i.aq, %bb.j ], [ 2, %.preheader56 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.01.0.i.i71
  %6 = add i64 %.sroa.01.0.i.i71, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %i.ac = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 184
  %i.af = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ad), !noalias !71342 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1      ; 2 uses
  %i.ah = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ae), !noalias !71341 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  %..i.i43 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ai)
  %i.aj = sub i64 %i.ag, %i.ai
  %i.ak = extractvalue { ptr, i64 } %i.ah, 0
  %i.al = extractvalue { ptr, i64 } %i.af, 0
  %i.am = tail call i32 @memcmp(ptr %i.al, ptr %i.ak, i64 %..i.i43), !noalias !71341 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %spec.store.select.i.i44 = select i1 %i.ao, i64 %i.aj, i64 %i.an
  %i.ap = icmp slt i64 %spec.store.select.i.i44, 0
  br i1 %i.ap, label %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aq = add nuw i64 %.sroa.01.0.i.i71, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i74 = phi i64 [ %i.bg, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.01.1.i.i74
  %8 = add i64 %.sroa.01.1.i.i74, -1              ; 2 uses
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %i.as = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 184
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  %i.av = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.at), !noalias !71343 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 1      ; 2 uses
  %i.ax = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au), !noalias !71341 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %..i.i42 = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ay)
  %i.az = sub i64 %i.aw, %i.ay
  %i.ba = extractvalue { ptr, i64 } %i.ax, 0
  %i.bb = extractvalue { ptr, i64 } %i.av, 0
  %i.bc = tail call i32 @memcmp(ptr %i.bb, ptr %i.ba, i64 %..i.i42), !noalias !71341 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %spec.store.select.i.i = select i1 %i.be, i64 %i.az, i64 %i.bd
  %i.bf = icmp slt i64 %spec.store.select.i.i, 0
  br i1 %i.bf, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i

bb.k:                                             ; preds = %.lr.ph75
  %i.bg = add nuw i64 %.sroa.01.1.i.i74, 1        ; 2 uses
  %exitcond101.not = icmp eq i64 %i.bg, %i.l
  br i1 %exitcond101.not, label %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i, label %.lr.ph75

_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph75
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i74, %.lr.ph75 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i71, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.bh = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.bh)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread120: ; preds = %.preheader
  br i1 %.not5.i122, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread: ; preds = %.preheader56
  br i1 %.not5.i117, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i
  br i1 %i.aa, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.bi = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc0b670ac4c7472d4E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7a0ea524b4c452d7E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71313
  %i.bj = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc0b670ac4c7472d4E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i5154 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread ], [ %.sroa.0.0.i.i118125129, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i ]
  %i.bl = shl i64 %.sroa.0.0.i.i5154, 1
  %i.bm = or disjoint i64 %i.bl, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc0b670ac4c7472d4E.exit

bb.o:                                             ; preds = %bb.l
  %i.bn = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71344), !noalias !71341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71345), !noalias !71341
  %.not15.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread120, %bb.o
  %i.bo = phi i64 [ %i.bn, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread120 ]
  %.sroa.0.0.i.i118125129 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h39d859869ac8b2b8E.exit.i.thread120 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.0.0.i.i118125129
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bz, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bq = xor i64 %.sroa.0.014.i.i, -1
  %i.br = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bs = getelementptr [368 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i39
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i39 ], [ %i.bw, %.preheader.i.i.i.i.i ] ; 4 uses
  %i.bt = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71346), !noalias !71341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71347), !noalias !71341
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !71348, !noalias !71349
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !71350, !noalias !71351
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.bu, align 8, !alias.scope !71348, !noalias !71349
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.bv, align 8, !alias.scope !71350, !noalias !71351
  %i.bw = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71352), !noalias !71341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71353), !noalias !71341
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.bx, align 8, !alias.scope !71354, !noalias !71355
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.by, align 8, !alias.scope !71356, !noalias !71357
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.bx, align 8, !alias.scope !71354, !noalias !71355
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.by, align 8, !alias.scope !71356, !noalias !71357
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.bw, 46
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i, label %.preheader.i.i.i.i.i

_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.bz = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bz, %i.bo
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17hc0b670ac4c7472d4E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.bm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit" ], [ %i.bk, %bb.n ], [ %i.bi, %bb.m ] ; 2 uses
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

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hc0b670ac4c7472d4E.exit
  %.sroa.026.0 = phi i8 [ %i.ci, %_ZN4core5slice4sort6stable5drift10create_run17hc0b670ac4c7472d4E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hc0b670ac4c7472d4E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cj = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cj, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph81, %_ZN4core5slice4sort6stable5drift13logical_merge17h7aae15b2f7c51f00E.exit
  %.sroa.02.180 = phi i64 [ %.sroa.02.0, %.lr.ph81 ], [ %i.cl, %_ZN4core5slice4sort6stable5drift13logical_merge17h7aae15b2f7c51f00E.exit ] ; 2 uses
  %.sroa.018.179 = phi i64 [ %.sroa.018.0, %.lr.ph81 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7aae15b2f7c51f00E.exit ] ; 4 uses
  %i.cl = add i64 %.sroa.02.180, -1               ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.cn, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h7aae15b2f7c51f00E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.179, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7aae15b2f7c51f00E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.180, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h7aae15b2f7c51f00E.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cp, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !41 ; 3 uses
  %i.cs = lshr i64 %i.cr, 1                       ; 8 uses
  %i.ct = lshr i64 %.sroa.018.179, 1              ; 6 uses
  %i.cu = add nuw i64 %i.cs, %i.ct                ; 4 uses
  %i.cv = sub i64 %.sroa.09.0, %i.cu
  %i.cw = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %i.cv ; 6 uses
  %i.cx = icmp ugt i64 %i.cu, %3
  %i.cy = trunc i64 %.sroa.018.179 to i1
  %i.cz = or i64 %i.cr, %.sroa.018.179
  %i.da = trunc i64 %i.cz to i1
  %or.cond3.i = or i1 %i.cx, %i.da
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i64 %i.cr to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dc = shl i64 %i.cu, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7aae15b2f7c51f00E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cy, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dd = or i64 %i.cs, 1
  %i.de = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7a0ea524b4c452d7E(ptr noalias noundef nonnull align 8 %i.cw, i64 noundef %i.cs, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71324
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit35": ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [368 x i8], ptr %i.cw, i64 %i.cs
  %i.dj = or i64 %i.ct, 1
  %i.dk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7a0ea524b4c452d7E(ptr noalias noundef nonnull align 8 %i.di, i64 noundef %i.ct, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71324
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit35", %bb.u
  %i.do = icmp eq i64 %i.cs, 0
  %i.dp = icmp eq i64 %i.ct, 0
  %or.cond.i = or i1 %i.dp, %i.do
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h9cbad53d83940fd0E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 range(i64 0, -9223372036854775808) %i.cs) ; 2 uses
  %i.dq = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dq, label %_ZN4core5slice4sort6stable5merge5merge17h9cbad53d83940fd0E.exit, label %bb.y

end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h748e7433b3cda089E:bb.a
  %i.go = getelementptr inbounds i8, ptr %i.fq, i64 -32
  %.val5.i.i.i.i.i = load i64, ptr %i.go, align 8, !alias.scope !71530, !noalias !71531, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i.i.i, i64 %.val5.i.i.i.i.i)
  %i.gp = sub i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  %i.gq = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val4.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i), !alias.scope !71532, !noalias !71533 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp eq i32 %i.gq, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.gs, i64 %i.gp, i64 %i.gr
  %i.gt = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  br label %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.gu = icmp ult i64 %i.gg, %i.gi
  br label %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i.i

_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.gt, %bb.aj ], [ %i.gu, %bb.ak ], [ %i.gk, %bb.ai ], [ %i.ge, %bb.ag ] ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i.i.i, ptr %i.fr, ptr %i.fs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ft, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !71521, !noalias !71534
  %i.gv = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %i.gw = zext i1 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [48 x i8], ptr %i.fr, i64 %i.gw ; 3 uses
  %i.gy = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.gz = getelementptr inbounds nuw [48 x i8], ptr %i.fs, i64 %i.gy ; 3 uses
  %i.ha = icmp eq ptr %i.gx, %i.er
  %i.hb = icmp eq ptr %i.gz, %2
  %or.cond.i.i = select i1 %i.ha, i1 true, i1 %i.hb
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdb01ee92b6c2a72dE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %bb.ao
  %i.hc = phi ptr [ %i.ii, %bb.ao ], [ %i.er, %bb.ae ] ; 2 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ih, %bb.ao ], [ %i.fm, %bb.ae ] ; 10 uses
  %i.hd = phi ptr [ %i.ig, %bb.ao ], [ %2, %bb.ae ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71540)
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 24
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !71541, !noalias !71542, !noundef !41 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !71543, !noalias !71544, !noundef !41 ; 2 uses
  %i.hi = icmp eq i64 %i.hf, %i.hh
  br i1 %i.hi, label %bb.al, label %.split3.i.i

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 32
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !71541, !noalias !71542, !noundef !41 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !71543, !noalias !71544, !noundef !41 ; 2 uses
  %i.hn = icmp eq i64 %i.hk, %i.hm
  br i1 %i.hn, label %bb.am, label %.split4.i.i

.split3.i.i:                                      ; preds = %.lr.ph.i.i
  %i.ho = icmp ult i64 %i.hf, %i.hh
  br i1 %i.ho, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 40
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !71541, !noalias !71542, !noundef !41 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !71543, !noalias !71544, !noundef !41 ; 2 uses
  %i.ht = icmp eq i64 %i.hq, %i.hs
  br i1 %i.ht, label %.split.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i20.i

.split4.i.i:                                      ; preds = %bb.al
  %i.hu = icmp ult i64 %i.hk, %i.hm
  br i1 %i.hu, label %bb.ao, label %bb.an

.split.i.i:                                       ; preds = %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 8
  %.val.i.i.i.i21.i = load ptr, ptr %i.hv, align 8, !alias.scope !71541, !noalias !71542, !nonnull !41, !noundef !41
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 16
  %.val3.i.i.i.i22.i = load i64, ptr %i.hw, align 8, !alias.scope !71541, !noalias !71542, !noundef !41 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.val4.i.i.i.i23.i = load ptr, ptr %i.hx, align 8, !alias.scope !71543, !noalias !71544, !nonnull !41, !noundef !41
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %.val5.i.i.i.i24.i = load i64, ptr %i.hy, align 8, !alias.scope !71543, !noalias !71544, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i.i25.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i.i22.i, i64 %.val5.i.i.i.i24.i)
  %i.hz = sub i64 %.val3.i.i.i.i22.i, %.val5.i.i.i.i24.i
  %i.ia = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i21.i, ptr nonnull readonly align 1 %.val4.i.i.i.i23.i, i64 %..i.i.i.i.i.i.i25.i), !alias.scope !71545, !noalias !71546 ; 2 uses
  %i.ib = sext i32 %i.ia to i64
  %i.ic = icmp eq i32 %i.ia, 0
  %spec.store.select.i.i.i.i.i.i.i26.i = select i1 %i.ic, i64 %i.hz, i64 %i.ib
  %i.id = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i26.i, 0
  br i1 %i.id, label %bb.ao, label %bb.an

_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i20.i: ; preds = %bb.am
  %i.ie = icmp ult i64 %i.hq, %i.hs
  br i1 %i.ie, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i20.i, %.split.i.i, %.split4.i.i, %.split3.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i20.i, %.split.i.i, %.split4.i.i, %.split3.i.i
  %i.if = phi i64 [ 1, %bb.an ], [ 0, %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i20.i ], [ 0, %.split.i.i ], [ 0, %.split3.i.i ], [ 0, %.split4.i.i ]
  %.sroa.0.0.i.i.i2.i.i = phi i64 [ 0, %bb.an ], [ 1, %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i20.i ], [ 1, %.split.i.i ], [ 1, %.split3.i.i ], [ 1, %.split4.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.hd, %bb.an ], [ %.sroa.0.06.i.i, %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i20.i ], [ %.sroa.0.06.i.i, %.split.i.i ], [ %.sroa.0.06.i.i, %.split3.i.i ], [ %.sroa.0.06.i.i, %.split4.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05.0.i.i, i64 48, i1 false), !alias.scope !71521, !noalias !71547
  %i.ig = getelementptr inbounds nuw [48 x i8], ptr %i.hd, i64 %i.if ; 3 uses
  %i.ih = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.06.i.i, i64 %.sroa.0.0.i.i.i2.i.i ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hc, i64 48 ; 2 uses
  %i.ij = icmp ne ptr %i.ig, %i.fo
  %i.ik = icmp ne ptr %i.ih, %i.ef
  %or.cond.i19.i = select i1 %i.ij, i1 %i.ik, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdb01ee92b6c2a72dE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdb01ee92b6c2a72dE.exit.i": ; preds = %bb.ao, %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.gx, %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i.i ], [ %i.ii, %bb.ao ]
  %.sroa.7.0.i = phi ptr [ %i.gz, %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i.i ], [ %i.fo, %bb.ao ]
  %.sroa.0.1.i = phi ptr [ %2, %_ZN4core3ops8function5FnMut8call_mut17h47e571bd24ce34d5E.exit.i.i ], [ %i.ig, %bb.ao ] ; 2 uses
  %i.il = ptrtoint ptr %.sroa.7.0.i to i64
  %i.im = ptrtoint ptr %.sroa.0.1.i to i64
  %i.in = sub nuw i64 %i.il, %i.im
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.in, i1 false), !alias.scope !71521, !noalias !71548
  br label %_ZN4core5slice4sort6stable5merge5merge17hf7649ace42495395E.exit

_ZN4core5slice4sort6stable5merge5merge17hf7649ace42495395E.exit: ; preds = %bb.ac, %bb.ad, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdb01ee92b6c2a72dE.exit.i"
  %i.io = shl i64 %i.ep, 1
  %i.ip = or disjoint i64 %i.io, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h94ac9fd5fcd0e9f1E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h94ac9fd5fcd0e9f1E.exit: ; preds = %bb.z, %_ZN4core5slice4sort6stable5merge5merge17hf7649ace42495395E.exit
  %.sroa.0.0.i = phi i64 [ %i.ip, %_ZN4core5slice4sort6stable5merge5merge17hf7649ace42495395E.exit ], [ %i.ex, %bb.z ] ; 2 uses
  %i.iq = icmp ugt i64 %i.eg, 1
  br i1 %i.iq, label %bb.w, label %._crit_edge

bb.ap:                                            ; preds = %._crit_edge
  %i.ir = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.is = lshr i64 %.sroa.023.0, 1
  %i.it = add i64 %i.is, %.sroa.09.0
  br label %bb.f

bb.aq:                                            ; preds = %._crit_edge
  %i.iu = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.iu, 0
  br i1 %.not31, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.iv = or i64 %1, 1
  %i.iw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.iv, i1 true)
  %i.ix = trunc nuw nsw i64 %i.iw to i32
  %i.iy = shl nuw nsw i32 %i.ix, 1
  %i.iz = xor i32 %i.iy, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5b6f358627c32848E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.iz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 1 %5), !inline_history !71430
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %bb.as
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8785552075c0e620E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i101 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i106 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.el, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ej, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h788d9f705b90718dE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h788d9f705b90718dE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71623)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread104, %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h788d9f705b90718dE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h788d9f705b90718dE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc5c42bca0f10177E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !71623, !noalias !71624, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 32
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !71623, !noalias !71624, !noundef !41 ; 4 uses
  %.val16.i = load ptr, ptr %i.m, align 8, !alias.scope !71623, !noalias !71624, !nonnull !41, !align !46, !noundef !41
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val17.i = load i64, ptr %i.q, align 8, !alias.scope !71623, !noalias !71624, !noundef !41 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.r = sub i64 %.val15.i, %.val17.i
  %i.s = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !71625, !noalias !71626 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.u, i64 %i.r, i64 %i.t
  %i.v = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.v, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread104, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.ad, %bb.j ], [ 2, %.preheader54 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %6 = add i64 %.sroa.01.0.i.i59, -1
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %.val10.i = load ptr, ptr %i.w, align 8, !alias.scope !71623, !noalias !71624, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val11.i = load i64, ptr %i.x, align 8, !alias.scope !71623, !noalias !71624, !noundef !41 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.y = sub i64 %.val11.i, %.val13.i
  %i.z = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !71627, !noalias !71626 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ab, i64 %i.y, i64 %i.aa
  %i.ac = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ac, label %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.al, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %8 = add i64 %.sroa.01.1.i.i62, -1
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !71623, !noalias !71624, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val7.i = load i64, ptr %i.af, align 8, !alias.scope !71623, !noalias !71624, !noundef !41 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ag = sub i64 %.val7.i, %.val9.i
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !71628, !noalias !71626 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.aj, i64 %i.ag, i64 %i.ai
  %i.ak = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.ak, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.al = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.al, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.am = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.am)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread104: ; preds = %.preheader
  br i1 %.not5.i106, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i101, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc5c42bca0f10177E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i
  br i1 %i.v, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc5c42bca0f10177E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.an = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hfd06e6ed218e3ad7E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc8e3c723dc3c5622E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71580
  %i.ao = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hfd06e6ed218e3ad7E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc5c42bca0f10177E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread ], [ %.sroa.0.0.i.i102109113, %.lr.ph.i.i38 ]
  %i.aq = shl i64 %.sroa.0.0.i.i4952, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hfd06e6ed218e3ad7E.exit

bb.o:                                             ; preds = %bb.l
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71629), !noalias !71624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71630), !noalias !71624
  %.not15.i.i = icmp eq i64 %i.as, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc5c42bca0f10177E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread104, %bb.o
  %i.at = phi i64 [ %i.as, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread104 ]
  %.sroa.0.0.i.i102109113 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h395079485677edd6E.exit.i.thread104 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.0.i.i102109113
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bc, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.014.i.i, -1
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 3 uses
  %i.ax = getelementptr [24 x i8], ptr %i.au, i64 %i.av ; 3 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !71631, !noalias !71632
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !71633, !noalias !71634
  store <2 x i64> %i.az, ptr %i.aw, align 8, !alias.scope !71631, !noalias !71632
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !alias.scope !71633, !noalias !71634
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71635), !noalias !71624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71636), !noalias !71624
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !71637, !noalias !71638
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !71639, !noalias !71640
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.ba, align 8, !alias.scope !71637, !noalias !71638
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bb, align 8, !alias.scope !71639, !noalias !71640
  %i.bc = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, %i.at
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc5c42bca0f10177E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17hfd06e6ed218e3ad7E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc5c42bca0f10177E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ar, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc5c42bca0f10177E.exit" ], [ %i.ap, %bb.n ], [ %i.an, %bb.m ] ; 2 uses
  %i.bd = lshr i64 %.sroa.018.0, 1
  %i.be = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bf = sub i64 %factor, %i.bd
  %i.bg = add i64 %i.be, %factor
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hfd06e6ed218e3ad7E.exit
  %.sroa.026.0 = phi i8 [ %i.bl, %_ZN4core5slice4sort6stable5drift10create_run17hfd06e6ed218e3ad7E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hfd06e6ed218e3ad7E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bm = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bm, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h82d3ad481ec01e74E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bo, %_ZN4core5slice4sort6stable5drift13logical_merge17h82d3ad481ec01e74E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h82d3ad481ec01e74E.exit ] ; 4 uses
  %i.bo = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.bq, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h82d3ad481ec01e74E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h82d3ad481ec01e74E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h82d3ad481ec01e74E.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !41 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 8 uses
  %i.bw = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.by ; 6 uses
  %i.ca = icmp ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.018.167 to i1
  %i.cc = or i64 %i.bu, %.sroa.018.167
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cf = shl i64 %i.bx, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h82d3ad481ec01e74E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cb, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h788d9f705b90718dE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc8e3c723dc3c5622E(ptr noalias noundef nonnull align 8 %i.bz, i64 noundef %i.bv, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71593
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h788d9f705b90718dE.exit35": ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.bv
  %i.cm = or i64 %i.bw, 1
  %i.cn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc8e3c723dc3c5622E(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71593
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h788d9f705b90718dE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71642)
  %i.cr = icmp eq i64 %i.bv, 0
  %i.cs = icmp eq i64 %i.bw, 0
  %or.cond.i = or i1 %i.cs, %i.cr
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h00943557eb8a07abE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.ct = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.ct, label %_ZN4core5slice4sort6stable5merge5merge17h00943557eb8a07abE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.bv ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bv, %i.bw  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cu, ptr %i.bz
  %i.cv = mul i64 %.sroa.0.0.i.i36, 24            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cv, i1 false), !alias.scope !71643
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.cx = phi ptr [ %i.dl, %.preheader.i ], [ %i.cw, %bb.y ] ; 2 uses
  %i.cy = phi ptr [ %i.dk, %.preheader.i ], [ %i.cu, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.db, %.preheader.i ], [ %i.bn, %bb.y ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -24 ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 -24 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.da, align 8, !alias.scope !71642, !noalias !71644, !nonnull !41, !align !46, !noundef !41
  %i.dc = getelementptr i8, ptr %i.cx, i64 -16
  %.val10.i.i = load i64, ptr %i.dc, align 8, !alias.scope !71642, !noalias !71644, !noundef !41 ; 2 uses
  %.val11.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !71641, !noalias !71645, !nonnull !41, !align !46, !noundef !41
  %i.dd = getelementptr i8, ptr %i.cy, i64 -16
  %.val12.i.i = load i64, ptr %i.dd, align 8, !alias.scope !71641, !noalias !71645, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.de = sub i64 %.val10.i.i, %.val12.i.i
  %i.df = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !71646, !noalias !71647 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp eq i32 %i.df, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.dh, i64 %i.de, i64 %i.dg ; 2 uses
  %i.di = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.di, ptr %i.da, ptr %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !71643, !noalias !71648
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.dj ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dm = icmp eq ptr %i.dk, %i.bz
  %i.dn = icmp eq ptr %i.dl, %2
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7728f8ba3f17ea59E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.do = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.bz, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cu, %bb.y ] ; 4 uses
  %i.dp = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !71641, !noalias !71649, !nonnull !41, !align !46, !noundef !41
  %i.dq = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dq, align 8, !alias.scope !71641, !noalias !71649, !noundef !41 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.dp, align 8, !alias.scope !71642, !noalias !71650, !nonnull !41, !align !46, !noundef !41
  %i.dr = getelementptr i8, ptr %i.dp, i64 8
  %.val7.i.i = load i64, ptr %i.dr, align 8, !alias.scope !71642, !noalias !71650, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ds = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.dt = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !71651, !noalias !71652 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp eq i32 %i.dt, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.dv, i64 %i.ds, i64 %i.du ; 2 uses
  %i.dw = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.dw, ptr %i.dp, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !alias.scope !71643, !noalias !71653
  %i.dx = zext i1 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.dx ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.eb = icmp ne ptr %i.dy, %i.cw
  %i.ec = icmp ne ptr %i.dz, %i.bn
  %or.cond.i23.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7728f8ba3f17ea59E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7728f8ba3f17ea59E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.ea, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dl, %.preheader.i ], [ %i.cw, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dy, %.lr.ph.i.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ef, i1 false), !alias.scope !71643, !noalias !71654
  br label %_ZN4core5slice4sort6stable5merge5merge17h00943557eb8a07abE.exit

_ZN4core5slice4sort6stable5merge5merge17h00943557eb8a07abE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h7728f8ba3f17ea59E.exit.i"
  %i.eg = shl i64 %i.bx, 1
  %i.eh = or disjoint i64 %i.eg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h82d3ad481ec01e74E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h82d3ad481ec01e74E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h00943557eb8a07abE.exit
  %.sroa.0.0.i = phi i64 [ %i.eh, %_ZN4core5slice4sort6stable5merge5merge17h00943557eb8a07abE.exit ], [ %i.cf, %bb.t ] ; 2 uses
  %i.ei = icmp ugt i64 %i.bo, 1
  br i1 %i.ei, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ej = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ek = lshr i64 %.sroa.023.0, 1
  %i.el = add i64 %i.ek, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.em = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.em, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = or i64 %1, 1
  %i.eo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = xor i32 %i.eq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc8e3c723dc3c5622E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71593
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hcdccbe9fa4f9b0e5E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i109 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i115 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dg, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.de, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread113, %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = tail call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.m), !noalias !71675
  %i.q = icmp eq i8 %i.p, -1                      ; 2 uses
  %.not82 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not82, label %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not82, label %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread113, label %.lr.ph69

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.sroa.01.0.i.i65 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader50 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.0.i.i65
  %6 = add i64 %.sroa.01.0.i.i65, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %6
  %i.s = tail call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %8), !noalias !71675
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i65, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i, label %.lr.ph

.lr.ph69:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i68 = phi i64 [ %i.y, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.1.i.i68
  %9 = add i64 %.sroa.01.1.i.i68, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.l
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %9
  %i.w = tail call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %11), !noalias !71675
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i

bb.k:                                             ; preds = %.lr.ph69
  %i.y = add nuw i64 %.sroa.01.1.i.i68, 1         ; 2 uses
  %exitcond95.not = icmp eq i64 %i.y, %i.l
  br i1 %exitcond95.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i, label %.lr.ph69

_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph69
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i68, %.lr.ph69 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i65, %.lr.ph ], [ %i.l, %bb.j ] ; 4 uses
  %i.z = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread113: ; preds = %.preheader
  br i1 %.not5.i115, label %bb.g, label %.thread116

_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i109, label %bb.g, label %.thread

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i
  br i1 %i.q, label %.thread116, label %.thread

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aa = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h2f6f372d1281fce8E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd4fb218250ea95ceE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71658
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h2f6f372d1281fce8E.exit

.thread:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread, %bb.h, %.thread116, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i110118, %.thread116 ], [ %i.l, %bb.h ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread ]
  %i.ad = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h2f6f372d1281fce8E.exit

.thread116:                                       ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread113, %bb.l
  %.sroa.0.0.i.i110118 = phi i64 [ %.sroa.0.0.i.i, %bb.l ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h6e7999d6cb48794bE.exit.i.thread113 ] ; 2 uses
  tail call fastcc void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0029d6fd3d4cf593E"(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i.i110118), !noalias !71675, !inline_history !71658
  br label %.thread

_ZN4core5slice4sort6stable5drift10create_run17h2f6f372d1281fce8E.exit: ; preds = %bb.m, %bb.n, %.thread
  %.sroa.0.0.i34 = phi i64 [ %i.ae, %.thread ], [ %i.ac, %bb.n ], [ %i.aa, %bb.m ] ; 2 uses
  %i.af = lshr i64 %.sroa.018.0, 1
  %i.ag = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ah = sub i64 %factor, %i.af
  %i.ai = add i64 %i.ag, %factor
  %i.aj = mul i64 %i.ah, %.sroa.0.0
  %i.ak = mul i64 %i.ai, %.sroa.0.0
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 false)
  %i.an = trunc nuw nsw i64 %i.am to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h2f6f372d1281fce8E.exit
  %.sroa.026.0 = phi i8 [ %i.an, %_ZN4core5slice4sort6stable5drift10create_run17h2f6f372d1281fce8E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h2f6f372d1281fce8E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.ao = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ao, label %.lr.ph75, label %._crit_edge

.lr.ph75:                                         ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph75, %_ZN4core5slice4sort6stable5drift13logical_merge17h13f68d0531268c38E.exit
  %.sroa.02.174 = phi i64 [ %.sroa.02.0, %.lr.ph75 ], [ %i.aq, %_ZN4core5slice4sort6stable5drift13logical_merge17h13f68d0531268c38E.exit ] ; 2 uses
  %.sroa.018.173 = phi i64 [ %.sroa.018.0, %.lr.ph75 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h13f68d0531268c38E.exit ] ; 4 uses
  %i.aq = add i64 %.sroa.02.174, -1               ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.as, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h13f68d0531268c38E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.173, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h13f68d0531268c38E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.174, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h13f68d0531268c38E.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.au, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aq
  %i.aw = load i64, ptr %i.av, align 8, !noundef !41 ; 3 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 8 uses
  %i.ay = lshr i64 %.sroa.018.173, 1              ; 6 uses
  %i.az = add nuw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = sub i64 %.sroa.09.0, %i.az
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %i.ba ; 6 uses
  %i.bc = icmp ugt i64 %i.az, %3
  %i.bd = trunc i64 %.sroa.018.173 to i1
  %i.be = or i64 %i.aw, %.sroa.018.173
  %i.bf = trunc i64 %i.be to i1
  %or.cond3.i = or i1 %i.bc, %i.bf
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = trunc i64 %i.aw to i1
  br i1 %i.bg, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bh = shl i64 %i.az, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h13f68d0531268c38E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.bd, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.bi = or i64 %i.ax, 1
  %i.bj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = xor i32 %i.bl, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd4fb218250ea95ceE(ptr noalias noundef nonnull align 8 %i.bb, i64 noundef %i.ax, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71659
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit35": ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %i.ax
  %i.bo = or i64 %i.ay, 1
  %i.bp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = xor i32 %i.br, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd4fb218250ea95ceE(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef %i.ay, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71659
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit35", %bb.t
  %i.bt = icmp eq i64 %i.ax, 0
  %i.bu = icmp eq i64 %i.ay, 0
  %or.cond.i = or i1 %i.bu, %i.bt
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hcaa70c4dfc722991E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 range(i64 0, -9223372036854775808) %i.ax) ; 2 uses
  %i.bv = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.bv, label %_ZN4core5slice4sort6stable5merge5merge17hcaa70c4dfc722991E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %i.ax ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ax, %i.ay  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.bw, ptr %i.bb
  %i.bx = shl i64 %.sroa.0.0.i.i36, 7             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.bx, i1 false), !alias.scope !71676
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cg, %.noexc.i ], [ %i.bw, %bb.x ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.ci, %.noexc.i ], [ %i.by, %bb.x ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cc, %.noexc.i ], [ %i.ap, %bb.x ]
  %i.bz = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -128 ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -128 ; 3 uses
  %i.cb = invoke noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bz)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %.preheader.i
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -128 ; 2 uses
  %i.cd = icmp eq i8 %i.cb, -1                    ; 3 uses
  %..i.i = select i1 %i.cd, ptr %i.bz, ptr %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cc, ptr noundef nonnull align 8 dereferenceable(128) %..i.i, i64 128, i1 false), !alias.scope !71676, !noalias !71677
  %i.ce = xor i1 %i.cd, true
  %i.cf = zext i1 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %i.bz, i64 %i.cf ; 3 uses
  %i.ch = zext i1 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %i.ca, i64 %i.ch ; 3 uses
  %i.cj = icmp eq ptr %i.cg, %i.bb
  %i.ck = icmp eq ptr %i.ci, %2
  %or.cond.i.i = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8cf350e6d5addcc1E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.cs, %.noexc20.i ], [ %i.bb, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.cp, %.noexc20.i ], [ %2, %bb.x ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cr, %.noexc20.i ], [ %i.bw, %bb.x ] ; 3 uses
  %i.cl = invoke noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.0.02.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i38)
          to label %.noexc20.i unwind label %.loopexit.split-lp.i

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.cm = icmp eq i8 %i.cl, -1                    ; 3 uses
  %i.cn = xor i1 %i.cm, true
  %spec.select.i.i = select i1 %i.cm, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(128) %spec.select.i.i, i64 128, i1 false), !alias.scope !71676, !noalias !71678
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.0.i38, i64 %i.co ; 3 uses
  %i.cq = zext i1 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.02.i.i, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 128 ; 2 uses
  %i.ct = icmp ne ptr %i.cp, %i.by
  %i.cu = icmp ne ptr %i.cr, %i.ap
  %or.cond.i19.i = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8cf350e6d5addcc1E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8cf350e6d5addcc1E.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cg, %.noexc.i ], [ %i.cs, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.ci, %.noexc.i ], [ %i.by, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.cp, %.noexc20.i ] ; 2 uses
  %i.cv = ptrtoint ptr %.sroa.7.2.i to i64
  %i.cw = ptrtoint ptr %.sroa.0.3.i to i64
  %i.cx = sub nuw i64 %i.cv, %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.cx, i1 false), !alias.scope !71676, !noalias !71679
  br label %_ZN4core5slice4sort6stable5merge5merge17hcaa70c4dfc722991E.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.by, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.cy = ptrtoint ptr %.sroa.7.1.i to i64
  %i.cz = ptrtoint ptr %.sroa.0.2.i to i64
  %i.da = sub nuw i64 %i.cy, %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.da, i1 false), !alias.scope !71676, !noalias !71680
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hcaa70c4dfc722991E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8cf350e6d5addcc1E.exit.i"
  %i.db = shl i64 %i.az, 1
  %i.dc = or disjoint i64 %i.db, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h13f68d0531268c38E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h13f68d0531268c38E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17hcaa70c4dfc722991E.exit
  %.sroa.0.0.i = phi i64 [ %i.dc, %_ZN4core5slice4sort6stable5merge5merge17hcaa70c4dfc722991E.exit ], [ %i.bh, %bb.s ] ; 2 uses
  %i.dd = icmp ugt i64 %i.aq, 1
  br i1 %i.dd, label %bb.p, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.de = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.df = lshr i64 %.sroa.023.0, 1
  %i.dg = add i64 %i.df, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dh = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dh, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.di = or i64 %1, 1
  %i.dj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd4fb218250ea95ceE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71659
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd56c0c8393a0344eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i117 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i122 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ft, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fr, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread120, %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 552
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.q = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o), !noalias !71723 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.s = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p), !noalias !71724 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 1        ; 2 uses
  %..i.i45 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t)
  %i.u = sub i64 %i.r, %i.t
  %i.v = extractvalue { ptr, i64 } %i.s, 0
  %i.w = extractvalue { ptr, i64 } %i.q, 0
  %i.x = tail call i32 @memcmp(ptr %i.w, ptr %i.v, i64 %..i.i45), !noalias !71724 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %spec.store.select.i.i46 = select i1 %i.z, i64 %i.u, i64 %i.y
  %i.aa = icmp slt i64 %spec.store.select.i.i46, 0 ; 2 uses
  %.not88 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.aa, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %bb.i
  br i1 %.not88, label %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not88, label %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread120, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader56, %bb.j
  %.sroa.01.0.i.i71 = phi i64 [ %i.aq, %bb.j ], [ 2, %.preheader56 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.01.0.i.i71
  %6 = add i64 %.sroa.01.0.i.i71, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %i.ac = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 184
  %i.af = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ad), !noalias !71725 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1      ; 2 uses
  %i.ah = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ae), !noalias !71724 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  %..i.i43 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ai)
  %i.aj = sub i64 %i.ag, %i.ai
  %i.ak = extractvalue { ptr, i64 } %i.ah, 0
  %i.al = extractvalue { ptr, i64 } %i.af, 0
  %i.am = tail call i32 @memcmp(ptr %i.al, ptr %i.ak, i64 %..i.i43), !noalias !71724 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %spec.store.select.i.i44 = select i1 %i.ao, i64 %i.aj, i64 %i.an
  %i.ap = icmp slt i64 %spec.store.select.i.i44, 0
  br i1 %i.ap, label %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aq = add nuw i64 %.sroa.01.0.i.i71, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i74 = phi i64 [ %i.bg, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.01.1.i.i74
  %8 = add i64 %.sroa.01.1.i.i74, -1              ; 2 uses
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %i.as = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 184
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  %i.av = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.at), !noalias !71726 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 1      ; 2 uses
  %i.ax = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.au), !noalias !71724 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %..i.i42 = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ay)
  %i.az = sub i64 %i.aw, %i.ay
  %i.ba = extractvalue { ptr, i64 } %i.ax, 0
  %i.bb = extractvalue { ptr, i64 } %i.av, 0
  %i.bc = tail call i32 @memcmp(ptr %i.bb, ptr %i.ba, i64 %..i.i42), !noalias !71724 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %spec.store.select.i.i = select i1 %i.be, i64 %i.az, i64 %i.bd
  %i.bf = icmp slt i64 %spec.store.select.i.i, 0
  br i1 %i.bf, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i

bb.k:                                             ; preds = %.lr.ph75
  %i.bg = add nuw i64 %.sroa.01.1.i.i74, 1        ; 2 uses
  %exitcond101.not = icmp eq i64 %i.bg, %i.l
  br i1 %exitcond101.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i, label %.lr.ph75

_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph75
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i74, %.lr.ph75 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i71, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.bh = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.bh)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread120: ; preds = %.preheader
  br i1 %.not5.i122, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread: ; preds = %.preheader56
  br i1 %.not5.i117, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i
  br i1 %i.aa, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.bi = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3b8bde317942550bE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h22f4615eb27d1f82E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71696
  %i.bj = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3b8bde317942550bE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i5154 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread ], [ %.sroa.0.0.i.i118125129, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i ]
  %i.bl = shl i64 %.sroa.0.0.i.i5154, 1
  %i.bm = or disjoint i64 %i.bl, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3b8bde317942550bE.exit

bb.o:                                             ; preds = %bb.l
  %i.bn = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71727), !noalias !71724
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71728), !noalias !71724
  %.not15.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread120, %bb.o
  %i.bo = phi i64 [ %i.bn, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread120 ]
  %.sroa.0.0.i.i118125129 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hb4dd84f0fe82989aE.exit.i.thread120 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.0.0.i.i118125129
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bz, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bq = xor i64 %.sroa.0.014.i.i, -1
  %i.br = getelementptr inbounds nuw [368 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bs = getelementptr [368 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i39
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i39 ], [ %i.bw, %.preheader.i.i.i.i.i ] ; 4 uses
  %i.bt = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71729), !noalias !71724
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71730), !noalias !71724
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !71731, !noalias !71732
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !71733, !noalias !71734
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.bu, align 8, !alias.scope !71731, !noalias !71732
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.bv, align 8, !alias.scope !71733, !noalias !71734
  %i.bw = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71735), !noalias !71724
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71736), !noalias !71724
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.bx, align 8, !alias.scope !71737, !noalias !71738
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.by, align 8, !alias.scope !71739, !noalias !71740
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.bx, align 8, !alias.scope !71737, !noalias !71738
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.by, align 8, !alias.scope !71739, !noalias !71740
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.bw, 46
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i, label %.preheader.i.i.i.i.i

_ZN4core10intrinsics25typed_swap_nonoverlapping17h0ce9f2b3ef749c94E.exit.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.bz = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bz, %i.bo
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h3b8bde317942550bE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.bm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1e89297bfc8782afE.exit" ], [ %i.bk, %bb.n ], [ %i.bi, %bb.m ] ; 2 uses
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

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h3b8bde317942550bE.exit
  %.sroa.026.0 = phi i8 [ %i.ci, %_ZN4core5slice4sort6stable5drift10create_run17h3b8bde317942550bE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h3b8bde317942550bE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cj = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cj, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph81, %_ZN4core5slice4sort6stable5drift13logical_merge17h940c5843c325f29bE.exit
  %.sroa.02.180 = phi i64 [ %.sroa.02.0, %.lr.ph81 ], [ %i.cl, %_ZN4core5slice4sort6stable5drift13logical_merge17h940c5843c325f29bE.exit ] ; 2 uses
  %.sroa.018.179 = phi i64 [ %.sroa.018.0, %.lr.ph81 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h940c5843c325f29bE.exit ] ; 4 uses
  %i.cl = add i64 %.sroa.02.180, -1               ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.cn, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h940c5843c325f29bE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.179, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h940c5843c325f29bE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.180, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h940c5843c325f29bE.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cp, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !41 ; 3 uses
  %i.cs = lshr i64 %i.cr, 1                       ; 8 uses
  %i.ct = lshr i64 %.sroa.018.179, 1              ; 6 uses
  %i.cu = add nuw i64 %i.cs, %i.ct                ; 4 uses
  %i.cv = sub i64 %.sroa.09.0, %i.cu
  %i.cw = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %i.cv ; 6 uses
  %i.cx = icmp ugt i64 %i.cu, %3
  %i.cy = trunc i64 %.sroa.018.179 to i1
  %i.cz = or i64 %i.cr, %.sroa.018.179
  %i.da = trunc i64 %i.cz to i1
  %or.cond3.i = or i1 %i.cx, %i.da
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i64 %i.cr to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dc = shl i64 %i.cu, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h940c5843c325f29bE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cy, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dd = or i64 %i.cs, 1
  %i.de = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h22f4615eb27d1f82E(ptr noalias noundef nonnull align 8 %i.cw, i64 noundef %i.cs, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71707
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit35": ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [368 x i8], ptr %i.cw, i64 %i.cs
  %i.dj = or i64 %i.ct, 1
  %i.dk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h22f4615eb27d1f82E(ptr noalias noundef nonnull align 8 %i.di, i64 noundef %i.ct, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71707
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h85ccdc9c65c08ca5E.exit35", %bb.u
  %i.do = icmp eq i64 %i.cs, 0
  %i.dp = icmp eq i64 %i.ct, 0
  %or.cond.i = or i1 %i.dp, %i.do
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h2c3e2694d2d1ed4fE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 range(i64 0, -9223372036854775808) %i.cs) ; 2 uses
  %i.dq = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dq, label %_ZN4core5slice4sort6stable5merge5merge17h2c3e2694d2d1ed4fE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw [368 x i8], ptr %i.cw, i64 %i.cs ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cs, %i.ct  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dr, ptr %i.cw
  %i.ds = mul i64 %.sroa.0.0.i.i36, 368           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ds, i1 false), !alias.scope !71741
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ds ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.noexc18.i
  %.sroa.13.0.i = phi ptr [ %i.el, %.noexc18.i ], [ %i.dr, %bb.y ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.em, %.noexc18.i ], [ %i.dt, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dw, %.noexc18.i ], [ %i.ck, %bb.y ]
  %i.du = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -368 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -368 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -368 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -184
  %i.dy = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dx)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dz = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -184
  %i.ea = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dz)
          to label %.noexc18.i unwind label %.loopexit.i ; 2 uses

.noexc18.i:                                       ; preds = %.noexc.i
  %i.eb = extractvalue { ptr, i64 } %i.dy, 1      ; 2 uses
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1      ; 2 uses
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.ec)
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = extractvalue { ptr, i64 } %i.ea, 0
  %i.ef = extractvalue { ptr, i64 } %i.dy, 0
  %i.eg = tail call i32 @memcmp(ptr %i.ef, ptr %i.ee, i64 %..i.i.i.i), !noalias !71742 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp eq i32 %i.eg, 0
  %spec.store.select.i.i.i.i = select i1 %i.ei, i64 %i.ed, i64 %i.eh ; 2 uses
  %i.ej = icmp sgt i64 %spec.store.select.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.ej, ptr %i.dv, ptr %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.dw, ptr noundef nonnull align 8 dereferenceable(368) %..i.i, i64 368, i1 false), !alias.scope !71741, !noalias !71742
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [368 x i8], ptr %i.du, i64 %i.ek ; 3 uses
  %spec.store.select.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i, 63
  %i.em = getelementptr inbounds nuw [368 x i8], ptr %i.dv, i64 %spec.store.select.i.i.lobit.i.i ; 3 uses
  %i.en = icmp eq ptr %i.el, %i.cw
  %i.eo = icmp eq ptr %i.em, %2
  %or.cond.i.i = select i1 %i.en, i1 true, i1 %i.eo
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h831cbb09b165a6a2E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.noexc25.i
  %.sroa.13.1.i = phi ptr [ %i.ff, %.noexc25.i ], [ %i.cw, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.fd, %.noexc25.i ], [ %2, %bb.y ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fe, %.noexc25.i ], [ %i.dr, %bb.y ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 184
  %i.eq = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ep)
          to label %.noexc24.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc24.i:                                       ; preds = %.lr.ph.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 184
  %i.es = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.er)
          to label %.noexc25.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc25.i:                                       ; preds = %.noexc24.i
  %i.et = extractvalue { ptr, i64 } %i.eq, 1      ; 2 uses
  %i.eu = extractvalue { ptr, i64 } %i.es, 1      ; 2 uses
  %..i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %i.et, i64 %i.eu)
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = extractvalue { ptr, i64 } %i.es, 0
  %i.ex = extractvalue { ptr, i64 } %i.eq, 0
  %i.ey = tail call i32 @memcmp(ptr %i.ex, ptr %i.ew, i64 %..i.i.i20.i), !noalias !71743 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp eq i32 %i.ey, 0
  %spec.store.select.i.i.i21.i = select i1 %i.fa, i64 %i.ev, i64 %i.ez ; 2 uses
  %i.fb = icmp sgt i64 %spec.store.select.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.fb, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(368) %spec.select.i.i, i64 368, i1 false), !alias.scope !71741, !noalias !71743
  %i.fc = zext i1 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [368 x i8], ptr %.sroa.0.0.i38, i64 %i.fc ; 3 uses
  %spec.store.select.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i21.i, 63
  %i.fe = getelementptr inbounds nuw [368 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.lobit.i22.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 368 ; 2 uses
  %i.fg = icmp ne ptr %i.fd, %i.dt
  %i.fh = icmp ne ptr %i.fe, %i.ck
  %or.cond.i23.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h831cbb09b165a6a2E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h831cbb09b165a6a2E.exit.i": ; preds = %.noexc25.i, %.noexc18.i
  %.sroa.13.4.i = phi ptr [ %i.el, %.noexc18.i ], [ %i.ff, %.noexc25.i ]
  %.sroa.7.2.i = phi ptr [ %i.em, %.noexc18.i ], [ %i.dt, %.noexc25.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc18.i ], [ %i.fd, %.noexc25.i ] ; 2 uses
  %i.fi = ptrtoint ptr %.sroa.7.2.i to i64
  %i.fj = ptrtoint ptr %.sroa.0.3.i to i64
  %i.fk = sub nuw i64 %i.fi, %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.fk, i1 false), !alias.scope !71741, !noalias !71744
  br label %_ZN4core5slice4sort6stable5merge5merge17h2c3e2694d2d1ed4fE.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %.noexc24.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.dt, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fl = ptrtoint ptr %.sroa.7.1.i to i64
  %i.fm = ptrtoint ptr %.sroa.0.2.i to i64
  %i.fn = sub nuw i64 %i.fl, %i.fm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.fn, i1 false), !alias.scope !71741, !noalias !71745
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h2c3e2694d2d1ed4fE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h831cbb09b165a6a2E.exit.i"
  %i.fo = shl i64 %i.cu, 1
  %i.fp = or disjoint i64 %i.fo, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h940c5843c325f29bE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h940c5843c325f29bE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h2c3e2694d2d1ed4fE.exit
  %.sroa.0.0.i = phi i64 [ %i.fp, %_ZN4core5slice4sort6stable5merge5merge17h2c3e2694d2d1ed4fE.exit ], [ %i.dc, %bb.t ] ; 2 uses
  %i.fq = icmp ugt i64 %i.cl, 1
  br i1 %i.fq, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.fr = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fs = lshr i64 %.sroa.023.0, 1
  %i.ft = add i64 %i.fs, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.fu = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fu, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fv = or i64 %1, 1
  %i.fw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fv, i1 true)
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = shl nuw nsw i32 %i.fx, 1
  %i.fz = xor i32 %i.fy, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h22f4615eb27d1f82E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(368) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71707
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd9a4b623aff8301dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gu, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gs, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h99714e4050dfea9cE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h99714e4050dfea9cE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71844)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h99714e4050dfea9cE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h99714e4050dfea9cE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h91fbfefa56b9a54cE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 248
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !71844, !noalias !71845, !nonnull !41, !noundef !41 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 256
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !71844, !noalias !71845, !noundef !41 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !71844, !noalias !71845, !nonnull !41, !noundef !41
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !71844, !noalias !71845, !noundef !41 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !71846, !noalias !71847 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 4 uses
  %i.x = getelementptr inbounds nuw [240 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %6 = add i64 %.sroa.01.0.i.i59, -1
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !71844, !noalias !71845, !nonnull !41, !noundef !41 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !71844, !noalias !71845, !noundef !41 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !71848, !noalias !71847 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [240 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %8 = add i64 %.sroa.01.1.i.i62, -1
  %9 = icmp ult i64 %8, %i.l
  tail call void @llvm.assume(i1 %9)
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !71844, !noalias !71845, !nonnull !41, !noundef !41 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !71844, !noalias !71845, !noundef !41 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !71849, !noalias !71847 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h91fbfefa56b9a54cE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h91fbfefa56b9a54cE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h72492e3894e781f0E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h24735121f8ce7a11E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(240) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71759
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h72492e3894e781f0E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h91fbfefa56b9a54cE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h72492e3894e781f0E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71850), !noalias !71845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71851), !noalias !71845
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h91fbfefa56b9a54cE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h05c66c3ce6b1d51cE.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [240 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.dh, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.014.i.i, -1
  %i.az = getelementptr inbounds nuw [240 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 16 uses
  %i.ba = getelementptr [240 x i8], ptr %i.ax, i64 %i.ay ; 16 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !71852, !noalias !71853
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !71854, !noalias !71855
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !71852, !noalias !71853
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !71854, !noalias !71855
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !71856, !noalias !71853
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !71857, !noalias !71855
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !71856, !noalias !71853
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !71857, !noalias !71855
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !71858, !noalias !71853
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !71859, !noalias !71855
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !alias.scope !71858, !noalias !71853
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !alias.scope !71859, !noalias !71855
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !71860, !noalias !71853
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !71861, !noalias !71855
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !alias.scope !71860, !noalias !71853
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !alias.scope !71861, !noalias !71855
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !71862, !noalias !71853
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !71863, !noalias !71855
  store <2 x i64> %i.bs, ptr %i.bp, align 8, !alias.scope !71862, !noalias !71853
  store <2 x i64> %i.br, ptr %i.bq, align 8, !alias.scope !71863, !noalias !71855
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 80 ; 2 uses
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !71864, !noalias !71853
  %i.bw = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !71865, !noalias !71855
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !alias.scope !71864, !noalias !71853
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !alias.scope !71865, !noalias !71855
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 96 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !71866, !noalias !71853
  %i.ca = load <2 x i64>, ptr %i.by, align 8, !alias.scope !71867, !noalias !71855
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !alias.scope !71866, !noalias !71853
  store <2 x i64> %i.bz, ptr %i.by, align 8, !alias.scope !71867, !noalias !71855
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 112 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 112 ; 2 uses
  %i.cd = load <2 x i64>, ptr %i.cb, align 8, !alias.scope !71868, !noalias !71853
  %i.ce = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !71869, !noalias !71855
  store <2 x i64> %i.ce, ptr %i.cb, align 8, !alias.scope !71868, !noalias !71853
  store <2 x i64> %i.cd, ptr %i.cc, align 8, !alias.scope !71869, !noalias !71855
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 128 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 128 ; 2 uses
  %i.ch = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !71870, !noalias !71853
  %i.ci = load <2 x i64>, ptr %i.cg, align 8, !alias.scope !71871, !noalias !71855
  store <2 x i64> %i.ci, ptr %i.cf, align 8, !alias.scope !71870, !noalias !71853
  store <2 x i64> %i.ch, ptr %i.cg, align 8, !alias.scope !71871, !noalias !71855
  %i.cj = getelementptr inbounds nuw i8, ptr %i.az, i64 144 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 144 ; 2 uses
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !71872, !noalias !71853
  %i.cm = load <2 x i64>, ptr %i.ck, align 8, !alias.scope !71873, !noalias !71855
  store <2 x i64> %i.cm, ptr %i.cj, align 8, !alias.scope !71872, !noalias !71853
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !alias.scope !71873, !noalias !71855
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 160 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 160 ; 2 uses
  %i.cp = load <2 x i64>, ptr %i.cn, align 8, !alias.scope !71874, !noalias !71853
  %i.cq = load <2 x i64>, ptr %i.co, align 8, !alias.scope !71875, !noalias !71855
  store <2 x i64> %i.cq, ptr %i.cn, align 8, !alias.scope !71874, !noalias !71853
  store <2 x i64> %i.cp, ptr %i.co, align 8, !alias.scope !71875, !noalias !71855
  %i.cr = getelementptr inbounds nuw i8, ptr %i.az, i64 176 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 176 ; 2 uses
  %i.ct = load <2 x i64>, ptr %i.cr, align 8, !alias.scope !71876, !noalias !71853
  %i.cu = load <2 x i64>, ptr %i.cs, align 8, !alias.scope !71877, !noalias !71855
  store <2 x i64> %i.cu, ptr %i.cr, align 8, !alias.scope !71876, !noalias !71853
  store <2 x i64> %i.ct, ptr %i.cs, align 8, !alias.scope !71877, !noalias !71855
  %i.cv = getelementptr inbounds nuw i8, ptr %i.az, i64 192 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ba, i64 192 ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !71878, !noalias !71853
  %i.cy = load <2 x i64>, ptr %i.cw, align 8, !alias.scope !71879, !noalias !71855
  store <2 x i64> %i.cy, ptr %i.cv, align 8, !alias.scope !71878, !noalias !71853
  store <2 x i64> %i.cx, ptr %i.cw, align 8, !alias.scope !71879, !noalias !71855
  %i.cz = getelementptr inbounds nuw i8, ptr %i.az, i64 208 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ba, i64 208 ; 2 uses
  %i.db = load <2 x i64>, ptr %i.cz, align 8, !alias.scope !71880, !noalias !71853
  %i.dc = load <2 x i64>, ptr %i.da, align 8, !alias.scope !71881, !noalias !71855
  store <2 x i64> %i.dc, ptr %i.cz, align 8, !alias.scope !71880, !noalias !71853
  store <2 x i64> %i.db, ptr %i.da, align 8, !alias.scope !71881, !noalias !71855
  %i.dd = getelementptr inbounds nuw i8, ptr %i.az, i64 224 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ba, i64 224 ; 2 uses
  %i.df = load <2 x i64>, ptr %i.dd, align 8, !alias.scope !71882, !noalias !71853
  %i.dg = load <2 x i64>, ptr %i.de, align 8, !alias.scope !71883, !noalias !71855
  store <2 x i64> %i.dg, ptr %i.dd, align 8, !alias.scope !71882, !noalias !71853
  store <2 x i64> %i.df, ptr %i.de, align 8, !alias.scope !71883, !noalias !71855
  %i.dh = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dh, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h91fbfefa56b9a54cE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h72492e3894e781f0E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h91fbfefa56b9a54cE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h91fbfefa56b9a54cE.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.di = lshr i64 %.sroa.018.0, 1
  %i.dj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.dk = sub i64 %factor, %i.di
  %i.dl = add i64 %i.dj, %factor
  %i.dm = mul i64 %i.dk, %.sroa.0.0
  %i.dn = mul i64 %i.dl, %.sroa.0.0
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.do, i1 false)
  %i.dq = trunc nuw nsw i64 %i.dp to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h72492e3894e781f0E.exit
  %.sroa.026.0 = phi i8 [ %i.dq, %_ZN4core5slice4sort6stable5drift10create_run17h72492e3894e781f0E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h72492e3894e781f0E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.dr = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.dr, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hcc138ec91bf3924fE.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.dt, %_ZN4core5slice4sort6stable5drift13logical_merge17hcc138ec91bf3924fE.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hcc138ec91bf3924fE.exit ] ; 4 uses
  %i.dt = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.dv, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hcc138ec91bf3924fE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hcc138ec91bf3924fE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hcc138ec91bf3924fE.exit ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.dw, align 8
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17hd9a4b623aff8301dE:bb.a
bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.eg, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h99714e4050dfea9cE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.el = or i64 %i.ea, 1
  %i.em = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.el, i1 true)
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 1
  %i.ep = xor i32 %i.eo, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h24735121f8ce7a11E(ptr noalias noundef nonnull align 8 %i.ee, i64 noundef %i.ea, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(240) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71826
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h99714e4050dfea9cE.exit35": ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw [240 x i8], ptr %i.ee, i64 %i.ea
  %i.er = or i64 %i.eb, 1
  %i.es = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = xor i32 %i.eu, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h24735121f8ce7a11E(ptr noalias noundef nonnull align 8 %i.eq, i64 noundef %i.eb, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(240) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71826
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h99714e4050dfea9cE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71885)
  %i.ew = icmp eq i64 %i.ea, 0
  %i.ex = icmp eq i64 %i.eb, 0
  %or.cond.i = or i1 %i.ex, %i.ew
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha697ac2368bd196fE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ey = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.ey, label %_ZN4core5slice4sort6stable5merge5merge17ha697ac2368bd196fE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw [240 x i8], ptr %i.ee, i64 %i.ea ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ea, %i.eb  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ez, ptr %i.ee
  %i.fa = mul i64 %.sroa.0.0.i.i36, 240           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.fa, i1 false), !alias.scope !71886
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 %i.fa ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.fc = phi ptr [ %i.fs, %.preheader.i ], [ %i.fb, %bb.y ] ; 3 uses
  %i.fd = phi ptr [ %i.fr, %.preheader.i ], [ %i.ez, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.fg, %.preheader.i ], [ %i.ds, %bb.y ]
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -240 ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fc, i64 -240 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -240 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fc, i64 -232
  %.val.i.i = load ptr, ptr %i.fh, align 8, !alias.scope !71885, !noalias !71887, !nonnull !41, !noundef !41
  %i.fi = getelementptr i8, ptr %i.fc, i64 -224
  %.val10.i.i = load i64, ptr %i.fi, align 8, !alias.scope !71885, !noalias !71887, !noundef !41 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fd, i64 -232
  %.val11.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !71884, !noalias !71888, !nonnull !41, !noundef !41
  %i.fk = getelementptr i8, ptr %i.fd, i64 -224
  %.val12.i.i = load i64, ptr %i.fk, align 8, !alias.scope !71884, !noalias !71888, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.fl = sub i64 %.val10.i.i, %.val12.i.i
  %i.fm = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !71889, !noalias !71890 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp eq i32 %i.fm, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.fo, i64 %i.fl, i64 %i.fn ; 2 uses
  %i.fp = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.fp, ptr %i.ff, ptr %i.fe
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.fg, ptr noundef nonnull align 8 dereferenceable(240) %..i.i, i64 240, i1 false), !alias.scope !71886, !noalias !71891
  %i.fq = zext i1 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [240 x i8], ptr %i.fe, i64 %i.fq ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.fs = getelementptr inbounds nuw [240 x i8], ptr %i.ff, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.ft = icmp eq ptr %i.fr, %i.ee
  %i.fu = icmp eq ptr %i.fs, %2
  %or.cond.i.i = select i1 %i.ft, i1 true, i1 %i.fu
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h29aaf6bb4efea129E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.fv = phi ptr [ %i.gj, %.lr.ph.i.i ], [ %i.ee, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.gi, %.lr.ph.i.i ], [ %i.ez, %bb.y ] ; 4 uses
  %i.fw = phi ptr [ %i.gh, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.fx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.fx, align 8, !alias.scope !71884, !noalias !71892, !nonnull !41, !noundef !41
  %i.fy = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.fy, align 8, !alias.scope !71884, !noalias !71892, !noundef !41 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fw, i64 8
  %.val.i19.i = load ptr, ptr %i.fz, align 8, !alias.scope !71885, !noalias !71893, !nonnull !41, !noundef !41
  %i.ga = getelementptr i8, ptr %i.fw, i64 16
  %.val7.i.i = load i64, ptr %i.ga, align 8, !alias.scope !71885, !noalias !71893, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.gb = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.gc = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !71894, !noalias !71895 ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp eq i32 %i.gc, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ge, i64 %i.gb, i64 %i.gd ; 2 uses
  %i.gf = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.gf, ptr %i.fw, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.fv, ptr noundef nonnull align 8 dereferenceable(240) %spec.select.i.i, i64 240, i1 false), !alias.scope !71886, !noalias !71896
  %i.gg = zext i1 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [240 x i8], ptr %i.fw, i64 %i.gg ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.gi = getelementptr inbounds nuw [240 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fv, i64 240 ; 2 uses
  %i.gk = icmp ne ptr %i.gh, %i.fb
  %i.gl = icmp ne ptr %i.gi, %i.ds
  %or.cond.i23.i = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h29aaf6bb4efea129E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h29aaf6bb4efea129E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.fr, %.preheader.i ], [ %i.gj, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.fs, %.preheader.i ], [ %i.fb, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.gh, %.lr.ph.i.i ] ; 2 uses
  %i.gm = ptrtoint ptr %.sroa.7.0.i to i64
  %i.gn = ptrtoint ptr %.sroa.0.1.i to i64
  %i.go = sub nuw i64 %i.gm, %i.gn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.go, i1 false), !alias.scope !71886, !noalias !71897
  br label %_ZN4core5slice4sort6stable5merge5merge17ha697ac2368bd196fE.exit

_ZN4core5slice4sort6stable5merge5merge17ha697ac2368bd196fE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h29aaf6bb4efea129E.exit.i"
  %i.gp = shl i64 %i.ec, 1
  %i.gq = or disjoint i64 %i.gp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hcc138ec91bf3924fE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hcc138ec91bf3924fE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17ha697ac2368bd196fE.exit
  %.sroa.0.0.i = phi i64 [ %i.gq, %_ZN4core5slice4sort6stable5merge5merge17ha697ac2368bd196fE.exit ], [ %i.ek, %bb.t ] ; 2 uses
  %i.gr = icmp ugt i64 %i.dt, 1
  br i1 %i.gr, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.gs = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gt = lshr i64 %.sroa.023.0, 1
  %i.gu = add i64 %i.gt, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.gv = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gv, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gw = or i64 %1, 1
  %i.gx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gw, i1 true)
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = shl nuw nsw i32 %i.gy, 1
  %i.ha = xor i32 %i.gz, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h24735121f8ce7a11E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ha, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(240) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71826
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hf56a566a61791535E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.er, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ep, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4d07e5921042e2f6E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4d07e5921042e2f6E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread114, %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4d07e5921042e2f6E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4d07e5921042e2f6E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd25f263cbf25cdc3E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = tail call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.m), !noalias !71956
  %i.q = icmp eq i8 %i.p, -1                      ; 2 uses
  %.not83 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread114, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.j
  %.sroa.01.0.i.i66 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader51 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.0.i.i66
  %6 = add i64 %.sroa.01.0.i.i66, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.l
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %6
  %i.s = tail call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %8), !noalias !71956
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i66, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i69 = phi i64 [ %i.y, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.1.i.i69
  %9 = add i64 %.sroa.01.1.i.i69, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.l
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %9
  %i.w = tail call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %11), !noalias !71956
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i

bb.k:                                             ; preds = %.lr.ph70
  %i.y = add nuw i64 %.sroa.01.1.i.i69, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.y, %i.l
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.z = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread114: ; preds = %.preheader
  br i1 %.not5.i116, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i111, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd25f263cbf25cdc3E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i
  br i1 %i.q, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd25f263cbf25cdc3E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aa = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hee39f2134f6d9b88E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha9f5c189b3857f50E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71901
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hee39f2134f6d9b88E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd25f263cbf25cdc3E.exit": ; preds = %.lr.ph.i.i39, %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4649 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread ], [ %.sroa.0.0.i.i112119123, %.lr.ph.i.i39 ]
  %i.ad = shl i64 %.sroa.0.0.i.i4649, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hee39f2134f6d9b88E.exit

bb.o:                                             ; preds = %bb.l
  %i.af = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71957), !noalias !71956
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71958), !noalias !71956
  %.not15.i.i = icmp eq i64 %i.af, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd25f263cbf25cdc3E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread114, %bb.o
  %i.ag = phi i64 [ %i.af, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread114 ]
  %.sroa.0.0.i.i112119123 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h800e259283ebbde6E.exit.i.thread114 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.0.0.i.i112119123
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bp, %.lr.ph.i.i39 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ai = xor i64 %.sroa.0.014.i.i, -1
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 9 uses
  %i.ak = getelementptr [128 x i8], ptr %i.ah, i64 %i.ai ; 9 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !71959, !noalias !71960
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !71961, !noalias !71962
  store <2 x i64> %i.am, ptr %i.aj, align 8, !alias.scope !71959, !noalias !71960
  store <2 x i64> %i.al, ptr %i.ak, align 8, !alias.scope !71961, !noalias !71962
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !71963, !noalias !71960
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !71964, !noalias !71962
  store <2 x i64> %i.aq, ptr %i.an, align 8, !alias.scope !71963, !noalias !71960
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !alias.scope !71964, !noalias !71962
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !71965, !noalias !71960
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !71966, !noalias !71962
  store <2 x i64> %i.au, ptr %i.ar, align 8, !alias.scope !71965, !noalias !71960
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !71966, !noalias !71962
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !71967, !noalias !71960
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !71968, !noalias !71962
  store <2 x i64> %i.ay, ptr %i.av, align 8, !alias.scope !71967, !noalias !71960
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !alias.scope !71968, !noalias !71962
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !71969, !noalias !71960
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !71970, !noalias !71962
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !71969, !noalias !71960
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !71970, !noalias !71962
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 80 ; 2 uses
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !71971, !noalias !71960
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !71972, !noalias !71962
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !71971, !noalias !71960
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !71972, !noalias !71962
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !71973, !noalias !71960
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !71974, !noalias !71962
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !alias.scope !71973, !noalias !71960
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !alias.scope !71974, !noalias !71962
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 112 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !71975, !noalias !71960
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !71976, !noalias !71962
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !alias.scope !71975, !noalias !71960
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !alias.scope !71976, !noalias !71962
  %i.bp = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bp, %i.ag
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd25f263cbf25cdc3E.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17hee39f2134f6d9b88E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd25f263cbf25cdc3E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ae, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd25f263cbf25cdc3E.exit" ], [ %i.ac, %bb.n ], [ %i.aa, %bb.m ] ; 2 uses
  %i.bq = lshr i64 %.sroa.018.0, 1
  %i.br = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bs = sub i64 %factor, %i.bq
  %i.bt = add i64 %i.br, %factor
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hee39f2134f6d9b88E.exit
  %.sroa.026.0 = phi i8 [ %i.by, %_ZN4core5slice4sort6stable5drift10create_run17hee39f2134f6d9b88E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hee39f2134f6d9b88E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bz = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bz, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h30955b196fb85fc6E.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.cb, %_ZN4core5slice4sort6stable5drift13logical_merge17h30955b196fb85fc6E.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h30955b196fb85fc6E.exit ] ; 4 uses
  %i.cb = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !41
  %.not29 = icmp ult i8 %i.cd, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h30955b196fb85fc6E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.174, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h30955b196fb85fc6E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.175, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h30955b196fb85fc6E.exit ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cf, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cb
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !41 ; 3 uses
  %i.ci = lshr i64 %i.ch, 1                       ; 8 uses
  %i.cj = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.ck = add nuw i64 %i.ci, %i.cj                ; 4 uses
  %i.cl = sub i64 %.sroa.09.0, %i.ck
  %i.cm = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %i.cl ; 6 uses
  %i.cn = icmp ugt i64 %i.ck, %3
  %i.co = trunc i64 %.sroa.018.174 to i1
  %i.cp = or i64 %i.ch, %.sroa.018.174
  %i.cq = trunc i64 %i.cp to i1
  %or.cond3.i = or i1 %i.cn, %i.cq
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = trunc i64 %i.ch to i1
  br i1 %i.cr, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cs = shl i64 %i.ck, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h30955b196fb85fc6E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.co, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4d07e5921042e2f6E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ct = or i64 %i.ci, 1
  %i.cu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %i.cx = xor i32 %i.cw, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha9f5c189b3857f50E(ptr noalias noundef nonnull align 8 %i.cm, i64 noundef %i.ci, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71940
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4d07e5921042e2f6E.exit35": ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw [128 x i8], ptr %i.cm, i64 %i.ci
  %i.cz = or i64 %i.cj, 1
  %i.da = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = xor i32 %i.dc, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha9f5c189b3857f50E(ptr noalias noundef nonnull align 8 %i.cy, i64 noundef %i.cj, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !71940
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h4d07e5921042e2f6E.exit35", %bb.u
  %i.de = icmp eq i64 %i.ci, 0
  %i.df = icmp eq i64 %i.cj, 0
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable9quicksort9quicksort17hd4fb218250ea95ceE:bb.a
  %i.ga = getelementptr [128 x i8], ptr %i.fg, i64 %i.fz
  %i.gb = getelementptr [128 x i8], ptr %i.fx, i64 %.sroa.04.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gb, ptr noundef nonnull align 8 dereferenceable(128) %i.ga, i64 128, i1 false), !alias.scope !73432
  %i.gc = add nuw i64 %.sroa.04.014.i, 2          ; 2 uses
  %i.gd = xor i64 %.sroa.04.014.i, -2
  %i.ge = getelementptr [128 x i8], ptr %i.fg, i64 %i.gd
  %i.gf = getelementptr [128 x i8], ptr %i.fx, i64 %.sroa.04.014.i
  %i.gg = getelementptr i8, ptr %i.gf, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gg, ptr noundef nonnull align 8 dereferenceable(128) %i.ge, i64 128, i1 false), !alias.scope !73432
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit.loopexit.unr-lcssa, label %bb.ad

_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit.loopexit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.04.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.gc, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod330 = trunc i64 %i.fw to i1
  call void @llvm.assume(i1 %lcmp.mod330)
  %i.gh = xor i64 %.sroa.04.014.i.epil.init, -1
  %i.gi = getelementptr [128 x i8], ptr %i.fg, i64 %i.gh
  %i.gj = getelementptr [128 x i8], ptr %i.fx, i64 %.sroa.04.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gj, ptr noundef nonnull align 8 dereferenceable(128) %i.gi, i64 128, i1 false), !alias.scope !73432
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit: ; preds = %.epil.preheader, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit.loopexit.unr-lcssa, %bb.ac
  %i.gk = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.gk, label %.critedge35, label %bb.ae

bb.ae:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit
  %.not33 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.15.092248
  br i1 %.not33, label %bb.am, label %bb.an, !prof !44

.critedge35:                                      ; preds = %bb.x, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h92a01e324321ecd9E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !73435)
  %.not59 = icmp ult i64 %3, %.sroa.15.092248
  br i1 %.not59, label %bb.ag, label %bb.af, !prof !52

bb.af:                                            ; preds = %.critedge35
  %i.gl = getelementptr [128 x i8], ptr %2, i64 %.sroa.15.092248 ; 4 uses
  br label %bb.ah

bb.ag:                                            ; preds = %.critedge35
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.ai, %bb.af
  %.sroa.19.0.i39 = phi ptr [ %i.gl, %bb.af ], [ %i.gx, %bb.ai ] ; 2 uses
  %.sroa.11.0.i40 = phi i64 [ 0, %bb.af ], [ %i.gz, %bb.ai ] ; 2 uses
  %.sroa.5.0.i41 = phi ptr [ %.sroa.0.0.ph99, %bb.af ], [ %i.ha, %bb.ai ] ; 3 uses
  %.sroa.02.0.i42 = phi i64 [ %.sroa.0.0.i36, %bb.af ], [ %.sroa.15.092248, %bb.ai ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.02.0.i42 ; 2 uses
  %i.gn = icmp ult ptr %.sroa.5.0.i41, %i.gm
  br i1 %i.gn, label %.lr.ph.i51, label %._crit_edge.i43

._crit_edge.i43:                                  ; preds = %.lr.ph.i51, %bb.ah
  %.sroa.19.1.lcssa.i44 = phi ptr [ %.sroa.19.0.i39, %bb.ah ], [ %i.gr, %.lr.ph.i51 ]
  %.sroa.11.1.lcssa.i45 = phi i64 [ %.sroa.11.0.i40, %bb.ah ], [ %i.gu, %.lr.ph.i51 ] ; 10 uses
  %.sroa.5.1.lcssa.i46 = phi ptr [ %.sroa.5.0.i41, %bb.ah ], [ %i.gv, %.lr.ph.i51 ] ; 2 uses
  %i.go = icmp eq i64 %.sroa.02.0.i42, %.sroa.15.092248
  br i1 %i.go, label %bb.aj, label %bb.ai

.lr.ph.i51:                                       ; preds = %bb.ah, %.lr.ph.i51
  %.sroa.5.111.i52 = phi ptr [ %i.gv, %.lr.ph.i51 ], [ %.sroa.5.0.i41, %bb.ah ] ; 3 uses
  %.sroa.11.110.i53 = phi i64 [ %i.gu, %.lr.ph.i51 ], [ %.sroa.11.0.i40, %bb.ah ] ; 2 uses
  %.sroa.19.19.i54 = phi ptr [ %i.gr, %.lr.ph.i51 ], [ %.sroa.19.0.i39, %bb.ah ]
  %i.gp = call noundef range(i8 -1, 2) i8 @"_ZN72_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..Ord$GT$3cmp17h4e1f8f90695bddacE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.5.111.i52), !noalias !73435
  %i.gq = icmp ne i8 %i.gp, -1                    ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %.sroa.19.19.i54, i64 -128 ; 3 uses
  %.sroa.01.0.i.i55 = select i1 %i.gq, ptr %2, ptr %i.gr
  %i.gs = getelementptr inbounds nuw [128 x i8], ptr %.sroa.01.0.i.i55, i64 %.sroa.11.110.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gs, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.111.i52, i64 128, i1 false), !alias.scope !73436, !noalias !73437
  %i.gt = zext i1 %i.gq to i64
  %i.gu = add i64 %.sroa.11.110.i53, %i.gt        ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i52, i64 128 ; 3 uses
  %i.gw = icmp ult ptr %i.gv, %i.gm
  br i1 %i.gw, label %.lr.ph.i51, label %._crit_edge.i43

bb.ai:                                            ; preds = %._crit_edge.i43
  %i.gx = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i44, i64 -128
  %i.gy = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gy, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.1.lcssa.i46, i64 128, i1 false), !alias.scope !73436, !noalias !73438
  %i.gz = add i64 %.sroa.11.1.lcssa.i45, 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i46, i64 128
  br label %bb.ah

bb.aj:                                            ; preds = %._crit_edge.i43
  %i.hb = shl i64 %.sroa.11.1.lcssa.i45, 7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph99, ptr nonnull align 8 %2, i64 %i.hb, i1 false), !alias.scope !73436
  %i.hc = sub i64 %.sroa.15.092248, %.sroa.11.1.lcssa.i45 ; 6 uses
  %.not18.i47 = icmp eq i64 %.sroa.15.092248, %.sroa.11.1.lcssa.i45
  br i1 %.not18.i47, label %.outer._crit_edge.thread, label %.lr.ph16.i48

.lr.ph16.i48:                                     ; preds = %bb.aj
  %i.hd = getelementptr [128 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i45 ; 3 uses
  %.neg343 = add i64 %.sroa.11.1.lcssa.i45, 1
  %xtraiter338 = and i64 %i.hc, 1
  %i.he = icmp eq i64 %.sroa.15.092248, %.neg343
  br i1 %i.he, label %.epil.preheader331, label %.lr.ph16.i48.new

.lr.ph16.i48.new:                                 ; preds = %.lr.ph16.i48
  %unroll_iter341 = and i64 %i.hc, -2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph16.i48.new
  %.sroa.04.014.i49 = phi i64 [ 0, %.lr.ph16.i48.new ], [ %i.hi, %bb.ak ] ; 5 uses
  %niter342 = phi i64 [ 0, %.lr.ph16.i48.new ], [ %niter342.next.1, %bb.ak ]
  %i.hf = xor i64 %.sroa.04.014.i49, -1
  %i.hg = getelementptr [128 x i8], ptr %i.gl, i64 %i.hf
  %i.hh = getelementptr [128 x i8], ptr %i.hd, i64 %.sroa.04.014.i49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hh, ptr noundef nonnull align 8 dereferenceable(128) %i.hg, i64 128, i1 false), !alias.scope !73436
  %i.hi = add nuw i64 %.sroa.04.014.i49, 2        ; 2 uses
  %i.hj = xor i64 %.sroa.04.014.i49, -2
  %i.hk = getelementptr [128 x i8], ptr %i.gl, i64 %i.hj
  %i.hl = getelementptr [128 x i8], ptr %i.hd, i64 %.sroa.04.014.i49
  %i.hm = getelementptr i8, ptr %i.hl, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hm, ptr noundef nonnull align 8 dereferenceable(128) %i.hk, i64 128, i1 false), !alias.scope !73436
  %niter342.next.1 = add i64 %niter342, 2         ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341
  br i1 %niter342.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit.unr-lcssa, label %bb.ak

_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit.unr-lcssa: ; preds = %bb.ak
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit, label %.epil.preheader331

.epil.preheader331:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit.unr-lcssa, %.lr.ph16.i48
  %.sroa.04.014.i49.epil.init = phi i64 [ 0, %.lr.ph16.i48 ], [ %i.hi, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod340 = trunc i64 %i.hc to i1
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.hn = xor i64 %.sroa.04.014.i49.epil.init, -1
  %i.ho = getelementptr [128 x i8], ptr %i.gl, i64 %i.hn
  %i.hp = getelementptr [128 x i8], ptr %i.hd, i64 %.sroa.04.014.i49.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hp, ptr noundef nonnull align 8 dereferenceable(128) %i.ho, i64 128, i1 false), !alias.scope !73436
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit.unr-lcssa, %.epil.preheader331
  %i.hq = icmp ugt i64 %.sroa.11.1.lcssa.i45, %.sroa.15.092248
  br i1 %i.hq, label %bb.al, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit", !prof !44

.outer._crit_edge.thread:                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1461d4b711af0237E.exit

bb.al:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i45, i64 noundef %.sroa.15.092248, i64 noundef %.sroa.15.092248, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1185) #73, !noalias !73439
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7bc8b03764c39bf0E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h1fa810bcdd300767E.exit
  %i.hr = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i45 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hs = icmp ult i64 %i.hc, 33
  br i1 %i.hs, label %.outer._crit_edge, label %.lr.ph

bb.am:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @107, ptr %i.b, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.hw, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1184) #73
  unreachable

bb.an:                                            ; preds = %bb.ae
  %i.hx = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph99) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd4fb218250ea95ceE(ptr noalias noundef nonnull align 8 %i.hx, i64 noundef %i.fw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(128) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hy = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.hy, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17h0f2328d52ab337a5E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc3527d788c0089b1E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val6 = load i32, ptr %i.b, align 4, !noundef !41 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !noundef !41
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i14
  %3 = add i64 %.sroa.01.0.i14, -1
  %4 = icmp ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val4 = load i32, ptr %i.d, align 4, !noundef !41 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw i64 %.sroa.01.0.i14, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.1.i17
  %5 = add i64 %.sroa.01.1.i17, -1
  %6 = icmp ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i32, ptr %i.g, align 4, !noundef !41 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw i64 %.sroa.01.1.i17, 1           ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit.thread, label %.lr.ph18

_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc3527d788c0089b1E.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h287501af0e842657E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc3527d788c0089b1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc3527d788c0089b1E.exit": ; preds = %.lr.ph.i.i, %middle.block, %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha1a0d52d5a4116f3E.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73448)
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
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !alias.scope !73449, !noalias !73448
  %wide.load40 = load <4 x i32>, ptr %i.v, align 4, !alias.scope !73449, !noalias !73448
  %i.w = getelementptr i8, ptr %i.u, i64 -12      ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -28      ; 2 uses
  %wide.load41 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !73450, !noalias !73447
  %wide.load42 = load <4 x i32>, ptr %i.x, align 4, !alias.scope !73450, !noalias !73447
  %reverse = shufflevector <4 x i32> %wide.load41, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse43 = shufflevector <4 x i32> %wide.load42, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.t, align 4, !alias.scope !73449, !noalias !73448
  store <4 x i32> %reverse43, ptr %i.v, align 4, !alias.scope !73449, !noalias !73448
  %reverse44 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse45 = shufflevector <4 x i32> %wide.load40, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse44, ptr %i.w, align 4, !alias.scope !73450, !noalias !73447
  store <4 x i32> %reverse45, ptr %i.x, align 4, !alias.scope !73450, !noalias !73447
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !73445

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc3527d788c0089b1E.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.014.i.i, -1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !alias.scope !73449, !noalias !73448, !noundef !41
  %i.ad = load i32, ptr %i.ab, align 4, !alias.scope !73450, !noalias !73447
  store i32 %i.ad, ptr %i.aa, align 4, !alias.scope !73449, !noalias !73448
  store i32 %i.ac, ptr %i.ab, align 4, !alias.scope !73450, !noalias !73447
  %i.ae = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc3527d788c0089b1E.exit", label %.lr.ph.i.i, !llvm.loop !73446
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h72690aba9442c8c7E(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #40 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add i64 %i.a, %1                         ; 2 uses
  %.not19 = icmp eq i64 %i.b, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph21

._crit_edge:                                      ; preds = %_ZN4core5slice4sort8unstable8heapsort9sift_down17h0413218db927fb01E.exit, %bb.a
  ret void

.lr.ph21:                                         ; preds = %bb.a, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h0413218db927fb01E.exit
  %.sroa.4.020 = phi i64 [ %i.c, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h0413218db927fb01E.exit ], [ %i.b, %bb.a ]
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
  br i1 %.not.i16, label %.lr.ph, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h0413218db927fb01E.exit

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
  %.val = load i32, ptr %i.n, align 4, !noundef !41
  %.val12 = load i32, ptr %i.o, align 4, !noundef !41
  %i.p = icmp ult i32 %.val, %.val12
  %i.q = zext i1 %i.p to i64
  %i.r = add nuw i64 %i.j, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.r, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.0.i17 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val13 = load i32, ptr %i.s, align 4, !noundef !41 ; 2 uses
  %.val14 = load i32, ptr %i.t, align 4, !noundef !41 ; 2 uses
  %i.u = icmp ult i32 %.val13, %.val14
  br i1 %i.u, label %bb.g, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h0413218db927fb01E.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73455)
  store i32 %.val14, ptr %i.s, align 4, !alias.scope !73454, !noalias !73455
  store i32 %.val13, ptr %i.t, align 4, !alias.scope !73455, !noalias !73454
  %i.v = shl i64 %.sroa.04.0.i, 1                 ; 2 uses
  %i.w = or disjoint i64 %i.v, 1                  ; 2 uses
  %.not.i = icmp ult i64 %i.w, %.sroa.0.0.i15
  br i1 %.not.i, label %.lr.ph, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h0413218db927fb01E.exit

_ZN4core5slice4sort8unstable8heapsort9sift_down17h0413218db927fb01E.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph21
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h287501af0e842657E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(4) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73512)
  %i.e = icmp samesign ult i64 %.sroa.14.0.lcssa, 2
  br i1 %i.e, label %_ZN4core5slice4sort6shared9smallsort18small_sort_network17h892525c0aaee3199E.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !73512
  %i.f = lshr i64 %.sroa.14.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.14.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.14.0.lcssa, i64 %i.f
  %i.h = getelementptr [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.14.0.lcssa, %i.f
  br label %bb.c
end_hunk_3
