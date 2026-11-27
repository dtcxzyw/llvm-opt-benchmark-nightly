Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15603
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17h1aa11eec00e2cea9E":bb.a
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @126, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17h49eef262efbf18d2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 !guid !4639 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @127, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17h67a5edd321aa2edfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 !guid !4640 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @128, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h5f1fc7745235f775E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 !guid !4641 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @129, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h78e70afd034706e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 !guid !4642 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @130, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17hde785c3759d6fb39E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 !guid !4643 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @131, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8is_array17h01462cfd46529ddaE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 !guid !4644 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8is_array17hd863d81039be9da5E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 !guid !4645 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8is_array17he7990fdcddc64654E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 !guid !4646 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h1e0223cfffdd6ddbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !4696 {
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
  %i.j = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values17h9448458d934bd735E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4699)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4700
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4699, !noalias !4701, !nonnull !22, !align !28, !noundef !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4699, !noalias !4701, !nonnull !22, !align !27, !noundef !22
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !22, !noalias !4702, !nonnull !22
  invoke void %i.n(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.i.i.i.i)
          to label %.noexc12.i.i.i.i unwind label %bb.d, !noalias !4700, !inline_history !4661

.noexc12.i.i.i.i:                                 ; preds = %bb.a
  %i.o = load i64, ptr %i.d, align 8, !range !31, !noalias !4700, !noundef !22
  %.not.i10.i.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i10.i.i.i.i, label %.noexc.thread.i.i.i.i, label %bb.b

.noexc.thread.i.i.i.i:                            ; preds = %.noexc12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4700
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.thread.i.i.i.i"

bb.b:                                             ; preds = %.noexc12.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !4700
  %i.q = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17ha8c43e2fb03c45c8E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.d ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4700
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.thread.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h1d994b5864102bdcE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull align 1 %i.q)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.i.i.i.i" unwind label %bb.d, !noalias !4698, !inline_history !4662

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.i.i.i.i": ; preds = %bb.c
  %.pr.i.i.i.i = load i8, ptr %i.h, align 8, !noalias !4698
  %.not.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 5
  br i1 %.not.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.thread.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4698
  call void @llvm.experimental.noalias.scope.decl(metadata !4703)
  %.val.i14.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4703, !noalias !4698, !nonnull !22, !align !28, !noundef !22
  %.val1.i15.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4703, !noalias !4698, !nonnull !22, !align !27, !noundef !22
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i15.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !22, !noalias !4704, !nonnull !22
  invoke void %i.t(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 %.val.i14.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he93fac774c338900E.exit.i.i.i.i" unwind label %bb.i, !noalias !4705, !inline_history !4668

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.thread.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.i.i.i.i", %.noexc.i.i.i.i, %.noexc.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4698
  call void @llvm.experimental.noalias.scope.decl(metadata !4706)
  %.val.i17.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4706, !noalias !4698 ; 5 uses
  %.val1.i18.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4706, !noalias !4698, !nonnull !22, !align !27, !noundef !22 ; 5 uses
  %i.u = load ptr, ptr %.val1.i18.i.i.i.i, align 8, !invariant.load !22, !noalias !4707 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.thread.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i17.i.i.i.i)
          to label %bb.g unwind label %bb.h, !noalias !4707

bb.g:                                             ; preds = %bb.f, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.thread.i.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !23, !invariant.load !22, !noalias !4707 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !41, !invariant.load !22, !noalias !4707 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd18b7370b3b855c0E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #63, !noalias !4707
  br label %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd18b7370b3b855c0E.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !23, !invariant.load !22, !noalias !4707 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !41, !invariant.load !22, !noalias !4707 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #63, !noalias !4707
  br label %common.resume.sink.split.i.i.i.i

common.resume.sink.split.i.i.i.i:                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i", %bb.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.h
  %common.resume.op.ph.i.i.i.i = phi { ptr, i32 } [ %i.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i" ], [ %i.ab, %bb.h ], [ %.pn.ph.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i" ], [ %.pn.ph.i.i.i.i, %bb.ab ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4698
  br label %common.resume.i.i.i.i

common.resume.i.i.i.i:                            ; preds = %.body.i.i.i.i, %common.resume.sink.split.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %common.resume.op.ph.i.i.i.i, %common.resume.sink.split.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd18b7370b3b855c0E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4698
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hdc9bb4afa2f05aacE.exit

bb.i:                                             ; preds = %bb.k, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h1797295aeeda33f1E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #65
          to label %bb.z unwind label %bb.y, !noalias !4698

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he93fac774c338900E.exit.i.i.i.i": ; preds = %bb.e
  %i.aj = load i64, ptr %i.g, align 8, !noalias !4698, !noundef !22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4698
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1)
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 4) ; 3 uses
  %i.al = mul i64 %.sroa.0.0.i.i.i.i.i, 56        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.aj, 164703072086692424
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !40

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he93fac774c338900E.exit.i.i.i.i"
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !4708
  %i.an = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8) #63, !noalias !4708 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he93fac774c338900E.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he93fac774c338900E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #64
          to label %.noexc14.i.i.i.i unwind label %bb.i, !noalias !4698

.noexc14.i.i.i.i:                                 ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.an, %bb.j ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !4698
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.i, align 8, !noalias !4698
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4698
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !4698
  call void @llvm.experimental.noalias.scope.decl(metadata !4709)
  call void @llvm.experimental.noalias.scope.decl(metadata !4710)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4711
  br label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i", %bb.l
  %.sroa.5.0.copyload3 = phi ptr [ %i.bo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.0.copyload5 = phi i64 [ %i.bq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i" ], [ 1, %bb.l ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4713
  %.val.i20.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4712, !noalias !4714, !nonnull !22, !align !28, !noundef !22
  %.val1.i21.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4712, !noalias !4714, !nonnull !22, !align !27, !noundef !22
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i21.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !22, !noalias !4715, !nonnull !22
  invoke void %i.ar(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i20.i.i.i.i)
          to label %.noexc24.i.i.i.i unwind label %bb.q, !noalias !4713, !inline_history !4661

.noexc24.i.i.i.i:                                 ; preds = %bb.m
  %i.as = load i64, ptr %i.b, align 8, !range !31, !noalias !4713, !noundef !22
  %.not.i22.i.i.i.i = icmp eq i64 %i.as, 2
  br i1 %.not.i22.i.i.i.i, label %.noexc.i.i.thread.i.i.i.i, label %bb.n

.noexc.i.i.thread.i.i.i.i:                        ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4713
  br label %.loopexit.i.i.i.i.i.i

bb.n:                                             ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !4713
  %i.at = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17ha8c43e2fb03c45c8E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4713
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h1d994b5864102bdcE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull align 1 %i.at)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.i.i.i.i.i.i" unwind label %bb.q, !noalias !4716, !inline_history !4662

bb.p:                                             ; preds = %bb.w, %bb.q
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.au, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd18b7370b3b855c0E"(ptr nonnull align 1 %i.k, ptr nonnull readonly align 8 dereferenceable(56) @68) #65
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !4717

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.i.i.i.i.i.i": ; preds = %bb.o
  %.pr.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !4716
  %.not.i.i15.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i, 5
  br i1 %.not.i.i15.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.i.i.i.i.i.i"
  %i.av = icmp samesign ult i64 %.sroa.6.0.copyload5, 164703072086692426
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.i, align 8, !range !23, !alias.scope !4718, !noalias !4698, !noundef !22
  %i.ax = icmp eq i64 %.sroa.6.0.copyload5, %i.aw
  br i1 %i.ax, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h483aea1508efedcaE.exit.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i, %.noexc.i.i.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4719)
  %.val.i27.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4719, !noalias !4716 ; 5 uses
  %.val1.i28.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4719, !noalias !4716, !nonnull !22, !align !27, !noundef !22 ; 5 uses
  %i.ay = load ptr, ptr %.val1.i28.i.i.i.i, align 8, !invariant.load !22, !noalias !4720 ; 2 uses
  %.not.i.i29.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i29.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !4721
  invoke void %i.ay(ptr noundef nonnull %.val.i27.i.i.i.i)
          to label %bb.t unwind label %bb.u, !noalias !4720

