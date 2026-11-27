Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57303
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17h71b56b5563fc56d9E":bb.a
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @227, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17hbd81760e785aaeb9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 !guid !8437 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @228, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17hfd969b82bbc06deaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 !guid !8438 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @229, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h082e941d4806c4ebE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 !guid !8439 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @230, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h2a180425351f9161E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 !guid !8440 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @231, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h5ac2be3fc2c89167E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 !guid !8441 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @232, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8is_array17h315e52a07897e5acE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 !guid !8442 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8is_array17h672f20910f07567cE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 !guid !8443 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8is_array17h886aa2dcda60caedE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 !guid !8444 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h32d39fcd49376263E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8494 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values17h8421269d0cddf597E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8498
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8497, !noalias !8499, !nonnull !175, !align !182, !noundef !175
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8497, !noalias !8499, !nonnull !175, !align !179, !noundef !175
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !175, !noalias !8500, !nonnull !175
  invoke void %i.n(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.i.i.i.i)
          to label %.noexc12.i.i.i.i unwind label %bb.d, !noalias !8498, !inline_history !8459

.noexc12.i.i.i.i:                                 ; preds = %bb.a
  %i.o = load i64, ptr %i.d, align 8, !range !190, !noalias !8498, !noundef !175
  %.not.i10.i.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i10.i.i.i.i, label %.noexc.thread.i.i.i.i, label %bb.b

.noexc.thread.i.i.i.i:                            ; preds = %.noexc12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8498
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.thread.i.i.i.i"

bb.b:                                             ; preds = %.noexc12.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !8498
  %i.q = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17head8d3559174426aE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.d ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8498
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.thread.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h9767bc8a313b5328E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull align 1 %i.q)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.i.i.i.i" unwind label %bb.d, !noalias !8496, !inline_history !8460

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.i.i.i.i": ; preds = %bb.c
  %.pr.i.i.i.i = load i8, ptr %i.h, align 8, !noalias !8496
  %.not.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 5
  br i1 %.not.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.thread.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8496
  call void @llvm.experimental.noalias.scope.decl(metadata !8501)
  %.val.i14.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8501, !noalias !8496, !nonnull !175, !align !182, !noundef !175
  %.val1.i15.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8501, !noalias !8496, !nonnull !175, !align !179, !noundef !175
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i15.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !175, !noalias !8502, !nonnull !175
  invoke void %i.t(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 %.val.i14.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h343f0b16cd718c3dE.exit.i.i.i.i" unwind label %bb.i, !noalias !8503, !inline_history !8466

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.thread.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.i.i.i.i", %.noexc.i.i.i.i, %.noexc.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8496
  call void @llvm.experimental.noalias.scope.decl(metadata !8504)
  %.val.i17.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8504, !noalias !8496 ; 5 uses
  %.val1.i18.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8504, !noalias !8496, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  %i.u = load ptr, ptr %.val1.i18.i.i.i.i, align 8, !invariant.load !175, !noalias !8505 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.thread.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i17.i.i.i.i)
          to label %bb.g unwind label %bb.h, !noalias !8505

bb.g:                                             ; preds = %bb.f, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.thread.i.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !174, !invariant.load !175, !noalias !8505 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !208, !invariant.load !175, !noalias !8505 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf91808b3d96067c0E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #77, !noalias !8505
  br label %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf91808b3d96067c0E.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !174, !invariant.load !175, !noalias !8505 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !208, !invariant.load !175, !noalias !8505 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #77, !noalias !8505
  br label %common.resume.sink.split.i.i.i.i

common.resume.sink.split.i.i.i.i:                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i", %bb.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.h
  %common.resume.op.ph.i.i.i.i = phi { ptr, i32 } [ %i.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i" ], [ %i.ab, %bb.h ], [ %.pn.ph.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i" ], [ %.pn.ph.i.i.i.i, %bb.ab ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8496
  br label %common.resume.i.i.i.i

common.resume.i.i.i.i:                            ; preds = %.body.i.i.i.i, %common.resume.sink.split.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %common.resume.op.ph.i.i.i.i, %common.resume.sink.split.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf91808b3d96067c0E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8496
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hdaa1e26e5f2f48dbE.exit

bb.i:                                             ; preds = %bb.k, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #79
          to label %bb.z unwind label %bb.y, !noalias !8496

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h343f0b16cd718c3dE.exit.i.i.i.i": ; preds = %bb.e
  %i.aj = load i64, ptr %i.g, align 8, !noalias !8496, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8496
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 4) ; 3 uses
  %i.al = mul i64 %.sroa.0.0.i.i.i.i.i, 56        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.ak, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h343f0b16cd718c3dE.exit.i.i.i.i"
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !8506
  %i.an = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8) #77, !noalias !8506 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h343f0b16cd718c3dE.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h343f0b16cd718c3dE.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc14.i.i.i.i unwind label %bb.i, !noalias !8496

.noexc14.i.i.i.i:                                 ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.an, %bb.j ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !8496
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.i, align 8, !noalias !8496
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !8496
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !8496
  call void @llvm.experimental.noalias.scope.decl(metadata !8507)
  call void @llvm.experimental.noalias.scope.decl(metadata !8508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8509
  br label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i", %bb.l
  %.sroa.5.0.copyload3 = phi ptr [ %i.bo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.0.copyload5 = phi i64 [ %i.bq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i" ], [ 1, %bb.l ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8511
  %.val.i20.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8510, !noalias !8512, !nonnull !175, !align !182, !noundef !175
  %.val1.i21.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8510, !noalias !8512, !nonnull !175, !align !179, !noundef !175
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i21.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !175, !noalias !8513, !nonnull !175
  invoke void %i.ar(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i20.i.i.i.i)
          to label %.noexc24.i.i.i.i unwind label %bb.q, !noalias !8511, !inline_history !8459

.noexc24.i.i.i.i:                                 ; preds = %bb.m
  %i.as = load i64, ptr %i.b, align 8, !range !190, !noalias !8511, !noundef !175
  %.not.i22.i.i.i.i = icmp eq i64 %i.as, 2
  br i1 %.not.i22.i.i.i.i, label %.noexc.i.i.thread.i.i.i.i, label %bb.n

.noexc.i.i.thread.i.i.i.i:                        ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8511
  br label %.loopexit.i.i.i.i.i.i

bb.n:                                             ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !8511
  %i.at = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17head8d3559174426aE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8511
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h9767bc8a313b5328E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull align 1 %i.at)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.i.i.i.i.i.i" unwind label %bb.q, !noalias !8514, !inline_history !8460

bb.p:                                             ; preds = %bb.w, %bb.q
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.au, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf91808b3d96067c0E"(ptr nonnull align 1 %i.k, ptr nonnull readonly align 8 dereferenceable(56) @94) #79
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !8515

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.i.i.i.i.i.i": ; preds = %bb.o
  %.pr.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !8514
  %.not.i.i15.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i, 5
  br i1 %.not.i.i15.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.i.i.i.i.i.i"
  %i.av = icmp samesign ult i64 %.sroa.6.0.copyload5, 164703072086692426
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.i, align 8, !range !174, !alias.scope !8516, !noalias !8496, !noundef !175
  %i.ax = icmp eq i64 %.sroa.6.0.copyload5, %i.aw
  br i1 %i.ax, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7aa35502bf2a25baE.exit.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i, %.noexc.i.i.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8517)
  %.val.i27.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8517, !noalias !8514 ; 5 uses
  %.val1.i28.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8517, !noalias !8514, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  %i.ay = load ptr, ptr %.val1.i28.i.i.i.i, align 8, !invariant.load !175, !noalias !8518 ; 2 uses
  %.not.i.i29.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i29.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !8519
  invoke void %i.ay(ptr noundef nonnull %.val.i27.i.i.i.i)
          to label %bb.t unwind label %bb.u, !noalias !8518

bb.t:                                             ; preds = %bb.s, %.loopexit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !174, !invariant.load !175, !noalias !8518 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !208, !invariant.load !175, !noalias !8518 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd), !noalias !8519
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4e68e748828966c4E.exit34.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i": ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !8519
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #77, !noalias !8518
  br label %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4e68e748828966c4E.exit34.i.i.i.i"

bb.u:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !174, !invariant.load !175, !noalias !8518 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !208, !invariant.load !175, !noalias !8518 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk), !noalias !8519
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i": ; preds = %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #77, !noalias !8518
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i", %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8514
  br label %.body.i.i.i.i

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8514
  call void @llvm.experimental.noalias.scope.decl(metadata !8520)
  %.val.i35.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8520, !noalias !8514, !nonnull !175, !align !182, !noundef !175
  %.val1.i36.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8520, !noalias !8514, !nonnull !175, !align !179, !noundef !175
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i36.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !175, !noalias !8521, !nonnull !175
  invoke void %i.bn(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %.val.i35.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h973e5167b121b484E.exit.i.i.i.i.i.i" unwind label %bb.w, !noalias !8522, !inline_history !8466

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h973e5167b121b484E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i", %bb.r
  %i.bo = phi ptr [ %.pre.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h973e5167b121b484E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i" ], [ %.sroa.5.0.copyload3, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %.sroa.6.0.copyload5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !8514
  %i.bq = add nuw nsw i64 %.sroa.6.0.copyload5, 1 ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8516, !noalias !8496
  br label %bb.m

bb.w:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h973e5167b121b484E.exit.i.i.i.i.i.i", %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #79
          to label %bb.p unwind label %bb.x, !noalias !8514

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h973e5167b121b484E.exit.i.i.i.i.i.i": ; preds = %bb.v
  %i.bs = load i64, ptr %i.e, align 8, !noalias !8514, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8514
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.6.0.copyload5, i64 noundef %i.bt, i64 noundef 8, i64 noundef 56)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h973e5167b121b484E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.w, !noalias !8523

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h973e5167b121b484E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h973e5167b121b484E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8516, !noalias !8496
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w, %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !8514
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i" ], [ %.pn.i.i.i.i.i.i, %bb.p ]
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h066d47c01294d70eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #79
          to label %common.resume.i.i.i.i unwind label %bb.y, !noalias !8496

"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4e68e748828966c4E.exit34.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i", %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8509
  %.sroa.0.0.copyload1 = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8496
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hdaa1e26e5f2f48dbE.exit

bb.y:                                             ; preds = %.body.i.i.i.i, %bb.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body42.i.i.i.i
end_hunk_0
begin_hunk_1_@"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h32d39fcd49376263E":bb.a
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ai, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8524)
  %.val.i45.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8524, !noalias !8496 ; 5 uses
  %.val1.i46.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8524, !noalias !8496, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  %i.bw = load ptr, ptr %.val1.i46.i.i.i.i, align 8, !invariant.load !175, !noalias !8525 ; 2 uses
  %.not.i.i47.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i47.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  invoke void %i.bw(ptr noundef nonnull %.val.i45.i.i.i.i)
          to label %bb.ab unwind label %bb.ac, !noalias !8525

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !174, !invariant.load !175, !noalias !8525 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !208, !invariant.load !175, !noalias !8525 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, -9223372036854775807
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.by, 0
  br i1 %i.cc, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i": ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #77, !noalias !8525
  br label %common.resume.sink.split.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !174, !invariant.load !175, !noalias !8525 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !208, !invariant.load !175, !noalias !8525 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, -9223372036854775807
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp eq i64 %i.cf, 0
  br i1 %i.cj, label %.body51.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) %i.ch) #77, !noalias !8525
  br label %.body51.i.i.i.i

.body51.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i", %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8496
  br label %.body42.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hdaa1e26e5f2f48dbE.exit: ; preds = %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf91808b3d96067c0E.exit.i.i.i.i", %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4e68e748828966c4E.exit34.i.i.i.i"
  %.sroa.6.0 = phi i64 [ 0, %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf91808b3d96067c0E.exit.i.i.i.i" ], [ %.sroa.6.0.copyload5, %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4e68e748828966c4E.exit34.i.i.i.i" ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf91808b3d96067c0E.exit.i.i.i.i" ], [ %.sroa.5.0.copyload3, %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4e68e748828966c4E.exit34.i.i.i.i" ]
  %.sroa.0.0 = phi i64 [ 0, %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf91808b3d96067c0E.exit.i.i.i.i" ], [ %.sroa.0.0.copyload1, %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4e68e748828966c4E.exit34.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8495
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ck, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h554b04854647c582E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8575 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values17hfcc6582eac7c3f8dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8579
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8578, !noalias !8580, !nonnull !175, !align !182, !noundef !175
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8578, !noalias !8580, !nonnull !175, !align !179, !noundef !175
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !175, !noalias !8581, !nonnull !175
  invoke void %i.n(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.i.i.i.i)
          to label %.noexc12.i.i.i.i unwind label %bb.d, !noalias !8579, !inline_history !8540

.noexc12.i.i.i.i:                                 ; preds = %bb.a
  %i.o = load i64, ptr %i.d, align 8, !range !190, !noalias !8579, !noundef !175
  %.not.i10.i.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i10.i.i.i.i, label %.noexc.thread.i.i.i.i, label %bb.b

.noexc.thread.i.i.i.i:                            ; preds = %.noexc12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8579
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.thread.i.i.i.i"

bb.b:                                             ; preds = %.noexc12.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !8579
  %i.q = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17h241d38662d5ef3ceE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.d ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8579
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.thread.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hb252a7d8b7b817ecE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull align 1 %i.q)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.i.i.i.i" unwind label %bb.d, !noalias !8577, !inline_history !8541

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.i.i.i.i": ; preds = %bb.c
  %.pr.i.i.i.i = load i8, ptr %i.h, align 8, !noalias !8577
  %.not.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 5
  br i1 %.not.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.thread.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8577
  call void @llvm.experimental.noalias.scope.decl(metadata !8582)
  %.val.i14.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8582, !noalias !8577, !nonnull !175, !align !182, !noundef !175
  %.val1.i15.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8582, !noalias !8577, !nonnull !175, !align !179, !noundef !175
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i15.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !175, !noalias !8583, !nonnull !175
  invoke void %i.t(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 %.val.i14.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5792dd694a28e289E.exit.i.i.i.i" unwind label %bb.i, !noalias !8584, !inline_history !8547

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.thread.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.i.i.i.i", %.noexc.i.i.i.i, %.noexc.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8577
  call void @llvm.experimental.noalias.scope.decl(metadata !8585)
  %.val.i17.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8585, !noalias !8577 ; 5 uses
  %.val1.i18.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8585, !noalias !8577, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  %i.u = load ptr, ptr %.val1.i18.i.i.i.i, align 8, !invariant.load !175, !noalias !8586 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.thread.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i17.i.i.i.i)
          to label %bb.g unwind label %bb.h, !noalias !8586

bb.g:                                             ; preds = %bb.f, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.thread.i.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !174, !invariant.load !175, !noalias !8586 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !208, !invariant.load !175, !noalias !8586 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17heb9f02b4d9e8aab3E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #77, !noalias !8586
  br label %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17heb9f02b4d9e8aab3E.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !174, !invariant.load !175, !noalias !8586 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !208, !invariant.load !175, !noalias !8586 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #77, !noalias !8586
  br label %common.resume.sink.split.i.i.i.i

common.resume.sink.split.i.i.i.i:                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i", %bb.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.h
  %common.resume.op.ph.i.i.i.i = phi { ptr, i32 } [ %i.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i" ], [ %i.ab, %bb.h ], [ %.pn.ph.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i" ], [ %.pn.ph.i.i.i.i, %bb.ab ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8577
  br label %common.resume.i.i.i.i

common.resume.i.i.i.i:                            ; preds = %.body.i.i.i.i, %common.resume.sink.split.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %common.resume.op.ph.i.i.i.i, %common.resume.sink.split.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17heb9f02b4d9e8aab3E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8577
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h910749c13f3bde79E.exit

bb.i:                                             ; preds = %bb.k, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #79
          to label %bb.z unwind label %bb.y, !noalias !8577

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5792dd694a28e289E.exit.i.i.i.i": ; preds = %bb.e
  %i.aj = load i64, ptr %i.g, align 8, !noalias !8577, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8577
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 4) ; 3 uses
  %i.al = mul i64 %.sroa.0.0.i.i.i.i.i, 56        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.ak, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5792dd694a28e289E.exit.i.i.i.i"
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !8587
  %i.an = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8) #77, !noalias !8587 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5792dd694a28e289E.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5792dd694a28e289E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc14.i.i.i.i unwind label %bb.i, !noalias !8577

.noexc14.i.i.i.i:                                 ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.an, %bb.j ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !8577
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.i, align 8, !noalias !8577
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !8577
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !8577
  call void @llvm.experimental.noalias.scope.decl(metadata !8588)
  call void @llvm.experimental.noalias.scope.decl(metadata !8589)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8590
  br label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i", %bb.l
  %.sroa.5.0.copyload3 = phi ptr [ %i.bo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.0.copyload5 = phi i64 [ %i.bq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i" ], [ 1, %bb.l ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8592
  %.val.i20.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8591, !noalias !8593, !nonnull !175, !align !182, !noundef !175
  %.val1.i21.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8591, !noalias !8593, !nonnull !175, !align !179, !noundef !175
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i21.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !175, !noalias !8594, !nonnull !175
  invoke void %i.ar(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i20.i.i.i.i)
          to label %.noexc24.i.i.i.i unwind label %bb.q, !noalias !8592, !inline_history !8540

.noexc24.i.i.i.i:                                 ; preds = %bb.m
  %i.as = load i64, ptr %i.b, align 8, !range !190, !noalias !8592, !noundef !175
  %.not.i22.i.i.i.i = icmp eq i64 %i.as, 2
  br i1 %.not.i22.i.i.i.i, label %.noexc.i.i.thread.i.i.i.i, label %bb.n

.noexc.i.i.thread.i.i.i.i:                        ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8592
  br label %.loopexit.i.i.i.i.i.i

bb.n:                                             ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !8592
  %i.at = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17h241d38662d5ef3ceE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8592
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hb252a7d8b7b817ecE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull align 1 %i.at)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.i.i.i.i.i.i" unwind label %bb.q, !noalias !8595, !inline_history !8541

bb.p:                                             ; preds = %bb.w, %bb.q
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.au, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17heb9f02b4d9e8aab3E"(ptr nonnull align 1 %i.k, ptr nonnull readonly align 8 dereferenceable(56) @95) #79
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !8596

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.i.i.i.i.i.i": ; preds = %bb.o
  %.pr.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !8595
  %.not.i.i15.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i, 5
  br i1 %.not.i.i15.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.i.i.i.i.i.i"
  %i.av = icmp samesign ult i64 %.sroa.6.0.copyload5, 164703072086692426
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.i, align 8, !range !174, !alias.scope !8597, !noalias !8577, !noundef !175
  %i.ax = icmp eq i64 %.sroa.6.0.copyload5, %i.aw
  br i1 %i.ax, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a1321b18ab17dc7E.exit.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i, %.noexc.i.i.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8598)
  %.val.i27.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8598, !noalias !8595 ; 5 uses
  %.val1.i28.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8598, !noalias !8595, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  %i.ay = load ptr, ptr %.val1.i28.i.i.i.i, align 8, !invariant.load !175, !noalias !8599 ; 2 uses
  %.not.i.i29.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i29.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !8600
  invoke void %i.ay(ptr noundef nonnull %.val.i27.i.i.i.i)
          to label %bb.t unwind label %bb.u, !noalias !8599

bb.t:                                             ; preds = %bb.s, %.loopexit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !174, !invariant.load !175, !noalias !8599 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !208, !invariant.load !175, !noalias !8599 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd), !noalias !8600
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb0084dee42f1cee6E.exit34.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i": ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !8600
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #77, !noalias !8599
  br label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb0084dee42f1cee6E.exit34.i.i.i.i"

bb.u:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !174, !invariant.load !175, !noalias !8599 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !208, !invariant.load !175, !noalias !8599 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk), !noalias !8600
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i": ; preds = %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #77, !noalias !8599
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i", %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8595
  br label %.body.i.i.i.i

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8595
  call void @llvm.experimental.noalias.scope.decl(metadata !8601)
  %.val.i35.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8601, !noalias !8595, !nonnull !175, !align !182, !noundef !175
  %.val1.i36.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8601, !noalias !8595, !nonnull !175, !align !179, !noundef !175
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i36.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !175, !noalias !8602, !nonnull !175
  invoke void %i.bn(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %.val.i35.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd7f6684298e60494E.exit.i.i.i.i.i.i" unwind label %bb.w, !noalias !8603, !inline_history !8547

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd7f6684298e60494E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i", %bb.r
  %i.bo = phi ptr [ %.pre.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd7f6684298e60494E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i" ], [ %.sroa.5.0.copyload3, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %.sroa.6.0.copyload5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !8595
  %i.bq = add nuw nsw i64 %.sroa.6.0.copyload5, 1 ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8597, !noalias !8577
  br label %bb.m

bb.w:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd7f6684298e60494E.exit.i.i.i.i.i.i", %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #79
          to label %bb.p unwind label %bb.x, !noalias !8595

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd7f6684298e60494E.exit.i.i.i.i.i.i": ; preds = %bb.v
  %i.bs = load i64, ptr %i.e, align 8, !noalias !8595, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8595
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.6.0.copyload5, i64 noundef %i.bt, i64 noundef 8, i64 noundef 56)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd7f6684298e60494E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.w, !noalias !8604

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd7f6684298e60494E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd7f6684298e60494E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8597, !noalias !8577
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w, %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !8595
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i" ], [ %.pn.i.i.i.i.i.i, %bb.p ]
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h066d47c01294d70eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #79
          to label %common.resume.i.i.i.i unwind label %bb.y, !noalias !8577

"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb0084dee42f1cee6E.exit34.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i", %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8590
  %.sroa.0.0.copyload1 = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8577
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h910749c13f3bde79E.exit

bb.y:                                             ; preds = %.body.i.i.i.i, %bb.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body42.i.i.i.i
end_hunk_1
begin_hunk_2_@"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h554b04854647c582E":bb.a
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ai, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8605)
  %.val.i45.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8605, !noalias !8577 ; 5 uses
  %.val1.i46.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8605, !noalias !8577, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  %i.bw = load ptr, ptr %.val1.i46.i.i.i.i, align 8, !invariant.load !175, !noalias !8606 ; 2 uses
  %.not.i.i47.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i47.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  invoke void %i.bw(ptr noundef nonnull %.val.i45.i.i.i.i)
          to label %bb.ab unwind label %bb.ac, !noalias !8606

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !174, !invariant.load !175, !noalias !8606 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !208, !invariant.load !175, !noalias !8606 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, -9223372036854775807
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.by, 0
  br i1 %i.cc, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i": ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #77, !noalias !8606
  br label %common.resume.sink.split.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !174, !invariant.load !175, !noalias !8606 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !208, !invariant.load !175, !noalias !8606 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, -9223372036854775807
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp eq i64 %i.cf, 0
  br i1 %i.cj, label %.body51.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) %i.ch) #77, !noalias !8606
  br label %.body51.i.i.i.i

.body51.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i", %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8577
  br label %.body42.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h910749c13f3bde79E.exit: ; preds = %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17heb9f02b4d9e8aab3E.exit.i.i.i.i", %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb0084dee42f1cee6E.exit34.i.i.i.i"
  %.sroa.6.0 = phi i64 [ 0, %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17heb9f02b4d9e8aab3E.exit.i.i.i.i" ], [ %.sroa.6.0.copyload5, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb0084dee42f1cee6E.exit34.i.i.i.i" ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17heb9f02b4d9e8aab3E.exit.i.i.i.i" ], [ %.sroa.5.0.copyload3, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb0084dee42f1cee6E.exit34.i.i.i.i" ]
  %.sroa.0.0 = phi i64 [ 0, %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17heb9f02b4d9e8aab3E.exit.i.i.i.i" ], [ %.sroa.0.0.copyload1, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb0084dee42f1cee6E.exit34.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8576
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ck, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hf2e677becee91892E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !8656 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values17h59a181b2405d9111E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8660
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8659, !noalias !8661, !nonnull !175, !align !182, !noundef !175
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8659, !noalias !8661, !nonnull !175, !align !179, !noundef !175
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !175, !noalias !8662, !nonnull !175
  invoke void %i.n(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.i.i.i.i)
          to label %.noexc12.i.i.i.i unwind label %bb.d, !noalias !8660, !inline_history !8621

.noexc12.i.i.i.i:                                 ; preds = %bb.a
  %i.o = load i64, ptr %i.d, align 8, !range !190, !noalias !8660, !noundef !175
  %.not.i10.i.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i10.i.i.i.i, label %.noexc.thread.i.i.i.i, label %bb.b

.noexc.thread.i.i.i.i:                            ; preds = %.noexc12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8660
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.thread.i.i.i.i"

bb.b:                                             ; preds = %.noexc12.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !8660
  %i.q = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hd07747ca003cdc51E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.d ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8660
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.thread.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hac1cac1bf2ecec80E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull align 1 %i.q)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i" unwind label %bb.d, !noalias !8658, !inline_history !8622

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i": ; preds = %bb.c
  %.pr.i.i.i.i = load i8, ptr %i.h, align 8, !noalias !8658
  %.not.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 5
  br i1 %.not.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.thread.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8658
  call void @llvm.experimental.noalias.scope.decl(metadata !8663)
  %.val.i14.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8663, !noalias !8658, !nonnull !175, !align !182, !noundef !175
  %.val1.i15.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8663, !noalias !8658, !nonnull !175, !align !179, !noundef !175
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i15.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !175, !noalias !8664, !nonnull !175
  invoke void %i.t(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 %.val.i14.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha146465e9cd072f3E.exit.i.i.i.i" unwind label %bb.i, !noalias !8665, !inline_history !8628

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.thread.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i", %.noexc.i.i.i.i, %.noexc.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8658
  call void @llvm.experimental.noalias.scope.decl(metadata !8666)
  %.val.i17.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8666, !noalias !8658 ; 5 uses
  %.val1.i18.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8666, !noalias !8658, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  %i.u = load ptr, ptr %.val1.i18.i.i.i.i, align 8, !invariant.load !175, !noalias !8667 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.thread.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i17.i.i.i.i)
          to label %bb.g unwind label %bb.h, !noalias !8667

bb.g:                                             ; preds = %bb.f, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.thread.i.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !174, !invariant.load !175, !noalias !8667 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !208, !invariant.load !175, !noalias !8667 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he7e54ded9ce4f6acE.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #77, !noalias !8667
  br label %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he7e54ded9ce4f6acE.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !174, !invariant.load !175, !noalias !8667 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !208, !invariant.load !175, !noalias !8667 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #77, !noalias !8667
  br label %common.resume.sink.split.i.i.i.i

