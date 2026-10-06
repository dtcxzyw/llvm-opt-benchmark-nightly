Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN4core5slice4sort6stable14driftsort_main17h9f976de620bd2a69E:bb.a
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  %i.g = icmp ugt i64 %i.e, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !94651
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #66, !noalias !94651 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1489) #75
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.j = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hee19cfa1ff2d8d0bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i20, i1 noundef zeroext %i.j)
          to label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit" unwind label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit21"

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hee19cfa1ff2d8d0bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 256, i1 noundef zeroext %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit21": ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable14driftsort_main17hc248d1f07278e11fE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
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
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !94660
  %i.f = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #66, !noalias !94660 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1489) #75
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
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hff90a0f9317c5816E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = mul nuw nsw i64 %.sroa.4.0.i.i, 96
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !94661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$GT$17h0150b37944347a0eE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #77
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable14driftsort_main17hfdec7642de6e4615E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 666666)
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i20 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i19, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.0.0.i19, 342
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = mul i64 %.sroa.0.0.i20, 12               ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !94668
  %i.g = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #66, !noalias !94668 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1489) #75
  unreachable

bb.d:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.0.0.i20, %bb.c ] ; 4 uses
  %i.i = icmp samesign ule i64 %.sroa.0.0.i20, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h7cde146badf7cfb3E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.j, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17h847569b033f5c9adE.exit" unwind label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17h847569b033f5c9adE.exit21"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17h847569b033f5c9adE.exit": ; preds = %bb.d
  %i.k = mul nuw nsw i64 %.sroa.4.0.i.i, 12
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #66
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h7cde146badf7cfb3E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %i.a, i64 noundef 341, i1 noundef zeroext %i.l, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17h847569b033f5c9adE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17h847569b033f5c9adE.exit21": ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.m = mul nuw nsw i64 %.sroa.4.0.i.i, 12
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 4) #66
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0e1a8d88d23ef404E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i113 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.fo, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.fm, %bb.y ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread111, %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94735)
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !94736, !noalias !94737, !noundef !44 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !94736, !noalias !94737, !noundef !44 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !94736, !noalias !94737, !noundef !44 ; 3 uses
  %i.t = load i32, ptr %i.l, align 4, !alias.scope !94738, !noalias !94739, !noundef !44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !94738, !noalias !94739, !noundef !44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !94738, !noalias !94739, !noundef !44
  %cond.i.i.i.i45 = icmp eq i32 %i.o, %i.t
  %i.y = icmp ult i32 %i.o, %i.t
  %cond.i.i11.i.i46 = icmp eq i32 %i.q, %i.v
  %i.z = icmp ult i32 %i.q, %i.v
  %i.aa = icmp ult i32 %i.s, %i.x
  %spec.select.i47 = select i1 %cond.i.i11.i.i46, i1 %i.aa, i1 %i.z
  %.sroa.0.1.in.i.i48 = select i1 %cond.i.i.i.i45, i1 %spec.select.i47, i1 %i.y ; 2 uses
  %.not80 = icmp eq i64 %i.k, 2                   ; 2 uses
  br i1 %.sroa.0.1.in.i.i48, label %.preheader, label %.preheader58

.preheader58:                                     ; preds = %bb.h
  br i1 %.not80, label %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not80, label %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread111, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader58, %bb.i
  %i.ab = phi i32 [ %i.aj, %bb.i ], [ %i.s, %.preheader58 ]
  %i.ac = phi i32 [ %i.ah, %bb.i ], [ %i.q, %.preheader58 ] ; 2 uses
  %i.ad = phi i32 [ %i.af, %bb.i ], [ %i.o, %.preheader58 ] ; 2 uses
  %.sroa.01.0.i.i63 = phi i64 [ %i.an, %bb.i ], [ 2, %.preheader58 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.01.0.i.i63 ; 3 uses
  %5 = add i64 %.sroa.01.0.i.i63, -1
  %6 = icmp ult i64 %5, %i.k
  tail call void @llvm.assume(i1 %6)
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !94740, !noalias !94741, !noundef !44 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !94740, !noalias !94741, !noundef !44 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !94740, !noalias !94741, !noundef !44 ; 2 uses
  %cond.i.i.i.i41 = icmp eq i32 %i.af, %i.ad
  %i.ak = icmp ult i32 %i.af, %i.ad
  %cond.i.i11.i.i42 = icmp eq i32 %i.ah, %i.ac
  %i.al = icmp ult i32 %i.ah, %i.ac
  %i.am = icmp ult i32 %i.aj, %i.ab
  %spec.select.i43 = select i1 %cond.i.i11.i.i42, i1 %i.am, i1 %i.al
  %.sroa.0.1.in.i.i44 = select i1 %cond.i.i.i.i41, i1 %spec.select.i43, i1 %i.ak
  br i1 %.sroa.0.1.in.i.i44, label %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.an = add nuw i64 %.sroa.01.0.i.i63, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.j
  %i.ao = phi i32 [ %i.aw, %bb.j ], [ %i.s, %.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.j ], [ %i.q, %.preheader ] ; 2 uses
  %i.aq = phi i32 [ %i.as, %bb.j ], [ %i.o, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i66 = phi i64 [ %i.ba, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.01.1.i.i66 ; 3 uses
  %7 = add i64 %.sroa.01.1.i.i66, -1
  %8 = icmp ult i64 %7, %i.k
  tail call void @llvm.assume(i1 %8)
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !94742, !noalias !94743, !noundef !44 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !94742, !noalias !94743, !noundef !44 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !94742, !noalias !94743, !noundef !44 ; 2 uses
  %cond.i.i.i.i = icmp eq i32 %i.as, %i.aq
  %i.ax = icmp ult i32 %i.as, %i.aq
  %cond.i.i11.i.i = icmp eq i32 %i.au, %i.ap
  %i.ay = icmp ult i32 %i.au, %i.ap
  %i.az = icmp ult i32 %i.aw, %i.ao
  %spec.select.i = select i1 %cond.i.i11.i.i, i1 %i.az, i1 %i.ay
  %.sroa.0.1.in.i.i = select i1 %cond.i.i.i.i, i1 %spec.select.i, i1 %i.ax
  br i1 %.sroa.0.1.in.i.i, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i

bb.j:                                             ; preds = %.lr.ph67
  %i.ba = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond87.not = icmp eq i64 %i.ba, %i.k
  br i1 %exitcond87.not, label %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i, label %.lr.ph67

_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph67
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.bb = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.bb)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread111: ; preds = %.preheader
  br i1 %.not5.i113, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread: ; preds = %.preheader58
  br i1 %.not5.i108, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i
  br i1 %.sroa.0.1.in.i.i48, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.bc = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17heff13b5e9588b385E.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h094bed9ab10f76abE(ptr noalias noundef nonnull align 4 %i.l, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null)
  %i.bd = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.be = or disjoint i64 %i.bd, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17heff13b5e9588b385E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i5356 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread ], [ %.sroa.0.0.i.i109116120, %.lr.ph.i.i38 ]
  %i.bf = shl i64 %.sroa.0.0.i.i5356, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17heff13b5e9588b385E.exit

bb.n:                                             ; preds = %bb.k
  %i.bh = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94744), !noalias !94745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94746), !noalias !94745
  %.not15.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread111, %bb.n
  %i.bi = phi i64 [ %i.bh, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread111 ]
  %.sroa.0.0.i.i109116120 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17he968e4b965c6f9cbE.exit.i.thread111 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.0.0.i.i109116120
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bp, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bk = xor i64 %.sroa.0.014.i.i, -1
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 3 uses
  %i.bm = getelementptr [12 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94747), !noalias !94745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94748), !noalias !94745
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 4, !alias.scope !94749, !noalias !94750
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 4, !alias.scope !94751, !noalias !94752
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.bl, align 4, !alias.scope !94749, !noalias !94750
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.bm, align 4, !alias.scope !94751, !noalias !94752
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94753), !noalias !94745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94754), !noalias !94745
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i = load i32, ptr %i.bn, align 4, !alias.scope !94755, !noalias !94756
  %.sroa.02.0.copyload.i.i5.i.i.i.i.i = load i32, ptr %i.bo, align 4, !alias.scope !94757, !noalias !94758
  store i32 %.sroa.02.0.copyload.i.i5.i.i.i.i.i, ptr %i.bn, align 4, !alias.scope !94755, !noalias !94756
  store i32 %.sroa.0.0.copyload.i.i4.i.i.i.i.i, ptr %i.bo, align 4, !alias.scope !94757, !noalias !94758
  %i.bp = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bp, %i.bi
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17heff13b5e9588b385E.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.bg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit" ], [ %i.be, %bb.m ], [ %i.bc, %bb.l ] ; 2 uses
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
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17heff13b5e9588b385E.exit
  %.sroa.026.0 = phi i8 [ %i.by, %_ZN4core5slice4sort6stable5drift10create_run17heff13b5e9588b385E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17heff13b5e9588b385E.exit ], [ 1, %bb.e ] ; 2 uses
  %i.bz = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bz, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph73, %_ZN4core5slice4sort6stable5drift13logical_merge17h4187f2a693c3c21dE.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.cb, %_ZN4core5slice4sort6stable5drift13logical_merge17h4187f2a693c3c21dE.exit ] ; 2 uses
  %.sroa.018.171 = phi i64 [ %.sroa.018.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4187f2a693c3c21dE.exit ] ; 4 uses
  %i.cb = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !44
  %.not29 = icmp ult i8 %i.cd, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h4187f2a693c3c21dE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.171, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4187f2a693c3c21dE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.172, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h4187f2a693c3c21dE.exit ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cf, align 1
  br i1 %i.j, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cb
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !44 ; 3 uses
  %i.ci = lshr i64 %i.ch, 1                       ; 8 uses
  %i.cj = lshr i64 %.sroa.018.171, 1              ; 6 uses
  %i.ck = add nuw i64 %i.ci, %i.cj                ; 4 uses
  %i.cl = sub i64 %.sroa.09.0, %i.ck
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.cl ; 6 uses
  %i.cn = icmp ugt i64 %i.ck, %3
  %i.co = trunc i64 %.sroa.018.171 to i1
  %i.cp = or i64 %i.ch, %.sroa.018.171
  %i.cq = trunc i64 %i.cp to i1
  %or.cond3.i = or i1 %i.cn, %i.cq
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cr = trunc i64 %i.ch to i1
  br i1 %i.cr, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cs = shl i64 %i.ck, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4187f2a693c3c21dE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.co, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.ct = or i64 %i.ci, 1
  %i.cu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %i.cx = xor i32 %i.cw, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h094bed9ab10f76abE(ptr noalias noundef nonnull align 4 %i.cm, i64 noundef %i.ci, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.cx, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit35": ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.ci
  %i.cz = or i64 %i.cj, 1
  %i.da = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = xor i32 %i.dc, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h094bed9ab10f76abE(ptr noalias noundef nonnull align 4 %i.cy, i64 noundef %i.cj, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.dd, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null)
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit35", %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94760)
  %i.de = icmp eq i64 %i.ci, 0
  %i.df = icmp eq i64 %i.cj, 0
  %or.cond.i = or i1 %i.df, %i.de
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h7465886352f0479bE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 range(i64 0, -9223372036854775808) %i.ci) ; 2 uses
  %i.dg = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dg, label %_ZN4core5slice4sort6stable5merge5merge17h7465886352f0479bE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.ci ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ci, %i.cj  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dh, ptr %i.cm
  %i.di = mul i64 %.sroa.0.0.i.i36, 12            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %.16.i, i64 %i.di, i1 false), !alias.scope !94761
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %i.di ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.dk = phi ptr [ %i.eg, %.preheader.i ], [ %i.dj, %bb.x ] ; 3 uses
  %i.dl = phi ptr [ %i.ee, %.preheader.i ], [ %i.dh, %bb.x ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.do, %.preheader.i ], [ %i.ca, %bb.x ]
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -12 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dk, i64 -12 ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94763)
  %i.dp = load i32, ptr %i.dn, align 4, !alias.scope !94764, !noalias !94765, !noundef !44 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %i.dr = load i32, ptr %i.dq, align 4, !alias.scope !94764, !noalias !94765, !noundef !44 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !alias.scope !94764, !noalias !94765, !noundef !44
  %i.du = load i32, ptr %i.dm, align 4, !alias.scope !94766, !noalias !94767, !noundef !44 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.dl, i64 -8
  %i.dw = load i32, ptr %i.dv, align 4, !alias.scope !94766, !noalias !94767, !noundef !44 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !alias.scope !94766, !noalias !94767, !noundef !44
  %cond.i.i.i.i.i.i = icmp eq i32 %i.dp, %i.du
  %i.dz = icmp ult i32 %i.dp, %i.du
  %cond.i.i11.i.i.i.i = icmp eq i32 %i.dr, %i.dw
  %i.ea = icmp ult i32 %i.dr, %i.dw
  %i.eb = icmp ult i32 %i.dt, %i.dy
  %spec.select.i.i.i = select i1 %cond.i.i11.i.i.i.i, i1 %i.eb, i1 %i.ea
  %.sroa.0.1.in.i.i.i.i = select i1 %cond.i.i.i.i.i.i, i1 %spec.select.i.i.i, i1 %i.dz ; 3 uses
  %..i.i = select i1 %.sroa.0.1.in.i.i.i.i, ptr %i.dm, ptr %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.do, ptr noundef nonnull align 4 dereferenceable(12) %..i.i, i64 12, i1 false), !alias.scope !94761, !noalias !94768
  %i.ec = xor i1 %.sroa.0.1.in.i.i.i.i, true
  %i.ed = zext i1 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [12 x i8], ptr %i.dm, i64 %i.ed ; 3 uses
  %i.ef = zext i1 %.sroa.0.1.in.i.i.i.i to i64
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.ef ; 3 uses
  %i.eh = icmp eq ptr %i.ee, %i.cm
  %i.ei = icmp eq ptr %i.eg, %2
  %or.cond.i.i = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h43a85a85d9105584E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.ej = phi ptr [ %i.fd, %.lr.ph.i.i ], [ %i.cm, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fc, %.lr.ph.i.i ], [ %i.dh, %bb.x ] ; 5 uses
  %i.ek = phi ptr [ %i.fa, %.lr.ph.i.i ], [ %2, %bb.x ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94770)
  %i.el = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !94771, !noalias !94772, !noundef !44 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4
  %i.en = load i32, ptr %i.em, align 4, !alias.scope !94771, !noalias !94772, !noundef !44 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !alias.scope !94771, !noalias !94772, !noundef !44
  %i.eq = load i32, ptr %i.ek, align 4, !alias.scope !94773, !noalias !94774, !noundef !44 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.es = load i32, ptr %i.er, align 4, !alias.scope !94773, !noalias !94774, !noundef !44 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !alias.scope !94773, !noalias !94774, !noundef !44
  %cond.i.i.i.i.i19.i = icmp eq i32 %i.el, %i.eq
  %i.ev = icmp ult i32 %i.el, %i.eq
  %cond.i.i11.i.i.i20.i = icmp eq i32 %i.en, %i.es
  %i.ew = icmp ult i32 %i.en, %i.es
  %i.ex = icmp ult i32 %i.ep, %i.eu
  %spec.select.i.i21.i = select i1 %cond.i.i11.i.i.i20.i, i1 %i.ex, i1 %i.ew
  %.sroa.0.1.in.i.i.i22.i = select i1 %cond.i.i.i.i.i19.i, i1 %spec.select.i.i21.i, i1 %i.ev ; 3 uses
  %i.ey = xor i1 %.sroa.0.1.in.i.i.i22.i, true
  %spec.select.i.i = select i1 %.sroa.0.1.in.i.i.i22.i, ptr %.sroa.0.02.i.i, ptr %i.ek
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ej, ptr noundef nonnull align 4 dereferenceable(12) %spec.select.i.i, i64 12, i1 false), !alias.scope !94761, !noalias !94775
  %i.ez = zext i1 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.ek, i64 %i.ez ; 3 uses
  %i.fb = zext i1 %.sroa.0.1.in.i.i.i22.i to i64
  %i.fc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.02.i.i, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 12 ; 2 uses
  %i.fe = icmp ne ptr %i.fa, %i.dj
  %i.ff = icmp ne ptr %i.fc, %i.ca
  %or.cond.i23.i = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h43a85a85d9105584E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h43a85a85d9105584E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.ee, %.preheader.i ], [ %i.fd, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.eg, %.preheader.i ], [ %i.dj, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.fa, %.lr.ph.i.i ] ; 2 uses
  %i.fg = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fh = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fi = sub nuw i64 %i.fg, %i.fh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.fi, i1 false), !alias.scope !94761, !noalias !94776
  br label %_ZN4core5slice4sort6stable5merge5merge17h7465886352f0479bE.exit

_ZN4core5slice4sort6stable5merge5merge17h7465886352f0479bE.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h43a85a85d9105584E.exit.i"
  %i.fj = shl i64 %i.ck, 1
  %i.fk = or disjoint i64 %i.fj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4187f2a693c3c21dE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h4187f2a693c3c21dE.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h7465886352f0479bE.exit
  %.sroa.0.0.i = phi i64 [ %i.fk, %_ZN4core5slice4sort6stable5merge5merge17h7465886352f0479bE.exit ], [ %i.cs, %bb.s ] ; 2 uses
  %i.fl = icmp ugt i64 %i.cb, 1
  br i1 %i.fl, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.fm = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fn = lshr i64 %.sroa.023.0, 1
  %i.fo = add i64 %i.fn, %.sroa.09.0
  br label %bb.e