bb.t:                                             ; preds = %bb.s, %.loopexit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !23, !invariant.load !22, !noalias !4720 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !41, !invariant.load !22, !noalias !4720 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd), !noalias !4721
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc0149068e53c7521E.exit34.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i": ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !4721
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #63, !noalias !4720
  br label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc0149068e53c7521E.exit34.i.i.i.i"

bb.u:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !23, !invariant.load !22, !noalias !4720 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !41, !invariant.load !22, !noalias !4720 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk), !noalias !4721
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i": ; preds = %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #63, !noalias !4720
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i", %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4716
  br label %.body.i.i.i.i

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4716
  call void @llvm.experimental.noalias.scope.decl(metadata !4722)
  %.val.i35.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4722, !noalias !4716, !nonnull !22, !align !28, !noundef !22
  %.val1.i36.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4722, !noalias !4716, !nonnull !22, !align !27, !noundef !22
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i36.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !22, !noalias !4723, !nonnull !22
  invoke void %i.bn(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %.val.i35.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h632469a518bd2a51E.exit.i.i.i.i.i.i" unwind label %bb.w, !noalias !4724, !inline_history !4668

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h632469a518bd2a51E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i", %bb.r
  %i.bo = phi ptr [ %.pre.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h632469a518bd2a51E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i" ], [ %.sroa.5.0.copyload3, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %.sroa.6.0.copyload5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !4716
  %i.bq = add nuw nsw i64 %.sroa.6.0.copyload5, 1 ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4718, !noalias !4698
  br label %bb.m

bb.w:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h632469a518bd2a51E.exit.i.i.i.i.i.i", %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h1797295aeeda33f1E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #65
          to label %bb.p unwind label %bb.x, !noalias !4716

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h632469a518bd2a51E.exit.i.i.i.i.i.i": ; preds = %bb.v
  %i.bs = load i64, ptr %i.e, align 8, !noalias !4716, !noundef !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4716
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hc7f257131df3f6ecE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.6.0.copyload5, i64 noundef %i.bt, i64 noundef 8, i64 noundef 56)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h632469a518bd2a51E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.w, !noalias !4725

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h632469a518bd2a51E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h632469a518bd2a51E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4718, !noalias !4698
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w, %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #66, !noalias !4716
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i" ], [ %.pn.i.i.i.i.i.i, %bb.p ]
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h8e1b4debb1a53930E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #65
          to label %common.resume.i.i.i.i unwind label %bb.y, !noalias !4698

"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc0149068e53c7521E.exit34.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i", %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4711
  %.sroa.0.0.copyload1 = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4698
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hdc9bb4afa2f05aacE.exit

bb.y:                                             ; preds = %.body.i.i.i.i, %bb.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body42.i.i.i.i
end_hunk_0
begin_hunk_1_@"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h1e0223cfffdd6ddbE":bb.a
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ai, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4726)
  %.val.i45.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4726, !noalias !4698 ; 5 uses
  %.val1.i46.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4726, !noalias !4698, !nonnull !22, !align !27, !noundef !22 ; 5 uses
  %i.bw = load ptr, ptr %.val1.i46.i.i.i.i, align 8, !invariant.load !22, !noalias !4727 ; 2 uses
  %.not.i.i47.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i47.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  invoke void %i.bw(ptr noundef nonnull %.val.i45.i.i.i.i)
          to label %bb.ab unwind label %bb.ac, !noalias !4727

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !23, !invariant.load !22, !noalias !4727 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !41, !invariant.load !22, !noalias !4727 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, -9223372036854775807
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.by, 0
  br i1 %i.cc, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i": ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #63, !noalias !4727
  br label %common.resume.sink.split.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !23, !invariant.load !22, !noalias !4727 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !41, !invariant.load !22, !noalias !4727 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, -9223372036854775807
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp eq i64 %i.cf, 0
  br i1 %i.cj, label %.body51.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) %i.ch) #63, !noalias !4727
  br label %.body51.i.i.i.i