common.resume.sink.split.i.i.i.i:                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i", %bb.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.h
  %common.resume.op.ph.i.i.i.i = phi { ptr, i32 } [ %i.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i" ], [ %i.ab, %bb.h ], [ %.pn.ph.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i" ], [ %.pn.ph.i.i.i.i, %bb.ab ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8658
  br label %common.resume.i.i.i.i

common.resume.i.i.i.i:                            ; preds = %.body.i.i.i.i, %common.resume.sink.split.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %common.resume.op.ph.i.i.i.i, %common.resume.sink.split.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he7e54ded9ce4f6acE.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8658
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h0d1ec6d2c938b701E.exit

bb.i:                                             ; preds = %bb.k, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #79
          to label %bb.z unwind label %bb.y, !noalias !8658

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha146465e9cd072f3E.exit.i.i.i.i": ; preds = %bb.e
  %i.aj = load i64, ptr %i.g, align 8, !noalias !8658, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8658
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 4) ; 3 uses
  %i.al = mul i64 %.sroa.0.0.i.i.i.i.i, 56        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.ak, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha146465e9cd072f3E.exit.i.i.i.i"
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !8668
  %i.an = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8) #77, !noalias !8668 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha146465e9cd072f3E.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha146465e9cd072f3E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc14.i.i.i.i unwind label %bb.i, !noalias !8658

.noexc14.i.i.i.i:                                 ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.an, %bb.j ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !8658
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.i, align 8, !noalias !8658
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !8658
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !8658
  call void @llvm.experimental.noalias.scope.decl(metadata !8669)
  call void @llvm.experimental.noalias.scope.decl(metadata !8670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8671
  br label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i", %bb.l
  %.sroa.5.0.copyload3 = phi ptr [ %i.bo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.0.copyload5 = phi i64 [ %i.bq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i" ], [ 1, %bb.l ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8672)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8673
  %.val.i20.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8672, !noalias !8674, !nonnull !175, !align !182, !noundef !175
  %.val1.i21.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8672, !noalias !8674, !nonnull !175, !align !179, !noundef !175
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i21.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !175, !noalias !8675, !nonnull !175
  invoke void %i.ar(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i20.i.i.i.i)
          to label %.noexc24.i.i.i.i unwind label %bb.q, !noalias !8673, !inline_history !8621

.noexc24.i.i.i.i:                                 ; preds = %bb.m
  %i.as = load i64, ptr %i.b, align 8, !range !190, !noalias !8673, !noundef !175
  %.not.i22.i.i.i.i = icmp eq i64 %i.as, 2
  br i1 %.not.i22.i.i.i.i, label %.noexc.i.i.thread.i.i.i.i, label %bb.n

.noexc.i.i.thread.i.i.i.i:                        ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8673
  br label %.loopexit.i.i.i.i.i.i

bb.n:                                             ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !8673
  %i.at = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hd07747ca003cdc51E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8673
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hac1cac1bf2ecec80E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull align 1 %i.at)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i.i.i" unwind label %bb.q, !noalias !8676, !inline_history !8622

bb.p:                                             ; preds = %bb.w, %bb.q
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.au, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he7e54ded9ce4f6acE"(ptr nonnull align 1 %i.k, ptr nonnull readonly align 8 dereferenceable(56) @93) #79
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !8677

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i.i.i": ; preds = %bb.o
  %.pr.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !8676
  %.not.i.i15.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i, 5
  br i1 %.not.i.i15.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i.i.i"
  %i.av = icmp samesign ult i64 %.sroa.6.0.copyload5, 164703072086692426
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.i, align 8, !range !174, !alias.scope !8678, !noalias !8658, !noundef !175
  %i.ax = icmp eq i64 %.sroa.6.0.copyload5, %i.aw
  br i1 %i.ax, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i, %.noexc.i.i.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8679)
  %.val.i27.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8679, !noalias !8676 ; 5 uses
  %.val1.i28.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8679, !noalias !8676, !nonnull !175, !align !179, !noundef !175 ; 5 uses
  %i.ay = load ptr, ptr %.val1.i28.i.i.i.i, align 8, !invariant.load !175, !noalias !8680 ; 2 uses
  %.not.i.i29.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i29.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !8681
  invoke void %i.ay(ptr noundef nonnull %.val.i27.i.i.i.i)
          to label %bb.t unwind label %bb.u, !noalias !8680

bb.t:                                             ; preds = %bb.s, %.loopexit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !174, !invariant.load !175, !noalias !8680 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !208, !invariant.load !175, !noalias !8680 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd), !noalias !8681
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i": ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !8681
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #77, !noalias !8680
  br label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i"

bb.u:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !174, !invariant.load !175, !noalias !8680 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !208, !invariant.load !175, !noalias !8680 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk), !noalias !8681
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i": ; preds = %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #77, !noalias !8680
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i", %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8676
  br label %.body.i.i.i.i

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8676
  call void @llvm.experimental.noalias.scope.decl(metadata !8682)
  %.val.i35.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8682, !noalias !8676, !nonnull !175, !align !182, !noundef !175
  %.val1.i36.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8682, !noalias !8676, !nonnull !175, !align !179, !noundef !175
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i36.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !175, !noalias !8683, !nonnull !175
  invoke void %i.bn(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %.val.i35.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i.i.i.i.i" unwind label %bb.w, !noalias !8684, !inline_history !8628

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i", %bb.r
  %i.bo = phi ptr [ %.pre.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i" ], [ %.sroa.5.0.copyload3, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %.sroa.6.0.copyload5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !8676
  %i.bq = add nuw nsw i64 %.sroa.6.0.copyload5, 1 ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8678, !noalias !8658
  br label %bb.m

bb.w:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i.i.i.i.i", %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #79
          to label %bb.p unwind label %bb.x, !noalias !8676

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i.i.i.i.i": ; preds = %bb.v
  %i.bs = load i64, ptr %i.e, align 8, !noalias !8676, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8676
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.6.0.copyload5, i64 noundef %i.bt, i64 noundef 8, i64 noundef 56)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.w, !noalias !8685

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8678, !noalias !8658
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w, %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !8676
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i" ], [ %.pn.i.i.i.i.i.i, %bb.p ]
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h066d47c01294d70eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #79
          to label %common.resume.i.i.i.i unwind label %bb.y, !noalias !8658

"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i", %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !8676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8671
  %.sroa.0.0.copyload1 = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8658
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h0d1ec6d2c938b701E.exit

bb.y:                                             ; preds = %.body.i.i.i.i, %bb.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body42.i.i.i.i
end_hunk_2
begin_hunk_3_@"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E":bb.a
  br i1 %.not, label %.lr.ph.i.i.i.i, label %.thread

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i", %bb.ek
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.nu, %bb.ek ], [ %.sroa.012.0.lcssa.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.nv, %bb.ek ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i" ]
  %i.nu = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !32686, !noundef !175 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i.i.i, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nv = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 1064
  %i.nx = load i16, ptr %i.nw, align 8, !noalias !32686 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 1066
  %i.nz = load i16, ptr %i.ny, align 2, !noalias !32685, !noundef !175
  %i.oa = icmp ult i16 %i.nx, %i.nz
  br i1 %i.oa, label %bb.el, label %.lr.ph.i.i.i.i

bb.el:                                            ; preds = %bb.ek
  %i.ob = icmp eq i64 %i.nv, 0
  br i1 %i.ob, label %.thread, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.el
  %i.oc = icmp ult i16 %i.nx, 11
  call void @llvm.assume(i1 %i.oc)
  br label %.thread

bb.em:                                            ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i unwind label %bb.en, !noalias !32687

.noexc.i.i:                                       ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %bb.em
  %i.od = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit": ; preds = %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge", %bb.eo, %bb.ei
  %.sroa.4179.0.copyload = phi i64 [ %.sroa.4179.0.copyload.pre, %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge" ], [ %.sroa.4179.0.copyload.pre982, %bb.eo ], [ %.sroa.4179.0.copyload.pre982, %bb.ei ]
  %.sroa.9149.0 = phi i64 [ undef, %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge" ], [ %.sroa.9149.0.copyload, %bb.eo ], [ undef, %bb.ei ]
  %.sroa.8146.0 = phi ptr [ undef, %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge" ], [ %.sroa.8146.0.copyload, %bb.eo ], [ undef, %bb.ei ] ; 3 uses
  %.sroa.0144.0 = phi i64 [ -9223372036854775808, %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge" ], [ %.sroa.0144.0.copyload, %bb.eo ], [ -9223372036854775808, %bb.ei ] ; 3 uses
  %.not.i = icmp ne ptr %.sroa.0178.0.copyload.pre, null ; 3 uses
  %.sroa.10.0 = select i1 %.not.i, i64 %.sroa.4179.0.copyload, i64 undef ; 2 uses
  %.sink23.i = zext i1 %.not.i to i64             ; 2 uses
  %.sroa.7.0.copyload.sink.i = select i1 %.not.i, i64 %i.nc, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !32688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !32689
  store i64 %.sink23.i, ptr %i.aa, align 8, !alias.scope !32690, !noalias !32691
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %.sroa.4170.0..sroa_idx, align 8, !alias.scope !32690, !noalias !32691
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.0178.0.copyload.pre, ptr %.sroa.5171.0..sroa_idx, align 8, !alias.scope !32690, !noalias !32691
  %.sroa.6172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.6172.0..sroa_idx, align 8, !alias.scope !32690, !noalias !32691
  %.sroa.7173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.sink23.i, ptr %.sroa.7173.0..sroa_idx, align 8, !alias.scope !32690, !noalias !32691
  %.sroa.8174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr null, ptr %.sroa.8174.0..sroa_idx, align 8, !alias.scope !32690, !noalias !32691
  %.sroa.9175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %.sroa.0178.0.copyload.pre, ptr %.sroa.9175.0..sroa_idx, align 8, !alias.scope !32690, !noalias !32691
  %.sroa.10176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 %.sroa.10.0, ptr %.sroa.10176.0..sroa_idx, align 8, !alias.scope !32690, !noalias !32691
  %.sroa.11177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i, ptr %.sroa.11177.0..sroa_idx, align 8, !alias.scope !32690, !noalias !32691
  call void @llvm.experimental.noalias.scope.decl(metadata !32692)
  call void @llvm.experimental.noalias.scope.decl(metadata !32693)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !32694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !32695
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hb4e19d4914156dddE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ep, !noalias !32696

.thread:                                          ; preds = %.thread.loopexit, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i", %bb.el
  %.sroa.0.0.ph.i.i.i255 = phi ptr [ %i.nu, %bb.el ], [ %.sroa.012.0.lcssa.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i" ], [ %i.nu, %.thread.loopexit ]
  %.sroa.6.sroa.4.0.ph.i.i.i254.shrunk = phi i16 [ %i.nx, %bb.el ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i" ], [ %i.nx, %.thread.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i254 = zext nneg i16 %.sroa.6.sroa.4.0.ph.i.i.i254.shrunk to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i255, i64 8
  %i.of = icmp ult i16 %.sroa.6.sroa.4.0.ph.i.i.i254.shrunk, 11
  call void @llvm.assume(i1 %i.of)
  %i.og = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %.sroa.6.sroa.4.0.ph.i.i.i254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.og, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104)
          to label %bb.eo unwind label %bb.kj

bb.eo:                                            ; preds = %.thread
  %.sroa.0144.0.copyload = load i64, ptr %i.bs, align 8
  %.sroa.8146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.8146.0.copyload = load ptr, ptr %.sroa.8146.0..sroa_idx, align 8
  %.sroa.9149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.9149.0.copyload = load i64, ptr %.sroa.9149.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit"

.thread283:                                       ; preds = %.noexc19.i.i.i.i.invoke, %.thread.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread275

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit"
  %i.oh = load ptr, ptr %i.x, align 8, !noalias !32695, !noundef !175 ; 3 uses
  %.not.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i.i.i.i.i.i81, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.thread.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !32695
  br label %.thread.i

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !32695 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.08.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.oj, align 8, !noalias !32695 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !32695
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i, label %bb.ev

bb.ep:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit"
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i"

.thread.i:                                        ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !32694
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17hff6728643429feb9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.noexc96 unwind label %.thread283, !noalias !32697

.noexc96:                                         ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !32689
  br label %bb.gu

bb.eq:                                            ; preds = %bb.ex
  %i.ol = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.om = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.om, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i", label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.8.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.8.copyload.i.i.i.i.i, i64 noundef %.sroa.08.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !32698
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i": ; preds = %bb.er, %bb.eq
  %i.on = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i, 0
  br i1 %i.on, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i", label %bb.es

bb.es:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i, i64 noundef %.sroa.04.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !32699
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i": ; preds = %bb.es, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"
  switch i64 %.sroa.6.24.copyload.i.i.i.i.i, label %bb.et [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i"
  ]

bb.et:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.24.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.24.copyload.i.i.i.i.i, i64 noundef %.sroa.6.24.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !32700
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i": ; preds = %bb.et, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"
  switch i64 %.sroa.107.48.copyload.i.i.i.i.i, label %bb.eu [
    i64 -9223372036854775808, label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i"
  ]

bb.eu:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.128.48.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.128.48.copyload.i.i.i.i.i, i64 noundef %.sroa.107.48.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !32701
  br label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i"

bb.ev:                                            ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i"
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 272
  %i.op = getelementptr inbounds nuw [72 x i8], ptr %i.oo, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 9 uses
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %.sroa.04.0.copyload.i.i.i.i.i = load i64, ptr %i.op, align 8, !noalias !32694 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32694 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %.sroa.6.24.copyload.i.i.i.i.i = load i64, ptr %i.oq, align 8, !noalias !32694 ; 2 uses
  %i.or = load <2 x i64>, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.8.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %.sroa.8.24.copyload.i.i.i.i.i = load ptr, ptr %.sroa.8.24..sroa_idx.i.i.i.i.i, align 8, !noalias !32694 ; 3 uses
  %.sroa.96.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 48
  %.sroa.107.48.copyload.i.i.i.i.i = load i64, ptr %i.os, align 8, !noalias !32694 ; 2 uses
  %i.ot = load <2 x i64>, ptr %.sroa.96.24..sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.128.48..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 56
  %.sroa.128.48.copyload.i.i.i.i.i = load ptr, ptr %.sroa.128.48..sroa_idx.i.i.i.i.i, align 8, !noalias !32694 ; 3 uses
  %.sroa.139.48..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 64
  %.sroa.139.48.copyload.i.i.i.i.i = load i64, ptr %.sroa.139.48..sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.5.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !32694 ; 3 uses
  %.sroa.7.8..sroa.49.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %.sroa.7.8.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.8..sroa.49.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.11177.0..sroa_idx, align 8, !alias.scope !32702, !noalias !32689, !noundef !175
  %i.ou = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i82 = call noundef i64 @llvm.umax.i64(i64 %i.ou, i64 4) ; 3 uses
  %i.ov = mul i64 %.sroa.0.0.i.i.i.i.i.i.i82, 96  ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ou, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ex, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ev
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !32703
  %i.ox = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ov, i64 noundef range(i64 1, 9) 8) #77, !noalias !32703 ; 2 uses
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.ew ], [ 0, %bb.ev ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.ov, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc5.i.i.i.i.i.i unwind label %bb.eq, !noalias !32694

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.ex
  unreachable

bb.ey:                                            ; preds = %bb.ew, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ox, %bb.ew ] ; 12 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i82, %bb.ew ] ; 2 uses
  %i.oz = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i82, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.oz)
  store i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.5.8.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.7.8.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 24
  store i64 %.sroa.04.0.copyload.i.i.i.i.i, ptr %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 32
  store ptr %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.10.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 40
  store <2 x i64> %i.or, ptr %.sroa.10.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.11.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 56
  store ptr %.sroa.8.24.copyload.i.i.i.i.i, ptr %.sroa.11.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.12.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 64
  store <2 x i64> %i.ot, ptr %.sroa.12.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.13.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 80
  store ptr %.sroa.128.48.copyload.i.i.i.i.i, ptr %.sroa.13.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.14.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 88
  store i64 %.sroa.139.48.copyload.i.i.i.i.i, ptr %.sroa.14.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !32694
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.z, align 8, !noalias !32694
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !32694
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !32694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !32694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false), !noalias !32697
  call void @llvm.experimental.noalias.scope.decl(metadata !32704)
  call void @llvm.experimental.noalias.scope.decl(metadata !32705)
  call void @llvm.experimental.noalias.scope.decl(metadata !32706)
  call void @llvm.experimental.noalias.scope.decl(metadata !32707)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.pa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.pb = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.pc = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  br label %bb.ez

bb.ez:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i.i.i.i.i.i.i", %bb.ey
  %i.pd = phi ptr [ %i.pq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.ey ]
  %i.pe = phi i64 [ %i.ps, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.ey ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !32708
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hb4e19d4914156dddE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.fb, !noalias !32709

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ez
  %i.pf = load ptr, ptr %i.v, align 8, !noalias !32708, !noundef !175 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i83 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i83, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.thread.i.i.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.thread.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !32708
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc27a416f481f631aE.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32708 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = getelementptr inbounds nuw [24 x i8], ptr %i.pg, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ph, align 8, !noalias !32708 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !32708
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc27a416f481f631aE.exit.i.i.i.i.i.i.i", label %bb.fc

bb.fa:                                            ; preds = %bb.fd, %bb.fb
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.pt, %bb.fd ], [ %i.pi, %bb.fb ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17hff6728643429feb9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %.body.i.i.i.i.i.i unwind label %bb.ff, !noalias !32710

bb.fb:                                            ; preds = %bb.ez
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.fc:                                            ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i.i.i"
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 272
  %i.pk = getelementptr inbounds nuw [72 x i8], ptr %i.pj, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.pk, i64 24, i1 false), !noalias !32711
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pa, ptr noundef nonnull align 8 dereferenceable(24) %i.pl, i64 24, i1 false), !noalias !32711
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pb, ptr noundef nonnull align 8 dereferenceable(24) %i.pm, i64 24, i1 false), !noalias !32711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !32712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !32712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !32712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.w, align 8, !noalias !32712
  %i.pn = icmp samesign ult i64 %i.pe, 96076792050570582
  call void @llvm.assume(i1 %i.pn)
  %i.po = load i64, ptr %i.z, align 8, !range !174, !alias.scope !32713, !noalias !32694, !noundef !175
  %i.pp = icmp eq i64 %i.pe, %i.po
  br i1 %i.pp, label %bb.fe, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.fc
  %i.pq = phi ptr [ %.pre.i.i.i.i.i.i84, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.pd, %bb.fc ] ; 2 uses
  %i.pr = getelementptr inbounds nuw [96 x i8], ptr %i.pq, i64 %i.pe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.pr, ptr noundef nonnull align 8 dereferenceable(96) %i.w, i64 96, i1 false), !noalias !32712
  %i.ps = add nuw nsw i64 %i.pe, 1                ; 2 uses
  store i64 %i.ps, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !32713, !noalias !32694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !32712
  br label %bb.ez

bb.fd:                                            ; preds = %bb.fe
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E"(ptr noalias noundef align 8 dereferenceable(96) %i.w) #79, !noalias !32712
  br label %bb.fa

bb.fe:                                            ; preds = %bb.fc
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.pc, align 8, !alias.scope !32714, !noalias !32694, !noundef !175
  %i.pu = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.pe, i64 noundef range(i64 1, 0) %i.pu, i64 noundef 8, i64 noundef 96)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.fd, !noalias !32715

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.fe
  %.pre.i.i.i.i.i.i84 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !32713, !noalias !32694
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha57d84568fba6ebfE.exit.i.i.i.i.i.i.i.i"

bb.ff:                                            ; preds = %bb.fa
  %i.pv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !32712
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc27a416f481f631aE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.thread.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17hff6728643429feb9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17hb62014c363851bbfE.exit.i.i unwind label %bb.fg, !noalias !32710

bb.fg:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc27a416f481f631aE.exit.i.i.i.i.i.i.i"
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.fg, %bb.fa
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.pw, %bb.fg ], [ %.pn.i.i.i.i.i.i.i.i, %bb.fa ]
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$$GT$17h57017a8e14cc74d7E"(ptr noalias noundef align 8 dereferenceable(24) %i.z) #79, !noalias !32694
  br label %.thread275

bb.fh:                                            ; preds = %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i"
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !32694
  unreachable

"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i": ; preds = %bb.eu, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i", %bb.ep
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ok, %bb.ep ], [ %i.ol, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i" ], [ %i.ol, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i" ], [ %i.ol, %bb.eu ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17hff6728643429feb9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.thread275 unwind label %bb.fh, !noalias !32697

_ZN4core4iter6traits8iterator8Iterator7collect17hb62014c363851bbfE.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hc27a416f481f631aE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !32694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !32716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !32694
  %.phi.trans.insert.i.i85 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.pre.i.i86 = load i64, ptr %.phi.trans.insert.i.i85, align 8, !noalias !32688 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !32689
  %i.py = icmp ult i64 %.pre.i.i86, 96076792050570582
  call void @llvm.assume(i1 %i.py)
  %i.pz = icmp eq i64 %.pre.i.i86, 0
  br i1 %i.pz, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hb62014c363851bbfE.exit.i.i
  %.val2.i.i.pre.i = load i64, ptr %i.ab, align 8, !range !174, !alias.scope !32717, !noalias !32688 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32717)
  %i.qa = icmp eq i64 %.val2.i.i.pre.i, 0
  br i1 %i.qa, label %bb.gu, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val.i.i.i = load ptr, ptr %i.qb, align 8, !alias.scope !32717, !noalias !32688, !nonnull !175, !noundef !175
  %i.qc = mul nuw i64 %.val2.i.i.pre.i, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.qc, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !32718
  br label %bb.gu
end_hunk_3
begin_hunk_4_@"_ZN115_$LT$index_scheduler..upgrade..v1_37..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17h72b9cc5dd6638de6E":bb.a
  store ptr %.sroa.7.211.i.i.i, ptr %i.ca, align 8, !noalias !34494
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !34495
  %i.pf = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !34495 ; 3 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %bb.fa, label %bb.fd, !prof !184

bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #78
          to label %.noexc.i.i.i unwind label %bb.fb, !noalias !34495

.noexc.i.i.i:                                     ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.fa
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ca) #79
          to label %common.resume unwind label %bb.fc, !noalias !34495

bb.fc:                                            ; preds = %bb.fb
  %i.pi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !34495
  unreachable

bb.fd:                                            ; preds = %bb.ez
  store ptr %.sroa.7.211.i.i.i, ptr %i.pf, align 8, !noalias !34495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !34344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.6.i.i)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 3, ptr %i.pj, align 8, !alias.scope !34338, !noalias !34337
  %i.pk = ptrtoint ptr %i.pf to i64
  br label %bb.fg

bb.fe:                                            ; preds = %bb.j
  %i.pl = extractvalue { i32, i32 } %i.dv, 1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.pm, i32 noundef %i.dw, i32 %i.pl), !noalias !34496
  %.sroa.6.i.sroa.7.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.6.i.sroa.7.0.copyload292.pre = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx.phi.trans.insert, align 8, !noalias !34337
  %.sroa.6.i.sroa.10.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.6.i.sroa.10.0.copyload293.pre = load i64, ptr %.sroa.6.i.sroa.10.0..sroa_idx.phi.trans.insert, align 8, !noalias !34337
  br label %bb.fg

common.resume:                                    ; preds = %bb.nk, %bb.nk, %.body193, %bb.nl, %.body.i.i.i.i, %bb.ep, %bb.fb
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.ep ], [ %i.ph, %bb.fb ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.pn.ph, %bb.nl ], [ %eh.lpad-body194, %.body193 ], [ %.pn.pn.ph, %bb.nk ], [ %.pn.pn.ph, %bb.nk ]
  resume { ptr, i32 } %common.resume.op

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.i": ; preds = %_ZN10serde_json2de10from_trait17h96f6e84746716127E.exit.i.i.i
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.525.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.i.sroa.6.i.i, i64 56, i1 false), !noalias !34496
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.6.i.i)
  %i.pn = ptrtoint ptr %.sroa.7.2.i.i.i to i64
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.pn, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !alias.scope !34338, !noalias !34337
  %i.po = ptrtoint ptr %.sroa.10.i.sroa.0.2.i.i to i64
  %i.pp = ptrtoint ptr %.sroa.10.i.sroa.5.2.i.i to i64
  br label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i"

bb.ff:                                            ; preds = %bb.f
  call void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17hc98baf41816c301eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce), !noalias !34332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !34332
  br label %bb.fi

