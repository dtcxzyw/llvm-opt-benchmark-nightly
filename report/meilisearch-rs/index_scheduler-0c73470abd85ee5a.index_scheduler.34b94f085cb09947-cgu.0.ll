Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h9837736bd0c8b584E":bb.a
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !29878, !nonnull !57, !noundef !57 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bz
  br i1 %i.cd, label %bb.u, label %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"

bb.u:                                             ; preds = %bb.t
  %i.ce = shl i64 %i.bw, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce
  store ptr %i.cf, ptr %i.cb, align 8, !noalias !29878
  br label %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h73f167c395562fbaE.exit8.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i6.i.i.i.i.i.i.i.i.i", %bb.m
  call void @"_ZN4core3ptr60drop_in_place$LT$milli..prompt..document..ParseableValue$GT$17hb4de1d2669af9eddE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #81, !noalias !29853
  br label %.body.i.i.i

"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17haeea9954c964c62dE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.n, %bb.n, %bb.n, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29852
  store ptr %.sroa.016.0.i.i.i.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !29842
  store i64 %.sroa.617.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !29842
  store i8 %.sroa.9.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !29842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !29842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29879
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h955321eed8421a71E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i)
          to label %.noexc5.i.i.i unwind label %.loopexit.i.i.i, !noalias !29835

.noexc5.i.i.i:                                    ; preds = %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"
  %i.cg = load i8, ptr %i.a, align 8, !range !63, !alias.scope !29880, !noalias !29879, !noundef !57
  %i.ch = icmp eq i8 %i.cg, 5
  br i1 %i.ch, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %.noexc5.i.i.i
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.a)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i, !noalias !29835

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i": ; preds = %bb.v, %.noexc5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29842
  invoke fastcc void @"_ZN104_$LT$core..iter..sources..from_fn..FromFn$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha313736e07790e78E"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.noexc7.i.i.i unwind label %.loopexit.i.i.i, !noalias !29835

.noexc7.i.i.i:                                    ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i"
  %i.ci = load i64, ptr %i.g, align 8, !range !70, !noalias !29841, !noundef !57 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ci, 98
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h0a499f8ae7a657c4E.exit, label %bb.b

.loopexit.i.i.i:                                  ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i", %bb.v, %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.h, %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i"
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h73f167c395562fbaE.exit8.i.i.i.i.i.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ah, %bb.d ], [ %i.as, %"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h73f167c395562fbaE.exit8.i.i.i.i.i.i.i.i.i" ], [ %i.aq, %bb.k ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$RP$$GT$$GT$17h04c99547d46ee7f5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.i)
          to label %"_ZN4core3ptr172drop_in_place$LT$std..collections..hash..map..HashMap$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$GT$$GT$17h7656edb0e853d439E.exit.i.i.i" unwind label %bb.w, !noalias !29835, !inline_history !4

bb.w:                                             ; preds = %.body.i.i.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !29835
  unreachable

"_ZN4core3ptr172drop_in_place$LT$std..collections..hash..map..HashMap$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$GT$$GT$17h7656edb0e853d439E.exit.i.i.i": ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h0a499f8ae7a657c4E.exit: ; preds = %.noexc7.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29839
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29835
  store i8 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h00219ee7761a551eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @370, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h93a4c917a1cf2bb7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @371, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17hcea169529c90e94bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @372, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_object17h13b9f9627514acb1E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_object17h284c0ab082c21198E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_object17h99e65a2cf0ed1d19E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h020ead1b1029b9f1E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17ha576804c94c7431fE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17hb4205450fa548260E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 0, 74) i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE"(i32 %.8.val) unnamed_addr #14 {
switch.lookup:
  %i.a = and i32 %.8.val, 511
  %i.b = add nuw nsw i32 %i.a, -363521075
  %i.c = ashr i32 %.8.val, 10
  %i.d = add nsw i32 %i.c, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.d, -100
  %i.e = add nsw i32 %i.b, %.neg.i
  %i.f = sdiv i32 %i.d, 400
  %i.g = add nsw i32 %i.e, %i.f
  %i.h = sext i32 %i.d to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = add nsw i32 %i.g, %i.k
  %i.m = srem i32 %i.l, 7
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [2 x i8], ptr @"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE", i64 %i.n
  %switch.gep = getelementptr i8, ptr %i.o, i64 12
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.p = trunc i32 %.8.val to i16
  %i.q = and i16 %i.p, 511
  %i.r = add nuw nsw i16 %i.q, 6
  %i.s = add nsw i16 %i.r, %switch.load
  %i.t = udiv i16 %i.s, 7
  %i.u = trunc nuw nsw i16 %i.t to i8
  ret i8 %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 0, 74) i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE"(i32 %.8.val) unnamed_addr #14 {
switch.lookup:
  %i.a = and i32 %.8.val, 511
  %i.b = add nuw nsw i32 %i.a, -363521075
  %i.c = ashr i32 %.8.val, 10
  %i.d = add nsw i32 %i.c, 999999                 ; 3 uses
  %.neg.i.i = sdiv i32 %i.d, -100
  %i.e = add nsw i32 %i.b, %.neg.i.i
  %i.f = sdiv i32 %i.d, 400
  %i.g = add nsw i32 %i.e, %i.f
  %i.h = sext i32 %i.d to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = add nsw i32 %i.g, %i.k
  %i.m = srem i32 %i.l, 7
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [2 x i8], ptr @"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE", i64 %i.n
  %switch.gep = getelementptr i8, ptr %i.o, i64 12
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.p = trunc i32 %.8.val to i16
  %i.q = and i16 %i.p, 511
  %i.r = add nuw nsw i16 %i.q, 6
  %i.s = add nsw i16 %i.r, %switch.load
  %i.t = udiv i16 %i.s, 7
  %i.u = trunc nuw nsw i16 %i.t to i8
  ret i8 %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 -66245516071199, 66121194247199) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$22unix_timestamp_seconds17h8568d98cf1aa9827E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2 ; 2 uses
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.61.0.copyload = load i32, ptr %.sroa.61.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.7.0.copyload = load i24, ptr %.sroa.7.0..sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.3.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.61.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.61.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.3.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.7.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.7.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.7.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  ret i64 %i.ad
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i128 -66245516071199000000000, 66121194247199000000000) i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$26unix_timestamp_nanoseconds17h69dbc1d2695dba51E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 2 ; 2 uses
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.71.0.copyload = load i32, ptr %.sroa.71.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.8.0.copyload = load i24, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.6.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.4.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.6.0.copyload to i64
  %i.f = ashr i32 %.sroa.71.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.71.0.copyload, 511
  %i.n = add nsw i32 %.neg.i.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.4.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i.i = trunc i24 %.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i.i = lshr i24 %.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i.i = lshr i24 %.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i.i
  %neg11.i.i = sext i8 %narrow.i.i to i64
  %narrow14.i.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i.i
  %.neg7.i.i = sext i8 %narrow14.i.i to i64
  %narrow15.i.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i.i
  %neg.i.i = sext i8 %narrow15.i.i to i64
  %reass.add.i.i = add nsw i64 %neg.i.i, %i.d
  %reass.mul.i.i = mul nsw i64 %reass.add.i.i, 60
  %reass.add12.i.i = add nsw i64 %neg11.i.i, %i.e
  %reass.mul13.i.i = mul nsw i64 %reass.add12.i.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  ret i128 %i.ai
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i128 -66245516071199000000, 66121194247199000000) i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h2028fbd112cadd72E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000
  ret i128 %i.aj
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 -66245516071199000, 66121194247199000) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4fac17dc882169cdE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000000
  %i.ak = trunc nsw i128 %i.aj to i64
  ret i64 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h2ca5501a3c05760cE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @373, i64 27 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17h18defd37a25c90faE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !29884, !noalias !29885, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 30
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 24 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [96 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 13 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [128 x i8], align 8               ; 19 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [72 x i8], align 8               ; 16 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [72 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [72 x i8], align 8               ; 12 uses
  %i.af = alloca [72 x i8], align 8               ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 19 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [72 x i8], align 8               ; 12 uses
  %i.aw = alloca [72 x i8], align 8               ; 12 uses
  %i.ax = alloca [16 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 11 uses
  %i.be = alloca [16 x i8], align 8               ; 10 uses
  %i.bf = alloca [56 x i8], align 8               ; 10 uses
  %i.bg = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.14.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [56 x i8], align 8               ; 11 uses
  %i.bj = alloca [64 x i8], align 8               ; 22 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.10.i.sroa.5.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [48 x i8], align 8               ; 7 uses
  %i.bo = alloca [24 x i8], align 8               ; 13 uses
  %i.bp = alloca [48 x i8], align 8               ; 7 uses
  %i.bq = alloca [56 x i8], align 8               ; 19 uses
  %i.br = alloca [344 x i8], align 8              ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [344 x i8], align 8              ; 8 uses
  %i.bu = alloca [88 x i8], align 8               ; 17 uses
  %.sroa.7.sroa.8.sroa.9.sroa.9 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.20.sroa.7 = alloca [16 x i8], align 8    ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30798)
  %i.bw = load ptr, ptr %1, align 8, !alias.scope !30796, !noalias !30799, !nonnull !57, !noundef !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !30800, !nonnull !57, !noundef !57
  %i.bz = load i64, ptr %2, align 8, !range !71, !alias.scope !30801, !noalias !30802, !noundef !57
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cb = trunc nuw i64 %i.bz to i1
  %i.cc = load ptr, ptr %i.ca, align 8, !alias.scope !30801, !noalias !30802, !nonnull !57, !align !61
  %.sroa.05.0.i.i = select i1 %i.cb, ptr %i.ca, ptr %i.cc ; 4 uses
  %i.cd = load ptr, ptr %.sroa.05.0.i.i, align 8, !noalias !30802, !nonnull !57, !noundef !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !30800, !nonnull !57, !noundef !57
  %i.cg = icmp eq ptr %i.by, %i.cf
  %.sink1421.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink1421.sroa.gep2196 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink1421.sroa.gep2198 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sink1421.sroa.gep2199 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink1421.sroa.gep2201 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sink1421.sroa.gep2202 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
end_hunk_0
begin_hunk_1_@_ZN15index_scheduler5queue5Queue8register17h0be7d55737be855aE:bb.a
  %i.ob = insertelement <2 x i64> %i.oa, i64 %i.nz, i64 1
  %i.oc = load i64, ptr %i.nw, align 8, !noalias !51876
  %i.od = load i64, ptr %i.nx, align 8, !noalias !51876
  %i.oe = insertelement <2 x i64> poison, i64 %i.oc, i64 0
  %i.of = insertelement <2 x i64> %i.oe, i64 %i.od, i64 1
  %i.og = add <2 x i64> %i.ob, %vec.phi           ; 2 uses
  %i.oh = add <2 x i64> %i.of, %vec.phi1014       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oi = icmp eq i64 %index.next, %n.vec
  br i1 %i.oi, label %middle.block, label %vector.body, !llvm.loop !51470

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.oh, %i.og
  %i.oj = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.i.preheader1121

.preheader.i.preheader1121:                       ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.09.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.oj, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader1121, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i"
  %.sroa.09.0.i.i = phi i64 [ %i.op, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i" ], [ %.sroa.09.0.i.i.ph, %.preheader.i.preheader1121 ] ; 2 uses
  %.sroa.07.0.i.i = phi i64 [ %i.oo, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i" ], [ %.sroa.07.0.i.i.ph, %.preheader.i.preheader1121 ]
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr %i.lz, i64 %.sroa.09.0.i.i ; 2 uses
  %.val.i.i56 = load i64, ptr %i.ok, align 8, !range !83, !noalias !51876, !noundef !57
  %i.ol = getelementptr i8, ptr %i.ok, i64 16
  %.val19.i.i = load i64, ptr %i.ol, align 8, !noalias !51876 ; 2 uses
  %i.om = icmp eq i64 %.val.i.i56, -9223372036854775808
  br i1 %i.om, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i", label %bb.es

bb.es:                                            ; preds = %.preheader.i
  %i.on = icmp ult i64 %.val19.i.i, 4611686018427387904
  call void @llvm.assume(i1 %i.on)
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i": ; preds = %bb.es, %.preheader.i
  %i.oo = add i64 %.val19.i.i, %.sroa.07.0.i.i    ; 2 uses
  %i.op = add nuw i64 %.sroa.09.0.i.i, 1          ; 2 uses
  %i.oq = icmp eq i64 %i.op, %i.nl
  br i1 %i.oq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", label %.preheader.i, !llvm.loop !51471

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i", %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i", %bb.el
  %.sroa.04.0.i.i = phi i64 [ 0, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i" ], [ 0, %bb.el ], [ %i.oo, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i" ]
  %i.or = load i64, ptr %i.br, align 8, !range !98, !alias.scope !51876, !noundef !57
  %i.os = add nsw i64 %i.or, -11
  %or.cond.i = icmp ult i64 %i.os, 2
  br i1 %or.cond.i, label %bb.et, label %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit

bb.et:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i"
  %.sroa.02.0.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i64 %.sroa.04.0.i.i, ptr %.sroa.02.0.i, align 8, !alias.scope !51876
  br label %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit

.loopexit326:                                     ; preds = %bb.en
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.loopexit.split-lp327:                            ; preds = %bb.ic, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i"
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.body80:                                          ; preds = %.loopexit326, %.loopexit.split-lp327, %bb.gy, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %.body.i68
  %eh.lpad-body81 = phi { ptr, i32 } [ %.pn30.i, %bb.gy ], [ %.pn30.i, %.body.i68 ], [ %.pn30.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %lpad.loopexit328, %.loopexit326 ], [ %lpad.loopexit.split-lp329, %.loopexit.split-lp327 ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.br) #81
          to label %.thread299 unwind label %bb.ig

_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit: ; preds = %bb.et, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", %"_ZN80_$LT$meilisearch_types..tasks..KindWithContent$u20$as$u20$core..clone..Clone$GT$5clone17h1f0143e95f6e0bcaE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !51884)
  %i.ot = load i64, ptr %i.mi, align 8, !range !95, !alias.scope !51884, !noalias !51885, !noundef !57 ; 2 uses
  %i.ou = icmp ne i64 %i.ot, -9223372036854775790
  call void @llvm.assume(i1 %i.ou)
  %i.ov = icmp eq i64 %i.ot, -9223372036854775798
  br i1 %i.ov, label %bb.eu, label %bb.ic

bb.eu:                                            ; preds = %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !51886
  %i.ow = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16 ; 2 uses
  %i.oy = load i8, ptr %i.ox, align 8, !range !74, !noalias !51887, !noundef !57
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.eu
  %.pre.i.i.i.i.i = load i64, ptr %i.ow, align 8, !noalias !51888
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !51888
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i": ; preds = %bb.eu
  %i.pa = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc79 unwind label %.loopexit.split-lp327 ; 2 uses

.noexc79:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i"
  %i.pb = extractvalue { i64, i64 } %i.pa, 0
  %i.pc = extractvalue { i64, i64 } %i.pa, 1      ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store i64 %i.pc, ptr %i.pd, align 8, !noalias !51889
  store i8 1, ptr %i.ox, align 8, !noalias !51889
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"

"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i": ; preds = %.noexc79, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i ], [ %i.pc, %.noexc79 ]
  %i.pe = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i ], [ %i.pb, %.noexc79 ] ; 2 uses
  %i.pf = add i64 %i.pe, 1
  store i64 %i.pf, ptr %i.ow, align 8, !noalias !51888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false), !noalias !51886
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  store i64 %i.pe, ptr %.sroa.4126.0..sroa_idx.i, align 8, !noalias !51886
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  store i64 %.pre-phi.i.i, ptr %.sroa.5127.0..sroa_idx.i, align 8, !noalias !51886
  %i.pg = load ptr, ptr %.sroa.39.0..sroa_idx, align 8, !alias.scope !51884, !noalias !51885, !nonnull !57, !noundef !57 ; 2 uses
  %i.ph = load i64, ptr %.sroa.41.0..sroa_idx, align 8, !alias.scope !51884, !noalias !51885, !noundef !57 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ph, 56
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 %.idx.i
  %.not384.i = icmp eq i64 %i.ph, 0
  br i1 %.not384.i, label %.thread503.i, label %.lr.ph.i

.thread503.i:                                     ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !51890
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit.i.i.i.i"