.body51.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i", %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4698
  br label %.body42.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hdc9bb4afa2f05aacE.exit: ; preds = %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd18b7370b3b855c0E.exit.i.i.i.i", %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc0149068e53c7521E.exit34.i.i.i.i"
  %.sroa.6.0 = phi i64 [ 0, %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd18b7370b3b855c0E.exit.i.i.i.i" ], [ %.sroa.6.0.copyload5, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc0149068e53c7521E.exit34.i.i.i.i" ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd18b7370b3b855c0E.exit.i.i.i.i" ], [ %.sroa.5.0.copyload3, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc0149068e53c7521E.exit34.i.i.i.i" ]
  %.sroa.0.0 = phi i64 [ 0, %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd18b7370b3b855c0E.exit.i.i.i.i" ], [ %.sroa.0.0.copyload1, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc0149068e53c7521E.exit34.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4697
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
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h3b73e53b0d540f2eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !4777 {
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
  %i.j = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values17h381531209a59d92fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4779
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4781
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4780, !noalias !4782, !nonnull !22, !align !28, !noundef !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4780, !noalias !4782, !nonnull !22, !align !27, !noundef !22
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !22, !noalias !4783, !nonnull !22
  invoke void %i.n(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.i.i.i.i)
          to label %.noexc12.i.i.i.i unwind label %bb.d, !noalias !4781, !inline_history !4742

.noexc12.i.i.i.i:                                 ; preds = %bb.a
  %i.o = load i64, ptr %i.d, align 8, !range !31, !noalias !4781, !noundef !22
  %.not.i10.i.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i10.i.i.i.i, label %.noexc.thread.i.i.i.i, label %bb.b

.noexc.thread.i.i.i.i:                            ; preds = %.noexc12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4781
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.thread.i.i.i.i"

bb.b:                                             ; preds = %.noexc12.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !4781
  %i.q = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hb8ed49c5fab5f683E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.d ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4781
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.thread.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h2dd408ef5477cbc4E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull align 1 %i.q)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.i.i.i.i" unwind label %bb.d, !noalias !4779, !inline_history !4743

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.i.i.i.i": ; preds = %bb.c
  %.pr.i.i.i.i = load i8, ptr %i.h, align 8, !noalias !4779
  %.not.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 5
  br i1 %.not.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.thread.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4779
  call void @llvm.experimental.noalias.scope.decl(metadata !4784)
  %.val.i14.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4784, !noalias !4779, !nonnull !22, !align !28, !noundef !22
  %.val1.i15.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4784, !noalias !4779, !nonnull !22, !align !27, !noundef !22
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i15.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !22, !noalias !4785, !nonnull !22
  invoke void %i.t(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 %.val.i14.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17habb04ec6e167ef00E.exit.i.i.i.i" unwind label %bb.i, !noalias !4786, !inline_history !4749

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.thread.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.i.i.i.i", %.noexc.i.i.i.i, %.noexc.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4779
  call void @llvm.experimental.noalias.scope.decl(metadata !4787)
  %.val.i17.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4787, !noalias !4779 ; 5 uses
  %.val1.i18.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4787, !noalias !4779, !nonnull !22, !align !27, !noundef !22 ; 5 uses
  %i.u = load ptr, ptr %.val1.i18.i.i.i.i, align 8, !invariant.load !22, !noalias !4788 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.thread.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i17.i.i.i.i)
          to label %bb.g unwind label %bb.h, !noalias !4788

bb.g:                                             ; preds = %bb.f, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.thread.i.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !23, !invariant.load !22, !noalias !4788 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !41, !invariant.load !22, !noalias !4788 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9cad29cd698c335E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #63, !noalias !4788
  br label %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9cad29cd698c335E.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !23, !invariant.load !22, !noalias !4788 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !41, !invariant.load !22, !noalias !4788 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #63, !noalias !4788
  br label %common.resume.sink.split.i.i.i.i

common.resume.sink.split.i.i.i.i:                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i", %bb.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.h
  %common.resume.op.ph.i.i.i.i = phi { ptr, i32 } [ %i.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i" ], [ %i.ab, %bb.h ], [ %.pn.ph.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i" ], [ %.pn.ph.i.i.i.i, %bb.ab ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4779
  br label %common.resume.i.i.i.i

common.resume.i.i.i.i:                            ; preds = %.body.i.i.i.i, %common.resume.sink.split.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %common.resume.op.ph.i.i.i.i, %common.resume.sink.split.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9cad29cd698c335E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4779
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17he0e62f8ee612caf5E.exit

bb.i:                                             ; preds = %bb.k, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h1797295aeeda33f1E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #65
          to label %bb.z unwind label %bb.y, !noalias !4779

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17habb04ec6e167ef00E.exit.i.i.i.i": ; preds = %bb.e
  %i.aj = load i64, ptr %i.g, align 8, !noalias !4779, !noundef !22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4779
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1)
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 4) ; 3 uses
  %i.al = mul i64 %.sroa.0.0.i.i.i.i.i, 56        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.aj, 164703072086692424
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !40

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17habb04ec6e167ef00E.exit.i.i.i.i"
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !4789
  %i.an = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8) #63, !noalias !4789 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17habb04ec6e167ef00E.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17habb04ec6e167ef00E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #64
          to label %.noexc14.i.i.i.i unwind label %bb.i, !noalias !4779

.noexc14.i.i.i.i:                                 ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.an, %bb.j ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !4779
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.i, align 8, !noalias !4779
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4779
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !4779
  call void @llvm.experimental.noalias.scope.decl(metadata !4790)
  call void @llvm.experimental.noalias.scope.decl(metadata !4791)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4792
  br label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i", %bb.l
  %.sroa.5.0.copyload3 = phi ptr [ %i.bo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.0.copyload5 = phi i64 [ %i.bq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i" ], [ 1, %bb.l ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4794
  %.val.i20.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4793, !noalias !4795, !nonnull !22, !align !28, !noundef !22
  %.val1.i21.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4793, !noalias !4795, !nonnull !22, !align !27, !noundef !22
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i21.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !22, !noalias !4796, !nonnull !22
  invoke void %i.ar(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i20.i.i.i.i)
          to label %.noexc24.i.i.i.i unwind label %bb.q, !noalias !4794, !inline_history !4742

.noexc24.i.i.i.i:                                 ; preds = %bb.m
  %i.as = load i64, ptr %i.b, align 8, !range !31, !noalias !4794, !noundef !22
  %.not.i22.i.i.i.i = icmp eq i64 %i.as, 2
  br i1 %.not.i22.i.i.i.i, label %.noexc.i.i.thread.i.i.i.i, label %bb.n

.noexc.i.i.thread.i.i.i.i:                        ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4794
  br label %.loopexit.i.i.i.i.i.i

bb.n:                                             ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !4794
  %i.at = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hb8ed49c5fab5f683E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4794
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h2dd408ef5477cbc4E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull align 1 %i.at)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.i.i.i.i.i.i" unwind label %bb.q, !noalias !4797, !inline_history !4743

bb.p:                                             ; preds = %bb.w, %bb.q
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.au, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9cad29cd698c335E"(ptr nonnull align 1 %i.k, ptr nonnull readonly align 8 dereferenceable(56) @67) #65
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !4798

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.i.i.i.i.i.i": ; preds = %bb.o
  %.pr.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !4797
  %.not.i.i15.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i, 5
  br i1 %.not.i.i15.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.i.i.i.i.i.i"
  %i.av = icmp samesign ult i64 %.sroa.6.0.copyload5, 164703072086692426
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.i, align 8, !range !23, !alias.scope !4799, !noalias !4779, !noundef !22
  %i.ax = icmp eq i64 %.sroa.6.0.copyload5, %i.aw
  br i1 %i.ax, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7abce565967c50b1E.exit.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i, %.noexc.i.i.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4800)
  %.val.i27.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4800, !noalias !4797 ; 5 uses
  %.val1.i28.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4800, !noalias !4797, !nonnull !22, !align !27, !noundef !22 ; 5 uses
  %i.ay = load ptr, ptr %.val1.i28.i.i.i.i, align 8, !invariant.load !22, !noalias !4801 ; 2 uses
  %.not.i.i29.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i29.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !4802
  invoke void %i.ay(ptr noundef nonnull %.val.i27.i.i.i.i)
          to label %bb.t unwind label %bb.u, !noalias !4801

bb.t:                                             ; preds = %bb.s, %.loopexit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !23, !invariant.load !22, !noalias !4801 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !41, !invariant.load !22, !noalias !4801 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd), !noalias !4802
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9d8f2aa28b988dc5E.exit34.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i": ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !4802
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #63, !noalias !4801
  br label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9d8f2aa28b988dc5E.exit34.i.i.i.i"