bb.fg:                                            ; preds = %bb.fe, %bb.fd
  %.sroa.6.i.sroa.10.0.copyload293 = phi i64 [ %.sroa.6.i.sroa.10.0.copyload293.pre, %bb.fe ], [ ptrtoint (ptr @4882 to i64), %bb.fd ] ; 2 uses
  %.sroa.6.i.sroa.7.0.copyload292 = phi i64 [ %.sroa.6.i.sroa.7.0.copyload292.pre, %bb.fe ], [ %i.pk, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !34340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !34340
  %i.pq = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.6.i.sroa.0.0.copyload291 = load i64, ptr %i.pq, align 8, !noalias !34337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !34337
  %.sroa.6.i.sroa.10.16.extract.trunc = trunc i64 %.sroa.6.i.sroa.10.0.copyload293 to i32
  %.sroa.6.i.sroa.10.20.extract.shift = lshr i64 %.sroa.6.i.sroa.10.0.copyload293, 32
  br label %bb.fh

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i": ; preds = %"._ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i_crit_edge", %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.i"
  %.sroa.6.i.sroa.10.0.copyload = phi i64 [ %i.pp, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.i" ], [ %.sroa.6.i.sroa.10.0.copyload.pre, %"._ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i_crit_edge" ]
  %.sroa.6.i.sroa.7.0.copyload = phi i64 [ %i.po, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.i" ], [ %.sroa.6.i.sroa.7.0.copyload.pre, %"._ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i_crit_edge" ]
  %.sroa.6.i.sroa.0.0.copyload = phi ptr [ %.sroa.7.2.i.i.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.i" ], [ %i.dx, %"._ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i_crit_edge" ]
  %i.pr = phi i64 [ %.sroa.0.2.i.i.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.i" ], [ -9223372036854775807, %"._ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i_crit_edge" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !34340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !34340
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %.sroa.20.sroa.6.8.copyload = load ptr, ptr %.sroa.651.0..sroa_idx.i, align 8, !noalias !34497
  %.sroa.20.sroa.8.8..sroa.651.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %.sroa.20.sroa.8.8.copyload = load i64, ptr %.sroa.20.sroa.8.8..sroa.651.0..sroa_idx.i.sroa_idx, align 8, !noalias !34497
  %.sroa.20.sroa.9.8..sroa.651.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.sroa.9.8..sroa.651.0..sroa_idx.i.sroa_idx, i64 24, i1 false), !noalias !34497
  %.sroa.20.sroa.11.8..sroa.651.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.11.8..sroa.651.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !34497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !34337
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fg, %bb.g
  %.sroa.19.0 = phi i64 [ %.sroa.6.i.sroa.10.20.extract.shift, %bb.fg ], [ %i.di, %bb.g ]
  %.sroa.18.0 = phi i32 [ %.sroa.6.i.sroa.10.16.extract.trunc, %bb.fg ], [ %.sroa.14.8.copyload.i, %bb.g ]
  %.sroa.14.0 = phi i64 [ %.sroa.6.i.sroa.7.0.copyload292, %bb.fg ], [ %.sroa.11.8.copyload.i, %bb.g ]
  %.sroa.8206.0 = phi i64 [ %.sroa.6.i.sroa.0.0.copyload291, %bb.fg ], [ %.sroa.758.8.copyload.i, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.sroa.9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.11, i64 16, i1 false)
  %.sroa.520.sroa.4.8.insert.ext = zext i32 %.sroa.18.0 to i64
  %.sroa.520.sroa.4.12.insert.shift = shl nuw i64 %.sroa.19.0, 32
  %.sroa.520.sroa.4.12.insert.insert = or disjoint i64 %.sroa.520.sroa.4.12.insert.shift, %.sroa.520.sroa.4.8.insert.ext
  %i.ps = inttoptr i64 %.sroa.14.0 to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.11)
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.9, i64 24, i1 false)
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.10, i64 16, i1 false)
  store i64 127, ptr %i.ci, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %.sroa.8206.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.ps, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 %.sroa.520.sroa.4.12.insert.insert, ptr %.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.pt = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.ne

bb.fi:                                            ; preds = %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i", %bb.ff
  %.sroa.20.sroa.8.0.ph = phi i64 [ undef, %bb.ff ], [ %.sroa.20.sroa.8.8.copyload, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i" ]
  %.sroa.20.sroa.6.0.ph = phi ptr [ undef, %bb.ff ], [ %.sroa.20.sroa.6.8.copyload, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i" ] ; 3 uses
  %.sroa.20.sroa.0.0.ph = phi i64 [ undef, %bb.ff ], [ %.sroa.6.i.sroa.10.0.copyload, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i" ] ; 3 uses
  %.sroa.14.0.ph = phi ptr [ undef, %bb.ff ], [ %.sroa.6.i.sroa.0.0.copyload, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i" ] ; 3 uses
  %.sroa.8206.0.ph = phi i64 [ -9223372036854775807, %bb.ff ], [ %i.pr, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i" ] ; 4 uses
  %.sroa.516.sroa.5.12.insert.insert = phi i64 [ 0, %bb.ff ], [ %.sroa.6.i.sroa.7.0.copyload, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h11fc2b5eda208a69E.exit.thread76.i" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.sroa.9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.11)
  %.not67 = icmp eq i64 %.sroa.8206.0.ph, -9223372036854775807
  br i1 %.not67, label %bb.ne, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.10, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %i.pu = load ptr, ptr %i.cm, align 8, !noundef !175 ; 6 uses
  %.not68 = icmp ne ptr %i.pu, null               ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8            ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.py = load i64, ptr %i.px, align 8            ; 4 uses
  %.sroa.029.sroa.0.0 = zext i1 %.not68 to i64    ; 2 uses
  %.sroa.029.sroa.5.sroa.6.0 = select i1 %.not68, i64 %i.pw, i64 undef ; 2 uses
  %.sroa.530.0 = select i1 %.not68, i64 %i.py, i64 0
  call void @llvm.experimental.noalias.scope.decl(metadata !34498)
  call void @llvm.experimental.noalias.scope.decl(metadata !34499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !34500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !34501
  store i64 %.sroa.029.sroa.0.0, ptr %i.am, align 8, !alias.scope !34502, !noalias !34503
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr null, ptr %.sroa.4226.0..sroa_idx, align 8, !alias.scope !34502, !noalias !34503
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.pu, ptr %.sroa.5227.0..sroa_idx, align 8, !alias.scope !34502, !noalias !34503
  %.sroa.6228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.029.sroa.5.sroa.6.0, ptr %.sroa.6228.0..sroa_idx, align 8, !alias.scope !34502, !noalias !34503
  %.sroa.7229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %.sroa.029.sroa.0.0, ptr %.sroa.7229.0..sroa_idx, align 8, !alias.scope !34502, !noalias !34503
  %.sroa.8230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr null, ptr %.sroa.8230.0..sroa_idx, align 8, !alias.scope !34502, !noalias !34503
  %.sroa.9231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr %i.pu, ptr %.sroa.9231.0..sroa_idx, align 8, !alias.scope !34502, !noalias !34503
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store i64 %.sroa.029.sroa.5.sroa.6.0, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !34502, !noalias !34503
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  store i64 %.sroa.530.0, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !34502, !noalias !34503
  call void @llvm.experimental.noalias.scope.decl(metadata !34504)
  call void @llvm.experimental.noalias.scope.decl(metadata !34505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !34506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !34507
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1d27d83684bc002E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.am)
          to label %.noexc unwind label %bb.ht, !noalias !34508

.noexc:                                           ; preds = %bb.fj
  %i.pz = load i64, ptr %i.ak, align 8, !range !201, !noalias !34507, !noundef !175
  %.not.i.i.i.i.i.i72 = icmp eq i64 %i.pz, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i72, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.thread.i", label %bb.fl

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.thread.i": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !34507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !34506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !34501
  store ptr null, ptr %i.ck, align 8, !alias.scope !34509
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 0, ptr %i.qa, align 8, !alias.scope !34509
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4e7f07a123ec1d7E.exit"

bb.fk:                                            ; preds = %bb.fn
  %i.qb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Shard$RP$$GT$17h44233a277a3c5917E"(ptr noalias noundef align 8 dereferenceable(48) %i.ak) #79
          to label %bb.nh unwind label %bb.ft, !noalias !34507

bb.fl:                                            ; preds = %.noexc
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !34510, !noalias !34501, !noundef !175
  %i.qc = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i73 = call noundef i64 @llvm.umax.i64(i64 %i.qc, i64 4) ; 3 uses
  %i.qd = mul i64 %.sroa.0.0.i.i.i.i.i.i.i73, 48  ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.qc, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.fn, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.fl
  %i.qe = icmp eq i64 %i.qd, 0
  br i1 %i.qe, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !34511
  %i.qf = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.qd, i64 noundef range(i64 1, 9) 8) #77, !noalias !34511 ; 2 uses
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.fm ], [ 0, %bb.fl ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.qd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc.i.i.i.i.i.i unwind label %bb.fk, !noalias !34507

.noexc.i.i.i.i.i.i:                               ; preds = %bb.fn
  unreachable

bb.fo:                                            ; preds = %bb.fm, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.qf, %bb.fm ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i73, %bb.fm ] ; 2 uses
  %i.qh = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i73, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.qh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !noalias !34507
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.al, align 8, !noalias !34507
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !34507
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !34507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !34507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.am, i64 72, i1 false), !noalias !34508
  call void @llvm.experimental.noalias.scope.decl(metadata !34512)
  call void @llvm.experimental.noalias.scope.decl(metadata !34513)
  call void @llvm.experimental.noalias.scope.decl(metadata !34514)
  call void @llvm.experimental.noalias.scope.decl(metadata !34515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !34516
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1d27d83684bc002E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj)
          to label %.noexc5.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34517

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.fo
  %i.qi = load i64, ptr %i.ai, align 8, !range !201, !noalias !34518, !noundef !175
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %i.qi, -9223372036854775808
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hc2363e9bfc437ce2E.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc5.i.i.i.i.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  br label %bb.fp

bb.fp:                                            ; preds = %.noexc6.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.qk = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.qp, %.noexc6.i.i.i.i.i.i ]
  %i.ql = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.qr, %.noexc6.i.i.i.i.i.i ] ; 5 uses
  %i.qm = icmp samesign ult i64 %i.ql, 192153584101141163
  call void @llvm.assume(i1 %i.qm)
  %i.qn = load i64, ptr %i.al, align 8, !range !174, !alias.scope !34519, !noalias !34507, !noundef !175
  %i.qo = icmp eq i64 %i.ql, %i.qn
  br i1 %i.qo, label %bb.fr, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdad05224f099c17eE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdad05224f099c17eE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdad05224f099c17eE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.fp
  %i.qp = phi ptr [ %.pre.i.i.i.i.i.i85, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdad05224f099c17eE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.qk, %bb.fp ] ; 2 uses
  %i.qq = getelementptr inbounds nuw [48 x i8], ptr %i.qp, i64 %i.ql
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qq, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false), !noalias !34518
  %i.qr = add nuw nsw i64 %i.ql, 1                ; 2 uses
  store i64 %i.qr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !34519, !noalias !34507
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb1d27d83684bc002E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj)
          to label %.noexc6.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34517

.noexc6.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdad05224f099c17eE.exit.i.i.i.i.i.i.i.i"
  %i.qs = load i64, ptr %i.ai, align 8, !range !201, !noalias !34518, !noundef !175
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.qs, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hc2363e9bfc437ce2E.exit.i.i, label %bb.fp

bb.fq:                                            ; preds = %bb.fr
  %i.qt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Shard$RP$$GT$17h44233a277a3c5917E"(ptr noalias noundef align 8 dereferenceable(48) %i.ai) #79
          to label %.body.i.i.i.i.i.i unwind label %bb.fs, !noalias !34518

bb.fr:                                            ; preds = %bb.fp
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.qj, align 8, !alias.scope !34520, !noalias !34507, !noundef !175
  %i.qu = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %i.ql, i64 noundef range(i64 1, 0) %i.qu, i64 noundef 8, i64 noundef 48)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdad05224f099c17eE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.fq, !noalias !34521

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdad05224f099c17eE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.fr
  %.pre.i.i.i.i.i.i85 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !34519, !noalias !34507
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdad05224f099c17eE.exit.i.i.i.i.i.i.i.i"

bb.fs:                                            ; preds = %bb.fq
  %i.qv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !34518
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hdad05224f099c17eE.exit.i.i.i.i.i.i.i.i", %bb.fo
  %lpad.loopexit.split-lp3207 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fq
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.qt, %bb.fq ], [ %lpad.loopexit.split-lp3207, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Shard$RP$$GT$$GT$17h53ada1e39f212a15E"(ptr noalias noundef align 8 dereferenceable(24) %i.al) #79
          to label %bb.nh unwind label %bb.ft, !noalias !34507

bb.ft:                                            ; preds = %.body.i.i.i.i.i.i, %bb.fk
  %i.qw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !34507
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hc2363e9bfc437ce2E.exit.i.i: ; preds = %.noexc6.i.i.i.i.i.i, %.noexc5.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !34516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !34507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !34522
  %.phi.trans.insert.i.i74 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.pre.i.i75 = load i64, ptr %.phi.trans.insert.i.i74, align 8, !noalias !34500 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !34507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !34506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !34501
  %i.qx = icmp ult i64 %.pre.i.i75, 192153584101141163
  call void @llvm.assume(i1 %i.qx)
  %i.qy = icmp eq i64 %.pre.i.i75, 0
  br i1 %i.qy, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.i", label %bb.fv

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hc2363e9bfc437ce2E.exit.i.i
  %.val2.i.i.pre.i = load i64, ptr %i.an, align 8, !range !174, !alias.scope !34523, !noalias !34500 ; 2 uses
  store ptr null, ptr %i.ck, align 8, !alias.scope !34509
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 0, ptr %i.qz, align 8, !alias.scope !34509
  call void @llvm.experimental.noalias.scope.decl(metadata !34523)
  %i.ra = icmp eq i64 %.val2.i.i.pre.i, 0
  br i1 %i.ra, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4e7f07a123ec1d7E.exit", label %bb.fu

bb.fu:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.i"
  %i.rb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val.i.i.i = load ptr, ptr %i.rb, align 8, !alias.scope !34523, !noalias !34500, !nonnull !175, !noundef !175
  %i.rc = mul nuw i64 %.val2.i.i.pre.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.rc, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !34524
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4e7f07a123ec1d7E.exit"

bb.fv:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hc2363e9bfc437ce2E.exit.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !noalias !34500, !nonnull !175, !noundef !175 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !34525
  %i.rf = icmp eq i64 %.pre.i.i75, 1
  br i1 %i.rf, label %bb.fz, label %bb.fw, !prof !176

bb.fw:                                            ; preds = %bb.fv
  %i.rg = icmp samesign ult i64 %.pre.i.i75, 21
  br i1 %i.rg, label %bb.fy, label %bb.fx, !prof !176

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h76ebbb663b6ce673E(ptr noalias noundef nonnull align 8 %i.re, i64 noundef range(i64 1, 192153584101141163) %.pre.i.i75, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.fz unwind label %bb.hr, !noalias !34500

bb.fy:                                            ; preds = %bb.fw
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hb4cd16f09b743894E(ptr noalias noundef nonnull align 8 %i.re, i64 noundef range(i64 1, 192153584101141163) %.pre.i.i75)
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !34525
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !noalias !34500
  call void @llvm.experimental.noalias.scope.decl(metadata !34526)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !34527
  %i.rh = call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !34527 ; 5 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %bb.ga, label %.loopexit248.i.i.i.i, !prof !178

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 544) #78
          to label %.noexc.i.i.i84 unwind label %bb.hq, !noalias !34527

.noexc.i.i.i84:                                   ; preds = %bb.ga
  unreachable

.loopexit248.i.i.i.i:                             ; preds = %bb.fz
  store ptr null, ptr %i.rh, align 8, !noalias !34527
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 538
  store i16 0, ptr %i.rj, align 2, !noalias !34527
  %i.rk = getelementptr inbounds nuw [48 x i8], ptr %i.re, i64 %.pre.i.i75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !34527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !34528
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.sroa.4165.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.re, ptr %.sroa.4165.0..sroa_idx.i.i.i, align 8, !noalias !34529
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 4 uses
  store ptr %i.re, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !34529
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !34529
  %.sroa.7.0..sroa_idx166.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 2 uses
  store ptr %i.rk, ptr %.sroa.7.0..sroa_idx166.i.i.i, align 8, !noalias !34529
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.8.sroa.7.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.8.sroa.7.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %bb.gb

bb.gb:                                            ; preds = %.loopexit.i.i.i.i78, %.loopexit248.i.i.i.i
  %.promoted30.i.i.i.i.i = phi ptr [ %i.re, %.loopexit248.i.i.i.i ], [ %.promoted30.i.i.pre.i.i.i, %.loopexit.i.i.i.i78 ]
  %i.rm = phi ptr [ %i.rk, %.loopexit248.i.i.i.i ], [ %.pre.i.i.i, %.loopexit.i.i.i.i78 ] ; 2 uses
end_hunk_4
begin_hunk_5_@"_ZN115_$LT$index_scheduler..upgrade..v1_37..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17h72b9cc5dd6638de6E":bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0177.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.loopexit.i.i.i.i78

bb.hm:                                            ; preds = %bb.hd
  %i.adr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$index_scheduler..upgrade..v1_37..Shard$GT$17h299c62449853fab7E"(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #79
          to label %bb.ho unwind label %bb.hn, !noalias !34528

bb.hn:                                            ; preds = %bb.hm, %.critedge.i.i.i.i
  %i.ads = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !34528
  unreachable

bb.ho:                                            ; preds = %bb.hm
  %i.adt = icmp eq i64 %.sroa.0.0.i.i.i2.i.i, 0
  br i1 %i.adt, label %.critedge.i.i.i.i, label %.critedge.i.i.i.i.sink.split

bb.hp:                                            ; preds = %bb.hq
  %i.adu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !34527
  unreachable

bb.hq:                                            ; preds = %bb.ga
  %i.adv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Shard$RP$$GT$$GT$17h53ada1e39f212a15E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.an) #79
          to label %bb.nh unwind label %bb.hp, !noalias !34500

.loopexit.i.i:                                    ; preds = %bb.gw, %.noexc86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !34527
  store ptr %.sroa.0.0.i.i.i, ptr %i.ck, align 8, !alias.scope !34599
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.sroa.8.0.i.i.i, ptr %i.adw, align 8, !alias.scope !34599
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %.sroa.013.0.i.i.i, ptr %i.adx, align 8, !alias.scope !34599
  %.sroa.0253.0.copyload.pre = load ptr, ptr %i.cm, align 8
  %.sroa.4254.0.copyload.pre = load i64, ptr %i.pv, align 8
  %.sroa.5255.0.copyload.pre = load i64, ptr %i.px, align 8
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4e7f07a123ec1d7E.exit"

bb.hr:                                            ; preds = %bb.fx
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Shard$RP$$GT$$GT$17h53ada1e39f212a15E"(ptr noalias noundef align 8 dereferenceable(24) %i.an) #79
          to label %bb.nh unwind label %bb.hs, !noalias !34500

bb.hs:                                            ; preds = %bb.hr
  %i.ady = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !34500
  unreachable

bb.ht:                                            ; preds = %.noexc20.i.i.i.i.invoke, %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h052843aac782cc51E.exit.i.i.i.i", %bb.fj
  %i.adz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nh

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4e7f07a123ec1d7E.exit": ; preds = %.loopexit.i.i, %bb.fu, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.thread.i"
  %.sroa.5255.0.copyload = phi i64 [ %.sroa.5255.0.copyload.pre, %.loopexit.i.i ], [ %i.py, %bb.fu ], [ %i.py, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.i" ], [ %i.py, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.thread.i" ]
  %.sroa.4254.0.copyload = phi i64 [ %.sroa.4254.0.copyload.pre, %.loopexit.i.i ], [ %i.pw, %bb.fu ], [ %i.pw, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.i" ], [ %i.pw, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.thread.i" ]
  %.sroa.0253.0.copyload = phi ptr [ %.sroa.0253.0.copyload.pre, %.loopexit.i.i ], [ %i.pu, %bb.fu ], [ %i.pu, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.i" ], [ %i.pu, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf5f4f6b92c20e80E.exit.i.i.thread.i" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !34500
  %.not.i = icmp ne ptr %.sroa.0253.0.copyload, null ; 3 uses
  %.sroa.10242.0 = select i1 %.not.i, i64 %.sroa.4254.0.copyload, i64 undef ; 2 uses
  %.sink23.i = zext i1 %.not.i to i64             ; 2 uses
  %.sroa.7.0.copyload.sink.i = select i1 %.not.i, i64 %.sroa.5255.0.copyload, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !34600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !34601
  store i64 %.sink23.i, ptr %i.aa, align 8, !alias.scope !34602, !noalias !34603
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %.sroa.4245.0..sroa_idx, align 8, !alias.scope !34602, !noalias !34603
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.0253.0.copyload, ptr %.sroa.5246.0..sroa_idx, align 8, !alias.scope !34602, !noalias !34603
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %.sroa.10242.0, ptr %.sroa.6247.0..sroa_idx, align 8, !alias.scope !34602, !noalias !34603
  %.sroa.7248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.sink23.i, ptr %.sroa.7248.0..sroa_idx, align 8, !alias.scope !34602, !noalias !34603
  %.sroa.8249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr null, ptr %.sroa.8249.0..sroa_idx, align 8, !alias.scope !34602, !noalias !34603
  %.sroa.9250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %.sroa.0253.0.copyload, ptr %.sroa.9250.0..sroa_idx, align 8, !alias.scope !34602, !noalias !34603
  %.sroa.10251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 %.sroa.10242.0, ptr %.sroa.10251.0..sroa_idx, align 8, !alias.scope !34602, !noalias !34603
  %.sroa.11252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i, ptr %.sroa.11252.0..sroa_idx, align 8, !alias.scope !34602, !noalias !34603
  call void @llvm.experimental.noalias.scope.decl(metadata !34604)
  call void @llvm.experimental.noalias.scope.decl(metadata !34605)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !34606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !34607
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf0f513158b50cfbdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.noexc.i.i.i.i.i.i92 unwind label %bb.hu, !noalias !34608

.thread373:                                       ; preds = %.noexc19.i.i.i.i153.invoke, %.thread.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread361

.noexc.i.i.i.i.i.i92:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4e7f07a123ec1d7E.exit"
  %i.aea = load ptr, ptr %i.x, align 8, !noalias !34607, !noundef !175 ; 3 uses
  %.not.i.i.i.i.i.i.i.i93 = icmp eq ptr %i.aea, null
  br i1 %.not.i.i.i.i.i.i.i.i93, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.thread.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !34607
  br label %.thread.i

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i92
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !34607 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aec = getelementptr inbounds nuw [24 x i8], ptr %i.aeb, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.08.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aec, align 8, !noalias !34607 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !34607
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i, label %bb.ia

bb.hu:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf4e7f07a123ec1d7E.exit"
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Remote$RP$$GT$17h0f875a3122491b06E.exit.i.i.i.i.i"

.thread.i:                                        ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !34606
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$GT$$GT$17h02bde9ec062493c4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.noexc162 unwind label %.thread373, !noalias !34609

.noexc162:                                        ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !34601
  br label %bb.jz

bb.hv:                                            ; preds = %bb.ic
  %i.aee = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aef = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.aef, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i", label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.8.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.8.copyload.i.i.i.i.i, i64 noundef %.sroa.08.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !34610
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i": ; preds = %bb.hw, %bb.hv
  %i.aeg = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i, 0
  br i1 %i.aeg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i", label %bb.hx

bb.hx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i, i64 noundef %.sroa.04.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !34611
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i": ; preds = %bb.hx, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"
  switch i64 %.sroa.6.24.copyload.i.i.i.i.i, label %bb.hy [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i"
  ]

bb.hy:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.24.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.24.copyload.i.i.i.i.i, i64 noundef %.sroa.6.24.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !34612
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i": ; preds = %bb.hy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"
  switch i64 %.sroa.107.48.copyload.i.i.i.i.i, label %bb.hz [
    i64 -9223372036854775808, label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Remote$RP$$GT$17h0f875a3122491b06E.exit.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Remote$RP$$GT$17h0f875a3122491b06E.exit.i.i.i.i.i"
  ]

bb.hz:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.128.48.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.128.48.copyload.i.i.i.i.i, i64 noundef %.sroa.107.48.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !34613
  br label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Remote$RP$$GT$17h0f875a3122491b06E.exit.i.i.i.i.i"

bb.ia:                                            ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.i.i.i.i.i.i.i"
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aea, i64 272
  %i.aei = getelementptr inbounds nuw [72 x i8], ptr %i.aeh, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 9 uses
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %.sroa.04.0.copyload.i.i.i.i.i = load i64, ptr %i.aei, align 8, !noalias !34606 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34606 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 24
  %.sroa.6.24.copyload.i.i.i.i.i = load i64, ptr %i.aej, align 8, !noalias !34606 ; 2 uses
  %i.aek = load <2 x i64>, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.8.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aei, i64 32
  %.sroa.8.24.copyload.i.i.i.i.i = load ptr, ptr %.sroa.8.24..sroa_idx.i.i.i.i.i, align 8, !noalias !34606 ; 3 uses
  %.sroa.96.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aei, i64 40
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 48
  %.sroa.107.48.copyload.i.i.i.i.i = load i64, ptr %i.ael, align 8, !noalias !34606 ; 2 uses
  %i.aem = load <2 x i64>, ptr %.sroa.96.24..sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.128.48..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aei, i64 56
  %.sroa.128.48.copyload.i.i.i.i.i = load ptr, ptr %.sroa.128.48..sroa_idx.i.i.i.i.i, align 8, !noalias !34606 ; 3 uses
  %.sroa.139.48..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aei, i64 64
  %.sroa.139.48.copyload.i.i.i.i.i = load i64, ptr %.sroa.139.48..sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.5.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34606 ; 3 uses
  %.sroa.7.8..sroa.49.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  %.sroa.7.8.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.8..sroa.49.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.val.i.i.i.i.i.i94 = load i64, ptr %.sroa.11252.0..sroa_idx, align 8, !alias.scope !34614, !noalias !34601, !noundef !175
  %i.aen = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i94, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i95 = call noundef i64 @llvm.umax.i64(i64 %i.aen, i64 4) ; 3 uses
  %i.aeo = mul i64 %.sroa.0.0.i.i.i.i.i.i.i95, 96 ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i96 = icmp ugt i64 %i.aen, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i.i.i96, label %bb.ic, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i97, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i97: ; preds = %bb.ia
  %i.aep = icmp eq i64 %i.aeo, 0
  br i1 %i.aep, label %bb.id, label %bb.ib

bb.ib:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i97
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !34615
  %i.aeq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aeo, i64 noundef range(i64 1, 9) 8) #77, !noalias !34615 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %.sroa.4.0.ph.i.i.i.i.i.i.i160 = phi i64 [ 8, %bb.ib ], [ 0, %bb.ia ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i160, i64 %i.aeo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc5.i.i.i.i.i.i161 unwind label %bb.hv, !noalias !34606

.noexc5.i.i.i.i.i.i161:                           ; preds = %bb.ic
  unreachable

bb.id:                                            ; preds = %bb.ib, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i97
  %.sroa.10.0.i.i.i.i.i.i.i98 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i97 ], [ %i.aeq, %bb.ib ] ; 12 uses
  %.sroa.4.0.i.i.i.i.i.i.i99 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i97 ], [ %.sroa.0.0.i.i.i.i.i.i.i95, %bb.ib ] ; 2 uses
  %i.aes = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i95, %.sroa.4.0.i.i.i.i.i.i.i99
  call void @llvm.assume(i1 %i.aes)
  store i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i98, align 8, !noalias !34606
  %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i98, i64 8
  store ptr %.sroa.5.8.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i98, i64 16
  store i64 %.sroa.7.8.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i98, i64 24
  store i64 %.sroa.04.0.copyload.i.i.i.i.i, ptr %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i98, i64 32
  store ptr %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.10.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i98, i64 40
  store <2 x i64> %i.aek, ptr %.sroa.10.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.11.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i98, i64 56
  store ptr %.sroa.8.24.copyload.i.i.i.i.i, ptr %.sroa.11.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.12.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i98, i64 64
  store <2 x i64> %i.aem, ptr %.sroa.12.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.13.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i98, i64 80
  store ptr %.sroa.128.48.copyload.i.i.i.i.i, ptr %.sroa.13.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  %.sroa.14.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i98, i64 88
  store i64 %.sroa.139.48.copyload.i.i.i.i.i, ptr %.sroa.14.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !34606
  store i64 %.sroa.4.0.i.i.i.i.i.i.i99, ptr %i.z, align 8, !noalias !34606
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i100 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i98, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i100, align 8, !noalias !34606
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i101 = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i101, align 8, !noalias !34606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !34606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false), !noalias !34609
  call void @llvm.experimental.noalias.scope.decl(metadata !34616)
  call void @llvm.experimental.noalias.scope.decl(metadata !34617)
  call void @llvm.experimental.noalias.scope.decl(metadata !34618)
  call void @llvm.experimental.noalias.scope.decl(metadata !34619)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aet = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aev = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  br label %bb.ie

