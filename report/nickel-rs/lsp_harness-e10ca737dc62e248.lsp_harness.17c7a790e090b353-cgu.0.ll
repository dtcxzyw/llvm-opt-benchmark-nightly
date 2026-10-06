Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4core5slice4sort6stable14driftsort_main17h2a9f11a4cb5d8a84E:bb.a
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd87a838774555cb8E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %.preheader.preheader unwind label %bb.d

common.resume:                                    ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.split-lp

.preheader.preheader:                             ; preds = %bb.c
  %i.j = mul nuw i64 %.sroa.4.0.i.i, 464
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !32681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h62100524e2efd910E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #43
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hbc2b340ed313e869E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 17241)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = mul i64 %.sroa.0.0.i17, 464              ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.c, 19877956975980120
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !32690
  %i.f = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #41, !noalias !32690 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @909) #42
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc2f5f793455eb9e1E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %.preheader.preheader unwind label %bb.d

common.resume:                                    ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.split-lp

.preheader.preheader:                             ; preds = %bb.c
  %i.j = mul nuw i64 %.sroa.4.0.i.i, 464
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !32691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h62100524e2efd910E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #43
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17he7e7c1736d26f274E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 71428)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = mul i64 %.sroa.0.0.i17, 112              ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.c, 82351536043346212
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !32698
  %i.f = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #41, !noalias !32698 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @909) #42
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h248e1440fafc6158E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$GT$17hd2fc6aad96ff41e2E"(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$GT$17hd2fc6aad96ff41e2E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #43
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h248e1440fafc6158E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 7 uses
  %i.e = alloca [66 x i8], align 1                ; 4 uses
  %i.f = alloca [528 x i8], align 8               ; 4 uses
  %i.g = icmp ult i64 %1, 2
  br i1 %i.g, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = udiv i64 4611686018427387904, %1
  %i.i = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.i, 0
  %i.j = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.h, %i.j         ; 2 uses
  %i.k = icmp ult i64 %1, 4097
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %1, 1
  %i.n = sub nuw nsw i64 %1, %i.m
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.l, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not5.i142 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i147 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aj ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fg, %bb.aj ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fe, %bb.aj ] ; 3 uses
  %i.w = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit": ; preds = %bb.f
  %i.x = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.x, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread145, %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit"
  %i.z = icmp ult i64 %i.x, 2
  br i1 %i.z, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hab1760cf7ad2bc1dE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.ab = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.y), !noalias !32801, !inline_history !32702 ; 2 uses
  %.not108 = icmp eq i64 %i.x, 2                  ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread145, label %.lr.ph95

.lr.ph:                                           ; preds = %.preheader66, %bb.j
  %.sroa.01.0.i.i91 = phi i64 [ %i.ae, %bb.j ], [ 2, %.preheader66 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %.sroa.01.0.i.i91
  %6 = add i64 %.sroa.01.0.i.i91, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.x
  call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %6
  %i.ad = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %8), !noalias !32801, !inline_history !32702
  br i1 %i.ad, label %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.01.0.i.i91, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.x
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i, label %.lr.ph

.lr.ph95:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i94 = phi i64 [ %i.ah, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %.sroa.01.1.i.i94
  %9 = add i64 %.sroa.01.1.i.i94, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.x
  call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %9
  %i.ag = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hf7651b16bcf99a46E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %11), !noalias !32801, !inline_history !32702
  br i1 %i.ag, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i

bb.k:                                             ; preds = %.lr.ph95
  %i.ah = add nuw i64 %.sroa.01.1.i.i94, 1        ; 2 uses
  %exitcond127.not = icmp eq i64 %i.ah, %i.x
  br i1 %exitcond127.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i, label %.lr.ph95