bb.u:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !23, !invariant.load !22, !noalias !4801 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !41, !invariant.load !22, !noalias !4801 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk), !noalias !4802
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i": ; preds = %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #63, !noalias !4801
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i", %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4797
  br label %.body.i.i.i.i

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4797
  call void @llvm.experimental.noalias.scope.decl(metadata !4803)
  %.val.i35.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4803, !noalias !4797, !nonnull !22, !align !28, !noundef !22
  %.val1.i36.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4803, !noalias !4797, !nonnull !22, !align !27, !noundef !22
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i36.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !22, !noalias !4804, !nonnull !22
  invoke void %i.bn(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %.val.i35.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfe38fb0725b1a8fcE.exit.i.i.i.i.i.i" unwind label %bb.w, !noalias !4805, !inline_history !4749

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfe38fb0725b1a8fcE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i", %bb.r
  %i.bo = phi ptr [ %.pre.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfe38fb0725b1a8fcE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i" ], [ %.sroa.5.0.copyload3, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %.sroa.6.0.copyload5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !4797
  %i.bq = add nuw nsw i64 %.sroa.6.0.copyload5, 1 ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4799, !noalias !4779
  br label %bb.m

bb.w:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfe38fb0725b1a8fcE.exit.i.i.i.i.i.i", %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h1797295aeeda33f1E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #65
          to label %bb.p unwind label %bb.x, !noalias !4797

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfe38fb0725b1a8fcE.exit.i.i.i.i.i.i": ; preds = %bb.v
  %i.bs = load i64, ptr %i.e, align 8, !noalias !4797, !noundef !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4797
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hc7f257131df3f6ecE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.6.0.copyload5, i64 noundef %i.bt, i64 noundef 8, i64 noundef 56)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfe38fb0725b1a8fcE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.w, !noalias !4806

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfe38fb0725b1a8fcE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfe38fb0725b1a8fcE.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4799, !noalias !4779
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w, %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #66, !noalias !4797
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i" ], [ %.pn.i.i.i.i.i.i, %bb.p ]
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h8e1b4debb1a53930E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #65
          to label %common.resume.i.i.i.i unwind label %bb.y, !noalias !4779

"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9d8f2aa28b988dc5E.exit34.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i", %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4792
  %.sroa.0.0.copyload1 = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4779
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17he0e62f8ee612caf5E.exit

bb.y:                                             ; preds = %.body.i.i.i.i, %bb.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body42.i.i.i.i
end_hunk_1
begin_hunk_2_@"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h3b73e53b0d540f2eE":bb.a
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ai, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4807)
  %.val.i45.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4807, !noalias !4779 ; 5 uses
  %.val1.i46.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4807, !noalias !4779, !nonnull !22, !align !27, !noundef !22 ; 5 uses
  %i.bw = load ptr, ptr %.val1.i46.i.i.i.i, align 8, !invariant.load !22, !noalias !4808 ; 2 uses
  %.not.i.i47.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i47.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  invoke void %i.bw(ptr noundef nonnull %.val.i45.i.i.i.i)
          to label %bb.ab unwind label %bb.ac, !noalias !4808

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !23, !invariant.load !22, !noalias !4808 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !41, !invariant.load !22, !noalias !4808 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, -9223372036854775807
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.by, 0
  br i1 %i.cc, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i": ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #63, !noalias !4808
  br label %common.resume.sink.split.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !23, !invariant.load !22, !noalias !4808 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !41, !invariant.load !22, !noalias !4808 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, -9223372036854775807
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp eq i64 %i.cf, 0
  br i1 %i.cj, label %.body51.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) %i.ch) #63, !noalias !4808
  br label %.body51.i.i.i.i

.body51.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i", %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4779
  br label %.body42.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17he0e62f8ee612caf5E.exit: ; preds = %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9cad29cd698c335E.exit.i.i.i.i", %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9d8f2aa28b988dc5E.exit34.i.i.i.i"
  %.sroa.6.0 = phi i64 [ 0, %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9cad29cd698c335E.exit.i.i.i.i" ], [ %.sroa.6.0.copyload5, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9d8f2aa28b988dc5E.exit34.i.i.i.i" ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9cad29cd698c335E.exit.i.i.i.i" ], [ %.sroa.5.0.copyload3, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9d8f2aa28b988dc5E.exit34.i.i.i.i" ]
  %.sroa.0.0 = phi i64 [ 0, %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9cad29cd698c335E.exit.i.i.i.i" ], [ %.sroa.0.0.copyload1, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9d8f2aa28b988dc5E.exit34.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4778
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
define internal void @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hdb71d9d3c9828896E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !4858 {
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
  %i.j = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values17hbda5aa758b958eeeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4860
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4862
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4861, !noalias !4863, !nonnull !22, !align !28, !noundef !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4861, !noalias !4863, !nonnull !22, !align !27, !noundef !22
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !22, !noalias !4864, !nonnull !22
  invoke void %i.n(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.i.i.i.i)
          to label %.noexc12.i.i.i.i unwind label %bb.d, !noalias !4862, !inline_history !4823

.noexc12.i.i.i.i:                                 ; preds = %bb.a
  %i.o = load i64, ptr %i.d, align 8, !range !31, !noalias !4862, !noundef !22
  %.not.i10.i.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i10.i.i.i.i, label %.noexc.thread.i.i.i.i, label %bb.b

.noexc.thread.i.i.i.i:                            ; preds = %.noexc12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4862
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.thread.i.i.i.i"

bb.b:                                             ; preds = %.noexc12.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !4862
  %i.q = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hc5078c68886cd466E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.d ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4862
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.thread.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h421ceaa24a35b6baE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull align 1 %i.q)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.i.i.i.i" unwind label %bb.d, !noalias !4860, !inline_history !4824

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.i.i.i.i": ; preds = %bb.c
  %.pr.i.i.i.i = load i8, ptr %i.h, align 8, !noalias !4860
  %.not.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 5
  br i1 %.not.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.thread.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4860
  call void @llvm.experimental.noalias.scope.decl(metadata !4865)
  %.val.i14.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4865, !noalias !4860, !nonnull !22, !align !28, !noundef !22
  %.val1.i15.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4865, !noalias !4860, !nonnull !22, !align !27, !noundef !22
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i15.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !22, !noalias !4866, !nonnull !22
  invoke void %i.t(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 %.val.i14.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0600e62294ccfb4cE.exit.i.i.i.i" unwind label %bb.i, !noalias !4867, !inline_history !4830

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.thread.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.i.i.i.i", %.noexc.i.i.i.i, %.noexc.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4860
  call void @llvm.experimental.noalias.scope.decl(metadata !4868)
  %.val.i17.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4868, !noalias !4860 ; 5 uses
  %.val1.i18.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4868, !noalias !4860, !nonnull !22, !align !27, !noundef !22 ; 5 uses
  %i.u = load ptr, ptr %.val1.i18.i.i.i.i, align 8, !invariant.load !22, !noalias !4869 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.thread.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i17.i.i.i.i)
          to label %bb.g unwind label %bb.h, !noalias !4869

bb.g:                                             ; preds = %bb.f, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.thread.i.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !23, !invariant.load !22, !noalias !4869 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !41, !invariant.load !22, !noalias !4869 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h59e62bc18d16678dE.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #63, !noalias !4869
  br label %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h59e62bc18d16678dE.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !23, !invariant.load !22, !noalias !4869 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !41, !invariant.load !22, !noalias !4869 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #63, !noalias !4869
  br label %common.resume.sink.split.i.i.i.i

common.resume.sink.split.i.i.i.i:                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i", %bb.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.h
  %common.resume.op.ph.i.i.i.i = phi { ptr, i32 } [ %i.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i" ], [ %i.ab, %bb.h ], [ %.pn.ph.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i" ], [ %.pn.ph.i.i.i.i, %bb.ab ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4860
  br label %common.resume.i.i.i.i

common.resume.i.i.i.i:                            ; preds = %.body.i.i.i.i, %common.resume.sink.split.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %common.resume.op.ph.i.i.i.i, %common.resume.sink.split.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h59e62bc18d16678dE.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4860
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h1a36d10cd8538fdcE.exit

bb.i:                                             ; preds = %bb.k, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h1797295aeeda33f1E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #65
          to label %bb.z unwind label %bb.y, !noalias !4860

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0600e62294ccfb4cE.exit.i.i.i.i": ; preds = %bb.e
  %i.aj = load i64, ptr %i.g, align 8, !noalias !4860, !noundef !22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4860
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.aj, i64 1)
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 4) ; 3 uses
  %i.al = mul i64 %.sroa.0.0.i.i.i.i.i, 56        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.aj, 164703072086692424
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !40

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0600e62294ccfb4cE.exit.i.i.i.i"
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !4870
  %i.an = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8) #63, !noalias !4870 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0600e62294ccfb4cE.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0600e62294ccfb4cE.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #64
          to label %.noexc14.i.i.i.i unwind label %bb.i, !noalias !4860