.lr.ph.i:                                         ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"
  %.sroa.421.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.812.0..sroa_idx.i.i.i43.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.1018.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.fh, %.lr.ph.i
  %.sroa.0292.0 = phi ptr [ null, %.lr.ph.i ], [ %.sroa.0292.2, %bb.fh ]
  %.sroa.7293.0 = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.7293.2, %bb.fh ]
  %.sroa.10294.0 = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.10294.2, %bb.fh ]
  %.sroa.026.0385.i = phi ptr [ %i.pg, %.lr.ph.i ], [ %i.pr, %bb.fh ] ; 3 uses
  %i.po = phi ptr [ null, %.lr.ph.i ], [ %i.ahk, %bb.fh ]
  %i.pp = phi i64 [ undef, %.lr.ph.i ], [ %i.ahj, %bb.fh ]
  %i.pq = phi i64 [ 0, %.lr.ph.i ], [ %i.ahi, %bb.fh ]
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.026.0385.i, i64 56 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.026.0385.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !51886
  store i64 2, ptr %.sroa.421.0..sroa_idx.i58, align 8, !noalias !51886
  store ptr %.sroa.026.0385.i, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !51886
  store ptr %i.ps, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !51886
  br label %bb.ew

._crit_edge.i:                                    ; preds = %bb.fh
  switch i64 %i.ahi, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit74.i" [
    i64 0, label %bb.gw
    i64 1, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit.i"
  ]

.loopexit214.i:                                   ; preds = %bb.gs, %bb.gr, %bb.gq
  %lpad.loopexit216.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp215.i

.loopexit.split-lp215.loopexit.i:                 ; preds = %bb.fb
  %lpad.loopexit218.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp215.i

.loopexit.split-lp215.loopexit.split-lp.i:        ; preds = %.invoke.i, %.invoke580.i
  %.sroa.0292.5 = phi ptr [ %.sroa.0292.1, %.invoke.i ], [ %.sroa.0292.4, %.invoke580.i ]
  %.sroa.7293.5 = phi i64 [ %.sroa.7293.1, %.invoke.i ], [ %.sroa.7293.4, %.invoke580.i ]
  %lpad.loopexit.split-lp219.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp215.i

bb.ew:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i", %bb.ev
  %.sroa.0292.1 = phi ptr [ %.sroa.0292.0, %bb.ev ], [ %.sroa.0292.2, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 10 uses
  %.sroa.7293.1 = phi i64 [ %.sroa.7293.0, %bb.ev ], [ %.sroa.7293.2, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 10 uses
  %.sroa.10294.1 = phi i64 [ %.sroa.10294.0, %bb.ev ], [ %.sroa.10294.2, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 3 uses
  %i.pt = phi i64 [ 0, %bb.ev ], [ 1, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 2 uses
  %i.pu = phi ptr [ %i.po, %bb.ev ], [ %i.ahk, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 10 uses
  %i.pv = phi i64 [ %i.pp, %bb.ev ], [ %i.ahj, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 8 uses
  %i.pw = phi i64 [ %i.pq, %bb.ev ], [ %i.ahi, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 3 uses
  %i.px = add nuw nsw i64 %i.pt, 1                ; 2 uses
  store i64 %i.px, ptr %i.u, align 8, !alias.scope !51891, !noalias !51886
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %.sroa.522.0..sroa_idx.i, i64 %i.pt
  %i.pz = load ptr, ptr %i.py, align 8, !alias.scope !51891, !noalias !51886, !nonnull !57, !align !61, !noundef !57 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51892)
  call void @llvm.experimental.noalias.scope.decl(metadata !51893)
  %.val.i.i59 = load i64, ptr %.sroa.4126.0..sroa_idx.i, align 8, !alias.scope !51892, !noalias !51894, !noundef !57 ; 2 uses
  %.val8.i.i = load i64, ptr %.sroa.5127.0..sroa_idx.i, align 8, !alias.scope !51892, !noalias !51894, !noundef !57 ; 2 uses
  %i.qa = xor i64 %.val.i.i59, 8317987319222330741 ; 2 uses
  %i.qb = xor i64 %.val8.i.i, 7237128888997146477 ; 2 uses
  %i.qc = xor i64 %.val.i.i59, 7816392313619706465 ; 2 uses
  %i.qd = xor i64 %.val8.i.i, 8387220255154660723 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.qe, align 8, !alias.scope !51893, !noalias !51895, !nonnull !57, !noundef !57 ; 5 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.qf, align 8, !alias.scope !51893, !noalias !51895, !noundef !57 ; 6 uses
  %i.qg = and i64 %.val1.i.i.i.i.i, 7             ; 7 uses
  %i.qh = and i64 %.val1.i.i.i.i.i, -8            ; 5 uses
  %.not199.i = icmp eq i64 %i.qh, 0
  br i1 %.not199.i, label %._crit_edge.i117.i, label %.lr.ph.i110.i

._crit_edge.i117.i:                               ; preds = %.lr.ph.i110.i, %bb.ew
  %.sroa.22.4.i = phi i64 [ %i.qb, %bb.ew ], [ %i.rl, %.lr.ph.i110.i ] ; 6 uses
  %.sroa.12.4.i = phi i64 [ %i.qc, %bb.ew ], [ %i.ro, %.lr.ph.i110.i ] ; 4 uses
  %.sroa.0163.4.i = phi i64 [ %i.qa, %bb.ew ], [ %i.rp, %.lr.ph.i110.i ] ; 4 uses
  %.sroa.32.4.i = phi i64 [ %i.qd, %bb.ew ], [ %i.rn, %.lr.ph.i110.i ] ; 4 uses
  %i.qi = icmp samesign ugt i64 %i.qg, 3
  br i1 %i.qi, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %._crit_edge.i117.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.qh
  %.sroa.014.0.copyload.i18.i109.i = load i32, ptr %i.qj, align 1, !alias.scope !51896, !noalias !51897
  %i.qk = zext i32 %.sroa.014.0.copyload.i18.i109.i to i64
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %._crit_edge.i117.i
  %.sroa.011.0.i12.i101.i = phi i64 [ %i.qk, %bb.ex ], [ 0, %._crit_edge.i117.i ] ; 2 uses
  %.sroa.0.0.i13.i102.i = phi i64 [ 4, %bb.ex ], [ 0, %._crit_edge.i117.i ] ; 5 uses
  %i.ql = or disjoint i64 %.sroa.0.0.i13.i102.i, 1
  %i.qm = icmp samesign ult i64 %i.ql, %i.qg
  br i1 %i.qm, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.qn = getelementptr i8, ptr %.val.i.i.i.i.i, i64 %i.qh
  %i.qo = getelementptr i8, ptr %i.qn, i64 %.sroa.0.0.i13.i102.i
  %.sroa.015.0.copyload.i17.i108.i = load i16, ptr %i.qo, align 1, !alias.scope !51896, !noalias !51897
  %i.qp = zext i16 %.sroa.015.0.copyload.i17.i108.i to i64
  %i.qq = shl nuw nsw i64 %.sroa.0.0.i13.i102.i, 3
  %i.qr = shl nuw nsw i64 %i.qp, %i.qq
  %i.qs = or i64 %i.qr, %.sroa.011.0.i12.i101.i
  %i.qt = or disjoint i64 %.sroa.0.0.i13.i102.i, 2
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.sroa.011.1.i14.i103.i = phi i64 [ %i.qs, %bb.ez ], [ %.sroa.011.0.i12.i101.i, %bb.ey ] ; 2 uses
  %.sroa.0.1.i15.i104.i = phi i64 [ %i.qt, %bb.ez ], [ %.sroa.0.0.i13.i102.i, %bb.ey ] ; 3 uses
  %i.qu = icmp samesign ult i64 %.sroa.0.1.i15.i104.i, %i.qg
  br i1 %i.qu, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i"

.lr.ph.i110.i:                                    ; preds = %bb.ew, %.lr.ph.i110.i
  %i.qv = phi i64 [ %i.ro, %.lr.ph.i110.i ], [ %i.qc, %bb.ew ]
  %i.qw = phi i64 [ %i.rl, %.lr.ph.i110.i ], [ %i.qb, %bb.ew ] ; 3 uses
  %i.qx = phi i64 [ %i.rn, %.lr.ph.i110.i ], [ %i.qd, %bb.ew ]
  %.sroa.04.020.i115.i = phi i64 [ %i.rq, %.lr.ph.i110.i ], [ 0, %bb.ew ] ; 2 uses
  %i.qy = phi i64 [ %i.rp, %.lr.ph.i110.i ], [ %i.qa, %bb.ew ]
  %i.qz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.04.020.i115.i
  %.sroa.08.0.copyload.i116.i = load i64, ptr %i.qz, align 1, !alias.scope !51898, !noalias !51897 ; 2 uses
  %i.ra = xor i64 %.sroa.08.0.copyload.i116.i, %i.qx ; 3 uses
  %i.rb = add i64 %i.qy, %i.qw                    ; 3 uses
  %i.rc = add i64 %i.ra, %i.qv                    ; 2 uses
  %i.rd = call i64 @llvm.fshl.i64(i64 %i.qw, i64 %i.qw, i64 13)
  %i.re = xor i64 %i.rb, %i.rd                    ; 3 uses
  %i.rf = call i64 @llvm.fshl.i64(i64 %i.ra, i64 %i.ra, i64 16)
  %i.rg = xor i64 %i.rc, %i.rf                    ; 3 uses
  %i.rh = call i64 @llvm.fshl.i64(i64 %i.rb, i64 %i.rb, i64 32)
  %i.ri = add i64 %i.rc, %i.re                    ; 3 uses
  %i.rj = add i64 %i.rg, %i.rh                    ; 2 uses
  %i.rk = call i64 @llvm.fshl.i64(i64 %i.re, i64 %i.re, i64 17)
  %i.rl = xor i64 %i.ri, %i.rk                    ; 2 uses
  %i.rm = call i64 @llvm.fshl.i64(i64 %i.rg, i64 %i.rg, i64 21)
  %i.rn = xor i64 %i.rm, %i.rj                    ; 2 uses
  %i.ro = call i64 @llvm.fshl.i64(i64 %i.ri, i64 %i.ri, i64 32) ; 2 uses
  %i.rp = xor i64 %i.rj, %.sroa.08.0.copyload.i116.i ; 2 uses
  %i.rq = add nuw i64 %.sroa.04.020.i115.i, 8     ; 2 uses
  %i.rr = icmp ult i64 %i.rq, %i.qh
  br i1 %i.rr, label %.lr.ph.i110.i, label %._crit_edge.i117.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i": ; preds = %bb.fa
  %6 = icmp eq i64 %i.qg, 0
  br i1 %6, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i.a": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i"
  %7 = shl nuw nsw i64 %i.qg, 3
  %8 = shl nuw nsw i64 255, %7
  %9 = or i64 %.sroa.011.1.i14.i103.i, %8
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit.i"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i: ; preds = %bb.fa
  %10 = add nuw i64 %.sroa.0.1.i15.i104.i, %i.qh  ; 2 uses
  %11 = icmp ult i64 %10, %.val1.i.i.i.i.i
  call void @llvm.assume(i1 %11), !noalias !51899
  %12 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %10
  %13 = load i8, ptr %12, align 1, !alias.scope !51896, !noalias !51897, !noundef !57
  %14 = zext i8 %13 to i64
  %15 = shl nuw nsw i64 %.sroa.0.1.i15.i104.i, 3
  %16 = shl nuw nsw i64 %14, %15
  %i.rs = shl nuw nsw i64 %i.qg, 3
  %i.rt = shl nuw i64 255, %i.rs
  %17 = or i64 %i.rt, %16
  %i.ru = or i64 %17, %.sroa.011.1.i14.i103.i     ; 3 uses
  %.not200.i = icmp eq i64 %i.qg, 7
  br i1 %.not200.i, label %.thread.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit.i"

.thread.i:                                        ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i
  %i.rv = xor i64 %i.ru, %.sroa.32.4.i            ; 3 uses
  %i.rw = add i64 %.sroa.0163.4.i, %.sroa.22.4.i  ; 3 uses
  %i.rx = add i64 %i.rv, %.sroa.12.4.i            ; 2 uses
  %i.ry = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.i, i64 %.sroa.22.4.i, i64 13)
  %i.rz = xor i64 %i.rw, %i.ry                    ; 3 uses
  %i.sa = call i64 @llvm.fshl.i64(i64 %i.rv, i64 %i.rv, i64 16)
  %i.sb = xor i64 %i.rx, %i.sa                    ; 3 uses
  %i.sc = call i64 @llvm.fshl.i64(i64 %i.rw, i64 %i.rw, i64 32)
  %i.sd = add i64 %i.rx, %i.rz                    ; 3 uses
  %i.se = add i64 %i.sb, %i.sc                    ; 2 uses
  %i.sf = call i64 @llvm.fshl.i64(i64 %i.rz, i64 %i.rz, i64 17)
  %i.sg = xor i64 %i.sd, %i.sf
  %i.sh = call i64 @llvm.fshl.i64(i64 %i.sb, i64 %i.sb, i64 21)
  %i.si = xor i64 %i.sh, %i.se
  %i.sj = call i64 @llvm.fshl.i64(i64 %i.sd, i64 %i.sd, i64 32)
  %i.sk = xor i64 %i.se, %i.ru
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit.i": ; preds = %.thread.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i.a", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i"
  %.sroa.22.2.i = phi i64 [ %.sroa.22.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.22.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i.a" ], [ %i.sg, %.thread.i ], [ %.sroa.22.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i" ] ; 3 uses
  %.sroa.12.2.i = phi i64 [ %.sroa.12.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.12.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i.a" ], [ %i.sj, %.thread.i ], [ %.sroa.12.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i" ]
  %.sroa.0163.2.i = phi i64 [ %.sroa.0163.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.0163.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i.a" ], [ %i.sk, %.thread.i ], [ %.sroa.0163.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i" ]
  %.sroa.32.2.i = phi i64 [ %.sroa.32.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %.sroa.32.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i.a" ], [ %i.si, %.thread.i ], [ %.sroa.32.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i" ]
  %.sroa.50.0.i = phi i64 [ %i.ru, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %9, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i.a" ], [ 0, %.thread.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit119.i" ]
  %18 = shl i64 %.val1.i.i.i.i.i, 56
  %19 = add i64 %18, 72057594037927936
  %i.sl = or i64 %.sroa.50.0.i, %19               ; 2 uses
  %i.sm = xor i64 %i.sl, %.sroa.32.2.i            ; 3 uses
  %i.sn = add i64 %.sroa.0163.2.i, %.sroa.22.2.i  ; 3 uses
  %i.so = add i64 %i.sm, %.sroa.12.2.i            ; 2 uses
  %i.sp = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.i, i64 %.sroa.22.2.i, i64 13)
  %i.sq = xor i64 %i.sn, %i.sp                    ; 3 uses
  %i.sr = call i64 @llvm.fshl.i64(i64 %i.sm, i64 %i.sm, i64 16)
  %i.ss = xor i64 %i.sr, %i.so                    ; 3 uses
  %i.st = call i64 @llvm.fshl.i64(i64 %i.sn, i64 %i.sn, i64 32)
  %i.su = add i64 %i.so, %i.sq                    ; 3 uses
  %i.sv = add i64 %i.ss, %i.st                    ; 2 uses
  %i.sw = call i64 @llvm.fshl.i64(i64 %i.sq, i64 %i.sq, i64 17)
  %i.sx = xor i64 %i.su, %i.sw                    ; 3 uses
  %i.sy = call i64 @llvm.fshl.i64(i64 %i.ss, i64 %i.ss, i64 21)
  %i.sz = xor i64 %i.sy, %i.sv                    ; 3 uses
  %i.ta = call i64 @llvm.fshl.i64(i64 %i.su, i64 %i.su, i64 32)
  %i.tb = xor i64 %i.sv, %i.sl
  %i.tc = xor i64 %i.ta, 255
  %i.td = add i64 %i.tb, %i.sx                    ; 3 uses
  %i.te = add i64 %i.sz, %i.tc                    ; 2 uses
  %i.tf = call i64 @llvm.fshl.i64(i64 %i.sx, i64 %i.sx, i64 13)
  %i.tg = xor i64 %i.td, %i.tf                    ; 3 uses
  %i.th = call i64 @llvm.fshl.i64(i64 %i.sz, i64 %i.sz, i64 16)
  %i.ti = xor i64 %i.th, %i.te                    ; 3 uses
  %i.tj = call i64 @llvm.fshl.i64(i64 %i.td, i64 %i.td, i64 32)
  %i.tk = add i64 %i.tg, %i.te                    ; 3 uses
  %i.tl = add i64 %i.ti, %i.tj                    ; 2 uses
  %i.tm = call i64 @llvm.fshl.i64(i64 %i.tg, i64 %i.tg, i64 17)
  %i.tn = xor i64 %i.tk, %i.tm                    ; 3 uses
  %i.to = call i64 @llvm.fshl.i64(i64 %i.ti, i64 %i.ti, i64 21)
  %i.tp = xor i64 %i.to, %i.tl                    ; 3 uses
  %i.tq = call i64 @llvm.fshl.i64(i64 %i.tk, i64 %i.tk, i64 32)
  %i.tr = add i64 %i.tn, %i.tl                    ; 3 uses
  %i.ts = add i64 %i.tp, %i.tq                    ; 2 uses
  %i.tt = call i64 @llvm.fshl.i64(i64 %i.tn, i64 %i.tn, i64 13)
  %i.tu = xor i64 %i.tt, %i.tr                    ; 3 uses
  %i.tv = call i64 @llvm.fshl.i64(i64 %i.tp, i64 %i.tp, i64 16)
  %i.tw = xor i64 %i.tv, %i.ts                    ; 3 uses
  %i.tx = call i64 @llvm.fshl.i64(i64 %i.tr, i64 %i.tr, i64 32)
  %i.ty = add i64 %i.tu, %i.ts                    ; 3 uses
  %i.tz = add i64 %i.tw, %i.tx                    ; 2 uses
  %i.ua = call i64 @llvm.fshl.i64(i64 %i.tu, i64 %i.tu, i64 17)
  %i.ub = xor i64 %i.ua, %i.ty                    ; 3 uses
  %i.uc = call i64 @llvm.fshl.i64(i64 %i.tw, i64 %i.tw, i64 21)
  %i.ud = xor i64 %i.uc, %i.tz                    ; 3 uses
  %i.ue = call i64 @llvm.fshl.i64(i64 %i.ty, i64 %i.ty, i64 32)
  %i.uf = add i64 %i.ub, %i.tz
  %i.ug = add i64 %i.ud, %i.ue                    ; 2 uses
  %i.uh = call i64 @llvm.fshl.i64(i64 %i.ub, i64 %i.ub, i64 13)
  %i.ui = xor i64 %i.uh, %i.uf                    ; 3 uses
  %i.uj = call i64 @llvm.fshl.i64(i64 %i.ud, i64 %i.ud, i64 16)
  %i.uk = xor i64 %i.uj, %i.ug                    ; 2 uses
  %i.ul = add i64 %i.ui, %i.ug                    ; 3 uses
  %i.um = call i64 @llvm.fshl.i64(i64 %i.ui, i64 %i.ui, i64 17)
  %i.un = call i64 @llvm.fshl.i64(i64 %i.uk, i64 %i.uk, i64 21)
  %i.uo = call i64 @llvm.fshl.i64(i64 %i.ul, i64 %i.ul, i64 32)
  %i.up = xor i64 %i.un, %i.um
  %i.uq = xor i64 %i.up, %i.uo
  %i.ur = xor i64 %i.uq, %i.ul                    ; 2 uses
  %i.us = load i64, ptr %i.pj, align 8, !alias.scope !51900, !noalias !51901, !noundef !57
  %i.ut = icmp eq i64 %i.us, 0
  br i1 %i.ut, label %bb.fb, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32b43f93e52592ddE.exit.i.i.i", !prof !60

bb.fb:                                            ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit.i"
  %i.uu = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17ha14a6e535bde4f36E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4126.0..sroa_idx.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32b43f93e52592ddE.exit.i.i.i" unwind label %.loopexit.split-lp215.loopexit.i, !noalias !51886 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32b43f93e52592ddE.exit.i.i.i": ; preds = %bb.fb, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit.i"
  %.val.i.i.i60 = load ptr, ptr %i.v, align 8, !alias.scope !51902, !noalias !51903, !nonnull !57, !noundef !57 ; 8 uses
  %.val7.i.i.i = load i64, ptr %i.pk, align 8, !alias.scope !51902, !noalias !51903, !noundef !57 ; 4 uses
  %i.uv = lshr i64 %i.ur, 57
  %i.uw = trunc nuw nsw i64 %i.uv to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.uw, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fe, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32b43f93e52592ddE.exit.i.i.i"
  %.pn.i.i.i.i61 = phi i64 [ %i.ur, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32b43f93e52592ddE.exit.i.i.i" ], [ %i.vx, %bb.fe ]
  %.sroa.6.0.i.i.i.i62 = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32b43f93e52592ddE.exit.i.i.i" ], [ %.sroa.6.120.i.i.i.i, %bb.fe ]
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32b43f93e52592ddE.exit.i.i.i" ], [ %.sroa.01.122.i.i.i.i, %bb.fe ]
  %i.ux = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32b43f93e52592ddE.exit.i.i.i" ], [ %i.vw, %bb.fe ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i.i61, %.val7.i.i.i ; 4 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.val.i.i.i60, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.uy, align 1, !noalias !51904 ; 3 uses
  %i.uz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.va = bitcast <16 x i1> %i.uz to i16          ; 2 uses
  %.not25.i.i.i.i = icmp eq i16 %i.va, 0
  br i1 %.not25.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fc, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h73d4a536deeb237fE.exit.thread.i.i.i"
  %.sroa.05.026.i.i.i.i = phi i16 [ %i.vm, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h73d4a536deeb237fE.exit.thread.i.i.i" ], [ %i.va, %bb.fc ] ; 3 uses
  %i.vb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i, i1 true)
  %i.vc = zext nneg i16 %i.vb to i64
  %i.vd = add i64 %.sroa.0.017.i.i.i.i, %i.vc
  %i.ve = and i64 %i.vd, %.val7.i.i.i
  %i.vf = sub nsw i64 0, %i.ve
  %i.vg = getelementptr inbounds [8 x i8], ptr %.val.i.i.i60, i64 %i.vf
  %i.vh = getelementptr inbounds i8, ptr %i.vg, i64 -8
  %.val3.i.i.i.i = load ptr, ptr %i.vh, align 8, !noalias !51905, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  %i.vi = getelementptr i8, ptr %.val3.i.i.i.i, i64 16
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.vi, align 8, !noalias !51905, !noundef !57
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h73d4a536deeb237fE.exit.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h73d4a536deeb237fE.exit.thread.i.i.i", !prof !160

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h73d4a536deeb237fE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %i.vj = getelementptr i8, ptr %.val3.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.vj, align 8, !noalias !51905, !nonnull !57, !noundef !57
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i), !alias.scope !51906, !noalias !51905
  %i.vk = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.vk, label %bb.fi, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h73d4a536deeb237fE.exit.thread.i.i.i", !prof !59

._crit_edge.i.i.i.i:                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h73d4a536deeb237fE.exit.thread.i.i.i", %bb.fc
  %.not13.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i, 1
  br i1 %.not13.i.i.i.i, label %.thread.i.i.i.i, label %bb.fd, !prof !60

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h73d4a536deeb237fE.exit.thread.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h73d4a536deeb237fE.exit.i.i.i", %.lr.ph.i.i.i.i
  %i.vl = add i16 %.sroa.05.026.i.i.i.i, -1
  %i.vm = and i16 %i.vl, %.sroa.05.026.i.i.i.i    ; 2 uses
  %.not.i.i.i.i63 = icmp eq i16 %i.vm, 0
  br i1 %.not.i.i.i.i63, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.fd:                                            ; preds = %._crit_edge.i.i.i.i
  %i.vn = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, zeroinitializer
  %i.vo = bitcast <16 x i1> %i.vn to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i = icmp eq i16 %i.vo, 0  ; 2 uses
  %i.vp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.vo, i1 true)
  %i.vq = zext nneg i16 %i.vp to i64
  %.sroa.6.0.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i, i64 undef, i64 %i.vq
  %i.vr = add i64 %.sroa.6.0.i.i.i.i.i, %.sroa.0.017.i.i.i.i
  %i.vs = and i64 %i.vr, %.val7.i.i.i
  br i1 %.not.not.i.not.i.i.i.i, label %bb.fe, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.fd, %._crit_edge.i.i.i.i
  %.sroa.6.121.i.i.i.i = phi i64 [ %i.vs, %bb.fd ], [ %.sroa.6.0.i.i.i.i62, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.vt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.vu = bitcast <16 x i1> %i.vt to i16
  %i.vv = icmp eq i16 %i.vu, 0
  br i1 %i.vv, label %bb.fe, label %bb.ff, !prof !60

bb.fe:                                            ; preds = %.thread.i.i.i.i, %bb.fd
  %.sroa.01.122.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.fd ]
  %.sroa.6.120.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.fd ]
  %i.vw = add i64 %i.ux, 16                       ; 2 uses
  %i.vx = add i64 %i.vw, %.sroa.0.017.i.i.i.i
  br label %bb.fc

bb.ff:                                            ; preds = %.thread.i.i.i.i
  %i.vy = getelementptr inbounds nuw i8, ptr %.val.i.i.i60, i64 %.sroa.6.121.i.i.i.i
  %i.vz = load i8, ptr %i.vy, align 1, !noalias !51907, !noundef !57 ; 2 uses
  %i.wa = icmp sgt i8 %i.vz, -1
  br i1 %i.wa, label %bb.fg, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h11fc8382bcc5abadE.exit.i", !prof !60

bb.fg:                                            ; preds = %bb.ff
  %.val62.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i60, align 16, !noalias !51907
  %i.wb = icmp slt <16 x i8> %.val62.i.i.i.i.i, zeroinitializer
  %i.wc = bitcast <16 x i1> %i.wb to i16          ; 2 uses
  %i.wd = icmp ne i16 %i.wc, 0
  call void @llvm.assume(i1 %i.wd)
  %i.we = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.wc, i1 true)
  %i.wf = zext nneg i16 %i.we to i64              ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i60, i64 %i.wf
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !51908
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h11fc8382bcc5abadE.exit.i"

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i68

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i.i.i78.i
  %lpad.loopexit210.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i68

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.hj, %bb.he
  %lpad.loopexit.split-lp211.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i68

bb.fh:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !51886
  %.not.i65 = icmp eq ptr %i.pr, %i.pi
  br i1 %.not.i65, label %._crit_edge.i, label %bb.ev

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h11fc8382bcc5abadE.exit.i": ; preds = %bb.fg, %bb.ff
  %i.wg = phi i8 [ %.pre.i.i, %bb.fg ], [ %i.vz, %bb.ff ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.wf, %bb.fg ], [ %.sroa.6.121.i.i.i.i, %bb.ff ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51909)
  %i.wh = getelementptr inbounds nuw i8, ptr %.val.i.i.i60, i64 %.sroa.3.0.i.ph.i.i.i
  %i.wi = and i8 %i.wg, 1
  %i.wj = zext nneg i8 %i.wi to i64
  %i.wk = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.wl = and i64 %i.wk, %.val7.i.i.i
  store i8 %i.uw, ptr %i.wh, align 1, !noalias !51908
  %i.wm = getelementptr i8, ptr %.val.i.i.i60, i64 %i.wl
  %i.wn = getelementptr i8, ptr %i.wm, i64 16
  store i8 %i.uw, ptr %i.wn, align 1, !noalias !51908
  %i.wo = load <2 x i64>, ptr %i.pj, align 8, !alias.scope !51910, !noalias !51911
  %i.wp = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.wj, i64 0
  %i.wq = sub <2 x i64> %i.wo, %i.wp
end_hunk_1
begin_hunk_2_@"_ZN15index_scheduler9scheduler13process_batch49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$20delete_matched_tasks17h605763e0ea12dc87E":bb.a
  %.sroa.0.0.copyload.i.i.i1461 = load i32, ptr %i.bsc, align 1, !alias.scope !62923, !noalias !62924
  %i.bto = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i.i1461)
  %.sroa.6.8.insert.ext.i = zext i32 %i.bto to i64
  %i.btp = inttoptr i64 %.sroa.6.8.insert.ext.i to ptr
  br label %"_ZN78_$LT$heed_types..integer..U32$LT$O$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h2d6317804a954d9bE.exit.i1462"