_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph95
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i94, %.lr.ph95 ], [ %i.x, %bb.k ], [ %.sroa.01.0.i.i91, %.lr.ph ], [ %i.x, %bb.j ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.x
  call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread145: ; preds = %.preheader
  br i1 %.not5.i147, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread: ; preds = %.preheader66
  br i1 %.not5.i142, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hab1760cf7ad2bc1dE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i
  br i1 %i.ab, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hab1760cf7ad2bc1dE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hff55abf0241ee739E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 32) ; 2 uses
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2760425ea44fddb7E(ptr noalias noundef nonnull align 8 %i.y, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32702
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hff55abf0241ee739E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hab1760cf7ad2bc1dE.exit": ; preds = %.lr.ph.i.i39, %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i6164 = phi i64 [ %i.x, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread ], [ %.sroa.0.0.i.i143150154, %.lr.ph.i.i39 ]
  %i.am = shl i64 %.sroa.0.0.i.i6164, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hff55abf0241ee739E.exit

bb.o:                                             ; preds = %bb.l
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32802), !noalias !32801
  call void @llvm.experimental.noalias.scope.decl(metadata !32803), !noalias !32801
  %.not15.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hab1760cf7ad2bc1dE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread145, %bb.o
  %i.ap = phi i64 [ %i.ao, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread145 ]
  %.sroa.0.0.i.i143150154 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hc7c6f0cffa93c0c6E.exit.i.thread145 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %.sroa.0.0.i.i143150154
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bu, %.lr.ph.i.i39 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.014.i.i, -1
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %.sroa.0.014.i.i ; 8 uses
  %i.at = getelementptr [112 x i8], ptr %i.aq, i64 %i.ar ; 8 uses
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !32804, !noalias !32805
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !32806, !noalias !32807
  store <2 x i64> %i.av, ptr %i.as, align 8, !alias.scope !32804, !noalias !32805
  store <2 x i64> %i.au, ptr %i.at, align 8, !alias.scope !32806, !noalias !32807
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !32808, !noalias !32805
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !32809, !noalias !32807
  store <2 x i64> %i.az, ptr %i.aw, align 8, !alias.scope !32808, !noalias !32805
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !alias.scope !32809, !noalias !32807
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !32810, !noalias !32805
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !32811, !noalias !32807
  store <2 x i64> %i.bd, ptr %i.ba, align 8, !alias.scope !32810, !noalias !32805
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !alias.scope !32811, !noalias !32807
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !32812, !noalias !32805
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !32813, !noalias !32807
  store <2 x i64> %i.bh, ptr %i.be, align 8, !alias.scope !32812, !noalias !32805
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !alias.scope !32813, !noalias !32807
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 2 uses
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !32814, !noalias !32805
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !32815, !noalias !32807
  store <2 x i64> %i.bl, ptr %i.bi, align 8, !alias.scope !32814, !noalias !32805
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !alias.scope !32815, !noalias !32807
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 80 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 2 uses
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !32816, !noalias !32805
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !32817, !noalias !32807
  store <2 x i64> %i.bp, ptr %i.bm, align 8, !alias.scope !32816, !noalias !32805
  store <2 x i64> %i.bo, ptr %i.bn, align 8, !alias.scope !32817, !noalias !32807
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !32818, !noalias !32805
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !alias.scope !32819, !noalias !32807
  store <2 x i64> %i.bt, ptr %i.bq, align 8, !alias.scope !32818, !noalias !32805
  store <2 x i64> %i.bs, ptr %i.br, align 8, !alias.scope !32819, !noalias !32807
  %i.bu = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bu, %i.ap
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hab1760cf7ad2bc1dE.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17hff55abf0241ee739E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hab1760cf7ad2bc1dE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.an, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hab1760cf7ad2bc1dE.exit" ], [ %i.al, %bb.n ], [ %i.aj, %bb.m ] ; 2 uses
  %i.bv = lshr i64 %.sroa.018.0, 1
  %i.bw = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bx = sub i64 %factor, %i.bv
  %i.by = add i64 %i.bw, %factor
  %i.bz = mul i64 %i.bx, %.sroa.0.0
  %i.ca = mul i64 %i.by, %.sroa.0.0
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cb, i1 false)
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hff55abf0241ee739E.exit
  %.sroa.026.0 = phi i8 [ %i.cd, %_ZN4core5slice4sort6stable5drift10create_run17hff55abf0241ee739E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hff55abf0241ee739E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.ce = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ce, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph101, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit
  %.sroa.02.1100 = phi i64 [ %.sroa.02.0, %.lr.ph101 ], [ %i.cg, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit ] ; 2 uses
  %.sroa.018.199 = phi i64 [ %.sroa.018.0, %.lr.ph101 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit ] ; 4 uses
  %i.cg = add i64 %.sroa.02.1100, -1              ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !28
  %.not29 = icmp ult i8 %i.ci, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.199, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.1100, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ck, align 1
  br i1 %i.w, label %bb.aj, label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cg
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !28 ; 3 uses
  %i.cn = lshr i64 %i.cm, 1                       ; 8 uses
  %i.co = lshr i64 %.sroa.018.199, 1              ; 6 uses
  %i.cp = add nuw i64 %i.cn, %i.co                ; 4 uses
  %i.cq = sub i64 %.sroa.09.0, %i.cp
  %i.cr = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.cq ; 6 uses
  %i.cs = icmp ugt i64 %i.cp, %3
  %i.ct = trunc i64 %.sroa.018.199 to i1
  %i.cu = or i64 %i.cm, %.sroa.018.199
  %i.cv = trunc i64 %i.cu to i1
  %or.cond3.i = or i1 %i.cs, %i.cv
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = trunc i64 %i.cm to i1
  br i1 %i.cw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cx = shl i64 %i.cp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ct, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cy = or i64 %i.cn, 1
  %i.cz = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 1
  %i.dc = xor i32 %i.db, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2760425ea44fddb7E(ptr noalias noundef nonnull align 8 %i.cr, i64 noundef %i.cn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32737
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit35": ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw [112 x i8], ptr %i.cr, i64 %i.cn
  %i.de = or i64 %i.co, 1
  %i.df = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = xor i32 %i.dh, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2760425ea44fddb7E(ptr noalias noundef nonnull align 8 %i.dd, i64 noundef %i.co, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32737
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h420641b65b3ce3adE.exit35", %bb.u
  %i.dj = icmp eq i64 %i.cn, 0
  %i.dk = icmp eq i64 %i.co, 0
  %or.cond.i = or i1 %i.dk, %i.dj
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = call i64 @llvm.umin.i64(i64 %i.co, i64 range(i64 0, -9223372036854775808) %i.cn) ; 2 uses
  %i.dl = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dl, label %_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit, label %bb.y
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h248e1440fafc6158E:bb.a
  %.sroa.0.02.i.i = phi ptr [ %i.er, %.noexc20.i ], [ %i.dm, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32836
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317)
          to label %.noexc unwind label %.loopexit.split-lp.i

.noexc:                                           ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32836
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %bb.af
  %.val1.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !32837, !noalias !32836, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32837
  br label %.loopexit.i.body

bb.af:                                            ; preds = %.noexc
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32838)
  call void @llvm.experimental.noalias.scope.decl(metadata !32839)
  call void @llvm.experimental.noalias.scope.decl(metadata !32840)
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !32837, !noalias !32836, !noundef !28 ; 2 uses
  %i.eh = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.eh, label %.loopexit.i.body, label %bb.ae

bb.ag:                                            ; preds = %.noexc
  %.val.i = load ptr, ptr %i.o, align 8, !noalias !32836, !nonnull !28, !noundef !28 ; 2 uses
  %.val2.i = load i64, ptr %i.p, align 8, !noalias !32836, !noundef !28 ; 2 uses
  %.val3.i = load ptr, ptr %i.q, align 8, !noalias !32836, !nonnull !28, !noundef !28 ; 2 uses
  %.val4.i = load i64, ptr %i.r, align 8, !noalias !32836, !noundef !28 ; 2 uses
  %..i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val2.i, i64 %.val4.i)
  %i.ei = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val3.i, i64 %..i.i.i.i.i), !alias.scope !32841 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32842)
  call void @llvm.experimental.noalias.scope.decl(metadata !32843)
  call void @llvm.experimental.noalias.scope.decl(metadata !32844)
  %.val.i.i.i11.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !32845, !noalias !32836, !noundef !28 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i.i11.i, 0
  br i1 %i.ej, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val.i.i.i11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32845
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i"

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i": ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32836
  call void @llvm.experimental.noalias.scope.decl(metadata !32846)
  call void @llvm.experimental.noalias.scope.decl(metadata !32847)
  call void @llvm.experimental.noalias.scope.decl(metadata !32848)
  %.val.i.i.i14.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !32849, !noalias !32836, !noundef !28 ; 2 uses
  %i.ek = icmp eq i64 %.val.i.i.i14.i, 0
  br i1 %i.ek, label %.noexc20.i, label %bb.ai