bb.z:                                             ; preds = %._crit_edge
  %i.fp = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fp, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fq = or i64 %1, 1
  %i.fr = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fq, i1 true)
  %i.fs = trunc nuw nsw i64 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 1
  %i.fu = xor i32 %i.ft, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h094bed9ab10f76abE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.fu, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h10e9f588280d657aE(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i129 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i134 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.hz, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.hx, %bb.z ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94914)
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread132, %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !94914, !noalias !94915, !nonnull !44, !align !50, !noundef !44 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94917)
  %.val2.i51 = load ptr, ptr %.val8.i, align 8, !noalias !94918, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94919), !noalias !94920
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i51, i64 288
  %i.p = load i32, ptr %i.n, align 4, !alias.scope !94921, !noalias !94922, !noundef !44
  %i.q = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, i32 noundef %i.p), !noalias !94923 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !94921, !noalias !94922, !noundef !44 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !94921, !noalias !94922, !noundef !44
  %.val.i52 = load ptr, ptr %.val8.i, align 8, !noalias !94918, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94924), !noalias !94920
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i52, i64 288
  %i.y = load i32, ptr %i.l, align 4, !alias.scope !94925, !noalias !94926, !noundef !44
  %i.z = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, i32 noundef %i.y), !noalias !94927 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !94925, !noalias !94926, !noundef !44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !94925, !noalias !94926, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ], !noalias !94920
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ], !noalias !94920
  %..i.i.i.i.i.i53 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.ab)
  %i.ag = sub i64 %i.s, %i.ab
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.r, ptr nonnull readonly align 1 %i.aa, i64 %..i.i.i.i.i.i53), !alias.scope !94928, !noalias !94929 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %spec.store.select.i.i.i.i.i.i54 = select i1 %i.aj, i64 %i.ag, i64 %i.ai ; 2 uses
  %cond.i.i.i.i.i55 = icmp eq i64 %spec.store.select.i.i.i.i.i.i54, 0
  %i.ak = icmp slt i64 %spec.store.select.i.i.i.i.i.i54, 0
  %cond.i.i.i.i56 = icmp eq i32 %i.u, %i.ad
  %i.al = icmp ult i32 %i.u, %i.ad
  %i.am = icmp ult i32 %i.w, %i.af
  %spec.select.i57 = select i1 %cond.i.i.i.i56, i1 %i.am, i1 %i.al
  %.sroa.0.1.i.i58 = select i1 %cond.i.i.i.i.i55, i1 %spec.select.i57, i1 %i.ak ; 2 uses
  %.not101 = icmp eq i64 %i.k, 2                  ; 2 uses
  br i1 %.sroa.0.1.i.i58, label %.preheader68, label %.preheader69

.preheader69:                                     ; preds = %bb.h
  br i1 %.not101, label %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread, label %.lr.ph

.preheader68:                                     ; preds = %bb.h
  br i1 %.not101, label %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread132, label %.lr.ph88

.lr.ph:                                           ; preds = %.preheader69, %bb.i
  %.sroa.01.0.i.i84 = phi i64 [ %i.bn, %bb.i ], [ 2, %.preheader69 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.01.0.i.i84 ; 3 uses
  %6 = add i64 %.sroa.01.0.i.i84, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.k
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94931)
  %.val2.i43 = load ptr, ptr %.val8.i, align 8, !noalias !94932, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94933), !noalias !94920
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i43, i64 288
  %i.ap = load i32, ptr %i.an, align 4, !alias.scope !94934, !noalias !94935, !noundef !44
  %i.aq = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao, i32 noundef %i.ap), !noalias !94936 ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !94934, !noalias !94935, !noundef !44 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !94934, !noalias !94935, !noundef !44
  %.val.i44 = load ptr, ptr %.val8.i, align 8, !noalias !94932, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94937), !noalias !94920
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i44, i64 288
  %i.ay = load i32, ptr %8, align 4, !alias.scope !94938, !noalias !94939, !noundef !44
  %i.az = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax, i32 noundef %i.ay), !noalias !94940 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.az, 1      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !94938, !noalias !94939, !noundef !44 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !94938, !noalias !94939, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ], !noalias !94920
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ], !noalias !94920
  %..i.i.i.i.i.i45 = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.bb)
  %i.bg = sub i64 %i.as, %i.bb
  %i.bh = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.ar, ptr nonnull readonly align 1 %i.ba, i64 %..i.i.i.i.i.i45), !alias.scope !94941, !noalias !94942 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i32 %i.bh, 0
  %spec.store.select.i.i.i.i.i.i46 = select i1 %i.bj, i64 %i.bg, i64 %i.bi ; 2 uses
  %cond.i.i.i.i.i47 = icmp eq i64 %spec.store.select.i.i.i.i.i.i46, 0
  %i.bk = icmp slt i64 %spec.store.select.i.i.i.i.i.i46, 0
  %cond.i.i.i.i48 = icmp eq i32 %i.au, %i.bd
  %i.bl = icmp ult i32 %i.au, %i.bd
  %i.bm = icmp ult i32 %i.aw, %i.bf
  %spec.select.i49 = select i1 %cond.i.i.i.i48, i1 %i.bm, i1 %i.bl
  %.sroa.0.1.i.i50 = select i1 %cond.i.i.i.i.i47, i1 %spec.select.i49, i1 %i.bk
  br i1 %.sroa.0.1.i.i50, label %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bn = add nuw i64 %.sroa.01.0.i.i84, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i, label %.lr.ph

.lr.ph88:                                         ; preds = %.preheader68, %bb.j
  %.sroa.01.1.i.i87 = phi i64 [ %i.co, %bb.j ], [ 2, %.preheader68 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.01.1.i.i87 ; 3 uses
  %9 = add i64 %.sroa.01.1.i.i87, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.k
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94944)
  %.val2.i = load ptr, ptr %.val8.i, align 8, !noalias !94945, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94946), !noalias !94920
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2.i, i64 288
  %i.bq = load i32, ptr %i.bo, align 4, !alias.scope !94947, !noalias !94948, !noundef !44
  %i.br = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp, i32 noundef %i.bq), !noalias !94949 ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.br, 1      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !94947, !noalias !94948, !noundef !44 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !alias.scope !94947, !noalias !94948, !noundef !44
  %.val.i42 = load ptr, ptr %.val8.i, align 8, !noalias !94945, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94950), !noalias !94920
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i42, i64 288
  %i.bz = load i32, ptr %11, align 4, !alias.scope !94951, !noalias !94952, !noundef !44
  %i.ca = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by, i32 noundef %i.bz), !noalias !94953 ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0      ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.ca, 1      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !alias.scope !94951, !noalias !94952, !noundef !44 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !alias.scope !94951, !noalias !94952, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ], !noalias !94920
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ], !noalias !94920
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.cc)
  %i.ch = sub i64 %i.bt, %i.cc
  %i.ci = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.bs, ptr nonnull readonly align 1 %i.cb, i64 %..i.i.i.i.i.i), !alias.scope !94954, !noalias !94955 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp eq i32 %i.ci, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ck, i64 %i.ch, i64 %i.cj ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %spec.store.select.i.i.i.i.i.i, 0
  %i.cl = icmp slt i64 %spec.store.select.i.i.i.i.i.i, 0
  %cond.i.i.i.i = icmp eq i32 %i.bv, %i.ce
  %i.cm = icmp ult i32 %i.bv, %i.ce
  %i.cn = icmp ult i32 %i.bx, %i.cg
  %spec.select.i = select i1 %cond.i.i.i.i, i1 %i.cn, i1 %i.cm
  %.sroa.0.1.i.i = select i1 %cond.i.i.i.i.i, i1 %spec.select.i, i1 %i.cl
  br i1 %.sroa.0.1.i.i, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i

bb.j:                                             ; preds = %.lr.ph88
  %i.co = add nuw i64 %.sroa.01.1.i.i87, 1        ; 2 uses
  %exitcond114.not = icmp eq i64 %i.co, %i.k
  br i1 %exitcond114.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i, label %.lr.ph88

_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph88
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i87, %.lr.ph88 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i84, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.cp = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.cp)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread132: ; preds = %.preheader68
  br i1 %.not5.i134, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread: ; preds = %.preheader69
  br i1 %.not5.i129, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i
  br i1 %.sroa.0.1.i.i58, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.cq = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1daa3cb4f58ba8b8E.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc91b4a1923d8a782E(ptr noalias noundef nonnull align 4 %i.l, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !94844
  %i.cr = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.cs = or disjoint i64 %i.cr, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1daa3cb4f58ba8b8E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit": ; preds = %.lr.ph.i.i39, %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i6366 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread ], [ %.sroa.0.0.i.i130137141, %.lr.ph.i.i39 ]
  %i.ct = shl i64 %.sroa.0.0.i.i6366, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1daa3cb4f58ba8b8E.exit

bb.n:                                             ; preds = %bb.k
  %i.cv = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94956), !noalias !94920
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94957), !noalias !94920
  %.not15.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread132, %bb.n
  %i.cw = phi i64 [ %i.cv, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread132 ]
  %.sroa.0.0.i.i130137141 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hf458bfd66135849bE.exit.i.thread132 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.0.0.i.i130137141
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.dd, %.lr.ph.i.i39 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cy = xor i64 %.sroa.0.014.i.i, -1
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 3 uses
  %i.da = getelementptr [12 x i8], ptr %i.cx, i64 %i.cy ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94958), !noalias !94920
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94959), !noalias !94920
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cz, align 4, !alias.scope !94960, !noalias !94961
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.da, align 4, !alias.scope !94962, !noalias !94963
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.cz, align 4, !alias.scope !94960, !noalias !94961
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.da, align 4, !alias.scope !94962, !noalias !94963
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94964), !noalias !94920
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94965), !noalias !94920
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i = load i32, ptr %i.db, align 4, !alias.scope !94966, !noalias !94967
  %.sroa.02.0.copyload.i.i5.i.i.i.i.i = load i32, ptr %i.dc, align 4, !alias.scope !94968, !noalias !94969
  store i32 %.sroa.02.0.copyload.i.i5.i.i.i.i.i, ptr %i.db, align 4, !alias.scope !94966, !noalias !94967
  store i32 %.sroa.0.0.copyload.i.i4.i.i.i.i.i, ptr %i.dc, align 4, !alias.scope !94968, !noalias !94969
  %i.dd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dd, %i.cw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h1daa3cb4f58ba8b8E.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.cu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit" ], [ %i.cs, %bb.m ], [ %i.cq, %bb.l ] ; 2 uses
  %i.de = lshr i64 %.sroa.018.0, 1
  %i.df = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.dg = sub i64 %factor, %i.de
  %i.dh = add i64 %i.df, %factor
  %i.di = mul i64 %i.dg, %.sroa.0.0
  %i.dj = mul i64 %i.dh, %.sroa.0.0
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dk, i1 false)
  %i.dm = trunc nuw nsw i64 %i.dl to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h1daa3cb4f58ba8b8E.exit
  %.sroa.026.0 = phi i8 [ %i.dm, %_ZN4core5slice4sort6stable5drift10create_run17h1daa3cb4f58ba8b8E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h1daa3cb4f58ba8b8E.exit ], [ 1, %bb.e ] ; 2 uses
  %i.dn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.dn, label %.lr.ph94, label %._crit_edge

.lr.ph94:                                         ; preds = %bb.o
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph94, %_ZN4core5slice4sort6stable5drift13logical_merge17h1eed2140ebb0c60eE.exit
  %.sroa.02.193 = phi i64 [ %.sroa.02.0, %.lr.ph94 ], [ %i.dp, %_ZN4core5slice4sort6stable5drift13logical_merge17h1eed2140ebb0c60eE.exit ] ; 2 uses
  %.sroa.018.192 = phi i64 [ %.sroa.018.0, %.lr.ph94 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1eed2140ebb0c60eE.exit ] ; 4 uses
  %i.dp = add i64 %.sroa.02.193, -1               ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !noundef !44
  %.not29 = icmp ult i8 %i.dr, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h1eed2140ebb0c60eE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.192, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1eed2140ebb0c60eE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.193, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h1eed2140ebb0c60eE.exit ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.dt, align 1
  br i1 %i.j, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dp
  %i.dv = load i64, ptr %i.du, align 8, !noundef !44 ; 3 uses
  %i.dw = lshr i64 %i.dv, 1                       ; 8 uses
  %i.dx = lshr i64 %.sroa.018.192, 1              ; 6 uses
  %i.dy = add nuw i64 %i.dw, %i.dx                ; 4 uses
  %i.dz = sub i64 %.sroa.09.0, %i.dy
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.dz ; 6 uses
  %i.eb = icmp ugt i64 %i.dy, %3
  %i.ec = trunc i64 %.sroa.018.192 to i1
  %i.ed = or i64 %i.dv, %.sroa.018.192
  %i.ee = trunc i64 %i.ed to i1
  %or.cond3.i = or i1 %i.eb, %i.ee
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ef = trunc i64 %i.dv to i1
  br i1 %i.ef, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.eg = shl i64 %i.dy, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1eed2140ebb0c60eE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.ec, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.eh = or i64 %i.dw, 1
  %i.ei = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = xor i32 %i.ek, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc91b4a1923d8a782E(ptr noalias noundef nonnull align 4 %i.ea, i64 noundef %i.dw, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.el, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !94856
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit35": ; preds = %bb.t
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %i.dw
  %i.en = or i64 %i.dx, 1
  %i.eo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = xor i32 %i.eq, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc91b4a1923d8a782E(ptr noalias noundef nonnull align 4 %i.em, i64 noundef %i.dx, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.er, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !94856
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit35", %bb.t
  %.val = load ptr, ptr %5, align 8               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94971)
  %i.es = icmp eq i64 %i.dw, 0
  %i.et = icmp eq i64 %i.dx, 0
  %or.cond.i = or i1 %i.et, %i.es
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h2c612e05ab4ca056E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 range(i64 0, -9223372036854775808) %i.dw) ; 2 uses
  %i.eu = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.eu, label %_ZN4core5slice4sort6stable5merge5merge17h2c612e05ab4ca056E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %i.dw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dw, %i.dx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ev, ptr %i.ea
  %i.ew = mul i64 %.sroa.0.0.i.i36, 12            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %.16.i, i64 %i.ew, i1 false), !alias.scope !94972
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h10e9f588280d657aE:bb.a
  %i.fm = extractvalue { ptr, i64 } %i.fd, 0      ; 2 uses
  %i.fn = extractvalue { ptr, i64 } %i.fk, 0      ; 2 uses
  %i.fo = extractvalue { ptr, i64 } %i.fk, 1      ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8
  %i.fq = load i32, ptr %i.fp, align 4, !alias.scope !94978, !noalias !94979, !noundef !44 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -4
  %i.fs = load i32, ptr %i.fr, align 4, !alias.scope !94978, !noalias !94979, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fm) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ]
  %..i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 %i.fo)
  %i.ft = sub i64 %i.fl, %i.fo
  %i.fu = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.fm, ptr nonnull readonly align 1 %i.fn, i64 %..i.i.i.i.i.i.i.i), !alias.scope !94980, !noalias !94981 ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp eq i32 %i.fu, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.fw, i64 %i.ft, i64 %i.fv ; 2 uses
  %cond.i.i.i.i.i.i.i = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  %i.fx = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  %cond.i.i.i.i.i.i = icmp eq i32 %i.ff, %i.fq
  %i.fy = icmp ult i32 %i.ff, %i.fq
  %i.fz = icmp ult i32 %i.fh, %i.fs
  %spec.select.i.i.i = select i1 %cond.i.i.i.i.i.i, i1 %i.fz, i1 %i.fy
  %.sroa.0.1.i.i.i.i = select i1 %cond.i.i.i.i.i.i.i, i1 %spec.select.i.i.i, i1 %i.fx ; 3 uses
  %..i.i = select i1 %.sroa.0.1.i.i.i.i, ptr %i.ey, ptr %i.ez
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fa, ptr noundef nonnull align 4 dereferenceable(12) %..i.i, i64 12, i1 false), !alias.scope !94972, !noalias !94982
  %i.ga = xor i1 %.sroa.0.1.i.i.i.i, true
  %i.gb = zext i1 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %i.gb ; 3 uses
  %i.gd = zext i1 %.sroa.0.1.i.i.i.i to i64
  %i.ge = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %i.gd ; 3 uses
  %i.gf = icmp eq ptr %i.gc, %i.ea
  %i.gg = icmp eq ptr %i.ge, %2
  %or.cond.i.i = select i1 %i.gf, i1 true, i1 %i.gg
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3ac814788a1e806aE.exit.i", label %.preheader