bb.ie:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i.i.i.i.i.i.i", %bb.id
  %i.aew = phi ptr [ %i.afj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i98, %bb.id ]
  %i.aex = phi i64 [ %i.afl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.id ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !34620
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf0f513158b50cfbdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.ig, !noalias !34621

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ie
  %i.aey = load ptr, ptr %i.v, align 8, !noalias !34620, !noundef !175 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i104 = icmp eq ptr %i.aey, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i104, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.thread.i.i.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.i.i.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.thread.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !34620
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha3ea10cf6fca3edbE.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !34620 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afa = getelementptr inbounds nuw [24 x i8], ptr %i.aez, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afa, align 8, !noalias !34620 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !34620
  %.not.i.i.i.i.i.i.i.i.i105 = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i105, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha3ea10cf6fca3edbE.exit.i.i.i.i.i.i.i", label %bb.ih

bb.if:                                            ; preds = %bb.ii, %bb.ig
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.afm, %bb.ii ], [ %i.afb, %bb.ig ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$GT$$GT$17h02bde9ec062493c4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %.body.i.i.i.i.i.i102 unwind label %bb.ik, !noalias !34622

bb.ig:                                            ; preds = %bb.ie
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ih:                                            ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.i.i.i.i.i.i.i.i.i"
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aey, i64 272
  %i.afd = getelementptr inbounds nuw [72 x i8], ptr %i.afc, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.afd, i64 24, i1 false), !noalias !34623
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aet, ptr noundef nonnull align 8 dereferenceable(24) %i.afe, i64 24, i1 false), !noalias !34623
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeu, ptr noundef nonnull align 8 dereferenceable(24) %i.aff, i64 24, i1 false), !noalias !34623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !34624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !34624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !34624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.w, align 8, !noalias !34624
  %i.afg = icmp samesign ult i64 %i.aex, 96076792050570582
  call void @llvm.assume(i1 %i.afg)
  %i.afh = load i64, ptr %i.z, align 8, !range !174, !alias.scope !34625, !noalias !34606, !noundef !175
  %i.afi = icmp eq i64 %i.aex, %i.afh
  br i1 %i.afi, label %bb.ij, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ih
  %i.afj = phi ptr [ %.pre.i.i.i.i.i.i107, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.aew, %bb.ih ] ; 2 uses
  %i.afk = getelementptr inbounds nuw [96 x i8], ptr %i.afj, i64 %i.aex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.afk, ptr noundef nonnull align 8 dereferenceable(96) %i.w, i64 96, i1 false), !noalias !34624
  %i.afl = add nuw nsw i64 %i.aex, 1              ; 2 uses
  store i64 %i.afl, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i101, align 8, !alias.scope !34625, !noalias !34606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !34624
  br label %bb.ie

bb.ii:                                            ; preds = %bb.ij
  %i.afm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Remote$RP$$GT$17h0f875a3122491b06E"(ptr noalias noundef align 8 dereferenceable(96) %i.w) #79, !noalias !34624
  br label %bb.if

bb.ij:                                            ; preds = %bb.ih
  %.val.i.i.i.i.i.i.i.i106 = load i64, ptr %i.aev, align 8, !alias.scope !34626, !noalias !34606, !noundef !175
  %i.afn = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i106, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.aex, i64 noundef range(i64 1, 0) %i.afn, i64 noundef 8, i64 noundef 96)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.ii, !noalias !34627

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.ij
  %.pre.i.i.i.i.i.i107 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i100, align 8, !alias.scope !34625, !noalias !34606
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbccda68f3dfa8fd5E.exit.i.i.i.i.i.i.i.i"

bb.ik:                                            ; preds = %bb.if
  %i.afo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !34624
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha3ea10cf6fca3edbE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.i.i.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he4b45c1d75ff0418E.exit.thread.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$GT$$GT$17h02bde9ec062493c4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h9c73d5701060a8c9E.exit.i.i unwind label %bb.il, !noalias !34622

bb.il:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha3ea10cf6fca3edbE.exit.i.i.i.i.i.i.i"
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i102

.body.i.i.i.i.i.i102:                             ; preds = %bb.il, %bb.if
  %eh.lpad-body.i.i.i.i.i.i103 = phi { ptr, i32 } [ %i.afp, %bb.il ], [ %.pn.i.i.i.i.i.i.i.i, %bb.if ]
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Remote$RP$$GT$$GT$17hfefb6a57eb823251E"(ptr noalias noundef align 8 dereferenceable(24) %i.z) #79, !noalias !34606
  br label %.thread361

bb.im:                                            ; preds = %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Remote$RP$$GT$17h0f875a3122491b06E.exit.i.i.i.i.i"
  %i.afq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !34606
  unreachable

"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_37..Remote$RP$$GT$17h0f875a3122491b06E.exit.i.i.i.i.i": ; preds = %bb.hz, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i", %bb.hu
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aed, %bb.hu ], [ %i.aee, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i" ], [ %i.aee, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit3.i.i.i.i.i.i.i" ], [ %i.aee, %bb.hz ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$GT$$GT$17h02bde9ec062493c4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.thread361 unwind label %bb.im, !noalias !34609

_ZN4core4iter6traits8iterator8Iterator7collect17h9c73d5701060a8c9E.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha3ea10cf6fca3edbE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !34606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !34628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !34606
  %.phi.trans.insert.i.i108 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.pre.i.i109 = load i64, ptr %.phi.trans.insert.i.i108, align 8, !noalias !34600 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !34601
  %i.afr = icmp ult i64 %.pre.i.i109, 96076792050570582
  call void @llvm.assume(i1 %i.afr)
  %i.afs = icmp eq i64 %.pre.i.i109, 0
  br i1 %i.afs, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9c73d5701060a8c9E.exit.i.i
  %.val2.i.i.pre.i158 = load i64, ptr %i.ab, align 8, !range !174, !alias.scope !34629, !noalias !34600 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34629)
  %i.aft = icmp eq i64 %.val2.i.i.pre.i158, 0
  br i1 %i.aft, label %bb.jz, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.afu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val.i.i.i159 = load ptr, ptr %i.afu, align 8, !alias.scope !34629, !noalias !34600, !nonnull !175, !noundef !175
  %i.afv = mul nuw i64 %.val2.i.i.pre.i158, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i159, i64 noundef %i.afv, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !34630
  br label %bb.jz
end_hunk_5
begin_hunk_6_@_ZN12tracing_core10dispatcher11get_default17h0487c2a28cd0d0bdE:bb.a
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !40345, !nonnull !175, !align !179, !noundef !175 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !40345, !nonnull !175, !align !179, !noundef !175 ; 2 uses
  %.not.i7.i.i = icmp eq i64 %i.af, 0
  %..i8.i.i = select i1 %.not.i7.i.i, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40346
  store i64 %..i8.i.i, ptr %i.b, align 8, !noalias !40346
  %.sroa.5.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.af, ptr %.sroa.5.0..sroa_idx.i9.i.i, align 8, !noalias !40346
  %.sroa.7.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ag, ptr %.sroa.7.0..sroa_idx.i10.i.i, align 8, !noalias !40346
  %.sroa.9.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ai, ptr %.sroa.9.0..sroa_idx.i11.i.i, align 8, !noalias !40346
  invoke void @_ZN7tracing4span4Span9make_with17h9f0bb4a9b48c8367E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i.i.i.i.i)
          to label %bb.n unwind label %bb.m, !noalias !40347

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i64, ptr %i.m, align 8, !noalias !40337, !noundef !175
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.m, align 8, !noalias !40337
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40346
  %i.am = load i64, ptr %i.m, align 8, !noalias !40337, !noundef !175
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.m, align 8, !noalias !40337
  store i8 1, ptr %i.p, align 8, !noalias !40337
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit"

bb.o:                                             ; preds = %bb.m, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.aj, %bb.m ]
  store i8 1, ptr %i.p, align 8, !noalias !40337
  resume { ptr, i32 } %.pn.i.i

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit": ; preds = %bb.f, %bb.n
  %i.ao = phi ptr [ %i.w, %bb.f ], [ %i.ai, %bb.n ]
  %i.ap = phi ptr [ %i.u, %bb.f ], [ %i.ag, %bb.n ]
  %.sroa.0.0.copyload7 = load i64, ptr %i.d, align 8, !noalias !40334 ; 2 uses
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx8, i64 32, i1 false), !noalias !40334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40335
  %i.aq = icmp eq i64 %.sroa.0.0.copyload7, 3
  br i1 %i.aq, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread.thread", label %bb.r

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread.thread": ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit"
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ar, align 8, !alias.scope !40348
  br label %bb.q

bb.p:                                             ; preds = %bb.s, %bb.b
  ret void

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread": ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !40349
  %.pre.fr = freeze i64 %.pre                     ; 2 uses
  %.pre12 = load ptr, ptr %1, align 8, !alias.scope !40349
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre14 = load ptr, ptr %.phi.trans.insert13, align 8, !alias.scope !40349
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40349)
  %.not.i2 = icmp eq i64 %.pre.fr, 0
  %spec.select = select i1 %.not.i2, i64 0, i64 2
  br label %bb.q

bb.q:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread", %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread.thread"
  %i.as = phi i64 [ %.pre.fr, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread" ], [ 0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread.thread" ]
  %i.at = phi ptr [ %.pre12, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread" ], [ %i.ap, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread.thread" ] ; 2 uses
  %i.au = phi ptr [ %.pre14, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread" ], [ %i.ao, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread.thread" ]
  %i.av = phi i64 [ %spec.select, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread" ], [ 0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit.thread.thread" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40350
  store i64 %i.av, ptr %i.a, align 8, !noalias !40350
  %.sroa.5.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx.i4, align 8, !noalias !40350
  %.sroa.7.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.at, ptr %.sroa.7.0..sroa_idx.i5, align 8, !noalias !40350
  %.sroa.9.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.au, ptr %.sroa.9.0..sroa_idx.i6, align 8, !noalias !40350
  call void @_ZN7tracing4span4Span9make_with17h9f0bb4a9b48c8367E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E), !noalias !40349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40350
  br label %bb.s

bb.r:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hb21a48f99188ff20E.exit"
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload7, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.p
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12tracing_core8callsite8Callsite15private_type_id17h3b35349254f89351E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 !guid !40351 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @476, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN130_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..convert..From$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$T$GT$$GT$$GT$4from17hae1d116b15bb6ab1E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !40488 {
"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he2796caefa0f93bfE.exit":
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [72 x i8], align 8                ; 16 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca [15 x i8], align 1  ; 4 uses
  %.sroa.0.i.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 17 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.044.i.i.i = alloca [24 x i8], align 8    ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.9.i.i.i = alloca [15 x i8], align 1      ; 6 uses
  %i.p = alloca [72 x i8], align 8                ; 12 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 15 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !40489 ; 3 uses
  %.not.i = icmp ne ptr %.sroa.0.0.copyload.i, null ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.10.0 = select i1 %.not.i, i64 %.sroa.5.0.copyload.i, i64 undef ; 2 uses
  %.sink23.i = zext i1 %.not.i to i64             ; 2 uses
  %.sroa.7.0.copyload.sink.i = select i1 %.not.i, i64 %.sroa.7.0.copyload.i, i64 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !40491
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !40493
  store i64 %.sink23.i, ptr %i.h, align 8, !alias.scope !40494, !noalias !40495
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %.sroa.460.0..sroa_idx, align 8, !alias.scope !40494, !noalias !40495
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.561.0..sroa_idx, align 8, !alias.scope !40494, !noalias !40495
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.662.0..sroa_idx, align 8, !alias.scope !40494, !noalias !40495
  %.sroa.763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sink23.i, ptr %.sroa.763.0..sroa_idx, align 8, !alias.scope !40494, !noalias !40495
  %.sroa.864.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr null, ptr %.sroa.864.0..sroa_idx, align 8, !alias.scope !40494, !noalias !40495
  %.sroa.965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.965.0..sroa_idx, align 8, !alias.scope !40494, !noalias !40495
  %.sroa.1066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %.sroa.10.0, ptr %.sroa.1066.0..sroa_idx, align 8, !alias.scope !40494, !noalias !40495
  %.sroa.1167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i, ptr %.sroa.1167.0..sroa_idx, align 8, !alias.scope !40494, !noalias !40495
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40496), !noalias !40497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40498), !noalias !40497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !40499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40500
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h13bf1ba8961a1674E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %.noexc29 unwind label %bb.a, !noalias !40501

.noexc29:                                         ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he2796caefa0f93bfE.exit"
  %i.t = load ptr, ptr %i.b, align 8, !noalias !40500, !noundef !175 ; 3 uses
  %.not.i28 = icmp eq ptr %i.t, null
  br i1 %.not.i28, label %.noexc.i.i2.thread, label %.noexc.i.i2

.noexc.i.i2.thread:                               ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40500
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he0e592fe2478b607E.exit.thread"

.noexc.i.i2:                                      ; preds = %.noexc29
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !40500 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.22.0.copyload.i ; 2 uses
  %.sroa.4132.24.copyload = load i8, ptr %i.u, align 8, !noalias !40500 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40500
  %.not.i.i.i3 = icmp eq i8 %.sroa.4132.24.copyload, 12
  br i1 %.not.i.i.i3, label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he0e592fe2478b607E.exit.thread", label %bb.b

bb.a:                                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he2796caefa0f93bfE.exit"
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.b:                                             ; preds = %.noexc.i.i2
  %.sroa.6133.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.sroa.22.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %.sroa.772.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.772.0..sroa_idx73, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6133.24..sroa_idx, i64 15, i1 false)
  %.sroa.569.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store i8 %.sroa.4132.24.copyload, ptr %.sroa.569.0..sroa_idx70, align 8, !noalias !40499
  %.val.i.i4 = load i64, ptr %.sroa.1167.0..sroa_idx, align 8, !alias.scope !40498, !noalias !40493, !noundef !175
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i4, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i5 = tail call noundef i64 @llvm.umax.i64(i64 %i.y, i64 4) ; 3 uses
  %i.z = mul i64 %.sroa.0.0.i.i.i5, 40            ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.y, 230584300921369395
  br i1 %or.cond.i.i.i.i.i, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !203

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he0e592fe2478b607E.exit.thread": ; preds = %.noexc.i.i2, %.noexc.i.i2.thread
  store i64 0, ptr %i.r, align 8, !alias.scope !40502, !noalias !40497
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aa, align 8, !alias.scope !40502, !noalias !40497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !40499
  call fastcc void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h28a1ed562b1c2a8cE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h), !noalias !40503, !inline_history !40375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !40493
  br label %bb.r

bb.c:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %.noexc.i16 unwind label %bb.e, !noalias !40503

.noexc.i16:                                       ; preds = %bb.c
  br i1 %i.ac, label %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h1cce4b89d5b66576E.exit.i", label %bb.d

bb.d:                                             ; preds = %.noexc.i16
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h1cce4b89d5b66576E.exit.i" unwind label %bb.e, !noalias !40503

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h22450f180fcc5f6fE"(ptr noalias noundef align 8 dereferenceable(16) %.sroa.569.0..sroa_idx70)
          to label %.body18 unwind label %bb.f, !noalias !40503, !inline_history !270

"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h1cce4b89d5b66576E.exit.i": ; preds = %bb.d, %.noexc.i16
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h22450f180fcc5f6fE"(ptr noalias noundef align 8 dereferenceable(16) %.sroa.569.0..sroa_idx70)
          to label %bb.q unwind label %bb.p, !noalias !40503, !inline_history !270

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !40503
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.af = icmp eq i64 %i.z, 0
  br i1 %i.af, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i", label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !40504, !inline_history !40375
  %i.ag = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 1, 9) 8) #77, !noalias !40504, !inline_history !40375 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i"

bb.h:                                             ; preds = %bb.g, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc6.i.i unwind label %bb.c, !noalias !40503, !inline_history !40375

.noexc6.i.i:                                      ; preds = %bb.h
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i": ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ag, %bb.g ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.sroa.0.0.i.i.i5, %bb.g ] ; 2 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i.i5, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.ai), !noalias !40497
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  store i64 %.sroa.4.0.i.i.i, ptr %i.g, align 8, !noalias !40499
  %.sroa.4.0..sroa_idx.i.i6 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i6, align 8, !noalias !40499
  %.sroa.6.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i7, align 8, !noalias !40499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !40503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40506)
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.593.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.796.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i"
  %i.ak = phi ptr [ %i.au, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i" ], [ %.sroa.10.0.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i" ]
  %i.al = phi i64 [ %i.aw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i" ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40507
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h13bf1ba8961a1674E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.noexc8.i unwind label %bb.j, !noalias !40508, !inline_history !40388

.noexc8.i:                                        ; preds = %bb.i
  %i.am = load ptr, ptr %i.c, align 8, !noalias !40507, !noundef !175 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.am, null
  br i1 %.not.i7.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ecf3498c2c0fde3E.exit.i.thread", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ecf3498c2c0fde3E.exit.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ecf3498c2c0fde3E.exit.i.thread": ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40507
  br label %.loopexit

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ecf3498c2c0fde3E.exit.i": ; preds = %.noexc8.i
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !noalias !40507 ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.sroa.22.0.copyload.i.i ; 2 uses
  %.sroa.4123.24.copyload = load i8, ptr %i.an, align 8, !noalias !40507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40507
  %.not.i.i11 = icmp eq i8 %.sroa.4123.24.copyload, 12
  br i1 %.not.i.i11, label %.loopexit, label %bb.k

.body.i8:                                         ; preds = %bb.j, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %i.ao, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h28a1ed562b1c2a8cE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.body unwind label %bb.n, !noalias !40509, !inline_history !40388

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i8

bb.k:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ecf3498c2c0fde3E.exit.i"
  %.sroa.6124.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 184
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %.sroa.22.0.copyload.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.796.0..sroa_idx97, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6124.24..sroa_idx, i64 15, i1 false)
  store i8 %.sroa.4123.24.copyload, ptr %.sroa.593.0..sroa_idx94, align 8, !noalias !40510
  %i.ar = icmp samesign ult i64 %i.al, 230584300921369396
  tail call void @llvm.assume(i1 %i.ar), !noalias !40503
  %i.as = load i64, ptr %i.g, align 8, !range !174, !alias.scope !40505, !noalias !40503, !noundef !175
  %i.at = icmp eq i64 %i.al, %i.as
  br i1 %i.at, label %bb.m, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i"

.loopexit:                                        ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ecf3498c2c0fde3E.exit.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ecf3498c2c0fde3E.exit.i.thread"
  invoke fastcc void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h28a1ed562b1c2a8cE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he0e592fe2478b607E.exit" unwind label %bb.o, !noalias !40509, !inline_history !40388

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i_crit_edge", %bb.k
  %i.au = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i_crit_edge" ], [ %i.ak, %bb.k ] ; 2 uses
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.aw = add nuw nsw i64 %i.al, 1                ; 2 uses
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx.i.i7, align 8, !alias.scope !40505, !noalias !40503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40510
  br label %bb.i

bb.l:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr125drop_in_place$LT$$LP$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$RP$$GT$17h9cc33569cbe03047E"(ptr noalias noundef align 8 dereferenceable(40) %i.d) #79
          to label %.body.i8 unwind label %bb.n, !noalias !40510, !inline_history !40388

bb.m:                                             ; preds = %bb.k
  %.val.i = load i64, ptr %i.aj, align 8, !alias.scope !40506, !noalias !40503, !noundef !175
  %i.ay = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.al, i64 noundef range(i64 1, 0) %i.ay, i64 noundef 8, i64 noundef 40)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i_crit_edge" unwind label %bb.l, !noalias !40511, !inline_history !40388

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i_crit_edge": ; preds = %bb.m
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i6, align 8, !alias.scope !40505, !noalias !40503
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf454d48973d4eea7E.exit.i"

bb.n:                                             ; preds = %bb.l, %.body.i8
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !40509, !inline_history !40388
  unreachable

bb.o:                                             ; preds = %.loopexit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i8, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %.pn.i, %.body.i8 ]
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$alloc..vec..Vec$LT$$LP$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$RP$$GT$$GT$17hb767d1873f91018bE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #79
          to label %common.resume unwind label %bb.p, !noalias !40503, !inline_history !40375

bb.p:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h1cce4b89d5b66576E.exit.i", %bb.q, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body18

.body18:                                          ; preds = %bb.e, %bb.p
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !40503, !inline_history !40375
  unreachable

common.resume:                                    ; preds = %bb.by, %bb.bv, %.critedge.i.i.i, %bb.bu, %bb.s, %bb.t, %.body, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %.critedge.i.i.i ], [ %.pn.i.i.ph, %bb.q ], [ %i.bg, %bb.s ], [ %eh.lpad-body, %.body ], [ %i.bg, %bb.t ], [ %i.la, %bb.by ], [ %lpad.thr_comm.split-lp, %bb.bv ], [ %i.ku, %bb.bu ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.a, %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h1cce4b89d5b66576E.exit.i"
  %.pn.i.i.ph = phi { ptr, i32 } [ %i.ab, %"_ZN4core3ptr85drop_in_place$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$17h1cce4b89d5b66576E.exit.i" ], [ %i.v, %bb.a ]
  invoke fastcc void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h28a1ed562b1c2a8cE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %common.resume unwind label %bb.p, !noalias !40503, !inline_history !40375

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he0e592fe2478b607E.exit": ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !40512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !40499
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.pre220 = load i64, ptr %.phi.trans.insert, align 8, !noalias !40491 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !40493
  %i.bc = icmp ult i64 %.pre220, 230584300921369396
  call void @llvm.assume(i1 %i.bc), !noalias !40513
end_hunk_6
begin_hunk_7_@_ZN15index_scheduler5queue5Queue8register17h0be7d55737be855aE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !53882
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %.noexc77.i unwind label %bb.gt, !noalias !53798

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit74.i": ; preds = %._crit_edge.i
  %.not.i61.i = icmp ne ptr %i.ahx, null          ; 3 uses
  %.sroa.10139.0.i = select i1 %.not.i61.i, i64 %i.ahw, i64 undef ; 2 uses
  %.sink23.i72.i = zext i1 %.not.i61.i to i64     ; 2 uses
  %.sroa.7.0.copyload.sink.i73.i = select i1 %.not.i61.i, i64 %i.ahv, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !53883
  store i64 %.sink23.i72.i, ptr %i.l, align 8, !alias.scope !53884, !noalias !53885
  %.sroa.4151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.4151.0..sroa_idx.i, align 8, !alias.scope !53884, !noalias !53885
  %.sroa.5152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ahx, ptr %.sroa.5152.0..sroa_idx.i, align 8, !alias.scope !53884, !noalias !53885
  %.sroa.6153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.10139.0.i, ptr %.sroa.6153.0..sroa_idx.i, align 8, !alias.scope !53884, !noalias !53885
  %.sroa.7154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sink23.i72.i, ptr %.sroa.7154.0..sroa_idx.i, align 8, !alias.scope !53884, !noalias !53885
  %.sroa.8155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %.sroa.8155.0..sroa_idx.i, align 8, !alias.scope !53884, !noalias !53885
  %.sroa.9156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.ahx, ptr %.sroa.9156.0..sroa_idx.i, align 8, !alias.scope !53884, !noalias !53885
  %.sroa.10157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.10139.0.i, ptr %.sroa.10157.0..sroa_idx.i, align 8, !alias.scope !53884, !noalias !53885
  %.sroa.11158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i73.i, ptr %.sroa.11158.0..sroa_idx.i, align 8, !alias.scope !53884, !noalias !53885
  call void @llvm.experimental.noalias.scope.decl(metadata !53886)
  call void @llvm.experimental.noalias.scope.decl(metadata !53887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !53888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !53888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !53889
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc.i.i.i.i.i unwind label %bb.hb, !noalias !53890

.noexc77.i:                                       ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit.i"
  %i.ajc = load ptr, ptr %i.n, align 8, !noalias !53882, !noundef !175 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.ajc, null
  br i1 %.not.i75.i, label %bb.gv, label %bb.gu

bb.gt:                                            ; preds = %bb.gv, %bb.gu, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit.i"
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$17h6e00f973af0d44e2E"(ptr noalias noundef align 8 dereferenceable(72) %i.s) #79
          to label %.body.i68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53798

bb.gu:                                            ; preds = %.noexc77.i
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !noalias !53882
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %.sroa.22.0.copyload.i.i
  %i.ajg = load ptr, ptr %i.ajf, align 8, !noalias !53882, !nonnull !175, !align !179, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !53882
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @738)
          to label %bb.gx unwind label %bb.gt, !noalias !53798

bb.gv:                                            ; preds = %.noexc77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !53882
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @737) #78
          to label %bb.gw unwind label %bb.gt, !noalias !53798

bb.gw:                                            ; preds = %bb.gv
  unreachable

bb.gx:                                            ; preds = %bb.gu
  %.sroa.1098.8.copyload = load i64, ptr %i.t, align 8, !noalias !53797
  %.sroa.1299.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.1299.8.copyload = load ptr, ptr %.sroa.1299.8..sroa_idx, align 8, !noalias !53797
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.13.8.copyload = load i64, ptr %.sroa.13.8..sroa_idx, align 8, !noalias !53797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !53798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !53891
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %.noexc80.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53798

.noexc80.i:                                       ; preds = %bb.gx
  %i.ajh = load ptr, ptr %i.m, align 8, !noalias !53891, !noundef !175
  %.not3.i.i.i.i = icmp eq ptr %i.ajh, null
  br i1 %.not3.i.i.i.i, label %.loopexit213.i, label %.lr.ph.i.i.i78.i

.lr.ph.i.i.i78.i:                                 ; preds = %.noexc80.i, %.noexc81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !53891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !53891
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %.noexc81.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53798

.noexc81.i:                                       ; preds = %.lr.ph.i.i.i78.i
  %i.aji = load ptr, ptr %i.m, align 8, !noalias !53891, !noundef !175
  %.not.i.i.i79.i = icmp eq ptr %i.aji, null
  br i1 %.not.i.i.i79.i, label %.loopexit213.i, label %.lr.ph.i.i.i78.i

.loopexit213.i:                                   ; preds = %.noexc81.i, %.noexc80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !53891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !53798
  br label %bb.gy

bb.gy:                                            ; preds = %bb.hs, %.loopexit213.i
  %.sroa.13.0 = phi i64 [ %.sroa.6.0.i75, %bb.hs ], [ %.sroa.13.8.copyload, %.loopexit213.i ]
  %.sroa.1299.0 = phi ptr [ %.sroa.5.0.i, %bb.hs ], [ %.sroa.1299.8.copyload, %.loopexit213.i ]
  %.sroa.1098.0 = phi i64 [ %.sroa.0.0.i76, %bb.hs ], [ %.sroa.1098.8.copyload, %.loopexit213.i ]
  %.sroa.097.0 = phi i64 [ 101, %bb.hs ], [ 100, %.loopexit213.i ]
  %.val35.i69 = load ptr, ptr %i.v, align 8, !noalias !53798 ; 2 uses
  %.val36.i70 = load i64, ptr %i.pl, align 8, !noalias !53798, !noundef !175 ; 4 uses
  %i.ajj = icmp eq i64 %.val36.i70, 0
  br i1 %i.ajj, label %bb.hu, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i82.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i82.i: ; preds = %bb.gy
  %i.ajk = shl i64 %.val36.i70, 3
  %i.ajl = icmp slt i64 %.val36.i70, 2305843009213693950
  call void @llvm.assume(i1 %i.ajl)
  %i.ajm = and i64 %i.ajk, -16                    ; 2 uses
  %i.ajn = add i64 %i.ajm, 16                     ; 2 uses
  %i.ajo = add nsw i64 %.val36.i70, 17
  %i.ajp = add i64 %i.ajo, %i.ajn                 ; 4 uses
  %i.ajq = icmp uge i64 %i.ajp, %i.ajn
  %i.ajr = icmp ult i64 %i.ajp, 9223372036854775793
  call void @llvm.assume(i1 %i.ajq)
  call void @llvm.assume(i1 %i.ajr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35.i69) ]
  %i.ajs = icmp eq i64 %i.ajp, 0
  br i1 %i.ajs, label %bb.hu, label %bb.gz