.noexc14.i.i.i.i:                                 ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.an, %bb.j ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !4860
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.i, align 8, !noalias !4860
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4860
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !4860
  call void @llvm.experimental.noalias.scope.decl(metadata !4871)
  call void @llvm.experimental.noalias.scope.decl(metadata !4872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4873
  br label %bb.m

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i", %bb.l
  %.sroa.5.0.copyload3 = phi ptr [ %i.bo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.0.copyload5 = phi i64 [ %i.bq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i" ], [ 1, %bb.l ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4874)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4875
  %.val.i20.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4874, !noalias !4876, !nonnull !22, !align !28, !noundef !22
  %.val1.i21.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4874, !noalias !4876, !nonnull !22, !align !27, !noundef !22
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i21.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !22, !noalias !4877, !nonnull !22
  invoke void %i.ar(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i20.i.i.i.i)
          to label %.noexc24.i.i.i.i unwind label %bb.q, !noalias !4875, !inline_history !4823

.noexc24.i.i.i.i:                                 ; preds = %bb.m
  %i.as = load i64, ptr %i.b, align 8, !range !31, !noalias !4875, !noundef !22
  %.not.i22.i.i.i.i = icmp eq i64 %i.as, 2
  br i1 %.not.i22.i.i.i.i, label %.noexc.i.i.thread.i.i.i.i, label %bb.n

.noexc.i.i.thread.i.i.i.i:                        ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4875
  br label %.loopexit.i.i.i.i.i.i

bb.n:                                             ; preds = %.noexc24.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !4875
  %i.at = invoke fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hc5078c68886cd466E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4875
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h421ceaa24a35b6baE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull align 1 %i.at)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.i.i.i.i.i.i" unwind label %bb.q, !noalias !4878, !inline_history !4824

bb.p:                                             ; preds = %bb.w, %bb.q
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.au, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h59e62bc18d16678dE"(ptr nonnull align 1 %i.k, ptr nonnull readonly align 8 dereferenceable(56) @69) #65
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !4879

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.i.i.i.i.i.i": ; preds = %bb.o
  %.pr.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !4878
  %.not.i.i15.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i, 5
  br i1 %.not.i.i15.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.i.i.i.i.i.i"
  %i.av = icmp samesign ult i64 %.sroa.6.0.copyload5, 164703072086692426
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.i, align 8, !range !23, !alias.scope !4880, !noalias !4860, !noundef !22
  %i.ax = icmp eq i64 %.sroa.6.0.copyload5, %i.aw
  br i1 %i.ax, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17d0c5db5a8aa362E.exit.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i, %.noexc.i.i.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4881)
  %.val.i27.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4881, !noalias !4878 ; 5 uses
  %.val1.i28.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4881, !noalias !4878, !nonnull !22, !align !27, !noundef !22 ; 5 uses
  %i.ay = load ptr, ptr %.val1.i28.i.i.i.i, align 8, !invariant.load !22, !noalias !4882 ; 2 uses
  %.not.i.i29.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i29.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !4883
  invoke void %i.ay(ptr noundef nonnull %.val.i27.i.i.i.i)
          to label %bb.t unwind label %bb.u, !noalias !4882

bb.t:                                             ; preds = %bb.s, %.loopexit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !23, !invariant.load !22, !noalias !4882 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !41, !invariant.load !22, !noalias !4882 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd), !noalias !4883
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hce5a62563685c342E.exit34.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i": ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !4883
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #63, !noalias !4882
  br label %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hce5a62563685c342E.exit34.i.i.i.i"