"_ZN78_$LT$heed_types..integer..U32$LT$O$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h2d6317804a954d9bE.exit.i1462": ; preds = %bb.sc, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5d8b1bbe5ed56de1E.exit.i.i1474"
  %.sroa.6.0.i1463 = phi ptr [ @990, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5d8b1bbe5ed56de1E.exit.i.i1474" ], [ %i.btp, %bb.sc ] ; 6 uses
  %.sroa.0.052.i = phi ptr [ %i.btk, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5d8b1bbe5ed56de1E.exit.i.i1474" ], [ null, %bb.sc ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !62910
  invoke fastcc void @"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h07d1e3f3cf0e1ae9E"(ptr noalias noundef align 8 captures(address) dereferenceable(784) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bse, i64 noundef %i.bsf)
          to label %bb.se unwind label %bb.sd, !noalias !62911

bb.sd:                                            ; preds = %"_ZN78_$LT$heed_types..integer..U32$LT$O$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h2d6317804a954d9bE.exit.i1462"
  %i.btq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$core..result..Result$LT$u32$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$17h78d7524a4deaaeb2E"(ptr %.sroa.0.052.i, ptr %.sroa.6.0.i1463) #81
          to label %.body1487 unwind label %bb.sh, !noalias !62911

bb.se:                                            ; preds = %"_ZN78_$LT$heed_types..integer..U32$LT$O$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17h2d6317804a954d9bE.exit.i1462"
  store ptr %.sroa.0.052.i, ptr %i.n, align 8, !noalias !62910
  store ptr %.sroa.6.0.i1463, ptr %.sroa.6.0..sroa_idx51.i, align 8, !noalias !62910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.us, ptr noundef nonnull align 8 dereferenceable(784) %i.m, i64 784, i1 false), !noalias !62910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !62910
  %.not41.not.i = icmp eq ptr %.sroa.0.052.i, null
  %i.btr = ptrtoint ptr %.sroa.6.0.i1463 to i64
  %i.bts = trunc i64 %i.btr to i32                ; 4 uses
  %i.btt = load i64, ptr %i.us, align 8, !range !94, !noalias !62910 ; 2 uses
  %i.btu = icmp eq i64 %i.btt, 20                 ; 2 uses
  br i1 %.not41.not.i, label %bb.sf, label %bb.sg

bb.sf:                                            ; preds = %bb.se
  br i1 %i.btu, label %.thread.i1473, label %bb.sp

bb.sg:                                            ; preds = %bb.se
  br i1 %i.btu, label %bb.si, label %.thread59.i

.thread.i1473:                                    ; preds = %bb.sf
  %i.btv = load ptr, ptr %.sroa.4.i1459.sroa.5.4..sroa_idx, align 8, !noalias !62910, !nonnull !57, !align !64, !noundef !57
  %i.btw = load ptr, ptr %.sroa.4.i1459.sroa.7.4..sroa_idx, align 8, !noalias !62910, !nonnull !57, !align !61, !noundef !57
  br label %.thread1378

bb.sh:                                            ; preds = %bb.sd
  %i.btx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !62911
  unreachable

.thread59.i:                                      ; preds = %bb.sg
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.us)
          to label %.thread1378 unwind label %.loopexit.split-lp1546

bb.si:                                            ; preds = %bb.sg
  call void @llvm.experimental.noalias.scope.decl(metadata !62925)
  %i.bty = load ptr, ptr %.sroa.4.i1459.sroa.7.4..sroa_idx, align 8, !alias.scope !62925, !noalias !62910, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.btz = load ptr, ptr %i.bty, align 8, !invariant.load !57, !noalias !62926 ; 2 uses
  %.not.i50.i = icmp eq ptr %i.btz, null
  br i1 %.not.i50.i, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.bua = load ptr, ptr %.sroa.4.i1459.sroa.5.4..sroa_idx, align 8, !alias.scope !62925, !noalias !62910, !nonnull !57, !noundef !57 ; 2 uses
  invoke void %i.btz(ptr noundef nonnull %i.bua)
          to label %bb.sk unwind label %bb.sl, !noalias !62926

bb.sk:                                            ; preds = %bb.sj, %bb.si
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bty, i64 8
  %i.buc = load i64, ptr %i.bub, align 8, !range !56, !invariant.load !57, !noalias !62926 ; 2 uses
  %i.bud = getelementptr inbounds nuw i8, ptr %i.bty, i64 16
  %i.bue = load i64, ptr %i.bud, align 8, !range !90, !invariant.load !57, !noalias !62926 ; 2 uses
  %i.buf = icmp ult i64 %i.bue, -9223372036854775807
  call void @llvm.assume(i1 %i.buf)
  %i.bug = icmp eq i64 %i.buc, 0
  br i1 %i.bug, label %.thread1378, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1469"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1469": ; preds = %bb.sk
  %.val2.i.i1470 = load ptr, ptr %.sroa.4.i1459.sroa.5.4..sroa_idx, align 8, !alias.scope !62925, !noalias !62910, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i1470, i64 noundef %i.buc, i64 noundef range(i64 1, -9223372036854775807) %i.bue) #79, !noalias !62926
  br label %.thread1378