bb.gz:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i82.i
  %i.ajt = sub nuw nsw i64 -16, %i.ajm
  %i.aju = getelementptr inbounds i8, ptr %.val35.i69, i64 %i.ajt
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aju, i64 noundef %i.ajp, i64 noundef range(i64 1, -9223372036854775807) 16) #77, !noalias !53798
  br label %bb.hu

.noexc.i.i.i.i.i:                                 ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit74.i"
  %i.ajv = load ptr, ptr %i.h, align 8, !noalias !53889, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajv, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.thread.i.i.i.i.i", label %bb.ha

bb.ha:                                            ; preds = %.noexc.i.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !53889
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.ajw, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i
  %i.ajy = load ptr, ptr %i.ajx, align 8, !noalias !53889, !nonnull !175, !align !179, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !53889
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104)
          to label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.i.i.i.i.i" unwind label %bb.hb, !noalias !53892

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.thread.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !53889
  br label %bb.hc

bb.hb:                                            ; preds = %bb.ha, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit74.i"
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.i.i.i.i.i": ; preds = %bb.ha
  %.pr.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !53888 ; 4 uses
  %.not.i.i.i.i84.i = icmp eq i64 %.pr.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i84.i, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.i.i.i.i.i", %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.thread.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !53888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !53893
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc89.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53894

.noexc89.i:                                       ; preds = %bb.hc
  %i.aka = load ptr, ptr %i.g, align 8, !noalias !53893, !noundef !175
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aka, null
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr138drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$$GT$17h440649bfceb16326E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc89.i, %.noexc90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !53893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !53893
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc90.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53894

.noexc90.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.akb = load ptr, ptr %i.g, align 8, !noalias !53893, !noundef !175
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.akb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr138drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$$GT$17h440649bfceb16326E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr138drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$$GT$17h440649bfceb16326E.exit.i.i.i.i.i": ; preds = %.noexc90.i, %.noexc89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !53893
  br label %bb.hs

bb.hd:                                            ; preds = %bb.hh
  %i.akc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akd = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.akd, label %bb.hr, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !53895
  br label %bb.hr

bb.hf:                                            ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.i.i.i.i.i"
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53888 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i, align 8, !noalias !53888
  %.val.i.i.i.i85.i = load i64, ptr %.sroa.11158.0..sroa_idx.i, align 8, !alias.scope !53896, !noalias !53883, !noundef !175
  %i.ake = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i85.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ake, i64 4) ; 3 uses
  %i.akf = mul i64 %.sroa.0.0.i.i.i.i.i.i, 24     ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ake, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.hh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.hf
  %i.akg = icmp eq i64 %i.akf, 0
  br i1 %i.akg, label %bb.hi, label %bb.hg

bb.hg:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !53897
  %i.akh = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.akf, i64 noundef range(i64 1, 9) 8) #77, !noalias !53897 ; 2 uses
  %i.aki = icmp eq ptr %i.akh, null
  br i1 %i.aki, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.hg ], [ 0, %bb.hf ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.akf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc6.i.i.i.i.i unwind label %bb.hd, !noalias !53888

.noexc6.i.i.i.i.i:                                ; preds = %bb.hh
  unreachable

bb.hi:                                            ; preds = %bb.hg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.akh, %bb.hg ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.hg ] ; 2 uses
  %i.akj = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.akj)
  store i64 %.pr.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i, align 8, !noalias !53888
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53888
  %.sroa.511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53888
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !53888
  %.sroa.4.0..sroa_idx.i.i.i.i86.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i86.i, align 8, !noalias !53888
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !53888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !53888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !53888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !53894
  call void @llvm.experimental.noalias.scope.decl(metadata !53898)
  call void @llvm.experimental.noalias.scope.decl(metadata !53899)
  call void @llvm.experimental.noalias.scope.decl(metadata !53900)
  call void @llvm.experimental.noalias.scope.decl(metadata !53901)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.akk = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %bb.hj

bb.hj:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i.i.i", %bb.hi
  %i.akl = phi ptr [ %i.akw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i, %bb.hi ]
  %.sroa.6.0.copyload122.i = phi i64 [ %i.aky, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.hi ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !53902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !53903
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.hl, !noalias !53904

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.hj
  %i.akm = load ptr, ptr %i.e, align 8, !noalias !53903, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i87.i = icmp eq ptr %i.akm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i87.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.thread.i.i.i.i.i.i.i", label %bb.hk

bb.hk:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53903
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.akp = load ptr, ptr %i.ako, align 8, !noalias !53903, !nonnull !175, !align !179, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53903
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104)
          to label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.i.i.i.i.i.i.i" unwind label %bb.hl, !noalias !53905

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53903
  br label %.loopexit.i.i.i.i.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i": ; preds = %bb.ho, %bb.hn, %bb.hl
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.akq, %bb.hl ], [ %i.akz, %bb.hn ], [ %i.akz, %bb.ho ]
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$$GT$17h440649bfceb16326E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i) #79
          to label %.body.i.i.i.i.i unwind label %bb.hq, !noalias !53906

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.i.i.i.i.i.i.i": ; preds = %bb.hk
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !53902 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.hm

bb.hm:                                            ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.i.i.i.i.i.i.i"
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !53902 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !53902
  %i.akr = icmp samesign ult i64 %.sroa.6.0.copyload122.i, 384307168202282326
  call void @llvm.assume(i1 %i.akr)
  %i.aks = load i64, ptr %i.k, align 8, !range !174, !alias.scope !53907, !noalias !53888, !noundef !175
  %i.akt = icmp eq i64 %.sroa.6.0.copyload122.i, %i.aks
  br i1 %i.akt, label %bb.hp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i.i:                          ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.i.i.i.i.i.i.i", %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !53902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53908
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53906

.noexc8.i.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.aku = load ptr, ptr %i.d, align 8, !noalias !53908, !noundef !175
  %.not3.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aku, null
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit17.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc8.i.i.i.i.i, %.noexc9.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53908
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53906

.noexc9.i.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.akv = load ptr, ptr %i.d, align 8, !noalias !53908, !noundef !175
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.akv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit17.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i.i.i", %bb.hm
  %i.akw = phi ptr [ %.pre.i.i.i.i88.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.akl, %bb.hm ] ; 2 uses
  %i.akx = getelementptr inbounds nuw [24 x i8], ptr %i.akw, i64 %.sroa.6.0.copyload122.i ; 3 uses
  store i64 %.pr.i.i.i.i.i.i.i, ptr %i.akx, align 8, !noalias !53902
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !53902
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !53902
  %i.aky = add nuw nsw i64 %.sroa.6.0.copyload122.i, 1 ; 2 uses
  store i64 %i.aky, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !53907, !noalias !53888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !53902
  br label %bb.hj

bb.hn:                                            ; preds = %bb.hp
  %i.akz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ala = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.ala, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i", label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !53909
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"

bb.hp:                                            ; preds = %bb.hm
  %.val.i.i7.i.i.i.i.i = load i64, ptr %i.akk, align 8, !alias.scope !53910, !noalias !53888, !noundef !175
  %i.alb = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i7.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.sroa.6.0.copyload122.i, i64 noundef %i.alb, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.hn, !noalias !53911

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.hp
  %.pre.i.i.i.i88.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i86.i, align 8, !alias.scope !53907, !noalias !53888
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i.i.i"

bb.hq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"
  %i.alc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !53902
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp824 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i"
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i.i" ], [ %lpad.loopexit.split-lp824, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h2802354c394a855dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #79, !noalias !53888
  br label %.body.i68

.loopexit17.i.i.i.i.i:                            ; preds = %.noexc9.i.i.i.i.i, %.noexc8.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !53888
  %.sroa.0.0.copyload120.i = load i64, ptr %i.k, align 8, !noalias !53912
  %.sroa.5.0.copyload121.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i86.i, align 8, !noalias !53912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !53888
  br label %bb.hs

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.hr
  %lpad.loopexit.split-lp822 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !53888
  unreachable

bb.hr:                                            ; preds = %bb.he, %bb.hd, %bb.hb
  %.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.ajz, %bb.hb ], [ %i.akc, %bb.hd ], [ %i.akc, %bb.he ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53913
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc.i.i.i.i74 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53894

.noexc.i.i.i.i74:                                 ; preds = %bb.hr
  %i.ald = load ptr, ptr %i.c, align 8, !noalias !53913, !noundef !175
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %i.ald, null
  br i1 %.not3.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr138drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$$GT$17h440649bfceb16326E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i74, %.noexc2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !53913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53913
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5de26b4ce40ec99cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc2.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53894
end_hunk_7
begin_hunk_8_@_ZN15index_scheduler7upgrade23upgrade_index_scheduler17h7939c7a27b03f5eaE:bb.a
bb.dh:                                            ; preds = %.noexc422
  %i.rs = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !58528 ; 2 uses
  %i.rt = icmp ult i64 %i.rs, 6
  call void @llvm.assume(i1 %i.rt)
  %i.ru = icmp samesign ugt i64 %i.rs, 2
  br i1 %i.ru, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.rv = load ptr, ptr @_ZN15index_scheduler7upgrade23upgrade_index_scheduler10__CALLSITE17hbe1ee8e3abf086e5E, align 8, !noalias !58528, !nonnull !175, !align !179, !noundef !175 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.rx = load ptr, ptr %i.rw, align 8, !nonnull !175, !align !182, !noundef !175
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  %i.rz = load i64, ptr %i.ry, align 8, !noundef !175
  store i64 3, ptr %i.b, align 8, !noalias !58528
  store ptr %i.rx, ptr %.sroa.52.0..sroa_idx.i420, align 8, !noalias !58528
  store i64 %i.rz, ptr %.sroa.7.0..sroa_idx.i421, align 8, !noalias !58528
  %i.sa = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc423 unwind label %.thread458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc423:                                        ; preds = %bb.di
  %i.sb = extractvalue { ptr, ptr } %i.sa, 0      ; 2 uses
  %i.sc = extractvalue { ptr, ptr } %i.sa, 1      ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.se = load ptr, ptr %i.sd, align 8, !invariant.load !175, !nonnull !175
  %i.sf = invoke noundef zeroext i1 %i.se(ptr noundef align 1 %i.sb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc424 unwind label %.thread458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !58501

.noexc424:                                        ; preds = %.noexc423
  br i1 %i.sf, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.noexc424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !58528
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rv, ptr noundef nonnull align 1 %i.sb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sc, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
          to label %.noexc425 unwind label %.thread458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc425:                                        ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58528
  br label %bb.dk

bb.dk:                                            ; preds = %.noexc425, %.noexc424, %bb.dh, %.noexc422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.by

"_ZN4core3ptr37drop_in_place$LT$heed..txn..RwTxn$GT$17h4fc9729f2a5c8207E.exit": ; preds = %bb.dn, %bb.dm, %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i.i", %bb.aw, %bb.o
  %.sroa.0.3 = phi ptr [ %i.gh, %bb.o ], [ %i.ls, %bb.aw ], [ %.sroa.0.2503, %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i.i" ], [ %.sroa.0.2503, %bb.dm ], [ %.sroa.0.2503, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %.sink.split

.thread500:                                       ; preds = %bb.cs, %bb.be, %.thread505
  %.sroa.0.2503 = phi ptr [ %.sroa.0.1.ph, %.thread505 ], [ %i.iq, %bb.be ], [ %i.pf, %bb.cs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58529)
  call void @llvm.experimental.noalias.scope.decl(metadata !58530)
  call void @llvm.experimental.noalias.scope.decl(metadata !58531)
  %i.sg = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !alias.scope !58532, !noundef !175 ; 2 uses
  store ptr null, ptr %i.sg, align 8, !alias.scope !58532
  %.not.i.i.i = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i, label %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i.i", label %bb.dl

bb.dl:                                            ; preds = %.thread500
  call void @mdb_txn_abort(ptr noundef nonnull %i.sh) #77, !noalias !58532
  br label %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i.i"

"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i.i": ; preds = %bb.dl, %.thread500
  call void @llvm.experimental.noalias.scope.decl(metadata !58533)
  call void @llvm.experimental.noalias.scope.decl(metadata !58534)
  %i.si = load i64, ptr %i.bz, align 8, !range !189, !alias.scope !58535, !noundef !175
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %"_ZN4core3ptr37drop_in_place$LT$heed..txn..RwTxn$GT$17h4fc9729f2a5c8207E.exit", label %bb.dm

bb.dm:                                            ; preds = %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i.i"
  %i.sk = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58536)
  call void @llvm.experimental.noalias.scope.decl(metadata !58537)
  %i.sl = load ptr, ptr %i.sk, align 8, !alias.scope !58538, !nonnull !175, !noundef !175
  %i.sm = atomicrmw add ptr %i.sl, i64 -1 release, align 8, !noalias !58538
  %i.sn = icmp eq i64 %i.sm, 1
  br i1 %i.sn, label %bb.dn, label %"_ZN4core3ptr37drop_in_place$LT$heed..txn..RwTxn$GT$17h4fc9729f2a5c8207E.exit"

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdfb7a3544ec9f782E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.sk)
  br label %"_ZN4core3ptr37drop_in_place$LT$heed..txn..RwTxn$GT$17h4fc9729f2a5c8207E.exit"

bb.do:                                            ; preds = %.thread452
  resume { ptr, i32 } %.pn456

.thread452:                                       ; preds = %.thread458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar
  %.pn456 = phi { ptr, i32 } [ %i.lo, %bb.ar ], [ %lpad.loopexit.split-lp547, %.thread458.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr37drop_in_place$LT$heed..txn..RwTxn$GT$17h4fc9729f2a5c8207E"(ptr noalias noundef align 8 dereferenceable(24) %i.bz) #79
          to label %bb.do unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN15index_scheduler8Webhooks11get_runtime17h78a81245646da837E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !58675 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.49.i.i.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.7.i.i.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.423.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.7.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.l, 1073741822
  br i1 %or.cond3.i, label %bb.b, label %bb.c, !prof !281

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i32 %i.l, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %i.l, i32 %i.m acquire monotonic, align 4
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit, label %bb.c, !prof !176

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 %i.k)
  br label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit

_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit: ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load atomic i8, ptr %i.p monotonic, align 8, !noalias !58676
  %.not53 = icmp eq i8 %i.q, 0
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br i1 %.not53, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9860e99c8e0c3dcaE.exit", label %bb.d, !prof !176

bb.d:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !58677
  store ptr %.sink.i.i, ptr %i.j, align 8, !noalias !58677
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.r, align 8, !noalias !58677
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #78
          to label %bb.g unwind label %bb.e, !noalias !58678

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58679)
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !58679, !noalias !58678, !nonnull !175, !align !278, !noundef !175 ; 2 uses
  %i.t = atomicrmw add ptr %.val.i, i32 -1 release, align 4, !noalias !58680
  %i.u = add i32 %i.t, -1                         ; 2 uses
  %i.v = and i32 %i.u, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.v, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.f, label %common.resume, !prof !233

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val.i, i32 noundef %i.u)
          to label %common.resume unwind label %bb.h, !noalias !58680

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !58678
  unreachable

common.resume:                                    ; preds = %bb.be, %.body, %bb.f, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.s, %bb.e ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.be ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9860e99c8e0c3dcaE.exit": ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit
  %i.x = load ptr, ptr %.sink.i.i, align 8, !noundef !175 ; 4 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.thread, label %bb.i

.thread:                                          ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9860e99c8e0c3dcaE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !58681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !58682
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h310c350e00fff581E.exit.thread.i.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9860e99c8e0c3dcaE.exit"
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i64, ptr %i.y, align 8, !noundef !175 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !175 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !58685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !58686
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZN4core4iter6traits8iterator8Iterator7collect17h310c350e00fff581E.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %i.ab, -1                       ; 3 uses
  %i.ae = icmp eq i64 %i.z, 0
  br i1 %i.ae, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.j
  %xtraiter = and i64 %i.z, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.prol, i64 720
  %i.ag = add i64 %.sroa.011.014.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.prol = load ptr, ptr %i.af, align 8, !noalias !58687, !nonnull !175, !noundef !175 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !58576

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.unr = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.unr = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.z, 8
  br i1 %i.ah, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i, i64 720
  %.sroa.012.0.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !58687, !nonnull !175, !noundef !175
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i, i64 720
  %.sroa.012.0.i.i.i.i.i.i.1 = load ptr, ptr %i.aj, align 8, !noalias !58687, !nonnull !175, !noundef !175
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.1, i64 720
  %.sroa.012.0.i.i.i.i.i.i.2 = load ptr, ptr %i.ak, align 8, !noalias !58687, !nonnull !175, !noundef !175
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.2, i64 720
  %.sroa.012.0.i.i.i.i.i.i.3 = load ptr, ptr %i.al, align 8, !noalias !58687, !nonnull !175, !noundef !175
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.3, i64 720
  %.sroa.012.0.i.i.i.i.i.i.4 = load ptr, ptr %i.am, align 8, !noalias !58687, !nonnull !175, !noundef !175
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.4, i64 720
  %.sroa.012.0.i.i.i.i.i.i.5 = load ptr, ptr %i.an, align 8, !noalias !58687, !nonnull !175, !noundef !175
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.5, i64 720
  %.sroa.012.0.i.i.i.i.i.i.6 = load ptr, ptr %i.ao, align 8, !noalias !58687, !nonnull !175, !noundef !175
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.6, i64 720
  %i.aq = add i64 %.sroa.011.014.i.i.i.i.i.i, -8  ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.7 = load ptr, ptr %i.ap, align 8, !noalias !58687, !nonnull !175, !noundef !175 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.j
  %.sroa.05.0.copyload.i.i.i.i.i.i = phi ptr [ %i.x, %bb.j ], [ %.sroa.012.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i, i64 714
  %i.at = load i16, ptr %i.as, align 2, !noalias !58688, !noundef !175
  %.not54 = icmp eq i16 %i.at, 0
  br i1 %.not54, label %.lr.ph.i.i.i.i2.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i2.i.i.i.i:                          ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i", %bb.k
  %.sroa.0.038.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %bb.k ], [ %.sroa.05.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %bb.k ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i" ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 704
  %i.av = load ptr, ptr %i.au, align 8, !noalias !58689, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  %i.aw = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 712
  %i.ay = load i16, ptr %i.ax, align 8, !noalias !58689 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 714
  %i.ba = load i16, ptr %i.az, align 2, !noalias !58688, !noundef !175
  %i.bb = icmp ult i16 %i.ay, %i.ba
  br i1 %i.bb, label %bb.l, label %.lr.ph.i.i.i.i2.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bc = zext i16 %i.ay to i64                   ; 4 uses
  %i.bd = icmp eq i64 %i.aw, 0
  %i.be = add nuw nsw i64 %i.bc, 1                ; 2 uses
  br i1 %i.bd, label %.loopexit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 720
  %i.bg = icmp ult i16 %i.ay, 11
  tail call void @llvm.assume(i1 %i.bg), !noalias !58690
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be ; 2 uses
  %xtraiter122 = and i64 %i.aw, 7                 ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.m, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bi, %.prol.preheader ], [ %i.bh, %bb.m ]
  %.pn28.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.aw, %bb.m ]
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.prol.preheader ], [ 0, %bb.m ]
  %.pn28.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !58691, !nonnull !175, !noundef !175 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.prol, i64 720 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !58590

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.m
  %.pn30.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bh, %bb.m ], [ %i.bi, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.aw, %bb.m ], [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bj = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 7
  br i1 %i.bj, label %.loopexit.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i, align 8, !noalias !58691, !nonnull !175, !noundef !175
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i, i64 720
  %.pn30.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bk, align 8, !noalias !58691, !nonnull !175, !noundef !175
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.1, i64 720
  %.pn30.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bl, align 8, !noalias !58691, !nonnull !175, !noundef !175
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.2, i64 720
  %.pn30.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bm, align 8, !noalias !58691, !nonnull !175, !noundef !175
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.3, i64 720
  %.pn30.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bn, align 8, !noalias !58691, !nonnull !175, !noundef !175
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.4, i64 720
  %.pn30.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bo, align 8, !noalias !58691, !nonnull !175, !noundef !175
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.5, i64 720
  %.pn30.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bp, align 8, !noalias !58691, !nonnull !175, !noundef !175
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.6, i64 720
  %.pn28.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bq, align 8, !noalias !58691, !nonnull !175, !noundef !175 ; 2 uses
  %i.br = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.7, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.7, i64 720
  br i1 %i.br, label %.loopexit.i.i.i.i, label %.new

bb.n:                                             ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i3.i.i.i.i unwind label %bb.o, !noalias !58692

.noexc.i.i3.i.i.i.i:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !58690
  unreachable

.loopexit.i.i.i.i:                                ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i", %bb.l
  %.sroa.0.0.ph.i.i.i.i.i.i.i52 = phi ptr [ %i.av, %bb.l ], [ %.sroa.05.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i" ], [ %i.av, %.new ], [ %i.av, %.prol.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i51 = phi i64 [ %i.bc, %bb.l ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i" ], [ %i.bc, %.new ], [ %i.bc, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.l ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %i.av, %bb.l ], [ %.sroa.05.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i" ], [ %.pn30.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.bu = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i51, 11
  tail call void @llvm.assume(i1 %i.bu), !noalias !58690
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.i.i.i.i.i.i.i52, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i51
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i52, i64 176
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i51 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58693)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.423.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58694)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !58695
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4327)
          to label %.noexc33 unwind label %bb.bd, !noalias !58696

.noexc33:                                         ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !58695
  call void @llvm.experimental.noalias.scope.decl(metadata !58697)
  call void @llvm.experimental.noalias.scope.decl(metadata !58698)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !58699, !noalias !58700, !noundef !175
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc33
  store ptr null, ptr %i.e, align 8, !alias.scope !58697, !noalias !58695
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.cb, align 8, !alias.scope !58697, !noalias !58695
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9440ed245bb70d5aE.exit.i.i.i.i.i.i"

bb.q:                                             ; preds = %.noexc33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !58699, !noalias !58700, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r, !prof !178

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !58699, !noalias !58700, !noundef !175
  invoke fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17hd31799c9e0a6c4ecE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.cd, i64 noundef %i.cf)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9440ed245bb70d5aE.exit.i.i.i.i.i.i" unwind label %bb.t, !noalias !58701

bb.s:                                             ; preds = %bb.q
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6162) #78
          to label %.noexc1.i.i.i.i.i.i.i.i.i unwind label %bb.t, !noalias !58702

.noexc1.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58703)
  call void @llvm.experimental.noalias.scope.decl(metadata !58704)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !174, !alias.scope !58705, !noalias !58695, !noundef !175 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ch, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !58705, !noalias !58695, !nonnull !175, !noundef !175
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !58706
  br label %.body

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9440ed245bb70d5aE.exit.i.i.i.i.i.i": ; preds = %bb.r, %bb.p
  %.sroa.022.0.copyload.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !58707 ; 4 uses
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.423.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.423.0..sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !58707
  %.sroa.423.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.423.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.423.24..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !58707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !58695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !58695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.423.i.i.i.i.i.i, i64 40, i1 false), !noalias !58708
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.423.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h310c350e00fff581E.exit.thread.i.i, label %bb.x

_ZN4core4iter6traits8iterator8Iterator7collect17h310c350e00fff581E.exit.thread.i.i: ; preds = %.thread, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9440ed245bb70d5aE.exit.i.i.i.i.i.i", %bb.i
  store i64 0, ptr %i.i, align 8, !noalias !58709
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8, !noalias !58709
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.ck, align 8, !noalias !58709
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !58686
  br label %bb.av

bb.v:                                             ; preds = %bb.y
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !58710)
  call void @llvm.experimental.noalias.scope.decl(metadata !58711), !noalias !58712
  call void @llvm.experimental.noalias.scope.decl(metadata !58713), !noalias !58712
  call void @llvm.experimental.noalias.scope.decl(metadata !58714), !noalias !58712
  %i.cm = icmp eq i64 %.sroa.022.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.cm, label %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !58715, !noalias !58686, !nonnull !175, !noundef !175
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.022.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !58716
  br label %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i"

"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i": ; preds = %bb.w, %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h38645331da836caeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.cn)
          to label %.body unwind label %bb.au, !noalias !58686

bb.x:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9440ed245bb70d5aE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !58686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) %i.bv, i64 16, i1 false), !noalias !58686
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.022.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !58686
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i.i, i64 40, i1 false), !noalias !58686
  %i.co = call i64 @llvm.uadd.sat.i64(i64 %i.ad, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.co, i64 4) ; 2 uses
  %i.cp = shl i64 %.sroa.0.0.i.i.i.i.i.i.i, 6     ; 3 uses
  %i.cq = icmp ugt i64 %i.co, 288230376151711743
  %i.cr = icmp ugt i64 %i.cp, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.cq, %i.cr
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a: ; preds = %bb.x
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !58717
  %i.cs = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cp, i64 noundef range(i64 1, 9) 8) #77, !noalias !58717 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, %bb.x
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a ], [ 0, %bb.x ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc.i.i.i.i.i.i unwind label %bb.v, !noalias !58686

.noexc.i.i.i.i.i.i:                               ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !58686
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !58686
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !58686
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !58686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !58686
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !58718)
  call void @llvm.experimental.noalias.scope.decl(metadata !58719)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  %i.cu = icmp eq i64 %i.ad, 0
  br i1 %i.cu, label %_ZN4core4iter6traits8iterator8Iterator7collect17h310c350e00fff581E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i18.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i18.i.i.i.i.i.i": ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 714
  %i.cw = load i16, ptr %i.cv, align 2, !noalias !58720, !noundef !175
  %i.cx = zext i16 %i.cw to i64
  %i.cy = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i.i.i, %i.cx
  br i1 %i.cy, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i24.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i18.i.i.i.i.i.i"
  %i.cz = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i24.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i18.i.i.i.i.i.i", %bb.aa
  %.sroa.0.038.i.i.i.i25.i.i.i.i.i.i = phi ptr [ %i.db, %bb.aa ], [ %.sroa.07.0.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i18.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i26.i.i.i.i.i.i = phi i64 [ %i.dc, %bb.aa ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i18.i.i.i.i.i.i" ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i25.i.i.i.i.i.i, i64 704
  %i.db = load ptr, ptr %i.da, align 8, !noalias !58721, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i27.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i27.i.i.i.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i24.i.i.i.i.i.i
  %i.dc = add i64 %.sroa.5.037.i.i.i.i26.i.i.i.i.i.i, 1 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i25.i.i.i.i.i.i, i64 712
  %i.de = load i16, ptr %i.dd, align 8, !noalias !58721 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 714
  %i.dg = load i16, ptr %i.df, align 2, !noalias !58720, !noundef !175
  %i.dh = icmp ult i16 %i.de, %i.dg
  br i1 %i.dh, label %bb.ab, label %.lr.ph.i.i.i.i24.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.di = zext i16 %i.de to i64                   ; 4 uses
  %i.dj = icmp eq i64 %i.dc, 0
  %i.dk = add nuw nsw i64 %i.di, 1                ; 2 uses
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 720
  %i.dm = icmp ult i16 %i.de, 11
  call void @llvm.assume(i1 %i.dm), !noalias !58722
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk ; 2 uses
  %xtraiter129 = and i64 %i.dc, 7                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.prol.loopexit126, label %.prol.preheader125

.prol.preheader125:                               ; preds = %bb.ac, %.prol.preheader125
  %.pn30.in.i.i.i.i32.i.i.i.i.i.i.prol = phi ptr [ %i.do, %.prol.preheader125 ], [ %i.dn, %bb.ac ]
  %.pn28.in.i.i.i.i33.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i34.i.i.i.i.i.i.prol, %.prol.preheader125 ], [ %i.dc, %bb.ac ]
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.prol.preheader125 ], [ 0, %bb.ac ]
  %.pn28.i.i.i.i34.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i33.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i35.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i32.i.i.i.i.i.i.prol, align 8, !noalias !58723, !nonnull !175, !noundef !175 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.prol, i64 720 ; 2 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.prol.loopexit126, label %.prol.preheader125, !llvm.loop !58639