bb.u:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !23, !invariant.load !22, !noalias !4882 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !41, !invariant.load !22, !noalias !4882 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk), !noalias !4883
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i": ; preds = %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #63, !noalias !4882
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i", %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4878
  br label %.body.i.i.i.i

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4878
  call void @llvm.experimental.noalias.scope.decl(metadata !4884)
  %.val.i35.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4884, !noalias !4878, !nonnull !22, !align !28, !noundef !22
  %.val1.i36.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4884, !noalias !4878, !nonnull !22, !align !27, !noundef !22
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i36.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !22, !noalias !4885, !nonnull !22
  invoke void %i.bn(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %.val.i35.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i.i.i.i.i" unwind label %bb.w, !noalias !4886, !inline_history !4830

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i", %bb.r
  %i.bo = phi ptr [ %.pre.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i" ], [ %.sroa.5.0.copyload3, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %.sroa.6.0.copyload5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !4878
  %i.bq = add nuw nsw i64 %.sroa.6.0.copyload5, 1 ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4880, !noalias !4860
  br label %bb.m

bb.w:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i.i.i.i.i", %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h1797295aeeda33f1E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #65
          to label %bb.p unwind label %bb.x, !noalias !4878

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i.i.i.i.i": ; preds = %bb.v
  %i.bs = load i64, ptr %i.e, align 8, !noalias !4878, !noundef !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4878
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hc7f257131df3f6ecE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.6.0.copyload5, i64 noundef %i.bt, i64 noundef 8, i64 noundef 56)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.w, !noalias !4887

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4880, !noalias !4860
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w, %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #66, !noalias !4878
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i" ], [ %.pn.i.i.i.i.i.i, %bb.p ]
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h8e1b4debb1a53930E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #65
          to label %common.resume.i.i.i.i unwind label %bb.y, !noalias !4860

"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hce5a62563685c342E.exit34.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i", %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4873
  %.sroa.0.0.copyload1 = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4860
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h1a36d10cd8538fdcE.exit

bb.y:                                             ; preds = %.body.i.i.i.i, %bb.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body42.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN4core4iter6traits8iterator8Iterator3nth17hede2f92ff074ab93E:bb.a
  %.not.i.i = icmp eq i64 %1, 0
  %.val.i.pre = load ptr, ptr %0, align 8         ; 3 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !29255
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %.val1.i.pre, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert5, align 8, !invariant.load !22, !noalias !29256
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29257)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !29258, !nonnull !22, !noundef !22
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !22, !noalias !29259, !nonnull !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29260
  call void %i.h(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.pre), !noalias !29260, !inline_history !29249
  %i.i = load i64, ptr %i.d, align 8, !range !31, !noalias !29260, !noundef !22
  %.not3.i.i.i.i = icmp eq i64 %i.i, 2
  br i1 %.not3.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17hd9c3b0fdfded81cfE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !29260
  %i.j = call fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hc5078c68886cd466E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29261
  %i.k = add i64 %1, -1                           ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29260
  br i1 %i.l, label %.loopexit, label %.lr.ph

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !29260
  %i.m = call fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hc5078c68886cd466E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29261
  %i.n = add i64 %i.p, -1                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29260
  br i1 %i.o, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.p = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29260
  call void %i.h(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.pre), !noalias !29260, !inline_history !29249
  %i.q = load i64, ptr %i.d, align 8, !range !31, !noalias !29260, !noundef !22
  %.not.i.i.i.i = icmp eq i64 %i.q, 2
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17hd9c3b0fdfded81cfE.exit, label %.lr.ph.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator10advance_by17hd9c3b0fdfded81cfE.exit: ; preds = %.lr.ph, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29260
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %..loopexit_crit_edge
  %i.r = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29255
  call void %i.r(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i.pre), !noalias !29255, !inline_history !12
  %i.s = load i64, ptr %i.b, align 8, !range !31, !noalias !29255, !noundef !22
  %.not.i = icmp eq i64 %i.s, 2
  br i1 %.not.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habf3c9363a872826E.exit", label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !29255
  %i.u = call fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hc5078c68886cd466E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29255
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habf3c9363a872826E.exit"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habf3c9363a872826E.exit": ; preds = %.loopexit, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.u, %bb.c ], [ null, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29255
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17hd9c3b0fdfded81cfE.exit, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habf3c9363a872826E.exit"
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habf3c9363a872826E.exit" ], [ null, %_ZN4core4iter6traits8iterator8Iterator10advance_by17hd9c3b0fdfded81cfE.exit ]
  %i.v = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr @37, 1
  ret { ptr, ptr } %i.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3nth17hfd626c5a17b6bc3eE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !29279 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29281)
  %.not.i.i = icmp eq i64 %1, 0
  %.val.i.pre = load ptr, ptr %0, align 8         ; 3 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !29282
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %.val1.i.pre, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert5, align 8, !invariant.load !22, !noalias !29283
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29284)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !29285, !nonnull !22, !noundef !22
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !22, !noalias !29286, !nonnull !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29287
  call void %i.h(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.pre), !noalias !29287, !inline_history !29276
  %i.i = load i64, ptr %i.d, align 8, !range !31, !noalias !29287, !noundef !22
  %.not3.i.i.i.i = icmp eq i64 %i.i, 2
  br i1 %.not3.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h58f76d9c7747dcb5E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !29287
  %i.j = call fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hb8ed49c5fab5f683E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29288
  %i.k = add i64 %1, -1                           ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29287
  br i1 %i.l, label %.loopexit, label %.lr.ph

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !29287
  %i.m = call fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hb8ed49c5fab5f683E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29288
  %i.n = add i64 %i.p, -1                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29287
  br i1 %i.o, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.p = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29287
  call void %i.h(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 1 %.val.i.pre), !noalias !29287, !inline_history !29276
  %i.q = load i64, ptr %i.d, align 8, !range !31, !noalias !29287, !noundef !22
  %.not.i.i.i.i = icmp eq i64 %i.q, 2
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h58f76d9c7747dcb5E.exit, label %.lr.ph.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator10advance_by17h58f76d9c7747dcb5E.exit: ; preds = %.lr.ph, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29287
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %..loopexit_crit_edge
  %i.r = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29282
  call void %i.r(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 1 %.val.i.pre), !noalias !29282, !inline_history !13
  %i.s = load i64, ptr %i.b, align 8, !range !31, !noalias !29282, !noundef !22
  %.not.i = icmp eq i64 %i.s, 2
  br i1 %.not.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h123622515fb9e5e7E.exit", label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !29282
  %i.u = call fastcc ptr @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17hb8ed49c5fab5f683E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29282
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h123622515fb9e5e7E.exit"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h123622515fb9e5e7E.exit": ; preds = %.loopexit, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.u, %bb.c ], [ null, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29282
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17h58f76d9c7747dcb5E.exit, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h123622515fb9e5e7E.exit"
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h123622515fb9e5e7E.exit" ], [ null, %_ZN4core4iter6traits8iterator8Iterator10advance_by17h58f76d9c7747dcb5E.exit ]
  %i.v = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr @38, 1
  ret { ptr, ptr } %i.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h54fb0b18cef6e58cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !29351 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.71.0.copyload = load i64, ptr %.sroa.71.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29355
  %i.b = icmp eq i64 %.sroa.71.0.copyload, 0
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %.sroa.71.0.copyload, -1         ; 4 uses
  %i.d = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.d, label %bb.c, label %.critedge.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %.sroa.5.0.copyload to ptr  ; 3 uses
  %i.f = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.f, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d
  %xtraiter = and i64 %.sroa.6.0.copyload, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.prol, i64 280
  %i.h = add i64 %.sroa.011.014.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.prol = load ptr, ptr %i.g, align 8, !noalias !29356, !nonnull !22, !noundef !22 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !29306

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.unr = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.6.0.copyload, 8
  br i1 %i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i, i64 280
  %.sroa.012.0.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !29356, !nonnull !22, !noundef !22
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i, i64 280
  %.sroa.012.0.i.i.i.i.i.i.i.1 = load ptr, ptr %i.k, align 8, !noalias !29356, !nonnull !22, !noundef !22
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.1, i64 280
  %.sroa.012.0.i.i.i.i.i.i.i.2 = load ptr, ptr %i.l, align 8, !noalias !29356, !nonnull !22, !noundef !22
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.2, i64 280
  %.sroa.012.0.i.i.i.i.i.i.i.3 = load ptr, ptr %i.m, align 8, !noalias !29356, !nonnull !22, !noundef !22
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.3, i64 280
  %.sroa.012.0.i.i.i.i.i.i.i.4 = load ptr, ptr %i.n, align 8, !noalias !29356, !nonnull !22, !noundef !22
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.4, i64 280
  %.sroa.012.0.i.i.i.i.i.i.i.5 = load ptr, ptr %i.o, align 8, !noalias !29356, !nonnull !22, !noundef !22
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.5, i64 280
  %.sroa.012.0.i.i.i.i.i.i.i.6 = load ptr, ptr %i.p, align 8, !noalias !29356, !nonnull !22, !noundef !22
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.6, i64 280
  %i.r = add i64 %.sroa.011.014.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.7 = load ptr, ptr %i.q, align 8, !noalias !29356, !nonnull !22, !noundef !22 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.d, %bb.c
  %.sroa.37.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload, %bb.c ], [ %i.e, %bb.d ], [ %.sroa.012.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i, i64 274
  %i.u = load i16, ptr %i.t, align 2, !noalias !29357, !noundef !22
  %i.v = zext i16 %i.u to i64
  %i.w = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i.i, %i.v
  br i1 %i.w, label %bb.f, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i", %bb.e
  %.sroa.0.038.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.e ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.e ], [ %.sroa.26.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i" ]
  %i.x = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, align 8, !noalias !29358, !noundef !22 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.e

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.e
  %i.y = zext i16 %i.ab to i64
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.z = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, i64 272
  %i.ab = load i16, ptr %i.aa, align 8, !noalias !29358 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 274
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !29357, !noundef !22
  %i.ae = icmp ult i16 %i.ab, %i.ad
  br i1 %i.ae, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i" ], [ %i.y, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i" ], [ %i.z, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.i.i.i" ], [ %i.x, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.af = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, 0
  %i.ag = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.af, label %.loopexit8.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i, i64 280
  %i.ai = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %xtraiter41 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ak, %.prol.preheader ], [ %i.aj, %bb.g ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, %bb.g ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.prol.preheader ], [ 0, %bb.g ]
  %.pn28.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !29359, !nonnull !22, !noundef !22 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !29320

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.aj, %bb.g ], [ %i.ak, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, %bb.g ], [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.al = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, 8
  br i1 %i.al, label %.loopexit8.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i, align 8, !noalias !29359, !nonnull !22, !noundef !22
  %i.am = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.am, align 8, !noalias !29359, !nonnull !22, !noundef !22
  %i.an = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.an, align 8, !noalias !29359, !nonnull !22, !noundef !22
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ao, align 8, !noalias !29359, !nonnull !22, !noundef !22
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ap, align 8, !noalias !29359, !nonnull !22, !noundef !22
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.aq, align 8, !noalias !29359, !nonnull !22, !noundef !22
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ar, align 8, !noalias !29359, !nonnull !22, !noundef !22
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.as, align 8, !noalias !29359, !nonnull !22, !noundef !22 ; 2 uses
  %i.at = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.7, 0
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.7, i64 280
  br i1 %i.at, label %.loopexit8.i.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @755) #64
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.i, !noalias !29360

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i.i.i.i.i.i:                            ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #64, !noalias !29361
  unreachable