bb.ai:                                            ; preds = %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i.i14.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32849
  br label %.noexc20.i

.noexc20.i:                                       ; preds = %bb.ai, %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit13.i"
  %i.el = icmp eq i32 %i.ei, 0
  %i.em = sub i64 %.val2.i, %.val4.i
  %i.en = sext i32 %i.ei to i64
  %spec.store.select.i.i.i.i.i = select i1 %i.el, i64 %i.em, i64 %i.en ; 2 uses
  %i.eo = icmp sgt i64 %spec.store.select.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32836
  %spec.select.i.i = select i1 %i.eo, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(112) %spec.select.i.i, i64 112, i1 false), !alias.scope !32820, !noalias !32850
  %i.ep = zext i1 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.i38, i64 %i.ep ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i, 63
  %i.er = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 112 ; 2 uses
  %i.et = icmp ne ptr %i.eq, %i.do
  %i.eu = icmp ne ptr %i.er, %i.cf
  %or.cond.i19.i = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2bef46eef33cb37cE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2bef46eef33cb37cE.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ec, %.noexc.i ], [ %i.es, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.ed, %.noexc.i ], [ %i.do, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.eq, %.noexc20.i ] ; 2 uses
  %i.ev = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ew = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ex = sub nuw i64 %i.ev, %i.ew
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ex, i1 false), !alias.scope !32820, !noalias !32851
  br label %_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.i.body:                                 ; preds = %.loopexit.split-lp.i, %bb.af, %bb.ae, %.loopexit.i, %bb.aa, %bb.z
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.0.i, %bb.z ], [ %.sroa.13.0.i, %bb.aa ], [ %.sroa.13.1.i, %bb.ae ], [ %.sroa.13.1.i, %bb.af ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %.sroa.7.0.i, %bb.z ], [ %.sroa.7.0.i, %bb.aa ], [ %i.do, %bb.ae ], [ %i.do, %bb.af ], [ %i.do, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %.sroa.0.0.i38, %bb.ae ], [ %.sroa.0.0.i38, %bb.af ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %i.dr, %bb.z ], [ %i.dr, %bb.aa ], [ %i.eg, %bb.ae ], [ %i.eg, %bb.af ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ey = ptrtoint ptr %.sroa.7.1.i to i64
  %i.ez = ptrtoint ptr %.sroa.0.2.i to i64
  %i.fa = sub nuw i64 %i.ey, %i.ez
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.fa, i1 false), !alias.scope !32820, !noalias !32852
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2bef46eef33cb37cE.exit.i"
  %i.fb = shl i64 %i.cp, 1
  %i.fc = or disjoint i64 %i.fb, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h1b5d419680d866d1E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit
  %.sroa.0.0.i = phi i64 [ %i.fc, %_ZN4core5slice4sort6stable5merge5merge17he2908d56791f4383E.exit ], [ %i.cx, %bb.t ] ; 2 uses
  %i.fd = icmp ugt i64 %i.cg, 1
  br i1 %i.fd, label %bb.q, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge
  %i.fe = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ff = lshr i64 %.sroa.023.0, 1
  %i.fg = add i64 %i.ff, %.sroa.09.0
  br label %bb.f