.prol.loopexit126:                                ; preds = %.prol.preheader125, %bb.ac
  %.pn30.i.i.i.i35.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ac ], [ %.pn30.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader125 ]
  %.pn30.in.i.i.i.i32.i.i.i.i.i.i.unr = phi ptr [ %i.dn, %bb.ac ], [ %i.do, %.prol.preheader125 ]
  %.pn28.in.i.i.i.i33.i.i.i.i.i.i.unr = phi i64 [ %i.dc, %bb.ac ], [ %.pn28.i.i.i.i34.i.i.i.i.i.i.prol, %.prol.preheader125 ]
  %i.dp = icmp ult i64 %.sroa.5.037.i.i.i.i26.i.i.i.i.i.i, 7
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new127

.new127:                                          ; preds = %.prol.loopexit126, %.new127
  %.pn30.in.i.i.i.i32.i.i.i.i.i.i = phi ptr [ %i.dy, %.new127 ], [ %.pn30.in.i.i.i.i32.i.i.i.i.i.i.unr, %.prol.loopexit126 ]
  %.pn28.in.i.i.i.i33.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i34.i.i.i.i.i.i.7, %.new127 ], [ %.pn28.in.i.i.i.i33.i.i.i.i.i.i.unr, %.prol.loopexit126 ]
  %.pn30.i.i.i.i35.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i32.i.i.i.i.i.i, align 8, !noalias !58723, !nonnull !175, !noundef !175
  %i.dq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i, i64 720
  %.pn30.i.i.i.i35.i.i.i.i.i.i.1 = load ptr, ptr %i.dq, align 8, !noalias !58723, !nonnull !175, !noundef !175
  %i.dr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.1, i64 720
  %.pn30.i.i.i.i35.i.i.i.i.i.i.2 = load ptr, ptr %i.dr, align 8, !noalias !58723, !nonnull !175, !noundef !175
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.2, i64 720
  %.pn30.i.i.i.i35.i.i.i.i.i.i.3 = load ptr, ptr %i.ds, align 8, !noalias !58723, !nonnull !175, !noundef !175
  %i.dt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.3, i64 720
  %.pn30.i.i.i.i35.i.i.i.i.i.i.4 = load ptr, ptr %i.dt, align 8, !noalias !58723, !nonnull !175, !noundef !175
  %i.du = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.4, i64 720
  %.pn30.i.i.i.i35.i.i.i.i.i.i.5 = load ptr, ptr %i.du, align 8, !noalias !58723, !nonnull !175, !noundef !175
  %i.dv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.5, i64 720
  %.pn30.i.i.i.i35.i.i.i.i.i.i.6 = load ptr, ptr %i.dv, align 8, !noalias !58723, !nonnull !175, !noundef !175
  %i.dw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.6, i64 720
  %.pn28.i.i.i.i34.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i33.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i35.i.i.i.i.i.i.7 = load ptr, ptr %i.dw, align 8, !noalias !58723, !nonnull !175, !noundef !175 ; 2 uses
  %i.dx = icmp eq i64 %.pn28.i.i.i.i34.i.i.i.i.i.i.7, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.7, i64 720
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new127

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i24.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i41.i.i.i.i.i.i unwind label %bb.ae, !noalias !58724

.noexc.i.i41.i.i.i.i.i.i:                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !58722
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.prol.loopexit126, %.new127, %bb.ab, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i31.i.i18.i.i.i.i = phi ptr [ %i.db, %bb.ab ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.db, %.new127 ], [ %i.db, %.prol.loopexit126 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i29.i.i17.i.i.i.i = phi i64 [ %i.di, %bb.ab ], [ %.sroa.7.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.di, %.new127 ], [ %i.di, %.prol.loopexit126 ] ; 3 uses
  %.sroa.7.0.i.i.i37.i.i.i.i.i.i = phi i64 [ %i.dk, %bb.ab ], [ %i.cz, %.thread.i.i.i.i ], [ 0, %.new127 ], [ 0, %.prol.loopexit126 ]
  %.sroa.07.0.i.i.i38.i.i.i.i.i.i = phi ptr [ %i.db, %bb.ab ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i35.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit126 ], [ %.pn30.i.i.i.i35.i.i.i.i.i.i.7, %.new127 ]
  %i.ea = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i17.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ea), !noalias !58722
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.i.i.i31.i.i18.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i17.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i31.i.i18.i.i.i.i, i64 176
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %i.ec, i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i17.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.49.24..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.49.i.i.i.i.i.i.i.i, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.af

bb.af:                                            ; preds = %.noexc7.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ef = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.et, %.noexc7.i.i.i.i.i.i ]
  %i.eg = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ev, %.noexc7.i.i.i.i.i.i ] ; 5 uses
  %.sroa.19.1.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i37.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i ] ; 3 uses
  %.sroa.2511.1.in.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.2511.1.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i ]
  %.sroa.58.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i38.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i ] ; 5 uses
  %i.eh = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gd, %.noexc7.i.i.i.i.i.i ]
  %.pn45.i.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gf, %.noexc7.i.i.i.i.i.i ] ; 5 uses
  %.sroa.2511.1.i.i.i.i.i.i = add i64 %.sroa.2511.1.in.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn45.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !58725)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !58726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58727
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.pn45.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4327)
          to label %.noexc6.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !58728

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58727
  call void @llvm.experimental.noalias.scope.decl(metadata !58729)
  call void @llvm.experimental.noalias.scope.decl(metadata !58730)
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn45.i.i.i.i.i.i, i64 40
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !58731, !noalias !58732, !noundef !175
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc6.i.i.i.i.i.i
  store ptr null, ptr %i.b, align 8, !alias.scope !58729, !noalias !58727
  store i64 0, ptr %i.ee, align 8, !alias.scope !58729, !noalias !58727
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9440ed245bb70d5aE.exit.i.i.i.i.i.i.i.i"

bb.ah:                                            ; preds = %.noexc6.i.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.pn45.i.i.i.i.i.i, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !58731, !noalias !58732, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, label %bb.ai, !prof !178

bb.ai:                                            ; preds = %bb.ah
  %i.en = getelementptr inbounds nuw i8, ptr %.pn45.i.i.i.i.i.i, i64 32
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !58731, !noalias !58732, !noundef !175
  invoke fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17hd31799c9e0a6c4ecE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.em, i64 noundef %i.eo)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9440ed245bb70d5aE.exit.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !58733

bb.aj:                                            ; preds = %bb.ah
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6162) #78
          to label %.noexc1.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !58734

.noexc1.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.aj
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %bb.aj
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58735)
  call void @llvm.experimental.noalias.scope.decl(metadata !58736)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !range !174, !alias.scope !58737, !noalias !58727, !noundef !175 ; 2 uses
  %i.ep = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ep, label %.body.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !58737, !noalias !58727, !nonnull !175, !noundef !175
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !58738
  br label %.body.i.i.i.i.i.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9440ed245bb70d5aE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ai, %bb.ag
  %.sroa.08.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !58739 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !58739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.49.24..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !58739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !58740
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h310c350e00fff581E.exit.i.i, label %bb.al

bb.al:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9440ed245bb70d5aE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.eh, i64 16, i1 false), !noalias !58741
  store i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !58741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !58741
  %i.eq = icmp samesign ult i64 %i.eg, 144115188075855872
  call void @llvm.assume(i1 %i.eq)
  %i.er = load i64, ptr %i.h, align 8, !range !174, !alias.scope !58742, !noalias !58686, !noundef !175
  %i.es = icmp eq i64 %i.eg, %i.er
  br i1 %i.es, label %bb.as, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.al
  %i.et = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.ef, %bb.al ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [64 x i8], ptr %i.et, i64 %i.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !58741
  %i.ev = add nuw nsw i64 %i.eg, 1                ; 2 uses
  store i64 %i.ev, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !58742, !noalias !58686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58741
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  %i.ew = icmp eq i64 %.sroa.2511.1.i.i.i.i.i.i, 0
  br i1 %i.ew, label %_ZN4core4iter6traits8iterator8Iterator7collect17h310c350e00fff581E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.58.1.i.i.i.i.i.i) ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.58.1.i.i.i.i.i.i, i64 714
  %i.ey = load i16, ptr %i.ex, align 2, !noalias !58743, !noundef !175
  %i.ez = zext i16 %i.ey to i64
  %i.fa = icmp ult i64 %.sroa.19.1.i.i.i.i.i.i, %i.ez
  br i1 %i.fa, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i.i.i"
  %i.fb = add nuw nsw i64 %.sroa.19.1.i.i.i.i.i.i, 1
  br label %.noexc7.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i.i.i", %bb.am
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fd, %bb.am ], [ %.sroa.58.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fe, %bb.am ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hf609d2a0996063b5E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 704
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !58744, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fe = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 712
  %i.fg = load i16, ptr %i.ff, align 8, !noalias !58744 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 714
  %i.fi = load i16, ptr %i.fh, align 2, !noalias !58743, !noundef !175
  %i.fj = icmp ult i16 %i.fg, %i.fi
  br i1 %i.fj, label %bb.an, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.fk = zext i16 %i.fg to i64                   ; 4 uses
  %i.fl = icmp eq i64 %i.fe, 0
  %i.fm = add nuw nsw i64 %i.fk, 1                ; 2 uses
  br i1 %i.fl, label %.noexc7.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 720
  %i.fo = icmp ult i16 %i.fg, 11
  call void @llvm.assume(i1 %i.fo), !noalias !58722
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fm ; 2 uses
  %xtraiter136 = and i64 %i.fe, 7                 ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.prol.loopexit133, label %.prol.preheader132

.prol.preheader132:                               ; preds = %bb.ao, %.prol.preheader132
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.fq, %.prol.preheader132 ], [ %i.fp, %bb.ao ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader132 ], [ %i.fe, %bb.ao ]
  %prol.iter138 = phi i64 [ %prol.iter138.next, %.prol.preheader132 ], [ 0, %bb.ao ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !58745, !nonnull !175, !noundef !175 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 720 ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %.prol.loopexit133, label %.prol.preheader132, !llvm.loop !58672

.prol.loopexit133:                                ; preds = %.prol.preheader132, %bb.ao
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ao ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader132 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.fp, %bb.ao ], [ %i.fq, %.prol.preheader132 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.fe, %bb.ao ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader132 ]
  %i.fr = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.fr, label %.noexc7.i.i.i.i.i.i, label %.new134

.new134:                                          ; preds = %.prol.loopexit133, %.new134
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ga, %.new134 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit133 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new134 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit133 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !58745, !nonnull !175, !noundef !175
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.fs, align 8, !noalias !58745, !nonnull !175, !noundef !175
  %i.ft = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ft, align 8, !noalias !58745, !nonnull !175, !noundef !175
  %i.fu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.fu, align 8, !noalias !58745, !nonnull !175, !noundef !175
  %i.fv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.fv, align 8, !noalias !58745, !nonnull !175, !noundef !175
  %i.fw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.fw, align 8, !noalias !58745, !nonnull !175, !noundef !175
  %i.fx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 720
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.fx, align 8, !noalias !58745, !nonnull !175, !noundef !175
  %i.fy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 720
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fy, align 8, !noalias !58745, !nonnull !175, !noundef !175 ; 2 uses
  %i.fz = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 720
  br i1 %i.fz, label %.noexc7.i.i.i.i.i.i, label %.new134

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aq, !noalias !58746

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !58722
  unreachable

.noexc7.i.i.i.i.i.i:                              ; preds = %.prol.loopexit133, %.new134, %bb.an, %.thread.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i44.i.i.i.i.i.i = phi ptr [ %i.fd, %bb.an ], [ %.sroa.58.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.fd, %.new134 ], [ %i.fd, %.prol.loopexit133 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i43.i.i.i.i.i.i = phi i64 [ %i.fk, %bb.an ], [ %.sroa.19.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.fk, %.new134 ], [ %i.fk, %.prol.loopexit133 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fm, %bb.an ], [ %i.fb, %.thread.i.i.i.i.i.i ], [ 0, %.new134 ], [ 0, %.prol.loopexit133 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fd, %bb.an ], [ %.sroa.58.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit133 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new134 ]
  %i.gc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i43.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.gc), !noalias !58722
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.i.i.i44.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i43.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i44.i.i.i.i.i.i, i64 176
  %i.gf = getelementptr inbounds nuw [48 x i8], ptr %i.ge, i64 %.sroa.6.sroa.4.0.ph.i.i.i43.i.i.i.i.i.i
  br label %bb.af

bb.ar:                                            ; preds = %bb.as
end_hunk_8
begin_hunk_9_@_ZN15index_scheduler8Webhooks7get_all17hd7644528e38ed700E:bb.a
          to label %"_ZN4core3ptr168drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$alloc..collections..btree..map..BTreeMap$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$GT$$GT$$GT$17hd7462f049f6a5bd3E.exit" unwind label %bb.bk

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load atomic i8, ptr %i.r monotonic, align 8, !noalias !58858
  %.not77 = icmp eq i8 %i.s, 0
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br i1 %.not77, label %bb.m, label %bb.h, !prof !176

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !58859
  store ptr %.sink.i.i, ptr %i.h, align 8, !noalias !58859
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.t, align 8, !noalias !58859
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @832) #78
          to label %bb.k unwind label %bb.i, !noalias !58860

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58861)
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !58861, !noalias !58860, !nonnull !175, !align !278, !noundef !175 ; 2 uses
  %i.v = atomicrmw add ptr %.val.i, i32 -1 release, align 4, !noalias !58862
  %i.w = add i32 %i.v, -1                         ; 2 uses
  %i.x = and i32 %i.w, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.x, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.j, label %.body, !prof !233

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val.i, i32 noundef %i.w)
          to label %.body unwind label %bb.l, !noalias !58862

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !58860
  unreachable

bb.m:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %.sink.i.i, align 8, !noundef !175 ; 3 uses
  %.not47 = icmp eq ptr %i.z, null
  br i1 %.not47, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load <2 x i64>, ptr %i.aa, align 8
  br label %bb.q

bb.o:                                             ; preds = %bb.bf, %bb.ba, %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %.body.i.i.i.i.i.i, %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i", %bb.ax, %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i", %bb.bg, %bb.o
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %.pn.ph.i.i.i.i.i.i, %bb.ax ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i" ], [ %i.da, %bb.bg ] ; 2 uses
  %i.ad = atomicrmw add ptr %i.l, i32 -1 release, align 4
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  %i.af = and i32 %i.ae, -1073741825
  %or.cond.not.i.i = icmp eq i32 %i.af, -2147483648
  br i1 %or.cond.not.i.i, label %bb.p, label %"_ZN4core3ptr168drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$alloc..collections..btree..map..BTreeMap$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$GT$$GT$$GT$17hd7462f049f6a5bd3E.exit", !prof !233

bb.p:                                             ; preds = %.body53
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.l, i32 noundef %i.ae)
          to label %"_ZN4core3ptr168drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$alloc..collections..btree..map..BTreeMap$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$GT$$GT$$GT$17hd7462f049f6a5bd3E.exit" unwind label %bb.bk

bb.q:                                             ; preds = %bb.n, %bb.m
  %.sroa.05.sroa.0.0 = phi i64 [ 1, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ag = phi <2 x i64> [ %i.ab, %bb.n ], [ <i64 undef, i64 0>, %bb.m ] ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !58863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !58866
  store i64 %.sroa.05.sroa.0.0, ptr %i.f, align 8, !alias.scope !58867, !noalias !58868
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.463.0..sroa_idx, align 8, !alias.scope !58867, !noalias !58868
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.z, ptr %.sroa.564.0..sroa_idx, align 8, !alias.scope !58867, !noalias !58868
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ah = extractelement <2 x i64> %i.ag, i64 0
  store i64 %i.ah, ptr %.sroa.665.0..sroa_idx, align 8, !alias.scope !58867, !noalias !58868
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.766.0..sroa_idx, align 8, !alias.scope !58867, !noalias !58868
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.867.0..sroa_idx, align 8, !alias.scope !58867, !noalias !58868
  %.sroa.968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.z, ptr %.sroa.968.0..sroa_idx, align 8, !alias.scope !58867, !noalias !58868
  %.sroa.1069.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.1170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  store <2 x i64> %i.ag, ptr %.sroa.1069.0..sroa_idx, align 8, !alias.scope !58867, !noalias !58868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58870)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !58872
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h306e100f1053b554E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.f)
          to label %bb.s unwind label %bb.r, !noalias !58873

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !range !202, !alias.scope !58874, !noalias !58875
  br label %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i"

bb.s:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !201, !noalias !58872, !noundef !175 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.am = load i64, ptr %i.al, align 8, !range !202, !alias.scope !58876, !noalias !58863, !noundef !175 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, -9223372036854775807
  %i.an = load i64, ptr %i.f, align 8, !range !190, !alias.scope !58876, !noalias !58863, !noundef !175
  %.not7.i.i.i.i.i.i.i = icmp eq i64 %i.an, 2     ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = icmp ne i64 %i.am, -9223372036854775808
  %i.ap = zext i1 %i.ao to i64                    ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.ad, label %bb.w

bb.v:                                             ; preds = %bb.t
  %.val10.i.i.i.i.i.i.i = load i64, ptr %.sroa.1170.0..sroa_idx, align 8
  %spec.select = select i1 %.not7.i.i.i.i.i.i.i, i64 0, i64 %.val10.i.i.i.i.i.i.i
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.1170.0..sroa_idx, align 8, !alias.scope !58876, !noalias !58863, !noundef !175
  %i.aq = tail call i64 @llvm.uadd.sat.i64(i64 %i.ap, i64 %.val.i.i.i.i.i.i.i)
  br label %bb.ad

bb.x:                                             ; preds = %bb.s
  store i64 0, ptr %i.g, align 8, !noalias !58877
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8, !noalias !58877
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.as, align 8, !noalias !58877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !58872
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58879)
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.au = load i64, ptr %i.at, align 8, !range !202, !alias.scope !58880, !noalias !58863, !noundef !175 ; 4 uses
  %i.av = icmp eq i64 %i.au, -9223372036854775807
  br i1 %i.av, label %_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58883)
  %i.aw = icmp eq i64 %i.au, -9223372036854775808
  br i1 %i.aw, label %_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58887)
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !58888, !noalias !58863, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !58889
  br label %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aa, %bb.z
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h38645331da836caeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.az)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.thread.i.i unwind label %bb.o, !noalias !58873

bb.ab:                                            ; preds = %bb.ae
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58891), !noalias !58892
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58893), !noalias !58892
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58894), !noalias !58892
  %i.bb = icmp eq i64 %i.ak, 0
  br i1 %i.bb, label %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !58895, !noalias !58872, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !58896
  br label %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i"

"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i": ; preds = %bb.ac, %bb.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h38645331da836caeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bd)
          to label %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i" unwind label %bb.aw, !noalias !58872

bb.ad:                                            ; preds = %bb.v, %bb.w, %bb.u
  %.sink18.i.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.w ], [ %spec.select, %bb.v ], [ %i.ap, %bb.u ]
  %i.be = tail call i64 @llvm.uadd.sat.i64(i64 %.sink18.i.i.i.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.be, i64 4) ; 2 uses
  %i.bf = shl i64 %.sroa.0.0.i.i.i.i.i.i.i, 6     ; 3 uses
  %i.bg = icmp ugt i64 %i.be, 288230376151711743
  %i.bh = icmp ugt i64 %i.bf, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.bg, %i.bh
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a: ; preds = %bb.ad
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !58897
  %i.bi = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bf, i64 noundef range(i64 1, 9) 8) #77, !noalias !58897 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a, %bb.ad
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a ], [ 0, %bb.ad ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ab, !noalias !58872

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !58872
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !58872
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !58872
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !58872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false), !noalias !58873
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58902
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i.i.i.i.i.i.i", %bb.af
  %i.bn = phi ptr [ %i.cf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i.i.i.i.i.i.i" ], [ %i.bi, %bb.af ]
  %i.bo = phi i64 [ %i.ch, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.af ] ; 5 uses
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h306e100f1053b554E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.c)
          to label %bb.aj unwind label %bb.ai, !noalias !58903

bb.ah:                                            ; preds = %bb.at, %bb.ai
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ci, %bb.at ], [ %i.bp, %bb.ai ]
  invoke fastcc void @"_ZN4core3ptr350drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..option..IntoIter$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$$C$core..iter..adapters..map..Map$LT$alloc..collections..btree..map..Iter$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$GT$$C$index_scheduler..Webhooks..get_all..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc2f9a0dfee9fed7eE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.c) #79
          to label %.body.i.i.i.i.i.i unwind label %bb.au, !noalias !58903

bb.ai:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ag
  %i.bq = load i64, ptr %i.bk, align 8, !range !201, !noalias !58904, !noundef !175
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bq, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.br = icmp samesign ult i64 %i.bo, 144115188075855872
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = load i64, ptr %i.e, align 8, !range !174, !alias.scope !58905, !noalias !58872, !noundef !175
  %i.bt = icmp eq i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.ap, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58907)
  %i.bu = load i64, ptr %i.bl, align 8, !range !202, !alias.scope !58908, !noalias !58872, !noundef !175 ; 4 uses
  %i.bv = icmp eq i64 %i.bu, -9223372036854775807
  br i1 %i.bv, label %_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58911)
  %i.bw = icmp eq i64 %i.bu, -9223372036854775808
  br i1 %i.bw, label %_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58915)
  %i.bx = icmp eq i64 %i.bu, 0
  br i1 %i.bx, label %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !58916, !noalias !58872, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !58917
  br label %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ao, %bb.an
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h38645331da836caeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bz)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.i.i unwind label %bb.av, !noalias !58903

bb.ap:                                            ; preds = %bb.ak
  %i.ca = load i64, ptr %i.bl, align 8, !range !202, !alias.scope !58918, !noalias !58872, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ca, -9223372036854775807
  %i.cb = load i64, ptr %i.c, align 8, !range !190, !alias.scope !58918, !noalias !58872, !noundef !175
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cb, 2 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cc = icmp ne i64 %i.ca, -9223372036854775808
  %i.cd = zext i1 %i.cc to i64                    ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i.i.i.i.i.i.i", label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %.val10.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !alias.scope !58919, !noalias !58872
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.not7.i.i.i.i.i.i.i.i.i, i64 0, i64 %.val10.i.i.i.i.i.i.i.i.i
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i.i.i.i.i.i.i"

bb.as:                                            ; preds = %bb.aq
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !alias.scope !58918, !noalias !58872, !noundef !175
  %i.ce = tail call i64 @llvm.uadd.sat.i64(i64 %i.cd, i64 %.val.i.i.i.i.i.i.i.i.i)
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ak
  %i.cf = phi ptr [ %.pre.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.bn, %bb.ak ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.cf, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !58904
  %i.ch = add nuw nsw i64 %i.bo, 1                ; 2 uses
  store i64 %i.ch, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !58905, !noalias !58872
  br label %bb.ag

bb.at:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i.i.i.i.i.i.i"
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #79
          to label %bb.ah unwind label %bb.au, !noalias !58904

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.as, %bb.ar, %bb.aq
  %.sink18.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.as ], [ %spec.select.i.i.i.i.i.i.i.i, %bb.ar ], [ %i.cd, %bb.aq ]
  %i.cj = tail call i64 @llvm.uadd.sat.i64(i64 %.sink18.i.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bo, i64 noundef range(i64 1, 0) %i.cj, i64 noundef 8, i64 noundef 64)
          to label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.at, !noalias !58920

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17haa8445ceeb6ea93bE.exit.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !58905, !noalias !58872
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h66fd0a104b85a733E.exit.i.i.i.i.i.i.i.i"

bb.au:                                            ; preds = %bb.at, %bb.ah
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !58904
  unreachable

bb.av:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.av, %bb.ah
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cl, %bb.av ], [ %.pn.i.i.i.i.i.i.i.i, %bb.ah ]
  invoke fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..vec..Vec$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$$GT$17he4ed94f1b1c5ab05E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #79
          to label %.body53 unwind label %bb.aw, !noalias !58872

bb.aw:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i", %.body.i.i.i.i.i.i, %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i"
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !58872
  unreachable

"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i", %bb.r
  %i.cn = phi i64 [ %.pre.i.i.i.i.i, %bb.r ], [ %i.am, %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i" ] ; 4 uses
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.ba, %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17h8f9d3c2b0370e745E.exit.i.i.i.i.i.i" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58922), !noalias !58923
  %i.co = icmp eq i64 %i.cn, -9223372036854775807
  br i1 %i.co, label %.body53, label %bb.ax

bb.ax:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58924), !noalias !58923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58925), !noalias !58923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58926), !noalias !58923
  %i.cp = icmp eq i64 %i.cn, -9223372036854775808
  br i1 %i.cp, label %.body53, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58927), !noalias !58923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58928), !noalias !58923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58929), !noalias !58923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58930), !noalias !58923
  %i.cq = icmp eq i64 %i.cn, 0
  br i1 %i.cq, label %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !58931, !noalias !58875, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !58932
  br label %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.az, %bb.ay
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h38645331da836caeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.cs)
          to label %.body53 unwind label %bb.aw, !noalias !58873

_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.thread.i.i: ; preds = %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !58863
  br label %bb.ba

_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.i.i: ; preds = %"_ZN4core3ptr78drop_in_place$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$17h06c2dc577d24fdccE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !58877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !58872
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !58877 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !58863
  %i.ct = icmp ult i64 %.pre.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp eq i64 %.pre.i.i, 0
  br i1 %i.cu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.thread.i.i
  store ptr null, ptr %0, align 8, !alias.scope !58933
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cv, align 8, !alias.scope !58933
  invoke fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..vec..Vec$LT$$LP$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$RP$$GT$$GT$17he4ed94f1b1c5ab05E"(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.bi unwind label %bb.o, !noalias !58877

bb.bb:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h044ce97021c0f99eE.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !58877, !nonnull !175, !noundef !175 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58934
  %i.cy = icmp eq i64 %.pre.i.i, 1
  br i1 %i.cy, label %bb.bf, label %bb.bc, !prof !176