.loopexit8.i.i.i:                                 ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.8.0.copyload.i.i.i = phi i64 [ %i.ag, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.42.0.copyload.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i, %bb.f ], [ %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i, i64 8
  %i.ax = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !29362, !nonnull !22, !noundef !22
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.ba, align 8, !noalias !29362, !noundef !22
  %i.bb = tail call i64 @llvm.uadd.sat.i64(i64 %i.c, i64 1)
  %.sroa.0.0.i11.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bb, i64 4) ; 3 uses
  %i.bc = shl i64 %.sroa.0.0.i11.i.i.i, 4         ; 4 uses
  %i.bd = icmp ugt i64 %i.c, 1152921504606846974
  %i.be = icmp ugt i64 %i.bc, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.bd, %i.be
  br i1 %or.cond.i.i.i.i.i.i, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !40

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %.loopexit8.i.i.i
  %2 = icmp eq i64 %i.bc, 0
  br i1 %2, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29363
  %i.bf = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 9) 8) #63, !noalias !29363 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i"

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, %.loopexit8.i.i.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ], [ 0, %.loopexit8.i.i.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #64, !noalias !29355
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.bf, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ] ; 4 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i11.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ] ; 2 uses
  %3 = icmp ule i64 %.sroa.0.0.i11.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %3)
  store ptr %.val.i.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !29355
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store i64 %.val3.i.i.i.i, ptr %i.bh, align 8, !noalias !29355
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.a, align 8, !noalias !29355
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !29355
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !29355
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29365)
  %i.bi = icmp eq i64 %i.c, 0
  br i1 %i.bi, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hefdbd6b5a2951ee7E.exit.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.us.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.us.i.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i", %.noexc.i.i.i
  %i.bj = phi ptr [ %i.cy, %.noexc.i.i.i ], [ %.sroa.10.0.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i" ]
  %i.bk = phi i64 [ %i.db, %.noexc.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i" ] ; 5 uses
  %.sroa.37.0.copyload.i.pre.i.i.i11.us.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i.i.i.us.i.i.i.i.i, %.noexc.i.i.i ], [ %.sroa.8.0.copyload.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i" ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i10.us.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.us.i.i.i.i.i, %.noexc.i.i.i ], [ %.sroa.42.0.copyload.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i" ] ; 4 uses
  %.val78.us.i.i.i.i.i = phi i64 [ %i.bl, %.noexc.i.i.i ], [ %i.c, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i" ]
  %i.bl = add nsw i64 %.val78.us.i.i.i.i.i, -1    ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i10.us.i.i.i.i.i, i64 274
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !29366, !noundef !22
  %i.bo = zext i16 %i.bn to i64
  %i.bp = icmp ult i64 %.sroa.37.0.copyload.i.pre.i.i.i11.us.i.i.i.i.i, %i.bo
  br i1 %i.bp, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.us.i.i.i.i.i"
  %i.bq = add nuw nsw i64 %.sroa.37.0.copyload.i.pre.i.i.i11.us.i.i.i.i.i, 1
  br label %.loopexit.us.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i:                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.us.i.i.i.i.i", %bb.k
  %.sroa.0.038.i.i.i.i.i.i.us.i.i.i.i.i = phi ptr [ %i.br, %bb.k ], [ %.sroa.07.0.i.i.i.i.i10.us.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.us.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.us.i.i.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.us.i.i.i.i.i" ] ; 2 uses
  %i.br = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.us.i.i.i.i.i, align 8, !noalias !29367, !noundef !22 ; 8 uses
  %.not.i.i.i.i.i.i.i.us.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.us.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i
  %i.bs = add i64 %.sroa.5.037.i.i.i.i.i.i.us.i.i.i.i.i, 1 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.us.i.i.i.i.i, i64 272
  %i.bu = load i16, ptr %i.bt, align 8, !noalias !29367 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 274
  %i.bw = load i16, ptr %i.bv, align 2, !noalias !29366, !noundef !22
  %i.bx = icmp ult i16 %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.by = zext i16 %i.bu to i64                   ; 4 uses
  %i.bz = icmp eq i64 %i.bs, 0
  %i.ca = add nuw nsw i64 %i.by, 1                ; 2 uses
  br i1 %i.bz, label %.loopexit.us.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 280
  %i.cc = icmp ult i16 %i.bu, 11
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca ; 2 uses
  %xtraiter48 = and i64 %i.bs, 7                  ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit45, label %.prol.preheader44

.prol.preheader44:                                ; preds = %bb.m, %.prol.preheader44
  %.pn30.in.i.i.i.i.i.i.us.i.i.i.i.i.prol = phi ptr [ %i.ce, %.prol.preheader44 ], [ %i.cd, %bb.m ]
  %.pn28.in.i.i.i.i.i.i.us.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.us.i.i.i.i.i.prol, %.prol.preheader44 ], [ %i.bs, %bb.m ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader44 ], [ 0, %bb.m ]
  %.pn28.i.i.i.i.i.i.us.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.us.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.us.i.i.i.i.i.prol, align 8, !noalias !29368, !nonnull !22, !noundef !22 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit45, label %.prol.preheader44, !llvm.loop !29350

.prol.loopexit45:                                 ; preds = %.prol.preheader44, %bb.m
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.prol, %.prol.preheader44 ]
  %.pn30.in.i.i.i.i.i.i.us.i.i.i.i.i.unr = phi ptr [ %i.cd, %bb.m ], [ %i.ce, %.prol.preheader44 ]
  %.pn28.in.i.i.i.i.i.i.us.i.i.i.i.i.unr = phi i64 [ %i.bs, %bb.m ], [ %.pn28.i.i.i.i.i.i.us.i.i.i.i.i.prol, %.prol.preheader44 ]
  %i.cf = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.us.i.i.i.i.i, 7
  br i1 %i.cf, label %.loopexit.us.i.i.i.i.i, label %.new46

.new46:                                           ; preds = %.prol.loopexit45, %.new46
  %.pn30.in.i.i.i.i.i.i.us.i.i.i.i.i = phi ptr [ %i.co, %.new46 ], [ %.pn30.in.i.i.i.i.i.i.us.i.i.i.i.i.unr, %.prol.loopexit45 ]
  %.pn28.in.i.i.i.i.i.i.us.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.us.i.i.i.i.i.7, %.new46 ], [ %.pn28.in.i.i.i.i.i.i.us.i.i.i.i.i.unr, %.prol.loopexit45 ]
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.us.i.i.i.i.i, align 8, !noalias !29368, !nonnull !22, !noundef !22
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.us.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.1 = load ptr, ptr %i.cg, align 8, !noalias !29368, !nonnull !22, !noundef !22
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.2 = load ptr, ptr %i.ch, align 8, !noalias !29368, !nonnull !22, !noundef !22
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.3 = load ptr, ptr %i.ci, align 8, !noalias !29368, !nonnull !22, !noundef !22
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.4 = load ptr, ptr %i.cj, align 8, !noalias !29368, !nonnull !22, !noundef !22
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.5 = load ptr, ptr %i.ck, align 8, !noalias !29368, !nonnull !22, !noundef !22
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.6 = load ptr, ptr %i.cl, align 8, !noalias !29368, !nonnull !22, !noundef !22
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.us.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.us.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.7 = load ptr, ptr %i.cm, align 8, !noalias !29368, !nonnull !22, !noundef !22 ; 2 uses
  %i.cn = icmp eq i64 %.pn28.i.i.i.i.i.i.us.i.i.i.i.i.7, 0
  %i.co = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.7, i64 280
  br i1 %i.cn, label %.loopexit.us.i.i.i.i.i, label %.new46