.lr.ph.i.i:                                       ; preds = %bb.x, %.noexc31.i
  %.sroa.13.1.i = phi ptr [ %i.hl, %.noexc31.i ], [ %i.ea, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.hi, %.noexc31.i ], [ %2, %bb.x ] ; 6 uses
  %.sroa.0.02.i.i = phi ptr [ %i.hk, %.noexc31.i ], [ %i.ev, %bb.x ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94984)
  %.val2.i.i21.i = load ptr, ptr %.val, align 8, !noalias !94985, !nonnull !44, !align !50, !noundef !44
  %i.gh = getelementptr inbounds nuw i8, ptr %.val2.i.i21.i, i64 288
  %i.gi = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !94986, !noalias !94987, !noundef !44
  %i.gj = invoke { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gh, i32 noundef %i.gi)
          to label %.noexc30.i unwind label %.loopexit.split-lp.i, !noalias !94972 ; 2 uses

.noexc30.i:                                       ; preds = %.lr.ph.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !alias.scope !94986, !noalias !94987, !noundef !44 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %i.gn = load i32, ptr %i.gm, align 4, !alias.scope !94986, !noalias !94987, !noundef !44
  %.val.i.i22.i = load ptr, ptr %.val, align 8, !noalias !94985, !nonnull !44, !align !50, !noundef !44
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i22.i, i64 288
  %i.gp = load i32, ptr %.sroa.0.0.i38, align 4, !alias.scope !94988, !noalias !94989, !noundef !44
  %i.gq = invoke { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.go, i32 noundef %i.gp)
          to label %.noexc31.i unwind label %.loopexit.split-lp.i, !noalias !94972 ; 2 uses

.noexc31.i:                                       ; preds = %.noexc30.i
  %i.gr = extractvalue { ptr, i64 } %i.gj, 1      ; 2 uses
  %i.gs = extractvalue { ptr, i64 } %i.gj, 0      ; 2 uses
  %i.gt = extractvalue { ptr, i64 } %i.gq, 0      ; 2 uses
  %i.gu = extractvalue { ptr, i64 } %i.gq, 1      ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !alias.scope !94988, !noalias !94989, !noundef !44 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !alias.scope !94988, !noalias !94989, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gs) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gt) ]
  %..i.i.i.i.i.i.i23.i = tail call i64 @llvm.umin.i64(i64 %i.gr, i64 %i.gu)
  %i.gz = sub i64 %i.gr, %i.gu
  %i.ha = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.gs, ptr nonnull readonly align 1 %i.gt, i64 %..i.i.i.i.i.i.i23.i), !alias.scope !94990, !noalias !94991 ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp eq i32 %i.ha, 0
  %spec.store.select.i.i.i.i.i.i.i24.i = select i1 %i.hc, i64 %i.gz, i64 %i.hb ; 2 uses
  %cond.i.i.i.i.i.i25.i = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i24.i, 0
  %i.hd = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i24.i, 0
  %cond.i.i.i.i.i26.i = icmp eq i32 %i.gl, %i.gw
  %i.he = icmp ult i32 %i.gl, %i.gw
  %i.hf = icmp ult i32 %i.gn, %i.gy
  %spec.select.i.i27.i = select i1 %cond.i.i.i.i.i26.i, i1 %i.hf, i1 %i.he
  %.sroa.0.1.i.i.i28.i = select i1 %cond.i.i.i.i.i.i25.i, i1 %spec.select.i.i27.i, i1 %i.hd ; 3 uses
  %i.hg = xor i1 %.sroa.0.1.i.i.i28.i, true
  %spec.select.i.i = select i1 %.sroa.0.1.i.i.i28.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.1.i, ptr noundef nonnull align 4 dereferenceable(12) %spec.select.i.i, i64 12, i1 false), !alias.scope !94972, !noalias !94992
  %i.hh = zext i1 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i38, i64 %i.hh ; 3 uses
  %i.hj = zext i1 %.sroa.0.1.i.i.i28.i to i64
  %i.hk = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.02.i.i, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 12 ; 2 uses
  %i.hm = icmp ne ptr %i.hi, %i.ex
  %i.hn = icmp ne ptr %i.hk, %i.do
  %or.cond.i29.i = select i1 %i.hm, i1 %i.hn, i1 false
  br i1 %or.cond.i29.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3ac814788a1e806aE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3ac814788a1e806aE.exit.i": ; preds = %.noexc31.i, %.noexc19.i
  %.sroa.13.4.i = phi ptr [ %i.gc, %.noexc19.i ], [ %i.hl, %.noexc31.i ]
  %.sroa.7.2.i = phi ptr [ %i.ge, %.noexc19.i ], [ %i.ex, %.noexc31.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc19.i ], [ %i.hi, %.noexc31.i ] ; 2 uses
  %i.ho = ptrtoint ptr %.sroa.7.2.i to i64
  %i.hp = ptrtoint ptr %.sroa.0.3.i to i64
  %i.hq = sub nuw i64 %i.ho, %i.hp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.hq, i1 false), !alias.scope !94972, !noalias !94993
  br label %_ZN4core5slice4sort6stable5merge5merge17h2c612e05ab4ca056E.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %.noexc30.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ex, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.hr = ptrtoint ptr %.sroa.7.1.i to i64
  %i.hs = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ht = sub nuw i64 %i.hr, %i.hs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.3.i, ptr align 4 %.sroa.0.2.i, i64 %i.ht, i1 false), !alias.scope !94972, !noalias !94994
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h2c612e05ab4ca056E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3ac814788a1e806aE.exit.i"
  %i.hu = shl i64 %i.dy, 1
  %i.hv = or disjoint i64 %i.hu, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1eed2140ebb0c60eE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h1eed2140ebb0c60eE.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h2c612e05ab4ca056E.exit
  %.sroa.0.0.i = phi i64 [ %i.hv, %_ZN4core5slice4sort6stable5merge5merge17h2c612e05ab4ca056E.exit ], [ %i.eg, %bb.s ] ; 2 uses
  %i.hw = icmp ugt i64 %i.dp, 1
  br i1 %i.hw, label %bb.p, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.hx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.hy = lshr i64 %.sroa.023.0, 1
  %i.hz = add i64 %i.hy, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.ia = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ia, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ib = or i64 %1, 1
  %i.ic = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ib, i1 true)
  %i.id = trunc nuw nsw i64 %i.ic to i32
  %i.ie = shl nuw nsw i32 %i.id, 1
  %i.if = xor i32 %i.ie, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc91b4a1923d8a782E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.if, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !94856
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h4d98004781842614E(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i101 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i106 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.fa, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.ey, %bb.y ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h50afddd1600e3be1E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h50afddd1600e3be1E.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95060)
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread104, %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h50afddd1600e3be1E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h50afddd1600e3be1E.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val14.i = load ptr, ptr %i.n, align 8, !alias.scope !95060, !noalias !95061, !nonnull !44, !align !57, !noundef !44 ; 3 uses
  %i.o = getelementptr i8, ptr %i.l, i64 24
  %.val15.i = load i64, ptr %i.o, align 8, !alias.scope !95060, !noalias !95061, !noundef !44 ; 4 uses
  %.val16.i = load ptr, ptr %i.l, align 8, !alias.scope !95060, !noalias !95061, !nonnull !44, !align !57, !noundef !44
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val17.i = load i64, ptr %i.p, align 8, !alias.scope !95060, !noalias !95061, !noundef !44 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.q = sub i64 %.val15.i, %.val17.i
  %i.r = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !95062, !noalias !95063 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.t, i64 %i.q, i64 %i.s
  %i.u = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.k, 2                   ; 2 uses
  br i1 %i.u, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.h
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread104, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.i
  %.val13.i = phi i64 [ %.val11.i, %bb.i ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.i ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.ac, %bb.i ], [ 2, %.preheader54 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.01.0.i.i59 ; 2 uses
  %5 = add i64 %.sroa.01.0.i.i59, -1
  %6 = icmp ult i64 %5, %i.k
  tail call void @llvm.assume(i1 %6)
  %.val10.i = load ptr, ptr %i.v, align 8, !alias.scope !95060, !noalias !95061, !nonnull !44, !align !57, !noundef !44 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val11.i = load i64, ptr %i.w, align 8, !alias.scope !95060, !noalias !95061, !noundef !44 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.x = sub i64 %.val11.i, %.val13.i
  %i.y = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !95064, !noalias !95063 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.aa, i64 %i.x, i64 %i.z
  %i.ab = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ab, label %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ac = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.j
  %.val9.i = phi i64 [ %.val7.i, %bb.j ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.j ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ak, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.01.1.i.i62 ; 2 uses
  %7 = add i64 %.sroa.01.1.i.i62, -1
  %8 = icmp ult i64 %7, %i.k
  tail call void @llvm.assume(i1 %8)
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !95060, !noalias !95061, !nonnull !44, !align !57, !noundef !44 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val7.i = load i64, ptr %i.ae, align 8, !alias.scope !95060, !noalias !95061, !noundef !44 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.af = sub i64 %.val7.i, %.val9.i
  %i.ag = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !95065, !noalias !95063 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.ai, i64 %i.af, i64 %i.ah
  %i.aj = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.aj, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i

bb.j:                                             ; preds = %.lr.ph63
  %i.ak = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ak, %i.k
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.al = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.al)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread104: ; preds = %.preheader
  br i1 %.not5.i106, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i101, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i
  br i1 %i.u, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.am = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h9c894ec7e2ef8aacE.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8e3acf9f28efea69E(ptr noalias noundef nonnull align 8 %i.l, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  %i.an = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h9c894ec7e2ef8aacE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i38
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit", label %.lr.ph.i.i38.epil.preheader

.lr.ph.i.i38.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.br, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod13 = trunc i64 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.ap = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.ar = getelementptr [16 x i8], ptr %i.ba, i64 %i.ap ; 3 uses
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !95066, !noalias !95067, !nonnull !44, !align !57, !noundef !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !95066, !noalias !95067, !noundef !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !95068, !noalias !95061
  store ptr %i.as, ptr %i.ar, align 8, !alias.scope !95069, !noalias !95070
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.au, ptr %i.av, align 8, !alias.scope !95069, !noalias !95070
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit": ; preds = %.lr.ph.i.i38.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4952 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread ], [ %.sroa.0.0.i.i102109113, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i102109113, %.lr.ph.i.i38.epil.preheader ]
  %i.aw = shl i64 %.sroa.0.0.i.i4952, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h9c894ec7e2ef8aacE.exit

bb.n:                                             ; preds = %bb.k
  %i.ay = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95071), !noalias !95061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95072), !noalias !95061
  %.not15.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread104, %bb.n
  %i.az = phi i64 [ %i.ay, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread104 ] ; 4 uses
  %.sroa.0.0.i.i102109113 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9ec2de39ea0371a4E.exit.i.thread104 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.0.i.i102109113 ; 3 uses
  %xtraiter = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.az, 1
  br i1 %i.bb, label %.lr.ph.i.i38.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.az, 9223372036854775806
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.br, %.lr.ph.i.i38 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i38 ]
  %i.bc = xor i64 %.sroa.0.014.i.i, -1
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 3 uses
  %i.be = getelementptr [16 x i8], ptr %i.ba, i64 %i.bc ; 3 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !alias.scope !95066, !noalias !95067, !nonnull !44, !align !57, !noundef !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !95066, !noalias !95067, !noundef !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !alias.scope !95068, !noalias !95061
  store ptr %i.bf, ptr %i.be, align 8, !alias.scope !95069, !noalias !95070
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !alias.scope !95069, !noalias !95070
  %i.bj = xor i64 %.sroa.0.014.i.i, -2
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bm = getelementptr [16 x i8], ptr %i.ba, i64 %i.bj ; 3 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !alias.scope !95066, !noalias !95067, !nonnull !44, !align !57, !noundef !44
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !95066, !noalias !95067, !noundef !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !alias.scope !95068, !noalias !95061
  store ptr %i.bn, ptr %i.bm, align 8, !alias.scope !95069, !noalias !95070
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !alias.scope !95069, !noalias !95070
  %i.br = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h9c894ec7e2ef8aacE.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ax, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc7b2230d7b3ad3f5E.exit" ], [ %i.ao, %bb.m ], [ %i.am, %bb.l ] ; 2 uses
  %i.bs = lshr i64 %.sroa.018.0, 1
  %i.bt = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bu = sub i64 %factor, %i.bs
  %i.bv = add i64 %i.bt, %factor
  %i.bw = mul i64 %i.bu, %.sroa.0.0
  %i.bx = mul i64 %i.bv, %.sroa.0.0
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 false)
  %i.ca = trunc nuw nsw i64 %i.bz to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h9c894ec7e2ef8aacE.exit
  %.sroa.026.0 = phi i8 [ %i.ca, %_ZN4core5slice4sort6stable5drift10create_run17h9c894ec7e2ef8aacE.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h9c894ec7e2ef8aacE.exit ], [ 1, %bb.e ] ; 2 uses
  %i.cb = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cb, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h8f83a19bdfbf20a8E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cd, %_ZN4core5slice4sort6stable5drift13logical_merge17h8f83a19bdfbf20a8E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h8f83a19bdfbf20a8E.exit ] ; 4 uses
  %i.cd = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !44
  %.not29 = icmp ult i8 %i.cf, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h8f83a19bdfbf20a8E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.167, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h8f83a19bdfbf20a8E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.168, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h8f83a19bdfbf20a8E.exit ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ch, align 1
  br i1 %i.j, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cd
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !44 ; 3 uses
  %i.ck = lshr i64 %i.cj, 1                       ; 8 uses
  %i.cl = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cm = add nuw i64 %i.ck, %i.cl                ; 4 uses
  %i.cn = sub i64 %.sroa.09.0, %i.cm
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cn ; 6 uses
  %i.cp = icmp ugt i64 %i.cm, %3
  %i.cq = trunc i64 %.sroa.018.167 to i1
  %i.cr = or i64 %i.cj, %.sroa.018.167
  %i.cs = trunc i64 %i.cr to i1
  %or.cond3.i = or i1 %i.cp, %i.cs
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = trunc i64 %i.cj to i1
  br i1 %i.ct, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cu = shl i64 %i.cm, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h8f83a19bdfbf20a8E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cq, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h50afddd1600e3be1E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.cv = or i64 %i.ck, 1
  %i.cw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8e3acf9f28efea69E(ptr noalias noundef nonnull align 8 %i.co, i64 noundef %i.ck, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h50afddd1600e3be1E.exit35": ; preds = %bb.t
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.ck
  %i.db = or i64 %i.cl, 1
  %i.dc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8e3acf9f28efea69E(ptr noalias noundef nonnull align 8 %i.da, i64 noundef %i.cl, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h50afddd1600e3be1E.exit35", %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95074)
  %i.dg = icmp eq i64 %i.ck, 0
  %i.dh = icmp eq i64 %i.cl, 0
  %or.cond.i = or i1 %i.dh, %i.dg
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h86b59312d0818291E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 range(i64 0, -9223372036854775808) %i.ck) ; 2 uses
  %i.di = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.di, label %_ZN4core5slice4sort6stable5merge5merge17h86b59312d0818291E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.ck ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ck, %i.cl  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dj, ptr %i.co
  %i.dk = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dk, i1 false), !alias.scope !95075
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 %i.dk ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.dm = phi ptr [ %i.ea, %.preheader.i ], [ %i.dl, %bb.x ] ; 2 uses
  %i.dn = phi ptr [ %i.dz, %.preheader.i ], [ %i.dj, %bb.x ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dq, %.preheader.i ], [ %i.cc, %bb.x ]
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -16 ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 -16 ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !95074, !noalias !95076, !nonnull !44, !align !57, !noundef !44
  %i.dr = getelementptr i8, ptr %i.dm, i64 -8
  %.val10.i.i = load i64, ptr %i.dr, align 8, !alias.scope !95074, !noalias !95076, !noundef !44 ; 2 uses
  %.val11.i.i = load ptr, ptr %i.do, align 8, !alias.scope !95073, !noalias !95077, !nonnull !44, !align !57, !noundef !44
  %i.ds = getelementptr i8, ptr %i.dn, i64 -8
  %.val12.i.i = load i64, ptr %i.ds, align 8, !alias.scope !95073, !noalias !95077, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dt = sub i64 %.val10.i.i, %.val12.i.i
  %i.du = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !95078, !noalias !95079 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp eq i32 %i.du, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.dw, i64 %i.dt, i64 %i.dv ; 2 uses
  %i.dx = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dx, ptr %i.dp, ptr %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !95075, !noalias !95080
  %i.dy = zext i1 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dy ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.eb = icmp eq ptr %i.dz, %i.co
  %i.ec = icmp eq ptr %i.ea, %2
  %or.cond.i.i = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hafc475f51f455389E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.ed = phi ptr [ %i.ep, %.lr.ph.i.i ], [ %i.co, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eo, %.lr.ph.i.i ], [ %i.dj, %bb.x ] ; 4 uses
  %i.ee = phi ptr [ %i.en, %.lr.ph.i.i ], [ %2, %bb.x ] ; 4 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !95073, !noalias !95081, !nonnull !44, !align !57, !noundef !44
  %i.ef = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ef, align 8, !alias.scope !95073, !noalias !95081, !noundef !44 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.ee, align 8, !alias.scope !95074, !noalias !95082, !nonnull !44, !align !57, !noundef !44
  %i.eg = getelementptr i8, ptr %i.ee, i64 8
  %.val7.i.i = load i64, ptr %i.eg, align 8, !alias.scope !95074, !noalias !95082, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.eh = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ei = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !95083, !noalias !95084 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp eq i32 %i.ei, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ek, i64 %i.eh, i64 %i.ej ; 2 uses
  %i.el = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.el, ptr %i.ee, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !95075, !noalias !95085
  %i.em = zext i1 %i.el to i64
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.em ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.eq = icmp ne ptr %i.en, %i.dl
  %i.er = icmp ne ptr %i.eo, %i.cc
  %or.cond.i23.i = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hafc475f51f455389E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hafc475f51f455389E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dz, %.preheader.i ], [ %i.ep, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ea, %.preheader.i ], [ %i.dl, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.en, %.lr.ph.i.i ] ; 2 uses
  %i.es = ptrtoint ptr %.sroa.7.0.i to i64
  %i.et = ptrtoint ptr %.sroa.0.1.i to i64
  %i.eu = sub nuw i64 %i.es, %i.et
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.eu, i1 false), !alias.scope !95075, !noalias !95086
  br label %_ZN4core5slice4sort6stable5merge5merge17h86b59312d0818291E.exit