bb.ak:                                            ; preds = %._crit_edge
  %i.fh = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fh, 0
  br i1 %.not31, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fi = or i64 %1, 1
  %i.fj = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fi, i1 true)
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = shl nuw nsw i32 %i.fk, 1
  %i.fm = xor i32 %i.fl, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2760425ea44fddb7E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(112) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32737
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hc2f5f793455eb9e1E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [66 x i8], align 1                ; 4 uses
  %i.f = alloca [528 x i8], align 8               ; 4 uses
  %i.g = icmp ult i64 %1, 2
  br i1 %i.g, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = udiv i64 4611686018427387904, %1
  %i.i = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.i, 0
  %i.j = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.h, %i.j         ; 2 uses
  %i.k = icmp ult i64 %1, 4097
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %1, 1
  %i.n = sub nuw nsw i64 %1, %i.m
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.l, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not5.i143 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i148 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ak, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ak ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.em, %bb.ak ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.ak ] ; 3 uses
  %i.w = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit", label %bb.q

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit": ; preds = %bb.f
  %i.x = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.y = getelementptr inbounds nuw [464 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.x, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit"
  %i.z = icmp ult i64 %i.x, 2
  br i1 %i.z, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 464
  %i.ab = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hb417b267e576ebc9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.y), !noalias !32925, !inline_history !32856 ; 2 uses
  %.not108 = icmp eq i64 %i.x, 2                  ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146, label %.lr.ph95

.lr.ph:                                           ; preds = %.preheader66, %bb.j
  %.sroa.01.0.i.i91 = phi i64 [ %i.ae, %bb.j ], [ 2, %.preheader66 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.01.0.i.i91
  %6 = add i64 %.sroa.01.0.i.i91, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.x
  call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %6
  %i.ad = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hb417b267e576ebc9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %8), !noalias !32925, !inline_history !32856
  br i1 %i.ad, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.01.0.i.i91, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.x
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i, label %.lr.ph

.lr.ph95:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i94 = phi i64 [ %i.ah, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.01.1.i.i94
  %9 = add i64 %.sroa.01.1.i.i94, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.x
  call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %9
  %i.ag = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hb417b267e576ebc9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %11), !noalias !32925, !inline_history !32856
  br i1 %i.ag, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i

bb.k:                                             ; preds = %.lr.ph95
  %i.ah = add nuw i64 %.sroa.01.1.i.i94, 1        ; 2 uses
  %exitcond127.not = icmp eq i64 %i.ah, %i.x
  br i1 %exitcond127.not, label %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i, label %.lr.ph95