bb.sl:                                            ; preds = %bb.sj
  %i.buh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %i.bty, i64 8
  %i.buj = load i64, ptr %i.bui, align 8, !range !56, !invariant.load !57, !noalias !62926 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %i.bty, i64 16
  %i.bul = load i64, ptr %i.buk, align 8, !range !90, !invariant.load !57, !noalias !62926 ; 2 uses
  %i.bum = icmp ult i64 %i.bul, -9223372036854775807
  call void @llvm.assume(i1 %i.bum)
  %i.bun = icmp eq i64 %i.buj, 0
  br i1 %i.bun, label %.body1487, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i1468"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i1468": ; preds = %bb.sl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bua, i64 noundef %i.buj, i64 noundef range(i64 1, -9223372036854775807) %i.bul) #79, !noalias !62926
  br label %.body1487

.body1487:                                        ; preds = %.loopexit1545, %.loopexit.split-lp1546, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i1468", %bb.sl, %bb.sd, %bb.sa, %.body1498
  %.pn720 = phi { ptr, i32 } [ %eh.lpad-body1499, %.body1498 ], [ %i.buh, %bb.sl ], [ %i.btq, %bb.sd ], [ %i.btm, %bb.sa ], [ %i.buh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i1468" ], [ %lpad.loopexit1547, %.loopexit1545 ], [ %lpad.loopexit.split-lp1548, %.loopexit.split-lp1546 ]
  invoke fastcc void @"_ZN4core3ptr185drop_in_place$LT$heed..iterator..range..RoRange$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..tasks..Task$GT$$GT$$GT$17h40f746ab40f30e85E"(ptr noalias noundef align 8 dereferenceable(80) %i.dr) #81
          to label %.body904 unwind label %bb.jp

.loopexit1545:                                    ; preds = %bb.vh, %bb.rn, %bb.ro
  %lpad.loopexit1547 = landingpad { ptr, i32 }
          cleanup
  br label %.body1487

.loopexit.split-lp1546:                           ; preds = %.thread59.i
  %lpad.loopexit.split-lp1548 = landingpad { ptr, i32 }
          cleanup
  br label %.body1487

.thread1378:                                      ; preds = %.thread.i1473, %bb.sk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1469", %.thread59.i
  %.sroa.19.0.ph = phi ptr [ %.sroa.6.0.i1463, %.thread59.i ], [ %.sroa.6.0.i1463, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1469" ], [ %.sroa.6.0.i1463, %bb.sk ], [ %i.btw, %.thread.i1473 ]
  %.sroa.1760.0.ph = phi ptr [ %.sroa.0.052.i, %.thread59.i ], [ %.sroa.0.052.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1469" ], [ %.sroa.0.052.i, %bb.sk ], [ %i.btv, %.thread.i1473 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !62910
  br label %bb.so

bb.sm:                                            ; preds = %bb.rp, %._crit_edge3098, %.split79.i, %"_ZN45_$LT$C$u20$as$u20$heed_traits..Comparator$GT$7compare17h1b64cb15f3ee862fE.exit.i1483", %.split.i1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !62910
  invoke fastcc void @"_ZN4core3ptr185drop_in_place$LT$heed..iterator..range..RoRange$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..tasks..Task$GT$$GT$$GT$17h40f746ab40f30e85E"(ptr noalias noundef align 8 dereferenceable(80) %i.dr)
          to label %bb.sn unwind label %.loopexit.split-lp1552.loopexit

bb.sn:                                            ; preds = %bb.sm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %bb.dv

bb.so:                                            ; preds = %.thread1378, %.thread1361
  %.sroa.1760.11371.ph = phi ptr [ %.sroa.1760.0.ph, %.thread1378 ], [ %.sroa.1760.16.copyload61, %.thread1361 ]
  %.sroa.19.11369.ph = phi ptr [ %.sroa.19.0.ph, %.thread1378 ], [ %.sroa.19.16.copyload62, %.thread1361 ]
  %i.buo = phi <2 x i32> [ <i32 3, i32 undef>, %.thread1378 ], [ %i.bsb, %.thread1361 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !62910
  store i64 127, ptr %0, align 8
  %.sroa.4353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.buo, ptr %.sroa.4353.0..sroa_idx, align 8
  %.sroa.4353.sroa.5.0..sroa.4353.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1760.11371.ph, ptr %.sroa.4353.sroa.5.0..sroa.4353.0..sroa_idx.sroa_idx, align 8
  %.sroa.4353.sroa.6.0..sroa.4353.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.19.11369.ph, ptr %.sroa.4353.sroa.6.0..sroa.4353.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @"_ZN4core3ptr185drop_in_place$LT$heed..iterator..range..RoRange$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..tasks..Task$GT$$GT$$GT$17h40f746ab40f30e85E"(ptr noalias noundef align 8 dereferenceable(80) %i.dr)
          to label %bb.vn unwind label %.loopexit.split-lp1552.loopexit.split-lp

bb.sp:                                            ; preds = %bb.sf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.3598.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(752) %.sroa.4.i1459.sroa.9.4..sroa_idx, i64 752, i1 false)
  %i.bup = load <2 x i32>, ptr %.sroa.4.i1459.sroa.5.4..sroa_idx, align 8, !noalias !62910
  %i.buq = load <2 x ptr>, ptr %.sroa.4.i1459.sroa.7.4..sroa_idx, align 8, !noalias !62910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !62910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !62910
  store i64 %i.btt, ptr %i.dq, align 8
  store <2 x i32> %i.bup, ptr %.sroa.2597.0..sroa_idx, align 8
  store <2 x ptr> %i.buq, ptr %.sroa.2597.sroa.3.0..sroa.2597.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  invoke void @_ZN17meilisearch_types5tasks4Task7indexes17h4d96dafb36540464E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.dq)
          to label %bb.sr unwind label %bb.sq

bb.sq:                                            ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17heefd72e6c92c730bE.exit", %switch.lookup, %bb.ub, %bb.un, %bb.uy, %bb.uz, %bb.vl, %bb.vg, %bb.uu, %bb.uj, %bb.tx, %bb.sp
  %i.bur = landingpad { ptr, i32 }
          cleanup
  br label %.body1498

.body1498:                                        ; preds = %.body.i.i.i.i.i.i, %bb.tp, %bb.tq, %bb.tr, %bb.sq
  %eh.lpad-body1499 = phi { ptr, i32 } [ %i.bur, %bb.sq ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.tp ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.cdb, %bb.tq ], [ %i.cdb, %bb.tr ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.dq) #81
          to label %.body1487 unwind label %bb.jp

bb.sr:                                            ; preds = %bb.sp
  %.sroa.0.0.copyload.i = load i64, ptr %i.dp, align 8, !alias.scope !62927, !noalias !62928 ; 6 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i1490, align 8, !alias.scope !62927, !noalias !62928, !nonnull !57, !noundef !57 ; 5 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i1491, align 8, !alias.scope !62927, !noalias !62928 ; 5 uses
  %i.bus = icmp ult i64 %.sroa.5.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.bus)
  %.idx = shl nuw nsw i64 %.sroa.5.0.copyload.i, 4
  %i.but = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.experimental.noalias.scope.decl(metadata !62929)
  call void @llvm.experimental.noalias.scope.decl(metadata !62930)
  %i.buu = load i64, ptr %i.ut, align 8, !alias.scope !62931, !noalias !62932, !noundef !57
  %i.buv = icmp eq i64 %i.buu, 0
  %i.buw = add nuw nsw i64 %.sroa.5.0.copyload.i, 1
  %i.bux = lshr i64 %i.buw, 1
  %.sroa.0.0.i.i1492 = select i1 %i.buv, i64 %.sroa.5.0.copyload.i, i64 %i.bux ; 2 uses
  %i.buy = load i64, ptr %i.uu, align 8, !alias.scope !62933, !noalias !62934, !noundef !57
  %i.buz = icmp ugt i64 %.sroa.0.0.i.i1492, %i.buy
  br i1 %i.buz, label %bb.ss, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i", !prof !60

bb.ss:                                            ; preds = %bb.sr
  %i.bva = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc042eebdd92975e1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.eb, i64 noundef %.sroa.0.0.i.i1492, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4297.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i" unwind label %bb.tq, !noalias !62932 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i": ; preds = %bb.ss, %bb.sr
  call void @llvm.experimental.noalias.scope.decl(metadata !62935)
  call void @llvm.experimental.noalias.scope.decl(metadata !62936)
  call void @llvm.experimental.noalias.scope.decl(metadata !62937)
  call void @llvm.experimental.noalias.scope.decl(metadata !62938)
  %.not13.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not13.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i", %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd089351e8969bb7E.exit.i.i.i.i.i.i"
  %i.bvb = phi ptr [ %i.bvf, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd089351e8969bb7E.exit.i.i.i.i.i.i" ], [ %.sroa.4.0.copyload.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i" ] ; 3 uses
  %i.bvc = load ptr, ptr %i.bvb, align 8, !noalias !62939, !nonnull !57, !align !64, !noundef !57
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvb, i64 8
  %i.bve = load i64, ptr %i.bvd, align 8, !noalias !62939, !noundef !57 ; 11 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bvb, i64 16 ; 2 uses
  %i.bvg = icmp slt i64 %i.bve, 0
  br i1 %i.bvg, label %bb.st, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hddd39313a515a330E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !60

bb.st:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2180, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2541) #80
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !62939

.noexc.i.i.i.i.i.i:                               ; preds = %bb.st
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hddd39313a515a330E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bvh = invoke { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef range(i64 1, 9) 1, i64 noundef %i.bve)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !62939 ; 2 uses

.noexc7.i.i.i.i.i.i:                              ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hddd39313a515a330E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.bvi = invoke { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef range(i64 1, 9) 1, i64 noundef %i.bve)
          to label %.noexc8.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !62939 ; 2 uses

.noexc8.i.i.i.i.i.i:                              ; preds = %.noexc7.i.i.i.i.i.i
  %i.bvj = extractvalue { i64, i64 } %i.bvi, 0    ; 2 uses
  %i.bvk = extractvalue { i64, i64 } %i.bvi, 1    ; 2 uses
  %i.bvl = icmp eq i64 %i.bvk, 0
  br i1 %i.bvl, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %.noexc8.i.i.i.i.i.i
  %i.bvm = inttoptr i64 %i.bvj to ptr
  br label %"_ZN5alloc2rc21Rc$LT$$u5b$T$u5d$$GT$18allocate_for_slice28_$u7b$$u7b$closure$u7d$$u7d$17hf5cbdaabd62091aaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.sv:                                            ; preds = %.noexc8.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !62940
  %i.bvn = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bvk, i64 noundef range(i64 1, -9223372036854775807) %i.bvj) #79, !noalias !62940
  br label %"_ZN5alloc2rc21Rc$LT$$u5b$T$u5d$$GT$18allocate_for_slice28_$u7b$$u7b$closure$u7d$$u7d$17hf5cbdaabd62091aaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc2rc21Rc$LT$$u5b$T$u5d$$GT$18allocate_for_slice28_$u7b$$u7b$closure$u7d$$u7d$17hf5cbdaabd62091aaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.sv, %bb.su
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bvm, %bb.su ], [ %i.bvn, %bb.sv ] ; 6 uses
  %i.bvo = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.bvo, label %bb.sw, label %bb.sx

bb.sw:                                            ; preds = %"_ZN5alloc2rc21Rc$LT$$u5b$T$u5d$$GT$18allocate_for_slice28_$u7b$$u7b$closure$u7d$$u7d$17hf5cbdaabd62091aaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.bvp = extractvalue { i64, i64 } %i.bvh, 1
  %i.bvq = extractvalue { i64, i64 } %i.bvh, 0
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %i.bvq, i64 noundef %i.bvp) #80
          to label %.noexc9.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !62939

.noexc9.i.i.i.i.i.i:                              ; preds = %bb.sw
  unreachable