bb.bc:                                            ; preds = %bb.bb
  %i.cz = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.cz, label %bb.be, label %bb.bd, !prof !176

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hc4cc7ec8d6b6fd82E(ptr noalias noundef nonnull align 8 %i.cx, i64 noundef range(i64 1, 144115188075855872) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
end_hunk_9
begin_hunk_10_@_ZN4core4iter6traits8iterator8Iterator7collect17h3f1e1981b0bd61a2E:bb.a
  store i64 %i.bi, ptr %i.as, align 8, !alias.scope !133546, !noalias !133520
  store i64 %.lcssa25.i.i.i, ptr %i.an, align 8, !alias.scope !133546, !noalias !133520
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.loopexit.i.i.i", %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133562)
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i"
  %.sroa.0.0.idx12.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i" ], [ %.sroa.0.0.add.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i" ], [ %i.bs, %.backedge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.idx12.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.add.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.bs = add nuw nsw i64 %.sroa.7.011.i.i.i.i.i.i.i.i.i.i, 1
  %i.bt = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !133563, !noalias !133520, !noundef !175 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.backedge.i.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = shl nuw i64 1, %.sroa.7.011.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$$GT$$GT$$u5d$$GT$$GT$17h3f27633269171dffE"(ptr nonnull %i.bt, i64 %i.bv)
          to label %.backedge.i.i.i.i.i.i.i.i.i.i unwind label %bb.q, !noalias !133564

.backedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.m, %bb.l
  %i.bw = icmp eq i64 %.sroa.0.0.add.i.i.i.i.i.i.i.i.i.i, 504
  br i1 %i.bw, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h93a7f04ed0b13419E.exit.i.i.i", label %bb.l

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i_crit_edge.i.i.i", %bb.k
  %i.bx = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i_crit_edge.i.i.i" ], [ %i.au, %bb.k ] ; 2 uses
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.bx, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.by, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false), !noalias !133556
  %i.bz = add nuw nsw i64 %i.av, 1                ; 2 uses
  store i64 %i.bz, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !133557, !noalias !133520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133556
  %i.ca = icmp eq i64 %i.ap, %i.bn
  br i1 %i.ca, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.loopexit.i.i.i", label %.preheader1.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bi, ptr %i.as, align 8, !alias.scope !133546, !noalias !133520
  store i64 %i.bn, ptr %i.an, align 8, !alias.scope !133546, !noalias !133520
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef align 8 dereferenceable(120) %i.a) #79
          to label %bb.j unwind label %bb.p, !noalias !133556

bb.o:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.av, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 120)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i_crit_edge.i.i.i" unwind label %bb.n, !noalias !133565

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i_crit_edge.i.i.i": ; preds = %bb.o
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !133557, !noalias !133520
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n, %bb.j
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !133556
  unreachable

bb.q:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.q, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.q ], [ %i.cb, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..BalancedCaches$GT$$GT$17h86f945696c8a4860E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #79
          to label %bb.s unwind label %bb.r, !noalias !133520

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h93a7f04ed0b13419E.exit.i.i.i": ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !133520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !133566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !133520
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5f0e38647433d4ceE.exit"

bb.r:                                             ; preds = %bb.t, %.body.i.i.i, %bb.e
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !133520
  unreachable

bb.s:                                             ; preds = %bb.t, %.body.i.i.i
  %.pn6.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %.pn6.i.i.i

bb.t:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr278drop_in_place$LT$core..iter..adapters..map..Map$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$$GT$$C$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$..into_inner$GT$$GT$17h0647ec977f7b8450E"(ptr noalias noundef nonnull align 8 dereferenceable(544) %i.e) #79
          to label %bb.s unwind label %bb.r, !noalias !133540

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5f0e38647433d4ceE.exit": ; preds = %.backedge.i.i.i.i.i.i.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h93a7f04ed0b13419E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !133514
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h43c93916fef242f6E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !133685 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133686)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !133687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !133688, !noalias !133686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133692)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !133693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !133694
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !133695

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !noalias !133694, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !133694
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.sroa.22.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !133694, !nonnull !175, !align !182, !noundef !175
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !133694, !noundef !175 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !133694
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = icmp eq i64 %i.n, 0                      ; 2 uses
  br i1 %i.p, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !133696
  %i.q = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 1) #77, !noalias !133696 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #78
          to label %.noexc5.i.i.i unwind label %bb.e, !noalias !133697

.noexc5.i.i.i:                                    ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.f:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !133694
  store i64 0, ptr %0, align 8, !alias.scope !133698
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !alias.scope !133698
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.u, align 8, !alias.scope !133698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !133693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !133699
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !133700
  %i.v = load ptr, ptr %i.e, align 8, !noalias !133699, !noundef !175
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not3.i.i.i.i.i.i.i, label %"_ZN4core3ptr174drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$$RF$str$GT$$C$$LT$str$u20$as$u20$alloc..string..ToString$GT$..to_string$GT$$GT$17h4d2d32196d313fb3E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !133699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !133699
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !133700
  %i.w = load ptr, ptr %i.e, align 8, !noalias !133699, !noundef !175
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr174drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$$RF$str$GT$$C$$LT$str$u20$as$u20$alloc..string..ToString$GT$..to_string$GT$$GT$17h4d2d32196d313fb3E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr174drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$$RF$str$GT$$C$$LT$str$u20$as$u20$alloc..string..ToString$GT$..to_string$GT$$GT$17h4d2d32196d313fb3E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !133699
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h4d8c7b27433b61f8E.exit"

bb.g:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.p, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !133701
  br label %bb.x

bb.i:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.n, i1 false), !noalias !133702
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.val.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !133703, !noalias !133687, !noundef !175
  %i.z = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.z, i64 4) ; 3 uses
  %i.aa = mul i64 %.sroa.0.0.i.i.i.i, 24          ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.z, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !133704
  %i.ac = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aa, i64 noundef range(i64 1, 9) 8) #77, !noalias !133704 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc6.i.i.i unwind label %bb.g, !noalias !133693

.noexc6.i.i.i:                                    ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ac, %bb.j ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.j ] ; 2 uses
  %i.ae = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.ae)
  store i64 %i.n, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !133693
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !133693
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %i.n, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !133693
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.h, align 8, !noalias !133693
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !133693
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !133693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !133693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !133700
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133708)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  br label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i", %bb.l
  %i.ag = phi ptr [ %i.ay, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.l ]
  %i.ah = phi i64 [ %i.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i" ], [ 1, %bb.l ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !133709
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !133710

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  %i.ai = load ptr, ptr %i.d, align 8, !noalias !133709, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.noexc.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !133709
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !133709, !nonnull !175, !align !182, !noundef !175
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !133709, !noundef !175 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !133709
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ao = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ao, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !133711
  %i.ap = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.am, i64 noundef range(i64 1, 9) 1) #77, !noalias !133711 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #78
          to label %.noexc4.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !133712

.noexc4.i.i.i.i.i:                                ; preds = %bb.p
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i": ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %bb.s
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.t ], [ %i.bb, %bb.s ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !133713
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !133714

.noexc.i.i.i.i:                                   ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i"
  %i.ar = load ptr, ptr %i.b, align 8, !noalias !133713, !noundef !175
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.body.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i, %.noexc2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !133713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !133713
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc2.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !133714

.noexc2.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.as = load ptr, ptr %i.b, align 8, !noalias !133713, !noundef !175
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %.body.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i"

bb.q:                                             ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.o ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.ak, i64 %i.am, i1 false), !noalias !133715
  %i.at = icmp samesign ult i64 %i.ah, 384307168202282326
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i64, ptr %i.h, align 8, !range !174, !alias.scope !133716, !noalias !133693, !noundef !175
  %i.av = icmp eq i64 %i.ah, %i.au
  br i1 %i.av, label %bb.u, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i"

bb.r:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !133709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !133717
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !133714

.noexc8.i.i.i:                                    ; preds = %bb.r
  %i.aw = load ptr, ptr %i.c, align 8, !noalias !133717, !noundef !175
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %.loopexit16.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc8.i.i.i, %.noexc9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !133717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !133717
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !133714

.noexc9.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ax = load ptr, ptr %i.c, align 8, !noalias !133717, !noundef !175
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit16.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i", %bb.q
  %i.ay = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i" ], [ %i.ag, %bb.q ] ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ah ; 3 uses
  store i64 %i.am, ptr %i.az, align 8, !noalias !133718
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !133718
  %.sroa.57.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.am, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !noalias !133718
  %i.ba = add nuw nsw i64 %i.ah, 1                ; 2 uses
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !133716, !noalias !133693
  br label %bb.m

bb.s:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ao, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !133719
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i"

bb.u:                                             ; preds = %bb.q
  %.val.i.i7.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !133720, !noalias !133693, !noundef !175
  %i.bc = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i7.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ah, i64 noundef %i.bc, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i" unwind label %bb.s, !noalias !133721

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i": ; preds = %bb.u
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !133716, !noalias !133693
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i"
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !133718
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.r
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  %.val.i331.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !133722, !noalias !133693, !nonnull !175, !noundef !175
  br label %.lr.ph.i.i.i.preheader.i.i

.body.i.i.i:                                      ; preds = %.noexc2.i.i.i.i, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !133713
  %.val1.i.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !133723, !noalias !133693 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133723)
  %.val.i3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !133723, !noalias !133693, !nonnull !175, !noundef !175 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133724), !noalias !133725
  %i.bd = icmp eq i64 %.val1.i.pre.i.i, 0
  br i1 %i.bd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b4986a54636c755E.exit.i.i.i", label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %.body.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val.i335.i.i = phi ptr [ %.val.i331.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.val.i3.i.i, %.body.i.i.i ] ; 2 uses
  %eh.lpad-body.i33.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i.i.i, %.body.i.i.i ]
  %.val1.i32.i.i = phi i64 [ %i.ah, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.val1.i.pre.i.i, %.body.i.i.i ]
  br label %.lr.ph.i.i.i.i.i
end_hunk_10
begin_hunk_11_@_ZN4core4iter6traits8iterator8Iterator7collect17ha6abf9ca3b45a765E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !133953
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub nuw i64 %i.f, %i.g                   ; 4 uses
  %i.i = udiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.j, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = icmp eq ptr %2, %1
  br i1 %i.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.thread.i.i.i", label %bb.b

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store i64 0, ptr %i.e, align 8, !noalias !133953
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !133953
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9ddd592edcc145d7E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !133954
  %i.n = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 8) #77, !noalias !133954 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78, !noalias !133953
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.i, ptr %i.e, align 8, !noalias !133953
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !133953
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133956)
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.val20.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.f ], [ 0, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.val20.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !133957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !133957
  store ptr %i.r, ptr %i.c, align 8, !noalias !133958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !133958
  store ptr %i.c, ptr %i.b, align 8, !noalias !133958
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h661c464c7df232c4E", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !133958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133959
  store ptr @3742, ptr %i.a, align 8, !noalias !133960
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !133960
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !133960
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !133960
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !133960
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.f unwind label %.body.i.i.i, !noalias !133961

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !133958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !133957
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.val20.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !133962
  %i.t = add i64 %.val20.i.i.i.i.i.i.i.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !133957
  %i.u = icmp eq i64 %i.t, %i.i
  br i1 %i.u, label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9ddd592edcc145d7E.exit", label %bb.e

.body.i.i.i:                                      ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i, ptr %i.q, align 8, !alias.scope !133963, !noalias !133964
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h2802354c394a855dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #79, !noalias !133953
  resume { ptr, i32 } %i.v

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9ddd592edcc145d7E.exit": ; preds = %bb.f, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.thread.i.i.i"
  %i.w = phi ptr [ %i.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.thread.i.i.i" ], [ %i.q, %bb.f ]
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.thread.i.i.i" ], [ %i.i, %bb.f ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.w, align 8, !alias.scope !133963, !noalias !133964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !133953
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hae8211f9a84f3972E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !134073 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134074)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !134075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !134076, !noalias !134074
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134080)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !134081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !134082
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h876e38b78aedb039E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !134083

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !noalias !134082, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.thread.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.thread.i.i.i.i.i": ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !134082
  br label %bb.f

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.i.i.i.i.i": ; preds = %.noexc.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !134082
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.22.0.copyload.i.i.i.i.i.i ; 3 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !134084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !134082
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.i.i.i.i.i"
  %.sroa.5.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !134085, !nonnull !175, !noundef !175
  %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.5.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !134085 ; 8 uses
  %i.l = icmp slt i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i, 0
  br i1 %i.l, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = icmp eq i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i, 0 ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !134086
  %i.n = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.5.sroa.5.0.copyload.i.i.i.i, i64 noundef range(i64 1, 9) 1) #77, !noalias !134086 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #78
          to label %.noexc5.i.i.i unwind label %bb.e, !noalias !134087

.noexc5.i.i.i:                                    ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.f:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.thread.i.i.i.i.i"
  store i64 0, ptr %0, align 8, !alias.scope !134088
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !134088
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.r, align 8, !alias.scope !134088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !134081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !134089
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h876e38b78aedb039E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !134090
  %i.s = load ptr, ptr %i.e, align 8, !noalias !134089, !noundef !175
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not3.i.i.i.i.i.i.i, label %"_ZN4core3ptr270drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$C$index_scheduler..scheduler..process_batch..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..process_batch..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he19e9edd58579210E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !134089
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h876e38b78aedb039E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !134090
  %i.t = load ptr, ptr %i.e, align 8, !noalias !134089, !noundef !175
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr270drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$C$index_scheduler..scheduler..process_batch..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..process_batch..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he19e9edd58579210E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr270drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$$LP$$RF$str$C$$RF$str$RP$$GT$$C$index_scheduler..scheduler..process_batch..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..process_batch..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he19e9edd58579210E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134089
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h177bbe976c0fe701E.exit"

bb.g:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.m, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.5.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !134091
  br label %bb.w

bb.i:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.5.sroa.4.0.copyload.i.i.i.i, i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i, i1 false), !noalias !134092
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.val.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !134093, !noalias !134075, !noundef !175
  %i.w = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.w, i64 4) ; 3 uses
  %i.x = mul i64 %.sroa.0.0.i.i.i.i, 24           ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.w, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.i
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !134094
  %i.z = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.x, i64 noundef range(i64 1, 9) 8) #77, !noalias !134094 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc6.i.i.i unwind label %bb.g, !noalias !134081

.noexc6.i.i.i:                                    ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.z, %bb.j ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.j ] ; 2 uses
  %i.ab = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.ab)
  store i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !134081
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !134081
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !134081
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.h, align 8, !noalias !134081
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !134081
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !134081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !134081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !134090
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134098)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  br label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i", %bb.l
  %i.ad = phi ptr [ %i.as, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.l ]
  %i.ae = phi i64 [ %i.au, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i" ], [ 1, %bb.l ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !134099
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h876e38b78aedb039E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !134100

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  %i.af = load ptr, ptr %i.d, align 8, !noalias !134099, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.thread.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !134099
  br label %.loopexit12.i.i.i.i.i

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !134099
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !134101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !134099
  %.not.i.i.i.i7.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i7.i.i.i, label %.loopexit12.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.i.i.i.i.i.i.i"
  %.sroa.5.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !134102, !nonnull !175, !noundef !175
  %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.5.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !134102 ; 8 uses
  %i.ah = icmp slt i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ai = icmp eq i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.ai, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !134103
  %i.aj = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.5.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #77, !noalias !134103 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #78
          to label %.noexc4.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !134104

.noexc4.i.i.i.i.i:                                ; preds = %bb.p
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i": ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.r
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.av, %bb.r ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !134105
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h876e38b78aedb039E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !134106

.noexc.i.i.i.i:                                   ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i"
  %i.al = load ptr, ptr %i.b, align 8, !noalias !134105, !noundef !175
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.body.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i, %.noexc2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !134105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !134105
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h876e38b78aedb039E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc2.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !134106

.noexc2.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.am = load ptr, ptr %i.b, align 8, !noalias !134105, !noundef !175
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %.body.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i"

bb.q:                                             ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.o ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i, i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i.i.i, i1 false), !noalias !134107
  %i.an = icmp samesign ult i64 %i.ae, 384307168202282326
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = load i64, ptr %i.h, align 8, !range !174, !alias.scope !134108, !noalias !134081, !noundef !175
  %i.ap = icmp eq i64 %i.ae, %i.ao
  br i1 %i.ap, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i"

.loopexit12.i.i.i.i.i:                            ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8eb6f23fc29a34d4E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134109
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h876e38b78aedb039E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !134106

.noexc9.i.i.i:                                    ; preds = %.loopexit12.i.i.i.i.i
  %i.aq = load ptr, ptr %i.c, align 8, !noalias !134109, !noundef !175
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %.loopexit16.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc9.i.i.i, %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134109
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h876e38b78aedb039E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !134106

.noexc10.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ar = load ptr, ptr %i.c, align 8, !noalias !134109, !noundef !175
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit16.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i", %bb.q
  %i.as = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i" ], [ %i.ad, %bb.q ] ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ae ; 3 uses
  store i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i.i.i, ptr %i.at, align 8, !noalias !134110
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !134110
  %.sroa.57.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.sroa.5.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !noalias !134110
  %i.au = add nuw nsw i64 %i.ae, 1                ; 2 uses
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !134108, !noalias !134081
  br label %bb.m

bb.r:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ai, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !134111
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i"

bb.t:                                             ; preds = %bb.q
  %.val.i.i8.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !134112, !noalias !134081, !noundef !175
  %i.aw = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i8.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ae, i64 noundef %i.aw, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i" unwind label %bb.r, !noalias !134113

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i": ; preds = %bb.t
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !134108, !noalias !134081
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i"
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !134110
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.loopexit12.i.i.i.i.i
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  %.val.i327.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !134114, !noalias !134081, !nonnull !175, !noundef !175
  br label %.lr.ph.i.i.i.preheader.i.i

.body.i.i.i:                                      ; preds = %.noexc2.i.i.i.i, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !134105
  %.val1.i.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !134115, !noalias !134081 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134115)
  %.val.i3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !134115, !noalias !134081, !nonnull !175, !noundef !175 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN4core4iter6traits8iterator8Iterator7collect17hb5bc59ff1ce47864E:bb.a
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !134300
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !134301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !134299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !134298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !134297
  %.pr.i.i.i = load i64, ptr %i.j, align 8, !noalias !134295 ; 4 uses
  %.not.i.i.i = icmp eq i64 %.pr.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.thread.i.i.i"
  store i64 0, ptr %0, align 8, !alias.scope !134295
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !alias.scope !134295
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.n, align 8, !alias.scope !134295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !134295
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd6e6f49b218c6f6fE.exit"

bb.c:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !134302
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.i.i.i"
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !134295 ; 3 uses
  %.sroa.6.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx6.i.i.i, align 8, !noalias !134295
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !134303
  %i.q = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #77, !noalias !134303 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !134295

.noexc.i.i.i:                                     ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  store i64 %.pr.i.i.i, ptr %i.q, align 8, !noalias !134295
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !134295
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !noalias !134295
  store i64 4, ptr %i.k, align 8, !noalias !134295
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !134295
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !134295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !134295
  call void @llvm.experimental.noalias.scope.decl(metadata !134304)
  call void @llvm.experimental.noalias.scope.decl(metadata !134305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !134306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !134307
  %.not.i.i14.i.i.i.i.i = icmp eq i8 %i.l, 18
  br i1 %.not.i.i14.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.thread.i.i.i.i.i", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.lr.ph.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.lr.ph.i.i.i.i.i": ; preds = %bb.g
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.thread.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !134308
  br label %.loopexit.i.i.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.lr.ph.i.i.i.i.i"
  %i.s = phi ptr [ %i.q, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.lr.ph.i.i.i.i.i" ], [ %i.y, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i" ]
  %i.t = phi i64 [ 1, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.lr.ph.i.i.i.i.i" ], [ %i.aa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i" ] ; 5 uses
  %.sroa.0.015.i.i.i.i.i = phi i8 [ %i.l, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.lr.ph.i.i.i.i.i" ], [ %i.u, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i" ] ; 2 uses
  store i8 %.sroa.0.015.i.i.i.i.i, ptr %i.d, align 1, !noalias !134308
  %i.u = invoke noundef i8 @"_ZN17meilisearch_types5tasks1_84_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..tasks..Kind$GT$4next17hfeb1f1a1f4d93de9E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.d)
          to label %.noexc8.i.i.i unwind label %bb.l, !noalias !134308 ; 2 uses

.noexc8.i.i.i:                                    ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !134308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134309
  store i8 %.sroa.0.015.i.i.i.i.i, ptr %i.c, align 1, !noalias !134310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !134310
  store ptr %i.c, ptr %i.b, align 8, !noalias !134310
  store ptr @"_ZN69_$LT$meilisearch_types..tasks..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h354407912aded25eE", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !134310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134311
  store ptr @3742, ptr %i.a, align 8, !noalias !134312
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !134312
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !134312
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !134312
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !134312
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc9.i.i.i unwind label %bb.l, !noalias !134313

.noexc9.i.i.i:                                    ; preds = %.noexc8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !134310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134309
  %.pr.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !134306 ; 4 uses
  %.not.i.i7.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i7.i.i.i, label %.loopexit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.noexc9.i.i.i
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i5.i.i.i, align 8, !noalias !134306 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i6.i.i.i, align 8, !noalias !134306
  %i.v = icmp samesign ult i64 %i.t, 384307168202282326
  call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.k, align 8, !range !174, !alias.scope !134314, !noalias !134295, !noundef !175
  %i.x = icmp eq i64 %i.t, %i.w
  br i1 %i.x, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i", %bb.h
  %i.y = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i" ], [ %i.s, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.t ; 3 uses
  store i64 %.pr.i.i.i.i.i, ptr %i.z, align 8, !noalias !134306
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i, align 8, !noalias !134306
  %.sroa.510.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !noalias !134306
  %i.aa = add nuw nsw i64 %i.t, 1                 ; 2 uses
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !134314, !noalias !134295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !134306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !134315
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.u, 18
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.thread.i.i.i.i.i", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.i.i.i.i.i"

bb.i:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.ac, label %.body.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !134316
  br label %.body.i.i.i

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.t, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i" unwind label %bb.i, !noalias !134295

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i_crit_edge.i.i.i": ; preds = %bb.k
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !134314, !noalias !134295
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h681b8874b6f06751E.exit.i.i.i.i.i"

bb.l:                                             ; preds = %.noexc8.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.i.i.i.i.i"
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.l, %bb.j, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ]
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h2802354c394a855dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #79, !noalias !134295
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i"

.loopexit.i.i.i:                                  ; preds = %.noexc9.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h824a0906ed810cafE.exit.thread.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd6e6f49b218c6f6fE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i": ; preds = %.body.i.i.i, %bb.d, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.o, %bb.c ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %.pn.i.i.i

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd6e6f49b218c6f6fE.exit": ; preds = %bb.b, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !134295
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17he270e56d1cb1fe1cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !134398 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.71.0.copyload = load i64, ptr %.sroa.71.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134401)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134402
  %i.b = icmp eq i64 %.sroa.71.0.copyload, 0
  br i1 %i.b, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %.sroa.71.0.copyload, -1         ; 3 uses
  %i.d = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.d, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i1.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i.i1.i, label %bb.d, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %.sroa.5.0.copyload to ptr  ; 3 uses
  %i.f = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.f, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i", label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %xtraiter = and i64 %.sroa.6.0.copyload, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %i.e, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.prol, i64 280
  %i.h = add i64 %.sroa.011.014.i.i.i.i.prol, -1  ; 2 uses
  %.sroa.012.0.i.i.i.i.prol = load ptr, ptr %i.g, align 8, !noalias !134403, !nonnull !175, !noundef !175 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !134332

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.unr = phi ptr [ %i.e, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.unr = phi i64 [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.6.0.copyload, 8
  br i1 %i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.012.015.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.7, %.lr.ph.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i, i64 280
  %.sroa.012.0.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !134403, !nonnull !175, !noundef !175
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i, i64 280
  %.sroa.012.0.i.i.i.i.1 = load ptr, ptr %i.k, align 8, !noalias !134403, !nonnull !175, !noundef !175
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.1, i64 280
  %.sroa.012.0.i.i.i.i.2 = load ptr, ptr %i.l, align 8, !noalias !134403, !nonnull !175, !noundef !175
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.2, i64 280
  %.sroa.012.0.i.i.i.i.3 = load ptr, ptr %i.m, align 8, !noalias !134403, !nonnull !175, !noundef !175
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.3, i64 280
  %.sroa.012.0.i.i.i.i.4 = load ptr, ptr %i.n, align 8, !noalias !134403, !nonnull !175, !noundef !175
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.4, i64 280
  %.sroa.012.0.i.i.i.i.5 = load ptr, ptr %i.o, align 8, !noalias !134403, !nonnull !175, !noundef !175
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.5, i64 280
  %.sroa.012.0.i.i.i.i.6 = load ptr, ptr %i.p, align 8, !noalias !134403, !nonnull !175, !noundef !175
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.6, i64 280
  %i.r = add i64 %.sroa.011.014.i.i.i.i, -8       ; 2 uses
  %.sroa.012.0.i.i.i.i.7 = load ptr, ptr %i.q, align 8, !noalias !134403, !nonnull !175, !noundef !175 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i", label %.lr.ph.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.d, %bb.c
  %.sroa.37.0.copyload.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.6.0.copyload, %bb.c ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ], [ 0, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i = phi ptr [ %i.e, %bb.d ], [ %.sroa.4.0.copyload, %bb.c ], [ %.sroa.012.0.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.7, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i, i64 274
  %i.u = load i16, ptr %i.t, align 2, !noalias !134404, !noundef !175
  %i.v = zext i16 %i.u to i64
  %i.w = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i, %i.v
  br i1 %i.w, label %bb.f, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i", %bb.e
  %.sroa.0.038.i.i.i.i.i.i = phi ptr [ %i.x, %bb.e ], [ %.sroa.05.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i = phi i64 [ %i.z, %bb.e ], [ %.sroa.26.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i" ]
  %i.x = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i, align 8, !noalias !134405, !noundef !175 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.e

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.e
  %i.y = zext i16 %i.ab to i64
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.z = add i64 %.sroa.5.037.i.i.i.i.i.i, 1      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i, i64 272
  %i.ab = load i16, ptr %i.aa, align 8, !noalias !134405 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 274
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !134404, !noundef !175
  %i.ae = icmp ult i16 %i.ab, %i.ad
  br i1 %i.ae, label %._crit_edge.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i" ], [ %i.y, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i" ], [ %i.z, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i" ], [ %i.x, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 3 uses
  %i.af = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i, 0
  %i.ag = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.af, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i, i64 280
  %i.ai = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ai), !noalias !134406
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %xtraiter71 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.prol = phi ptr [ %i.ak, %.prol.preheader ], [ %i.aj, %bb.g ]
  %.pn28.in.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i, %bb.g ]
  %prol.iter73 = phi i64 [ %prol.iter73.next, %.prol.preheader ], [ 0, %bb.g ]
  %.pn28.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.prol, align 8, !noalias !134407, !nonnull !175, !noundef !175 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter73.next = add i64 %prol.iter73, 1     ; 2 uses
  %prol.iter73.cmp.not = icmp eq i64 %prol.iter73.next, %xtraiter71
  br i1 %prol.iter73.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !134346

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.pn30.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.unr = phi ptr [ %i.aj, %bb.g ], [ %i.ak, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i, %bb.g ], [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.al = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i, 8
  br i1 %i.al, label %.loopexit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i = phi ptr [ %i.au, %.new ], [ %.pn30.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.am = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.1 = load ptr, ptr %i.am, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.an = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.2 = load ptr, ptr %i.an, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.3 = load ptr, ptr %i.ao, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.4 = load ptr, ptr %i.ap, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.5 = load ptr, ptr %i.aq, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.6 = load ptr, ptr %i.ar, align 8, !noalias !134407, !nonnull !175, !noundef !175
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.7 = load ptr, ptr %i.as, align 8, !noalias !134407, !nonnull !175, !noundef !175 ; 2 uses
  %i.at = icmp eq i64 %.pn28.i.i.i.i.i.i.7, 0
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.7, i64 280
  br i1 %i.at, label %.loopexit.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i unwind label %bb.i, !noalias !134408

.noexc.i.i.i.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !134406
  unreachable

.critedge.i.i.i:                                  ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #78, !noalias !134409
  unreachable

.loopexit.i:                                      ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.ag, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i, %bb.f ], [ %.pn30.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i, i64 8
  %i.ax = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ax), !noalias !134406
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !134410, !nonnull !175, !noundef !175
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.ba, align 8, !noalias !134410, !noundef !175
  %i.bb = tail call i64 @llvm.uadd.sat.i64(i64 %i.c, i64 1) ; 2 uses
  %.sroa.0.0.i11.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bb, i64 4) ; 3 uses
  %i.bc = shl i64 %.sroa.0.0.i11.i.i.i, 4         ; 3 uses
  %i.bd = icmp ugt i64 %i.bb, 1152921504606846975
  %i.be = icmp ugt i64 %i.bc, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.bd, %i.be
  br i1 %or.cond.i.i.i.i.i.i, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a: ; preds = %.loopexit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !134411
  %i.bf = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 9) 8) #77, !noalias !134411 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i"

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, %.loopexit.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ], [ 0, %.loopexit.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78, !noalias !134402
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a
  store ptr %.val.i.i.i.i, ptr %i.bf, align 8, !noalias !134402
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.val3.i.i.i.i, ptr %i.bh, align 8, !noalias !134402
  store i64 %.sroa.0.0.i11.i.i.i, ptr %i.a, align 8, !noalias !134402
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !134402
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !134402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134413)
  %i.bi = icmp eq i64 %i.c, 0
  br i1 %i.bi, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i, i64 274
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !134414, !noundef !175
  %i.bl = zext i16 %i.bk to i64
  %i.bm = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i, %i.bl
  br i1 %i.bm, label %.thread.i, label %.lr.ph.i.i.i.i.i27.i.i.i