.loopexit.us.i.i.i.i.i:                           ; preds = %.prol.loopexit45, %.new46, %bb.l, %.thread.i.i.i
  %.sroa.0.0.ph.i.i.i.i.i.us.i.i38.i.i.i = phi ptr [ %i.br, %bb.l ], [ %.sroa.07.0.i.i.i.i.i10.us.i.i.i.i.i, %.thread.i.i.i ], [ %i.br, %.new46 ], [ %i.br, %.prol.loopexit45 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.us.i.i37.i.i.i = phi i64 [ %i.by, %bb.l ], [ %.sroa.37.0.copyload.i.pre.i.i.i11.us.i.i.i.i.i, %.thread.i.i.i ], [ %i.by, %.new46 ], [ %i.by, %.prol.loopexit45 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.us.i.i.i.i.i = phi i64 [ %i.ca, %bb.l ], [ %i.bq, %.thread.i.i.i ], [ 0, %.new46 ], [ 0, %.prol.loopexit45 ]
  %.sroa.07.0.i.i.i.i.i.us.i.i.i.i.i = phi ptr [ %i.br, %bb.l ], [ %.sroa.07.0.i.i.i.i.i10.us.i.i.i.i.i, %.thread.i.i.i ], [ %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.lcssa.unr, %.prol.loopexit45 ], [ %.pn30.i.i.i.i.i.i.us.i.i.i.i.i.7, %.new46 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.us.i.i38.i.i.i, i64 8
  %i.cq = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.us.i.i37.i.i.i, 11
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.us.i.i37.i.i.i ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %.val.i.us.i.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !29369, !nonnull !22, !noundef !22
  %i.ct = getelementptr i8, ptr %i.cr, i64 16
  %.val3.i.us.i.i.i.i.i = load i64, ptr %i.ct, align 8, !noalias !29369, !noundef !22
  %i.cu = icmp samesign ult i64 %i.bk, 576460752303423488
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = load i64, ptr %i.a, align 8, !range !23, !alias.scope !29370, !noalias !29355, !noundef !22
  %i.cw = icmp eq i64 %i.bk, %i.cv
  br i1 %i.cw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5771debf45bcfce3E.exit.us.i.i.i.i.i", label %.noexc.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5771debf45bcfce3E.exit.us.i.i.i.i.i": ; preds = %.loopexit.us.i.i.i.i.i
  %i.cx = tail call i64 @llvm.uadd.sat.i64(i64 %i.bl, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hc7f257131df3f6ecE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bk, i64 noundef range(i64 1, 0) %i.cx, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5771debf45bcfce3E.exit.us.i.i..noexc_crit_edge.i.i.i" unwind label %.loopexit.split-lp.i.i.i, !noalias !29371

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5771debf45bcfce3E.exit.us.i.i..noexc_crit_edge.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5771debf45bcfce3E.exit.us.i.i.i.i.i"
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !29370, !noalias !29355
  br label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5771debf45bcfce3E.exit.us.i.i..noexc_crit_edge.i.i.i", %.loopexit.us.i.i.i.i.i
  %i.cy = phi ptr [ %.pre.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5771debf45bcfce3E.exit.us.i.i..noexc_crit_edge.i.i.i" ], [ %i.bj, %.loopexit.us.i.i.i.i.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.bk ; 2 uses
  store ptr %.val.i.us.i.i.i.i.i, ptr %i.cz, align 8, !noalias !29372
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %.val3.i.us.i.i.i.i.i, ptr %i.da, align 8, !noalias !29372
  %i.db = add nuw nsw i64 %i.bk, 1                ; 2 uses
  store i64 %i.db, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !29370, !noalias !29355
  %i.dc = icmp eq i64 %i.bl, 0
  br i1 %i.dc, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hefdbd6b5a2951ee7E.exit.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h1807bfe9244b1c63E.exit.i.i.i.us.i.i.i.i.i"

.split.us.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @755) #64
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !29373

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.split.us.i.i.i.i.i
  unreachable

bb.n:                                             ; preds = %.split.us.i.i.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !29374
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.de, align 8, !alias.scope !29374
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.df, align 8, !alias.scope !29374
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h704e4758b17fe1b0E.exit"

.loopexit.split-lp.i.i.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5771debf45bcfce3E.exit.us.i.i.i.i.i"
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  %.val9.pre.i.i.i = load i64, ptr %i.a, align 8, !noalias !29355 ; 2 uses
  %i.dg = icmp eq i64 %.val9.pre.i.i.i, 0
  br i1 %i.dg, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h7b233c3fc3846e50E.exit.i.i.i", label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i.i.i
  %.val10.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !29355, !nonnull !22, !noundef !22
  %i.dh = shl nuw i64 %.val9.pre.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29355
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h7b233c3fc3846e50E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hefdbd6b5a2951ee7E.exit.i.i.i": ; preds = %.noexc.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !29375
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h704e4758b17fe1b0E.exit"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h7b233c3fc3846e50E.exit.i.i.i": ; preds = %bb.p, %.loopexit.split-lp.i.i.i
  resume { ptr, i32 } %lpad.loopexit.i.i.i

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h704e4758b17fe1b0E.exit": ; preds = %bb.o, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hefdbd6b5a2951ee7E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29355
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17ha16eec4cb6bae442E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(544) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !29442 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 6 uses
  %i.b = alloca [544 x i8], align 8               ; 11 uses
  %i.c = alloca [120 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [544 x i8], align 8               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(544) %1, i64 544, i1 false), !alias.scope !29445, !noalias !29443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29449)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29450
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29453)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 512 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29455)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !29456, !noalias !29444, !noundef !22
  %i.i = load i64, ptr %i.f, align 8, !alias.scope !29457, !noalias !29444, !noundef !22 ; 2 uses
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbb66f6bc8275540cE.exit.thread.i.i.i", label %.preheader1.i.i.i.i.i.i.i

.preheader1.i.i.i.i.i.i.i:                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  %.promoted2.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !29457, !noalias !29444
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 536 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 528 ; 2 uses
end_hunk_3