_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph95
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i94, %.lr.ph95 ], [ %i.x, %bb.k ], [ %.sroa.01.0.i.i91, %.lr.ph ], [ %i.x, %bb.j ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.x
  call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146: ; preds = %.preheader
  br i1 %.not5.i148, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread: ; preds = %.preheader66
  br i1 %.not5.i143, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i
  br i1 %i.ab, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 32) ; 2 uses
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h71398e72c423b2fcE(ptr noalias noundef nonnull align 8 %i.y, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32856
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i6164 = phi i64 [ %i.x, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread ], [ %.sroa.0.0.i.i144151155, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i ]
  %i.am = shl i64 %.sroa.0.0.i.i6164, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit

bb.o:                                             ; preds = %bb.l
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32926), !noalias !32925
  call void @llvm.experimental.noalias.scope.decl(metadata !32927), !noalias !32925
  %.not15.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146, %bb.o
  %i.ap = phi i64 [ %i.ao, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146 ]
  %.sroa.0.0.i.i144151155 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hec4d8810edb5e628E.exit.i.thread146 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.0.0.i.i144151155
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.ba, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.014.i.i, -1
  %i.as = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.0.014.i.i ; 2 uses
  %i.at = getelementptr [464 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i39
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i39 ], [ %i.ax, %bb.p ] ; 4 uses
  %i.au = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32928), !noalias !32925
  call void @llvm.experimental.noalias.scope.decl(metadata !32929), !noalias !32925
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !32930, !noalias !32931
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !32932, !noalias !32933
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !32930, !noalias !32931
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.aw, align 8, !alias.scope !32932, !noalias !32933
  %i.ax = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32934), !noalias !32925
  call void @llvm.experimental.noalias.scope.decl(metadata !32935), !noalias !32925
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ay, align 8, !alias.scope !32936, !noalias !32937
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.az, align 8, !alias.scope !32938, !noalias !32939
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ay, align 8, !alias.scope !32936, !noalias !32937
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.az, align 8, !alias.scope !32938, !noalias !32939
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ax, 58
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, label %bb.p

_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i: ; preds = %bb.p
  %i.ba = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.ap
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.an, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit" ], [ %i.al, %bb.n ], [ %i.aj, %bb.m ] ; 2 uses
  %i.bb = lshr i64 %.sroa.018.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bd = sub i64 %factor, %i.bb
  %i.be = add i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit
  %.sroa.026.0 = phi i8 [ %i.bj, %_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hf21a3bc99ed10c62E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bk = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bk, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw [464 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph101, %_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit
  %.sroa.02.1100 = phi i64 [ %.sroa.02.0, %.lr.ph101 ], [ %i.bm, %_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit ] ; 2 uses
  %.sroa.018.199 = phi i64 [ %.sroa.018.0, %.lr.ph101 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit ] ; 4 uses
  %i.bm = add i64 %.sroa.02.1100, -1              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !28
  %.not29 = icmp ult i8 %i.bo, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit, %bb.r, %bb.q
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.q ], [ %.sroa.018.199, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.q ], [ %.sroa.02.1100, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bq, align 1
  br i1 %i.w, label %bb.ak, label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !28 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 8 uses
  %i.bu = lshr i64 %.sroa.018.199, 1              ; 6 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 4 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [464 x i8], ptr %0, i64 %i.bw ; 6 uses
  %i.by = icmp ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.018.199 to i1
  %i.ca = or i64 %i.bs, %.sroa.018.199
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = shl i64 %i.bv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bz, label %bb.x, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit35"

bb.w:                                             ; preds = %bb.t
  %i.ce = or i64 %i.bt, 1
  %i.cf = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h71398e72c423b2fcE(ptr noalias noundef nonnull align 8 %i.bx, i64 noundef %i.bt, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32867
  br label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit35": ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw [464 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h71398e72c423b2fcE(ptr noalias noundef nonnull align 8 %i.cj, i64 noundef %i.bu, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32867
  br label %bb.x

bb.x:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit35", %bb.v
  %i.cp = icmp eq i64 %i.bt, 0
  %i.cq = icmp eq i64 %i.bu, 0
  %or.cond.i = or i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i36 = call i64 @llvm.umin.i64(i64 %i.bu, i64 range(i64 0, -9223372036854775808) %i.bt) ; 2 uses
  %i.cr = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cr, label %_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw [464 x i8], ptr %i.bx, i64 %i.bt ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bt, %i.bu  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cs, ptr %i.bx
  %i.ct = mul i64 %.sroa.0.0.i.i36, 464           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ct, i1 false), !alias.scope !32940
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ct ; 6 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.di, %.noexc.i ], [ %i.cs, %bb.z ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.dj, %.noexc.i ], [ %i.cu, %bb.z ] ; 4 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dg, %.noexc.i ], [ %i.bl, %bb.z ]
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17hc2f5f793455eb9e1E:bb.a
.lr.ph.i.i:                                       ; preds = %bb.z, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.dy, %.noexc20.i ], [ %i.bx, %bb.z ] ; 5 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dw, %.noexc20.i ], [ %2, %bb.z ] ; 6 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dx, %.noexc20.i ], [ %i.cs, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32953
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1045)
          to label %.noexc unwind label %.loopexit.split-lp.i