_ZN4core5slice4sort6stable5merge5merge17h86b59312d0818291E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hafc475f51f455389E.exit.i"
  %i.ev = shl i64 %i.cm, 1
  %i.ew = or disjoint i64 %i.ev, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h8f83a19bdfbf20a8E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h8f83a19bdfbf20a8E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h86b59312d0818291E.exit
  %.sroa.0.0.i = phi i64 [ %i.ew, %_ZN4core5slice4sort6stable5merge5merge17h86b59312d0818291E.exit ], [ %i.cu, %bb.s ] ; 2 uses
  %i.ex = icmp ugt i64 %i.cd, 1
  br i1 %i.ex, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ey = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ez = lshr i64 %.sroa.023.0, 1
  %i.fa = add i64 %i.ez, %.sroa.09.0
  br label %bb.e

bb.z:                                             ; preds = %._crit_edge
  %i.fb = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fb, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fc = or i64 %1, 1
  %i.fd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fc, i1 true)
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 1
  %i.fg = xor i32 %i.ff, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8e3acf9f28efea69E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h553c38898000e57dE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i101 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i106 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.fn, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.fl, %bb.y ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread104, %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h322fab626ecf47b8E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %i.l, i64 232
  %.val14.i = load i32, ptr %i.n, align 8, !alias.scope !95142, !noalias !95143, !noundef !44 ; 4 uses
  %i.o = getelementptr i8, ptr %i.l, i64 236
  %.val15.i = load i32, ptr %i.o, align 4, !alias.scope !95142, !noalias !95143, !noundef !44 ; 3 uses
  %i.p = getelementptr i8, ptr %i.l, i64 96
  %.val16.i = load i32, ptr %i.p, align 8, !alias.scope !95142, !noalias !95143, !noundef !44 ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 100
  %.val17.i = load i32, ptr %i.q, align 4, !alias.scope !95142, !noalias !95143, !noundef !44
  %i.r = icmp eq i32 %.val14.i, %.val16.i
  %i.s = icmp ult i32 %.val15.i, %.val17.i
  %i.t = icmp ult i32 %.val14.i, %.val16.i
  %.sroa.0.0.i.i.i42 = select i1 %i.r, i1 %i.s, i1 %i.t ; 2 uses
  %.not74 = icmp eq i64 %i.k, 2                   ; 2 uses
  br i1 %.sroa.0.0.i.i.i42, label %.preheader, label %.preheader52

.preheader52:                                     ; preds = %bb.h
  br i1 %.not74, label %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not74, label %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread104, label %.lr.ph61

.lr.ph:                                           ; preds = %.preheader52, %bb.i
  %.val13.i = phi i32 [ %.val11.i, %bb.i ], [ %.val15.i, %.preheader52 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.i ], [ %.val14.i, %.preheader52 ] ; 2 uses
  %.sroa.01.0.i.i57 = phi i64 [ %i.aa, %bb.i ], [ 2, %.preheader52 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [136 x i8], ptr %i.l, i64 %.sroa.01.0.i.i57 ; 2 uses
  %5 = add i64 %.sroa.01.0.i.i57, -1
  %6 = icmp ult i64 %5, %i.k
  tail call void @llvm.assume(i1 %6)
  %i.v = getelementptr i8, ptr %i.u, i64 96
  %.val10.i = load i32, ptr %i.v, align 8, !alias.scope !95142, !noalias !95143, !noundef !44 ; 3 uses
  %i.w = getelementptr i8, ptr %i.u, i64 100
  %.val11.i = load i32, ptr %i.w, align 4, !alias.scope !95142, !noalias !95143, !noundef !44 ; 2 uses
  %i.x = icmp eq i32 %.val10.i, %.val12.i
  %i.y = icmp ult i32 %.val11.i, %.val13.i
  %i.z = icmp ult i32 %.val10.i, %.val12.i
  %.sroa.0.0.i.i.i41 = select i1 %i.x, i1 %i.y, i1 %i.z
  br i1 %.sroa.0.0.i.i.i41, label %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.sroa.01.0.i.i57, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i, label %.lr.ph

.lr.ph61:                                         ; preds = %.preheader, %bb.j
  %.val9.i = phi i32 [ %.val7.i, %bb.j ], [ %.val15.i, %.preheader ]
  %.val8.i = phi i32 [ %.val.i, %bb.j ], [ %.val14.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i60 = phi i64 [ %i.ah, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [136 x i8], ptr %i.l, i64 %.sroa.01.1.i.i60 ; 2 uses
  %7 = add i64 %.sroa.01.1.i.i60, -1
  %8 = icmp ult i64 %7, %i.k
  tail call void @llvm.assume(i1 %8)
  %i.ac = getelementptr i8, ptr %i.ab, i64 96
  %.val.i = load i32, ptr %i.ac, align 8, !alias.scope !95142, !noalias !95143, !noundef !44 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 100
  %.val7.i = load i32, ptr %i.ad, align 4, !alias.scope !95142, !noalias !95143, !noundef !44 ; 2 uses
  %i.ae = icmp eq i32 %.val.i, %.val8.i
  %i.af = icmp ult i32 %.val7.i, %.val9.i
  %i.ag = icmp ult i32 %.val.i, %.val8.i
  %.sroa.0.0.i.i.i = select i1 %i.ae, i1 %i.af, i1 %i.ag
  br i1 %.sroa.0.0.i.i.i, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i

bb.j:                                             ; preds = %.lr.ph61
  %i.ah = add nuw i64 %.sroa.01.1.i.i60, 1        ; 2 uses
  %exitcond81.not = icmp eq i64 %i.ah, %i.k
  br i1 %exitcond81.not, label %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i, label %.lr.ph61

_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph61
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i60, %.lr.ph61 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i57, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread104: ; preds = %.preheader
  br i1 %.not5.i106, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread: ; preds = %.preheader52
  br i1 %.not5.i101, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h322fab626ecf47b8E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i
  br i1 %.sroa.0.0.i.i.i42, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h322fab626ecf47b8E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h314a789932a69313E.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8897e1dc0127cd77E(ptr noalias noundef nonnull align 8 %i.l, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null)
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h314a789932a69313E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h322fab626ecf47b8E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4750 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread ], [ %.sroa.0.0.i.i102109113, %.lr.ph.i.i38 ]
  %i.am = shl i64 %.sroa.0.0.i.i4750, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h314a789932a69313E.exit

bb.n:                                             ; preds = %bb.k
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95144), !noalias !95143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95145), !noalias !95143
  %.not15.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h322fab626ecf47b8E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread104, %bb.n
  %i.ap = phi i64 [ %i.ao, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread104 ]
  %.sroa.0.0.i.i102109113 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h86264c6183a60619E.exit.i.thread104 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [136 x i8], ptr %i.l, i64 %.sroa.0.0.i.i102109113
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.ca, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.014.i.i, -1
  %i.as = getelementptr inbounds nuw [136 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 10 uses
  %i.at = getelementptr [136 x i8], ptr %i.aq, i64 %i.ar ; 10 uses
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !95146, !noalias !95147
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !95148, !noalias !95149
  store <2 x i64> %i.av, ptr %i.as, align 8, !alias.scope !95146, !noalias !95147
  store <2 x i64> %i.au, ptr %i.at, align 8, !alias.scope !95148, !noalias !95149
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !95150, !noalias !95147
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !95151, !noalias !95149
  store <2 x i64> %i.az, ptr %i.aw, align 8, !alias.scope !95150, !noalias !95147
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !alias.scope !95151, !noalias !95149
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !95152, !noalias !95147
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !95153, !noalias !95149
  store <2 x i64> %i.bd, ptr %i.ba, align 8, !alias.scope !95152, !noalias !95147
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !alias.scope !95153, !noalias !95149
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !95154, !noalias !95147
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !95155, !noalias !95149
  store <2 x i64> %i.bh, ptr %i.be, align 8, !alias.scope !95154, !noalias !95147
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !alias.scope !95155, !noalias !95149
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 2 uses
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !95156, !noalias !95147
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !95157, !noalias !95149
  store <2 x i64> %i.bl, ptr %i.bi, align 8, !alias.scope !95156, !noalias !95147
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !alias.scope !95157, !noalias !95149
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 80 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 2 uses
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !95158, !noalias !95147
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !95159, !noalias !95149
  store <2 x i64> %i.bp, ptr %i.bm, align 8, !alias.scope !95158, !noalias !95147
  store <2 x i64> %i.bo, ptr %i.bn, align 8, !alias.scope !95159, !noalias !95149
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !95160, !noalias !95147
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !alias.scope !95161, !noalias !95149
  store <2 x i64> %i.bt, ptr %i.bq, align 8, !alias.scope !95160, !noalias !95147
  store <2 x i64> %i.bs, ptr %i.br, align 8, !alias.scope !95161, !noalias !95149
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 112 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 112 ; 2 uses
  %i.bw = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !95162, !noalias !95147
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !95163, !noalias !95149
  store <2 x i64> %i.bx, ptr %i.bu, align 8, !alias.scope !95162, !noalias !95147
  store <2 x i64> %i.bw, ptr %i.bv, align 8, !alias.scope !95163, !noalias !95149
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 128 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95164), !noalias !95143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95165), !noalias !95143
  %.sroa.0.0.copyload.i.i.i.16.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !95166, !noalias !95167
  %.sroa.02.0.copyload.i.i.i.16.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !95168, !noalias !95169
  store i64 %.sroa.02.0.copyload.i.i.i.16.i.i.i.i, ptr %i.by, align 8, !alias.scope !95166, !noalias !95167
  store i64 %.sroa.0.0.copyload.i.i.i.16.i.i.i.i, ptr %i.bz, align 8, !alias.scope !95168, !noalias !95169
  %i.ca = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %i.ap
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h322fab626ecf47b8E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h314a789932a69313E.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h322fab626ecf47b8E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.an, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h322fab626ecf47b8E.exit" ], [ %i.al, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.cb = lshr i64 %.sroa.018.0, 1
  %i.cc = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.cd = sub i64 %factor, %i.cb
  %i.ce = add i64 %i.cc, %factor
  %i.cf = mul i64 %i.cd, %.sroa.0.0
  %i.cg = mul i64 %i.ce, %.sroa.0.0
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 false)
  %i.cj = trunc nuw nsw i64 %i.ci to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h314a789932a69313E.exit
  %.sroa.026.0 = phi i8 [ %i.cj, %_ZN4core5slice4sort6stable5drift10create_run17h314a789932a69313E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h314a789932a69313E.exit ], [ 1, %bb.e ] ; 2 uses
  %i.ck = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ck, label %.lr.ph67, label %._crit_edge

.lr.ph67:                                         ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph67, %_ZN4core5slice4sort6stable5drift13logical_merge17h08a7957e64ae74a8E.exit
  %.sroa.02.166 = phi i64 [ %.sroa.02.0, %.lr.ph67 ], [ %i.cm, %_ZN4core5slice4sort6stable5drift13logical_merge17h08a7957e64ae74a8E.exit ] ; 2 uses
  %.sroa.018.165 = phi i64 [ %.sroa.018.0, %.lr.ph67 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h08a7957e64ae74a8E.exit ] ; 4 uses
  %i.cm = add i64 %.sroa.02.166, -1               ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noundef !44
  %.not29 = icmp ult i8 %i.co, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h08a7957e64ae74a8E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.165, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h08a7957e64ae74a8E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.166, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h08a7957e64ae74a8E.exit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cq, align 1
  br i1 %i.j, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cm
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !44 ; 3 uses
  %i.ct = lshr i64 %i.cs, 1                       ; 8 uses
  %i.cu = lshr i64 %.sroa.018.165, 1              ; 6 uses
  %i.cv = add nuw i64 %i.ct, %i.cu                ; 4 uses
  %i.cw = sub i64 %.sroa.09.0, %i.cv
  %i.cx = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.cw ; 6 uses
  %i.cy = icmp ugt i64 %i.cv, %3
  %i.cz = trunc i64 %.sroa.018.165 to i1
  %i.da = or i64 %i.cs, %.sroa.018.165
  %i.db = trunc i64 %i.da to i1
  %or.cond3.i = or i1 %i.cy, %i.db
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = trunc i64 %i.cs to i1
  br i1 %i.dc, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dd = shl i64 %i.cv, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h08a7957e64ae74a8E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cz, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.de = or i64 %i.ct, 1
  %i.df = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = xor i32 %i.dh, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8897e1dc0127cd77E(ptr noalias noundef nonnull align 8 %i.cx, i64 noundef %i.ct, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit35": ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw [136 x i8], ptr %i.cx, i64 %i.ct
  %i.dk = or i64 %i.cu, 1
  %i.dl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = xor i32 %i.dn, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8897e1dc0127cd77E(ptr noalias noundef nonnull align 8 %i.dj, i64 noundef %i.cu, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null)
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h228df6ad066f0165E.exit35", %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95171)
  %i.dp = icmp eq i64 %i.ct, 0
  %i.dq = icmp eq i64 %i.cu, 0
  %or.cond.i = or i1 %i.dq, %i.dp
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha1b3068c5362285eE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 range(i64 0, -9223372036854775808) %i.ct) ; 2 uses
  %i.dr = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dr, label %_ZN4core5slice4sort6stable5merge5merge17ha1b3068c5362285eE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw [136 x i8], ptr %i.cx, i64 %i.ct ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ct, %i.cu  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ds, ptr %i.cx
  %i.dt = mul i64 %.sroa.0.0.i.i36, 136           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dt, i1 false), !alias.scope !95172
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %i.dt ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.dv = phi ptr [ %i.el, %.preheader.i ], [ %i.du, %bb.x ] ; 3 uses
  %i.dw = phi ptr [ %i.ej, %.preheader.i ], [ %i.ds, %bb.x ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dz, %.preheader.i ], [ %i.cl, %bb.x ]
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -136 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 -136 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -136 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dv, i64 -40
  %.val.i.i = load i32, ptr %i.ea, align 8, !alias.scope !95171, !noalias !95173, !noundef !44 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dv, i64 -36
  %.val10.i.i = load i32, ptr %i.eb, align 4, !alias.scope !95171, !noalias !95173, !noundef !44
  %i.ec = getelementptr i8, ptr %i.dw, i64 -40
  %.val11.i.i = load i32, ptr %i.ec, align 8, !alias.scope !95170, !noalias !95174, !noundef !44 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dw, i64 -36
  %.val12.i.i = load i32, ptr %i.ed, align 4, !alias.scope !95170, !noalias !95174, !noundef !44
  %i.ee = icmp eq i32 %.val.i.i, %.val11.i.i
  %i.ef = icmp ult i32 %.val10.i.i, %.val12.i.i
  %i.eg = icmp ult i32 %.val.i.i, %.val11.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ee, i1 %i.ef, i1 %i.eg ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i.i.i, ptr %i.dx, ptr %i.dy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, ptr noundef nonnull align 8 dereferenceable(136) %..i.i, i64 136, i1 false), !alias.scope !95172, !noalias !95175
  %i.eh = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %i.ei = zext i1 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [136 x i8], ptr %i.dx, i64 %i.ei ; 3 uses
  %i.ek = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.el = getelementptr inbounds nuw [136 x i8], ptr %i.dy, i64 %i.ek ; 3 uses
  %i.em = icmp eq ptr %i.ej, %i.cx
  %i.en = icmp eq ptr %i.el, %2
  %or.cond.i.i = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd4e59bae93e8ab6dE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.eo = phi ptr [ %i.fc, %.lr.ph.i.i ], [ %i.cx, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fb, %.lr.ph.i.i ], [ %i.ds, %bb.x ] ; 4 uses
  %i.ep = phi ptr [ %i.ez, %.lr.ph.i.i ], [ %2, %bb.x ] ; 4 uses
  %i.eq = getelementptr i8, ptr %.sroa.0.02.i.i, i64 96
  %.sroa.0.0.val.i.i = load i32, ptr %i.eq, align 8, !alias.scope !95170, !noalias !95176, !noundef !44 ; 2 uses
  %i.er = getelementptr i8, ptr %.sroa.0.02.i.i, i64 100
  %.sroa.0.0.val6.i.i = load i32, ptr %i.er, align 4, !alias.scope !95170, !noalias !95176, !noundef !44
  %i.es = getelementptr i8, ptr %i.ep, i64 96
  %.val.i19.i = load i32, ptr %i.es, align 8, !alias.scope !95171, !noalias !95177, !noundef !44 ; 2 uses
  %i.et = getelementptr i8, ptr %i.ep, i64 100
  %.val7.i.i = load i32, ptr %i.et, align 4, !alias.scope !95171, !noalias !95177, !noundef !44
  %i.eu = icmp eq i32 %.sroa.0.0.val.i.i, %.val.i19.i
  %i.ev = icmp ult i32 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ew = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i
  %.sroa.0.0.i.i.i.i20.i = select i1 %i.eu, i1 %i.ev, i1 %i.ew ; 3 uses
  %i.ex = xor i1 %.sroa.0.0.i.i.i.i20.i, true
  %spec.select.i.i = select i1 %.sroa.0.0.i.i.i.i20.i, ptr %.sroa.0.02.i.i, ptr %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.eo, ptr noundef nonnull align 8 dereferenceable(136) %spec.select.i.i, i64 136, i1 false), !alias.scope !95172, !noalias !95178
  %i.ey = zext i1 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [136 x i8], ptr %i.ep, i64 %i.ey ; 3 uses
  %i.fa = zext i1 %.sroa.0.0.i.i.i.i20.i to i64
  %i.fb = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.02.i.i, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 136 ; 2 uses
  %i.fd = icmp ne ptr %i.ez, %i.du
  %i.fe = icmp ne ptr %i.fb, %i.cl
  %or.cond.i21.i = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd4e59bae93e8ab6dE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd4e59bae93e8ab6dE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.ej, %.preheader.i ], [ %i.fc, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.el, %.preheader.i ], [ %i.du, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ez, %.lr.ph.i.i ] ; 2 uses
  %i.ff = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fg = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fh = sub nuw i64 %i.ff, %i.fg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fh, i1 false), !alias.scope !95172, !noalias !95179
  br label %_ZN4core5slice4sort6stable5merge5merge17ha1b3068c5362285eE.exit