.thread.i:                                        ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i"
  %i.bn = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.prol.loopexit75, %.new76, %bb.l, %.thread.i
  %.sroa.0.0.ph.i.i.i.i28.sink.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i.i, %.thread.i ], [ %i.bo, %bb.l ], [ %i.bo, %.new76 ], [ %i.bo, %.prol.loopexit75 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph = phi i64 [ %.sroa.7.0.i.i.i.i.i, %.thread.i ], [ %i.bv, %bb.l ], [ %i.bv, %.new76 ], [ %i.bv, %.prol.loopexit75 ]
  %.sroa.53.1.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i.i.i, %.thread.i ], [ %i.bo, %bb.l ], [ %.pn30.i.i.i.i.i38.i.i.i.lcssa.unr, %.prol.loopexit75 ], [ %.pn30.i.i.i.i.i38.i.i.i.7, %.new76 ]
  %.sroa.15.1.i.i.i.ph = phi i64 [ %i.bn, %.thread.i ], [ %i.bx, %bb.l ], [ 0, %.new76 ], [ 0, %.prol.loopexit75 ]
  br label %.lr.ph.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i27.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i", %bb.k
  %.sroa.0.038.i.i.i.i.i28.i.i.i = phi ptr [ %i.bo, %bb.k ], [ %.sroa.07.0.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i29.i.i.i = phi i64 [ %i.bp, %bb.k ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i22.i.i.i" ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.0.038.i.i.i.i.i28.i.i.i, align 8, !noalias !134415, !noundef !175 ; 8 uses
  %.not.i.i.i.i.i.i30.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i30.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i27.i.i.i
  %i.bp = add i64 %.sroa.5.037.i.i.i.i.i29.i.i.i, 1 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i28.i.i.i, i64 272
  %i.br = load i16, ptr %i.bq, align 8, !noalias !134415 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 274
  %i.bt = load i16, ptr %i.bs, align 2, !noalias !134414, !noundef !175
  %i.bu = icmp ult i16 %i.br, %i.bt
  br i1 %i.bu, label %bb.l, label %.lr.ph.i.i.i.i.i27.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bv = zext i16 %i.br to i64                   ; 4 uses
  %i.bw = icmp eq i64 %i.bp, 0
  %i.bx = add nuw nsw i64 %i.bv, 1                ; 2 uses
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 280
  %i.bz = icmp ult i16 %i.br, 11
  tail call void @llvm.assume(i1 %i.bz), !noalias !134416
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %xtraiter78 = and i64 %i.bp, 7                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.prol.loopexit75, label %.prol.preheader74

.prol.preheader74:                                ; preds = %bb.m, %.prol.preheader74
  %.pn30.in.i.i.i.i.i35.i.i.i.prol = phi ptr [ %i.cb, %.prol.preheader74 ], [ %i.ca, %bb.m ]
  %.pn28.in.i.i.i.i.i36.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i37.i.i.i.prol, %.prol.preheader74 ], [ %i.bp, %bb.m ]
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader74 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i.i37.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i36.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i38.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i35.i.i.i.prol, align 8, !noalias !134417, !nonnull !175, !noundef !175 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.prol.loopexit75, label %.prol.preheader74, !llvm.loop !134374

.prol.loopexit75:                                 ; preds = %.prol.preheader74, %bb.m
  %.pn30.i.i.i.i.i38.i.i.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i.i38.i.i.i.prol, %.prol.preheader74 ]
  %.pn30.in.i.i.i.i.i35.i.i.i.unr = phi ptr [ %i.ca, %bb.m ], [ %i.cb, %.prol.preheader74 ]
  %.pn28.in.i.i.i.i.i36.i.i.i.unr = phi i64 [ %i.bp, %bb.m ], [ %.pn28.i.i.i.i.i37.i.i.i.prol, %.prol.preheader74 ]
  %i.cc = icmp ult i64 %.sroa.5.037.i.i.i.i.i29.i.i.i, 7
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.preheader, label %.new76

.new76:                                           ; preds = %.prol.loopexit75, %.new76
  %.pn30.in.i.i.i.i.i35.i.i.i = phi ptr [ %i.cl, %.new76 ], [ %.pn30.in.i.i.i.i.i35.i.i.i.unr, %.prol.loopexit75 ]
  %.pn28.in.i.i.i.i.i36.i.i.i = phi i64 [ %.pn28.i.i.i.i.i37.i.i.i.7, %.new76 ], [ %.pn28.in.i.i.i.i.i36.i.i.i.unr, %.prol.loopexit75 ]
  %.pn30.i.i.i.i.i38.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i35.i.i.i, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.1 = load ptr, ptr %i.cd, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.2 = load ptr, ptr %i.ce, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.3 = load ptr, ptr %i.cf, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.4 = load ptr, ptr %i.cg, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.5 = load ptr, ptr %i.ch, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i38.i.i.i.6 = load ptr, ptr %i.ci, align 8, !noalias !134417, !nonnull !175, !noundef !175
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i37.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i36.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i38.i.i.i.7 = load ptr, ptr %i.cj, align 8, !noalias !134417, !nonnull !175, !noundef !175 ; 2 uses
  %i.ck = icmp eq i64 %.pn28.i.i.i.i.i37.i.i.i.7, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i38.i.i.i.7, i64 280
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.preheader, label %.new76

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i27.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i43.i.i.i unwind label %bb.o, !noalias !134418

.noexc.i.i.i43.i.i.i:                             ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !134416
  unreachable

.lr.ph.i.i.i.i.i.outer:                           ; preds = %.lr.ph.i.i.i.i.i.outer.backedge, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.0.ph.i.i.i.i28.sink.i.i.i.ph49 = phi ptr [ %.sroa.0.0.ph.i.i.i.i28.sink.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i.outer.backedge ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph50 = phi i64 [ %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.preheader ], [ %.lcssa61, %.lr.ph.i.i.i.i.i.outer.backedge ]
  %.sroa.53.1.i.i.i.ph51 = phi ptr [ %.sroa.53.1.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.53.1.i.i.i.ph51.be, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 6 uses
  %.sroa.15.1.i.i.i.ph52 = phi i64 [ %.sroa.15.1.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.15.1.i.i.i.ph52.be, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 2 uses
  %.sroa.216.1.in.i.i.i.ph = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.216.1.i.i.i.lcssa56, %.lr.ph.i.i.i.i.i.outer.backedge ]
  %.ph53 = phi i64 [ %.sroa.0.0.i11.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.lcssa59, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 3 uses
  %.ph54 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %.lcssa57, %.lr.ph.i.i.i.i.i.outer.backedge ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i28.sink.i.i.i.ph49, i64 8
  %i.co = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph50, 11
  tail call void @llvm.assume(i1 %i.co), !noalias !134416
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i.ph50 ; 2 uses
  %.sroa.216.1.i.i.i.peel = add i64 %.sroa.216.1.in.i.i.i.ph, -1 ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %.val.i.i.i.i.i.i.peel = load ptr, ptr %i.cq, align 8, !noalias !134419, !nonnull !175, !noundef !175
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %.val3.i.i.i.i.i.i.peel = load i64, ptr %i.cr, align 8, !noalias !134419, !noundef !175
  %i.cs = icmp samesign ult i64 %.ph54, 576460752303423488
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i64 %.ph54, %.ph53
  br i1 %i.ct, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i.peel", label %bb.p

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i.peel": ; preds = %.lr.ph.i.i.i.i.i.outer
  %i.cu = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.216.1.i.i.i.peel, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.ph53, i64 noundef %i.cu, i64 noundef 8, i64 noundef 16)
          to label %.noexc12.i.i.i.peel unwind label %.loopexit.split-lp.i.i.i.loopexit.split-lp, !noalias !134420

.noexc12.i.i.i.peel:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i.peel"
  %.pre5.i.i.i.i.i.peel = load i64, ptr %i.a, align 8, !range !174, !alias.scope !134416, !noalias !134402
  %.pre.i.i.i.peel = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !134416, !noalias !134402
  br label %bb.p

bb.p:                                             ; preds = %.noexc12.i.i.i.peel, %.lr.ph.i.i.i.i.i.outer
  %i.cv = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.outer ], [ %.pre.i.i.i.peel, %.noexc12.i.i.i.peel ] ; 3 uses
  %i.cw = phi i64 [ %.ph53, %.lr.ph.i.i.i.i.i.outer ], [ %.pre5.i.i.i.i.i.peel, %.noexc12.i.i.i.peel ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.ph54 ; 2 uses
  store ptr %.val.i.i.i.i.i.i.peel, ptr %i.cx, align 8, !noalias !134421
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %.val3.i.i.i.i.i.i.peel, ptr %i.cy, align 8, !noalias !134421
  %i.cz = add nuw nsw i64 %.ph54, 1               ; 3 uses
  store i64 %i.cz, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !134416, !noalias !134402
  %i.da = icmp eq i64 %.sroa.216.1.i.i.i.peel, 0
  br i1 %i.da, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel": ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.1.i.i.i.ph51) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.53.1.i.i.i.ph51, i64 274
  %i.dc = load i16, ptr %i.db, align 2, !noalias !134422, !noundef !175
  %i.dd = zext i16 %i.dc to i64
  %i.de = icmp ult i64 %.sroa.15.1.i.i.i.ph52, %i.dd
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.outer.peel.newph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.outer.peel.newph:                ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel"
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.53.1.i.i.i.ph51, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.53.1.i.i.i.ph51, i64 274
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.outer.peel.newph
  %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.ph52, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %.sroa.15.1.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ] ; 3 uses
  %i.dh = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %i.dr, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %.sroa.216.1.in.i.i.i = phi i64 [ %.sroa.216.1.i.i.i.peel, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %.sroa.216.1.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %i.di = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %i.ds, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ] ; 3 uses
  %i.dj = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.outer.peel.newph ], [ %i.dv, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ] ; 4 uses
  %.sroa.15.1.i.i.i = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i, 1 ; 2 uses
  %i.dk = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dk), !noalias !134416
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i27.sink63.i.i.i ; 2 uses
  %.sroa.216.1.i.i.i = add i64 %.sroa.216.1.in.i.i.i, -1 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !134419, !nonnull !175, !noundef !175
  %i.dn = getelementptr i8, ptr %i.dl, i64 16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.dn, align 8, !noalias !134419, !noundef !175
  %i.do = icmp samesign ult i64 %i.dj, 576460752303423488
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = icmp eq i64 %i.dj, %i.di
  br i1 %i.dp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i", label %bb.q

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.dq = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.216.1.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.di, i64 noundef %i.dq, i64 noundef 8, i64 noundef 16)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.i.i.i.loopexit.split-lp, !noalias !134420

.noexc12.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i"
  %.pre5.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !174, !alias.scope !134416, !noalias !134402
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !134416, !noalias !134402
  br label %bb.q

bb.q:                                             ; preds = %.noexc12.i.i.i, %.lr.ph.i.i.i.i.i
  %i.dr = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i, %.noexc12.i.i.i ] ; 3 uses
  %i.ds = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.pre5.i.i.i.i.i, %.noexc12.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dj ; 2 uses
  store ptr %.val.i.i.i.i.i.i, ptr %i.dt, align 8, !noalias !134421
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %.val3.i.i.i.i.i.i, ptr %i.du, align 8, !noalias !134421
  %i.dv = add nuw nsw i64 %i.dj, 1                ; 3 uses
  store i64 %i.dv, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !134416, !noalias !134402
  %i.dw = icmp eq i64 %.sroa.216.1.i.i.i, 0
  br i1 %i.dw, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i": ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.1.i.i.i.ph51) ]
  %i.dx = load i16, ptr %i.dg, align 2, !noalias !134422, !noundef !175
  %i.dy = zext i16 %i.dx to i64
  %i.dz = icmp samesign ult i64 %.sroa.15.1.i.i.i, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !llvm.loop !134391

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i", %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel"
  %.lcssa61 = phi ptr [ %i.cv, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel" ], [ %i.dr, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %.lcssa59 = phi i64 [ %i.cw, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel" ], [ %i.ds, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %.lcssa57 = phi i64 [ %i.cz, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel" ], [ %i.dv, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  %.sroa.216.1.i.i.i.lcssa56 = phi i64 [ %.sroa.216.1.i.i.i.peel, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i.peel" ], [ %.sroa.216.1.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha00e3001793f49caE.exit.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.r
  %.sroa.0.038.i.i.i.i.i.i.i.i = phi ptr [ %i.ea, %bb.r ], [ %.sroa.53.1.i.i.i.ph51, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i = phi i64 [ %i.eb, %bb.r ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ea = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, align 8, !noalias !134423, !noundef !175 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.eb = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 272
  %i.ed = load i16, ptr %i.ec, align 8, !noalias !134423 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 274
  %i.ef = load i16, ptr %i.ee, align 2, !noalias !134422, !noundef !175
  %i.eg = icmp ult i16 %i.ed, %i.ef
  br i1 %i.eg, label %bb.s, label %.lr.ph.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.eh = zext i16 %i.ed to i64                   ; 2 uses
  %i.ei = icmp eq i64 %i.eb, 0
  %i.ej = add nuw nsw i64 %i.eh, 1                ; 2 uses
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.outer.backedge, label %bb.t

.lr.ph.i.i.i.i.i.outer.backedge:                  ; preds = %.prol.loopexit84, %.new85, %bb.s
  %.sroa.53.1.i.i.i.ph51.be = phi ptr [ %i.ea, %bb.s ], [ %.pn30.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit84 ], [ %.pn30.i.i.i.i.i.i.i.i.7, %.new85 ]
  %.sroa.15.1.i.i.i.ph52.be = phi i64 [ %i.ej, %bb.s ], [ 0, %.new85 ], [ 0, %.prol.loopexit84 ]
  br label %.lr.ph.i.i.i.i.i.outer

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 280
  %i.el = icmp ult i16 %i.ed, 11
  tail call void @llvm.assume(i1 %i.el), !noalias !134416
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej ; 2 uses
  %xtraiter87 = and i64 %i.eb, 7                  ; 2 uses
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %.prol.loopexit84, label %.prol.preheader83

.prol.preheader83:                                ; preds = %bb.t, %.prol.preheader83
  %.pn30.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.en, %.prol.preheader83 ], [ %i.em, %bb.t ]
  %.pn28.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader83 ], [ %i.eb, %bb.t ]
  %prol.iter89 = phi i64 [ %prol.iter89.next, %.prol.preheader83 ], [ 0, %bb.t ]
  %.pn28.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !134424, !nonnull !175, !noundef !175 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter89.next = add i64 %prol.iter89, 1     ; 2 uses
  %prol.iter89.cmp.not = icmp eq i64 %prol.iter89.next, %xtraiter87
  br i1 %prol.iter89.cmp.not, label %.prol.loopexit84, label %.prol.preheader83, !llvm.loop !134397

.prol.loopexit84:                                 ; preds = %.prol.preheader83, %bb.t
  %.pn30.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.t ], [ %.pn30.i.i.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %.pn30.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.em, %bb.t ], [ %i.en, %.prol.preheader83 ]
  %.pn28.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.eb, %bb.t ], [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader83 ]
  %i.eo = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 7
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i.outer.backedge, label %.new85

.new85:                                           ; preds = %.prol.loopexit84, %.new85
  %.pn30.in.i.i.i.i.i.i.i.i = phi ptr [ %i.ex, %.new85 ], [ %.pn30.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn28.in.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.7, %.new85 ], [ %.pn28.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit84 ]
  %.pn30.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ep, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.eq, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.er = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.er, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.es = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.es, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.et = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.et, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.eu, align 8, !noalias !134424, !nonnull !175, !noundef !175
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ev, align 8, !noalias !134424, !nonnull !175, !noundef !175 ; 2 uses
  %i.ew = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.7, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.7, i64 280
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i.outer.backedge, label %.new85

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #78
          to label %.noexc.i.i.i.i.i.i unwind label %bb.v, !noalias !134425

.noexc.i.i.i.i.i.i:                               ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !134416
  unreachable

bb.w:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !134426
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ez, align 8, !alias.scope !134426
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.fa, align 8, !alias.scope !134426
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h753cb2e38182c209E.exit"

.loopexit.split-lp.i.i.i.loopexit.split-lp:       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c681a803f4d0beaE.exit.i.i.i.i.i.peel"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val.pre.i.i.i = load i64, ptr %i.a, align 8, !noalias !134402 ; 2 uses
  %i.fb = icmp eq i64 %.val.pre.i.i.i, 0
  br i1 %i.fb, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit.i.i.i", label %.loopexit.split-lp.i._crit_edge.i.i

.loopexit.split-lp.i._crit_edge.i.i:              ; preds = %.loopexit.split-lp.i.i.i.loopexit.split-lp
  %.val9.i.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !134402
  %.pre.i.i = shl nuw i64 %.val.pre.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.pre.i.i, i64 noundef %.pre.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !134402
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i": ; preds = %bb.q, %bb.p, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !134427
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h753cb2e38182c209E.exit"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hfbae81cd7341dca4E.exit.i.i.i": ; preds = %.loopexit.split-lp.i._crit_edge.i.i, %.loopexit.split-lp.i.i.i.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h753cb2e38182c209E.exit": ; preds = %bb.w, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdb01ba87ae324f5fE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134402
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17he777f832c00ca33fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !134489 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 7 uses
  %i.b = alloca [136 x i8], align 8               ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134490
  store i64 0, ptr %i.c, align 8, !noalias !134490
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !134490
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !134490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134491)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !134492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(136) %1, i64 136, i1 false), !alias.scope !134493, !noalias !134494
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !134495, !noalias !134492, !noundef !175 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread88.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !134495, !noalias !134492
  %i.h = invoke { i32, i32 } @"_ZN90_$LT$roaring..bitmap..iter..IntoIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7e74563c59613b97E"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %bb.c unwind label %.thread.i.i, !noalias !134496 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %bb.d, label %.thread88.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i32 } %i.h, 1        ; 3 uses
  %i.l = lshr i32 %i.k, 16
  %i.m = trunc nuw i32 %i.l to i16                ; 5 uses
  %i.n = trunc i32 %i.k to i16                    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134497)
  %i.o = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !134498, !noalias !134490, !nonnull !175, !noundef !175 ; 3 uses
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !134498, !noalias !134490, !noundef !175 ; 12 uses
  switch i64 %i.p, label %.lr.ph.i.i.i.i.i [
    i64 0, label %bb.f
    i64 1, label %._crit_edge.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.05.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.q = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i, %i.p
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.05.0.lcssa.i.i.i.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %.val20.i.i.i.i.i = load i16, ptr %i.s, align 8, !alias.scope !134499, !noalias !134500, !noundef !175 ; 2 uses
  %i.t = icmp eq i16 %.val20.i.i.i.i.i, %i.m
  br i1 %i.t, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit.i.i", label %bb.e

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.sroa.01.025.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.u = lshr i64 %.sroa.01.025.i.i.i.i.i, 1      ; 2 uses
  %i.v = add i64 %i.u, %.sroa.05.024.i.i.i.i.i    ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.p
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.v
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val22.i.i.i.i.i = load i16, ptr %i.y, align 8, !alias.scope !134499, !noalias !134500, !noundef !175
  %i.z = icmp ugt i16 %.val22.i.i.i.i.i, %i.m
  %i.aa = select i1 %i.z, i64 %.sroa.05.024.i.i.i.i.i, i64 %i.v, !unpredictable !175 ; 2 uses
  %i.ab = sub nuw i64 %.sroa.01.025.i.i.i.i.i, %i.u ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 1
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ad = icmp ult i16 %.val20.i.i.i.i.i, %i.m
  %i.ae = zext i1 %i.ad to i64
  %i.af = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ule i64 %i.af, %i.p
  call void @llvm.assume(i1 %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.i.ph.i.i.i = phi i64 [ %i.af, %bb.e ], [ %i.p, %bb.d ] ; 4 uses
  %i.ah = icmp ult i64 %i.p, 288230376151711744
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %i.c, align 8, !range !174, !alias.scope !134501, !noalias !134490, !noundef !175
  %i.aj = icmp eq i64 %i.p, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4672)
          to label %._crit_edge.i.i.i unwind label %.thread.i.i, !noalias !134502

._crit_edge.i.i.i:                                ; preds = %bb.g
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !134501, !noalias !134490
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.f
  %i.ak = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.o, %bb.f ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %.sroa.4.0.i.i.ph.i.i.i ; 6 uses
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i.i.i, %i.p
  br i1 %i.am, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i.i.i"

.thread.i.i:                                      ; preds = %bb.r, %bb.q, %bb.n, %bb.g, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ap = sub nuw nsw i64 %i.p, %.sroa.4.0.i.i.ph.i.i.i
  %i.aq = shl nuw nsw i64 %i.ap, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull align 8 %i.al, i64 %i.aq, i1 false), !noalias !134502
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i.i.i": ; preds = %bb.i, %bb.h
  store i64 0, ptr %i.al, align 8, !noalias !134496
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !134496
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !134496
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i16 %i.m, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !134496
  %i.ar = add nuw nsw i64 %i.p, 1                 ; 2 uses
  store i64 %i.ar, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !134501, !noalias !134490
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit.i.i"

.thread88.i.i:                                    ; preds = %bb.c, %bb.a
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17h55d10bf5c9a00786E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.b), !noalias !134496
  br label %"_ZN7roaring6bitmap4iter113_$LT$impl$u20$core..iter..traits..collect..FromIterator$LT$u32$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9from_iter17h778aeb9aa9417b9cE.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i.i.i", %._crit_edge.i.i.i.i.i
  %i.as = phi i64 [ %i.ar, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i.i.i" ], [ %i.p, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i16.i.i.i = phi i64 [ %.sroa.4.0.i.i.ph.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i.i.i" ], [ %.sroa.05.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.at = icmp ult i64 %.sroa.4.0.i.i16.i.i.i, %i.as
  br i1 %i.at, label %bb.j, label %bb.r

bb.j:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit.i.i"
  %i.au = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !134491, !noalias !134490, !nonnull !175, !noundef !175
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %.sroa.4.0.i.i16.i.i.i ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134503)
  %i.aw = load i64, ptr %i.av, align 8, !range !201, !alias.scope !134503, !noalias !134496, !noundef !175 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %i.ax, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !134504)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !134505, !noalias !134496, !nonnull !175, !noundef !175 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !134505, !noalias !134496, !noundef !175 ; 11 uses
  switch i64 %i.bb, label %.lr.ph.i.i.i24.i.i [
    i64 0, label %bb.m
    i64 1, label %._crit_edge.i.i.i21.i.i
  ]

._crit_edge.i.i.i21.i.i:                          ; preds = %.lr.ph.i.i.i24.i.i, %bb.k
  %.sroa.05.0.lcssa.i.i.i22.i.i = phi i64 [ 0, %bb.k ], [ %i.bk, %.lr.ph.i.i.i24.i.i ] ; 3 uses
  %i.bc = icmp ult i64 %.sroa.05.0.lcssa.i.i.i22.i.i, %i.bb
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.sroa.05.0.lcssa.i.i.i22.i.i
  %.val20.i.i.i23.i.i = load i16, ptr %i.bd, align 2, !alias.scope !134506, !noalias !134507, !noundef !175 ; 2 uses
  %i.be = icmp eq i16 %.val20.i.i.i23.i.i, %i.n
  br i1 %i.be, label %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit.i.i, label %bb.l

.lr.ph.i.i.i24.i.i:                               ; preds = %bb.k, %.lr.ph.i.i.i24.i.i
  %.sroa.01.025.i.i.i25.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i24.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %.sroa.05.024.i.i.i26.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i24.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.bf = lshr i64 %.sroa.01.025.i.i.i25.i.i, 1   ; 2 uses
  %i.bg = add i64 %i.bf, %.sroa.05.024.i.i.i26.i.i ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %i.bb
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bg
  %.val22.i.i.i27.i.i = load i16, ptr %i.bi, align 2, !alias.scope !134506, !noalias !134507, !noundef !175
  %i.bj = icmp ugt i16 %.val22.i.i.i27.i.i, %i.n
  %i.bk = select i1 %i.bj, i64 %.sroa.05.024.i.i.i26.i.i, i64 %i.bg, !unpredictable !175 ; 2 uses
  %i.bl = sub nuw i64 %.sroa.01.025.i.i.i25.i.i, %i.bf ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 1
  br i1 %i.bm, label %.lr.ph.i.i.i24.i.i, label %._crit_edge.i.i.i21.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i21.i.i
  %i.bn = icmp ult i16 %.val20.i.i.i23.i.i, %i.n
  %i.bo = zext i1 %i.bn to i64
  %i.bp = add nuw i64 %.sroa.05.0.lcssa.i.i.i22.i.i, %i.bo ; 2 uses
  %i.bq = icmp ule i64 %i.bp, %i.bb
  call void @llvm.assume(i1 %i.bq)
  br label %bb.m
end_hunk_12