bb.sx:                                            ; preds = %"_ZN5alloc2rc21Rc$LT$$u5b$T$u5d$$GT$18allocate_for_slice28_$u7b$$u7b$closure$u7d$$u7d$17hf5cbdaabd62091aaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !62940
  %i.bvr = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.bvr, align 8, !noalias !62940
  %i.bvs = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bvs, ptr nonnull readonly align 1 %i.bvc, i64 %i.bve, i1 false), !noalias !62939
  call void @llvm.experimental.noalias.scope.decl(metadata !62941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !62942
  store ptr %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !62943
  store i64 %i.bve, ptr %i.uv, align 8, !noalias !62943
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4297.0..sroa_idx, align 8, !alias.scope !62944, !noalias !62945, !noundef !57 ; 2 uses
  %.val9.i.i.i.i.i.i.i.i.i.i.i1494 = load i64, ptr %.sroa.5298.0..sroa_idx, align 8, !alias.scope !62944, !noalias !62945, !noundef !57 ; 2 uses
  %i.bvt = xor i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 8317987319222330741 ; 2 uses
  %i.bvu = xor i64 %.val9.i.i.i.i.i.i.i.i.i.i.i1494, 7237128888997146477 ; 2 uses
  %i.bvv = xor i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 7816392313619706465 ; 2 uses
  %i.bvw = xor i64 %.val9.i.i.i.i.i.i.i.i.i.i.i1494, 8387220255154660723 ; 2 uses
  %i.bvx = and i64 %i.bve, 7                      ; 7 uses
  %i.bvy = and i64 %i.bve, 9223372036854775800    ; 2 uses
  %.not1496 = icmp eq i64 %i.bvy, 0
  br i1 %.not1496, label %._crit_edge.i1833, label %.lr.ph.i1826

._crit_edge.i1833.loopexit:                       ; preds = %.lr.ph.i1826
  %i.bvz = and i64 %i.bve, 9223372036854775800
  br label %._crit_edge.i1833

._crit_edge.i1833:                                ; preds = %._crit_edge.i1833.loopexit, %bb.sx
  %.sroa.0719.1 = phi i64 [ %i.bvt, %bb.sx ], [ %i.bxh, %._crit_edge.i1833.loopexit ] ; 4 uses
  %.sroa.12724.1 = phi i64 [ %i.bvv, %bb.sx ], [ %i.bxg, %._crit_edge.i1833.loopexit ] ; 4 uses
  %.sroa.22.1 = phi i64 [ %i.bvu, %bb.sx ], [ %i.bxd, %._crit_edge.i1833.loopexit ] ; 6 uses
  %.sroa.32.1 = phi i64 [ %i.bvw, %bb.sx ], [ %i.bxf, %._crit_edge.i1833.loopexit ] ; 4 uses
  %.sroa.04.0.lcssa.i1816 = phi i64 [ 0, %bb.sx ], [ %i.bvz, %._crit_edge.i1833.loopexit ] ; 3 uses
  %i.bwa = icmp samesign ugt i64 %i.bvx, 3
  br i1 %i.bwa, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %._crit_edge.i1833
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bvs, i64 %.sroa.04.0.lcssa.i1816
  %.sroa.014.0.copyload.i18.i1825 = load i32, ptr %i.bwb, align 1, !alias.scope !62946, !noalias !62947
  %i.bwc = zext i32 %.sroa.014.0.copyload.i18.i1825 to i64
  br label %bb.sz

bb.sz:                                            ; preds = %bb.sy, %._crit_edge.i1833
  %.sroa.011.0.i12.i1817 = phi i64 [ %i.bwc, %bb.sy ], [ 0, %._crit_edge.i1833 ] ; 2 uses
  %.sroa.0.0.i13.i1818 = phi i64 [ 4, %bb.sy ], [ 0, %._crit_edge.i1833 ] ; 5 uses
  %i.bwd = or disjoint i64 %.sroa.0.0.i13.i1818, 1
  %i.bwe = icmp samesign ult i64 %i.bwd, %i.bvx
  br i1 %i.bwe, label %bb.ta, label %bb.tb

bb.ta:                                            ; preds = %bb.sz
  %i.bwf = getelementptr i8, ptr %i.bvs, i64 %.sroa.04.0.lcssa.i1816
  %i.bwg = getelementptr i8, ptr %i.bwf, i64 %.sroa.0.0.i13.i1818
  %.sroa.015.0.copyload.i17.i1824 = load i16, ptr %i.bwg, align 1, !alias.scope !62946, !noalias !62947
  %i.bwh = zext i16 %.sroa.015.0.copyload.i17.i1824 to i64
  %i.bwi = shl nuw nsw i64 %.sroa.0.0.i13.i1818, 3
  %i.bwj = shl nuw nsw i64 %i.bwh, %i.bwi
  %i.bwk = or i64 %i.bwj, %.sroa.011.0.i12.i1817
  %i.bwl = or disjoint i64 %.sroa.0.0.i13.i1818, 2
  br label %bb.tb

bb.tb:                                            ; preds = %bb.ta, %bb.sz
  %.sroa.011.1.i14.i1819 = phi i64 [ %i.bwk, %bb.ta ], [ %.sroa.011.0.i12.i1817, %bb.sz ] ; 2 uses
  %.sroa.0.1.i15.i1820 = phi i64 [ %i.bwl, %bb.ta ], [ %.sroa.0.0.i13.i1818, %bb.sz ] ; 3 uses
  %i.bwm = icmp samesign ult i64 %.sroa.0.1.i15.i1820, %i.bvx
  br i1 %i.bwm, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835"

.lr.ph.i1826:                                     ; preds = %bb.sx, %.lr.ph.i1826
  %i.bwn = phi i64 [ %i.bxg, %.lr.ph.i1826 ], [ %i.bvv, %bb.sx ]
  %i.bwo = phi i64 [ %i.bxd, %.lr.ph.i1826 ], [ %i.bvu, %bb.sx ] ; 3 uses
  %i.bwp = phi i64 [ %i.bxf, %.lr.ph.i1826 ], [ %i.bvw, %bb.sx ]
  %.sroa.04.020.i1831 = phi i64 [ %i.bxi, %.lr.ph.i1826 ], [ 0, %bb.sx ] ; 2 uses
  %i.bwq = phi i64 [ %i.bxh, %.lr.ph.i1826 ], [ %i.bvt, %bb.sx ]
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bvs, i64 %.sroa.04.020.i1831
  %.sroa.08.0.copyload.i1832 = load i64, ptr %i.bwr, align 1, !alias.scope !62948, !noalias !62947 ; 2 uses
  %i.bws = xor i64 %.sroa.08.0.copyload.i1832, %i.bwp ; 3 uses
  %i.bwt = add i64 %i.bwq, %i.bwo                 ; 3 uses
  %i.bwu = add i64 %i.bws, %i.bwn                 ; 2 uses
  %i.bwv = call i64 @llvm.fshl.i64(i64 %i.bwo, i64 %i.bwo, i64 13)
  %i.bww = xor i64 %i.bwt, %i.bwv                 ; 3 uses
  %i.bwx = call i64 @llvm.fshl.i64(i64 %i.bws, i64 %i.bws, i64 16)
  %i.bwy = xor i64 %i.bwu, %i.bwx                 ; 3 uses
  %i.bwz = call i64 @llvm.fshl.i64(i64 %i.bwt, i64 %i.bwt, i64 32)
  %i.bxa = add i64 %i.bwu, %i.bww                 ; 3 uses
  %i.bxb = add i64 %i.bwy, %i.bwz                 ; 2 uses
  %i.bxc = call i64 @llvm.fshl.i64(i64 %i.bww, i64 %i.bww, i64 17)
  %i.bxd = xor i64 %i.bxa, %i.bxc                 ; 2 uses
  %i.bxe = call i64 @llvm.fshl.i64(i64 %i.bwy, i64 %i.bwy, i64 21)
  %i.bxf = xor i64 %i.bxe, %i.bxb                 ; 2 uses
  %i.bxg = call i64 @llvm.fshl.i64(i64 %i.bxa, i64 %i.bxa, i64 32) ; 2 uses
  %i.bxh = xor i64 %i.bxb, %.sroa.08.0.copyload.i1832 ; 2 uses
  %i.bxi = add nuw nsw i64 %.sroa.04.020.i1831, 8 ; 2 uses
  %i.bxj = icmp samesign ult i64 %i.bxi, %i.bvy
  br i1 %i.bxj, label %.lr.ph.i1826, label %._crit_edge.i1833.loopexit

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835": ; preds = %bb.tb
  %3 = icmp eq i64 %i.bvx, 0
  br i1 %3, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835.a": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835"
  %4 = shl nuw nsw i64 %i.bvx, 3
  %5 = shl nuw nsw i64 255, %4
  %6 = or i64 %5, %.sroa.011.1.i14.i1819
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i: ; preds = %bb.tb
  %7 = add nuw nsw i64 %.sroa.0.1.i15.i1820, %.sroa.04.0.lcssa.i1816 ; 2 uses
  %8 = icmp samesign ult i64 %7, %i.bve
  call void @llvm.assume(i1 %8), !noalias !62949
  %9 = getelementptr inbounds nuw i8, ptr %i.bvs, i64 %7
  %10 = load i8, ptr %9, align 1, !alias.scope !62946, !noalias !62947, !noundef !57
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %.sroa.0.1.i15.i1820, 3
  %13 = shl nuw nsw i64 %11, %12
  %i.bxk = shl nuw nsw i64 %i.bvx, 3
  %i.bxl = shl nuw i64 255, %i.bxk
  %14 = or i64 %13, %i.bxl
  %i.bxm = or i64 %14, %.sroa.011.1.i14.i1819     ; 3 uses
  %.not1497 = icmp eq i64 %i.bvx, 7
  br i1 %.not1497, label %.thread2528, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit"

.thread2528:                                      ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i
  %i.bxn = xor i64 %i.bxm, %.sroa.32.1            ; 3 uses
  %i.bxo = add i64 %.sroa.22.1, %.sroa.0719.1     ; 3 uses
  %i.bxp = add i64 %i.bxn, %.sroa.12724.1         ; 2 uses
  %i.bxq = call i64 @llvm.fshl.i64(i64 %.sroa.22.1, i64 %.sroa.22.1, i64 13)
  %i.bxr = xor i64 %i.bxq, %i.bxo                 ; 3 uses
  %i.bxs = call i64 @llvm.fshl.i64(i64 %i.bxn, i64 %i.bxn, i64 16)
  %i.bxt = xor i64 %i.bxp, %i.bxs                 ; 3 uses
  %i.bxu = call i64 @llvm.fshl.i64(i64 %i.bxo, i64 %i.bxo, i64 32)
  %i.bxv = add i64 %i.bxp, %i.bxr                 ; 3 uses
  %i.bxw = add i64 %i.bxt, %i.bxu                 ; 2 uses
  %i.bxx = call i64 @llvm.fshl.i64(i64 %i.bxr, i64 %i.bxr, i64 17)
  %i.bxy = xor i64 %i.bxv, %i.bxx
  %i.bxz = call i64 @llvm.fshl.i64(i64 %i.bxt, i64 %i.bxt, i64 21)
  %i.bya = xor i64 %i.bxz, %i.bxw
  %i.byb = call i64 @llvm.fshl.i64(i64 %i.bxv, i64 %i.bxv, i64 32)
  %i.byc = xor i64 %i.bxw, %i.bxm
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835", %.thread2528, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835.a", %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i
  %.sroa.0719.5 = phi i64 [ %.sroa.0719.1, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.0719.1, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835.a" ], [ %i.byc, %.thread2528 ], [ %.sroa.0719.1, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835" ]
  %.sroa.12724.5 = phi i64 [ %.sroa.12724.1, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.12724.1, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835.a" ], [ %i.byb, %.thread2528 ], [ %.sroa.12724.1, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835" ]
  %.sroa.22.5 = phi i64 [ %.sroa.22.1, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.22.1, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835.a" ], [ %i.bxy, %.thread2528 ], [ %.sroa.22.1, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835" ] ; 3 uses
  %.sroa.32.5 = phi i64 [ %.sroa.32.1, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.32.1, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835.a" ], [ %i.bya, %.thread2528 ], [ %.sroa.32.1, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835" ]
  %.sroa.50.1 = phi i64 [ %i.bxm, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %6, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835.a" ], [ 0, %.thread2528 ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit1835" ]
  %15 = shl i64 %i.bve, 56
  %16 = add i64 %15, 72057594037927936
  %i.byd = or i64 %.sroa.50.1, %16                ; 2 uses
  %i.bye = xor i64 %i.byd, %.sroa.32.5            ; 3 uses
  %i.byf = add i64 %.sroa.22.5, %.sroa.0719.5     ; 3 uses
  %i.byg = add i64 %i.bye, %.sroa.12724.5         ; 2 uses
  %i.byh = call i64 @llvm.fshl.i64(i64 %.sroa.22.5, i64 %.sroa.22.5, i64 13)
  %i.byi = xor i64 %i.byh, %i.byf                 ; 3 uses
  %i.byj = call i64 @llvm.fshl.i64(i64 %i.bye, i64 %i.bye, i64 16)
  %i.byk = xor i64 %i.byj, %i.byg                 ; 3 uses
  %i.byl = call i64 @llvm.fshl.i64(i64 %i.byf, i64 %i.byf, i64 32)
  %i.bym = add i64 %i.byg, %i.byi                 ; 3 uses
  %i.byn = add i64 %i.byk, %i.byl                 ; 2 uses
  %i.byo = call i64 @llvm.fshl.i64(i64 %i.byi, i64 %i.byi, i64 17)
  %i.byp = xor i64 %i.bym, %i.byo                 ; 3 uses
  %i.byq = call i64 @llvm.fshl.i64(i64 %i.byk, i64 %i.byk, i64 21)
  %i.byr = xor i64 %i.byq, %i.byn                 ; 3 uses
  %i.bys = call i64 @llvm.fshl.i64(i64 %i.bym, i64 %i.bym, i64 32)
  %i.byt = xor i64 %i.byn, %i.byd
  %i.byu = xor i64 %i.bys, 255
  %i.byv = add i64 %i.byt, %i.byp                 ; 3 uses
  %i.byw = add i64 %i.byr, %i.byu                 ; 2 uses
  %i.byx = call i64 @llvm.fshl.i64(i64 %i.byp, i64 %i.byp, i64 13)
  %i.byy = xor i64 %i.byv, %i.byx                 ; 3 uses
  %i.byz = call i64 @llvm.fshl.i64(i64 %i.byr, i64 %i.byr, i64 16)
  %i.bza = xor i64 %i.byz, %i.byw                 ; 3 uses
  %i.bzb = call i64 @llvm.fshl.i64(i64 %i.byv, i64 %i.byv, i64 32)
  %i.bzc = add i64 %i.byy, %i.byw                 ; 3 uses
  %i.bzd = add i64 %i.bza, %i.bzb                 ; 2 uses
  %i.bze = call i64 @llvm.fshl.i64(i64 %i.byy, i64 %i.byy, i64 17)
  %i.bzf = xor i64 %i.bzc, %i.bze                 ; 3 uses
  %i.bzg = call i64 @llvm.fshl.i64(i64 %i.bza, i64 %i.bza, i64 21)
  %i.bzh = xor i64 %i.bzg, %i.bzd                 ; 3 uses
  %i.bzi = call i64 @llvm.fshl.i64(i64 %i.bzc, i64 %i.bzc, i64 32)
  %i.bzj = add i64 %i.bzf, %i.bzd                 ; 3 uses
  %i.bzk = add i64 %i.bzh, %i.bzi                 ; 2 uses
  %i.bzl = call i64 @llvm.fshl.i64(i64 %i.bzf, i64 %i.bzf, i64 13)
  %i.bzm = xor i64 %i.bzl, %i.bzj                 ; 3 uses
  %i.bzn = call i64 @llvm.fshl.i64(i64 %i.bzh, i64 %i.bzh, i64 16)
  %i.bzo = xor i64 %i.bzn, %i.bzk                 ; 3 uses
  %i.bzp = call i64 @llvm.fshl.i64(i64 %i.bzj, i64 %i.bzj, i64 32)
  %i.bzq = add i64 %i.bzm, %i.bzk                 ; 3 uses
  %i.bzr = add i64 %i.bzo, %i.bzp                 ; 2 uses
  %i.bzs = call i64 @llvm.fshl.i64(i64 %i.bzm, i64 %i.bzm, i64 17)
  %i.bzt = xor i64 %i.bzs, %i.bzq                 ; 3 uses
  %i.bzu = call i64 @llvm.fshl.i64(i64 %i.bzo, i64 %i.bzo, i64 21)
  %i.bzv = xor i64 %i.bzu, %i.bzr                 ; 3 uses
  %i.bzw = call i64 @llvm.fshl.i64(i64 %i.bzq, i64 %i.bzq, i64 32)
  %i.bzx = add i64 %i.bzt, %i.bzr
  %i.bzy = add i64 %i.bzv, %i.bzw                 ; 2 uses
  %i.bzz = call i64 @llvm.fshl.i64(i64 %i.bzt, i64 %i.bzt, i64 13)
  %i.caa = xor i64 %i.bzz, %i.bzx                 ; 3 uses
  %i.cab = call i64 @llvm.fshl.i64(i64 %i.bzv, i64 %i.bzv, i64 16)
  %i.cac = xor i64 %i.cab, %i.bzy                 ; 2 uses
  %i.cad = add i64 %i.caa, %i.bzy                 ; 3 uses
  %i.cae = call i64 @llvm.fshl.i64(i64 %i.caa, i64 %i.caa, i64 17)
  %i.caf = call i64 @llvm.fshl.i64(i64 %i.cac, i64 %i.cac, i64 21)
  %i.cag = call i64 @llvm.fshl.i64(i64 %i.cad, i64 %i.cad, i64 32)
  %i.cah = xor i64 %i.caf, %i.cae
  %i.cai = xor i64 %i.cah, %i.cag
  %i.caj = xor i64 %i.cai, %i.cad                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62950)
  call void @llvm.experimental.noalias.scope.decl(metadata !62951)
  %i.cak = load i64, ptr %i.uu, align 8, !alias.scope !62952, !noalias !62953, !noundef !57
  %i.cal = icmp eq i64 %i.cak, 0
  br i1 %i.cal, label %bb.tc, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i.i.i.i.i.i.i.i.i.i.i", !prof !60

bb.tc:                                            ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit"
  %i.cam = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc042eebdd92975e1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.eb, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4297.0..sroa_idx, i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.tl, !noalias !62945 ; 0 uses

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.tc
  %.val1.i.i.i.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.uv, align 8, !alias.scope !62951, !noalias !62954
  %.val.i.i.i.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !62951, !noalias !62954
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit"
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1495 = phi ptr [ %.val.i.i.i.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit" ] ; 4 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val1.i.i.i.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bve, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE.exit" ] ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !62955, !noalias !62956, !nonnull !57, !noundef !57 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.uw, align 8, !alias.scope !62955, !noalias !62956, !noundef !57 ; 4 uses
  %i.can = lshr i64 %i.caj, 57
  %i.cao = trunc nuw nsw i64 %i.can to i8         ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.cao, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1495, i64 16
  br label %bb.td

bb.td:                                            ; preds = %bb.tf, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.caj, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cbq, %bb.tf ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.tf ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.tf ]
  %i.caq = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h94b163f0895b3481E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cbp, %bb.tf ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.car = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.car, align 1, !noalias !62957 ; 3 uses
  %i.cas = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cat = bitcast <16 x i1> %i.cas to i16        ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cat, 0
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.td, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cbf, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cat, %bb.td ] ; 3 uses
  %i.cau = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.cav = zext nneg i16 %i.cau to i64
  %i.caw = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cav
  %i.cax = and i64 %i.caw, %.val7.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cay = sub nsw i64 0, %i.cax
  %i.caz = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cay ; 2 uses
  %i.cba = getelementptr i8, ptr %i.caz, i64 -8
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cba, align 8, !noalias !62958, !noundef !57
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i", !prof !160

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cbb = getelementptr inbounds i8, ptr %i.caz, i64 -16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cbb, align 8, !noalias !62958, !nonnull !57, !noundef !57
  %i.cbc = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %i.cap, ptr nonnull readonly align 1 %i.cbc, i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !62959, !noalias !62958
  %i.cbd = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cbd, label %bb.tj, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i", !prof !59

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i", %bb.td
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.te, !prof !60

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cbe = add i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cbf = and i16 %i.cbe, %.sroa.05.026.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cbf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.te:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cbg = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.cbh = bitcast <16 x i1> %i.cbg to i16        ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cbh, 0 ; 2 uses
  %i.cbi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cbh, i1 true)
  %i.cbj = zext nneg i16 %i.cbi to i64
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i1496 = select i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %i.cbj
  %i.cbk = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i1496, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cbl = and i64 %i.cbk, %.val7.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.tf, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.te, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cbl, %bb.te ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cbm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cbn = bitcast <16 x i1> %i.cbm to i16
  %i.cbo = icmp eq i16 %i.cbn, 0
  br i1 %i.cbo, label %bb.tf, label %bb.tg, !prof !60

bb.tf:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.te
  %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.te ]
  %.sroa.6.120.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.te ]
  %i.cbp = add i64 %i.caq, 16                     ; 2 uses
  %i.cbq = add i64 %i.cbp, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.td

bb.tg:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cbr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cbs = load i8, ptr %i.cbr, align 1, !noalias !62960, !noundef !57 ; 2 uses
  %i.cbt = icmp sgt i8 %i.cbs, -1
  br i1 %i.cbt, label %bb.th, label %bb.ti, !prof !60

bb.th:                                            ; preds = %bb.tg
  %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !62960
  %i.cbu = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.cbv = bitcast <16 x i1> %i.cbu to i16        ; 2 uses
  %i.cbw = icmp ne i16 %i.cbv, 0
  call void @llvm.assume(i1 %i.cbw)
  %i.cbx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cbv, i1 true)
  %i.cby = zext nneg i16 %i.cbx to i64            ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cby
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !62961
  br label %bb.ti