_ZN4core5slice4sort6stable5merge5merge17ha1b3068c5362285eE.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd4e59bae93e8ab6dE.exit.i"
  %i.fi = shl i64 %i.cv, 1
  %i.fj = or disjoint i64 %i.fi, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h08a7957e64ae74a8E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h08a7957e64ae74a8E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17ha1b3068c5362285eE.exit
  %.sroa.0.0.i = phi i64 [ %i.fj, %_ZN4core5slice4sort6stable5merge5merge17ha1b3068c5362285eE.exit ], [ %i.dd, %bb.s ] ; 2 uses
  %i.fk = icmp ugt i64 %i.cm, 1
  br i1 %i.fk, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.fl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fm = lshr i64 %.sroa.023.0, 1
  %i.fn = add i64 %i.fm, %.sroa.09.0
  br label %bb.e

bb.z:                                             ; preds = %._crit_edge
  %i.fo = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fo, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fp = or i64 %1, 1
  %i.fq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fp, i1 true)
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = xor i32 %i.fs, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8897e1dc0127cd77E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h63ef6fd89b73b70eE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.er, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.ep, %bb.y ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41f26a172fbf24d7E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41f26a172fbf24d7E.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95237)
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41f26a172fbf24d7E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41f26a172fbf24d7E.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82edeeca94c684aaE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %i.l, i64 32
  %.val14.i = load ptr, ptr %i.n, align 8, !alias.scope !95237, !noalias !95238, !nonnull !44, !noundef !44 ; 3 uses
  %i.o = getelementptr i8, ptr %i.l, i64 40
  %.val15.i = load i64, ptr %i.o, align 8, !alias.scope !95237, !noalias !95238, !noundef !44 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val16.i = load ptr, ptr %i.p, align 8, !alias.scope !95237, !noalias !95238, !nonnull !44, !noundef !44
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %.val17.i = load i64, ptr %i.q, align 8, !alias.scope !95237, !noalias !95238, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.r = sub i64 %.val15.i, %.val17.i
  %i.s = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i.i43), !alias.scope !95239, !noalias !95240 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %spec.store.select.i.i.i.i.i.i44 = select i1 %i.u, i64 %i.r, i64 %i.t
  %i.v = icmp slt i64 %spec.store.select.i.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.k, 2                   ; 2 uses
  br i1 %i.v, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.h
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.i
  %.val13.i = phi i64 [ %.val11.i, %bb.i ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.i ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.ae, %bb.i ], [ 2, %.preheader54 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.01.0.i.i59 ; 2 uses
  %5 = add i64 %.sroa.01.0.i.i59, -1
  %6 = icmp ult i64 %5, %i.k
  tail call void @llvm.assume(i1 %6)
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !95237, !noalias !95238, !nonnull !44, !noundef !44 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !95237, !noalias !95238, !noundef !44 ; 3 uses
  %..i.i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.z = sub i64 %.val11.i, %.val13.i
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i.i41), !alias.scope !95241, !noalias !95240 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %spec.store.select.i.i.i.i.i.i42 = select i1 %i.ac, i64 %i.z, i64 %i.ab
  %i.ad = icmp slt i64 %spec.store.select.i.i.i.i.i.i42, 0
  br i1 %i.ad, label %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.j
  %.val9.i = phi i64 [ %.val7.i, %bb.j ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.j ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.an, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.01.1.i.i62 ; 2 uses
  %7 = add i64 %.sroa.01.1.i.i62, -1
  %8 = icmp ult i64 %7, %i.k
  tail call void @llvm.assume(i1 %8)
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !95237, !noalias !95238, !nonnull !44, !noundef !44 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  %.val7.i = load i64, ptr %i.ah, align 8, !alias.scope !95237, !noalias !95238, !noundef !44 ; 3 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ai = sub i64 %.val7.i, %.val9.i
  %i.aj = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i.i), !alias.scope !95242, !noalias !95240 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.al, i64 %i.ai, i64 %i.ak
  %i.am = icmp slt i64 %spec.store.select.i.i.i.i.i.i, 0
  br i1 %i.am, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i

bb.j:                                             ; preds = %.lr.ph63
  %i.an = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.an, %i.k
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.ao = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.ao)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82edeeca94c684aaE.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i
  br i1 %i.v, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82edeeca94c684aaE.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.ap = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he566c6e1814ee57fE.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e465cb4eaf59e9fE(ptr noalias noundef nonnull align 8 %i.l, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he566c6e1814ee57fE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82edeeca94c684aaE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4952 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.as = shl i64 %.sroa.0.0.i.i4952, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he566c6e1814ee57fE.exit

bb.n:                                             ; preds = %bb.k
  %i.au = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95243), !noalias !95238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95244), !noalias !95238
  %.not15.i.i = icmp eq i64 %i.au, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82edeeca94c684aaE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread106, %bb.n
  %i.av = phi i64 [ %i.au, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h998b65d50ee84519E.exit.i.thread106 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.be, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ax = xor i64 %.sroa.0.014.i.i, -1
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 3 uses
  %i.az = getelementptr [24 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !95245, !noalias !95246
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !95247, !noalias !95248
  store <2 x i64> %i.bb, ptr %i.ay, align 8, !alias.scope !95245, !noalias !95246
  store <2 x i64> %i.ba, ptr %i.az, align 8, !alias.scope !95247, !noalias !95248
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95249), !noalias !95238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95250), !noalias !95238
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !95251, !noalias !95252
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !95253, !noalias !95254
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bc, align 8, !alias.scope !95251, !noalias !95252
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bd, align 8, !alias.scope !95253, !noalias !95254
  %i.be = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.av
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82edeeca94c684aaE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17he566c6e1814ee57fE.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82edeeca94c684aaE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.at, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h82edeeca94c684aaE.exit" ], [ %i.ar, %bb.m ], [ %i.ap, %bb.l ] ; 2 uses
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
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17he566c6e1814ee57fE.exit
  %.sroa.026.0 = phi i8 [ %i.bn, %_ZN4core5slice4sort6stable5drift10create_run17he566c6e1814ee57fE.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17he566c6e1814ee57fE.exit ], [ 1, %bb.e ] ; 2 uses
  %i.bo = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bo, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hf3fe84422f56d014E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bq, %_ZN4core5slice4sort6stable5drift13logical_merge17hf3fe84422f56d014E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf3fe84422f56d014E.exit ] ; 4 uses
  %i.bq = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !44
  %.not29 = icmp ult i8 %i.bs, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hf3fe84422f56d014E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.167, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf3fe84422f56d014E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.168, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hf3fe84422f56d014E.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bu, align 1
  br i1 %i.j, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !44 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 8 uses
  %i.by = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 4 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ca ; 6 uses
  %i.cc = icmp ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.018.167 to i1
  %i.ce = or i64 %i.bw, %.sroa.018.167
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ch = shl i64 %i.bz, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf3fe84422f56d014E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cd, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41f26a172fbf24d7E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e465cb4eaf59e9fE(ptr noalias noundef nonnull align 8 %i.cb, i64 noundef %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41f26a172fbf24d7E.exit35": ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e465cb4eaf59e9fE(ptr noalias noundef nonnull align 8 %i.cn, i64 noundef %i.by, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41f26a172fbf24d7E.exit35", %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95256)
  %i.ct = icmp eq i64 %i.bx, 0
  %i.cu = icmp eq i64 %i.by, 0
  %or.cond.i = or i1 %i.cu, %i.ct
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h96b97663b0cc6489E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.by, i64 range(i64 0, -9223372036854775808) %i.bx) ; 2 uses
  %i.cv = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cv, label %_ZN4core5slice4sort6stable5merge5merge17h96b97663b0cc6489E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bx, %i.by  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cw, ptr %i.cb
  %i.cx = mul i64 %.sroa.0.0.i.i36, 24            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cx, i1 false), !alias.scope !95257
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.cz = phi ptr [ %i.dp, %.preheader.i ], [ %i.cy, %bb.x ] ; 3 uses
  %i.da = phi ptr [ %i.do, %.preheader.i ], [ %i.cw, %bb.x ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dd, %.preheader.i ], [ %i.bp, %bb.x ]
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -24 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 -24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24 ; 2 uses
  %i.de = getelementptr i8, ptr %i.cz, i64 -16
  %.val.i.i = load ptr, ptr %i.de, align 8, !alias.scope !95256, !noalias !95258, !nonnull !44, !noundef !44
  %i.df = getelementptr i8, ptr %i.cz, i64 -8
  %.val10.i.i = load i64, ptr %i.df, align 8, !alias.scope !95256, !noalias !95258, !noundef !44 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.da, i64 -16
  %.val11.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !95255, !noalias !95259, !nonnull !44, !noundef !44
  %i.dh = getelementptr i8, ptr %i.da, i64 -8
  %.val12.i.i = load i64, ptr %i.dh, align 8, !alias.scope !95255, !noalias !95259, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.di = sub i64 %.val10.i.i, %.val12.i.i
  %i.dj = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i.i), !alias.scope !95260, !noalias !95261 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp eq i32 %i.dj, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.dl, i64 %i.di, i64 %i.dk ; 2 uses
  %i.dm = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dm, ptr %i.dc, ptr %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !95257, !noalias !95262
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.dn ; 3 uses
  %spec.store.select.i.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i.i, 63
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %spec.store.select.i.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dq = icmp eq ptr %i.do, %i.cb
  %i.dr = icmp eq ptr %i.dp, %2
  %or.cond.i.i = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8e88b2175c1369acE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.ds = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.cb, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ef, %.lr.ph.i.i ], [ %i.cw, %bb.x ] ; 4 uses
  %i.dt = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %2, %bb.x ] ; 4 uses
  %i.du = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.du, align 8, !alias.scope !95255, !noalias !95263, !nonnull !44, !noundef !44
  %i.dv = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dv, align 8, !alias.scope !95255, !noalias !95263, !noundef !44 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dt, i64 8
  %.val.i19.i = load ptr, ptr %i.dw, align 8, !alias.scope !95256, !noalias !95264, !nonnull !44, !noundef !44
  %i.dx = getelementptr i8, ptr %i.dt, i64 16
  %.val7.i.i = load i64, ptr %i.dx, align 8, !alias.scope !95256, !noalias !95264, !noundef !44 ; 2 uses
  %..i.i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.dy = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.dz = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i.i20.i), !alias.scope !95265, !noalias !95266 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp eq i32 %i.dz, 0
  %spec.store.select.i.i.i.i.i.i.i21.i = select i1 %i.eb, i64 %i.dy, i64 %i.ea ; 2 uses
  %i.ec = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ec, ptr %i.dt, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !alias.scope !95257, !noalias !95267
  %i.ed = zext i1 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.ed ; 3 uses
  %spec.store.select.i.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i21.i, 63
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 2 uses
  %i.eh = icmp ne ptr %i.ee, %i.cy
  %i.ei = icmp ne ptr %i.ef, %i.bp
  %or.cond.i23.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8e88b2175c1369acE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8e88b2175c1369acE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.do, %.preheader.i ], [ %i.eg, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dp, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ee, %.lr.ph.i.i ] ; 2 uses
  %i.ej = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ek = ptrtoint ptr %.sroa.0.1.i to i64
  %i.el = sub nuw i64 %i.ej, %i.ek
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.el, i1 false), !alias.scope !95257, !noalias !95268
  br label %_ZN4core5slice4sort6stable5merge5merge17h96b97663b0cc6489E.exit

_ZN4core5slice4sort6stable5merge5merge17h96b97663b0cc6489E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8e88b2175c1369acE.exit.i"
  %i.em = shl i64 %i.bz, 1
  %i.en = or disjoint i64 %i.em, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf3fe84422f56d014E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hf3fe84422f56d014E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h96b97663b0cc6489E.exit
  %.sroa.0.0.i = phi i64 [ %i.en, %_ZN4core5slice4sort6stable5merge5merge17h96b97663b0cc6489E.exit ], [ %i.ch, %bb.s ] ; 2 uses
  %i.eo = icmp ugt i64 %i.bq, 1
  br i1 %i.eo, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ep = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eq = lshr i64 %.sroa.023.0, 1
  %i.er = add i64 %i.eq, %.sroa.09.0
  br label %bb.e

bb.z:                                             ; preds = %._crit_edge
  %i.es = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.es, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.et = or i64 %1, 1
  %i.eu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.et, i1 true)
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 1
  %i.ex = xor i32 %i.ew, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9e465cb4eaf59e9fE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h7cde146badf7cfb3E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i129 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i134 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.hz, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.hx, %bb.z ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95406)
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread132, %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !95406, !noalias !95407, !nonnull !44, !align !50, !noundef !44 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95409)
  %.val2.i51 = load ptr, ptr %.val8.i, align 8, !noalias !95410, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95411), !noalias !95412
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i51, i64 288
  %i.p = load i32, ptr %i.n, align 4, !alias.scope !95413, !noalias !95414, !noundef !44
  %i.q = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, i32 noundef %i.p), !noalias !95415 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !95413, !noalias !95414, !noundef !44 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !95413, !noalias !95414, !noundef !44
  %.val.i52 = load ptr, ptr %.val8.i, align 8, !noalias !95410, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95416), !noalias !95412
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i52, i64 288
  %i.y = load i32, ptr %i.l, align 4, !alias.scope !95417, !noalias !95418, !noundef !44
  %i.z = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, i32 noundef %i.y), !noalias !95419 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !95417, !noalias !95418, !noundef !44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !95417, !noalias !95418, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ], !noalias !95412
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ], !noalias !95412
  %..i.i.i.i.i.i53 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.ab)
  %i.ag = sub i64 %i.s, %i.ab
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.r, ptr nonnull readonly align 1 %i.aa, i64 %..i.i.i.i.i.i53), !alias.scope !95420, !noalias !95421 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %spec.store.select.i.i.i.i.i.i54 = select i1 %i.aj, i64 %i.ag, i64 %i.ai ; 2 uses
  %cond.i.i.i.i.i55 = icmp eq i64 %spec.store.select.i.i.i.i.i.i54, 0
  %i.ak = icmp slt i64 %spec.store.select.i.i.i.i.i.i54, 0
  %cond.i.i.i.i56 = icmp eq i32 %i.u, %i.ad
  %i.al = icmp ult i32 %i.u, %i.ad
  %i.am = icmp ult i32 %i.w, %i.af
  %spec.select.i57 = select i1 %cond.i.i.i.i56, i1 %i.am, i1 %i.al
  %.sroa.0.1.i.i58 = select i1 %cond.i.i.i.i.i55, i1 %spec.select.i57, i1 %i.ak ; 2 uses
  %.not101 = icmp eq i64 %i.k, 2                  ; 2 uses
  br i1 %.sroa.0.1.i.i58, label %.preheader68, label %.preheader69

.preheader69:                                     ; preds = %bb.h
  br i1 %.not101, label %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread, label %.lr.ph

.preheader68:                                     ; preds = %bb.h
  br i1 %.not101, label %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread132, label %.lr.ph88