.noexc:                                           ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32953
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.0.i38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1045)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %.val1.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !32954, !noalias !32953, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32954
  br label %.loopexit.i.body

bb.ag:                                            ; preds = %.noexc
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32955)
  call void @llvm.experimental.noalias.scope.decl(metadata !32956)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !32954, !noalias !32953, !noundef !28 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dn, label %.loopexit.i.body, label %bb.af

bb.ah:                                            ; preds = %.noexc
  %.val.i = load ptr, ptr %i.o, align 8, !noalias !32953, !nonnull !28, !noundef !28 ; 2 uses
  %.val2.i = load i64, ptr %i.p, align 8, !noalias !32953, !noundef !28 ; 2 uses
  %.val3.i = load ptr, ptr %i.q, align 8, !noalias !32953, !nonnull !28, !noundef !28 ; 2 uses
  %.val4.i = load i64, ptr %i.r, align 8, !noalias !32953, !noundef !28 ; 2 uses
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val2.i, i64 %.val4.i)
  %i.do = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val3.i, i64 %..i.i.i.i.i.i), !alias.scope !32957 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32958)
  call void @llvm.experimental.noalias.scope.decl(metadata !32959)
  %.val.i.i8.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !32960, !noalias !32953, !noundef !28 ; 2 uses
  %i.dp = icmp eq i64 %.val.i.i8.i, 0
  br i1 %i.dp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val.i.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32960
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i": ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32953
  call void @llvm.experimental.noalias.scope.decl(metadata !32961)
  call void @llvm.experimental.noalias.scope.decl(metadata !32962)
  %.val.i.i11.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !32963, !noalias !32953, !noundef !28 ; 2 uses
  %i.dq = icmp eq i64 %.val.i.i11.i, 0
  br i1 %i.dq, label %.noexc20.i, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val.i.i11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !32963
  br label %.noexc20.i

.noexc20.i:                                       ; preds = %bb.aj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit10.i"
  %i.dr = icmp eq i32 %i.do, 0
  %i.ds = sub i64 %.val2.i, %.val4.i
  %i.dt = sext i32 %i.do to i64
  %spec.store.select.i.i.i.i.i.i = select i1 %i.dr, i64 %i.ds, i64 %i.dt ; 2 uses
  %i.du = icmp sgt i64 %spec.store.select.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32953
  %spec.select.i.i = select i1 %i.du, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(464) %spec.select.i.i, i64 464, i1 false), !alias.scope !32940, !noalias !32964
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [464 x i8], ptr %.sroa.0.0.i38, i64 %i.dv ; 3 uses
  %spec.store.select.i.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i.i, 63
  %i.dx = getelementptr inbounds nuw [464 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.i.lobit ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 464 ; 2 uses
  %i.dz = icmp ne ptr %i.dw, %i.cu
  %i.ea = icmp ne ptr %i.dx, %i.bl
  %or.cond.i19.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ba542ee40f757c2E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ba542ee40f757c2E.exit.i": ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.di, %.noexc.i ], [ %i.dy, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.dj, %.noexc.i ], [ %i.cu, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dw, %.noexc20.i ] ; 2 uses
  %i.eb = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ec = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ed = sub nuw i64 %i.eb, %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ed, i1 false), !alias.scope !32940, !noalias !32965
  br label %_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.i.body:                                 ; preds = %.loopexit.split-lp.i, %bb.ag, %bb.af, %.loopexit.i, %bb.ab, %bb.aa
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.0.i, %bb.aa ], [ %.sroa.13.0.i, %bb.ab ], [ %.sroa.13.1.i, %bb.af ], [ %.sroa.13.1.i, %bb.ag ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %.sroa.7.0.i, %bb.aa ], [ %.sroa.7.0.i, %bb.ab ], [ %i.cu, %bb.af ], [ %i.cu, %bb.ag ], [ %i.cu, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %2, %bb.aa ], [ %2, %bb.ab ], [ %.sroa.0.0.i38, %bb.af ], [ %.sroa.0.0.i38, %bb.ag ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %i.cx, %bb.aa ], [ %i.cx, %bb.ab ], [ %i.dm, %bb.af ], [ %i.dm, %bb.ag ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ee = ptrtoint ptr %.sroa.7.1.i to i64
  %i.ef = ptrtoint ptr %.sroa.0.2.i to i64
  %i.eg = sub nuw i64 %i.ee, %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.eg, i1 false), !alias.scope !32940, !noalias !32966
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4ba542ee40f757c2E.exit.i"
  %i.eh = shl i64 %i.bv, 1
  %i.ei = or disjoint i64 %i.eh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hbc81b237dc450025E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit
  %.sroa.0.0.i = phi i64 [ %i.ei, %_ZN4core5slice4sort6stable5merge5merge17hf86c00c5fc5653daE.exit ], [ %i.cd, %bb.u ] ; 2 uses
  %i.ej = icmp ugt i64 %i.bm, 1
  br i1 %i.ej, label %bb.r, label %._crit_edge