bb.ti:                                            ; preds = %bb.th, %bb.tg
  %i.cbz = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.th ], [ %i.cbs, %bb.tg ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cby, %bb.th ], [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.tg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62962)
  %i.cca = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ccb = and i8 %i.cbz, 1
  %i.ccc = zext nneg i8 %i.ccb to i64
  %i.ccd = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.cce = and i64 %i.ccd, %.val7.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.cao, ptr %i.cca, align 1, !noalias !62961
  %i.ccf = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cce
  %i.ccg = getelementptr i8, ptr %i.ccf, i64 16
  store i8 %i.cao, ptr %i.ccg, align 1, !noalias !62961
  %i.cch = load <2 x i64>, ptr %i.uu, align 8, !alias.scope !62963, !noalias !62945
  %i.cci = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ccc, i64 0
  %i.ccj = sub <2 x i64> %i.cch, %i.cci
  store <2 x i64> %i.ccj, ptr %i.uu, align 8, !alias.scope !62963, !noalias !62945
  %i.cck = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ccl = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cck ; 2 uses
  %i.ccm = getelementptr inbounds i8, ptr %i.ccl, i64 -16
  store ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1495, ptr %i.ccm, align 8, !noalias !62961
  %i.ccn = getelementptr inbounds i8, ptr %i.ccl, i64 -8
  store i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ccn, align 8, !noalias !62961
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd089351e8969bb7E.exit.i.i.i.i.i.i"