.lr.ph:                                           ; preds = %.preheader69, %bb.i
  %.sroa.01.0.i.i84 = phi i64 [ %i.bn, %bb.i ], [ 2, %.preheader69 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.01.0.i.i84 ; 3 uses
  %6 = add i64 %.sroa.01.0.i.i84, -1              ; 2 uses
  %7 = icmp ult i64 %6, %i.k
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95423)
  %.val2.i43 = load ptr, ptr %.val8.i, align 8, !noalias !95424, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95425), !noalias !95412
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i43, i64 288
  %i.ap = load i32, ptr %i.an, align 4, !alias.scope !95426, !noalias !95427, !noundef !44
  %i.aq = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao, i32 noundef %i.ap), !noalias !95428 ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !95426, !noalias !95427, !noundef !44 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !95426, !noalias !95427, !noundef !44
  %.val.i44 = load ptr, ptr %.val8.i, align 8, !noalias !95424, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95429), !noalias !95412
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i44, i64 288
  %i.ay = load i32, ptr %8, align 4, !alias.scope !95430, !noalias !95431, !noundef !44
  %i.az = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax, i32 noundef %i.ay), !noalias !95432 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.az, 1      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !95430, !noalias !95431, !noundef !44 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !95430, !noalias !95431, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ], !noalias !95412
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ], !noalias !95412
  %..i.i.i.i.i.i45 = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.bb)
  %i.bg = sub i64 %i.as, %i.bb
  %i.bh = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.ar, ptr nonnull readonly align 1 %i.ba, i64 %..i.i.i.i.i.i45), !alias.scope !95433, !noalias !95434 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i32 %i.bh, 0
  %spec.store.select.i.i.i.i.i.i46 = select i1 %i.bj, i64 %i.bg, i64 %i.bi ; 2 uses
  %cond.i.i.i.i.i47 = icmp eq i64 %spec.store.select.i.i.i.i.i.i46, 0
  %i.bk = icmp slt i64 %spec.store.select.i.i.i.i.i.i46, 0
  %cond.i.i.i.i48 = icmp eq i32 %i.au, %i.bd
  %i.bl = icmp ult i32 %i.au, %i.bd
  %i.bm = icmp ult i32 %i.aw, %i.bf
  %spec.select.i49 = select i1 %cond.i.i.i.i48, i1 %i.bm, i1 %i.bl
  %.sroa.0.1.i.i50 = select i1 %cond.i.i.i.i.i47, i1 %spec.select.i49, i1 %i.bk
  br i1 %.sroa.0.1.i.i50, label %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bn = add nuw i64 %.sroa.01.0.i.i84, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i, label %.lr.ph

.lr.ph88:                                         ; preds = %.preheader68, %bb.j
  %.sroa.01.1.i.i87 = phi i64 [ %i.co, %bb.j ], [ 2, %.preheader68 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.01.1.i.i87 ; 3 uses
  %9 = add i64 %.sroa.01.1.i.i87, -1              ; 2 uses
  %10 = icmp ult i64 %9, %i.k
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95436)
  %.val2.i = load ptr, ptr %.val8.i, align 8, !noalias !95437, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95438), !noalias !95412
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2.i, i64 288
  %i.bq = load i32, ptr %i.bo, align 4, !alias.scope !95439, !noalias !95440, !noundef !44
  %i.br = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp, i32 noundef %i.bq), !noalias !95441 ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.br, 1      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !95439, !noalias !95440, !noundef !44 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !alias.scope !95439, !noalias !95440, !noundef !44
  %.val.i42 = load ptr, ptr %.val8.i, align 8, !noalias !95437, !nonnull !44, !align !50, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95442), !noalias !95412
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i42, i64 288
  %i.bz = load i32, ptr %11, align 4, !alias.scope !95443, !noalias !95444, !noundef !44
  %i.ca = tail call { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by, i32 noundef %i.bz), !noalias !95445 ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0      ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.ca, 1      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !alias.scope !95443, !noalias !95444, !noundef !44 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !alias.scope !95443, !noalias !95444, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ], !noalias !95412
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ], !noalias !95412
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.cc)
  %i.ch = sub i64 %i.bt, %i.cc
  %i.ci = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.bs, ptr nonnull readonly align 1 %i.cb, i64 %..i.i.i.i.i.i), !alias.scope !95446, !noalias !95447 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp eq i32 %i.ci, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ck, i64 %i.ch, i64 %i.cj ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %spec.store.select.i.i.i.i.i.i, 0
  %i.cl = icmp slt i64 %spec.store.select.i.i.i.i.i.i, 0
  %cond.i.i.i.i = icmp eq i32 %i.bv, %i.ce
  %i.cm = icmp ult i32 %i.bv, %i.ce
  %i.cn = icmp ult i32 %i.bx, %i.cg
  %spec.select.i = select i1 %cond.i.i.i.i, i1 %i.cn, i1 %i.cm
  %.sroa.0.1.i.i = select i1 %cond.i.i.i.i.i, i1 %spec.select.i, i1 %i.cl
  br i1 %.sroa.0.1.i.i, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i

bb.j:                                             ; preds = %.lr.ph88
  %i.co = add nuw i64 %.sroa.01.1.i.i87, 1        ; 2 uses
  %exitcond114.not = icmp eq i64 %i.co, %i.k
  br i1 %exitcond114.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i, label %.lr.ph88

_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph88
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i87, %.lr.ph88 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i84, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.cp = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.cp)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread132: ; preds = %.preheader68
  br i1 %.not5.i134, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread: ; preds = %.preheader69
  br i1 %.not5.i129, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i
  br i1 %.sroa.0.1.i.i58, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.cq = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6d85a1387505282aE.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h06a5309a643d217fE(ptr noalias noundef nonnull align 4 %i.l, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !95336
  %i.cr = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.cs = or disjoint i64 %i.cr, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6d85a1387505282aE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit": ; preds = %.lr.ph.i.i39, %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i6366 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread ], [ %.sroa.0.0.i.i130137141, %.lr.ph.i.i39 ]
  %i.ct = shl i64 %.sroa.0.0.i.i6366, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h6d85a1387505282aE.exit

bb.n:                                             ; preds = %bb.k
  %i.cv = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95448), !noalias !95412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95449), !noalias !95412
  %.not15.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread132, %bb.n
  %i.cw = phi i64 [ %i.cv, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread132 ]
  %.sroa.0.0.i.i130137141 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hbe0342176f8ebe58E.exit.i.thread132 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.0.0.i.i130137141
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.dd, %.lr.ph.i.i39 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cy = xor i64 %.sroa.0.014.i.i, -1
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 3 uses
  %i.da = getelementptr [12 x i8], ptr %i.cx, i64 %i.cy ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95450), !noalias !95412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95451), !noalias !95412
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cz, align 4, !alias.scope !95452, !noalias !95453
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.da, align 4, !alias.scope !95454, !noalias !95455
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.cz, align 4, !alias.scope !95452, !noalias !95453
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.da, align 4, !alias.scope !95454, !noalias !95455
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95456), !noalias !95412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95457), !noalias !95412
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i = load i32, ptr %i.db, align 4, !alias.scope !95458, !noalias !95459
  %.sroa.02.0.copyload.i.i5.i.i.i.i.i = load i32, ptr %i.dc, align 4, !alias.scope !95460, !noalias !95461
  store i32 %.sroa.02.0.copyload.i.i5.i.i.i.i.i, ptr %i.db, align 4, !alias.scope !95458, !noalias !95459
  store i32 %.sroa.0.0.copyload.i.i4.i.i.i.i.i, ptr %i.dc, align 4, !alias.scope !95460, !noalias !95461
  %i.dd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dd, %i.cw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h6d85a1387505282aE.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.cu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc6de2f45cc0279ecE.exit" ], [ %i.cs, %bb.m ], [ %i.cq, %bb.l ] ; 2 uses
  %i.de = lshr i64 %.sroa.018.0, 1
  %i.df = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.dg = sub i64 %factor, %i.de
  %i.dh = add i64 %i.df, %factor
  %i.di = mul i64 %i.dg, %.sroa.0.0
  %i.dj = mul i64 %i.dh, %.sroa.0.0
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dk, i1 false)
  %i.dm = trunc nuw nsw i64 %i.dl to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h6d85a1387505282aE.exit
  %.sroa.026.0 = phi i8 [ %i.dm, %_ZN4core5slice4sort6stable5drift10create_run17h6d85a1387505282aE.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h6d85a1387505282aE.exit ], [ 1, %bb.e ] ; 2 uses
  %i.dn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.dn, label %.lr.ph94, label %._crit_edge

.lr.ph94:                                         ; preds = %bb.o
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph94, %_ZN4core5slice4sort6stable5drift13logical_merge17h55656a1e73f86de6E.exit
  %.sroa.02.193 = phi i64 [ %.sroa.02.0, %.lr.ph94 ], [ %i.dp, %_ZN4core5slice4sort6stable5drift13logical_merge17h55656a1e73f86de6E.exit ] ; 2 uses
  %.sroa.018.192 = phi i64 [ %.sroa.018.0, %.lr.ph94 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h55656a1e73f86de6E.exit ] ; 4 uses
  %i.dp = add i64 %.sroa.02.193, -1               ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !noundef !44
  %.not29 = icmp ult i8 %i.dr, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h55656a1e73f86de6E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.192, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h55656a1e73f86de6E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.193, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h55656a1e73f86de6E.exit ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.dt, align 1
  br i1 %i.j, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dp
  %i.dv = load i64, ptr %i.du, align 8, !noundef !44 ; 3 uses
  %i.dw = lshr i64 %i.dv, 1                       ; 8 uses
  %i.dx = lshr i64 %.sroa.018.192, 1              ; 6 uses
  %i.dy = add nuw i64 %i.dw, %i.dx                ; 4 uses
  %i.dz = sub i64 %.sroa.09.0, %i.dy
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.dz ; 6 uses
  %i.eb = icmp ugt i64 %i.dy, %3
  %i.ec = trunc i64 %.sroa.018.192 to i1
  %i.ed = or i64 %i.dv, %.sroa.018.192
  %i.ee = trunc i64 %i.ed to i1
  %or.cond3.i = or i1 %i.eb, %i.ee
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ef = trunc i64 %i.dv to i1
  br i1 %i.ef, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.eg = shl i64 %i.dy, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h55656a1e73f86de6E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.ec, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.eh = or i64 %i.dw, 1
  %i.ei = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = xor i32 %i.ek, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h06a5309a643d217fE(ptr noalias noundef nonnull align 4 %i.ea, i64 noundef %i.dw, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.el, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !95348
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit35": ; preds = %bb.t
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %i.dw
  %i.en = or i64 %i.dx, 1
  %i.eo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = xor i32 %i.eq, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h06a5309a643d217fE(ptr noalias noundef nonnull align 4 %i.em, i64 noundef %i.dx, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.er, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !95348
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h7f42314f14f130f9E.exit35", %bb.t
  %.val = load ptr, ptr %5, align 8               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95463)
  %i.es = icmp eq i64 %i.dw, 0
  %i.et = icmp eq i64 %i.dx, 0
  %or.cond.i = or i1 %i.et, %i.es
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc5f1c9f8d09a6746E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 range(i64 0, -9223372036854775808) %i.dw) ; 2 uses
  %i.eu = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.eu, label %_ZN4core5slice4sort6stable5merge5merge17hc5f1c9f8d09a6746E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %i.dw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dw, %i.dx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ev, ptr %i.ea
  %i.ew = mul i64 %.sroa.0.0.i.i36, 12            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %.16.i, i64 %i.ew, i1 false), !alias.scope !95464
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17h7cde146badf7cfb3E:bb.a
  %i.fm = extractvalue { ptr, i64 } %i.fd, 0      ; 2 uses
  %i.fn = extractvalue { ptr, i64 } %i.fk, 0      ; 2 uses
  %i.fo = extractvalue { ptr, i64 } %i.fk, 1      ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8
  %i.fq = load i32, ptr %i.fp, align 4, !alias.scope !95470, !noalias !95471, !noundef !44 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -4
  %i.fs = load i32, ptr %i.fr, align 4, !alias.scope !95470, !noalias !95471, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fm) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ]
  %..i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 %i.fo)
  %i.ft = sub i64 %i.fl, %i.fo
  %i.fu = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.fm, ptr nonnull readonly align 1 %i.fn, i64 %..i.i.i.i.i.i.i.i), !alias.scope !95472, !noalias !95473 ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp eq i32 %i.fu, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.fw, i64 %i.ft, i64 %i.fv ; 2 uses
  %cond.i.i.i.i.i.i.i = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  %i.fx = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  %cond.i.i.i.i.i.i = icmp eq i32 %i.ff, %i.fq
  %i.fy = icmp ult i32 %i.ff, %i.fq
  %i.fz = icmp ult i32 %i.fh, %i.fs
  %spec.select.i.i.i = select i1 %cond.i.i.i.i.i.i, i1 %i.fz, i1 %i.fy
  %.sroa.0.1.i.i.i.i = select i1 %cond.i.i.i.i.i.i.i, i1 %spec.select.i.i.i, i1 %i.fx ; 3 uses
  %..i.i = select i1 %.sroa.0.1.i.i.i.i, ptr %i.ey, ptr %i.ez
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fa, ptr noundef nonnull align 4 dereferenceable(12) %..i.i, i64 12, i1 false), !alias.scope !95464, !noalias !95474
  %i.ga = xor i1 %.sroa.0.1.i.i.i.i, true
  %i.gb = zext i1 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %i.gb ; 3 uses
  %i.gd = zext i1 %.sroa.0.1.i.i.i.i to i64
  %i.ge = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %i.gd ; 3 uses
  %i.gf = icmp eq ptr %i.gc, %i.ea
  %i.gg = icmp eq ptr %i.ge, %2
  %or.cond.i.i = select i1 %i.gf, i1 true, i1 %i.gg
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5afa7d25337bcb80E.exit.i", label %.preheader

.lr.ph.i.i:                                       ; preds = %bb.x, %.noexc31.i
  %.sroa.13.1.i = phi ptr [ %i.hl, %.noexc31.i ], [ %i.ea, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.hi, %.noexc31.i ], [ %2, %bb.x ] ; 6 uses
  %.sroa.0.02.i.i = phi ptr [ %i.hk, %.noexc31.i ], [ %i.ev, %bb.x ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95476)
  %.val2.i.i21.i = load ptr, ptr %.val, align 8, !noalias !95477, !nonnull !44, !align !50, !noundef !44
  %i.gh = getelementptr inbounds nuw i8, ptr %.val2.i.i21.i, i64 288
  %i.gi = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !95478, !noalias !95479, !noundef !44
  %i.gj = invoke { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gh, i32 noundef %i.gi)
          to label %.noexc30.i unwind label %.loopexit.split-lp.i, !noalias !95464 ; 2 uses

.noexc30.i:                                       ; preds = %.lr.ph.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !alias.scope !95478, !noalias !95479, !noundef !44 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %i.gn = load i32, ptr %i.gm, align 4, !alias.scope !95478, !noalias !95479, !noundef !44
  %.val.i.i22.i = load ptr, ptr %.val, align 8, !noalias !95477, !nonnull !44, !align !50, !noundef !44
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i22.i, i64 288
  %i.gp = load i32, ptr %.sroa.0.0.i38, align 4, !alias.scope !95480, !noalias !95481, !noundef !44
  %i.gq = invoke { ptr, i64 } @_ZN18nickel_lang_parser5files5Files4name17hc4b8930715dcfb2aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.go, i32 noundef %i.gp)
          to label %.noexc31.i unwind label %.loopexit.split-lp.i, !noalias !95464 ; 2 uses