bb.ak:                                            ; preds = %._crit_edge
  %i.ek = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.el = lshr i64 %.sroa.023.0, 1
  %i.em = add i64 %i.el, %.sroa.09.0
  br label %bb.f

bb.al:                                            ; preds = %._crit_edge
  %i.en = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.en, 0
  br i1 %.not31, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eo = or i64 %1, 1
  %i.ep = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eo, i1 true)
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 1
  %i.es = xor i32 %i.er, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h71398e72c423b2fcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32867
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd87a838774555cb8E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [66 x i8], align 1                ; 4 uses
  %i.f = alloca [528 x i8], align 8               ; 4 uses
  %i.g = icmp ult i64 %1, 2
  br i1 %i.g, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = udiv i64 4611686018427387904, %1
  %i.i = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.i, 0
  %i.j = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.h, %i.j         ; 2 uses
  %i.k = icmp ult i64 %1, 4097
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %1, 1
  %i.n = sub nuw nsw i64 %1, %i.m
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.l, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not5.i143 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i148 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ak, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ak ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.em, %bb.ak ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.ak ] ; 3 uses
  %i.w = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit", label %bb.q

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit": ; preds = %bb.f
  %i.x = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.y = getelementptr inbounds nuw [464 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.x, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit"
  %i.z = icmp ult i64 %i.x, 2
  br i1 %i.z, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 464
  %i.ab = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h50801127d9e68a0bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.y), !noalias !33039, !inline_history !32970 ; 2 uses
  %.not108 = icmp eq i64 %i.x, 2                  ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146, label %.lr.ph95

.lr.ph:                                           ; preds = %.preheader66, %bb.j
  %.sroa.01.0.i.i91 = phi i64 [ %i.ae, %bb.j ], [ 2, %.preheader66 ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.01.0.i.i91
  %6 = add i64 %.sroa.01.0.i.i91, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.x
  call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %6
  %i.ad = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h50801127d9e68a0bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %8), !noalias !33039, !inline_history !32970
  br i1 %i.ad, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.01.0.i.i91, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.x
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i, label %.lr.ph

.lr.ph95:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i94 = phi i64 [ %i.ah, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.01.1.i.i94
  %9 = add i64 %.sroa.01.1.i.i94, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.x
  call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %9
  %i.ag = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h50801127d9e68a0bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %11), !noalias !33039, !inline_history !32970
  br i1 %i.ag, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i

bb.k:                                             ; preds = %.lr.ph95
  %i.ah = add nuw i64 %.sroa.01.1.i.i94, 1        ; 2 uses
  %exitcond127.not = icmp eq i64 %i.ah, %i.x
  br i1 %exitcond127.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i, label %.lr.ph95