bb.tj:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he280abe33c2f03c4E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cco = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1495, align 8, !noalias !62964, !noundef !57
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v2i64
!51698 = distinct !{!51698, !"_ZN4core3ptr94drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$17h6e00f973af0d44e2E"}
!51699 = distinct !{!51699, !51698, !"_ZN4core3ptr94drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$17h6e00f973af0d44e2E: argument 0"}
!51700 = distinct !{!51700, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hca418b2dff0b2bcbE"}
!51701 = distinct !{!51701, !51700, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hca418b2dff0b2bcbE: argument 0"}
!51702 = distinct !{!51702, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e37a483234d6a8dE"}
!51703 = distinct !{!51703, !51702, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e37a483234d6a8dE: argument 0"}
!51704 = distinct !{!51704, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE"}
!51705 = distinct !{!51705, !51704, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE: argument 0"}
!51706 = distinct !{!51706, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E"}
!51707 = distinct !{!51707, !51706, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E: argument 0"}
!51708 = distinct !{!51708, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE"}
!51709 = distinct !{!51709, !51708, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE: argument 0"}
!51710 = distinct !{!51710, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h92fb25072e18ebfbE"}
!51711 = distinct !{!51711, !51710, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h92fb25072e18ebfbE: argument 0"}
!51712 = distinct !{!51712, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h1c44876237945b0cE"}
!51713 = distinct !{!51713, !51712, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h1c44876237945b0cE: argument 0"}
!51714 = distinct !{!51714, !51712, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h1c44876237945b0cE: argument 1"}
!51715 = distinct !{!51715, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hbb7beb5f036cb725E"}
!51716 = distinct !{!51716, !51715, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hbb7beb5f036cb725E: argument 0"}
!51717 = distinct !{!51717, !51715, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hbb7beb5f036cb725E: argument 1"}
!51718 = distinct !{!51718, !"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E"}
!51719 = distinct !{!51719, !51718, !"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E: argument 1"}
!51720 = distinct !{!51720, !51718, !"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc6cff56617a586E: argument 0"}
!51721 = distinct !{!51721, !"_ZN112_$LT$alloc..collections..btree..set..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58edb1e028ccba23E"}
!51722 = distinct !{!51722, !51721, !"_ZN112_$LT$alloc..collections..btree..set..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58edb1e028ccba23E: argument 0"}
!51723 = distinct !{!51723, !"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7306694abfbd6319E"}
!51724 = distinct !{!51724, !51723, !"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7306694abfbd6319E: argument 0"}
!51725 = distinct !{!51725, !"_ZN4core3ptr138drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$$GT$17h440649bfceb16326E"}
!51726 = distinct !{!51726, !51725, !"_ZN4core3ptr138drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$$GT$17h440649bfceb16326E: argument 0"}
!51727 = distinct !{!51727, !"_ZN4core3ptr94drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$17h6e00f973af0d44e2E"}
!51728 = distinct !{!51728, !51727, !"_ZN4core3ptr94drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$17h6e00f973af0d44e2E: argument 0"}
!51729 = distinct !{!51729, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hca418b2dff0b2bcbE"}
!51730 = distinct !{!51730, !51729, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hca418b2dff0b2bcbE: argument 0"}
!51731 = distinct !{!51731, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e37a483234d6a8dE"}
!51732 = distinct !{!51732, !51731, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e37a483234d6a8dE: argument 0"}
!51733 = distinct !{!51733, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE"}
!51734 = distinct !{!51734, !51733, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE: argument 0"}
!51735 = distinct !{!51735, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E"}
!51736 = distinct !{!51736, !51735, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E: argument 0"}
!51737 = distinct !{!51737, !"_ZN4core3ptr138drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$$GT$17h440649bfceb16326E"}
!51738 = distinct !{!51738, !51737, !"_ZN4core3ptr138drop_in_place$LT$core..iter..adapters..cloned..Cloned$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$$GT$17h440649bfceb16326E: argument 0"}
!51739 = distinct !{!51739, !"_ZN4core3ptr94drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$17h6e00f973af0d44e2E"}
!51740 = distinct !{!51740, !51739, !"_ZN4core3ptr94drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$$RF$alloc..string..String$GT$$GT$17h6e00f973af0d44e2E: argument 0"}
!51741 = distinct !{!51741, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hca418b2dff0b2bcbE"}
!51742 = distinct !{!51742, !51741, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hca418b2dff0b2bcbE: argument 0"}
!51743 = distinct !{!51743, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e37a483234d6a8dE"}
!51744 = distinct !{!51744, !51743, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e37a483234d6a8dE: argument 0"}
!51745 = distinct !{!51745, !"_ZN4core3ptr94drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$$RF$alloc..string..String$GT$$GT$17h5104c34193054ac4E"}
!51746 = distinct !{!51746, !51745, !"_ZN4core3ptr94drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$$RF$alloc..string..String$GT$$GT$17h5104c34193054ac4E: argument 0"}
!51747 = distinct !{!51747, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17h1d557209124abdc9E"}
!51748 = distinct !{!51748, !51747, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17h1d557209124abdc9E: argument 0"}
!51749 = distinct !{!51749, !"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hecb11a8f4ee75b73E"}
!51750 = distinct !{!51750, !51749, !"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hecb11a8f4ee75b73E: argument 0"}
!51751 = distinct !{!51751, !"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E"}
!51752 = distinct !{!51752, !51751, !"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E: argument 0"}
!51753 = distinct !{!51753, !51751, !"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E: argument 1"}
!51754 = distinct !{!51754, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hca418b2dff0b2bcbE"}
!51755 = distinct !{!51755, !51754, !"_ZN4core3ptr142drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$$RF$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hca418b2dff0b2bcbE: argument 0"}
!51756 = distinct !{!51756, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e37a483234d6a8dE"}
!51757 = distinct !{!51757, !51756, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e37a483234d6a8dE: argument 0"}
!51758 = distinct !{!51758, !"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E"}
!51759 = distinct !{!51759, !51758, !"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E: argument 0"}
!51760 = distinct !{!51760, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE"}
!51761 = distinct !{!51761, !51760, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE: argument 0"}
!51762 = distinct !{!51762, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E"}
!51763 = distinct !{!51763, !51762, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E: argument 0"}
!51764 = distinct !{!51764, !"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..DbTaskNetwork$GT$$GT$17h2eb430cff7654ed3E"}
!51765 = distinct !{!51765, !51764, !"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..network..DbTaskNetwork$GT$$GT$17h2eb430cff7654ed3E: argument 0"}
!51766 = distinct !{!51766, !"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E"}
!51767 = distinct !{!51767, !51766, !"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E: argument 0"}
!51768 = distinct !{!51768, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE"}
!51769 = distinct !{!51769, !51768, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE: argument 0"}
!51770 = distinct !{!51770, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E"}
!51771 = distinct !{!51771, !51770, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E: argument 0"}
!51772 = !{!51317, !51316, !51314, !51313}
!51773 = !{!51319}
!51774 = !{!51321}
!51775 = !{!51322}
!51776 = !{!51321, !51322}
!51777 = !{!51324, !51321, !51322}
!51778 = !{!51326}
!51779 = !{!51333, !51331, !51329, !51328}
!51780 = !{!51335}
!51781 = !{!51335, !51326}
!51782 = !{!51336, !51329, !51328}
!51783 = !{!51336, !51335, !51329, !51326, !51328, !51321, !51322}
!51784 = !{!51329, !51328}
!51785 = !{!51345, !51343, !51341, !51340, !51338, !51336, !51329, !51328}
!51786 = !{!51351, !51349, !51347, !51336, !51329, !51328}
!51787 = !{!51357, !51355, !51353, !51336, !51329, !51328}
!51788 = !{!51341, !51338, !51336, !51329, !51328}
!51789 = !{!51362, !51361, !51359, !51336, !51335, !51329, !51326, !51328, !51321, !51322}
!51790 = !{!51366, !51364, !51362, !51361, !51359, !51336, !51329, !51328}
!51791 = !{!51362, !51359, !51336, !51329, !51328}
!51792 = !{!51368}
!51793 = !{!51370, !51336, !51329, !51328}
!51794 = !{!51361, !51336, !51335, !51329, !51326, !51328, !51321, !51322}
!51795 = !{!51329, !51326, !51328, !51321, !51322}
!51796 = !{!51372, !51329, !51328}
!51797 = !{!51374}
!51798 = !{!51374, !51322}
!51799 = !{!51375, !51321}
!51800 = !{!51375, !51374, !51321, !51322}
!51801 = !{!51377}
!51802 = !{!51378}
!51803 = !{!51378, !51374, !51322}
!51804 = !{!51377, !51375, !51321}
!51805 = !{!51378, !51375, !51374, !51321, !51322}
!51806 = !{!51380}
!51807 = !{!51381}
!51808 = !{!51381, !51374, !51322}
!51809 = !{!51380, !51375, !51321}
!51810 = !{!51381, !51375, !51374, !51321, !51322}
!51811 = !{!51375, !51374}
!51812 = !{!51375}
!51813 = !{!51374, !51321, !51322}
!51814 = !{!51383}
!51815 = !{!51384}
!51816 = !{!51384, !51322}
!51817 = !{!51383, !51321}
!51818 = !{!51383, !51384, !51321, !51322}
!51819 = !{!51390, !51388, !51386, !51383}
!51820 = !{!51384, !51321, !51322}
!51821 = !{!51392}
!51822 = !{!51394}
!51823 = !{!51394, !51392}
!51824 = !{!51396}
!51825 = !{!51398}
!51826 = !{!51398, !51396}
!51827 = !{!51400}
!51828 = !{!51402}
!51829 = !{!51402, !51400}
!51830 = !{!51404}
!51831 = !{!51406}
!51832 = !{!51406, !51404}
!51833 = !{!51408}
!51834 = !{!51412, !51411, !51409, !51408, !51321, !51322}
!51835 = !{!51414}
!51836 = !{!51415}
!51837 = !{!51409}
!51838 = !{!51415, !51412, !51409, !51408, !51321, !51322}
!51839 = !{!51415, !51408, !51322}
!51840 = !{!51414, !51412, !51409, !51321}
!51841 = !{!51412}
!51842 = !{!51409, !51408}
!51843 = !{!51417, !51415, !51408, !51322}
!51844 = !{!51418, !51414, !51412, !51409, !51321}
!51845 = !{!51412, !51409, !51408}
!51846 = !{!51420}
!51847 = !{!51408, !51322}
!51848 = !{!51409, !51321}
!51849 = !{!51422}
!51850 = !{!51424}
!51851 = !{!51424, !51422}
!51852 = !{!51324}
!51853 = !{!51426}
!51854 = !{!51428}
!51855 = !{!51428, !51426}
!51856 = !{!51430}
!51857 = !{!51432}
!51858 = !{!51432, !51430}
!51859 = !{!51438, !51436, !51434}
!51860 = !{!51440}
!51861 = !{!51442}
!51862 = !{!51442, !51440}
!51863 = !{!51444}
!51864 = !{!51446}
!51865 = !{!51446, !51444}
!51866 = !{!51448}
!51867 = !{!51449}
!51868 = !{!51449, !51322}
!51869 = !{!51448, !51321}
!51870 = !{!51449, !51321, !51322}
!51871 = !{!51451}
!51872 = !{!51453}
!51873 = !{!51453, !51451}
!51874 = !{!51459, !51457, !51455}
!51875 = !{!51461}
!51876 = !{!51463}
!51877 = !{!51465}
!51878 = !{!51465, !51463}
!51879 = !{!51467}
!51880 = !{!51467, !51468, !51465, !51463}
!51881 = !{!51469, !51467, !51468, !51465, !51463}
!51882 = !{!51467, !51465, !51463}
!51883 = !{!51469, !51468}
!51884 = !{!51473}
!51885 = !{!51474}
!51886 = !{!51474, !51473}
!51887 = !{!51484, !51482, !51480, !51478, !51476, !51474, !51473}
!51888 = !{!51478, !51476, !51474, !51473}
!51889 = !{!51486, !51478, !51476, !51474, !51473}
!51890 = !{!51492, !51490, !51488, !51474, !51473}
!51891 = !{!51494}
!51892 = !{!51496}
!51893 = !{!51497}
!51894 = !{!51497, !51474, !51473}
!51895 = !{!51503, !51501, !51499, !51496, !51474, !51473}
!51896 = !{!51507, !51505}
!51897 = !{!51508, !51499, !51496, !51497, !51474, !51473}
!51898 = !{!51505}
!51899 = !{!51499, !51496, !51497}
!51900 = !{!51512, !51510, !51496}
!51901 = !{!51515, !51514, !51513, !51497, !51474, !51473}
!51902 = !{!51510, !51496}
!51903 = !{!51514, !51513, !51497, !51474, !51473}
!51904 = !{!51517, !51514, !51497, !51474, !51473}
!51905 = !{!51519, !51514, !51497, !51474, !51473}
!51906 = !{!51522, !51521}
!51907 = !{!51514, !51497, !51474, !51473}
!51908 = !{!51525, !51524, !51497, !51474, !51473}
!51909 = !{!51525}
!51910 = !{!51525, !51496}
!51911 = !{!51524, !51497, !51474, !51473}
!51912 = !{!51527}
!51913 = !{!51529}
!51914 = !{!51529, !51527}
!51915 = !{!51532, !51531, !51530, !51474, !51473}
!51916 = !{!51534, !51532, !51531, !51529, !51530, !51474, !51473}
!51917 = !{!51537, !51536}
!51918 = !{!51539, !51534, !51532, !51531, !51529, !51530, !51474, !51473}
!51919 = !{!51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51920 = !{!51551}
!51921 = !{!51556, !51555, !51554, !51553, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51922 = !{!51559, !51558, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51923 = !{!51561}
!51924 = !{!51561, !51559, !51558, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51925 = !{!51564, !51563}
!51926 = !{!51567, !51566, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51927 = !{!51569}
!51928 = !{!51569, !51567, !51566, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51929 = !{!51572, !51571}
!51930 = !{!51575, !51574, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51931 = !{!51577}
!51932 = !{!51577, !51575, !51574, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51933 = !{!51580, !51579}
!51934 = !{!51583, !51582, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51935 = !{!51585}
!51936 = !{!51585, !51583, !51582, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51937 = !{!51588, !51587}
!51938 = !{!51592, !51591, !51590, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51939 = !{!51594}
!51940 = !{!51595, !51592, !51591, !51590, !51549, !51548, !51547, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51941 = !{!51595, !51592, !51591, !51590, !51549, !51548, !51547, !51545, !51544, !51596, !51542, !51541, !51530, !51527, !51474, !51473}
!51942 = !{!51592, !51591, !51549, !51548, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51943 = !{!51598, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51944 = !{!51555, !51554, !51549, !51548, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51945 = !{!51602, !51600, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51946 = !{!51608, !51606, !51604, !51602, !51600, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51947 = !{!51608, !51606, !51602, !51600, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51948 = !{!51610, !51600, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51949 = !{!51612, !51610, !51600, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51950 = !{!51545, !51544, !51596, !51542, !51541, !51530, !51527, !51474, !51473}
!51951 = !{!51616, !51615, !51614, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51952 = !{!51616, !51615, !51614, !51545, !51544, !51596, !51542, !51541, !51530, !51527, !51474, !51473}
!51953 = !{!51618}
!51954 = !{!51622, !51621, !51620, !51616, !51615, !51614, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51955 = !{!51624}
!51956 = !{!51621, !51616, !51615, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51957 = !{!51628, !51626, !51621, !51616, !51615, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51958 = !{!51626, !51621, !51616, !51615, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51959 = !{!51632, !51631, !51616, !51615, !51614, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51960 = !{!51634}
!51961 = !{!51635, !51632, !51631, !51616, !51615, !51614, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51962 = !{!51637}
!51963 = !{!51632, !51616, !51615, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51964 = !{!51641, !51639, !51632, !51616, !51615, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51965 = !{!51639, !51632, !51616, !51615, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51966 = !{!51615, !51614, !51545, !51544, !51596, !51542, !51541, !51530, !51527, !51474, !51473}
!51967 = !{!51645, !51644, !51616, !51615, !51614, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51968 = !{!51647}
!51969 = !{!51648, !51645, !51644, !51616, !51615, !51614, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51970 = !{!51650}
!51971 = !{!51645, !51616, !51615, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51972 = !{!51654, !51652, !51645, !51616, !51615, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51973 = !{!51652, !51645, !51616, !51615, !51545, !51544, !51542, !51541, !51530, !51474, !51473}
!51974 = !{!51542, !51541, !51530, !51474, !51473}
!51975 = !{!51658, !51657, !51542, !51541, !51530, !51474, !51473}
!51976 = !{!51660}
!51977 = !{!51661, !51492, !51490, !51488, !51474, !51473}
!51978 = !{!51665, !51663, !51492, !51490, !51488, !51474, !51473}
!51979 = !{!51667, !51474, !51473}
!51980 = !{!51673, !51672, !51670, !51669, !51474, !51473}
!51981 = !{!51676, !51675}
!51982 = !{!51673, !51670, !51474, !51473}
!51983 = !{!51678}
!51984 = !{!51680}
!51985 = !{!51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!51986 = !{!51689, !51687, !51685, !51684, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!51987 = !{!51682, !51681, !51673, !51672, !51670, !51669, !51474, !51473}
!51988 = !{!51695, !51693, !51691, !51474, !51473}
!51989 = !{!51703, !51701, !51699, !51697, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!51990 = !{!51707, !51705, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!51991 = !{!51680, !51678}
!51992 = !{!51711, !51709, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!51993 = !{!51713}
!51994 = !{!51714}
!51995 = !{!51716}
!51996 = !{!51717}
!51997 = !{!51716, !51717, !51713, !51714, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!51998 = !{!51724, !51722, !51720, !51719, !51716, !51717, !51713, !51714, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!51999 = !{!51716, !51713, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!52000 = !{!51716, !51713}
!52001 = !{!51717, !51714, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!52002 = !{!51732, !51730, !51728, !51726, !51716, !51717, !51713, !51714, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!52003 = !{!51736, !51734, !51716, !51717, !51713, !51714, !51682, !51680, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!52004 = !{!51717, !51714}
!52005 = !{!51680, !51678, !51672, !51669, !51474, !51473}
!52006 = !{!51744, !51742, !51740, !51738, !51682, !51681, !51678, !51673, !51672, !51670, !51669, !51474, !51473}
!52007 = !{!51681, !51673, !51672, !51670, !51669, !51474, !51473}
!52008 = !{!51750, !51748, !51746, !51474, !51473}
!52009 = !{!51752}
!52010 = !{!51753, !51750, !51748, !51746, !51474, !51473}
!52011 = !{!51757, !51755, !51750, !51748, !51746, !51474, !51473}
!52012 = !{!51759}
!52013 = !{!51761}
!52014 = !{!51763}
!52015 = !{!51763, !51761, !51759}
!52016 = !{!51765}
!52017 = !{!51767}
!52018 = !{!51769}
!52019 = !{!51771}
!52020 = !{!51771, !51769, !51767}
!52021 = distinct !{!52021, !81, !82}
!52022 = distinct !{!52022, !82, !81}
!52023 = distinct !{!52023, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E"}
!52024 = distinct !{!52024, !52023, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E: argument 1"}
!52025 = distinct !{!52025, !52023, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E: argument 0"}
!52026 = distinct !{!52026, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE"}
!52027 = distinct !{!52027, !52026, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE: argument 0"}
!52028 = distinct !{!52028, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h92fb25072e18ebfbE"}
!52029 = distinct !{!52029, !52028, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h92fb25072e18ebfbE: argument 0"}
!52030 = distinct !{!52030, !"_ZN4core4iter6traits8iterator8Iterator7collect17h93a35f89e958ae33E"}
!52031 = distinct !{!52031, !52030, !"_ZN4core4iter6traits8iterator8Iterator7collect17h93a35f89e958ae33E: argument 1"}
!52032 = distinct !{!52032, !52030, !"_ZN4core4iter6traits8iterator8Iterator7collect17h93a35f89e958ae33E: argument 0"}
!52033 = distinct !{!52033, !"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h88786c91a6102950E"}
!52034 = distinct !{!52034, !52033, !"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h88786c91a6102950E: argument 1"}
!52035 = distinct !{!52035, !52033, !"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h88786c91a6102950E: argument 0"}
!52036 = distinct !{!52036, !"_ZN4core4iter8adapters11try_process17h27ae596715180788E"}
!52037 = distinct !{!52037, !52036, !"_ZN4core4iter8adapters11try_process17h27ae596715180788E: argument 1"}
!52038 = distinct !{!52038, !52036, !"_ZN4core4iter8adapters11try_process17h27ae596715180788E: argument 0"}
!52039 = distinct !{!52039, !"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h47227fad3a67bb82E"}
!52040 = distinct !{!52040, !52039, !"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h47227fad3a67bb82E: argument 0"}
!52041 = distinct !{!52041, !"_ZN4core4iter6traits8iterator8Iterator7collect17h1930e56de0330687E"}
!52042 = distinct !{!52042, !52041, !"_ZN4core4iter6traits8iterator8Iterator7collect17h1930e56de0330687E: argument 0"}
!52043 = distinct !{!52043, !"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17hb884b0e5676d46afE"}
!52044 = distinct !{!52044, !52043, !"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17hb884b0e5676d46afE: argument 0"}
!52045 = distinct !{!52045, !52039, !"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h47227fad3a67bb82E: argument 1"}
!52046 = distinct !{!52046, !52041, !"_ZN4core4iter6traits8iterator8Iterator7collect17h1930e56de0330687E: argument 1"}
!52047 = distinct !{!52047, !52043, !"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17hb884b0e5676d46afE: argument 1"}
!52048 = distinct !{!52048, !"_ZN4core4iter6traits8iterator8Iterator7collect17hc64933bb9e8ef383E"}
!52049 = distinct !{!52049, !52048, !"_ZN4core4iter6traits8iterator8Iterator7collect17hc64933bb9e8ef383E: argument 1"}
!52050 = distinct !{!52050, !52048, !"_ZN4core4iter6traits8iterator8Iterator7collect17hc64933bb9e8ef383E: argument 0"}
!52051 = distinct !{!52051, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h7c864ac8054b4b4dE"}
!52052 = distinct !{!52052, !52051, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h7c864ac8054b4b4dE: argument 1"}
!52053 = distinct !{!52053, !52051, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h7c864ac8054b4b4dE: argument 0"}
!52054 = distinct !{!52054, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98a69f6d415e413bE"}
!52055 = distinct !{!52055, !52054, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98a69f6d415e413bE: argument 1"}
!52056 = distinct !{!52056, !52054, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h98a69f6d415e413bE: argument 0"}
!52057 = distinct !{!52057, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h47107949ce72ecf4E"}
!52058 = distinct !{!52058, !52057, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h47107949ce72ecf4E: argument 1"}
!52059 = distinct !{!52059, !52057, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h47107949ce72ecf4E: argument 0"}
!52060 = distinct !{!52060, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hd51c346585f1f3d8E"}
!52061 = distinct !{!52061, !52060, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hd51c346585f1f3d8E: argument 1"}
!52062 = distinct !{!52062, !52060, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hd51c346585f1f3d8E: argument 0"}
!52063 = distinct !{!52063, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE"}
!52064 = distinct !{!52064, !52063, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE: argument 0"}
!52065 = distinct !{!52065, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h92fb25072e18ebfbE"}
!52066 = distinct !{!52066, !52065, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h92fb25072e18ebfbE: argument 0"}
!52067 = distinct !{!52067, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE"}
!52068 = distinct !{!52068, !52067, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE: argument 0"}
!52069 = distinct !{!52069, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E"}
!52070 = distinct !{!52070, !52069, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E: argument 0"}
!52071 = distinct !{!52071, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17he821697136bb6f57E"}
!52072 = distinct !{!52072, !52071, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17he821697136bb6f57E: argument 0"}
!52073 = distinct !{!52073, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h03066eabe9e8a560E"}
!52074 = distinct !{!52074, !52073, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h03066eabe9e8a560E: argument 0"}
!52075 = distinct !{!52075, !52071, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17he821697136bb6f57E: argument 1"}
!52076 = distinct !{!52076, !52073, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h03066eabe9e8a560E: argument 1"}
!52077 = distinct !{!52077, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE"}
!52078 = distinct !{!52078, !52077, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE: argument 0"}
!52079 = distinct !{!52079, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E"}
!52080 = distinct !{!52080, !52079, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E: argument 0"}
!52081 = distinct !{!52081, !"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$u64$RP$$GT$$GT$17h33552e67b452f267E"}
!52082 = distinct !{!52082, !52081, !"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$u64$RP$$GT$$GT$17h33552e67b452f267E: argument 0"}
!52083 = distinct !{!52083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h57f3653ce59f5b98E"}
!52084 = distinct !{!52084, !52083, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h57f3653ce59f5b98E: argument 0"}
!52085 = distinct !{!52085, !"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u64$GT$$GT$17hc0b32747bfe815e5E"}
!52086 = distinct !{!52086, !52085, !"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u64$GT$$GT$17hc0b32747bfe815e5E: argument 0"}
!52087 = distinct !{!52087, !"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h11535453017a7d43E"}
!52088 = distinct !{!52088, !52087, !"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h11535453017a7d43E: argument 0"}
!52089 = distinct !{!52089, !"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha1f9aa6b18d76e55E"}
!52090 = distinct !{!52090, !52089, !"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha1f9aa6b18d76e55E: argument 0"}
!52091 = distinct !{!52091, !52089, !"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha1f9aa6b18d76e55E: argument 1"}
!52092 = distinct !{!52092, !"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$u64$GT$$GT$17hf15fc082be408455E"}
!52093 = distinct !{!52093, !52092, !"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$u64$GT$$GT$17hf15fc082be408455E: argument 0"}
!52094 = distinct !{!52094, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf272c182a6a4a6adE"}
!52095 = distinct !{!52095, !52094, !"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf272c182a6a4a6adE: argument 0"}
!52096 = distinct !{!52096, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE"}
!52097 = distinct !{!52097, !52096, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE: argument 0"}
!52098 = distinct !{!52098, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E"}
!52099 = distinct !{!52099, !52098, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E: argument 0"}
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v2i64
!62748 = !{!62014, !62013, !62005}
!62749 = !{!62017, !62016, !62013}
!62750 = !{!62023, !62022, !62020, !62019, !62014, !62005}
!62751 = !{!62025}
!62752 = !{!62029, !62027, !62005}
!62753 = !{!62025, !62029, !62027, !62005}
!62754 = !{!62031, !62005}
!62755 = !{!62033}
!62756 = !{!62035}
!62757 = !{!62035, !62033}
!62758 = !{!62039, !62038, !62037, !62036}
!62759 = !{!62039, !62035, !62037, !62033}
!62760 = !{!62041}
!62761 = !{!62043}
!62762 = !{!62045}
!62763 = !{!62045, !62043, !62041, !62035, !62033}
!62764 = !{!62048, !62047, !62046, !62039, !62038, !62037, !62036}
!62765 = !{!62050, !62045, !62048, !62043, !62047, !62046, !62041, !62039, !62035, !62038, !62037, !62033, !62036}
!62766 = !{!62052, !62045, !62048, !62043, !62047, !62046, !62041, !62039, !62035, !62038, !62037, !62033, !62036}
!62767 = !{!62054}
!62768 = !{!62056}
!62769 = !{!62058}
!62770 = !{!62061, !62058, !62056, !62059, !62054, !62046, !62041, !62039, !62035, !62038, !62037, !62033, !62036}
!62771 = !{!62063, !62058, !62056, !62059, !62054, !62046, !62041, !62039, !62035, !62038, !62037, !62033, !62036}
!62772 = !{!62058, !62056, !62054, !62041, !62035, !62033}
!62773 = !{!62059, !62046, !62039, !62038, !62037, !62036}
!62774 = !{!62058, !62056, !62059, !62054, !62046, !62041, !62039, !62035, !62038, !62037, !62033, !62036}
!62775 = !{!62041, !62035, !62038, !62037, !62033, !62036}
!62776 = !{!62065}
!62777 = !{!62066}
!62778 = !{!62068, !62066, !62065}
!62779 = !{!62072, !62070}
!62780 = !{!62074}
!62781 = !{!62075}
!62782 = !{!62077, !62075, !62074}
!62783 = !{!62081, !62079}
!62784 = !{!62083}
!62785 = !{!62084}
!62786 = !{!62086, !62084, !62083}
!62787 = !{!62090, !62088}
!62788 = !{!62092}
!62789 = !{!62094}
!62790 = !{!62094, !62092}
!62791 = !{!62096}
!62792 = !{!62096, !62094, !62092}
!62793 = !{!62098}
!62794 = !{!62100}
!62795 = !{!62100, !62098}
!62796 = !{!62102}
!62797 = !{!62102, !62100, !62098}
!62798 = !{!62104}
!62799 = !{!62105, !62104}
!62800 = !{!62105}
!62801 = !{!62107}
!62802 = !{!62109}
!62803 = !{!62109, !62107, !62104}
!62804 = !{!62111, !62110, !62105}
!62805 = !{!62113, !62109, !62111, !62107, !62110, !62105, !62104}
!62806 = !{!62115, !62109, !62111, !62107, !62110, !62105, !62104}
!62807 = !{!62117, !62104}
!62808 = !{!62118, !62105}
!62809 = !{!62120}
!62810 = !{!62123, !62122}
!62811 = !{!62125, !62120, !62123, !62122}
!62812 = !{!62120, !62123, !62122}
!62813 = !{!62120, !62122}
!62814 = !{!62127}
!62815 = !{!62128, !62127}
!62816 = !{!62128}
!62817 = !{!62130}
!62818 = !{!62132}
!62819 = !{!62132, !62130, !62127}
!62820 = !{!62134, !62133, !62128}
!62821 = !{!62136, !62132, !62134, !62130, !62133, !62128, !62127}
!62822 = !{!62138, !62132, !62134, !62130, !62133, !62128, !62127}
!62823 = !{!62140, !62127}
!62824 = !{!62141, !62128}
!62825 = !{!62143}
!62826 = !{!62146, !62145}
!62827 = !{!62148, !62143, !62146, !62145}
!62828 = !{!62143, !62146, !62145}
!62829 = !{!62143, !62145}
!62830 = !{!62150}
!62831 = !{!62151, !62150}
!62832 = !{!62151}
!62833 = !{!62153}
!62834 = !{!62155}
!62835 = !{!62155, !62153, !62150}
!62836 = !{!62157, !62156, !62151}
!62837 = !{!62159}
!62838 = !{!62161}
!62839 = !{!62161, !62159}
!62840 = !{!62161, !62159, !62151}
!62841 = !{!62163, !62155, !62157, !62153, !62156, !62151, !62150}
!62842 = !{!62165, !62155, !62157, !62153, !62156, !62151, !62150}
!62843 = !{!62168, !62167}
!62844 = !{!62172, !62170, !62151, !62150}
!62845 = !{!62174, !62150}
!62846 = !{!62175, !62151}
!62847 = !{!62177}
!62848 = !{!62180, !62179}
!62849 = !{!62182, !62177, !62180, !62179}
!62850 = !{!62177, !62180, !62179}
!62851 = !{!62177, !62179}
!62852 = !{!62184}
!62853 = !{!62186, !62184, !62185}
!62854 = !{!62186, !62185}
!62855 = !{!62190, !62188, !62184}
!62856 = !{!62193, !62192, !62191, !62186, !62185}
!62857 = !{!62188, !62184}
!62858 = !{!62192, !62191, !62186, !62185}
!62859 = !{!62195, !62192, !62186, !62185}
!62860 = !{!62197, !62192, !62186, !62185}
!62861 = !{!62192, !62186, !62185}
!62862 = !{!62200, !62199, !62186, !62185}
!62863 = !{!62186, !62184}
!62864 = !{!62200}
!62865 = !{!62200, !62184}
!62866 = !{!62199, !62186, !62185}
!62867 = !{!62200, !62186, !62185}
!62868 = !{!62186}
!62869 = !{!62185}
!62870 = !{!62202}
!62871 = !{!62208, !62206, !62204}
!62872 = !{!62202, !62208, !62206, !62204}
!62873 = !{!62210}
!62874 = !{!62212, !62210, !62211}
!62875 = !{!62212, !62211}
!62876 = !{!62214}
!62877 = !{!62215}
!62878 = !{!62217, !62214, !62210}
!62879 = !{!62219, !62215, !62218, !62212, !62211}
!62880 = !{!62214, !62218, !62212, !62210, !62211}
!62881 = !{!62214, !62210}
!62882 = !{!62215, !62218, !62212, !62211}
!62883 = !{!62221, !62215, !62212, !62211}
!62884 = !{!62223, !62215, !62212, !62211}
!62885 = !{!62226, !62225}
!62886 = !{!62215, !62212, !62211}
!62887 = !{!62229, !62228, !62212, !62211}
!62888 = !{!62211}
!62889 = !{!62212}
!62890 = !{!62233, !62231, !62212, !62211}
!62891 = !{!62229}
!62892 = !{!62229, !62210}
!62893 = !{!62228, !62212, !62211}
!62894 = !{!62229, !62212, !62211}
!62895 = !{!62229, !62212}
!62896 = !{!62235}
!62897 = !{!62237}
!62898 = !{!62237, !62235}
!62899 = !{!62237, !62235, !62212, !62211}
!62900 = !{!62239}
!62901 = !{!62245, !62243, !62241}
!62902 = !{!62239, !62245, !62243, !62241}
!62903 = !{!62247}
!62904 = !{!62249}
!62905 = !{!62249, !62247}
!62906 = !{!61736, !61737}
!62907 = !{!62253, !62251, !61738, !61736, !61737}
!62908 = !{!62255, !62251, !61738, !61736, !61737}
!62909 = !{!62257}
!62910 = !{!62258, !62257}
!62911 = !{!62258}
!62912 = !{!62260}
!62913 = !{!62261}
!62914 = !{!62261, !62258}
!62915 = !{!62260, !62258}
!62916 = !{!62263}
!62917 = !{!62264}
!62918 = !{!62264, !62258}
!62919 = !{!62263, !62258}
!62920 = !{!62266}
!62921 = !{!62267, !62266, !62258, !62257}
!62922 = !{!62267, !62266, !62258}
!62923 = !{!62270, !62269, !62266}
!62924 = !{!62276, !62275, !62273, !62272, !62267, !62258}
!62925 = !{!62278}
!62926 = !{!62278, !62258}
!62927 = !{!62280}
!62928 = !{!62281}
!62929 = !{!62283}
!62930 = !{!62285}
!62931 = !{!62285, !62283}
!62932 = !{!62287, !62286}
!62933 = !{!62289, !62285, !62283}
!62934 = !{!62290, !62287, !62286}
!62935 = !{!62292}
!62936 = !{!62294}
!62937 = !{!62296}
!62938 = !{!62298}
!62939 = !{!62302, !62301, !62300, !62299, !62287, !62286}
!62940 = !{!62312, !62310, !62308, !62306, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62941 = !{!62314}
!62942 = !{!62304, !62302, !62298, !62301, !62296, !62300, !62294, !62299, !62292, !62285, !62287, !62283, !62286}
!62943 = !{!62314, !62304, !62302, !62298, !62301, !62296, !62300, !62294, !62299, !62292, !62285, !62287, !62283, !62286}
!62944 = !{!62314, !62298, !62296, !62294, !62292, !62285, !62283}
!62945 = !{!62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62946 = !{!62318, !62316}
!62947 = !{!62321, !62320, !62314, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62948 = !{!62316}
!62949 = !{!62320, !62314, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62950 = !{!62323}
!62951 = !{!62324}
!62952 = !{!62326, !62323, !62314, !62298, !62296, !62294, !62292, !62285, !62283}
!62953 = !{!62328, !62324, !62327, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62954 = !{!62323, !62327, !62314, !62304, !62302, !62298, !62301, !62296, !62300, !62294, !62299, !62292, !62285, !62287, !62283, !62286}
!62955 = !{!62323, !62314, !62298, !62296, !62294, !62292, !62285, !62283}
!62956 = !{!62324, !62327, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62957 = !{!62330, !62324, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62958 = !{!62332, !62324, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62959 = !{!62335, !62334}
!62960 = !{!62324, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62961 = !{!62337, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62962 = !{!62337}
!62963 = !{!62337, !62314, !62298, !62296, !62294, !62292, !62285, !62283}
!62964 = !{!62341, !62339, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62965 = !{!62343}
!62966 = !{!62345}
!62967 = !{!62345, !62343}
!62968 = !{!62345, !62343, !62304, !62302, !62301, !62300, !62299, !62287, !62286}
!62969 = !{!62347, !62302, !62301, !62300, !62299, !62287, !62286}
!62970 = !{!62349, !62302, !62301, !62300, !62299, !62287, !62286}
!62971 = !{!62351, !62287, !62286}
!62972 = !{!62353}
!62973 = !{!62354, !62353}
!62974 = !{!62354}
!62975 = !{!62356}
!62976 = !{!62358}
!62977 = !{!62358, !62356, !62353}
!62978 = !{!62360, !62359, !62354}
!62979 = !{!62362, !62358, !62360, !62356, !62359, !62354, !62353}
!62980 = !{!62364, !62358, !62360, !62356, !62359, !62354, !62353}
!62981 = !{!62366, !62353}
!62982 = !{!62367, !62354}
!62983 = !{!62369}
!62984 = !{!62372, !62371}
!62985 = !{!62374, !62369, !62372, !62371}
!62986 = !{!62369, !62372, !62371}
!62987 = !{!62369, !62371}
!62988 = !{!62376}
!62989 = !{!62377, !62376}
!62990 = !{!62377}
!62991 = !{!62379}
!62992 = !{!62381}
!62993 = !{!62381, !62379, !62376}
!62994 = !{!62383, !62382, !62377}
!62995 = !{!62385, !62381, !62383, !62379, !62382, !62377, !62376}
!62996 = !{!62387, !62381, !62383, !62379, !62382, !62377, !62376}
!62997 = !{!62389, !62376}
!62998 = !{!62390, !62377}
!62999 = !{!62392}
!63000 = !{!62395, !62394}
!63001 = !{!62397, !62392, !62395, !62394}
!63002 = !{!62392, !62395, !62394}
!63003 = !{!62392, !62394}
!63004 = !{!62399}
!63005 = !{!62400, !62399}
!63006 = !{!62400}
!63007 = !{!62402}
!63008 = !{!62404}
!63009 = !{!62404, !62402, !62399}
!63010 = !{!62406, !62405, !62400}
!63011 = !{!62408, !62404, !62406, !62402, !62405, !62400, !62399}
!63012 = !{!62410, !62404, !62406, !62402, !62405, !62400, !62399}
!63013 = !{!62412, !62399}
!63014 = !{!62413, !62400}
!63015 = !{!62415}
!63016 = !{!62418, !62417}
!63017 = !{!62420, !62415, !62418, !62417}
!63018 = !{!62415, !62418, !62417}
!63019 = !{!62415, !62417}
!63020 = !{!62422}
!63021 = !{!62423, !62422}
!63022 = !{!62423}
!63023 = !{!62425}
!63024 = !{!62427}
!63025 = !{!62427, !62425, !62422}
!63026 = !{!62429, !62428, !62423}
!63027 = !{!62431, !62427, !62429, !62425, !62428, !62423, !62422}
!63028 = !{!62433, !62427, !62429, !62425, !62428, !62423, !62422}
!63029 = !{!62435, !62422}
!63030 = !{!62436, !62423}
!63031 = !{!62438}
!63032 = !{!62441, !62440}
!63033 = !{!62443, !62438, !62441, !62440}
!63034 = !{!62438, !62441, !62440}
!63035 = !{!62438, !62440}
!63036 = !{!62445}
!63037 = !{!62447}
!63038 = !{!62447, !62445}
!63039 = !{!62449}
!63040 = !{!62449, !62447, !62445}
!63041 = !{!62451}
!63042 = !{!62453}
!63043 = !{!62455}
!63044 = !{!62457}
!63045 = !{!62457, !62455}
!63046 = !{!62459}
!63047 = !{!62459, !62457, !62455}
!63048 = !{!62461}
!63049 = !{!62463}
!63050 = !{!62465}
!63051 = !{!62467}
!63052 = !{!62469}
!63053 = !{!62471}
!63054 = !{!62471, !62469, !62467, !62465, !62463, !62461}
!63055 = !{!62473}
!63056 = !{!62473, !62471, !62469, !62467, !62465, !62463, !62461}
!63057 = !{!62475, !62473, !62471, !62469, !62467, !62465, !62463, !62461}
!63058 = !{!62477, !62473, !62471, !62469, !62467, !62465, !62463, !62461}
!63059 = !{!62479}
!63060 = !{!62481}
!63061 = !{!62483}
!63062 = !{!62483, !62481, !62479}
!63063 = !{!62483, !62481, !62479, !62473, !62471, !62469, !62467, !62465, !62463, !62461}
!63064 = !{!62485}
!63065 = !{!62489, !62487}
!63066 = !{!62485, !62489, !62487}
!63067 = !{!62491}
!63068 = !{!62493, !62491, !62492}
!63069 = !{!62493, !62492}
!63070 = !{!62497, !62495, !62491}
!63071 = !{!62500, !62499, !62498, !62493, !62492}
!63072 = !{!62495, !62491}
!63073 = !{!62499, !62498, !62493, !62492}
!63074 = !{!62502, !62499, !62493, !62492}
!63075 = !{!62504, !62499, !62493, !62492}
!63076 = !{!62499, !62493, !62492}
!63077 = !{!62507, !62506, !62493, !62492}
!63078 = !{!62493, !62491}
!63079 = !{!62507}
!63080 = !{!62507, !62491}
!63081 = !{!62506, !62493, !62492}
!63082 = !{!62507, !62493, !62492}
!63083 = !{!62493}
!63084 = !{!62492}
!63085 = !{!62509}
!63086 = !{!62515, !62513, !62511}
!63087 = !{!62509, !62515, !62513, !62511}
!63088 = !{!62519, !62517}
!63089 = !{!62521}
!63090 = !{!62523}
!63091 = !{!62523, !62521}
!63092 = !{!62525}
!63093 = !{!62527}
!63094 = !{!62527, !62525, !62521}
!63095 = !{!62529}
!63096 = !{!62531}
!63097 = !{!62531, !62529, !62527, !62525, !62521}
!63098 = distinct !{!63098, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hea1434722e9c198bE"}
!63099 = distinct !{!63099, !63098, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hea1434722e9c198bE: argument 1"}
!63100 = distinct !{!63100, !63098, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hea1434722e9c198bE: argument 0"}
!63101 = distinct !{!63101, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h7e5262f69565590dE"}
!63102 = distinct !{!63102, !63101, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h7e5262f69565590dE: argument 0"}
!63103 = distinct !{!63103, !"_ZN4core4iter6traits8iterator8Iterator6reduce17h4bf8f419c1811fe9E"}
!63104 = distinct !{!63104, !63103, !"_ZN4core4iter6traits8iterator8Iterator6reduce17h4bf8f419c1811fe9E: argument 0"}
!63105 = distinct !{!63105, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h12190996bc694dbaE"}
!63106 = distinct !{!63106, !63105, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h12190996bc694dbaE: argument 0"}
!63107 = distinct !{!63107, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0d2fbd69a8f7700fE"}
!63108 = distinct !{!63108, !63107, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0d2fbd69a8f7700fE: argument 0"}
!63109 = distinct !{!63109, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h580d0154dc17cfcbE"}
!63110 = distinct !{!63110, !63109, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h580d0154dc17cfcbE: argument 0"}
!63111 = distinct !{!63111, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h5ac58eaa4c4344fdE"}
!63112 = distinct !{!63112, !63111, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h5ac58eaa4c4344fdE: argument 0"}
!63113 = distinct !{!63113, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h6e80b28d7f70ec48E"}
!63114 = distinct !{!63114, !63113, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h6e80b28d7f70ec48E: argument 0"}
!63115 = distinct !{!63115, !63113, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h6e80b28d7f70ec48E: argument 1"}
!63116 = distinct !{!63116, !"_ZN4core4iter6traits8iterator8Iterator6min_by4fold28_$u7b$$u7b$closure$u7d$$u7d$17h1e4a49ab3cb530f4E"}
!63117 = distinct !{!63117, !63116, !"_ZN4core4iter6traits8iterator8Iterator6min_by4fold28_$u7b$$u7b$closure$u7d$$u7d$17h1e4a49ab3cb530f4E: argument 0"}
!63118 = distinct !{!63118, !63116, !"_ZN4core4iter6traits8iterator8Iterator6min_by4fold28_$u7b$$u7b$closure$u7d$$u7d$17h1e4a49ab3cb530f4E: argument 1"}
!63119 = distinct !{!63119, !"_ZN4core3cmp6min_by17h062556958a4d5afbE"}
!63120 = distinct !{!63120, !63119, !"_ZN4core3cmp6min_by17h062556958a4d5afbE: argument 0"}
!63121 = distinct !{!63121, !63119, !"_ZN4core3cmp6min_by17h062556958a4d5afbE: argument 1"}
!63122 = distinct !{!63122, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hefe53ca2c38f018eE"}
!63123 = distinct !{!63123, !63122, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hefe53ca2c38f018eE: argument 0"}
!63124 = distinct !{!63124, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfe1162096be63fa8E"}
!63125 = distinct !{!63125, !63124, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfe1162096be63fa8E: argument 0"}
!63126 = distinct !{!63126, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9fold_impl17h914db2754b655accE"}
!63127 = distinct !{!63127, !63126, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9fold_impl17h914db2754b655accE: argument 0"}
!63128 = distinct !{!63128, !63122, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hefe53ca2c38f018eE: argument 1"}
!63129 = distinct !{!63129, !63124, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfe1162096be63fa8E: argument 1"}
!63130 = distinct !{!63130, !63126, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9fold_impl17h914db2754b655accE: argument 1"}
!63131 = distinct !{!63131, !"_ZN4core4iter6traits8iterator8Iterator6reduce17haccda5d8b1b577cfE"}
!63132 = distinct !{!63132, !63131, !"_ZN4core4iter6traits8iterator8Iterator6reduce17haccda5d8b1b577cfE: argument 0"}
!63133 = distinct !{!63133, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h12190996bc694dbaE"}
!63134 = distinct !{!63134, !63133, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h12190996bc694dbaE: argument 0"}
!63135 = distinct !{!63135, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0d2fbd69a8f7700fE"}
!63136 = distinct !{!63136, !63135, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0d2fbd69a8f7700fE: argument 0"}
!63137 = distinct !{!63137, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h580d0154dc17cfcbE"}
!63138 = distinct !{!63138, !63137, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h580d0154dc17cfcbE: argument 0"}
!63139 = distinct !{!63139, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h830e4ca6b00b8de2E"}
!63140 = distinct !{!63140, !63139, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h830e4ca6b00b8de2E: argument 0"}
!63141 = distinct !{!63141, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17hc912b8e60515ed03E"}
!63142 = distinct !{!63142, !63141, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17hc912b8e60515ed03E: argument 0"}
!63143 = distinct !{!63143, !63141, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17hc912b8e60515ed03E: argument 1"}
!63144 = distinct !{!63144, !"_ZN4core4iter6traits8iterator8Iterator6max_by4fold28_$u7b$$u7b$closure$u7d$$u7d$17h45d962b50c0e07fcE"}
!63145 = distinct !{!63145, !63144, !"_ZN4core4iter6traits8iterator8Iterator6max_by4fold28_$u7b$$u7b$closure$u7d$$u7d$17h45d962b50c0e07fcE: argument 0"}
!63146 = distinct !{!63146, !63144, !"_ZN4core4iter6traits8iterator8Iterator6max_by4fold28_$u7b$$u7b$closure$u7d$$u7d$17h45d962b50c0e07fcE: argument 1"}
!63147 = distinct !{!63147, !"_ZN4core3cmp6max_by17h6e71f81a0a2c258aE"}
!63148 = distinct !{!63148, !63147, !"_ZN4core3cmp6max_by17h6e71f81a0a2c258aE: argument 0"}
!63149 = distinct !{!63149, !63147, !"_ZN4core3cmp6max_by17h6e71f81a0a2c258aE: argument 1"}
end_hunk_4