.noexc31.i:                                       ; preds = %.noexc30.i
  %i.gr = extractvalue { ptr, i64 } %i.gj, 1      ; 2 uses
  %i.gs = extractvalue { ptr, i64 } %i.gj, 0      ; 2 uses
  %i.gt = extractvalue { ptr, i64 } %i.gq, 0      ; 2 uses
  %i.gu = extractvalue { ptr, i64 } %i.gq, 1      ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !alias.scope !95480, !noalias !95481, !noundef !44 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !alias.scope !95480, !noalias !95481, !noundef !44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gs) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gt) ]
  %..i.i.i.i.i.i.i23.i = tail call i64 @llvm.umin.i64(i64 %i.gr, i64 %i.gu)
  %i.gz = sub i64 %i.gr, %i.gu
  %i.ha = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.gs, ptr nonnull readonly align 1 %i.gt, i64 %..i.i.i.i.i.i.i23.i), !alias.scope !95482, !noalias !95483 ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp eq i32 %i.ha, 0
  %spec.store.select.i.i.i.i.i.i.i24.i = select i1 %i.hc, i64 %i.gz, i64 %i.hb ; 2 uses
  %cond.i.i.i.i.i.i25.i = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i24.i, 0
  %i.hd = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i24.i, 0
  %cond.i.i.i.i.i26.i = icmp eq i32 %i.gl, %i.gw
  %i.he = icmp ult i32 %i.gl, %i.gw
  %i.hf = icmp ult i32 %i.gn, %i.gy
  %spec.select.i.i27.i = select i1 %cond.i.i.i.i.i26.i, i1 %i.hf, i1 %i.he
  %.sroa.0.1.i.i.i28.i = select i1 %cond.i.i.i.i.i.i25.i, i1 %spec.select.i.i27.i, i1 %i.hd ; 3 uses
  %i.hg = xor i1 %.sroa.0.1.i.i.i28.i, true
  %spec.select.i.i = select i1 %.sroa.0.1.i.i.i28.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.1.i, ptr noundef nonnull align 4 dereferenceable(12) %spec.select.i.i, i64 12, i1 false), !alias.scope !95464, !noalias !95484
  %i.hh = zext i1 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i38, i64 %i.hh ; 3 uses
  %i.hj = zext i1 %.sroa.0.1.i.i.i28.i to i64
  %i.hk = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.02.i.i, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 12 ; 2 uses
  %i.hm = icmp ne ptr %i.hi, %i.ex
  %i.hn = icmp ne ptr %i.hk, %i.do
  %or.cond.i29.i = select i1 %i.hm, i1 %i.hn, i1 false
  br i1 %or.cond.i29.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5afa7d25337bcb80E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5afa7d25337bcb80E.exit.i": ; preds = %.noexc31.i, %.noexc19.i
  %.sroa.13.4.i = phi ptr [ %i.gc, %.noexc19.i ], [ %i.hl, %.noexc31.i ]
  %.sroa.7.2.i = phi ptr [ %i.ge, %.noexc19.i ], [ %i.ex, %.noexc31.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc19.i ], [ %i.hi, %.noexc31.i ] ; 2 uses
  %i.ho = ptrtoint ptr %.sroa.7.2.i to i64
  %i.hp = ptrtoint ptr %.sroa.0.3.i to i64
  %i.hq = sub nuw i64 %i.ho, %i.hp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.hq, i1 false), !alias.scope !95464, !noalias !95485
  br label %_ZN4core5slice4sort6stable5merge5merge17hc5f1c9f8d09a6746E.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %.noexc30.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ex, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.hr = ptrtoint ptr %.sroa.7.1.i to i64
  %i.hs = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ht = sub nuw i64 %i.hr, %i.hs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.3.i, ptr align 4 %.sroa.0.2.i, i64 %i.ht, i1 false), !alias.scope !95464, !noalias !95486
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hc5f1c9f8d09a6746E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5afa7d25337bcb80E.exit.i"
  %i.hu = shl i64 %i.dy, 1
  %i.hv = or disjoint i64 %i.hu, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h55656a1e73f86de6E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h55656a1e73f86de6E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17hc5f1c9f8d09a6746E.exit
  %.sroa.0.0.i = phi i64 [ %i.hv, %_ZN4core5slice4sort6stable5merge5merge17hc5f1c9f8d09a6746E.exit ], [ %i.eg, %bb.s ] ; 2 uses
  %i.hw = icmp ugt i64 %i.dp, 1
  br i1 %i.hw, label %bb.p, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.hx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.hy = lshr i64 %.sroa.023.0, 1
  %i.hz = add i64 %i.hy, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.ia = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ia, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ib = or i64 %1, 1
  %i.ic = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ib, i1 true)
  %i.id = trunc nuw nsw i64 %i.ic to i32
  %i.ie = shl nuw nsw i32 %i.id, 1
  %i.if = xor i32 %i.ie, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h06a5309a643d217fE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.if, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !95348
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hcb69262cc2fa16e8E(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i100 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.dz, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.dx, %bb.y ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd37c1a39ccc70b55E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd37c1a39ccc70b55E.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread98, %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd37c1a39ccc70b55E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd37c1a39ccc70b55E.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb42d34babc34b735E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %i.l, i64 88
  %.val10.i = load i32, ptr %i.n, align 8, !alias.scope !95520, !noalias !95521, !noundef !44 ; 3 uses
  %i.o = getelementptr i8, ptr %i.l, i64 40
  %.val11.i = load i32, ptr %i.o, align 8, !alias.scope !95520, !noalias !95521, !noundef !44
  %i.p = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not72 = icmp eq i64 %i.k, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.h
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread98, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.i
  %.val9.i = phi i32 [ %.val8.i, %bb.i ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.t, %bb.i ], [ 2, %.preheader50 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.sroa.01.0.i.i55
  %5 = add i64 %.sroa.01.0.i.i55, -1
  %6 = icmp ult i64 %5, %i.k
  tail call void @llvm.assume(i1 %6)
  %i.r = getelementptr i8, ptr %i.q, i64 40
  %.val8.i = load i32, ptr %i.r, align 8, !alias.scope !95520, !noalias !95521, !noundef !44 ; 2 uses
  %i.s = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.s, label %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.t = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.j
  %.val7.i = phi i32 [ %.val.i, %bb.j ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.x, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.sroa.01.1.i.i58
  %7 = add i64 %.sroa.01.1.i.i58, -1
  %8 = icmp ult i64 %7, %i.k
  tail call void @llvm.assume(i1 %8)
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %.val.i = load i32, ptr %i.v, align 8, !alias.scope !95520, !noalias !95521, !noundef !44 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i

bb.j:                                             ; preds = %.lr.ph59
  %i.x = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.x, %i.k
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.y = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread98: ; preds = %.preheader
  br i1 %.not5.i100, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i95, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb42d34babc34b735E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i
  br i1 %i.p, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb42d34babc34b735E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.z = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h713a171ed2f49088E.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17he96d51d54324aebdE(ptr noalias noundef nonnull align 8 %i.l, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null)
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h713a171ed2f49088E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb42d34babc34b735E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4548 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread ], [ %.sroa.0.0.i.i96103107, %.lr.ph.i.i38 ]
  %i.ac = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h713a171ed2f49088E.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95522), !noalias !95521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95523), !noalias !95521
  %.not15.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb42d34babc34b735E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread98, %bb.n
  %i.af = phi i64 [ %i.ae, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread98 ]
  %.sroa.0.0.i.i96103107 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h3592efde3524c39bE.exit.i.thread98 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.sroa.0.0.i.i96103107
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.au, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.014.i.i, -1
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 4 uses
  %i.aj = getelementptr [48 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !95524, !noalias !95525
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !95526, !noalias !95527
  store <2 x i64> %i.al, ptr %i.ai, align 8, !alias.scope !95524, !noalias !95525
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !alias.scope !95526, !noalias !95527
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !95528, !noalias !95525
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !95529, !noalias !95527
  store <2 x i64> %i.ap, ptr %i.am, align 8, !alias.scope !95528, !noalias !95525
  store <2 x i64> %i.ao, ptr %i.an, align 8, !alias.scope !95529, !noalias !95527
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !95530, !noalias !95525
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !95531, !noalias !95527
  store <2 x i64> %i.at, ptr %i.aq, align 8, !alias.scope !95530, !noalias !95525
  store <2 x i64> %i.as, ptr %i.ar, align 8, !alias.scope !95531, !noalias !95527
  %i.au = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.af
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb42d34babc34b735E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h713a171ed2f49088E.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb42d34babc34b735E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb42d34babc34b735E.exit" ], [ %i.ab, %bb.m ], [ %i.z, %bb.l ] ; 2 uses
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
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h713a171ed2f49088E.exit
  %.sroa.026.0 = phi i8 [ %i.bd, %_ZN4core5slice4sort6stable5drift10create_run17h713a171ed2f49088E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h713a171ed2f49088E.exit ], [ 1, %bb.e ] ; 2 uses
  %i.be = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.be, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17h4bfeff46ca25581eE.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bg, %_ZN4core5slice4sort6stable5drift13logical_merge17h4bfeff46ca25581eE.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4bfeff46ca25581eE.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !44
  %.not29 = icmp ult i8 %i.bi, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h4bfeff46ca25581eE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.163, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4bfeff46ca25581eE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.164, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h4bfeff46ca25581eE.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bk, align 1
  br i1 %i.j, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !44 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 8 uses
  %i.bo = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bp = add nuw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.bq ; 6 uses
  %i.bs = icmp ugt i64 %i.bp, %3
  %i.bt = trunc i64 %.sroa.018.163 to i1
  %i.bu = or i64 %i.bm, %.sroa.018.163
  %i.bv = trunc i64 %i.bu to i1
  %or.cond3.i = or i1 %i.bs, %i.bv
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bx = shl i64 %i.bp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4bfeff46ca25581eE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.bt, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd37c1a39ccc70b55E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.by = or i64 %i.bn, 1
  %i.bz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17he96d51d54324aebdE(ptr noalias noundef nonnull align 8 %i.br, i64 noundef %i.bn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd37c1a39ccc70b55E.exit35": ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %i.br, i64 %i.bn
  %i.ce = or i64 %i.bo, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17he96d51d54324aebdE(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef %i.bo, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null)
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hd37c1a39ccc70b55E.exit35", %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95533)
  %i.cj = icmp eq i64 %i.bn, 0
  %i.ck = icmp eq i64 %i.bo, 0
  %or.cond.i = or i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha69e0419184c1407E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 range(i64 0, -9223372036854775808) %i.bn) ; 2 uses
  %i.cl = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cl, label %_ZN4core5slice4sort6stable5merge5merge17ha69e0419184c1407E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw [48 x i8], ptr %i.br, i64 %i.bn ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bn, %i.bo  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cm, ptr %i.br
  %i.cn = mul i64 %.sroa.0.0.i.i36, 48            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cn, i1 false), !alias.scope !95534
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.cp = phi ptr [ %i.db, %.preheader.i ], [ %i.co, %bb.x ] ; 2 uses
  %i.cq = phi ptr [ %i.cz, %.preheader.i ], [ %i.cm, %bb.x ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ct, %.preheader.i ], [ %i.bf, %bb.x ]
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -48 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -48 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -48 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cp, i64 -8
  %.val.i.i = load i32, ptr %i.cu, align 8, !alias.scope !95533, !noalias !95535, !noundef !44
  %i.cv = getelementptr i8, ptr %i.cq, i64 -8
  %.val10.i.i = load i32, ptr %i.cv, align 8, !alias.scope !95532, !noalias !95536, !noundef !44
  %i.cw = icmp ult i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cw, ptr %i.cr, ptr %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !95534, !noalias !95537
  %i.cx = xor i1 %i.cw, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %i.cr, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %i.cs, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.br
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h220744aa555ef2d0E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.de = phi ptr [ %i.do, %.lr.ph.i.i ], [ %i.br, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.cm, %bb.x ] ; 3 uses
  %i.df = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %2, %bb.x ] ; 3 uses
  %i.dg = getelementptr i8, ptr %.sroa.0.02.i.i, i64 40
  %.sroa.0.0.val.i.i = load i32, ptr %i.dg, align 8, !alias.scope !95532, !noalias !95538, !noundef !44
  %i.dh = getelementptr i8, ptr %i.df, i64 40
  %.val.i19.i = load i32, ptr %i.dh, align 8, !alias.scope !95533, !noalias !95539, !noundef !44
  %i.di = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dj = xor i1 %i.di, true
  %spec.select.i.i = select i1 %i.di, ptr %.sroa.0.02.i.i, ptr %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i.i, i64 48, i1 false), !alias.scope !95534, !noalias !95540
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %i.dk ; 3 uses
  %i.dm = zext i1 %i.di to i64
  %i.dn = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.dp = icmp ne ptr %i.dl, %i.co
  %i.dq = icmp ne ptr %i.dn, %i.bf
  %or.cond.i20.i = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h220744aa555ef2d0E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h220744aa555ef2d0E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cz, %.preheader.i ], [ %i.do, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.db, %.preheader.i ], [ %i.co, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dl, %.lr.ph.i.i ] ; 2 uses
  %i.dr = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ds = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dt = sub nuw i64 %i.dr, %i.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dt, i1 false), !alias.scope !95534, !noalias !95541
  br label %_ZN4core5slice4sort6stable5merge5merge17ha69e0419184c1407E.exit

_ZN4core5slice4sort6stable5merge5merge17ha69e0419184c1407E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h220744aa555ef2d0E.exit.i"
  %i.du = shl i64 %i.bp, 1
  %i.dv = or disjoint i64 %i.du, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4bfeff46ca25581eE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h4bfeff46ca25581eE.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17ha69e0419184c1407E.exit
  %.sroa.0.0.i = phi i64 [ %i.dv, %_ZN4core5slice4sort6stable5merge5merge17ha69e0419184c1407E.exit ], [ %i.bx, %bb.s ] ; 2 uses
  %i.dw = icmp ugt i64 %i.bg, 1
  br i1 %i.dw, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dy = lshr i64 %.sroa.023.0, 1
  %i.dz = add i64 %i.dy, %.sroa.09.0
  br label %bb.e

bb.z:                                             ; preds = %._crit_edge
  %i.ea = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ea, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eb = or i64 %1, 1
  %i.ec = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eb, i1 true)
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 1
  %i.ef = xor i32 %i.ee, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17he96d51d54324aebdE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hee19cfa1ff2d8d0bE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.ev, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.et, %bb.y ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hebd8cd95f8e33b0fE.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hebd8cd95f8e33b0fE.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread105, %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hebd8cd95f8e33b0fE.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hebd8cd95f8e33b0fE.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %i.l, i64 24
  %.val14.i = load i32, ptr %i.n, align 8, !alias.scope !95567, !noalias !95568, !noundef !44 ; 4 uses
  %i.o = getelementptr i8, ptr %i.l, i64 28
  %.val15.i = load i32, ptr %i.o, align 4, !alias.scope !95567, !noalias !95568, !noundef !44 ; 3 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val16.i = load i32, ptr %i.p, align 8, !alias.scope !95567, !noalias !95568, !noundef !44 ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 12
  %.val17.i = load i32, ptr %i.q, align 4, !alias.scope !95567, !noalias !95568, !noundef !44
  %i.r = icmp eq i32 %.val14.i, %.val16.i
  %i.s = icmp ult i32 %.val14.i, %.val16.i
  %i.t = icmp ult i32 %.val17.i, %.val15.i
  %.sroa.0.0.i.i43 = select i1 %i.r, i1 %i.t, i1 %i.s ; 2 uses
  %.not75 = icmp eq i64 %i.k, 2                   ; 2 uses
  br i1 %.sroa.0.0.i.i43, label %.preheader, label %.preheader53

.preheader53:                                     ; preds = %bb.h
  br i1 %.not75, label %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not75, label %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread105, label %.lr.ph62