_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph95
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i94, %.lr.ph95 ], [ %i.x, %bb.k ], [ %.sroa.01.0.i.i91, %.lr.ph ], [ %i.x, %bb.j ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.x
  call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146: ; preds = %.preheader
  br i1 %.not5.i148, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread: ; preds = %.preheader66
  br i1 %.not5.i143, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i
  br i1 %i.ab, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 32) ; 2 uses
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfcc5bbc2cb50c6baE(ptr noalias noundef nonnull align 8 %i.y, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32970
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i6164 = phi i64 [ %i.x, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread ], [ %.sroa.0.0.i.i144151155, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i ]
  %i.am = shl i64 %.sroa.0.0.i.i6164, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit

bb.o:                                             ; preds = %bb.l
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33040), !noalias !33039
  call void @llvm.experimental.noalias.scope.decl(metadata !33041), !noalias !33039
  %.not15.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146, %bb.o
  %i.ap = phi i64 [ %i.ao, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146 ]
  %.sroa.0.0.i.i144151155 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdca9c4924658a321E.exit.i.thread146 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.0.0.i.i144151155
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.ba, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.014.i.i, -1
  %i.as = getelementptr inbounds nuw [464 x i8], ptr %i.y, i64 %.sroa.0.014.i.i ; 2 uses
  %i.at = getelementptr [464 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i39
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i39 ], [ %i.ax, %bb.p ] ; 4 uses
  %i.au = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33042), !noalias !33039
  call void @llvm.experimental.noalias.scope.decl(metadata !33043), !noalias !33039
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !33044, !noalias !33045
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !33046, !noalias !33047
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !33044, !noalias !33045
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.aw, align 8, !alias.scope !33046, !noalias !33047
  %i.ax = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33048), !noalias !33039
  call void @llvm.experimental.noalias.scope.decl(metadata !33049), !noalias !33039
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ay, align 8, !alias.scope !33050, !noalias !33051
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.az, align 8, !alias.scope !33052, !noalias !33053
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ay, align 8, !alias.scope !33050, !noalias !33051
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.az, align 8, !alias.scope !33052, !noalias !33053
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ax, 58
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i, label %bb.p

_ZN4core10intrinsics25typed_swap_nonoverlapping17h11b505a3816bdbe8E.exit.i.i: ; preds = %bb.p
  %i.ba = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.ap
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.an, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4f8bd7569609a960E.exit" ], [ %i.al, %bb.n ], [ %i.aj, %bb.m ] ; 2 uses
  %i.bb = lshr i64 %.sroa.018.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bd = sub i64 %factor, %i.bb
  %i.be = add i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit
  %.sroa.026.0 = phi i8 [ %i.bj, %_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h94aa23fa582ce6a6E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bk = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bk, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw [464 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph101, %_ZN4core5slice4sort6stable5drift13logical_merge17hda4797fb765c0207E.exit
  %.sroa.02.1100 = phi i64 [ %.sroa.02.0, %.lr.ph101 ], [ %i.bm, %_ZN4core5slice4sort6stable5drift13logical_merge17hda4797fb765c0207E.exit ] ; 2 uses
  %.sroa.018.199 = phi i64 [ %.sroa.018.0, %.lr.ph101 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hda4797fb765c0207E.exit ] ; 4 uses
  %i.bm = add i64 %.sroa.02.1100, -1              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !28
  %.not29 = icmp ult i8 %i.bo, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hda4797fb765c0207E.exit, %bb.r, %bb.q
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.q ], [ %.sroa.018.199, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hda4797fb765c0207E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.q ], [ %.sroa.02.1100, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hda4797fb765c0207E.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bq, align 1
  br i1 %i.w, label %bb.ak, label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !28 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 8 uses
  %i.bu = lshr i64 %.sroa.018.199, 1              ; 6 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 4 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [464 x i8], ptr %0, i64 %i.bw ; 6 uses
  %i.by = icmp ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.018.199 to i1
  %i.ca = or i64 %i.bs, %.sroa.018.199
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = shl i64 %i.bv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hda4797fb765c0207E.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bz, label %bb.x, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit35"

bb.w:                                             ; preds = %bb.t
  %i.ce = or i64 %i.bt, 1
  %i.cf = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfcc5bbc2cb50c6baE(ptr noalias noundef nonnull align 8 %i.bx, i64 noundef %i.bt, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32981
  br label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit35": ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw [464 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfcc5bbc2cb50c6baE(ptr noalias noundef nonnull align 8 %i.cj, i64 noundef %i.bu, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(464) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !32981
  br label %bb.x

bb.x:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd378a8d9a0d26284E.exit35", %bb.v
  %i.cp = icmp eq i64 %i.bt, 0
  %i.cq = icmp eq i64 %i.bu, 0
  %or.cond.i = or i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h6b36bff090fd6badE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i36 = call i64 @llvm.umin.i64(i64 %i.bu, i64 range(i64 0, -9223372036854775808) %i.bt) ; 2 uses
  %i.cr = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cr, label %_ZN4core5slice4sort6stable5merge5merge17h6b36bff090fd6badE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw [464 x i8], ptr %i.bx, i64 %i.bt ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bt, %i.bu  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cs, ptr %i.bx
  %i.ct = mul i64 %.sroa.0.0.i.i36, 464           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ct, i1 false), !alias.scope !33054
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ct ; 6 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.di, %.noexc.i ], [ %i.cs, %bb.z ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.dj, %.noexc.i ], [ %i.cu, %bb.z ] ; 4 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dg, %.noexc.i ], [ %i.bl, %bb.z ]
end_hunk_2