.lr.ph:                                           ; preds = %.preheader53, %bb.i
  %.val13.i = phi i32 [ %.val11.i, %bb.i ], [ %.val15.i, %.preheader53 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.i ], [ %.val14.i, %.preheader53 ] ; 2 uses
  %.sroa.01.0.i.i58 = phi i64 [ %i.aa, %bb.i ], [ 2, %.preheader53 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.01.0.i.i58 ; 2 uses
  %5 = add i64 %.sroa.01.0.i.i58, -1
  %6 = icmp ult i64 %5, %i.k
  tail call void @llvm.assume(i1 %6)
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val10.i = load i32, ptr %i.v, align 8, !alias.scope !95567, !noalias !95568, !noundef !44 ; 3 uses
  %i.w = getelementptr i8, ptr %i.u, i64 12
  %.val11.i = load i32, ptr %i.w, align 4, !alias.scope !95567, !noalias !95568, !noundef !44 ; 2 uses
  %i.x = icmp eq i32 %.val10.i, %.val12.i
  %i.y = icmp ult i32 %.val10.i, %.val12.i
  %i.z = icmp ult i32 %.val13.i, %.val11.i
  %.sroa.0.0.i.i42 = select i1 %i.x, i1 %i.z, i1 %i.y
  br i1 %.sroa.0.0.i.i42, label %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.sroa.01.0.i.i58, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i, label %.lr.ph

.lr.ph62:                                         ; preds = %.preheader, %bb.j
  %.val9.i = phi i32 [ %.val7.i, %bb.j ], [ %.val15.i, %.preheader ]
  %.val8.i = phi i32 [ %.val.i, %bb.j ], [ %.val14.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i61 = phi i64 [ %i.ah, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.01.1.i.i61 ; 2 uses
  %7 = add i64 %.sroa.01.1.i.i61, -1
  %8 = icmp ult i64 %7, %i.k
  tail call void @llvm.assume(i1 %8)
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val.i = load i32, ptr %i.ac, align 8, !alias.scope !95567, !noalias !95568, !noundef !44 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 12
  %.val7.i = load i32, ptr %i.ad, align 4, !alias.scope !95567, !noalias !95568, !noundef !44 ; 2 uses
  %i.ae = icmp eq i32 %.val.i, %.val8.i
  %i.af = icmp ult i32 %.val.i, %.val8.i
  %i.ag = icmp ult i32 %.val9.i, %.val7.i
  %.sroa.0.0.i.i41 = select i1 %i.ae, i1 %i.ag, i1 %i.af
  br i1 %.sroa.0.0.i.i41, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i

bb.j:                                             ; preds = %.lr.ph62
  %i.ah = add nuw i64 %.sroa.01.1.i.i61, 1        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.ah, %i.k
  br i1 %exitcond82.not, label %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i, label %.lr.ph62

_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph62
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i61, %.lr.ph62 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i58, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread105: ; preds = %.preheader
  br i1 %.not5.i107, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i102, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i
  br i1 %.sroa.0.0.i.i43, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb16d81bbfd14327aE.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2007def3406f0ffdE(ptr noalias noundef nonnull align 8 %i.l, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb16d81bbfd14327aE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i38
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit", label %.lr.ph.i.i38.epil.preheader

.lr.ph.i.i38.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bi, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod13 = trunc i64 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.am = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i.epil.init ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %i.av, i64 %i.am ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !95569, !noalias !95570
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !95571, !noalias !95572
  store <2 x i64> %i.aq, ptr %i.an, align 8, !alias.scope !95569, !noalias !95570
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !alias.scope !95571, !noalias !95572
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit": ; preds = %.lr.ph.i.i38.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4851 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread ], [ %.sroa.0.0.i.i103110114, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i103110114, %.lr.ph.i.i38.epil.preheader ]
  %i.ar = shl i64 %.sroa.0.0.i.i4851, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb16d81bbfd14327aE.exit

bb.n:                                             ; preds = %bb.k
  %i.at = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95573), !noalias !95568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95574), !noalias !95568
  %.not15.i.i = icmp eq i64 %i.at, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread105, %bb.n
  %i.au = phi i64 [ %i.at, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread105 ] ; 4 uses
  %.sroa.0.0.i.i103110114 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hc8515ed2f45a2f20E.exit.i.thread105 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.0.i.i103110114 ; 3 uses
  %xtraiter = and i64 %i.au, 1
  %i.aw = icmp eq i64 %i.au, 1
  br i1 %i.aw, label %.lr.ph.i.i38.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.au, 9223372036854775806
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bi, %.lr.ph.i.i38 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i38 ]
  %i.ax = xor i64 %.sroa.0.014.i.i, -1
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 2 uses
  %i.az = getelementptr [16 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !95569, !noalias !95570
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !95571, !noalias !95572
  store <2 x i64> %i.bb, ptr %i.ay, align 8, !alias.scope !95569, !noalias !95570
  store <2 x i64> %i.ba, ptr %i.az, align 8, !alias.scope !95571, !noalias !95572
  %i.bc = xor i64 %.sroa.0.014.i.i, -2
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bf = getelementptr [16 x i8], ptr %i.av, i64 %i.bc ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !95569, !noalias !95570
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !95571, !noalias !95572
  store <2 x i64> %i.bh, ptr %i.be, align 8, !alias.scope !95569, !noalias !95570
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !alias.scope !95571, !noalias !95572
  %i.bi = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit.loopexit.unr-lcssa", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17hb16d81bbfd14327aE.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.as, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1ecfbe445e8f1d9fE.exit" ], [ %i.al, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.bj = lshr i64 %.sroa.018.0, 1
  %i.bk = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bl = sub i64 %factor, %i.bj
  %i.bm = add i64 %i.bk, %factor
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = mul i64 %i.bm, %.sroa.0.0
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 false)
  %i.br = trunc nuw nsw i64 %i.bq to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17hb16d81bbfd14327aE.exit
  %.sroa.026.0 = phi i8 [ %i.br, %_ZN4core5slice4sort6stable5drift10create_run17hb16d81bbfd14327aE.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hb16d81bbfd14327aE.exit ], [ 1, %bb.e ] ; 2 uses
  %i.bs = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bs, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph68, %_ZN4core5slice4sort6stable5drift13logical_merge17hd0cf02c5226e25f2E.exit
  %.sroa.02.167 = phi i64 [ %.sroa.02.0, %.lr.ph68 ], [ %i.bu, %_ZN4core5slice4sort6stable5drift13logical_merge17hd0cf02c5226e25f2E.exit ] ; 2 uses
  %.sroa.018.166 = phi i64 [ %.sroa.018.0, %.lr.ph68 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd0cf02c5226e25f2E.exit ] ; 4 uses
  %i.bu = add i64 %.sroa.02.167, -1               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !44
  %.not29 = icmp ult i8 %i.bw, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hd0cf02c5226e25f2E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.166, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd0cf02c5226e25f2E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.167, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hd0cf02c5226e25f2E.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.by, align 1
  br i1 %i.j, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bu
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !44 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 8 uses
  %i.cc = lshr i64 %.sroa.018.166, 1              ; 6 uses
  %i.cd = add nuw i64 %i.cb, %i.cc                ; 4 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ce ; 6 uses
  %i.cg = icmp ugt i64 %i.cd, %3
  %i.ch = trunc i64 %.sroa.018.166 to i1
  %i.ci = or i64 %i.ca, %.sroa.018.166
  %i.cj = trunc i64 %i.ci to i1
  %or.cond3.i = or i1 %i.cg, %i.cj
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cl = shl i64 %i.cd, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd0cf02c5226e25f2E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.ch, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hebd8cd95f8e33b0fE.exit35"

bb.u:                                             ; preds = %bb.r
  %i.cm = or i64 %i.cb, 1
  %i.cn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2007def3406f0ffdE(ptr noalias noundef nonnull align 8 %i.cf, i64 noundef %i.cb, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hebd8cd95f8e33b0fE.exit35": ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb
  %i.cs = or i64 %i.cc, 1
  %i.ct = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2007def3406f0ffdE(ptr noalias noundef nonnull align 8 %i.cr, i64 noundef %i.cc, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hebd8cd95f8e33b0fE.exit35", %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95576)
  %i.cx = icmp eq i64 %i.cb, 0
  %i.cy = icmp eq i64 %i.cc, 0
  %or.cond.i = or i1 %i.cy, %i.cx
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h5c24a9086422ca9fE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 range(i64 0, -9223372036854775808) %i.cb) ; 2 uses
  %i.cz = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cz, label %_ZN4core5slice4sort6stable5merge5merge17h5c24a9086422ca9fE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cb, %i.cc  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.da, ptr %i.cf
  %i.db = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.db, i1 false), !alias.scope !95577
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.dd = phi ptr [ %i.dt, %.preheader.i ], [ %i.dc, %bb.x ] ; 3 uses
  %i.de = phi ptr [ %i.dr, %.preheader.i ], [ %i.da, %bb.x ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.bt, %bb.x ]
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -16 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 -16 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dd, i64 -8
  %.val.i.i = load i32, ptr %i.di, align 8, !alias.scope !95576, !noalias !95578, !noundef !44 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 -4
  %.val10.i.i = load i32, ptr %i.dj, align 4, !alias.scope !95576, !noalias !95578, !noundef !44
  %i.dk = getelementptr i8, ptr %i.de, i64 -8
  %.val11.i.i = load i32, ptr %i.dk, align 8, !alias.scope !95575, !noalias !95579, !noundef !44 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.de, i64 -4
  %.val12.i.i = load i32, ptr %i.dl, align 4, !alias.scope !95575, !noalias !95579, !noundef !44
  %i.dm = icmp eq i32 %.val.i.i, %.val11.i.i
  %i.dn = icmp ult i32 %.val.i.i, %.val11.i.i
  %i.do = icmp ult i32 %.val12.i.i, %.val10.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.dm, i1 %i.do, i1 %i.dn ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.df, ptr %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !95577, !noalias !95580
  %i.dp = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dq ; 3 uses
  %i.ds = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.ds ; 3 uses
  %i.du = icmp eq ptr %i.dr, %i.cf
  %i.dv = icmp eq ptr %i.dt, %2
  %or.cond.i.i = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3ecab715b807c14bE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.dw = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %i.cf, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.da, %bb.x ] ; 4 uses
  %i.dx = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %2, %bb.x ] ; 4 uses
  %i.dy = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load i32, ptr %i.dy, align 8, !alias.scope !95575, !noalias !95581, !noundef !44 ; 2 uses
  %i.dz = getelementptr i8, ptr %.sroa.0.02.i.i, i64 12
  %.sroa.0.0.val6.i.i = load i32, ptr %i.dz, align 4, !alias.scope !95575, !noalias !95581, !noundef !44
  %i.ea = getelementptr i8, ptr %i.dx, i64 8
  %.val.i19.i = load i32, ptr %i.ea, align 8, !alias.scope !95576, !noalias !95582, !noundef !44 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dx, i64 12
  %.val7.i.i = load i32, ptr %i.eb, align 4, !alias.scope !95576, !noalias !95582, !noundef !44
  %i.ec = icmp eq i32 %.sroa.0.0.val.i.i, %.val.i19.i
  %i.ed = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i
  %i.ee = icmp ult i32 %.val7.i.i, %.sroa.0.0.val6.i.i
  %.sroa.0.0.i.i.i20.i = select i1 %i.ec, i1 %i.ee, i1 %i.ed ; 3 uses
  %i.ef = xor i1 %.sroa.0.0.i.i.i20.i, true
  %spec.select.i.i = select i1 %.sroa.0.0.i.i.i20.i, ptr %.sroa.0.02.i.i, ptr %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !95577, !noalias !95583
  %i.eg = zext i1 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.eg ; 3 uses
  %i.ei = zext i1 %.sroa.0.0.i.i.i20.i to i64
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %i.el = icmp ne ptr %i.eh, %i.dc
  %i.em = icmp ne ptr %i.ej, %i.bt
  %or.cond.i21.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3ecab715b807c14bE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3ecab715b807c14bE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dr, %.preheader.i ], [ %i.ek, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dt, %.preheader.i ], [ %i.dc, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ] ; 2 uses
  %i.en = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eo = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ep = sub nuw i64 %i.en, %i.eo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ep, i1 false), !alias.scope !95577, !noalias !95584
  br label %_ZN4core5slice4sort6stable5merge5merge17h5c24a9086422ca9fE.exit

_ZN4core5slice4sort6stable5merge5merge17h5c24a9086422ca9fE.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3ecab715b807c14bE.exit.i"
  %i.eq = shl i64 %i.cd, 1
  %i.er = or disjoint i64 %i.eq, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd0cf02c5226e25f2E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hd0cf02c5226e25f2E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h5c24a9086422ca9fE.exit
  %.sroa.0.0.i = phi i64 [ %i.er, %_ZN4core5slice4sort6stable5merge5merge17h5c24a9086422ca9fE.exit ], [ %i.cl, %bb.s ] ; 2 uses
  %i.es = icmp ugt i64 %i.bu, 1
  br i1 %i.es, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.et = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eu = lshr i64 %.sroa.023.0, 1
  %i.ev = add i64 %i.eu, %.sroa.09.0
  br label %bb.e

bb.z:                                             ; preds = %._crit_edge
  %i.ew = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ew, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ex = or i64 %1, 1
  %i.ey = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ex, i1 true)
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %i.fb = xor i32 %i.fa, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2007def3406f0ffdE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hff90a0f9317c5816E(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i160 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i165 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.ca, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.ca ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.mk, %bb.ca ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.mi, %bb.ca ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h039c89d3920cf8efE.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h039c89d3920cf8efE.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread163, %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h039c89d3920cf8efE.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h039c89d3920cf8efE.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0c96c959ae22c3c4E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.o = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l), !noalias !95732, !inline_history !95588 ; 2 uses
  %.not130 = icmp eq i64 %i.k, 2                  ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader108

.preheader108:                                    ; preds = %bb.h
  br i1 %.not130, label %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not130, label %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread163, label %.lr.ph117

.lr.ph:                                           ; preds = %.preheader108, %bb.i
  %.sroa.01.0.i.i113 = phi i64 [ %i.r, %bb.i ], [ 2, %.preheader108 ] ; 4 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %.sroa.01.0.i.i113
  %5 = add i64 %.sroa.01.0.i.i113, -1             ; 2 uses
  %6 = icmp ult i64 %5, %i.k
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %5
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %7), !noalias !95732, !inline_history !95588
  br i1 %i.q, label %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.r = add nuw i64 %.sroa.01.0.i.i113, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i, label %.lr.ph

.lr.ph117:                                        ; preds = %.preheader, %bb.j
  %.sroa.01.1.i.i116 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %.sroa.01.1.i.i116
  %8 = add i64 %.sroa.01.1.i.i116, -1             ; 2 uses
  %9 = icmp ult i64 %8, %i.k
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %8
  %i.t = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %10), !noalias !95732, !inline_history !95588
  br i1 %i.t, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i

bb.j:                                             ; preds = %.lr.ph117
  %i.u = add nuw i64 %.sroa.01.1.i.i116, 1        ; 2 uses
  %exitcond137.not = icmp eq i64 %i.u, %i.k
  br i1 %exitcond137.not, label %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i, label %.lr.ph117

_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph117
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i116, %.lr.ph117 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i113, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.v)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread163: ; preds = %.preheader
  br i1 %.not5.i165, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread: ; preds = %.preheader108
  br i1 %.not5.i160, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0c96c959ae22c3c4E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i
  br i1 %i.o, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0c96c959ae22c3c4E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.w = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hda1a6b3a77e46aabE.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h424a0b8b588af84cE(ptr noalias noundef nonnull align 8 %i.l, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null)
  %i.x = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.y = or disjoint i64 %i.x, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hda1a6b3a77e46aabE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0c96c959ae22c3c4E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i103106 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread ], [ %.sroa.0.0.i.i161168172, %.lr.ph.i.i38 ]
  %i.z = shl i64 %.sroa.0.0.i.i103106, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hda1a6b3a77e46aabE.exit

bb.n:                                             ; preds = %bb.k
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95733), !noalias !95732
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95734), !noalias !95732
  %.not15.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0c96c959ae22c3c4E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread163, %bb.n
  %i.ac = phi i64 [ %i.ab, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread163 ]
  %.sroa.0.0.i.i161168172 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h12a74c463fee8948E.exit.i.thread163 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %.sroa.0.0.i.i161168172
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bd, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ae = xor i64 %.sroa.0.014.i.i, -1
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 7 uses
  %i.ag = getelementptr [96 x i8], ptr %i.ad, i64 %i.ae ; 7 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !alias.scope !95735, !noalias !95736
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !95737, !noalias !95738
  store <2 x i64> %i.ai, ptr %i.af, align 8, !alias.scope !95735, !noalias !95736
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !95737, !noalias !95738
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !95739, !noalias !95736
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !95740, !noalias !95738
  store <2 x i64> %i.am, ptr %i.aj, align 8, !alias.scope !95739, !noalias !95736
  store <2 x i64> %i.al, ptr %i.ak, align 8, !alias.scope !95740, !noalias !95738
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !95741, !noalias !95736
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !95742, !noalias !95738
  store <2 x i64> %i.aq, ptr %i.an, align 8, !alias.scope !95741, !noalias !95736
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !alias.scope !95742, !noalias !95738
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !95743, !noalias !95736
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !95744, !noalias !95738
  store <2 x i64> %i.au, ptr %i.ar, align 8, !alias.scope !95743, !noalias !95736
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !95744, !noalias !95738
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 2 uses
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !95745, !noalias !95736
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !95746, !noalias !95738
  store <2 x i64> %i.ay, ptr %i.av, align 8, !alias.scope !95745, !noalias !95736
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !alias.scope !95746, !noalias !95738
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !95747, !noalias !95736
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !95748, !noalias !95738
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !95747, !noalias !95736
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !95748, !noalias !95738
  %i.bd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.ac
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0c96c959ae22c3c4E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17hda1a6b3a77e46aabE.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0c96c959ae22c3c4E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h0c96c959ae22c3c4E.exit" ], [ %i.y, %bb.m ], [ %i.w, %bb.l ] ; 2 uses
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
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17hda1a6b3a77e46aabE.exit
  %.sroa.026.0 = phi i8 [ %i.bm, %_ZN4core5slice4sort6stable5drift10create_run17hda1a6b3a77e46aabE.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hda1a6b3a77e46aabE.exit ], [ 1, %bb.e ] ; 2 uses
  %i.bn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bn, label %.lr.ph123, label %._crit_edge

.lr.ph123:                                        ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph123, %_ZN4core5slice4sort6stable5drift13logical_merge17h4aa163534641ddcaE.exit
  %.sroa.02.1122 = phi i64 [ %.sroa.02.0, %.lr.ph123 ], [ %i.bp, %_ZN4core5slice4sort6stable5drift13logical_merge17h4aa163534641ddcaE.exit ] ; 2 uses
  %.sroa.018.1121 = phi i64 [ %.sroa.018.0, %.lr.ph123 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4aa163534641ddcaE.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.1122, -1              ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !44
  %.not29 = icmp ult i8 %i.br, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h4aa163534641ddcaE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.1121, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4aa163534641ddcaE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.1122, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h4aa163534641ddcaE.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bt, align 1
  br i1 %i.j, label %bb.ca, label %bb.cb

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !44 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.018.1121, 1             ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.018.1121 to i1
  %i.cd = or i64 %i.bv, %.sroa.018.1121
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cg = shl i64 %i.by, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4aa163534641ddcaE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cc, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h039c89d3920cf8efE.exit35"

bb.u:                                             ; preds = %bb.r
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h424a0b8b588af84cE(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h039c89d3920cf8efE.exit35": ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw [96 x i8], ptr %i.ca, i64 %i.bw
  %i.cn = or i64 %i.bx, 1
  %i.co = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h424a0b8b588af84cE(ptr noalias noundef nonnull align 8 %i.cm, i64 noundef %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null)
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h039c89d3920cf8efE.exit35", %bb.t
  %i.cs = icmp eq i64 %i.bw, 0
  %i.ct = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.ct, %i.cs
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h46199485a2808691E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.cu = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cu, label %_ZN4core5slice4sort6stable5merge5merge17h46199485a2808691E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw [96 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cv, ptr %i.ca
  %i.cw = mul i64 %.sroa.0.0.i.i36, 96            ; 2 uses
end_hunk_2
