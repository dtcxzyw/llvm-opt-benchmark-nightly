Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hdb71d9d3c9828896E":bb.a
"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i", %bb.r
  %i.bo = phi ptr [ %.pre.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i" ], [ %.sroa.5.0.copyload3, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %.sroa.6.0.copyload5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !4567
  %i.bq = add nuw nsw i64 %.sroa.6.0.copyload5, 1 ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4572, !noalias !4573
  br label %bb.m

bb.w:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i.i.i.i.i", %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h1797295aeeda33f1E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #67
          to label %bb.p unwind label %bb.x, !noalias !4567

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i.i.i.i.i": ; preds = %bb.v
  %i.bs = load i64, ptr %i.e, align 8, !noalias !4567, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4567
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hc7f257131df3f6ecE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.6.0.copyload5, i64 noundef %i.bt, i64 noundef 8, i64 noundef 56)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.w, !noalias !4573

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf3d215c3ba82bd6bE.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4572, !noalias !4573
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w, %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !4567
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i" ], [ %.pn.i.i.i.i.i.i, %bb.p ]
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h8e1b4debb1a53930E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #67
          to label %common.resume.i.i.i.i unwind label %bb.y, !noalias !4524

"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hce5a62563685c342E.exit34.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i", %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !4567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4560
  %.sroa.0.0.copyload1 = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4524
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h1a36d10cd8538fdcE.exit

bb.y:                                             ; preds = %.body.i.i.i.i, %bb.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body42.i.i.i.i

.body42.i.i.i.i:                                  ; preds = %.body51.i.i.i.i, %bb.y
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !4524
  unreachable

bb.z:                                             ; preds = %bb.i, %bb.d
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ai, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4587)
  %.val.i45.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4587, !noalias !4524 ; 5 uses
  %.val1.i46.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4587, !noalias !4524, !nonnull !27, !align !241, !noundef !27 ; 5 uses
  %i.bw = load ptr, ptr %.val1.i46.i.i.i.i, align 8, !invariant.load !27, !noalias !4590 ; 2 uses
  %.not.i.i47.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i47.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  invoke void %i.bw(ptr noundef nonnull %.val.i45.i.i.i.i)
          to label %bb.ab unwind label %bb.ac, !noalias !4590

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !28, !invariant.load !27, !noalias !4590 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !4400, !invariant.load !27, !noalias !4590 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, -9223372036854775807
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.by, 0
  br i1 %i.cc, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i": ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #65, !noalias !4590
  br label %common.resume.sink.split.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !28, !invariant.load !27, !noalias !4590 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !4400, !invariant.load !27, !noalias !4590 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, -9223372036854775807
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp eq i64 %i.cf, 0
  br i1 %i.cj, label %.body51.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) %i.ch) #65, !noalias !4590
  br label %.body51.i.i.i.i

.body51.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i", %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !4524
  br label %.body42.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h1a36d10cd8538fdcE.exit: ; preds = %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h59e62bc18d16678dE.exit.i.i.i.i", %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hce5a62563685c342E.exit34.i.i.i.i"
  %.sroa.6.0 = phi i64 [ 0, %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h59e62bc18d16678dE.exit.i.i.i.i" ], [ %.sroa.6.0.copyload5, %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hce5a62563685c342E.exit34.i.i.i.i" ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h59e62bc18d16678dE.exit.i.i.i.i" ], [ %.sroa.5.0.copyload3, %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hce5a62563685c342E.exit34.i.i.i.i" ]
  %.sroa.0.0 = phi i64 [ 0, %"_ZN4core3ptr461drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h59e62bc18d16678dE.exit.i.i.i.i" ], [ %.sroa.0.0.copyload1, %"_ZN4core3ptr434drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromVersions$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hce5a62563685c342E.exit34.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4517
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ck, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h0eb0962385fe1f4cE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @45, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h6e68fc72ec296d9dE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @45, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17hda2e6e8a66257a8eE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @45, i64 5 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core11thread_pool10ThreadPool7install28_$u7b$$u7b$closure$u7d$$u7d$17h0f60eee7b8af0e5bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(1240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [544 x i8], align 8               ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [1240 x i8], align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.c, ptr noundef nonnull align 8 dereferenceable(1240) %1, i64 1240, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4591)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4591, !noalias !4594, !nonnull !27, !align !241, !noundef !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4596
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.a, ptr noundef nonnull align 8 dereferenceable(544) %i.g, i64 544, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 680
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !4591, !noalias !4594, !nonnull !27, !align !241, !noundef !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 728 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !4591, !noalias !4594, !nonnull !27, !align !242, !noundef !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 696
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !4591, !noalias !4594, !nonnull !27, !align !241, !noundef !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !4591, !noalias !4594, !nonnull !27, !align !241, !noundef !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !4591, !noalias !4594, !nonnull !27, !align !241, !noundef !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !4591, !noalias !4594, !nonnull !27, !align !241, !noundef !27
  invoke fastcc void @_ZN5milli6update3new7indexer7extract11extract_all17h8af8b418390ada28E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(544) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noalias noundef align 8 dereferenceable(512) %i.j, ptr noundef nonnull align 1 %i.l, ptr noalias noundef align 8 dereferenceable(24) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef align 8 dereferenceable(24) %i.q, ptr noalias noundef align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 %i.u)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E"(ptr noalias noundef align 8 dereferenceable(512) %i.j) #67, !noalias !4594
  resume { ptr, i32 } %i.v

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4596
  call void @llvm.experimental.noalias.scope.decl(metadata !4597)
  call void @llvm.experimental.noalias.scope.decl(metadata !4600)
  call void @llvm.experimental.noalias.scope.decl(metadata !4603)
  br label %bb.d

bb.d:                                             ; preds = %.backedge.i.i.i.i, %bb.c
  %.sroa.0.0.idx12.i.i.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.0.0.add.i.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.w, %.backedge.i.i.i.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.idx12.i.i.i.i
  %.sroa.0.0.add.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i, 8 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.7.011.i.i.i.i, 1
  %i.x = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i, align 8, !alias.scope !4606, !noalias !4594, !noundef !27 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.backedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = shl nuw i64 1, %.sroa.7.011.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4607)
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i", %bb.e
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.ab, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i" ], [ 0, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 24
  %.val9.i.i.i.i.i.i = load i8, ptr %i.ac, align 1, !range !1558, !alias.scope !4607, !noalias !4610, !noundef !27
  %i.ad = trunc nuw i8 %.val9.i.i.i.i.i.i to i1
  br i1 %i.ad, label %bb.f, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = getelementptr i8, ptr %i.aa, i64 16
  %.val8.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !4607, !noalias !4610, !nonnull !27, !noundef !27 ; 2 uses
  %i.af = icmp eq ptr %.val8.i.i.i.i.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.af, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i.i.i.i.i, %bb.f ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !4611, !nonnull !27, !noundef !27 ; 2 uses
  %i.ai = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !4611, !nonnull !27, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 16, !noalias !4611, !noundef !27
  %i.am = load i64, ptr %i.aj, align 8, !range !4612, !noalias !4611, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.al, i64 noundef %i.am) #65, !noalias !4611
  %i.an = icmp eq ptr %i.ah, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.an, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i.i.i
  %i.ao = icmp eq i64 %i.ab, %i.z
  br i1 %i.ao, label %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i"
  %i.ap = shl nuw i64 32, %.sroa.7.011.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.ap, i64 noundef 8) #65, !noalias !4610
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i.i", %bb.d
  %i.aq = icmp eq i64 %.sroa.0.0.add.i.i.i.i, 504
  br i1 %i.aq, label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h0848021a6e63e55cE.exit", label %bb.d

"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h0848021a6e63e55cE.exit": ; preds = %.backedge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17h037f33b0da73eed8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %i.c = alloca [144 x i8], align 8               ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 12 uses
  %i.f = alloca [144 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.i = load i64, ptr %i.h, align 128, !noundef !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  store i64 12, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp slt i64 %i.r, 1
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.v = load atomic i64, ptr %i.u monotonic, align 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.x = load atomic i64, ptr %i.w acquire, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !27 ; 3 uses
  %i.aa = sub i64 %i.v, %i.x
  %.not.i = icmp slt i64 %i.aa, %i.z
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !158

.thread:                                          ; preds = %bb.k, %bb.b, %.sink.split.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.ac = shl i64 %i.z, 1
  invoke fastcc void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$6resize17hbc8f00da446f5a67E"(ptr noundef nonnull align 8 %i.l, i64 noundef %i.ac)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  %i.ad = load i64, ptr %i.y, align 8, !noundef !27
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.ad, %.noexc ], [ %i.z, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 288
  %.sroa.01.0.i = load ptr, ptr %i.ae, align 32, !noundef !27
  %i.af = add i64 %.sroa.02.0.i, -1
  %i.ag = and i64 %i.af, %i.v
  %i.ah = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i, i64 %i.ag ; 2 uses
  store volatile ptr @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h7b742aa650dfad58E", ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store volatile ptr %i.f, ptr %i.ai, align 8
  fence release
  %i.aj = load ptr, ptr %i.l, align 8, !nonnull !27, !noundef !27
  %i.ak = add i64 %i.v, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  store atomic i64 %i.ak, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.g, align 16, !nonnull !27, !noundef !27 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 472
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 496 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ap = load atomic i64, ptr %i.ao seq_cst, align 8 ; 4 uses
  %i.aq = and i64 %i.ap, 4294967296
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h2977ffd5eeff923fE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.as = or disjoint i64 %i.ap, 4294967296       ; 2 uses
  %i.at = cmpxchg ptr %i.ao, i64 %i.ap, i64 %i.as seq_cst monotonic, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h2977ffd5eeff923fE.exit.i, label %bb.d

_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h2977ffd5eeff923fE.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.ap, %bb.d ], [ %i.as, %bb.e ] ; 2 uses
  %i.au = and i64 %.sroa.0.0.i.i, 65535           ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h572e286cb22a927bE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h2977ffd5eeff923fE.exit.i
  br i1 %i.s, label %bb.g, label %.sink.split.i, !prof !158

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17hb37a3e6aa1a300aaE(ptr noundef nonnull align 8 %i.an, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h572e286cb22a927bE.exit unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aw = lshr i64 %.sroa.0.0.i.i, 16
  %i.ax = and i64 %i.aw, 65535
  %i.ay = icmp eq i64 %i.ax, %i.au
  br i1 %i.ay, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h572e286cb22a927bE.exit, !prof !29

_ZN10rayon_core5sleep5Sleep8new_jobs17h572e286cb22a927bE.exit: ; preds = %bb.g, %_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h2977ffd5eeff923fE.exit.i, %.sink.split.i
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8, !nonnull !27, !noundef !27
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.583.0.copyload = load ptr, ptr %.sroa.583.0..sroa_idx, align 8, !nonnull !27, !noundef !27
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.az = load i64, ptr %.sroa.482.0.copyload, align 8, !noalias !4613, !noundef !27
  invoke fastcc void @_ZN5rayon4iter8plumbing34bridge_unindexed_producer_consumer17h3f8d1157381942a6E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, i1 noundef zeroext %3, i64 noundef %i.az, ptr noundef nonnull align 8 %.sroa.583.0.copyload, ptr noalias noundef align 8 captures(address) dereferenceable(32) %.sroa.684.0..sroa_idx)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h572e286cb22a927bE.exit
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  %i.bc = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bb)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #68
  unreachable

bb.j:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h572e286cb22a927bE.exit
  %.sroa.092.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.695.0..sroa_idx, i64 32, i1 false)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.be = load <2 x ptr>, ptr %.sroa.493.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i64 %.sroa.092.0.copyload, ptr %i.e, align 8
  store <2 x ptr> %i.be, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bf = extractvalue { ptr, ptr } %i.bc, 0
  %i.bg = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h2ec50abe1ff1e448E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 1 %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg) #66
          to label %bb.ap unwind label %.thread
end_hunk_0
begin_hunk_1_@"_ZN12clap_builder5error14Error$LT$F$GT$8with_cmd17hf34876177a853decE":bb.a
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN12clap_builder6derive12format_error17hdc1ecbce0f9b7261E(ptr noalias noundef nonnull returned align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [712 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @"_ZN75_$LT$fuzz_indexing..Opt$u20$as$u20$clap_builder..derive..CommandFactory$GT$7command17h12a007952711ba84E"(ptr noalias noundef align 8 captures(address) dereferenceable(712) %i.c)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10249)
  invoke void @_ZN12clap_builder7builder7command7Command11_build_self17hac35a63dc9d0e1b0E(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.c, i1 noundef zeroext false)
          to label %bb.c unwind label %.thread.i, !noalias !10249

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10252
  invoke void @_ZN12clap_builder7builder7command7Command13render_usage_17h11e86ec168544d81E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(712) %i.c)
          to label %bb.d unwind label %.thread.i, !noalias !10249

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %0, align 8, !range !322, !alias.scope !10249, !noalias !10254, !noundef !27
  %.not.i = icmp eq i64 %i.e, 2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !10252
  invoke void @_ZN12clap_builder5error7Message6format17hb89fb9483f86dae2E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %.thread23.i

.thread23.i:                                      ; preds = %bb.e
  %lpad.thr_comm25.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.f = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$8with_cmd17hf34876177a853decE"(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.c)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %.val11.i = load i64, ptr %i.b, align 8, !range !8078, !noalias !10252, !noundef !27 ; 2 uses
  %switch.i = icmp sgt i64 %.val11.i, 0
  br i1 %switch.i, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val12.i = load ptr, ptr %i.g, align 8, !noalias !10252, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i, i64 noundef %.val11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !10255
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10252
  %i.h = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$8with_cmd17hf34876177a853decE"(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.c)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.j:                                             ; preds = %bb.f
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !range !8078, !noalias !10252, !noundef !27 ; 2 uses
  %switch26.i = icmp sgt i64 %.val.i, 0
  br i1 %switch26.i, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val10.i = load ptr, ptr %i.i, align 8, !noalias !10252, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !10260
  br label %.body

bb.l:                                             ; preds = %bb.m
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

bb.m:                                             ; preds = %.thread23.i, %.thread.i
  %.pn19.i = phi { ptr, i32 } [ %i.d, %.thread.i ], [ %lpad.thr_comm25.i, %.thread23.i ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17ha55873527ac0fb73E"(ptr nonnull align 8 %0) #67
          to label %.body unwind label %bb.l

bb.n:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.n ], [ %.pn19.i, %bb.m ], [ %lpad.thr_comm.split-lp.i, %bb.j ], [ %lpad.thr_comm.split-lp.i, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h9e76fdb2350bfd25E"(ptr noalias noundef align 8 dereferenceable(712) %i.c) #67
          to label %.thread unwind label %bb.p

bb.o:                                             ; preds = %bb.h, %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10252
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h9e76fdb2350bfd25E"(ptr noalias noundef align 8 dereferenceable(712) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0

bb.p:                                             ; preds = %bb.q, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

.thread:                                          ; preds = %.body, %bb.q
  %.pn5 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.q ]
  resume { ptr, i32 } %.pn5

bb.q:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17ha55873527ac0fb73E"(ptr %0) #67
          to label %.thread unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17h8b8c18875248005aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, i8 0, i64 504, i1 false)
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6611

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 3
  %.idx = sub nuw nsw i64 512, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit
  %.sroa.0.014 = phi ptr [ %i.f, %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.7.013 = phi i64 [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit ], [ 0, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.7.013, 1
  %i.h = and i64 %.sroa.7.013, 63
  %i.i = shl nuw i64 1, %i.h                      ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.013, 63
  br i1 %exitcond, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !4065

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10265
  %i.j = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 1) #65, !noalias !10265 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, %.lr.ph
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66, !noalias !10278
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 0, i64 %i.i, i1 false), !noalias !10279
  store ptr %i.j, ptr %.sroa.0.014, align 8
  %i.l = icmp eq ptr %i.f, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %i.a, i64 504, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17hc52a529471d201bdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, i8 0, i64 504, i1 false)
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6611

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 3
  %.idx = sub nuw nsw i64 512, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit
  %.sroa.0.014 = phi ptr [ %i.f, %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.7.013 = phi i64 [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit ], [ 0, %bb.c ] ; 8 uses
  %notmask = shl nsw i64 -1, %.sroa.7.013
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.7.013, 1
  %i.h = shl nuw i64 1, %.sroa.7.013              ; 2 uses
  %i.i = shl i64 64, %.sroa.7.013                 ; 2 uses
  %exitcond = icmp eq i64 %.sroa.7.013, 57
  br i1 %exitcond, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !4065

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10296
  %i.j = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10296 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.h, 7
  %2 = icmp samesign ugt i64 %notmask, -8
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, %.lr.ph
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66, !noalias !10309
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.l = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10310
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10310
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10310
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10310
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10310
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.r, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10310
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.s, i64 440
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10310
  %i.t = add nuw nsw i64 %i.l, 8                  ; 2 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.u, i64 504
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10310
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp samesign ugt i64 %.sroa.7.013, 2
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.t, %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit.unr-lcssa ]
  %lcmp.mod21 = icmp samesign ult i64 %.sroa.7.013, 3
  call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.v = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.v
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10310
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10327

_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit.unr-lcssa
  %i.y = icmp samesign ult i64 %.sroa.7.013, 57
  call void @llvm.assume(i1 %i.y)
  store ptr %i.j, ptr %.sroa.0.014, align 8
  %i.z = icmp eq ptr %i.f, %i.d
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h81e09ae0e8ad30ebE.exit, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %i.a, i64 504, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17hf449c896164aba05E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, i8 0, i64 504, i1 false)
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6611

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 3
  %.idx = sub nuw nsw i64 512, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit
  %.sroa.0.014 = phi ptr [ %i.f, %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.7.013 = phi i64 [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit ], [ 0, %bb.c ] ; 7 uses
  %notmask = shl nsw i64 -1, %.sroa.7.013
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.7.013, 1
  %i.h = shl nuw i64 1, %.sroa.7.013              ; 2 uses
  %i.i = shl i64 144, %.sroa.7.013                ; 2 uses
  %exitcond = icmp eq i64 %.sroa.7.013, 56
  br i1 %exitcond, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !4065

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10328
  %i.j = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10328 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.h, 7
  %2 = icmp samesign ugt i64 %notmask, -8
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, %.lr.ph
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66, !noalias !10341
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.l = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10342
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10342
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10342
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.p, i64 568
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10342
  %i.q = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.q, i64 712
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10342
  %i.r = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.r, i64 856
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10342
  %i.s = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.s, i64 1000
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10342
  %i.t = add nuw nsw i64 %i.l, 8                  ; 2 uses
  %i.u = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.l
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.u, i64 1144
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10342
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp samesign ugt i64 %.sroa.7.013, 2
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.t, %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit.unr-lcssa ]
  %lcmp.mod21 = icmp samesign ult i64 %.sroa.7.013, 3
  call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.v = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.v
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10342
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10359

_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit.unr-lcssa
  store ptr %i.j, ptr %.sroa.0.014, align 8
  %i.y = icmp eq ptr %i.f, %i.d
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %i.a, i64 504, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h08fcb93e8eb50795E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !27 ; 10 uses
  %i.i = shl i64 %i.h, 5                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 576460752303423487
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !4065

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10360
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10360 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 576460752303423480
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10373
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10373
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10373
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10373
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10373
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10373
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10373
  %i.y = add nuw i64 %i.q, 8                      ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10373
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i"
  %i.aa = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.e

.loopexit.thread.unr-lcssa:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = add nuw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ac
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10373
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10390

.loopexit.thread:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.thread.unr-lcssa
  %i.af = icmp samesign ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  %i.ai = extractvalue { ptr, i1 } %i.ag, 0
  br i1 %i.ah, label %bb.g, label %.lr.ph.i.i

bb.e:                                             ; preds = %.loopexit
  %i.aj = extractvalue { ptr, i1 } %i.aa, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10391)
  br label %bb.g

.lr.ph.i.i:                                       ; preds = %.loopexit.thread, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.al, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i" ], [ 0, %.loopexit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.010.i.i, 1     ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %.val9.i.i = load i8, ptr %i.am, align 8, !range !1558, !alias.scope !10391, !noundef !27
  %i.an = trunc nuw i8 %.val9.i.i to i1
  br i1 %i.an, label %bb.f, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val8.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !10391, !nonnull !27, !noundef !27 ; 2 uses
  %i.ap = icmp eq ptr %.val8.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ap, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val8.i.i, %bb.f ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !10391, !nonnull !27, !noundef !27 ; 2 uses
  %i.as = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, align 16, !noalias !10391, !nonnull !27, !noundef !27
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 16, !noalias !10391, !noundef !27
  %i.aw = load i64, ptr %i.at, align 8, !range !4612, !noalias !10391, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.av, i64 noundef %i.aw) #65, !noalias !10391
  %i.ax = icmp eq ptr %i.ar, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ax, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i
  %i.ay = icmp eq i64 %i.al, %i.h
  br i1 %i.ay, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #65
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.loopexit.thread, %bb.a, %.loopexit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.aj, %bb.e ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !noundef !27
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.ba ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store atomic i8 1, ptr %i.bc release, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.be = atomicrmw add ptr %i.bd, i64 1 release, align 8 ; 0 uses
  ret ptr %i.bb

bb.h:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.bg, align 8, !nonnull !27, !noundef !27
  tail call fastcc void @"_ZN4core3ptr144drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17h2c8845d04f23e965E"(ptr nonnull %.val) #67
  resume { ptr, i32 } %i.bf
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 1 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h0c774b5ed934fb59E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
begin_hunk_2_@"_ZN4core3ptr136drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$milli..fields_ids_map..metadata..FieldSortOrder$GT$$GT$17hc86bf34517baff44E":bb.a
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %"_ZN4core3ptr156drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$milli..fields_ids_map..metadata..FieldSortOrder$C$std..hash..random..RandomState$GT$$GT$17h73ca5527563b99b3E.exit", label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h076a0e9b0e84da88E.exit.i.i.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !18313, !nonnull !27, !noundef !27
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !18313
  br label %"_ZN4core3ptr156drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$milli..fields_ids_map..metadata..FieldSortOrder$C$std..hash..random..RandomState$GT$$GT$17h73ca5527563b99b3E.exit"

"_ZN4core3ptr156drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$milli..fields_ids_map..metadata..FieldSortOrder$C$std..hash..random..RandomState$GT$$GT$17h73ca5527563b99b3E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h076a0e9b0e84da88E.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr136drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$milli..update..new..channel..ReceiverAction$GT$$GT$$GT$17ha7edbe57c0c0d079E"(ptr %.0.val, i8 %.8.val) unnamed_addr #3 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !158

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8447f96c4f88ca38E.exit", !prof !29

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.0.val)
  br label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8447f96c4f88ca38E.exit"

"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8447f96c4f88ca38E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr137drop_in_place$LT$core..result..Result$LT$$LP$$RF$str$C$milli..update..new..vector_document..VectorEntry$RP$$C$milli..error..Error$GT$$GT$17h07af74559171a85aE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4698, !noundef !27 ; 3 uses
  %i.b = icmp eq i64 %i.a, 97
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18334)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18340)
  %i.d = load i64, ptr %i.c, align 8, !range !8060, !alias.scope !18343, !noundef !27 ; 4 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775806
  br i1 %i.e, label %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$str$C$milli..update..new..vector_document..VectorEntry$RP$$GT$17hfa3bab3c6f6bbf40E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18344)
  %switch1.i.i.i.i = icmp slt i64 %i.d, -9223372036854775806
  br i1 %switch1.i.i.i.i, label %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$str$C$milli..update..new..vector_document..VectorEntry$RP$$GT$17hfa3bab3c6f6bbf40E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18347)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !18350, !nonnull !27, !noundef !27 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !18350, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18351)
  %i.h = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h141d9605869ae7aaE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17ha87ad6f78ba4b228E.exit.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.j, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17ha87ad6f78ba4b228E.exit.i.i.i.i.i.i.i" ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !18351, !noalias !18350 ; 2 uses
  %i.k = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17ha87ad6f78ba4b228E.exit.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !18351, !noalias !18350, !nonnull !27, !noundef !27
  %i.m = shl nuw i64 %.val8.i.i.i.i.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 4) #65, !noalias !18354
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17ha87ad6f78ba4b228E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17ha87ad6f78ba4b228E.exit.i.i.i.i.i.i.i": ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %i.n = icmp eq i64 %i.j, %.val1.i.i.i.i.i
  br i1 %i.n, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h141d9605869ae7aaE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h141d9605869ae7aaE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17ha87ad6f78ba4b228E.exit.i.i.i.i.i.i.i", %bb.d
  %i.o = icmp eq i64 %i.d, 0
  br i1 %i.o, label %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$str$C$milli..update..new..vector_document..VectorEntry$RP$$GT$17hfa3bab3c6f6bbf40E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h141d9605869ae7aaE.exit.i.i.i.i.i"
  %i.p = mul nuw i64 %i.d, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18350
  br label %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$str$C$milli..update..new..vector_document..VectorEntry$RP$$GT$17hfa3bab3c6f6bbf40E.exit"

bb.g:                                             ; preds = %bb.a
  %i.q = add nsw i64 %i.a, -95
  %i.r = icmp samesign ugt i64 %i.a, 94
  %i.s = select i1 %i.r, i64 %i.q, i64 2
  switch i64 %i.s, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN4core3ptr44drop_in_place$LT$milli..error..UserError$GT$17h084a53795b6f807bE"(ptr noalias noundef align 8 dereferenceable(320) %0)
  br label %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$str$C$milli..update..new..vector_document..VectorEntry$RP$$GT$17hfa3bab3c6f6bbf40E.exit"

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$milli..error..InternalError$GT$17h575c0a4ef19d4e01E"(ptr noalias noundef align 8 dereferenceable(72) %i.t)
  br label %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$str$C$milli..update..new..vector_document..VectorEntry$RP$$GT$17hfa3bab3c6f6bbf40E.exit"

bb.j:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h90e9c3833ce89d63E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$str$C$milli..update..new..vector_document..VectorEntry$RP$$GT$17hfa3bab3c6f6bbf40E.exit"

"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$str$C$milli..update..new..vector_document..VectorEntry$RP$$GT$17hfa3bab3c6f6bbf40E.exit": ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h141d9605869ae7aaE.exit.i.i.i.i.i", %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr137drop_in_place$LT$grenad..sorter..Sorter$LT$milli..update..index_documents..helpers..merge_functions..MergeDeladdCboRoaringBitmaps$GT$$GT$17h6589be0e9565e82bE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18355)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !18355, !nonnull !27, !noundef !27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !18355, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18358)
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ae212dcc56ea9dcE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.sroa.0.08.i.i.i
  %i.f = add nuw i64 %.sroa.0.08.i.i.i, 1         ; 2 uses
  %.val7.i.i.i = load i32, ptr %i.e, align 4, !range !14970, !alias.scope !18358, !noalias !18355, !noundef !27
  %i.g = tail call noundef i32 @close(i32 noundef %.val7.i.i.i) #65, !noalias !18361 ; 0 uses
  %i.h = icmp eq i64 %i.f, %.val1.i
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ae212dcc56ea9dcE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ae212dcc56ea9dcE.exit.i": ; preds = %.lr.ph.i.i.i, %bb.a
  %.val2.i = load i64, ptr %i.a, align 8, !range !28, !alias.scope !18355, !noundef !27 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$std..fs..File$GT$$GT$17h99fd91994ba19555E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ae212dcc56ea9dcE.exit.i"
  %i.j = shl nuw i64 %.val2.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #65, !noalias !18355
  br label %"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$std..fs..File$GT$$GT$17h99fd91994ba19555E.exit"

"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$std..fs..File$GT$$GT$17h99fd91994ba19555E.exit": ; preds = %bb.b, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ae212dcc56ea9dcE.exit.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @"_ZN81_$LT$grenad..sorter..EntryBoundAlignedBuffer$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d70bef2f0c0d53fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18365)
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i.i, %bb.a
  %.sroa.0.0.idx12.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.i.i, %.backedge.i.i ] ; 2 uses
  %.sroa.7.011.i.i = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge.i.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx12.i.i
  %.sroa.0.0.add.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.011.i.i, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr.i.i, align 8, !alias.scope !18368, !noundef !27 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.011.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18369)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i", %bb.c
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1  ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 24
  %.val9.i.i.i.i = load i8, ptr %i.g, align 1, !range !1558, !alias.scope !18369, !noalias !18368, !noundef !27
  %i.h = trunc nuw i8 %.val9.i.i.i.i to i1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %.val8.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !18369, !noalias !18368, !nonnull !27, !noundef !27 ; 2 uses
  %i.j = icmp eq ptr %.val8.i.i.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.j, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i.i.i, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !noalias !18372, !nonnull !27, !noundef !27 ; 2 uses
  %i.m = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !18372, !nonnull !27, !noundef !27
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 16, !noalias !18372, !noundef !27
  %i.q = load i64, ptr %i.n, align 8, !range !4612, !noalias !18372, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.p, i64 noundef %i.q) #65, !noalias !18372
  %i.r = icmp eq ptr %i.l, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.r, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  %i.s = icmp eq i64 %i.f, %i.d
  br i1 %i.s, label %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i": ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i"
  %i.t = shl nuw i64 32, %.sroa.7.011.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.t, i64 noundef 8) #65, !noalias !18368
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i", %bb.b
  %i.u = icmp eq i64 %.sroa.0.0.add.i.i, 504
  br i1 %i.u, label %"_ZN4core3ptr177drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17heff65e8ac1e4cc35E.exit", label %bb.b

"_ZN4core3ptr177drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17heff65e8ac1e4cc35E.exit": ; preds = %.backedge.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$serde_json..value..Value$GT$$C$milli..vector..json_template..Error$GT$$GT$17hea0dee8e25848b29E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18373, !noundef !27
  switch i64 %i.a, label %bb.b [
    i64 -9223372036854775802, label %bb.c
    i64 -9223372036854775803, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hb4412187bd9c2c89E.exit"
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17he0b5d12a3756c8d8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %0)
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hb4412187bd9c2c89E.exit"

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18374)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !18374, !nonnull !27, !noundef !27
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17hddf6601f23b4d3e0E"(ptr nonnull %.val.i)
          to label %bb.e unwind label %bb.d, !noalias !18374

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..json_template..PathComponent$GT$$GT$17h2b65e40eb1a02408E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b) #67
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18377)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !18380, !nonnull !27, !noundef !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !18380, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18381)
  %i.g = icmp eq i64 %.val1.i.i, 0
  br i1 %i.g, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebcb8d44870cfbb1E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %"_ZN4core3ptr64drop_in_place$LT$milli..vector..json_template..PathComponent$GT$17hb126a73154f42ca3E.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.i, %"_ZN4core3ptr64drop_in_place$LT$milli..vector..json_template..PathComponent$GT$17hb126a73154f42ca3E.exit.i.i.i.i" ], [ 0, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.i = add nuw i64 %.sroa.0.011.i.i.i.i, 1      ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.h, align 8, !range !8078, !alias.scope !18381, !noalias !18380, !noundef !27 ; 2 uses
  %switch.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i, 0
  br i1 %switch.i.i.i.i, label %bb.f, label %"_ZN4core3ptr64drop_in_place$LT$milli..vector..json_template..PathComponent$GT$17hb126a73154f42ca3E.exit.i.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !18381, !noalias !18380, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !18384
  br label %"_ZN4core3ptr64drop_in_place$LT$milli..vector..json_template..PathComponent$GT$17hb126a73154f42ca3E.exit.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$milli..vector..json_template..PathComponent$GT$17hb126a73154f42ca3E.exit.i.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.k = icmp eq i64 %i.i, %.val1.i.i
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebcb8d44870cfbb1E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebcb8d44870cfbb1E.exit.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$milli..vector..json_template..PathComponent$GT$17hb126a73154f42ca3E.exit.i.i.i.i", %bb.e
  %.val2.i.i = load i64, ptr %i.b, align 8, !range !28, !alias.scope !18380, !noundef !27 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hb4412187bd9c2c89E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebcb8d44870cfbb1E.exit.i.i"
  %i.m = mul nuw i64 %.val2.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18380
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hb4412187bd9c2c89E.exit"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hb4412187bd9c2c89E.exit": ; preds = %bb.a, %bb.g, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebcb8d44870cfbb1E.exit.i.i", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr1400drop_in_place$LT$rayon..iter..map_with..MapWithFolder$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$milli..update..new..document..DocumentContext$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$C$$LT$rayon..slice..chunks..Chunks$LT$$LP$$RF$str$C$milli..update..new..indexer..document_operation..PayloadOperations$RP$$GT$$u20$as$u20$milli..update..new..parallel_iterator_ext..ParallelIteratorExt$GT$..try_arc_for_each_try_init$LT$milli..update..new..indexer..document_changes..extract$LT$milli..update..new..extract..geo..GeoExtractor$C$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..update..new..indexer..document_changes..extract$LT$milli..update..new..extract..geo..GeoExtractor$C$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..update..new..document..DocumentContext$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$C$milli..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5461023ff0d97fc4E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18389)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18392)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !18395, !noundef !27 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %"_ZN4core3ptr296drop_in_place$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4ed50bf26d43c3f8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !18396
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr296drop_in_place$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4ed50bf26d43c3f8E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c17154f1e6296d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr296drop_in_place$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4ed50bf26d43c3f8E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr225drop_in_place$LT$core..result..Result$LT$milli..update..new..document..DocumentContext$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$17hab8714a2a323fe8cE"(ptr noalias noundef align 8 dereferenceable(96) %0) #67
          to label %bb.f unwind label %bb.e

"_ZN4core3ptr296drop_in_place$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4ed50bf26d43c3f8E.exit": ; preds = %bb.b, %bb.a, %bb.c
  tail call fastcc void @"_ZN4core3ptr225drop_in_place$LT$core..result..Result$LT$milli..update..new..document..DocumentContext$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$17hab8714a2a323fe8cE"(ptr noalias noundef align 8 dereferenceable(96) %0)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr140drop_in_place$LT$alloc..sync..ArcInner$LT$flume..Hook$LT$milli..update..new..channel..ReceiverAction$C$flume..signal..SyncSignal$GT$$GT$$GT$17h863d180f33b42bcaE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18406)
  %i.b = load i64, ptr %i.a, align 8, !range !450, !alias.scope !18409, !noundef !27
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr159drop_in_place$LT$core..option..Option$LT$std..sync..poison..mutex..Mutex$LT$core..option..Option$LT$milli..update..new..channel..ReceiverAction$GT$$GT$$GT$$GT$17h743c97c7abf5da5eE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18410)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18416)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i16, ptr %i.e, align 8, !range !18419, !alias.scope !18420, !noundef !27 ; 4 uses
  %i.g = icmp eq i16 %i.f, 22
  br i1 %i.g, label %"_ZN4core3ptr159drop_in_place$LT$core..option..Option$LT$std..sync..poison..mutex..Mutex$LT$core..option..Option$LT$milli..update..new..channel..ReceiverAction$GT$$GT$$GT$$GT$17h743c97c7abf5da5eE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18421)
  %i.h = icmp ne i16 %i.f, 18
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i16 %i.f, -17
  %i.j = icmp samesign ugt i16 %i.f, 16
  %narrow.i.i.i.i.i.i = select i1 %i.j, i16 %i.i, i16 1
  switch i16 %narrow.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i [
    i16 0, label %"_ZN4core3ptr159drop_in_place$LT$core..option..Option$LT$std..sync..poison..mutex..Mutex$LT$core..option..Option$LT$milli..update..new..channel..ReceiverAction$GT$$GT$$GT$$GT$17h743c97c7abf5da5eE.exit.i"
    i16 1, label %bb.d
  ]

.sink.split.i.i.i.i.i.i:                          ; preds = %"_ZN4core3ptr60drop_in_place$LT$milli..update..new..channel..LargeEntry$GT$17hc38fe5eae9a8072bE.exit.i.i.i.i.i.i", %bb.c
  %.sink.i.i.i.i.i.i = phi ptr [ %i.m, %"_ZN4core3ptr60drop_in_place$LT$milli..update..new..channel..LargeEntry$GT$17hc38fe5eae9a8072bE.exit.i.i.i.i.i.i" ], [ %i.d, %bb.c ]
  invoke void @"_ZN64_$LT$memmap2..os..MmapInner$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9d0bf1cbb9072347E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sink.i.i.i.i.i.i)
          to label %"_ZN4core3ptr159drop_in_place$LT$core..option..Option$LT$std..sync..poison..mutex..Mutex$LT$core..option..Option$LT$milli..update..new..channel..ReceiverAction$GT$$GT$$GT$$GT$17h743c97c7abf5da5eE.exit.i" unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18424)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !18427, !noundef !27 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr60drop_in_place$LT$milli..update..new..channel..LargeEntry$GT$17hc38fe5eae9a8072bE.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.d
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !18427, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i, i64 noundef 1) #65, !noalias !18427
  br label %"_ZN4core3ptr60drop_in_place$LT$milli..update..new..channel..LargeEntry$GT$17hc38fe5eae9a8072bE.exit.i.i.i.i.i.i"

"_ZN4core3ptr60drop_in_place$LT$milli..update..new..channel..LargeEntry$GT$17hc38fe5eae9a8072bE.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.d
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr156drop_in_place$LT$core..result..Result$LT$milli..update..new..document..DocumentContext$LT$$LP$$RP$$GT$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$17h11de38345bf286a4E":bb.a
  store ptr null, ptr %i.b, align 8, !alias.scope !18702
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654b7e09ad423b46E.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mdb_txn_abort(ptr noundef nonnull %i.c) #65, !noalias !18702
  br label %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654b7e09ad423b46E.exit.i.i"

"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654b7e09ad423b46E.exit.i.i": ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18706)
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h7cf2d8482954a9d2E.exit.i", label %bb.d

bb.d:                                             ; preds = %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654b7e09ad423b46E.exit.i.i"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18712)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18715, !nonnull !27, !noundef !27
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !18715
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h7cf2d8482954a9d2E.exit.i"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdfb7a3544ec9f782E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h7cf2d8482954a9d2E.exit.i" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !18693, !nonnull !27, !noundef !27
  tail call fastcc void @"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17hc17461ad093b9650E"(ptr nonnull %.val1.i) #67
  resume { ptr, i32 } %i.i

"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h7cf2d8482954a9d2E.exit.i": ; preds = %bb.e, %bb.d, %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654b7e09ad423b46E.exit.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !18693, !nonnull !27, !noundef !27 ; 2 uses
  %i.l = icmp eq ptr %.val.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.l, label %"_ZN4core3ptr82drop_in_place$LT$milli..update..new..document..DocumentContext$LT$$LP$$RP$$GT$$GT$17h97797ea3912ccf9cE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h7cf2d8482954a9d2E.exit.i", %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.val.i, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h7cf2d8482954a9d2E.exit.i" ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.o = load ptr, ptr %.sroa.0.01.i.i.i, align 16, !nonnull !27, !noundef !27
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 16, !noundef !27
  %i.s = load i64, ptr %i.p, align 8, !range !4612, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.r, i64 noundef %i.s) #65
  %i.t = icmp eq ptr %i.n, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.t, label %"_ZN4core3ptr82drop_in_place$LT$milli..update..new..document..DocumentContext$LT$$LP$$RP$$GT$$GT$17h97797ea3912ccf9cE.exit", label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18719)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !18722, !nonnull !27, !noundef !27
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !18722
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %"_ZN4core3ptr82drop_in_place$LT$milli..update..new..document..DocumentContext$LT$$LP$$RP$$GT$$GT$17h97797ea3912ccf9cE.exit"

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c17154f1e6296d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %"_ZN4core3ptr82drop_in_place$LT$milli..update..new..document..DocumentContext$LT$$LP$$RP$$GT$$GT$17h97797ea3912ccf9cE.exit"

"_ZN4core3ptr82drop_in_place$LT$milli..update..new..document..DocumentContext$LT$$LP$$RP$$GT$$GT$17h97797ea3912ccf9cE.exit": ; preds = %.lr.ph.i.i.i, %bb.h, %bb.g, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h7cf2d8482954a9d2E.exit.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr156drop_in_place$LT$hashbrown..map..HashMap$LT$u8$C$$LP$$RF$str$C$$RF$milli..vector..embedder..Embedder$C$milli..vector..store..VectorStore$C$usize$RP$$GT$$GT$17hcc48b17b3f76c091E"(ptr %.0.val, i64 %.8.val) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %"_ZN4core3ptr165drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$u8$C$$LP$$RF$str$C$$RF$milli..vector..embedder..Embedder$C$milli..vector..store..VectorStore$C$usize$RP$$RP$$GT$$GT$17h0ff49ef6037a0e4cE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.8.val, 6                       ; 2 uses
  %i.c = add i64 %i.b, 64                         ; 2 uses
  %i.d = add i64 %.8.val, 17
  %i.e = add i64 %i.d, %i.c                       ; 4 uses
  %i.f = icmp uge i64 %i.e, %i.c
  %i.g = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %"_ZN4core3ptr165drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$u8$C$$LP$$RF$str$C$$RF$milli..vector..embedder..Embedder$C$milli..vector..store..VectorStore$C$usize$RP$$RP$$GT$$GT$17h0ff49ef6037a0e4cE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i
  %i.i = sub nuw nsw i64 -64, %i.b
  %i.j = getelementptr inbounds i8, ptr %.0.val, i64 %i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 16) #65
  br label %"_ZN4core3ptr165drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$u8$C$$LP$$RF$str$C$$RF$milli..vector..embedder..Embedder$C$milli..vector..store..VectorStore$C$usize$RP$$RP$$GT$$GT$17h0ff49ef6037a0e4cE.exit"

"_ZN4core3ptr165drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$u8$C$$LP$$RF$str$C$$RF$milli..vector..embedder..Embedder$C$milli..vector..store..VectorStore$C$usize$RP$$RP$$GT$$GT$17h0ff49ef6037a0e4cE.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$17ha393a8d364539aabE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18726)
  %.val4.i.i = load i64, ptr %i.a, align 8, !alias.scope !18729 ; 2 uses
  %i.b = icmp eq i64 %.val4.i.i, 0
  br i1 %i.b, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i.i = load ptr, ptr %i.c, align 8, !alias.scope !18729, !nonnull !27, !noundef !27
  %i.d = shl nuw i64 %.val4.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18729
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i": ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !18729 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr162drop_in_place$LT$core..cell..UnsafeCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$17hb1eed5e1e047e0fdE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !18729, !nonnull !27, !noundef !27
  %i.h = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18729
  br label %"_ZN4core3ptr162drop_in_place$LT$core..cell..UnsafeCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$17hb1eed5e1e047e0fdE.exit"

"_ZN4core3ptr162drop_in_place$LT$core..cell..UnsafeCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$17hb1eed5e1e047e0fdE.exit": ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr1606drop_in_place$LT$rayon..iter..map_with..MapWithFolder$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$milli..update..new..document..DocumentContext$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$C$$LT$rayon..slice..chunks..Chunks$LT$$LP$$RF$str$C$milli..update..new..indexer..document_operation..PayloadOperations$RP$$GT$$u20$as$u20$milli..update..new..parallel_iterator_ext..ParallelIteratorExt$GT$..try_arc_for_each_try_init$LT$milli..update..new..indexer..document_changes..extract$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsExtractorData$C$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..update..new..indexer..document_changes..extract$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsExtractorData$C$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..update..new..document..DocumentContext$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$C$milli..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd0b398acf166721aE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18730)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18733)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !18736, !noundef !27 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %"_ZN4core3ptr296drop_in_place$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4ed50bf26d43c3f8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !18737
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr296drop_in_place$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4ed50bf26d43c3f8E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c17154f1e6296d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr296drop_in_place$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4ed50bf26d43c3f8E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr289drop_in_place$LT$core..result..Result$LT$milli..update..new..document..DocumentContext$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$17hf31ab928c6fce310E"(ptr noalias noundef align 8 dereferenceable(96) %0) #67
          to label %bb.f unwind label %bb.e

"_ZN4core3ptr296drop_in_place$LT$rayon..iter..try_reduce..TryReduceFolder$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4ed50bf26d43c3f8E.exit": ; preds = %bb.b, %bb.a, %bb.c
  tail call fastcc void @"_ZN4core3ptr289drop_in_place$LT$core..result..Result$LT$milli..update..new..document..DocumentContext$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$17hf31ab928c6fce310E"(ptr noalias noundef align 8 dereferenceable(96) %0)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr161drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$17h96ef35d68b202cdbE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18747)
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i.i, %bb.a
  %.sroa.0.0.idx33.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.i.i, %.backedge.i.i ] ; 2 uses
  %.sroa.7.032.i.i = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge.i.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx33.i.i
  %.sroa.0.0.add.i.i = add nuw nsw i64 %.sroa.0.0.idx33.i.i, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.032.i.i, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr.i.i, align 8, !alias.scope !18750, !noundef !27 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.032.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i.i.i", %bb.c
  %.sroa.0.08.i.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.08.i.i.i.i ; 5 uses
  %i.f = add nuw nsw i64 %.sroa.0.08.i.i.i.i, 1   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load i8, ptr %i.g, align 1, !range !1558, !alias.scope !18751, !noalias !18750, !noundef !27
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18776)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !18779, !noalias !18750 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18780)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !18783, !noalias !18750, !noundef !27 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18784)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !18787, !noalias !18750, !noundef !27 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !18783, !noalias !18750 ; 4 uses
  br i1 %i.q, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h3721578535e49c5fE.exit.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val24.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.pre.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !18788
  %i.r = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.t = bitcast <16 x i1> %i.r to i16
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit.i.i", %bb.f
  %.sroa.14.010.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %bb.f ], [ %i.af, %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit.i.i" ]
  %.sroa.10.09.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.t, %bb.f ], [ %i.ac, %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit.i.i" ] ; 2 uses
  %.sroa.6.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit.i.i" ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.sroa.04.1.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit.i.i" ] ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.10.09.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdf348d647b4b1ff0E.exit.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.u = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.08.i.i.i.i.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.v = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i, %bb.g ]
  %.val79.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 16, !noalias !18792
  %i.w = icmp sgt <16 x i8> %.val79.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -1920 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.w to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdf348d647b4b1ff0E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdf348d647b4b1ff0E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.04.1.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.08.i.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.10.09.i.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.z = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = and i16 %i.z, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = sub nsw i64 0, %i.ab
  %i.ae = getelementptr inbounds [120 x i8], ptr %.sroa.04.1.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ad ; 14 uses
  %i.af = add i64 %.sroa.14.010.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18801)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !range !28, !alias.scope !18804, !noalias !18805, !noundef !27 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..db..EmbeddingStatusDelta$RP$$GT$17h14d8e7ee2566a5ffE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdf348d647b4b1ff0E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -112
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !18804, !noalias !18805, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !18806
  br label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..db..EmbeddingStatusDelta$RP$$GT$17h14d8e7ee2566a5ffE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..db..EmbeddingStatusDelta$RP$$GT$17h14d8e7ee2566a5ffE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.h, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdf348d647b4b1ff0E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18810), !noalias !18787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18813), !noalias !18787
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 -88
  %.val.i.i.i5.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !18816, !noalias !18805, !nonnull !27, !noundef !27 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -80
  %.val1.i.i.i6.i.i = load i64, ptr %i.al, align 8, !alias.scope !18816, !noalias !18805, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18817), !noalias !18787
  %i.am = icmp eq i64 %.val1.i.i.i6.i.i, 0
  br i1 %i.am, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i12.i.i", label %.lr.ph.i.i.i.i.i7.i.i

.lr.ph.i.i.i.i.i7.i.i:                            ; preds = %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..db..EmbeddingStatusDelta$RP$$GT$17h14d8e7ee2566a5ffE.exit.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i11.i.i"
  %.sroa.0.010.i.i.i.i.i8.i.i = phi i64 [ %i.ao, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i11.i.i" ], [ 0, %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..db..EmbeddingStatusDelta$RP$$GT$17h14d8e7ee2566a5ffE.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i5.i.i, i64 %.sroa.0.010.i.i.i.i.i8.i.i ; 2 uses
  %i.ao = add nuw i64 %.sroa.0.010.i.i.i.i.i8.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i9.i.i = load i64, ptr %i.an, align 8, !range !8078, !alias.scope !18817, !noalias !18820, !noundef !27 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  %.val9.i.i.i.i.i10.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !18817, !noalias !18820 ; 4 uses
  switch i64 %.val8.i.i.i.i.i9.i.i, label %bb.i [
    i64 -9223372036854775808, label %bb.j
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i11.i.i"
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i7.i.i
  %i.aq = shl nuw i64 %.val8.i.i.i.i.i9.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i10.i.i) ], !noalias !18787
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i10.i.i, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !18821
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i11.i.i"

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i7.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i10.i.i) ], !noalias !18787
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i10.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !18821
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i11.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i11.i.i": ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i.i.i7.i.i
  %i.ar = icmp eq i64 %i.ao, %.val1.i.i.i6.i.i
  br i1 %i.ar, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i12.i.i", label %.lr.ph.i.i.i.i.i7.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i12.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i11.i.i", %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..db..EmbeddingStatusDelta$RP$$GT$17h14d8e7ee2566a5ffE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.val2.i.i.i13.i.i = load i64, ptr %i.aj, align 8, !range !28, !alias.scope !18816, !noalias !18805, !noundef !27 ; 2 uses
  %i.as = icmp eq i64 %.val2.i.i.i13.i.i, 0
  br i1 %i.as, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i14.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i12.i.i"
  %i.at = shl nuw i64 %.val2.i.i.i13.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i5.i.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18820
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i14.i.i"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i14.i.i": ; preds = %bb.k, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i12.i.i"
  %i.au = getelementptr inbounds i8, ptr %i.ae, i64 -72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18822), !noalias !18787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18825), !noalias !18787
  %i.av = getelementptr inbounds i8, ptr %i.ae, i64 -64
  %.val.i.i1.i15.i.i = load ptr, ptr %i.av, align 8, !alias.scope !18828, !noalias !18805, !nonnull !27, !noundef !27 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ae, i64 -56
  %.val1.i.i2.i16.i.i = load i64, ptr %i.aw, align 8, !alias.scope !18828, !noalias !18805, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18829), !noalias !18787
  %i.ax = icmp eq i64 %.val1.i.i2.i16.i.i, 0
  br i1 %i.ax, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i22.i.i", label %.lr.ph.i.i.i.i3.i17.i.i

.lr.ph.i.i.i.i3.i17.i.i:                          ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i14.i.i", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i21.i.i"
  %.sroa.0.010.i.i.i.i4.i18.i.i = phi i64 [ %i.az, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i21.i.i" ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i14.i.i" ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i1.i15.i.i, i64 %.sroa.0.010.i.i.i.i4.i18.i.i ; 2 uses
  %i.az = add nuw i64 %.sroa.0.010.i.i.i.i4.i18.i.i, 1 ; 2 uses
  %.val8.i.i.i.i5.i19.i.i = load i64, ptr %i.ay, align 8, !range !8078, !alias.scope !18829, !noalias !18832, !noundef !27 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  %.val9.i.i.i.i6.i20.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !18829, !noalias !18832 ; 4 uses
  switch i64 %.val8.i.i.i.i5.i19.i.i, label %bb.l [
    i64 -9223372036854775808, label %bb.m
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i21.i.i"
  ]

bb.l:                                             ; preds = %.lr.ph.i.i.i.i3.i17.i.i
  %i.bb = shl nuw i64 %.val8.i.i.i.i5.i19.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i6.i20.i.i) ], !noalias !18787
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i6.i20.i.i, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !18833
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i21.i.i"

bb.m:                                             ; preds = %.lr.ph.i.i.i.i3.i17.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i6.i20.i.i) ], !noalias !18787
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i6.i20.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !18833
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i21.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i21.i.i": ; preds = %bb.m, %bb.l, %.lr.ph.i.i.i.i3.i17.i.i
  %i.bc = icmp eq i64 %i.az, %.val1.i.i2.i16.i.i
  br i1 %i.bc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i22.i.i", label %.lr.ph.i.i.i.i3.i17.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i22.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i21.i.i", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i14.i.i"
  %.val2.i.i9.i23.i.i = load i64, ptr %i.au, align 8, !range !28, !alias.scope !18828, !noalias !18805, !noundef !27 ; 2 uses
  %i.bd = icmp eq i64 %.val2.i.i9.i23.i.i, 0
  br i1 %i.bd, label %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit24.i.i", label %bb.n

bb.n:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i22.i.i"
  %i.be = shl nuw i64 %.val2.i.i9.i23.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i1.i15.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18832
  br label %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit24.i.i"

"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit24.i.i": ; preds = %bb.n, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i22.i.i"
  %i.bf = getelementptr inbounds i8, ptr %i.ae, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18837), !noalias !18787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18840), !noalias !18787
  %i.bg = getelementptr inbounds i8, ptr %i.ae, i64 -40
  %.val.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !18843, !noalias !18805, !nonnull !27, !noundef !27 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.ae, i64 -32
  %.val1.i.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !18843, !noalias !18805, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18844), !noalias !18787
  %i.bi = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.bi, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit24.i.i", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i = phi i64 [ %i.bk, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit24.i.i" ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i ; 2 uses
  %i.bk = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !range !8078, !alias.scope !18844, !noalias !18847, !noundef !27 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !18844, !noalias !18847 ; 4 uses
  switch i64 %.val8.i.i.i.i.i.i.i, label %bb.o [
    i64 -9223372036854775808, label %bb.p
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i"
  ]

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bm = shl nuw i64 %.val8.i.i.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i) ], !noalias !18787
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !18848
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i) ], !noalias !18787
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !18848
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o, %.lr.ph.i.i.i.i.i.i.i
  %i.bn = icmp eq i64 %i.bk, %.val1.i.i.i.i.i
  br i1 %i.bn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit24.i.i"
  %.val2.i.i.i.i.i = load i64, ptr %i.bf, align 8, !range !28, !alias.scope !18843, !noalias !18805, !noundef !27 ; 2 uses
  %i.bo = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.bo, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i.i.i", label %bb.q

bb.q:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i"
  %i.bp = shl nuw i64 %.val2.i.i.i.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18847
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i.i.i": ; preds = %bb.q, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i"
  %i.bq = getelementptr inbounds i8, ptr %i.ae, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18849), !noalias !18787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18852), !noalias !18787
  %i.br = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %.val.i.i1.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !18855, !noalias !18805, !nonnull !27, !noundef !27 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %.val1.i.i2.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !18855, !noalias !18805, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18856), !noalias !18787
  %i.bt = icmp eq i64 %.val1.i.i2.i.i.i, 0
  br i1 %i.bt, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i.i.i", label %.lr.ph.i.i.i.i3.i.i.i

.lr.ph.i.i.i.i3.i.i.i:                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i.i.i", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i.i.i"
  %.sroa.0.010.i.i.i.i4.i.i.i = phi i64 [ %i.bv, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i.i.i" ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i.i.i" ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i1.i.i.i, i64 %.sroa.0.010.i.i.i.i4.i.i.i ; 2 uses
  %i.bv = add nuw i64 %.sroa.0.010.i.i.i.i4.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i5.i.i.i = load i64, ptr %i.bu, align 8, !range !8078, !alias.scope !18856, !noalias !18859, !noundef !27 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  %.val9.i.i.i.i6.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !18856, !noalias !18859 ; 4 uses
  switch i64 %.val8.i.i.i.i5.i.i.i, label %bb.r [
    i64 -9223372036854775808, label %bb.s
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i.i.i"
  ]

bb.r:                                             ; preds = %.lr.ph.i.i.i.i3.i.i.i
  %i.bx = shl nuw i64 %.val8.i.i.i.i5.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i6.i.i.i) ], !noalias !18787
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i6.i.i.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !18860
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i.i.i"

bb.s:                                             ; preds = %.lr.ph.i.i.i.i3.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i6.i.i.i) ], !noalias !18787
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i6.i.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !18860
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i.i.i": ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i.i3.i.i.i
  %i.by = icmp eq i64 %i.bv, %.val1.i.i2.i.i.i
  br i1 %i.by, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i.i.i", label %.lr.ph.i.i.i.i3.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i7.i.i.i", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit.i.i.i"
  %.val2.i.i9.i.i.i = load i64, ptr %i.bq, align 8, !range !28, !alias.scope !18855, !noalias !18805, !noundef !27 ; 2 uses
  %i.bz = icmp eq i64 %.val2.i.i9.i.i.i, 0
  br i1 %i.bz, label %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit.i.i", label %bb.t

bb.t:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i.i.i"
  %i.ca = shl nuw i64 %.val2.i.i9.i.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i1.i.i.i, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18859
  br label %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit.i.i"

"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit.i.i": ; preds = %bb.t, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i8.i.i.i"
  %i.cb = icmp eq i64 %i.af, 0
  br i1 %i.cb, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h3721578535e49c5fE.exit.i.i.i.i.i.i.i.i.i.i, label %bb.g

_ZN9hashbrown3raw13RawTableInner13drop_elements17h3721578535e49c5fE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17hc57eaa8f1d6ea441E.exit.i.i", %bb.e
  %i.cc = mul i64 %i.l, 120                       ; 2 uses
  %i.cd = add i64 %i.cc, 120
  %i.ce = icmp ult i64 %i.cd, -15
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = and i64 %i.cc, -16                      ; 2 uses
  %i.cg = add i64 %i.cf, 128                      ; 2 uses
  %i.ch = add i64 %i.l, 17
  %i.ci = add i64 %i.ch, %i.cg                    ; 3 uses
  %i.cj = icmp uge i64 %i.ci, %i.cg
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp ult i64 %i.ci, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = sub i64 -128, %i.cf
  %i.cm = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i.i.i.i.i.i, i64 %i.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  %i.cn = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cn, align 8, !noalias !18861, !nonnull !27, !noundef !27
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !18861, !nonnull !27, !noundef !27 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cm
  br i1 %i.cq, label %bb.u, label %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i.i.i"

bb.u:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h3721578535e49c5fE.exit.i.i.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ci
  store ptr %i.cr, ptr %i.co, align 8, !noalias !18861
  br label %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i.i.i"

"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i.i.i": ; preds = %bb.u, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h3721578535e49c5fE.exit.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  %i.cs = icmp eq i64 %i.f, %i.d
  br i1 %i.cs, label %"_ZN4core3ptr229drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17hf70ae3c33f4163f7E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr229drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17hf70ae3c33f4163f7E.exit.i.i": ; preds = %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i.i.i"
  %i.ct = shl nuw i64 64, %.sroa.7.032.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.ct, i64 noundef 8) #65, !noalias !18750
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %"_ZN4core3ptr229drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17hf70ae3c33f4163f7E.exit.i.i", %bb.b
  %i.cu = icmp eq i64 %.sroa.0.0.add.i.i, 504
  br i1 %i.cu, label %"_ZN4core3ptr200drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h56e3f6d784e2c52fE.exit", label %bb.b

"_ZN4core3ptr200drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h56e3f6d784e2c52fE.exit": ; preds = %.backedge.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17ha5372ffdd1287668E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18865)
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i.i, %bb.a
  %.sroa.0.0.idx12.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.i.i, %.backedge.i.i ] ; 2 uses
  %.sroa.7.011.i.i = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge.i.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx12.i.i
  %.sroa.0.0.add.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.011.i.i, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr.i.i, align 8, !alias.scope !18868, !noundef !27 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.011.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18869)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i", %bb.c
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1  ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 24
  %.val9.i.i.i.i = load i8, ptr %i.g, align 1, !range !1558, !alias.scope !18869, !noalias !18868, !noundef !27
  %i.h = trunc nuw i8 %.val9.i.i.i.i to i1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %.val8.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !18869, !noalias !18868, !nonnull !27, !noundef !27 ; 2 uses
  %i.j = icmp eq ptr %.val8.i.i.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.j, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i.i.i, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !noalias !18872, !nonnull !27, !noundef !27 ; 2 uses
  %i.m = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !18872, !nonnull !27, !noundef !27
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 16, !noalias !18872, !noundef !27
  %i.q = load i64, ptr %i.n, align 8, !range !4612, !noalias !18872, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.p, i64 noundef %i.q) #65, !noalias !18872
  %i.r = icmp eq ptr %i.l, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.r, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  %i.s = icmp eq i64 %i.f, %i.d
  br i1 %i.s, label %"_ZN4core3ptr230drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h89c782cf90e012b4E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr230drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h89c782cf90e012b4E.exit.i.i": ; preds = %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i"
  %i.t = shl nuw i64 32, %.sroa.7.011.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.t, i64 noundef 8) #65, !noalias !18868
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %"_ZN4core3ptr230drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h89c782cf90e012b4E.exit.i.i", %bb.b
  %i.u = icmp eq i64 %.sroa.0.0.add.i.i, 504
  br i1 %i.u, label %"_ZN4core3ptr201drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h667e5785641de65bE.exit", label %bb.b

"_ZN4core3ptr201drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h667e5785641de65bE.exit": ; preds = %.backedge.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr163drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$$GT$17hba93d137c96df97cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18879)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !18882, !noundef !27 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %"_ZN4core3ptr157drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$$GT$17h98601cd04d736530E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18886)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !18889, !nonnull !27, !noundef !27 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !18889, !nonnull !27, !noundef !27 ; 2 uses
  %i.f = ptrtoint ptr %.val2.i.i.i.i.i to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18890)
  %i.j = icmp eq ptr %.val2.i.i.i.i.i, %i.d
  br i1 %i.j, label %"_ZN4core3ptr88drop_in_place$LT$$u5b$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$u5d$$GT$17h7824e3f28279db3fE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.l, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.l = add nuw i64 %.sroa.0.011.i.i.i.i.i.i, 1  ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !18890, !noalias !18889 ; 2 uses
  %i.m = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.m, label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !18890, !noalias !18889, !nonnull !27, !noundef !27
  %i.o = mul nuw i64 %.val8.i.i.i.i.i.i, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18893
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i.i"

"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.p = icmp eq i64 %i.l, %i.i
  br i1 %i.p, label %"_ZN4core3ptr88drop_in_place$LT$$u5b$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$u5d$$GT$17h7824e3f28279db3fE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN4core3ptr88drop_in_place$LT$$u5b$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$u5d$$GT$17h7824e3f28279db3fE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i.i", %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !18889, !noundef !27 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN4core3ptr157drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$$GT$17h98601cd04d736530E.exit.i", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr88drop_in_place$LT$$u5b$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$u5d$$GT$17h7824e3f28279db3fE.exit.i.i.i.i.i"
  %i.t = mul nuw i64 %i.r, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18889
  br label %"_ZN4core3ptr157drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$$GT$17h98601cd04d736530E.exit.i"

"_ZN4core3ptr157drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$$GT$17h98601cd04d736530E.exit.i": ; preds = %bb.d, %"_ZN4core3ptr88drop_in_place$LT$$u5b$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$u5d$$GT$17h7824e3f28279db3fE.exit.i.i.i.i.i", %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5.i = load ptr, ptr %i.u, align 8, !alias.scope !18873, !noundef !27 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6.i = load i64, ptr %i.v, align 8, !alias.scope !18873 ; 2 uses
  %i.w = icmp eq ptr %.val5.i, null
  %i.x = icmp eq i64 %.val6.i, 0
  %or.cond.i9.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i9.i, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit10.i", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr157drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$$GT$17h98601cd04d736530E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.y = mul nuw i64 %.val6.i, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18894
  br label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit10.i"

"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit10.i": ; preds = %bb.e, %"_ZN4core3ptr157drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$$GT$17h98601cd04d736530E.exit.i"
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !18873, !noundef !27 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2.i = load i64, ptr %i.aa, align 8, !alias.scope !18873 ; 2 uses
  %i.ab = icmp eq ptr %.val.i, null
  %i.ac = icmp eq i64 %.val2.i, 0
  %or.cond.i13.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i13.i, label %"_ZN4core3ptr245drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17hb146e339e5711019E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit10.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ad = mul nuw i64 %.val2.i, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18897
  br label %"_ZN4core3ptr245drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17hb146e339e5711019E.exit"

"_ZN4core3ptr245drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17hb146e339e5711019E.exit": ; preds = %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit10.i", %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr165drop_in_place$LT$milli..update..new..indexer..index$LT$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h361de2c8ab111293E"(ptr noalias noundef nonnull align 8 dereferenceable(1264) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$milli..update..new..channel..ExtractorBbqueueSender$GT$17h22eb0afccf98e0f7E"(ptr noalias noundef align 8 dereferenceable(544) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752
  tail call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E"(ptr noalias noundef align 8 dereferenceable(512) %i.c) #67
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E"(ptr noalias noundef align 8 dereferenceable(24) %0) #67
          to label %bb.g unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18906)
  br label %bb.d

bb.d:                                             ; preds = %.backedge.i.i.i, %bb.c
  %.sroa.0.0.idx12.i.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.0.0.add.i.i.i, %.backedge.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i = phi i64 [ 0, %bb.c ], [ %i.e, %.backedge.i.i.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.idx12.i.i.i
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i, 8 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.7.011.i.i.i, 1
  %i.f = load ptr, ptr %.sroa.0.0.ptr.i.i.i, align 8, !alias.scope !18909, !noundef !27 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.backedge.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = shl nuw i64 1, %.sroa.7.011.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18910)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i", %bb.e
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.j, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i" ], [ 0, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 24
  %.val9.i.i.i.i.i = load i8, ptr %i.k, align 1, !range !1558, !alias.scope !18910, !noalias !18909, !noundef !27
  %i.l = trunc nuw i8 %.val9.i.i.i.i.i to i1
  br i1 %i.l, label %bb.f, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = getelementptr i8, ptr %i.i, i64 16
  %.val8.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !18910, !noalias !18909, !nonnull !27, !noundef !27 ; 2 uses
  %i.n = icmp eq ptr %.val8.i.i.i.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.n, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i.i.i.i, %bb.f ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !18913, !nonnull !27, !noundef !27 ; 2 uses
  %i.q = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !18913, !nonnull !27, !noundef !27
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 16, !noalias !18913, !noundef !27
  %i.u = load i64, ptr %i.r, align 8, !range !4612, !noalias !18913, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.t, i64 noundef %i.u) #65, !noalias !18913
  %i.v = icmp eq ptr %i.p, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.v, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i.i
  %i.w = icmp eq i64 %i.j, %i.h
  br i1 %i.w, label %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i": ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i"
  %i.x = shl nuw i64 32, %.sroa.7.011.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.x, i64 noundef 8) #65, !noalias !18909
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i", %bb.d
  %i.y = icmp eq i64 %.sroa.0.0.add.i.i.i, 504
  br i1 %i.y, label %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit", label %bb.d

"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit": ; preds = %.backedge.i.i.i
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E"(ptr noalias noundef align 8 dereferenceable(24) %0)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.b
  %.pn2 = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.b, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hde2e1750286b8783E"(ptr noalias noundef align 8 dereferenceable(80) %i.z) #67
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit"
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hde2e1750286b8783E"(ptr noalias noundef align 8 dereferenceable(80) %i.ab)
  ret void

bb.j:                                             ; preds = %bb.g, %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

bb.k:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr165drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$flume..Chan$LT$milli..update..new..channel..ReceiverAction$GT$$GT$$GT$$GT$17h6ba22af23c613eebE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !241, !noundef !27 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !1558, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.c, !prof !158

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %"_ZN4core3ptr127drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$flume..Chan$LT$milli..update..new..channel..ReceiverAction$GT$$GT$$GT$17h3d74a8f36bc64995E.exit", !prof !29

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.val)
  br label %"_ZN4core3ptr127drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$flume..Chan$LT$milli..update..new..channel..ReceiverAction$GT$$GT$$GT$17h3d74a8f36bc64995E.exit"

"_ZN4core3ptr127drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$flume..Chan$LT$milli..update..new..channel..ReceiverAction$GT$$GT$$GT$17h3d74a8f36bc64995E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr167drop_in_place$LT$core..cell..UnsafeCell$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$$GT$17h6fc53f4d7111cdb2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18914)
  %i.a = load i64, ptr %0, align 8, !range !322, !alias.scope !18914, !noundef !27
  switch i64 %i.a, label %bb.b [
    i64 0, label %"_ZN4core3ptr137drop_in_place$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4903fdbfd05d9838E.exit"
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18917)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !18920, !nonnull !27, !align !241, !noundef !27 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !27, !noalias !18920 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !18920, !nonnull !27, !noundef !27 ; 2 uses
  invoke void %i.e(ptr noundef nonnull %i.f)
          to label %bb.d unwind label %bb.e, !noalias !18920

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !28, !invariant.load !27, !noalias !18920 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !4400, !invariant.load !27, !noalias !18920 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr137drop_in_place$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4903fdbfd05d9838E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.d
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !18920, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #65, !noalias !18920
  br label %"_ZN4core3ptr137drop_in_place$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4903fdbfd05d9838E.exit"

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !28, !invariant.load !27, !noalias !18920 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !4400, !invariant.load !27, !noalias !18920 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c9a6137b0d69fb7E.exit5.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #65, !noalias !18920
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c9a6137b0d69fb7E.exit5.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c9a6137b0d69fb7E.exit5.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.e
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18921)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !18924, !noundef !27 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %"_ZN4core3ptr137drop_in_place$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4903fdbfd05d9838E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !18925
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %"_ZN4core3ptr137drop_in_place$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4903fdbfd05d9838E.exit"

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c17154f1e6296d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %"_ZN4core3ptr137drop_in_place$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4903fdbfd05d9838E.exit"

"_ZN4core3ptr137drop_in_place$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17h4903fdbfd05d9838E.exit": ; preds = %bb.a, %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr167drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$17h2814927e1f6ea1ccE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18945)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !18948 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18949)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18952, !noundef !27 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN4core3ptr108drop_in_place$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$17hcc5a622b9eb8db08E.exit", label %bb.b

end_hunk_3
begin_hunk_4_@"_ZN4core3ptr189drop_in_place$LT$rstar..algorithm..rstar..InsertionResult$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hffd3d9588bfed979E"
define internal fastcc void @"_ZN4core3ptr189drop_in_place$LT$rstar..algorithm..rstar..InsertionResult$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hffd3d9588bfed979E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8060, !noundef !27 ; 6 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 -9223372036854775808)
  %i.c = and i64 %i.b, 9223372036854775807
  switch i64 %i.c, label %"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit.sink.split": ; preds = %bb.g, %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit.i"
  %.sink1 = phi i64 [ 8, %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit.i" ], [ 16, %bb.g ]
  %.val.i.sink = phi i64 [ %i.a, %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit.i" ], [ %.val.i, %bb.g ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1
  %.val1.i = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27
  %i.e = mul nuw i64 %.val.i.sink, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !27
  br label %"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit"

"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit": ; preds = %"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit.sink.split", %bb.g, %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit.i", %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.f, label %"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88ca1caf4a8dcee1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %0) #70
          to label %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit.i" unwind label %bb.d, !inline_history !19074

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = icmp eq i64 %i.a, 0
  br i1 %i.h, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.d, %bb.f
  %.sink2 = phi i64 [ 16, %bb.f ], [ 8, %bb.d ]
  %.val2.i.sink = phi i64 [ %.val2.i, %bb.f ], [ %i.a, %bb.d ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.g, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2
  %.val3.i = load ptr, ptr %i.i, align 8, !nonnull !27, !noundef !27
  %i.j = mul nuw i64 %.val2.i.sink, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.m, %bb.f ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit.i": ; preds = %bb.c
  %i.k = icmp eq i64 %i.a, 0
  br i1 %i.k, label %"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit", label %"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit.sink.split"

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88ca1caf4a8dcee1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.l)
          to label %bb.g unwind label %bb.f, !inline_history !19075

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.l, align 8, !range !28, !alias.scope !19076, !noundef !27 ; 2 uses
  %i.n = icmp eq i64 %.val2.i, 0
  br i1 %i.n, label %common.resume, label %common.resume.sink.split

bb.g:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %i.l, align 8, !range !28, !alias.scope !19076, !noundef !27 ; 2 uses
  %i.o = icmp eq i64 %.val.i, 0
  br i1 %i.o, label %"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit", label %"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h945f0b8ebda546daE.exit.sink.split"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr190drop_in_place$LT$rayon_core..job..JobResult$LT$$LP$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$C$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$RP$$GT$$GT$17h7813a81b9ea0859cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4639, !noundef !27 ; 4 uses
  %i.b = icmp ne i64 %i.a, 13
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -12
  %i.d = icmp samesign ugt i64 %i.a, 11
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17he061249d1736823eE.exit"
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19079)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !19079, !nonnull !27, !align !241, !noundef !27 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !27, !noalias !19079 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !alias.scope !19079, !nonnull !27, !noundef !27 ; 2 uses
  invoke void %i.i(ptr noundef nonnull %i.j)
          to label %bb.d unwind label %bb.e, !noalias !19079

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !28, !invariant.load !27, !noalias !19079 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !4400, !invariant.load !27, !noalias !19079 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17he061249d1736823eE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.d
  %.val2.i = load ptr, ptr %i.f, align 8, !alias.scope !19079, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #65, !noalias !19079
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17he061249d1736823eE.exit"

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !28, !invariant.load !27, !noalias !19079 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !4400, !invariant.load !27, !noalias !19079 ; 2 uses
  %i.v = icmp ult i64 %i.u, -9223372036854775807
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.u) #65, !noalias !19079
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %bb.i, %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.y, %bb.i ], [ %i.y, %bb.h ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17he061249d1736823eE.exit": ; preds = %bb.j, %"_ZN4core3ptr83drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$17hfff37ffe721667b4E.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.d, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19082)
  %i.x = icmp eq i64 %i.a, 11
  br i1 %i.x, label %"_ZN4core3ptr83drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$17hfff37ffe721667b4E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$cellulite..error..Error$GT$17h06f40940987d0f64E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %0)
          to label %"_ZN4core3ptr83drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$17hfff37ffe721667b4E.exit.i" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !4645, !alias.scope !19085, !noundef !27
  %i.ab = icmp eq i64 %i.aa, 11
  br i1 %i.ab, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$cellulite..error..Error$GT$17h06f40940987d0f64E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.z)
          to label %common.resume unwind label %bb.k

"_ZN4core3ptr83drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$17hfff37ffe721667b4E.exit.i": ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !4645, !alias.scope !19088, !noundef !27
  %i.ae = icmp eq i64 %i.ad, 11
  br i1 %i.ae, label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17he061249d1736823eE.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$cellulite..error..Error$GT$$GT$17hfff37ffe721667b4E.exit.i"
  tail call fastcc void @"_ZN4core3ptr44drop_in_place$LT$cellulite..error..Error$GT$17h06f40940987d0f64E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.ac)
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17he061249d1736823eE.exit"

bb.k:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !19082
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19091)
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %.sroa.0.0.idx12.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.i, %.backedge.i ] ; 2 uses
  %.sroa.7.011.i = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge.i ] ; 3 uses
  %.sroa.0.0.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx12.i
  %.sroa.0.0.add.i = add nuw nsw i64 %.sroa.0.0.idx12.i, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.011.i, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr.i, align 8, !alias.scope !19091, !noundef !27 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.011.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19094)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i", %bb.c
  %.sroa.0.07.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.07.i.i.i ; 5 uses
  %i.f = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19100)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load i8, ptr %i.g, align 1, !range !1558, !alias.scope !19103, !noalias !19091, !noundef !27
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19104)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19110)
  %.val4.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !19113, !noalias !19091 ; 2 uses
  %i.k = icmp eq i64 %.val4.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val5.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !19113, !noalias !19091, !nonnull !27, !noundef !27
  %i.m = shl nuw i64 %.val4.i.i.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19114
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !19113, !noalias !19091 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i"
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !19113, !noalias !19091, !nonnull !27, !noundef !27
  %i.q = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19114
  br label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i"

"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i": ; preds = %bb.f, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i
  %i.r = icmp eq i64 %i.f, %i.d
  br i1 %i.r, label %"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i", label %.lr.ph.i.i.i

"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i": ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i"
  %i.s = shl nuw i64 64, %.sroa.7.011.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.s, i64 noundef 8) #65, !noalias !19091
  br label %.backedge.i

.backedge.i:                                      ; preds = %"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i", %bb.b
  %i.t = icmp eq i64 %.sroa.0.0.add.i, 504
  br i1 %i.t, label %"_ZN76_$LT$thread_local..ThreadLocal$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h758b49e5b3033033E.exit", label %bb.b

"_ZN76_$LT$thread_local..ThreadLocal$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h758b49e5b3033033E.exit": ; preds = %.backedge.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr193drop_in_place$LT$core..iter..adapters..map..Map$LT$std..env..ArgsOs$C$$LT$clap_lex..RawArgs$u20$as$u20$core..convert..From$LT$std..env..ArgsOs$GT$$GT$..from..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb649d2cd0284cea6E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19124)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !19127, !nonnull !27, !noundef !27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !19127, !nonnull !27, !noundef !27 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i.i.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19128)
  %i.h = icmp eq ptr %.val2.i.i.i.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h12bc7a14853b385fE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.j, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.0.011.i.i.i.i.i, 1    ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.i, align 8, !range !28, !alias.scope !19131, !noalias !19127, !noundef !27 ; 2 uses
  %i.k = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !19128, !noalias !19127, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !19134
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.m = icmp eq i64 %i.j, %i.g
  br i1 %i.m, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h12bc7a14853b385fE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h12bc7a14853b385fE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h2ed6cb9a6e93ec1bE.exit.i.i.i.i.i", %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !19127, !noundef !27 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17h1e322c0f0265302bE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h12bc7a14853b385fE.exit.i.i.i.i"
  %i.q = load ptr, ptr %0, align 8, !alias.scope !19127, !nonnull !27, !noundef !27
  %i.r = mul nuw i64 %i.o, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19127
  br label %"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17h1e322c0f0265302bE.exit"

"_ZN4core3ptr37drop_in_place$LT$std..env..ArgsOs$GT$17h1e322c0f0265302bE.exit": ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h12bc7a14853b385fE.exit.i.i.i.i", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr193drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$core..result..Result$LT$core..convert..Infallible$C$milli..error..Error$GT$$C$milli..update..new..indexer..word_delta..WordDelta$GT$$GT$17h692245f457d44034E"(ptr noalias noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4698, !noundef !27 ; 3 uses
  %i.b = icmp eq i64 %i.a, 97
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..indexer..word_delta..WordDelta$GT$17h08c39b098a9c6a1bE"(ptr noalias noundef align 8 dereferenceable(72) %i.c)
  br label %"_ZN4core3ptr96drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$milli..error..Error$GT$$GT$17hbe82c20b23019ef1E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -95
  %i.e = icmp samesign ugt i64 %i.a, 94
  %i.f = select i1 %i.e, i64 %i.d, i64 2
  switch i64 %i.f, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN4core3ptr44drop_in_place$LT$milli..error..UserError$GT$17h084a53795b6f807bE"(ptr noalias noundef nonnull align 8 dereferenceable(320) %0)
  br label %"_ZN4core3ptr96drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$milli..error..Error$GT$$GT$17hbe82c20b23019ef1E.exit"

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$milli..error..InternalError$GT$17h575c0a4ef19d4e01E"(ptr noalias noundef align 8 dereferenceable(72) %i.g)
  br label %"_ZN4core3ptr96drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$milli..error..Error$GT$$GT$17hbe82c20b23019ef1E.exit"

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h90e9c3833ce89d63E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %"_ZN4core3ptr96drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$milli..error..Error$GT$$GT$17hbe82c20b23019ef1E.exit"

"_ZN4core3ptr96drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$milli..error..Error$GT$$GT$17hbe82c20b23019ef1E.exit": ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZN4core3ptr193drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$$RF$bumpalo..Bump$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h46938020eb80161bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #23 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19137)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !19137 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !19137, !noundef !27 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19140)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21bbf23d57b9e4d9E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !alias.scope !19143, !nonnull !27, !align !241, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !19143, !noundef !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !19143, !noundef !27 ; 4 uses
  %i.i = add i64 %.val1.i, 1
  %i.j = mul nuw i64 %i.f, %i.i                   ; 2 uses
  %i.k = add i64 %i.h, -1
  %i.l = add i64 %i.k, %i.j                       ; 2 uses
  %i.m = icmp uge i64 %i.l, %i.j
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub i64 0, %i.h
  %i.o = and i64 %i.l, %i.n                       ; 3 uses
  %i.p = add i64 %.val1.i, 17
  %i.q = add i64 %i.p, %i.o                       ; 3 uses
  %i.r = icmp uge i64 %i.q, %i.o
  %i.s = sub nuw i64 -9223372036854775808, %i.h
  %i.t = icmp ule i64 %i.q, %i.s
  tail call void @llvm.assume(i1 %i.r)
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.v = sub nsw i64 0, %i.o
  %i.w = getelementptr inbounds i8, ptr %.val.i, i64 %i.v
  %.val.i.i = load ptr, ptr %i.d, align 8, !noalias !19143, !nonnull !27, !align !241, !noundef !27
  %i.x = getelementptr i8, ptr %.val.i.i, i64 16
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !noalias !19143, !nonnull !27, !noundef !27
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !19143, !nonnull !27, !noundef !27 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %bb.b, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21bbf23d57b9e4d9E.exit"

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.q
  store ptr %i.ab, ptr %i.y, align 8, !noalias !19143
  br label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21bbf23d57b9e4d9E.exit"

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h21bbf23d57b9e4d9E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr193drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$std..collections..hash..map..HashMap$LT$std..path..PathBuf$C$alloc..sync..Arc$LT$synchronoise..event..SignalEvent$GT$$GT$$GT$$GT$17h533150fae26f7784E"(ptr %.0.val, i8 %.8.val) unnamed_addr #3 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !158

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw sub ptr %.0.val, i32 1073741823 release, align 4
  %i.h = add i32 %i.g, -1073741823                ; 2 uses
  %or.cond.i = icmp ult i32 %i.h, 1073741824
  br i1 %or.cond.i, label %"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0f09143474941f9E.exit", label %bb.e, !prof !6445

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.0.val, i32 noundef %i.h)
  br label %"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0f09143474941f9E.exit"

"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0f09143474941f9E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88ca1caf4a8dcee1E"(ptr noalias noundef align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %"_ZN4core3ptr201drop_in_place$LT$alloc..raw_vec..RawVec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1c496a5380c69d56E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %i.d = mul nuw i64 %.val2, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %"_ZN4core3ptr201drop_in_place$LT$alloc..raw_vec..RawVec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1c496a5380c69d56E.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %"_ZN4core3ptr201drop_in_place$LT$alloc..raw_vec..RawVec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1c496a5380c69d56E.exit4", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !27, !noundef !27
  %i.g = mul nuw i64 %.val, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %"_ZN4core3ptr201drop_in_place$LT$alloc..raw_vec..RawVec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1c496a5380c69d56E.exit4"

"_ZN4core3ptr201drop_in_place$LT$alloc..raw_vec..RawVec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1c496a5380c69d56E.exit4": ; preds = %bb.d, %bb.e
  ret void

"_ZN4core3ptr201drop_in_place$LT$alloc..raw_vec..RawVec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1c496a5380c69d56E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr194drop_in_place$LT$milli..update..new..indexer..index$LT$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he95518be0e62420dE"(ptr noalias noundef nonnull align 8 dereferenceable(1248) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$milli..update..new..channel..ExtractorBbqueueSender$GT$17h22eb0afccf98e0f7E"(ptr noalias noundef align 8 dereferenceable(544) %i.b) #67
          to label %bb.d unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$milli..update..new..channel..ExtractorBbqueueSender$GT$17h22eb0afccf98e0f7E"(ptr noalias noundef align 8 dereferenceable(544) %i.c)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 736
  tail call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E"(ptr noalias noundef align 8 dereferenceable(512) %i.d) #67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #67
          to label %bb.k unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19150)
  br label %bb.g

bb.g:                                             ; preds = %.backedge.i.i.i, %bb.f
  %.sroa.0.0.idx12.i.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.add.i.i.i, %.backedge.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i = phi i64 [ 0, %bb.f ], [ %i.h, %.backedge.i.i.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.0.idx12.i.i.i
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i, 8 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.7.011.i.i.i, 1
  %i.i = load ptr, ptr %.sroa.0.0.ptr.i.i.i, align 8, !alias.scope !19153, !noundef !27 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.backedge.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = shl nuw i64 1, %.sroa.7.011.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19154)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i", %bb.h
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.m, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i" ], [ 0, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 24
  %.val9.i.i.i.i.i = load i8, ptr %i.n, align 1, !range !1558, !alias.scope !19154, !noalias !19153, !noundef !27
  %i.o = trunc nuw i8 %.val9.i.i.i.i.i to i1
  br i1 %i.o, label %bb.i, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %.val8.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !19154, !noalias !19153, !nonnull !27, !noundef !27 ; 2 uses
  %i.q = icmp eq ptr %.val8.i.i.i.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.q, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i.i.i.i, %bb.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !19157, !nonnull !27, !noundef !27 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !19157, !nonnull !27, !noundef !27
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 16, !noalias !19157, !noundef !27
  %i.x = load i64, ptr %i.u, align 8, !range !4612, !noalias !19157, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.w, i64 noundef %i.x) #65, !noalias !19157
  %i.y = icmp eq ptr %i.s, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.y, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i.i.i
  %i.z = icmp eq i64 %i.m, %i.k
  br i1 %i.z, label %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i": ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i"
  %i.aa = shl nuw i64 32, %.sroa.7.011.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.aa, i64 noundef 8) #65, !noalias !19153
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i", %bb.g
  %i.ab = icmp eq i64 %.sroa.0.0.add.i.i.i, 504
  br i1 %i.ab, label %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit", label %bb.g

"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit": ; preds = %.backedge.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E"(ptr noalias noundef align 8 dereferenceable(24) %i.ac)
  ret void

bb.j:                                             ; preds = %bb.d, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

bb.k:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr196drop_in_place$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$17h3752409f0bed46e3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19158)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88ca1caf4a8dcee1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %0)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit.i" unwind label %bb.b, !inline_history !19030

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !range !28, !alias.scope !19161, !noundef !27 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %"_ZN4core3ptr201drop_in_place$LT$alloc..raw_vec..RawVec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1c496a5380c69d56E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !19161, !nonnull !27, !noundef !27
  %i.d = mul nuw i64 %.val2.i.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19158, !inline_history !19034
  br label %"_ZN4core3ptr201drop_in_place$LT$alloc..raw_vec..RawVec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1c496a5380c69d56E.exit.i"

"_ZN4core3ptr201drop_in_place$LT$alloc..raw_vec..RawVec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1c496a5380c69d56E.exit.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit.i": ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !range !28, !alias.scope !19161, !noundef !27 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19161, !nonnull !27, !noundef !27
  %i.g = mul nuw i64 %.val.i.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19158, !inline_history !19034
  br label %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit"

"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h3a9791a6163210e6E.exit": ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit.i", %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr1981drop_in_place$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9f566db5fb1bb00bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19164)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19170)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !19173, !nonnull !27, !align !241, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !19173, !noundef !27 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8, !alias.scope !19173
  store i64 0, ptr %i.c, align 8, !alias.scope !19173
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr909drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h41344bbbb08b3b10E.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.07.i.i.i.i
  %i.g = add nuw i64 %.sroa.0.07.i.i.i.i, 1       ; 2 uses
  tail call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$17h7df9b3983a11a006E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.f), !noalias !19173
  %i.h = icmp eq i64 %i.g, %i.d
  br i1 %i.h, label %"_ZN4core3ptr909drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h41344bbbb08b3b10E.exit", label %.lr.ph.i.i.i.i

"_ZN4core3ptr909drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h41344bbbb08b3b10E.exit": ; preds = %.lr.ph.i.i.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19174)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19180)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !19183, !nonnull !27, !align !241, !noundef !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !19183, !noundef !27 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !19183
  store i64 0, ptr %i.k, align 8, !alias.scope !19183
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %"_ZN4core3ptr909drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb0d62500fa2e104dE.exit", label %.lr.ph.i.i.i.i1

.lr.ph.i.i.i.i1:                                  ; preds = %"_ZN4core3ptr909drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h41344bbbb08b3b10E.exit", %.lr.ph.i.i.i.i1
  %.sroa.0.07.i.i.i.i2 = phi i64 [ %i.o, %.lr.ph.i.i.i.i1 ], [ 0, %"_ZN4core3ptr909drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h41344bbbb08b3b10E.exit" ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.07.i.i.i.i2
  %i.o = add nuw i64 %.sroa.0.07.i.i.i.i2, 1      ; 2 uses
  tail call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$17h7df9b3983a11a006E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.n), !noalias !19183
  %i.p = icmp eq i64 %i.o, %i.l
  br i1 %i.p, label %"_ZN4core3ptr909drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb0d62500fa2e104dE.exit", label %.lr.ph.i.i.i.i1

"_ZN4core3ptr909drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb0d62500fa2e104dE.exit": ; preds = %.lr.ph.i.i.i.i1, %"_ZN4core3ptr909drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordFidDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordFidDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h41344bbbb08b3b10E.exit"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr1997drop_in_place$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h92db9c83f720ef01E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19184)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19190)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !19193, !nonnull !27, !align !241, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !19193, !noundef !27 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8, !alias.scope !19193
  store i64 0, ptr %i.c, align 8, !alias.scope !19193
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr917drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haff4a7cce60266beE.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.07.i.i.i.i
  %i.g = add nuw i64 %.sroa.0.07.i.i.i.i, 1       ; 2 uses
  tail call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$17h7df9b3983a11a006E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.f), !noalias !19193
  %i.h = icmp eq i64 %i.g, %i.d
  br i1 %i.h, label %"_ZN4core3ptr917drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haff4a7cce60266beE.exit", label %.lr.ph.i.i.i.i

"_ZN4core3ptr917drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haff4a7cce60266beE.exit": ; preds = %.lr.ph.i.i.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19194)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19200)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !19203, !nonnull !27, !align !241, !noundef !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !19203, !noundef !27 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !19203
  store i64 0, ptr %i.k, align 8, !alias.scope !19203
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %"_ZN4core3ptr917drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hef3bddef902982a2E.exit", label %.lr.ph.i.i.i.i1

.lr.ph.i.i.i.i1:                                  ; preds = %"_ZN4core3ptr917drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haff4a7cce60266beE.exit", %.lr.ph.i.i.i.i1
  %.sroa.0.07.i.i.i.i2 = phi i64 [ %i.o, %.lr.ph.i.i.i.i1 ], [ 0, %"_ZN4core3ptr917drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haff4a7cce60266beE.exit" ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.07.i.i.i.i2
  %i.o = add nuw i64 %.sroa.0.07.i.i.i.i2, 1      ; 2 uses
  tail call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$17h7df9b3983a11a006E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.n), !noalias !19203
  %i.p = icmp eq i64 %i.o, %i.l
  br i1 %i.p, label %"_ZN4core3ptr917drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hef3bddef902982a2E.exit", label %.lr.ph.i.i.i.i1

"_ZN4core3ptr917drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hef3bddef902982a2E.exit": ; preds = %.lr.ph.i.i.i.i1, %"_ZN4core3ptr917drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..ExactWordDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haff4a7cce60266beE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr201drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$$RF$str$C$serde_json..value..Value$C$alloc..alloc..Global$GT$$GT$17h135a90fa1206070eE"(ptr nofree nonnull captures(none) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h7df685496ea65569E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %"_ZN174_$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf209fc245492128fE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_4
begin_hunk_5_@"_ZN4core3ptr2476drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..LockLatch$GT$$C$rayon_core..registry..Registry..in_worker_cold$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$RP$$GT$$GT$17hd095119b81ba6a97E":bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN4core3ptr929drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569a147d9adf0c22E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.07.i.i.i.i.i.i.i.i
  %i.j = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$17h7df9b3983a11a006E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.i), !noalias !19958
  %i.k = icmp eq i64 %i.j, %i.g
  br i1 %i.k, label %"_ZN4core3ptr929drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569a147d9adf0c22E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN4core3ptr929drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569a147d9adf0c22E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19959)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19965)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !19968, !nonnull !27, !align !241, !noundef !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !19968, !noundef !27 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !alias.scope !19968
  store i64 0, ptr %i.n, align 8, !alias.scope !19968
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN4core3ptr2313drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$rayon_core..registry..Registry..in_worker_cold$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$clo", label %.lr.ph.i.i.i.i1.i.i.i.i

.lr.ph.i.i.i.i1.i.i.i.i:                          ; preds = %"_ZN4core3ptr929drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569a147d9adf0c22E.exit.i.i.i.i", %.lr.ph.i.i.i.i1.i.i.i.i
  %.sroa.0.07.i.i.i.i2.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i1.i.i.i.i ], [ 0, %"_ZN4core3ptr929drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569a147d9adf0c22E.exit.i.i.i.i" ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.07.i.i.i.i2.i.i.i.i
  %i.r = add nuw i64 %.sroa.0.07.i.i.i.i2.i.i.i.i, 1 ; 2 uses
  tail call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$17h7df9b3983a11a006E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.q), !noalias !19968
  %i.s = icmp eq i64 %i.r, %i.o
  br i1 %i.s, label %"_ZN4core3ptr2313drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$rayon_core..registry..Registry..in_worker_cold$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$clo", label %.lr.ph.i.i.i.i1.i.i.i.i

"_ZN4core3ptr2313drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$rayon_core..registry..Registry..in_worker_cold$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$clo": ; preds = %.lr.ph.i.i.i.i1.i.i.i.i, %"_ZN4core3ptr929drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPositionDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569a147d9adf0c22E.exit.i.i.i.i", %bb.a
  tail call fastcc void @"_ZN4core3ptr174drop_in_place$LT$rayon_core..job..JobResult$LT$$LP$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$RP$$GT$$GT$17h1b18e00346d17351E"(ptr noalias noundef nonnull align 8 dereferenceable(640) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr2481drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..slice..chunks..ChunksProducer$LT$$LP$$RF$str$C$milli..update..new..indexer..document_operation..PayloadOperations$RP$$GT$$C$rayon..iter..map_with..MapInitConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$rayon..iter..ParallelIterator..try_for_each_init..ok$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$C$$LT$$LP$$RP$$u20$as$u20$core..default..Default$GT$..default$GT$$C$$LT$rayon..slice..chunks..Chunks$LT$$LP$$RF$str$C$milli..update..new..indexer..document_operation..PayloadOperations$RP$$GT$$u20$as$u20$milli..update..new..parallel_iterator_ext..ParallelIteratorExt$GT$..try_arc_for_each_try_init$LT$milli..update..new..indexer..document_changes..extract$LT$milli..update..new..extract..geo..cellulite..GeoJsonExtractor$C$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..update..new..indexer..document_changes..extract$LT$milli..update..new..extract..geo..cellulite..GeoJsonExtractor$C$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..update..new..document..DocumentContext$LT$$LP$$RP$$GT$$C$milli..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$rayon..slice..chunks..Chunks$LT$$LP$$RF$str$C$milli..update..new..indexer..document_operation..PayloadOperations$RP$$GT$$u20$as$u20$milli..update..new..parallel_iterator_ext..ParallelIteratorExt$GT$..try_arc_for_each_try_init$LT$milli..update..new..indexer..document_changes..extract$LT$milli..update..new..extract..geo..cellulite..GeoJsonExtractor$C$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..update..new..indexer..document_changes..extract$LT$milli..update..new..extract..geo..cellulite..GeoJsonExtractor$C$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$milli..update..new..document..DocumentContext$LT$$LP$$RP$$GT$$C$milli..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$17heeed083dd36a26c5E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19972)
  %i.b = load i64, ptr %i.a, align 8, !range !322, !alias.scope !19975, !noundef !27
  switch i64 %i.b, label %bb.b [
    i64 0, label %"_ZN4core3ptr167drop_in_place$LT$core..cell..UnsafeCell$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$$GT$17h6fc53f4d7111cdb2E.exit"
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19976)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !19979, !nonnull !27, !align !241, !noundef !27 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !27, !noalias !19979 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !19979, !nonnull !27, !noundef !27 ; 2 uses
  invoke void %i.f(ptr noundef nonnull %i.g)
          to label %bb.d unwind label %bb.e, !noalias !19979

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !28, !invariant.load !27, !noalias !19979 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !4400, !invariant.load !27, !noalias !19979 ; 2 uses
  %i.l = icmp ult i64 %i.k, -9223372036854775807
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %"_ZN4core3ptr167drop_in_place$LT$core..cell..UnsafeCell$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$$GT$17h6fc53f4d7111cdb2E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.d
  %.val2.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !19979, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.k) #65, !noalias !19979
  br label %"_ZN4core3ptr167drop_in_place$LT$core..cell..UnsafeCell$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$$GT$17h6fc53f4d7111cdb2E.exit"

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !28, !invariant.load !27, !noalias !19979 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !4400, !invariant.load !27, !noalias !19979 ; 2 uses
  %i.s = icmp ult i64 %i.r, -9223372036854775807
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c9a6137b0d69fb7E.exit5.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.r) #65, !noalias !19979
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c9a6137b0d69fb7E.exit5.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c9a6137b0d69fb7E.exit5.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.e
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19980)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !19983, !noundef !27 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %"_ZN4core3ptr167drop_in_place$LT$core..cell..UnsafeCell$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$$GT$17h6fc53f4d7111cdb2E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !19984
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.h, label %"_ZN4core3ptr167drop_in_place$LT$core..cell..UnsafeCell$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$$GT$17h6fc53f4d7111cdb2E.exit"

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c17154f1e6296d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %"_ZN4core3ptr167drop_in_place$LT$core..cell..UnsafeCell$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$$GT$17h6fc53f4d7111cdb2E.exit"

"_ZN4core3ptr167drop_in_place$LT$core..cell..UnsafeCell$LT$rayon_core..job..JobResult$LT$core..result..Result$LT$$LP$$RP$$C$alloc..sync..Arc$LT$milli..error..Error$GT$$GT$$GT$$GT$$GT$17h6fc53f4d7111cdb2E.exit": ; preds = %bb.a, %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr2516drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..LockLatch$GT$$C$rayon_core..registry..Registry..in_worker_cold$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$RP$$GT$$GT$17h6ff675b0577b0b25E"(ptr noalias noundef nonnull align 8 dereferenceable(784) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19992)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !19995, !noundef !27
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %"_ZN4core3ptr2353drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$rayon_core..registry..Registry..in_worker_cold$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$boo", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20002)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20008)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !20011, !nonnull !27, !align !241, !noundef !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !20011, !noundef !27 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !alias.scope !20011
  store i64 0, ptr %i.f, align 8, !alias.scope !20011
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN4core3ptr949drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h8adcbd6713ecebb4E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.07.i.i.i.i.i.i.i.i
  %i.j = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$17h7df9b3983a11a006E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.i), !noalias !20011
  %i.k = icmp eq i64 %i.j, %i.g
  br i1 %i.k, label %"_ZN4core3ptr949drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h8adcbd6713ecebb4E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN4core3ptr949drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h8adcbd6713ecebb4E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20012)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20018)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20021, !nonnull !27, !align !241, !noundef !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !20021, !noundef !27 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !alias.scope !20021
  store i64 0, ptr %i.n, align 8, !alias.scope !20021
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN4core3ptr2353drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$rayon_core..registry..Registry..in_worker_cold$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$boo", label %.lr.ph.i.i.i.i1.i.i.i.i

.lr.ph.i.i.i.i1.i.i.i.i:                          ; preds = %"_ZN4core3ptr949drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h8adcbd6713ecebb4E.exit.i.i.i.i", %.lr.ph.i.i.i.i1.i.i.i.i
  %.sroa.0.07.i.i.i.i2.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i1.i.i.i.i ], [ 0, %"_ZN4core3ptr949drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h8adcbd6713ecebb4E.exit.i.i.i.i" ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.07.i.i.i.i2.i.i.i.i
  %i.r = add nuw i64 %.sroa.0.07.i.i.i.i2.i.i.i.i, 1 ; 2 uses
  tail call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$17h7df9b3983a11a006E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.q), !noalias !20021
  %i.s = icmp eq i64 %i.r, %i.o
  br i1 %i.s, label %"_ZN4core3ptr2353drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$rayon_core..registry..Registry..in_worker_cold$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$boo", label %.lr.ph.i.i.i.i1.i.i.i.i

"_ZN4core3ptr2353drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$rayon_core..registry..Registry..in_worker_cold$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$boo": ; preds = %.lr.ph.i.i.i.i1.i.i.i.i, %"_ZN4core3ptr949drop_in_place$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..vec..DrainProducer$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..FrozenCache$GT$$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..try_reduce..TryReduceConsumer$LT$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LT$bool$u20$as$u20$core..default..Default$GT$..default$GT$$C$milli..update..new..merger..merge_scan_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$C$milli..update..new..merger..merge_and_send_docids$LT$milli..update..new..channel..WordPairProximityDocids$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$bool$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h8adcbd6713ecebb4E.exit.i.i.i.i", %bb.a
  tail call fastcc void @"_ZN4core3ptr174drop_in_place$LT$rayon_core..job..JobResult$LT$$LP$core..result..Result$LT$bool$C$milli..error..Error$GT$$C$core..result..Result$LT$bool$C$milli..error..Error$GT$$RP$$GT$$GT$17h1b18e00346d17351E"(ptr noalias noundef nonnull align 8 dereferenceable(640) %0)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr252drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17he989eebc8a707c8bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20022)
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %.sroa.0.0.idx13.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.i, %.backedge.i ] ; 2 uses
  %.sroa.7.012.i = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge.i ] ; 3 uses
  %.sroa.0.0.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx13.i
  %.sroa.0.0.add.i = add nuw nsw i64 %.sroa.0.0.idx13.i, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.012.i, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr.i, align 8, !alias.scope !20022, !noundef !27 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.012.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i.i", %bb.c
  %.sroa.0.08.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.08.i.i.i ; 10 uses
  %i.f = add nuw nsw i64 %.sroa.0.08.i.i.i, 1     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.h = load i8, ptr %i.g, align 1, !range !1558, !alias.scope !20025, !noalias !20022, !noundef !27
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20038)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20050)
  %i.k = load i64, ptr %i.j, align 8, !range !8078, !alias.scope !20053, !noalias !20022, !noundef !27 ; 3 uses
  %i.l = icmp eq i64 %i.k, -9223372036854775808
  br i1 %i.l, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h05209d257acee8c7E.exit.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20057)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !20060, !noalias !20022, !nonnull !27, !noundef !27 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !20060, !noalias !20022, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20061)
  %i.o = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.o, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i = phi i64 [ %i.q, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i" ], [ 0, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i ; 2 uses
  %i.q = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !range !8078, !alias.scope !20061, !noalias !20064, !noundef !27 ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !20061, !noalias !20064 ; 4 uses
  switch i64 %.val8.i.i.i.i.i.i.i, label %bb.f [
    i64 -9223372036854775808, label %bb.g
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i"
  ]

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.s = shl nuw i64 %.val8.i.i.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !20065
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i"

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !20065
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.t = icmp eq i64 %i.q, %.val1.i.i.i.i.i
  br i1 %i.t, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i", %bb.e
  %i.u = icmp eq i64 %i.k, 0
  br i1 %i.u, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h05209d257acee8c7E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i"
  %i.v = shl nuw i64 %i.k, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !20064
  br label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h05209d257acee8c7E.exit.i.i"

"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h05209d257acee8c7E.exit.i.i": ; preds = %bb.h, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i", %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20066)
  %i.x = load i64, ptr %i.w, align 8, !range !8078, !alias.scope !20069, !noalias !20022, !noundef !27 ; 3 uses
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %"_ZN4core3ptr76drop_in_place$LT$milli..update..new..extract..cache..DelAddRoaringBitmap$GT$17h8210d2b290b10b04E.exit.i", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h05209d257acee8c7E.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20073)
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val.i.i.i1.i.i = load ptr, ptr %i.z, align 8, !alias.scope !20076, !noalias !20022, !nonnull !27, !noundef !27 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.val1.i.i.i2.i.i = load i64, ptr %i.aa, align 8, !alias.scope !20076, !noalias !20022, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20077)
  %i.ab = icmp eq i64 %.val1.i.i.i2.i.i, 0
  br i1 %i.ab, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i8.i.i", label %.lr.ph.i.i.i.i.i3.i.i

.lr.ph.i.i.i.i.i3.i.i:                            ; preds = %bb.i, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i7.i.i"
  %.sroa.0.010.i.i.i.i.i4.i.i = phi i64 [ %i.ad, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i7.i.i" ], [ 0, %bb.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i1.i.i, i64 %.sroa.0.010.i.i.i.i.i4.i.i ; 2 uses
  %i.ad = add nuw i64 %.sroa.0.010.i.i.i.i.i4.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i5.i.i = load i64, ptr %i.ac, align 8, !range !8078, !alias.scope !20077, !noalias !20080, !noundef !27 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  %.val9.i.i.i.i.i6.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !20077, !noalias !20080 ; 4 uses
  switch i64 %.val8.i.i.i.i.i5.i.i, label %bb.j [
    i64 -9223372036854775808, label %bb.k
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i7.i.i"
  ]

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i3.i.i
  %i.af = shl nuw i64 %.val8.i.i.i.i.i5.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i6.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i6.i.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !20081
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i7.i.i"

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i3.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i6.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i6.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !20081
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i7.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i7.i.i": ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i.i.i3.i.i
  %i.ag = icmp eq i64 %i.ad, %.val1.i.i.i2.i.i
  br i1 %i.ag, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i8.i.i", label %.lr.ph.i.i.i.i.i3.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i8.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i7.i.i", %bb.i
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %"_ZN4core3ptr76drop_in_place$LT$milli..update..new..extract..cache..DelAddRoaringBitmap$GT$17h8210d2b290b10b04E.exit.i", label %bb.l

bb.l:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i8.i.i"
  %i.ai = shl nuw i64 %i.x, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i1.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !20080
  br label %"_ZN4core3ptr76drop_in_place$LT$milli..update..new..extract..cache..DelAddRoaringBitmap$GT$17h8210d2b290b10b04E.exit.i"

"_ZN4core3ptr76drop_in_place$LT$milli..update..new..extract..cache..DelAddRoaringBitmap$GT$17h8210d2b290b10b04E.exit.i": ; preds = %bb.l, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i8.i.i", %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h05209d257acee8c7E.exit.i.i"
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20091)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !20094, !noalias !20022, !noundef !27 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i.i", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr76drop_in_place$LT$milli..update..new..extract..cache..DelAddRoaringBitmap$GT$17h8210d2b290b10b04E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20095)
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !20098, !noalias !20022, !noundef !27 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf00c5d7e61040847E.exit.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20099)
  %i.aq = load ptr, ptr %i.aj, align 8, !alias.scope !20102, !noalias !20103, !nonnull !27, !noundef !27 ; 3 uses
  %.val24.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aq, align 16, !noalias !20105
  %i.ar = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = bitcast <16 x i1> %i.ar to i16
  br label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.n
  %.sroa.14.011.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.n ], [ %i.bf, %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.10.010.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.at, %bb.n ], [ %i.bc, %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.09.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %bb.n ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.n ], [ %.sroa.05.1.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.10.010.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h059254775104da5aE.exit.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.09.i.i.i.i.i.i.i.i.i.i.i, %bb.o ] ; 2 uses
  %i.av = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i, %bb.o ]
  %.val79.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.au, align 16, !noalias !20106
  %i.aw = icmp sgt <16 x i8> %.val79.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -512 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h059254775104da5aE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h059254775104da5aE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o
  %.sroa.05.1.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.09.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.10.010.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.az = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = and i16 %i.az, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = sub nsw i64 0, %i.bb
  %i.be = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bd ; 2 uses
  %i.bf = add i64 %.sroa.14.011.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -32
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !range !28, !alias.scope !20109, !noalias !20114, !noundef !27 ; 2 uses
  %i.bh = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h059254775104da5aE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.bi = getelementptr i8, ptr %i.be, i64 -24
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !20114, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !20115
  br label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.p, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h059254775104da5aE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.bj = icmp eq i64 %i.bf, 0
  br i1 %i.bj, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf00c5d7e61040847E.exit.i.i.i.i.i.i.i.i.i.i, label %bb.o

_ZN9hashbrown3raw13RawTableInner13drop_elements17hf00c5d7e61040847E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h220bf060924c47ffE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.m
  %i.bk = shl i64 %i.al, 5                        ; 2 uses
  %i.bl = add i64 %i.bk, 32                       ; 2 uses
  %i.bm = add i64 %i.al, 17
  %i.bn = add i64 %i.bm, %i.bl                    ; 4 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl
  %i.bp = icmp ult i64 %i.bn, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bo)
  tail call void @llvm.assume(i1 %i.bp)
end_hunk_5
begin_hunk_6_@"_ZN4core3ptr296drop_in_place$LT$alloc..vec..Vec$LT$$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$..insert..InsertionAction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17hc62eee04e002ff28E":bb.a
  %i.u = icmp eq i64 %i.e, %.val1
  br i1 %i.u, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5916aa43a89d42d4E.exit", label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i.i40, 1              ; 2 uses
  %i.w = icmp eq i64 %i.v, %.val1
  br i1 %i.w, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %bb.g, %common.resume.sink.split.i.i.i, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %common.resume.op.ph.i.i.i, %common.resume.sink.split.i.i.i ], [ %i.k, %bb.d ], [ %i.p, %bb.g ]
  %i.x = icmp eq i64 %i.e, %.val1
  br i1 %i.x, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.h
  %.sroa.0.1.i.i40 = phi i64 [ %i.v, %bb.h ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.0.1.i.i40
  invoke fastcc void @"_ZN4core3ptr273drop_in_place$LT$$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$..insert..InsertionAction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h96b268a9b1222bf2E"(ptr noalias noundef readonly align 8 dereferenceable(80) %i.y) #67
          to label %bb.h unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !20490
  unreachable

.body:                                            ; preds = %bb.h, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.aa = icmp eq i64 %.val4, 0
  br i1 %i.aa, label %"_ZN4core3ptr303drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$..insert..InsertionAction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h314d75d66e8622b2E.exit", label %bb.j

bb.j:                                             ; preds = %.body
  %i.ab = mul nuw i64 %.val4, 80
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %"_ZN4core3ptr303drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$..insert..InsertionAction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h314d75d66e8622b2E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5916aa43a89d42d4E.exit": ; preds = %"_ZN4core3ptr273drop_in_place$LT$$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$..insert..InsertionAction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h96b268a9b1222bf2E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.ac = icmp eq i64 %.val2, 0
  br i1 %i.ac, label %"_ZN4core3ptr303drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$..insert..InsertionAction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h314d75d66e8622b2E.exit6", label %bb.k

bb.k:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5916aa43a89d42d4E.exit"
  %i.ad = mul nuw i64 %.val2, 80
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %"_ZN4core3ptr303drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$..insert..InsertionAction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h314d75d66e8622b2E.exit6"

"_ZN4core3ptr303drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$..insert..InsertionAction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h314d75d66e8622b2E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5916aa43a89d42d4E.exit", %bb.k
  ret void

"_ZN4core3ptr303drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LT$rstar..algorithm..rstar..RStarInsertionStrategy$u20$as$u20$rstar..params..InsertionStrategy$GT$..insert..InsertionAction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h314d75d66e8622b2E.exit": ; preds = %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr297drop_in_place$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$milli..vector..settings..EmbedderAction$GT$$GT$17hbef11ae638164dabE"(ptr nofree readonly captures(none) %.0.val) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20500)
  %i.a = load i64, ptr %.0.val, align 8, !range !8078, !alias.scope !20503, !noundef !27 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$milli..vector..settings..WriteBackToDocuments$GT$$GT$17h67d51449552751cbE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20510)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !20513, !nonnull !27, !noundef !27 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !20513, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20514)
  %i.e = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i = phi i64 [ %i.g, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !8078, !alias.scope !20514, !noalias !20513, !noundef !27 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !20514, !noalias !20513 ; 4 uses
  switch i64 %.val8.i.i.i.i.i.i.i.i, label %bb.c [
    i64 -9223372036854775808, label %bb.d
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i.i"
  ]

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.i = shl nuw i64 %.val8.i.i.i.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !20517
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !20517
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %i.j = icmp eq i64 %i.g, %.val1.i.i.i.i.i.i
  br i1 %i.j, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i.i.i.i.i", %bb.b
  %i.k = icmp eq i64 %i.a, 0
  br i1 %i.k, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$milli..vector..settings..WriteBackToDocuments$GT$$GT$17h67d51449552751cbE.exit.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i.i"
  %i.l = shl nuw i64 %i.a, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !20513
  br label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$milli..vector..settings..WriteBackToDocuments$GT$$GT$17h67d51449552751cbE.exit.i.i"

"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$milli..vector..settings..WriteBackToDocuments$GT$$GT$17h67d51449552751cbE.exit.i.i": ; preds = %bb.e, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i.i.i.i.i", %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20518)
  %i.n = load i64, ptr %i.m, align 8, !range !20521, !alias.scope !20522, !noundef !27 ; 5 uses
  %i.o = icmp eq i64 %i.n, -9223372036854775805
  br i1 %i.o, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$milli..vector..settings..ReindexAction$GT$$GT$17h1d554215267a9df4E.exit.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$milli..vector..settings..WriteBackToDocuments$GT$$GT$17h67d51449552751cbE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20523)
  %i.p = icmp ne i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp sgt i64 %i.n, -1
  br i1 %i.q, label %bb.g, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$milli..vector..settings..ReindexAction$GT$$GT$17h1d554215267a9df4E.exit.i.i"

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20526)
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %.val.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !20529, !nonnull !27, !noundef !27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %.val1.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !20529, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20530)
  %i.t = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.t, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hae3ed3ba31a29047E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..settings..RegenerateFragment$RP$$GT$17hf968c1bad846ef4aE.exit.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.v, %"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..settings..RegenerateFragment$RP$$GT$17hf968c1bad846ef4aE.exit.i.i.i.i.i.i.i" ], [ 0, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.v = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !range !28, !alias.scope !20533, !noalias !20529, !noundef !27 ; 2 uses
  %i.w = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..settings..RegenerateFragment$RP$$GT$17hf968c1bad846ef4aE.exit.i.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !20530, !noalias !20529, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !20538
  br label %"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..settings..RegenerateFragment$RP$$GT$17hf968c1bad846ef4aE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..settings..RegenerateFragment$RP$$GT$17hf968c1bad846ef4aE.exit.i.i.i.i.i.i.i": ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %i.y = icmp eq i64 %i.v, %.val1.i.i.i.i.i
  br i1 %i.y, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hae3ed3ba31a29047E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hae3ed3ba31a29047E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$milli..vector..settings..RegenerateFragment$RP$$GT$17hf968c1bad846ef4aE.exit.i.i.i.i.i.i.i", %bb.g
  %i.z = icmp eq i64 %i.n, 0
  br i1 %i.z, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$milli..vector..settings..ReindexAction$GT$$GT$17h1d554215267a9df4E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hae3ed3ba31a29047E.exit.i.i.i.i.i"
  %i.aa = shl nuw i64 %i.n, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !20529
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$milli..vector..settings..ReindexAction$GT$$GT$17h1d554215267a9df4E.exit.i.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$milli..vector..settings..ReindexAction$GT$$GT$17h1d554215267a9df4E.exit.i.i": ; preds = %bb.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hae3ed3ba31a29047E.exit.i.i.i.i.i", %bb.f, %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$milli..vector..settings..WriteBackToDocuments$GT$$GT$17h67d51449552751cbE.exit.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val.i.i = load i64, ptr %i.ab, align 8, !range !8078, !alias.scope !20497, !noundef !27 ; 2 uses
  %switch.i.i = icmp sgt i64 %.val.i.i, 0
  br i1 %switch.i.i, label %bb.j, label %"_ZN280_$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha869cbf845f560b9E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$milli..vector..settings..ReindexAction$GT$$GT$17h1d554215267a9df4E.exit.i.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %.val2.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !20497, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !20543
  br label %"_ZN280_$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha869cbf845f560b9E.exit"

"_ZN280_$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha869cbf845f560b9E.exit": ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$milli..vector..settings..ReindexAction$GT$$GT$17h1d554215267a9df4E.exit.i.i", %bb.j
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr300drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h8aef05f0dcba6ed6E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20546)
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %.sroa.0.0.idx28.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.i, %.backedge.i ] ; 2 uses
  %.sroa.7.027.i = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge.i ] ; 3 uses
  %.sroa.0.0.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx28.i
  %.sroa.0.0.add.i = add nuw nsw i64 %.sroa.0.0.idx28.i, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.027.i, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr.i, align 8, !alias.scope !20546, !noundef !27 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.027.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i.i", %bb.c
  %.sroa.0.08.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.08.i.i.i ; 7 uses
  %i.f = add nuw nsw i64 %.sroa.0.08.i.i.i, 1     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.h = load i8, ptr %i.g, align 1, !range !1558, !alias.scope !20549, !noalias !20546, !noundef !27
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20571)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !20574, !noalias !20546, !noundef !27 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20575)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !20578, !noalias !20546, !noundef !27 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !20578, !noalias !20546, !nonnull !27, !noundef !27 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.q, align 16, !noalias !20579
  %i.r = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = bitcast <16 x i1> %i.r to i16
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit17.i", %bb.f
  %.sroa.06.017.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %bb.f ], [ %.sroa.06.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit17.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit17.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i.i = phi i16 [ %i.t, %bb.f ], [ %i.ac, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit17.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i.i = phi i64 [ %i.o, %bb.f ], [ %i.af, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit17.i" ]
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.u = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.v = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i.i, %bb.g ]
  %.val911.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 16, !noalias !20582
  %i.w = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -512 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.w to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i.i, %bb.g ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i.i, %bb.g ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i.i, %bb.g ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.z = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = and i16 %i.z, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ad = sub nsw i64 0, %i.ab
  %i.ae = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i.i, i64 %i.ad ; 3 uses
  %i.af = add i64 %.sroa.108.014.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20588), !noalias !20578
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %.val.i.i5.i = load ptr, ptr %i.ah, align 8, !alias.scope !20591, !noalias !20592, !nonnull !27, !noundef !27 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %.val1.i.i6.i = load i64, ptr %i.ai, align 8, !alias.scope !20591, !noalias !20592, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20593), !noalias !20578
  %i.aj = icmp eq i64 %.val1.i.i6.i, 0
  br i1 %i.aj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i.i11.i", label %.lr.ph.i.i.i.i7.i

.lr.ph.i.i.i.i7.i:                                ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i.i", %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i.i10.i"
  %.sroa.0.07.i.i.i.i8.i = phi i64 [ %i.al, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i.i10.i" ], [ 0, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i5.i, i64 %.sroa.0.07.i.i.i.i8.i ; 4 uses
  %i.al = add nuw i64 %.sroa.0.07.i.i.i.i8.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20596), !noalias !20578
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20599), !noalias !20578
  %i.am = load i64, ptr %i.ak, align 8, !range !322, !alias.scope !20602, !noalias !20603, !noundef !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  switch i64 %i.am, label %bb.h [
    i64 0, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %.val.i.i.i.i.i.i15.i = load i64, ptr %i.an, align 8, !alias.scope !20602, !noalias !20603 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i.i.i15.i, 0
  br i1 %i.ao, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i.i10.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val1.i.i.i.i.i.i16.i = load ptr, ptr %i.ap, align 8, !alias.scope !20602, !noalias !20603, !nonnull !27, !noundef !27
  %i.aq = shl nuw i64 %.val.i.i.i.i.i.i15.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i16.i, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !20604
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i.i10.i"

bb.j:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %.val2.i.i.i.i.i.i13.i = load i64, ptr %i.an, align 8, !alias.scope !20602, !noalias !20603 ; 2 uses
  %i.ar = icmp eq i64 %.val2.i.i.i.i.i.i13.i, 0
  br i1 %i.ar, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i.i10.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val3.i.i.i.i.i.i14.i = load ptr, ptr %i.as, align 8, !alias.scope !20602, !noalias !20603, !nonnull !27, !noundef !27
  %i.at = shl nuw i64 %.val2.i.i.i.i.i.i13.i, 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i14.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !20604
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i.i10.i"

bb.l:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %.val4.i.i.i.i.i.i9.i = load ptr, ptr %i.an, align 8, !alias.scope !20602, !noalias !20603, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i9.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !20604
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i.i10.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i.i10.i": ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.au = icmp eq i64 %i.al, %.val1.i.i6.i
  br i1 %i.au, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i.i11.i", label %.lr.ph.i.i.i.i7.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i.i11.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i.i10.i", %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i.i"
  %.val2.i.i12.i = load i64, ptr %i.ag, align 8, !range !28, !alias.scope !20591, !noalias !20592, !noundef !27 ; 2 uses
  %i.av = icmp eq i64 %.val2.i.i12.i, 0
  br i1 %i.av, label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit17.i", label %bb.m

bb.m:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i.i11.i"
  %i.aw = mul nuw i64 %.val2.i.i12.i, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i5.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !20603
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit17.i"

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit17.i": ; preds = %bb.m, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i.i11.i"
  %i.ax = icmp eq i64 %i.af, 0
  br i1 %i.ax, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i.i, label %bb.g

_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit17.i", %bb.e
  %i.ay = shl i64 %i.l, 5                         ; 2 uses
  %i.az = add i64 %i.ay, 32                       ; 2 uses
  %i.ba = add i64 %i.l, 17
  %i.bb = add i64 %i.ba, %i.az                    ; 4 uses
  %i.bc = icmp uge i64 %i.bb, %i.az
  %i.bd = icmp ult i64 %i.bb, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bc)
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bb, 0
  br i1 %i.be, label %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i.i", label %bb.n

bb.n:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.j, align 8, !alias.scope !20574, !noalias !20546, !nonnull !27, !noundef !27
  %i.bg = sub nuw nsw i64 -32, %i.ay
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !20605
  br label %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i.i"

"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i.i": ; preds = %bb.n, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i.i, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20618)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !20621, !noalias !20546, !noundef !27 ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i.i", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20622)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !20625, !noalias !20546, !noundef !27 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i11.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %i.bi, align 8, !alias.scope !20625, !noalias !20546, !nonnull !27, !noundef !27 ; 3 uses
  %.val13.i.i.i.i.i.i.i1.i.i = load <16 x i8>, ptr %i.bp, align 16, !noalias !20626
  %i.bq = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i1.i.i, splat (i8 -1)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = bitcast <16 x i1> %i.bq to i16
  br label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit.i", %bb.p
  %.sroa.06.017.i.i.i.i.i.i2.i.i = phi ptr [ %i.bp, %bb.p ], [ %.sroa.06.1.i.i.i.i.i.i9.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i3.i.i = phi ptr [ %i.br, %bb.p ], [ %.sroa.6.1.i.i.i.i.i.i8.i.i, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i4.i.i = phi i16 [ %i.bs, %bb.p ], [ %i.cb, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i5.i.i = phi i64 [ %i.bn, %bb.p ], [ %i.ce, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E.exit.i" ]
  %.not13.i.i.i.i.i.i.i6.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i4.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i6.i.i, label %.lr.ph.i.i.i.i.i.i.i12.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i7.i.i"

.lr.ph.i.i.i.i.i.i.i12.i.i:                       ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i12.i.i
  %i.bt = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i12.i.i ], [ %.sroa.6.016.i.i.i.i.i.i3.i.i, %bb.q ] ; 2 uses
  %i.bu = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i12.i.i ], [ %.sroa.06.017.i.i.i.i.i.i2.i.i, %bb.q ]
  %.val911.i.i.i.i.i.i.i13.i.i = load <16 x i8>, ptr %i.bt, align 16, !noalias !20629
  %i.bv = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i13.i.i, splat (i8 -1)
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -512 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i14.i.i = bitcast <16 x i1> %i.bv to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i15.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i14.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i15.i.i, label %.lr.ph.i.i.i.i.i.i.i12.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i7.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i7.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i12.i.i, %bb.q
end_hunk_6
begin_hunk_7_@"_ZN4core3ptr51drop_in_place$LT$rhai..types..fn_ptr..FnPtrType$GT$17hb06e1a688e95a5d9E":bb.a

"_ZN4core3ptr385drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$rhai..func..native..NativeCallContext$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h1c701cd37b4f557cE.exit": ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22422)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !22425, !nonnull !27, !noundef !27
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !22425
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %"_ZN4core3ptr385drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$rhai..func..native..NativeCallContext$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h1c701cd37b4f557cE.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h534c90ae505f04c7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %"_ZN4core3ptr385drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$rhai..func..native..NativeCallContext$C$$RF$mut$u20$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u5d$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h1c701cd37b4f557cE.exit"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22426)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !22426, !nonnull !27, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !22426, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22429)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.e, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22435)
  %i.f = load i64, ptr %i.d, align 8, !range !322, !alias.scope !22438, !noalias !22426, !noundef !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !22438, !noalias !22426 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.h, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !22438, !noalias !22426, !nonnull !27, !noundef !27
  %i.j = shl nuw i64 %.val.i.i.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !22439
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !22438, !noalias !22426 ; 2 uses
  %i.k = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val3.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !22438, !noalias !22426, !nonnull !27, !noundef !27
  %i.m = shl nuw i64 %.val2.i.i.i.i.i, 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !22439
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %.val4.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !22438, !noalias !22426, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !22439
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i": ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.n = icmp eq i64 %i.e, %.val1.i
  br i1 %i.n, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h90b415087300b542E.exit.i.i.i", %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !28, !alias.scope !22426, !noundef !27 ; 2 uses
  %i.o = icmp eq i64 %.val2.i, 0
  br i1 %i.o, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h8fb2af3d4600c0ceE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i"
  %i.p = mul nuw i64 %.val2.i, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22426
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h8fb2af3d4600c0ceE.exit"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h8fb2af3d4600c0ceE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29ec94fadb9a05b6E.exit.i", %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22440)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !22440, !nonnull !27, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !22440, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22443)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.e, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.010.i.i.i, 1        ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.d, align 8, !range !8078, !alias.scope !22443, !noalias !22440, !noundef !27 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !22443, !noalias !22440 ; 4 uses
  switch i64 %.val8.i.i.i, label %bb.b [
    i64 -9223372036854775808, label %bb.c
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i"
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = shl nuw i64 %.val8.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !22446
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef 8192, i64 noundef 8) #65, !noalias !22446
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i": ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.h = icmp eq i64 %i.e, %.val1.i
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i", %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !28, !alias.scope !22440, !noundef !27 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h986190412c51a16fE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i"
  %i.j = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22440
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h986190412c51a16fE.exit"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h986190412c51a16fE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr529drop_in_place$LT$rayon_core..thread_pool..ThreadPool..install$LT$milli..update..new..indexer..index$LT$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$milli..update..new..merger..FacetFieldIdsDelta$C$milli..update..new..indexer..word_delta..WordDelta$C$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$RP$$C$milli..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd126deeadddb6edeE"(ptr noalias noundef nonnull align 8 dereferenceable(1240) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef nonnull align 8 dereferenceable(1240) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$milli..update..new..channel..ExtractorBbqueueSender$GT$17h22eb0afccf98e0f7E"(ptr noalias noundef align 8 dereferenceable(544) %i.b) #67
          to label %bb.d unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$milli..update..new..channel..ExtractorBbqueueSender$GT$17h22eb0afccf98e0f7E"(ptr noalias noundef align 8 dereferenceable(544) %i.c)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 728
  tail call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E"(ptr noalias noundef align 8 dereferenceable(512) %i.d) #67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #67
          to label %bb.k unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22453)
  br label %bb.g

bb.g:                                             ; preds = %.backedge.i.i.i.i, %bb.f
  %.sroa.0.0.idx12.i.i.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.add.i.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.h, %.backedge.i.i.i.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.0.idx12.i.i.i.i
  %.sroa.0.0.add.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i, 8 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.7.011.i.i.i.i, 1
  %i.i = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i, align 8, !alias.scope !22456, !noundef !27 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.backedge.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = shl nuw i64 1, %.sroa.7.011.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22459)
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i", %bb.h
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.m, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i" ], [ 0, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 24
  %.val9.i.i.i.i.i.i = load i8, ptr %i.n, align 1, !range !1558, !alias.scope !22459, !noalias !22462, !noundef !27
  %i.o = trunc nuw i8 %.val9.i.i.i.i.i.i to i1
  br i1 %i.o, label %bb.i, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %.val8.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !22459, !noalias !22462, !nonnull !27, !noundef !27 ; 2 uses
  %i.q = icmp eq ptr %.val8.i.i.i.i.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.q, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i.i.i.i.i, %bb.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !22463, !nonnull !27, !noundef !27 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !22463, !nonnull !27, !noundef !27
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 16, !noalias !22463, !noundef !27
  %i.x = load i64, ptr %i.u, align 8, !range !4612, !noalias !22463, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.w, i64 noundef %i.x) #65, !noalias !22463
  %i.y = icmp eq ptr %i.s, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.y, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i.i.i.i
  %i.z = icmp eq i64 %i.m, %i.k
  br i1 %i.z, label %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i.i"
  %i.aa = shl nuw i64 32, %.sroa.7.011.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.aa, i64 noundef 8) #65, !noalias !22462
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i.i", %bb.g
  %i.ab = icmp eq i64 %.sroa.0.0.add.i.i.i.i, 504
  br i1 %i.ab, label %"_ZN4core3ptr223drop_in_place$LT$milli..update..new..indexer..index$LT$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h6ec6872d6352ea18E.exit", label %bb.g

bb.j:                                             ; preds = %bb.d, %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

bb.k:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn.i

"_ZN4core3ptr223drop_in_place$LT$milli..update..new..indexer..index$LT$milli..update..new..indexer..document_operation..DocumentOperationChanges$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h6ec6872d6352ea18E.exit": ; preds = %.backedge.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E"(ptr noalias noundef align 8 dereferenceable(24) %i.ad)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr52drop_in_place$LT$cellulite..builder..FrozenItems$GT$17h1e2e5fef4b2f2270E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22467)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !22470, !nonnull !27, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.b, align 8, !alias.scope !22470, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22471)
  %i.c = icmp eq i64 %.val1.i.i, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bc12ce8ec38fceeE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.e, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.011.i.i.i.i, 1      ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !22471, !noalias !22470 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !22471, !noalias !22470, !nonnull !27, !noundef !27
  %i.h = mul nuw i64 %.val8.i.i.i.i, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22474
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i"

"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.i = icmp eq i64 %i.e, %.val1.i.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bc12ce8ec38fceeE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bc12ce8ec38fceeE.exit.i.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i", %bb.a
  %.val2.i.i = load i64, ptr %0, align 8, !range !28, !alias.scope !22470, !noundef !27 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr69drop_in_place$LT$intmap..IntMap$LT$u32$C$zerometry..Zerometry$GT$$GT$17h463a7183ea84f54cE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bc12ce8ec38fceeE.exit.i.i"
  %i.k = mul nuw i64 %.val2.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22470
  br label %"_ZN4core3ptr69drop_in_place$LT$intmap..IntMap$LT$u32$C$zerometry..Zerometry$GT$$GT$17h463a7183ea84f54cE.exit"

"_ZN4core3ptr69drop_in_place$LT$intmap..IntMap$LT$u32$C$zerometry..Zerometry$GT$$GT$17h463a7183ea84f54cE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bc12ce8ec38fceeE.exit.i.i", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..builder..arg..Arg$GT$17hc03e91d7e8bd9271E"(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(640) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.val57 = load i64, ptr %i.a, align 8, !range !8078, !noundef !27 ; 2 uses
  %switch = icmp sgt i64 %.val57, 0
  br i1 %switch, label %bb.b, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val58 = load ptr, ptr %i.b, align 8, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %.val57, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22475
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit"

"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit": ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.val53 = load i64, ptr %i.c, align 8, !range !8078, !noundef !27 ; 2 uses
  %switch118 = icmp sgt i64 %.val53, 0
  br i1 %switch118, label %bb.c, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit96"

bb.c:                                             ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.val54 = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val54, i64 noundef %.val53, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22480
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit96"

"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit96": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit", %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22485)
  %i.f = load i64, ptr %i.e, align 8, !range !16368, !alias.scope !22485, !noundef !27 ; 2 uses
  %i.g = icmp eq i64 %i.f, 5
  br i1 %i.g, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17he048733bf9107c68E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit96"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22491)
  %switch.i.i.i = icmp samesign ult i64 %i.f, 4
  br i1 %switch.i.i.i, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17he048733bf9107c68E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !22494 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !22494, !nonnull !27, !align !241, !noundef !27 ; 5 uses
  %i.j = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !27, !noalias !22494 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i.i)
          to label %bb.g unwind label %bb.h, !noalias !22494

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !28, !invariant.load !27, !noalias !22494 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !4400, !invariant.load !27, !noalias !22494 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17he048733bf9107c68E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #65, !noalias !22494
  br label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17he048733bf9107c68E.exit"

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !28, !invariant.load !27, !noalias !22494 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !4400, !invariant.load !27, !noalias !22494 ; 2 uses
  %i.v = icmp ult i64 %i.u, -9223372036854775807
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.u) #65, !noalias !22494
  br label %.body

.body:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val51 = load i64, ptr %i.x, align 8           ; 2 uses
  %i.y = icmp eq i64 %.val51, 0
  br i1 %i.y, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h258d2f212b9174beE.exit", label %bb.i

bb.i:                                             ; preds = %.body
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val52 = load ptr, ptr %i.z, align 8, !nonnull !27, !noundef !27
  %i.aa = shl nuw i64 %.val51, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h258d2f212b9174beE.exit"

"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17he048733bf9107c68E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.g, %bb.d, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$17hd293846f1889c344E.exit96"
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val49 = load i64, ptr %i.ab, align 8          ; 2 uses
  %i.ac = icmp eq i64 %.val49, 0
  br i1 %i.ac, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h258d2f212b9174beE.exit97", label %bb.j
end_hunk_7
begin_hunk_8_@_ZN5milli6update3new7indexer5index17h2c84462c8eff313bE:bb.a

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !27 ; 2 uses
  store i64 %i.ds, ptr %i.da, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6237)
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.du = atomicrmw add ptr %i.dt, i64 1 monotonic, align 8, !noalias !34365 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !34365
  %i.dv = load ptr, ptr %3, align 8, !noalias !34365, !nonnull !27, !noundef !27 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 128 ; 2 uses
  %i.dx = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN10rayon_core8registry19WORKER_THREAD_STATE29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hc308a4bd969f62fdE") ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.dx, align 8, !noalias !34370, !noundef !27 ; 3 uses
  %i.dy = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.dy, label %bb.d, label %bb.e, !prof !29

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN10rayon_core8registry8Registry14in_worker_cold17hf418ae106d12820fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(624) %i.bq, ptr noundef nonnull align 128 %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.da)
          to label %_ZN10rayon_core8registry8Registry9in_worker17h9ab7c7cbd7f6015fE.exit.i unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 272
  %i.ea = load ptr, ptr %i.dz, align 16, !noalias !34370, !nonnull !27, !noundef !27
  %.not.i.i = icmp eq ptr %i.ea, %i.dv
  br i1 %.not.i.i, label %bb.f, label %bb.g, !prof !158

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5milli6update3new7channel24extractor_writer_bbqueue17h201c9a22b35db941E(ptr noalias noundef nonnull sret([624 x i8]) align 8 captures(address) dereferenceable(624) %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef %i.ds, i64 noundef 1000)
          to label %_ZN10rayon_core8registry8Registry9in_worker17h9ab7c7cbd7f6015fE.exit.i unwind label %bb.b

bb.g:                                             ; preds = %bb.e
  invoke fastcc void @_ZN10rayon_core8registry8Registry15in_worker_cross17h1ff5757443f6c0bfE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(624) %i.bq, ptr noundef nonnull align 128 %i.dw, ptr noundef nonnull align 128 %.val.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.da)
          to label %_ZN10rayon_core8registry8Registry9in_worker17h9ab7c7cbd7f6015fE.exit.i unwind label %bb.b

_ZN10rayon_core8registry8Registry9in_worker17h9ab7c7cbd7f6015fE.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.eb = atomicrmw sub ptr %i.dt, i64 1 monotonic, align 8, !noalias !34365 ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !34365, !nonnull !27, !noundef !27
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = atomicrmw xchg ptr %i.ee, i8 0 seq_cst, align 1, !noalias !34375
  %i.eg = icmp eq i8 %i.ef, 0
  br i1 %i.eg, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN10rayon_core8registry8Registry9in_worker17h9ab7c7cbd7f6015fE.exit.i
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$milli..update..new..channel..ExtractorBbqueueSender$GT$17h22eb0afccf98e0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(624) %i.bq)
          to label %"_ZN4core3ptr133drop_in_place$LT$$LP$milli..update..new..channel..ExtractorBbqueueSender$C$milli..update..new..channel..WriterBbqueueReceiver$RP$$GT$17h31bf33c7afa6ee99E.exit.i" unwind label %bb.i, !noalias !34375

bb.i:                                             ; preds = %bb.h
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 544
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hde2e1750286b8783E"(ptr noalias noundef align 8 dereferenceable(80) %i.ei) #67
          to label %.body124.thread unwind label %bb.j, !noalias !34375

.body124.thread:                                  ; preds = %bb.i
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bbqueue..bbbuffer..BBBuffer$GT$$GT$17h5012d7206ddef755E"(ptr noalias noundef align 8 dereferenceable(24) %i.de) #67
  br label %bb.mt

bb.j:                                             ; preds = %bb.i
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !34375
  unreachable

"_ZN4core3ptr133drop_in_place$LT$$LP$milli..update..new..channel..ExtractorBbqueueSender$C$milli..update..new..channel..WriterBbqueueReceiver$RP$$GT$17h31bf33c7afa6ee99E.exit.i": ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bq, i64 544
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hde2e1750286b8783E"(ptr noalias noundef align 8 dereferenceable(80) %i.ek)
          to label %.thread unwind label %bb.b

.thread:                                          ; preds = %"_ZN4core3ptr133drop_in_place$LT$$LP$milli..update..new..channel..ExtractorBbqueueSender$C$milli..update..new..channel..WriterBbqueueReceiver$RP$$GT$17h31bf33c7afa6ee99E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !34365
  br label %bb.l

bb.k:                                             ; preds = %_ZN10rayon_core8registry8Registry9in_worker17h9ab7c7cbd7f6015fE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(544) %i.bq, i64 544, i1 false), !noalias !34376
  %.sroa.4234.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %i.bq, i64 544
  %.sroa.4234.0.copyload236 = load i64, ptr %.sroa.4234.0..sroa_idx235, align 8, !noalias !34376 ; 2 uses
  %.sroa.6237.0..sroa_idx238 = getelementptr inbounds nuw i8, ptr %i.bq, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6237, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6237.0..sroa_idx238, i64 72, i1 false), !noalias !34376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !34365
  %i.el = icmp eq i64 %.sroa.4234.0.copyload236, -9223372036854775808
  br i1 %i.el, label %bb.l, label %bb.m, !prof !6367

bb.l:                                             ; preds = %.thread, %bb.k
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @455, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @467, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @834) #66
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.cy, ptr noundef nonnull align 8 dereferenceable(544) %.sroa.0, i64 544, i1 false)
  %.sroa.6241.544..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6241.544..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6237, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6237)
  store i64 %.sroa.4234.0.copyload236, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  invoke void @_ZN5milli14fields_ids_map8metadata15MetadataBuilder10from_index17h46a646a6f3a5dfa5E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.o unwind label %bb.n

"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit230": ; preds = %bb.mh, %bb.s, %bb.n
  %.sroa.048.2 = phi i8 [ %.sroa.048.3, %bb.n ], [ 0, %bb.s ], [ 0, %bb.mh ] ; 2 uses
  %.sroa.046.2 = phi i8 [ 1, %bb.n ], [ %.sroa.046.4, %bb.s ], [ %.sroa.046.4600, %bb.mh ] ; 2 uses
  %.sroa.042.0 = phi i8 [ %.sroa.042.1, %bb.n ], [ %.sroa.042.2, %bb.s ], [ %.sroa.042.2601, %bb.mh ]
  %.pn110 = phi { ptr, i32 } [ %i.en, %bb.n ], [ %.pn108, %bb.s ], [ %.pn108602, %bb.mh ] ; 2 uses
  %i.em = trunc nuw i8 %.sroa.042.0 to i1
  br i1 %i.em, label %bb.mr, label %.body124

bb.n:                                             ; preds = %bb.md, %bb.q, %bb.m
  %.sroa.048.3 = phi i8 [ 0, %bb.md ], [ 0, %bb.q ], [ 1, %bb.m ]
  %.sroa.042.1 = phi i8 [ %.sroa.036.10, %bb.md ], [ 1, %bb.q ], [ 1, %bb.m ]
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit230"

bb.o:                                             ; preds = %bb.m
  %i.eo = load i64, ptr %i.cw, align 8, !range !4698, !noundef !27 ; 2 uses
  %.not = icmp eq i64 %i.eo, 97
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(312) %i.ep, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.255.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, i64 312, i1 false)
  store i64 %i.eo, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.mf

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.cv, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.6, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  invoke void @_ZN5milli14fields_ids_map8metadata22FieldIdMapWithMetadata3new17ha90ecb79b1012ce2E(ptr noalias noundef nonnull sret([392 x i8]) align 8 captures(address) dereferenceable(392) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ct, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(312) %i.cv)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.eq, ptr noundef nonnull align 8 dereferenceable(392) %i.cu, i64 392, i1 false)
  store i64 0, ptr %i.cs, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  store i8 0, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.es = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.t unwind label %.thread595 ; 2 uses

bb.s:                                             ; preds = %.split, %.loopexit, %bb.mg, %bb.x
  %.sroa.046.4 = phi i8 [ 1, %bb.x ], [ 1, %bb.mg ], [ %.sroa.040.19, %.loopexit ], [ 1, %.split ] ; 2 uses
  %.sroa.042.2 = phi i8 [ 1, %bb.x ], [ %.sroa.042.4265, %bb.mg ], [ %.sroa.036.10, %.loopexit ], [ 0, %.split ] ; 2 uses
  %.sroa.040.0 = phi i8 [ %.sroa.040.6.ph, %bb.x ], [ %.sroa.040.2266, %bb.mg ], [ %.sroa.040.19, %.loopexit ], [ %.sroa.040.8, %.split ]
  %.pn108 = phi { ptr, i32 } [ %.pn102.ph, %bb.x ], [ %.pn106267, %bb.mg ], [ %lpad.loopexit, %.loopexit ], [ %.pn100, %.split ] ; 2 uses
  %i.et = trunc nuw i8 %.sroa.040.0 to i1
  br i1 %i.et, label %bb.mh, label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit230"

.loopexit:                                        ; preds = %bb.mc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.thread595:                                       ; preds = %bb.w, %bb.u, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !34377
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bp, i8 0, i64 504, i1 false), !noalias !34377
  %i.eu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.es, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i, label %bb.u, label %bb.v, !prof !6611

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66
          to label %.noexc127 unwind label %.thread595

.noexc127:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %.idx.i = sub nuw nsw i64 512, %i.ev
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i
  %i.ex = icmp eq i64 %i.es, 0
  br i1 %i.ex, label %.loopexit368, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i
  %.sroa.0.014.i = phi ptr [ %i.ey, %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i ], [ %i.bp, %bb.v ] ; 2 uses
  %.sroa.7.013.i = phi i64 [ %i.ez, %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i ], [ 0, %bb.v ] ; 7 uses
  %notmask = shl nsw i64 -1, %.sroa.7.013.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 8 ; 2 uses
  %i.ez = add nuw nsw i64 %.sroa.7.013.i, 1
  %i.fa = shl nuw i64 1, %.sroa.7.013.i           ; 2 uses
  %i.fb = shl i64 96, %.sroa.7.013.i              ; 2 uses
  %exitcond.i = icmp eq i64 %.sroa.7.013.i, 57
  br i1 %exitcond.i, label %bb.w, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !4065

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !34380
  %i.fc = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fb, i64 noundef range(i64 1, 9) 8) #65, !noalias !34380 ; 11 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.fa, 7
  %14 = icmp samesign ugt i64 %notmask, -8
  br i1 %14, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.fa, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc128 unwind label %.thread595

.noexc128:                                        ; preds = %bb.w
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.fe = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw [96 x i8], ptr %i.fc, i64 %i.fe
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !34393
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %i.fc, i64 %i.fe
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.fg, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !34393
  %i.fh = getelementptr inbounds nuw [96 x i8], ptr %i.fc, i64 %i.fe
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.fh, i64 280
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !34393
  %i.fi = getelementptr inbounds nuw [96 x i8], ptr %i.fc, i64 %i.fe
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.fi, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !34393
  %i.fj = getelementptr inbounds nuw [96 x i8], ptr %i.fc, i64 %i.fe
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.fj, i64 472
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !34393
  %i.fk = getelementptr inbounds nuw [96 x i8], ptr %i.fc, i64 %i.fe
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.fk, i64 568
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !34393
  %i.fl = getelementptr inbounds nuw [96 x i8], ptr %i.fc, i64 %i.fe
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.fl, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !34393
  %i.fm = add nuw nsw i64 %i.fe, 8                ; 2 uses
  %i.fn = getelementptr inbounds nuw [96 x i8], ptr %i.fc, i64 %i.fe
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.fn, i64 760
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !34393
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp samesign ugt i64 %.sroa.7.013.i, 2
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:    ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fm, %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i.unr-lcssa ]
  %lcmp.mod923 = icmp samesign ult i64 %.sroa.7.013.i, 3
  call void @llvm.assume(i1 %lcmp.mod923)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.fo = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.fp = add nuw nsw i64 %i.fo, 1
  %i.fq = getelementptr inbounds nuw [96 x i8], ptr %i.fc, i64 %i.fo
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !34393
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !34410

_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i.unr-lcssa
  store ptr %i.fc, ptr %.sroa.0.014.i, align 8, !noalias !34377
  %i.fr = icmp eq ptr %i.ey, %i.ew
  br i1 %i.fr, label %.loopexit368, label %.lr.ph.i

.loopexit368:                                     ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd77f46ae29e640c3E.exit.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.cr, ptr noundef nonnull align 8 dereferenceable(504) %i.bp, i64 504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !34377
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 504
  store i64 0, ptr %.sroa.4252.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.fs = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.y unwind label %.thread258 ; 2 uses

bb.x:                                             ; preds = %bb.lw, %bb.ag, %bb.lu, %.body.i209
  %.sroa.040.6.ph = phi i8 [ 1, %.body.i209 ], [ 1, %bb.lu ], [ 1, %bb.ag ], [ %.sroa.040.8, %bb.lw ] ; 2 uses
  %.sroa.038.4.ph = phi i8 [ %.sroa.038.15322, %.body.i209 ], [ %.sroa.038.15322, %bb.lu ], [ 1, %bb.ag ], [ %.sroa.038.6, %bb.lw ]
  %.pn102.ph = phi { ptr, i32 } [ %i.aij, %.body.i209 ], [ %i.aij, %bb.lu ], [ %i.im, %bb.ag ], [ %.pn100, %bb.lw ] ; 2 uses
  call fastcc void @"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17ha5372ffdd1287668E"(ptr noalias noundef align 8 dereferenceable(512) %i.cp) #67
  %i.ft = trunc nuw i8 %.sroa.038.4.ph to i1
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E"(ptr noalias noundef align 8 dereferenceable(512) %i.cq) #67
  br i1 %i.ft, label %bb.mg, label %bb.s

.thread258:                                       ; preds = %.loopexit368, %bb.z, %bb.ab
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.mg

bb.y:                                             ; preds = %.loopexit368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !34411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bo, i8 0, i64 504, i1 false), !noalias !34411
  %i.fv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fs, i1 false) ; 2 uses
  %.not.i129 = icmp eq i64 %i.fv, 0
  br i1 %.not.i129, label %bb.z, label %bb.aa, !prof !6611

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66
          to label %.noexc140 unwind label %.thread258

.noexc140:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %.idx.i130 = sub nuw nsw i64 512, %i.fw
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i130
  %i.fy = icmp eq i64 %i.fs, 0
  br i1 %i.fy, label %.loopexit367, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.aa, %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i
  %.sroa.0.014.i132 = phi ptr [ %i.fz, %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i ], [ %i.bo, %bb.aa ] ; 2 uses
  %.sroa.7.013.i133 = phi i64 [ %i.ga, %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i ], [ 0, %bb.aa ] ; 7 uses
  %notmask940 = shl nsw i64 -1, %.sroa.7.013.i133
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i132, i64 8 ; 2 uses
  %i.ga = add nuw nsw i64 %.sroa.7.013.i133, 1
  %i.gb = shl nuw i64 1, %.sroa.7.013.i133        ; 2 uses
  %i.gc = shl i64 32, %.sroa.7.013.i133           ; 2 uses
  %exitcond.i134 = icmp eq i64 %.sroa.7.013.i133, 58
  br i1 %exitcond.i134, label %bb.ab, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135, !prof !4065

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135: ; preds = %.lr.ph.i131
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !34414
  %i.gd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gc, i64 noundef range(i64 1, 9) 8) #65, !noalias !34414 ; 11 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.ab, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader:      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135
  %xtraiter924 = and i64 %i.gb, 7
  %15 = icmp samesign ugt i64 %notmask940, -8
  br i1 %15, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader.new:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader
  %unroll_iter930 = and i64 %i.gb, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136

bb.ab:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135, %.lr.ph.i131
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i139 = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i135 ], [ 0, %.lr.ph.i131 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i139, i64 %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc141 unwind label %.thread258

.noexc141:                                        ; preds = %bb.ab
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader.new
  %i.gf = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader.new ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136 ] ; 9 uses
  %niter931 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader.new ], [ %niter931.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136 ]
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137 = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137, align 8, !noalias !34427
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.1 = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.1, align 8, !noalias !34427
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.2 = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.2, align 8, !noalias !34427
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.3 = getelementptr inbounds nuw i8, ptr %i.gj, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.3, align 8, !noalias !34427
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.4 = getelementptr inbounds nuw i8, ptr %i.gk, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.4, align 8, !noalias !34427
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.5 = getelementptr inbounds nuw i8, ptr %i.gl, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.5, align 8, !noalias !34427
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.6 = getelementptr inbounds nuw i8, ptr %i.gm, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.6, align 8, !noalias !34427
  %i.gn = add nuw nsw i64 %i.gf, 8                ; 2 uses
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.7 = getelementptr inbounds nuw i8, ptr %i.go, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.7, align 8, !noalias !34427
  %niter931.next.7 = add i64 %niter931, 8         ; 2 uses
  %niter931.ncmp.7 = icmp eq i64 %niter931.next.7, %unroll_iter930
  br i1 %niter931.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136

_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136
  %lcmp.mod928.not = icmp samesign ugt i64 %.sroa.7.013.i133, 2
  br i1 %lcmp.mod928.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil.preheader: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader
  %.epil.init927 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.preheader ], [ %i.gn, %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i.unr-lcssa ]
  %lcmp.mod929 = icmp samesign ult i64 %.sroa.7.013.i133, 3
  call void @llvm.assume(i1 %lcmp.mod929)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil.preheader
  %i.gp = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil ], [ %.epil.init927, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil.preheader ] ; 2 uses
  %epil.iter925 = phi i64 [ %epil.iter925.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil.preheader ]
  %i.gq = add nuw nsw i64 %i.gp, 1
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.gp
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.epil = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i137.epil, align 8, !noalias !34427
  %epil.iter925.next = add i64 %epil.iter925, 1   ; 2 uses
  %epil.iter925.cmp.not = icmp eq i64 %epil.iter925.next, %xtraiter924
  br i1 %epil.iter925.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil, !llvm.loop !34444

_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i136.epil, %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i.unr-lcssa
  store ptr %i.gd, ptr %.sroa.0.014.i132, align 8, !noalias !34411
  %i.gs = icmp eq ptr %i.fz, %i.fx
  br i1 %i.gs, label %.loopexit367, label %.lr.ph.i131

.loopexit367:                                     ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h88144c68e57538ecE.exit.i, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.cq, ptr noundef nonnull align 8 dereferenceable(504) %i.bo, i64 504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !34411
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 504
  store i64 0, ptr %.sroa.4254.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.gt = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.ac unwind label %.thread639 ; 2 uses

.split:                                           ; preds = %bb.ak
  call fastcc void @"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17ha5372ffdd1287668E"(ptr noalias noundef align 8 dereferenceable(512) %i.cp) #67
  %i.gu = trunc nuw i8 %.sroa.038.6 to i1
  br i1 %i.gu, label %bb.mg, label %bb.s

.thread639:                                       ; preds = %bb.af, %bb.ad, %.loopexit367
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E"(ptr noalias noundef align 8 dereferenceable(512) %i.cq) #67
  br label %bb.mg

bb.ac:                                            ; preds = %.loopexit367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !34445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.bn, i8 0, i64 504, i1 false), !noalias !34445
  %i.gw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gt, i1 false) ; 2 uses
  %.not.i142 = icmp eq i64 %i.gw, 0
  br i1 %.not.i142, label %bb.ad, label %bb.ae, !prof !6611

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66
          to label %.noexc153 unwind label %.thread639

.noexc153:                                        ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.gx = shl nuw nsw i64 %i.gw, 3
  %.idx.i143 = sub nuw nsw i64 512, %i.gx
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i143
  %i.gz = icmp eq i64 %i.gt, 0
  br i1 %i.gz, label %.loopexit366, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.ae, %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i
  %.sroa.0.014.i145 = phi ptr [ %i.ha, %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i ], [ %i.bn, %bb.ae ] ; 2 uses
  %.sroa.7.013.i146 = phi i64 [ %i.hb, %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i ], [ 0, %bb.ae ] ; 7 uses
  %notmask941 = shl nsw i64 -1, %.sroa.7.013.i146
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i145, i64 8 ; 2 uses
  %i.hb = add nuw nsw i64 %.sroa.7.013.i146, 1
  %i.hc = shl nuw i64 1, %.sroa.7.013.i146        ; 2 uses
  %i.hd = shl i64 32, %.sroa.7.013.i146           ; 2 uses
  %exitcond.i147 = icmp eq i64 %.sroa.7.013.i146, 58
  br i1 %exitcond.i147, label %bb.af, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148, !prof !4065

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148: ; preds = %.lr.ph.i144
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !34448
  %i.he = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.hd, i64 noundef range(i64 1, 9) 8) #65, !noalias !34448 ; 11 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.af, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader:      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148
  %xtraiter932 = and i64 %i.hc, 7
  %16 = icmp samesign ugt i64 %notmask941, -8
  br i1 %16, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader.new:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader
  %unroll_iter938 = and i64 %i.hc, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149

bb.af:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148, %.lr.ph.i144
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i152 = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i148 ], [ 0, %.lr.ph.i144 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i152, i64 %i.hd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc154 unwind label %.thread639

.noexc154:                                        ; preds = %bb.af
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader.new
  %i.hg = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader.new ], [ %i.ho, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149 ] ; 9 uses
  %niter939 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader.new ], [ %niter939.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149 ]
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hg
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150 = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150, align 8, !noalias !34461
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hg
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.1 = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.1, align 8, !noalias !34461
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hg
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.2 = getelementptr inbounds nuw i8, ptr %i.hj, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.2, align 8, !noalias !34461
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hg
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.3 = getelementptr inbounds nuw i8, ptr %i.hk, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.3, align 8, !noalias !34461
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hg
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.4 = getelementptr inbounds nuw i8, ptr %i.hl, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.4, align 8, !noalias !34461
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hg
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.5 = getelementptr inbounds nuw i8, ptr %i.hm, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.5, align 8, !noalias !34461
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hg
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.6 = getelementptr inbounds nuw i8, ptr %i.hn, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.6, align 8, !noalias !34461
  %i.ho = add nuw nsw i64 %i.hg, 8                ; 2 uses
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hg
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.7 = getelementptr inbounds nuw i8, ptr %i.hp, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.7, align 8, !noalias !34461
  %niter939.next.7 = add i64 %niter939, 8         ; 2 uses
  %niter939.ncmp.7 = icmp eq i64 %niter939.next.7, %unroll_iter938
  br i1 %niter939.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149

_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149
  %lcmp.mod936.not = icmp samesign ugt i64 %.sroa.7.013.i146, 2
  br i1 %lcmp.mod936.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil.preheader: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader
  %.epil.init935 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.preheader ], [ %i.ho, %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i.unr-lcssa ]
  %lcmp.mod937 = icmp samesign ult i64 %.sroa.7.013.i146, 3
  call void @llvm.assume(i1 %lcmp.mod937)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil.preheader
  %i.hq = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil ], [ %.epil.init935, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil.preheader ] ; 2 uses
  %epil.iter933 = phi i64 [ %epil.iter933.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil.preheader ]
  %i.hr = add nuw nsw i64 %i.hq, 1
  %i.hs = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hq
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.epil = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i150.epil, align 8, !noalias !34461
  %epil.iter933.next = add i64 %epil.iter933, 1   ; 2 uses
  %epil.iter933.cmp.not = icmp eq i64 %epil.iter933.next, %xtraiter932
  br i1 %epil.iter933.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil, !llvm.loop !34478

_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i149.epil, %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i.unr-lcssa
  store ptr %i.he, ptr %.sroa.0.014.i145, align 8, !noalias !34445
  %i.ht = icmp eq ptr %i.ha, %i.gy
  br i1 %i.ht, label %.loopexit366, label %.lr.ph.i144

.loopexit366:                                     ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17he47c27bed9008436E.exit.i, %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.cp, ptr noundef nonnull align 8 dereferenceable(504) %i.bn, i64 504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !34445
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 504
  store i64 0, ptr %.sroa.4256.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr %2, ptr %i.co, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %5, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.cs, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr %i.cp, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store ptr %i.cr, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store ptr %10, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store ptr %11, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store ptr %i.db, ptr %i.ia, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !noundef !27
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ie = load i32, ptr %i.id, align 8, !noundef !27
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.ig = load i64, ptr %i.if, align 8, !noundef !27
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.ii = load i32, ptr %i.ih, align 8, !noundef !27
  store i64 %i.ic, ptr %i.cl, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.ie, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.ig, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i32 %i.ii, ptr %i.il, align 8
  invoke void @_ZN5milli6vector2db21IndexEmbeddingConfigs17embedding_configs17h868b98d977ebc6e6E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.loopexit366
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.ah:                                            ; preds = %.loopexit366
  %i.in = load i64, ptr %i.cm, align 8, !range !450, !noundef !27
  %i.io = trunc nuw i64 %i.in to i1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.ip, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br i1 %i.io, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bx)
          to label %bb.lx unwind label %bb.ag

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  invoke void @_ZN5milli5index5Index18field_distribution17h99246b81cd58d2b8E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.al unwind label %.loopexit.split-lp354

bb.ak:                                            ; preds = %.loopexit353, %.loopexit.split-lp354, %bb.ll
  %.sroa.040.8 = phi i8 [ %.sroa.040.10.ph, %bb.ll ], [ 1, %.loopexit.split-lp354 ], [ 1, %.loopexit353 ] ; 3 uses
  %.sroa.038.6 = phi i8 [ %.sroa.038.8.ph, %bb.ll ], [ %.sroa.038.7.ph, %.loopexit.split-lp354 ], [ %.sroa.038.14305, %.loopexit353 ] ; 2 uses
  %.sroa.034.0 = phi i8 [ %.sroa.034.2.ph, %bb.ll ], [ %.sroa.034.1.ph, %.loopexit.split-lp354 ], [ %.sroa.034.4306, %.loopexit353 ]
  %.pn100 = phi { ptr, i32 } [ %.pn98.ph, %bb.ll ], [ %lpad.loopexit.split-lp356, %.loopexit.split-lp354 ], [ %lpad.loopexit355, %.loopexit353 ] ; 3 uses
  %i.iq = trunc nuw i8 %.sroa.034.0 to i1
  br i1 %i.iq, label %bb.lw, label %.split

.loopexit353:                                     ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb46f7055e9cf46efE.exit.i.i.i.i"
  %lpad.loopexit355 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp354:                            ; preds = %bb.aj, %bb.am, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1eca37ead4c2bc4E.exit.i.i"
  %.sroa.038.7.ph = phi i8 [ 1, %bb.aj ], [ %.sroa.038.14305, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1eca37ead4c2bc4E.exit.i.i" ], [ 1, %bb.am ]
  %.sroa.034.1.ph = phi i8 [ 1, %bb.aj ], [ %.sroa.034.4306, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1eca37ead4c2bc4E.exit.i.i" ], [ 1, %bb.am ]
  %lpad.loopexit.split-lp356 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.al:                                            ; preds = %bb.aj
  %i.ir = load i64, ptr %i.cj, align 8, !range !450, !noundef !27
  %i.is = trunc nuw i64 %i.ir to i1
  %i.it = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(24) %i.it, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br i1 %i.is, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bv)
          to label %.thread317 unwind label %.loopexit.split-lp354

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  invoke void @_ZN5milli5index5Index13documents_ids17h19819575a9a2e946E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

bb.ap:                                            ; preds = %bb.an
  %i.iv = load i64, ptr %i.ch, align 8, !range !450, !noundef !27
  %i.iw = trunc nuw i64 %i.iv to i1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br i1 %i.iw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bt)
          to label %.thread301 unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store i64 0, ptr %i.cg, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.565.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  store ptr %9, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  store ptr %i.dd, ptr %i.iz, align 16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  store ptr %i.ck, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.cf, i64 128
  store ptr %i.ci, ptr %i.jb, align 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.cf, i64 136
  store ptr %i.cg, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  store ptr %i.dh, ptr %i.jd, align 16
  %i.je = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  store ptr %i.dg, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cf, i64 160
  store ptr %i.co, ptr %i.jf, align 16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.cf, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.jg, ptr noundef nonnull align 8 dereferenceable(544) %i.cy, i64 544, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.cf, i64 752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.jh, ptr noundef nonnull align 8 dereferenceable(512) %i.cq, i64 512, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.cf, i64 712
  store ptr %i.df, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.cf, i64 720
  store ptr %i.cs, ptr %i.jj, align 16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cf, i64 728
  store ptr %2, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.cf, i64 736
  store ptr %1, ptr %i.jl, align 16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.jm, ptr noundef nonnull align 8 dereferenceable(80) %i.cx, i64 80, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.cf, i64 744
  store ptr %i.dc, ptr %i.jn, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !34479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !34482
  %i.jo = invoke noundef nonnull ptr @_ZN3std6thread7current18current_or_unnamed17hfd395f22545be61cE()
          to label %bb.as unwind label %.thread21.i, !noalias !34482 ; 2 uses

.thread21.i:                                      ; preds = %bb.ar
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.thread17.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !34482
  store i64 1, ptr %i.bj, align 8, !noalias !34482
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 1, ptr %i.jq, align 8, !noalias !34482
end_hunk_8
begin_hunk_9_@_ZN5milli6update3new7indexer5index17h2c84462c8eff313bE:bb.a
bb.lc:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !34982)
  call void @llvm.experimental.noalias.scope.decl(metadata !34985)
  %i.agl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.val.i.i184 = load ptr, ptr %i.agl, align 8, !alias.scope !34988, !nonnull !27, !noundef !27 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.val1.i.i185 = load i64, ptr %i.agm, align 8, !alias.scope !34988, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34989)
  %i.agn = icmp eq i64 %.val1.i.i185, 0
  br i1 %i.agn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i191", label %.lr.ph.i.i.i.i186

.lr.ph.i.i.i.i186:                                ; preds = %bb.lc, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i190"
  %.sroa.0.010.i.i.i.i187 = phi i64 [ %i.agp, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i190" ], [ 0, %bb.lc ] ; 2 uses
  %i.ago = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i184, i64 %.sroa.0.010.i.i.i.i187 ; 2 uses
  %i.agp = add nuw i64 %.sroa.0.010.i.i.i.i187, 1 ; 2 uses
  %.val8.i.i.i.i188 = load i64, ptr %i.ago, align 8, !range !8078, !alias.scope !34989, !noalias !34988, !noundef !27 ; 2 uses
  %i.agq = getelementptr i8, ptr %i.ago, i64 8
  %.val9.i.i.i.i189 = load ptr, ptr %i.agq, align 8, !alias.scope !34989, !noalias !34988 ; 4 uses
  switch i64 %.val8.i.i.i.i188, label %bb.ld [
    i64 -9223372036854775808, label %bb.le
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i190"
  ]

bb.ld:                                            ; preds = %.lr.ph.i.i.i.i186
  %i.agr = shl nuw i64 %.val8.i.i.i.i188, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i189) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i189, i64 noundef %i.agr, i64 noundef range(i64 1, -9223372036854775807) 2) #65, !noalias !34992
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i190"

bb.le:                                            ; preds = %.lr.ph.i.i.i.i186
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i189) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i189, i64 noundef 8192, i64 noundef 8) #65, !noalias !34992
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i190"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i190": ; preds = %bb.le, %bb.ld, %.lr.ph.i.i.i.i186
  %i.ags = icmp eq i64 %i.agp, %.val1.i.i185
  br i1 %i.ags, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i191", label %.lr.ph.i.i.i.i186

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i191": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h01c7e78fd6350c1cE.exit.i.i.i.i190", %bb.lc
  %.val2.i.i192 = load i64, ptr %i.ci, align 8, !range !28, !alias.scope !34988, !noundef !27 ; 2 uses
  %i.agt = icmp eq i64 %.val2.i.i192, 0
  br i1 %i.agt, label %bb.lh, label %bb.lf

bb.lf:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i191"
  %i.agu = shl nuw i64 %.val2.i.i192, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i184, i64 noundef %i.agu, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !34988
  br label %bb.lh

bb.lg:                                            ; preds = %bb.mh, %bb.mv, %bb.mt, %bb.ms, %bb.mr, %bb.mg, %bb.lw, %bb.ll
  %i.agv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

.body.thread:                                     ; preds = %bb.kq, %bb.if, %.thread17.i, %bb.ie, %.body.i, %.body.thread635, %.body.thread630
  %eh.lpad-body629 = phi { ptr, i32 } [ %lpad.loopexit361, %.body.thread630 ], [ %lpad.thr_comm, %.body.thread635 ], [ %i.afy, %bb.kq ], [ %lpad.phi72.i, %bb.if ], [ %eh.lpad-body20.i, %.thread17.i ], [ %lpad.phi72.i, %bb.ie ], [ %.pn77.i, %.body.i ]
  %.sroa.038.10.lpad-body628 = phi i8 [ 0, %.body.thread630 ], [ %.sroa.038.10.ph.ph, %.body.thread635 ], [ 0, %bb.kq ], [ 1, %bb.if ], [ 1, %.thread17.i ], [ 1, %bb.ie ], [ 0, %.body.i ]
  %.sroa.040.12.lpad-body627 = phi i8 [ 1, %.body.thread630 ], [ 1, %.body.thread635 ], [ 0, %bb.kq ], [ 1, %bb.if ], [ 1, %.thread17.i ], [ 1, %bb.ie ], [ 1, %.body.i ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE"(ptr noalias noundef align 8 dereferenceable(24) %i.cg) #67
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hf4de2caa58b012cbE"(ptr noalias noundef align 8 dereferenceable(24) %i.ci) #67
  br label %bb.ll

.thread301:                                       ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.bs, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  br label %bb.lh

.loopexit358:                                     ; preds = %.noexc199, %.noexc198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.agw = trunc nuw i8 %.sroa.034.4306 to i1
  br i1 %i.agw, label %bb.lp, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E.exit"

bb.lh:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i191", %bb.lf, %.thread301
  %.sroa.034.4306 = phi i8 [ 1, %.thread301 ], [ 0, %bb.lf ], [ 0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i191" ] ; 3 uses
  %.sroa.038.14305 = phi i8 [ 1, %.thread301 ], [ %.sroa.038.13, %bb.lf ], [ %.sroa.038.13, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hba52338d6e1e85d1E.exit.i.i191" ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.experimental.noalias.scope.decl(metadata !35003)
  call void @llvm.experimental.noalias.scope.decl(metadata !35004)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35002
  %.sroa.0.0.copyload.i.i194 = load ptr, ptr %i.ck, align 8, !alias.scope !35002 ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %.sroa.0.0.copyload.i.i194, null
  br i1 %.not.i.i.i195, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1eca37ead4c2bc4E.exit.i.i", label %bb.li

bb.li:                                            ; preds = %bb.lh
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !35002
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.4.0.copyload.i.i196 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !35002 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !35005, !noalias !35008
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0.copyload.i.i194, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !35005, !noalias !35008
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.4.0.copyload.i.i196, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !35005, !noalias !35008
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !35005, !noalias !35008
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.0.0.copyload.i.i194, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !35005, !noalias !35008
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.4.0.copyload.i.i196, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !35005, !noalias !35008
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1eca37ead4c2bc4E.exit.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1eca37ead4c2bc4E.exit.i.i": ; preds = %bb.li, %bb.lh
  %.sink23.i.i.i = phi i64 [ 1, %bb.li ], [ 0, %bb.lh ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i, %bb.li ], [ 0, %bb.lh ]
  store i64 %.sink23.i.i.i, ptr %i.c, align 8, !alias.scope !35005, !noalias !35008
  %i.agx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink23.i.i.i, ptr %i.agx, align 8, !alias.scope !35005, !noalias !35008
  %i.agy = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i, ptr %i.agy, align 8, !alias.scope !35005, !noalias !35008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34993
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5243924e46102644E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc198 unwind label %.loopexit.split-lp354

.noexc198:                                        ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1eca37ead4c2bc4E.exit.i.i"
  %i.agz = load ptr, ptr %i.b, align 8, !noalias !34993, !noundef !27 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.agz, null
  br i1 %.not5.i.i.i.i, label %.loopexit358, label %.lr.ph.i.i.i.i197

.lr.ph.i.i.i.i197:                                ; preds = %.noexc198
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.lj

bb.lj:                                            ; preds = %.noexc199, %.lr.ph.i.i.i.i197
  %i.aha = phi ptr [ %i.agz, %.lr.ph.i.i.i.i197 ], [ %i.ahf, %.noexc199 ]
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !noalias !34993
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.ahc = getelementptr inbounds nuw [24 x i8], ptr %i.ahb, i64 %.sroa.23.0.copyload.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35010)
  call void @llvm.experimental.noalias.scope.decl(metadata !35013)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ahc, align 8, !range !28, !alias.scope !35016, !noalias !34993, !noundef !27 ; 2 uses
  %i.ahd = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ahd, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb46f7055e9cf46efE.exit.i.i.i.i", label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ahe, align 8, !alias.scope !35016, !noalias !34993, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !35017
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb46f7055e9cf46efE.exit.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb46f7055e9cf46efE.exit.i.i.i.i": ; preds = %bb.lk, %bb.lj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34993
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h5243924e46102644E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc199 unwind label %.loopexit353

.noexc199:                                        ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hb46f7055e9cf46efE.exit.i.i.i.i"
  %i.ahf = load ptr, ptr %i.b, align 8, !noalias !34993, !noundef !27 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ahf, null
  br i1 %.not.i.i.i.i, label %.loopexit358, label %bb.lj

bb.ll:                                            ; preds = %.body.thread, %bb.ao
  %.sroa.040.10.ph = phi i8 [ %.sroa.040.12.lpad-body627, %.body.thread ], [ 1, %bb.ao ]
  %.sroa.038.8.ph = phi i8 [ %.sroa.038.10.lpad-body628, %.body.thread ], [ 1, %bb.ao ]
  %.sroa.034.2.ph = phi i8 [ 0, %.body.thread ], [ 1, %bb.ao ]
  %.pn98.ph = phi { ptr, i32 } [ %eh.lpad-body629, %.body.thread ], [ %i.iu, %bb.ao ]
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$u64$GT$$GT$17haee1ef871bdee2bdE"(ptr noalias noundef align 8 dereferenceable(24) %i.ck) #67
          to label %bb.ak unwind label %bb.lg

.thread317:                                       ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.bu, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.lp

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E.exit": ; preds = %bb.lv, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef7645b4ddab2f70E.exit.i", %.thread308, %bb.lx, %.loopexit358
  %.sroa.040.19 = phi i8 [ 1, %bb.lx ], [ 0, %.thread308 ], [ 1, %.loopexit358 ], [ 1, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef7645b4ddab2f70E.exit.i" ], [ 1, %bb.lv ] ; 5 uses
  %.sroa.038.16 = phi i8 [ 1, %bb.lx ], [ %.sroa.038.13, %.thread308 ], [ %.sroa.038.14305, %.loopexit358 ], [ %.sroa.038.15322, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef7645b4ddab2f70E.exit.i" ], [ %.sroa.038.15322, %bb.lv ]
  %.sroa.036.10 = phi i8 [ 1, %bb.lx ], [ 0, %.thread308 ], [ 0, %.loopexit358 ], [ 1, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef7645b4ddab2f70E.exit.i" ], [ 1, %bb.lv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.experimental.noalias.scope.decl(metadata !35018)
  call void @llvm.experimental.noalias.scope.decl(metadata !35021)
  call void @llvm.experimental.noalias.scope.decl(metadata !35024)
  br label %bb.lm

bb.lm:                                            ; preds = %.backedge.i.i.i207, %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E.exit"
  %.sroa.0.0.idx12.i.i.i200 = phi i64 [ 0, %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E.exit" ], [ %.sroa.0.0.add.i.i.i203, %.backedge.i.i.i207 ] ; 2 uses
  %.sroa.7.011.i.i.i201 = phi i64 [ 0, %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E.exit" ], [ %i.ahg, %.backedge.i.i.i207 ] ; 3 uses
  %.sroa.0.0.ptr.i.i.i202 = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.0.0.idx12.i.i.i200
  %.sroa.0.0.add.i.i.i203 = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i200, 8 ; 2 uses
  %i.ahg = add nuw nsw i64 %.sroa.7.011.i.i.i201, 1
  %i.ahh = load ptr, ptr %.sroa.0.0.ptr.i.i.i202, align 8, !alias.scope !35027, !noundef !27 ; 3 uses
  %i.ahi = icmp eq ptr %i.ahh, null
  br i1 %i.ahi, label %.backedge.i.i.i207, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.ahj = shl nuw i64 1, %.sroa.7.011.i.i.i201
  call void @llvm.experimental.noalias.scope.decl(metadata !35028)
  br label %.lr.ph.i.i.i.i.i204

.lr.ph.i.i.i.i.i204:                              ; preds = %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i.i", %bb.ln
  %.sroa.0.010.i.i.i.i.i205 = phi i64 [ %i.ahl, %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i.i" ], [ 0, %bb.ln ] ; 2 uses
  %i.ahk = getelementptr inbounds nuw [32 x i8], ptr %i.ahh, i64 %.sroa.0.010.i.i.i.i.i205 ; 2 uses
  %i.ahl = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i205, 1 ; 2 uses
  %i.ahm = getelementptr i8, ptr %i.ahk, i64 24
  %.val9.i.i.i.i.i206 = load i8, ptr %i.ahm, align 1, !range !1558, !alias.scope !35028, !noalias !35027, !noundef !27
  %i.ahn = trunc nuw i8 %.val9.i.i.i.i.i206 to i1
  br i1 %i.ahn, label %bb.lo, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i.i"

bb.lo:                                            ; preds = %.lr.ph.i.i.i.i.i204
  %i.aho = getelementptr i8, ptr %i.ahk, i64 16
  %.val8.i.i.i.i.i208 = load ptr, ptr %i.aho, align 8, !alias.scope !35028, !noalias !35027, !nonnull !27, !noundef !27 ; 2 uses
  %i.ahp = icmp eq ptr %.val8.i.i.i.i.i208, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ahp, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.lo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ahr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i.i.i.i208, %bb.lo ] ; 4 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ahr = load ptr, ptr %i.ahq, align 8, !noalias !35031, !nonnull !27, !noundef !27 ; 2 uses
  %i.ahs = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !35031, !nonnull !27, !noundef !27
  %i.aht = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ahv = load i64, ptr %i.ahu, align 16, !noalias !35031, !noundef !27
  %i.ahw = load i64, ptr %i.aht, align 8, !range !4612, !noalias !35031, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahs, i64 noundef %i.ahv, i64 noundef %i.ahw) #65, !noalias !35031
  %i.ahx = icmp eq ptr %i.ahr, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ahx, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.lo, %.lr.ph.i.i.i.i.i204
  %i.ahy = icmp eq i64 %i.ahl, %i.ahj
  br i1 %i.ahy, label %"_ZN4core3ptr230drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h89c782cf90e012b4E.exit.i.i.i", label %.lr.ph.i.i.i.i.i204

"_ZN4core3ptr230drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h89c782cf90e012b4E.exit.i.i.i": ; preds = %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i.i.i.i"
  %i.ahz = shl nuw i64 32, %.sroa.7.011.i.i.i201
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahh, i64 noundef %i.ahz, i64 noundef 8) #65, !noalias !35027
  br label %.backedge.i.i.i207

.backedge.i.i.i207:                               ; preds = %"_ZN4core3ptr230drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h89c782cf90e012b4E.exit.i.i.i", %bb.lm
  %i.aia = icmp eq i64 %.sroa.0.0.add.i.i.i203, 504
  br i1 %i.aia, label %"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17ha5372ffdd1287668E.exit", label %bb.lm

bb.lp:                                            ; preds = %.thread317, %.loopexit358
  %.sroa.038.15322 = phi i8 [ 1, %.thread317 ], [ %.sroa.038.14305, %.loopexit358 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35032)
  %i.aib = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val.i = load ptr, ptr %i.aib, align 8, !alias.scope !35032, !nonnull !27, !noundef !27 ; 4 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.val1.i = load i64, ptr %i.aic, align 8, !alias.scope !35032, !noundef !27 ; 4 uses
  %i.aid = icmp eq i64 %.val1.i, 0
  br i1 %i.aid, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef7645b4ddab2f70E.exit.i", label %.lr.ph837

bb.lq:                                            ; preds = %.lr.ph837
  %i.aie = icmp eq i64 %i.aig, %.val1.i
  br i1 %i.aie, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef7645b4ddab2f70E.exit.i", label %.lr.ph837

.lr.ph837:                                        ; preds = %bb.lp, %bb.lq
  %.sroa.0.0.i.i.i836 = phi i64 [ %i.aig, %bb.lq ], [ 0, %bb.lp ] ; 2 uses
  %i.aif = getelementptr inbounds nuw [680 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i836
  %i.aig = add i64 %.sroa.0.0.i.i.i836, 1         ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$milli..vector..db..IndexEmbeddingConfig$GT$17h17785af76e872709E"(ptr noalias noundef readonly align 8 dereferenceable(680) %i.aif)
          to label %bb.lq unwind label %bb.ls, !noalias !35032

bb.lr:                                            ; preds = %.lr.ph839
  %i.aih = add i64 %.sroa.0.1.i.i.i838, 1         ; 2 uses
  %i.aii = icmp eq i64 %i.aih, %.val1.i
  br i1 %i.aii, label %.body.i209, label %.lr.ph839

bb.ls:                                            ; preds = %.lr.ph837
  %i.aij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aik = icmp eq i64 %i.aig, %.val1.i
  br i1 %i.aik, label %.body.i209, label %.lr.ph839

.lr.ph839:                                        ; preds = %bb.ls, %bb.lr
  %.sroa.0.1.i.i.i838 = phi i64 [ %i.aih, %bb.lr ], [ %i.aig, %bb.ls ] ; 2 uses
  %i.ail = getelementptr inbounds nuw [680 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i838
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$milli..vector..db..IndexEmbeddingConfig$GT$17h17785af76e872709E"(ptr noalias noundef readonly align 8 dereferenceable(680) %i.ail) #67
          to label %bb.lr unwind label %bb.lt, !noalias !35032

bb.lt:                                            ; preds = %.lr.ph839
  %i.aim = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !35035
  unreachable

.body.i209:                                       ; preds = %bb.lr, %bb.ls
  %.val4.i = load i64, ptr %i.cn, align 8, !range !28, !alias.scope !35032, !noundef !27 ; 2 uses
  %i.ain = icmp eq i64 %.val4.i, 0
  br i1 %i.ain, label %bb.x, label %bb.lu

bb.lu:                                            ; preds = %.body.i209
  %i.aio = mul nuw i64 %.val4.i, 680
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.aio, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !35032
  br label %bb.x

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef7645b4ddab2f70E.exit.i": ; preds = %bb.lq, %bb.lp
  %.val2.i = load i64, ptr %i.cn, align 8, !range !28, !alias.scope !35032, !noundef !27 ; 2 uses
  %i.aip = icmp eq i64 %.val2.i, 0
  br i1 %i.aip, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E.exit", label %bb.lv

bb.lv:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef7645b4ddab2f70E.exit.i"
  %i.aiq = mul nuw i64 %.val2.i, 680
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.aiq, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !35032
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E.exit"

bb.lw:                                            ; preds = %bb.ak
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E"(ptr noalias noundef align 8 dereferenceable(24) %i.cn) #67
          to label %bb.x unwind label %bb.lg

bb.lx:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.bw, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$milli..vector..db..IndexEmbeddingConfig$GT$$GT$17h823176b68fa445b1E.exit"

"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17ha5372ffdd1287668E.exit": ; preds = %.backedge.i.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  %i.air = trunc nuw i8 %.sroa.036.10 to i1       ; 2 uses
  br i1 %i.air, label %bb.ly, label %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit"

"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit": ; preds = %.backedge.i.i.i219, %"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17ha5372ffdd1287668E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.ais = trunc nuw i8 %.sroa.038.16 to i1
  br i1 %i.ais, label %.preheader, label %"_ZN4core3ptr201drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..fields_ids_map..global..GlobalFieldsIdsMap$GT$$GT$$GT$$GT$17h184e6267e03eff12E.exit227"

bb.ly:                                            ; preds = %"_ZN4core3ptr162drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17ha5372ffdd1287668E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !35038)
  call void @llvm.experimental.noalias.scope.decl(metadata !35041)
  call void @llvm.experimental.noalias.scope.decl(metadata !35044)
  br label %bb.lz

bb.lz:                                            ; preds = %.backedge.i.i.i219, %bb.ly
  %.sroa.0.0.idx12.i.i.i212 = phi i64 [ 0, %bb.ly ], [ %.sroa.0.0.add.i.i.i215, %.backedge.i.i.i219 ] ; 2 uses
  %.sroa.7.011.i.i.i213 = phi i64 [ 0, %bb.ly ], [ %i.ait, %.backedge.i.i.i219 ] ; 3 uses
  %.sroa.0.0.ptr.i.i.i214 = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.0.0.idx12.i.i.i212
  %.sroa.0.0.add.i.i.i215 = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i212, 8 ; 2 uses
  %i.ait = add nuw nsw i64 %.sroa.7.011.i.i.i213, 1
  %i.aiu = load ptr, ptr %.sroa.0.0.ptr.i.i.i214, align 8, !alias.scope !35047, !noundef !27 ; 3 uses
  %i.aiv = icmp eq ptr %i.aiu, null
  br i1 %i.aiv, label %.backedge.i.i.i219, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.aiw = shl nuw i64 1, %.sroa.7.011.i.i.i213
  call void @llvm.experimental.noalias.scope.decl(metadata !35048)
  br label %.lr.ph.i.i.i.i.i216

.lr.ph.i.i.i.i.i216:                              ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i", %bb.ma
  %.sroa.0.010.i.i.i.i.i217 = phi i64 [ %i.aiy, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i" ], [ 0, %bb.ma ] ; 2 uses
  %i.aix = getelementptr inbounds nuw [32 x i8], ptr %i.aiu, i64 %.sroa.0.010.i.i.i.i.i217 ; 2 uses
  %i.aiy = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i217, 1 ; 2 uses
  %i.aiz = getelementptr i8, ptr %i.aix, i64 24
  %.val9.i.i.i.i.i218 = load i8, ptr %i.aiz, align 1, !range !1558, !alias.scope !35048, !noalias !35047, !noundef !27
  %i.aja = trunc nuw i8 %.val9.i.i.i.i.i218 to i1
  br i1 %i.aja, label %bb.mb, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i"

bb.mb:                                            ; preds = %.lr.ph.i.i.i.i.i216
  %i.ajb = getelementptr i8, ptr %i.aix, i64 16
  %.val8.i.i.i.i.i220 = load ptr, ptr %i.ajb, align 8, !alias.scope !35048, !noalias !35047, !nonnull !27, !noundef !27 ; 2 uses
  %i.ajc = icmp eq ptr %.val8.i.i.i.i.i220, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ajc, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.mb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aje, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i.i.i.i220, %bb.mb ] ; 4 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.aje = load ptr, ptr %i.ajd, align 8, !noalias !35051, !nonnull !27, !noundef !27 ; 2 uses
  %i.ajf = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !35051, !nonnull !27, !noundef !27
  %i.ajg = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.aji = load i64, ptr %i.ajh, align 16, !noalias !35051, !noundef !27
  %i.ajj = load i64, ptr %i.ajg, align 8, !range !4612, !noalias !35051, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajf, i64 noundef %i.aji, i64 noundef %i.ajj) #65, !noalias !35051
  %i.ajk = icmp eq ptr %i.aje, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ajk, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.mb, %.lr.ph.i.i.i.i.i216
  %i.ajl = icmp eq i64 %i.aiy, %i.aiw
  br i1 %i.ajl, label %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i", label %.lr.ph.i.i.i.i.i216

"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i": ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i.i.i.i"
  %i.ajm = shl nuw i64 32, %.sroa.7.011.i.i.i213
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aiu, i64 noundef %i.ajm, i64 noundef 8) #65, !noalias !35047
  br label %.backedge.i.i.i219

.backedge.i.i.i219:                               ; preds = %"_ZN4core3ptr206drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$u5d$$GT$$GT$17h6c59d2a0ca31a785E.exit.i.i.i", %bb.lz
  %i.ajn = icmp eq i64 %.sroa.0.0.add.i.i.i215, 504
  br i1 %i.ajn, label %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit", label %bb.lz

"_ZN4core3ptr201drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..fields_ids_map..global..GlobalFieldsIdsMap$GT$$GT$$GT$$GT$17h184e6267e03eff12E.exit227": ; preds = %.backedge.i.i.i225, %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %i.ajo = trunc nuw i8 %.sroa.040.19 to i1
  br i1 %i.ajo, label %bb.md, label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit"

.preheader:                                       ; preds = %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit", %.backedge.i.i.i225
  %.sroa.0.0.idx12.i.i.i221 = phi i64 [ %.sroa.0.0.add.i.i.i224, %.backedge.i.i.i225 ], [ 0, %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit" ] ; 2 uses
  %.sroa.7.011.i.i.i222 = phi i64 [ %i.ajp, %.backedge.i.i.i225 ], [ 0, %"_ZN4core3ptr138drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17hb802d728da6af8f6E.exit" ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i223 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.0.0.idx12.i.i.i221
  %.sroa.0.0.add.i.i.i224 = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i221, 8 ; 2 uses
  %i.ajp = add nuw nsw i64 %.sroa.7.011.i.i.i222, 1
  %i.ajq = load ptr, ptr %.sroa.0.0.ptr.i.i.i223, align 8, !alias.scope !35052, !noundef !27 ; 2 uses
  %i.ajr = icmp eq ptr %i.ajq, null
  br i1 %i.ajr, label %.backedge.i.i.i225, label %bb.mc

bb.mc:                                            ; preds = %.preheader
  %i.ajs = shl nuw i64 1, %.sroa.7.011.i.i.i222
  invoke fastcc void @"_ZN4core3ptr269drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..fields_ids_map..global..GlobalFieldsIdsMap$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h1520864a00012fe7E"(ptr nonnull %i.ajq, i64 %i.ajs)
          to label %.backedge.i.i.i225 unwind label %.loopexit

.backedge.i.i.i225:                               ; preds = %bb.mc, %.preheader
  %i.ajt = icmp eq i64 %.sroa.0.0.add.i.i.i224, 504
  br i1 %i.ajt, label %"_ZN4core3ptr201drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..fields_ids_map..global..GlobalFieldsIdsMap$GT$$GT$$GT$$GT$17h184e6267e03eff12E.exit227", label %.preheader

"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit": ; preds = %bb.md, %"_ZN4core3ptr201drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..fields_ids_map..global..GlobalFieldsIdsMap$GT$$GT$$GT$$GT$17h184e6267e03eff12E.exit227"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br i1 %i.air, label %bb.mf, label %bb.me

bb.md:                                            ; preds = %"_ZN4core3ptr201drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..fields_ids_map..global..GlobalFieldsIdsMap$GT$$GT$$GT$$GT$17h184e6267e03eff12E.exit227"
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$17hc71955ebda6d8c5dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(392) %i.eq)
          to label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit" unwind label %bb.n

bb.me:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.mj

bb.mf:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit", %bb.p
  %.sroa.048.7 = phi i8 [ 1, %bb.p ], [ 0, %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit" ] ; 3 uses
  %.sroa.046.27 = phi i8 [ 1, %bb.p ], [ %.sroa.040.19, %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit" ] ; 3 uses
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hde2e1750286b8783E"(ptr noalias noundef align 8 dereferenceable(80) %i.cx)
          to label %bb.ml unwind label %bb.mi

bb.mg:                                            ; preds = %.thread639, %.split, %.thread258, %bb.x
  %.pn106267 = phi { ptr, i32 } [ %i.fu, %.thread258 ], [ %.pn102.ph, %bb.x ], [ %.pn100, %.split ], [ %i.gv, %.thread639 ]
  %.sroa.040.2266 = phi i8 [ 1, %.thread258 ], [ %.sroa.040.6.ph, %bb.x ], [ %.sroa.040.8, %.split ], [ 1, %.thread639 ]
  %.sroa.042.4265 = phi i8 [ 1, %.thread258 ], [ 1, %bb.x ], [ 0, %.split ], [ 1, %.thread639 ]
  invoke fastcc void @"_ZN4core3ptr201drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..fields_ids_map..global..GlobalFieldsIdsMap$GT$$GT$$GT$$GT$17h184e6267e03eff12E"(ptr noalias noundef align 8 dereferenceable(512) %i.cr) #67
          to label %bb.s unwind label %bb.lg

bb.mh:                                            ; preds = %.thread595, %bb.s
  %.pn108602 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread595 ], [ %.pn108, %bb.s ]
  %.sroa.042.2601 = phi i8 [ 1, %.thread595 ], [ %.sroa.042.2, %bb.s ]
  %.sroa.046.4600 = phi i8 [ 1, %.thread595 ], [ %.sroa.046.4, %bb.s ]
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$17hc71955ebda6d8c5dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(392) %i.eq)
          to label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit230" unwind label %bb.lg

bb.mi:                                            ; preds = %bb.mf
  %i.aju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ms

bb.mj:                                            ; preds = %bb.me, %bb.ml
  %.sroa.046.26330 = phi i8 [ %.sroa.046.27, %bb.ml ], [ %.sroa.040.19, %bb.me ]
  %.sroa.048.6328 = phi i8 [ %.sroa.048.7, %bb.ml ], [ 0, %bb.me ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.experimental.noalias.scope.decl(metadata !35059)
  %.val.i231 = load ptr, ptr %i.di, align 8, !alias.scope !35059, !nonnull !27, !noundef !27 ; 2 uses
  %.val1.i232 = load i64, ptr %i.dj, align 8, !alias.scope !35059, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35062)
  %i.ajv = icmp eq i64 %.val1.i232, 0
  br i1 %i.ajv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84af8c40f2ceb8e1E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.mj, %"_ZN4core3ptr48drop_in_place$LT$bbqueue..bbbuffer..BBBuffer$GT$17h5a3c603fef8310c4E.exit.i.i.i"
  %.sroa.0.012.i.i.i = phi i64 [ %i.ajx, %"_ZN4core3ptr48drop_in_place$LT$bbqueue..bbbuffer..BBBuffer$GT$17h5a3c603fef8310c4E.exit.i.i.i" ], [ 0, %bb.mj ] ; 2 uses
  %i.ajw = getelementptr inbounds nuw [64 x i8], ptr %.val.i231, i64 %.sroa.0.012.i.i.i ; 2 uses
  %i.ajx = add nuw i64 %.sroa.0.012.i.i.i, 1      ; 2 uses
  %i.ajy = getelementptr i8, ptr %i.ajw, i64 8
  %.val9.i.i.i = load i64, ptr %i.ajy, align 8, !alias.scope !35062, !noalias !35059, !noundef !27 ; 2 uses
  %i.ajz = icmp eq i64 %.val9.i.i.i, 0
  br i1 %i.ajz, label %"_ZN4core3ptr48drop_in_place$LT$bbqueue..bbbuffer..BBBuffer$GT$17h5a3c603fef8310c4E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i
  %.val8.i.i.i = load ptr, ptr %i.ajw, align 8, !alias.scope !35062, !noalias !35059, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %.val9.i.i.i, i64 noundef 1) #65, !noalias !35065
  br label %"_ZN4core3ptr48drop_in_place$LT$bbqueue..bbbuffer..BBBuffer$GT$17h5a3c603fef8310c4E.exit.i.i.i"

"_ZN4core3ptr48drop_in_place$LT$bbqueue..bbbuffer..BBBuffer$GT$17h5a3c603fef8310c4E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i
  %i.aka = icmp eq i64 %i.ajx, %.val1.i232
  br i1 %i.aka, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84af8c40f2ceb8e1E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84af8c40f2ceb8e1E.exit.i": ; preds = %"_ZN4core3ptr48drop_in_place$LT$bbqueue..bbbuffer..BBBuffer$GT$17h5a3c603fef8310c4E.exit.i.i.i", %bb.mj
  %.val2.i233 = load i64, ptr %i.de, align 8, !range !28, !alias.scope !35059, !noundef !27 ; 2 uses
  %i.akb = icmp eq i64 %.val2.i233, 0
  br i1 %i.akb, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bbqueue..bbbuffer..BBBuffer$GT$$GT$17h5012d7206ddef755E.exit", label %bb.mk

bb.mk:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84af8c40f2ceb8e1E.exit.i"
  %i.akc = shl nuw i64 %.val2.i233, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i231, i64 noundef %i.akc, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !35059
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bbqueue..bbbuffer..BBBuffer$GT$$GT$17h5012d7206ddef755E.exit"

bb.ml:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$milli..update..new..channel..ExtractorBbqueueSender$GT$17h22eb0afccf98e0f7E"(ptr noalias noundef align 8 dereferenceable(544) %i.cy)
          to label %bb.mj unwind label %bb.b

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bbqueue..bbbuffer..BBBuffer$GT$$GT$17h5012d7206ddef755E.exit": ; preds = %bb.mk, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84af8c40f2ceb8e1E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  %i.akd = trunc nuw i8 %.sroa.046.26330 to i1
  br i1 %i.akd, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.mn, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bbqueue..bbbuffer..BBBuffer$GT$$GT$17h5012d7206ddef755E.exit"
  %i.ake = trunc nuw i8 %.sroa.048.6328 to i1
  br i1 %i.ake, label %bb.mq, label %bb.kx

bb.mn:                                            ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bbqueue..bbbuffer..BBBuffer$GT$$GT$17h5012d7206ddef755E.exit"
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$milli..vector..runtime..RuntimeEmbedders$GT$17h4897077bcf9f330eE"(ptr noalias noundef align 8 dereferenceable(48) %9)
          to label %bb.mm unwind label %bb.mp

bb.mo:                                            ; preds = %bb.mt, %bb.mp, %.body124
  %.sroa.048.9 = phi i8 [ %.sroa.048.6328, %bb.mp ], [ %.sroa.048.0593, %bb.mt ], [ %.sroa.048.0, %.body124 ]
  %.pn118 = phi { ptr, i32 } [ %i.akg, %bb.mp ], [ %.pn114594, %bb.mt ], [ %.pn114, %.body124 ] ; 2 uses
  %i.akf = trunc nuw i8 %.sroa.048.9 to i1
  br i1 %i.akf, label %bb.mv, label %bb.mu

bb.mp:                                            ; preds = %bb.mn
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

bb.mq:                                            ; preds = %bb.mm
  call void @"_ZN4core3ptr56drop_in_place$LT$milli..fields_ids_map..FieldsIdsMap$GT$17hd218f098fb19303fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %6)
  br label %bb.kx

bb.mr:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..rwlock..RwLock$LT$milli..fields_ids_map..metadata..FieldIdMapWithMetadata$GT$$GT$17h419c676fe41cd8bcE.exit230"
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..channel..WriterBbqueueReceiver$GT$17hde2e1750286b8783E"(ptr noalias noundef align 8 dereferenceable(80) %i.cx) #67
          to label %bb.ms unwind label %bb.lg

bb.ms:                                            ; preds = %bb.mi, %bb.mr
  %.sroa.048.8.ph = phi i8 [ %.sroa.048.2, %bb.mr ], [ %.sroa.048.7, %bb.mi ]
  %.sroa.046.28.ph = phi i8 [ %.sroa.046.2, %bb.mr ], [ %.sroa.046.27, %bb.mi ]
  %.pn112.ph = phi { ptr, i32 } [ %.pn110, %bb.mr ], [ %i.aju, %bb.mi ]
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$milli..update..new..channel..ExtractorBbqueueSender$GT$17h22eb0afccf98e0f7E"(ptr noalias noundef align 8 dereferenceable(544) %i.cy) #67
          to label %.body124 unwind label %bb.lg

bb.mt:                                            ; preds = %.body124.thread, %.body124
  %.pn114594 = phi { ptr, i32 } [ %i.eh, %.body124.thread ], [ %.pn114, %.body124 ]
  %.sroa.048.0593 = phi i8 [ 1, %.body124.thread ], [ %.sroa.048.0, %.body124 ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$milli..vector..runtime..RuntimeEmbedders$GT$17h4897077bcf9f330eE"(ptr noalias noundef align 8 dereferenceable(48) %9) #67
          to label %bb.mo unwind label %bb.lg

bb.mu:                                            ; preds = %.thread660, %bb.mv, %bb.mo
  %.pn118663 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.thread660 ], [ %.pn118, %bb.mv ], [ %.pn118, %bb.mo ]
  resume { ptr, i32 } %.pn118663

bb.mv:                                            ; preds = %bb.mo
  invoke void @"_ZN4core3ptr56drop_in_place$LT$milli..fields_ids_map..FieldsIdsMap$GT$17hd218f098fb19303fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %6) #67
          to label %bb.mu unwind label %bb.lg
}

end_hunk_9
begin_hunk_10_@_ZN5milli6update3new7indexer7extract11extract_all17h8af8b418390ada28E:bb.a

.thread1404:                                      ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mx)
  %i.nl = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h2ad28825ec6abc66E, align 8, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  store i64 2, ptr %i.mx, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  store ptr %i.nl, ptr %i.nm, align 8
  %i.nn = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.no = icmp eq i8 %i.nn, 0
  br i1 %i.no, label %bb.j, label %bb.h

bb.j:                                             ; preds = %.thread1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mw)
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  store i64 1, ptr %i.mw, align 8
  %.sroa.4344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4344.0..sroa_idx, align 8
  %.sroa.5345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i64 0, ptr %.sroa.5345.0..sroa_idx, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store ptr %i.np, ptr %i.nq, align 8
  %i.nr = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mw)
          to label %bb.k unwind label %bb.i       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mw)
  br label %bb.h

bb.l:                                             ; preds = %bb.s, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !35066)
  %i.ns = load i64, ptr %i.mz, align 8, !range !322, !alias.scope !35066, !noundef !27
  %.not.i977 = icmp eq i64 %i.ns, 2
  br i1 %.not.i977, label %.noexc981, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.nt)
          to label %.noexc981 unwind label %bb.u

.noexc981:                                        ; preds = %bb.l, %bb.m
  %i.nu = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.nv = icmp eq i8 %i.nu, 0
  br i1 %i.nv, label %bb.n, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit983

bb.n:                                             ; preds = %.noexc981
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nx = load ptr, ptr %i.nw, align 8, !alias.scope !35066, !align !241, !noundef !27 ; 3 uses
  %.not4.i978 = icmp eq ptr %i.nx, null
  br i1 %.not4.i978, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit983, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !35066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !35066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !noalias !35066
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !nonnull !27, !align !242, !noundef !27
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.ob = load i64, ptr %i.oa, align 8, !noundef !27
  store ptr %i.nz, ptr %i.fw, align 8, !noalias !35066
  %i.oc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i64 %i.ob, ptr %i.oc, align 8, !noalias !35066
  store ptr %i.fw, ptr %i.fx, align 8, !noalias !35066
  %.sroa.43.0..sroa_idx.i979 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdede6b7140aa9959E", ptr %.sroa.43.0..sroa_idx.i979, align 8, !noalias !35066
  store ptr @1860, ptr %i.fy, align 8, !noalias !35066
  %i.od = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i64 2, ptr %i.od, align 8, !noalias !35066
  %i.oe = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  store ptr null, ptr %i.oe, align 8, !noalias !35066
  %i.of = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr %i.fx, ptr %i.of, align 8, !noalias !35066
  %i.og = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store i64 1, ptr %i.og, align 8, !noalias !35066
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1858, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.fy)
          to label %.noexc982 unwind label %bb.u

.noexc982:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !35066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !35066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !35066
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit983

bb.p:                                             ; preds = %bb.v, %.body1059, %bb.dl, %.body1103, %bb.kj, %.body1159, %.body1198, %bb.uq, %bb.vn, %bb.wk, %bb.xh, %bb.yi, %bb.zg, %bb.aas, %bb.acp, %bb.adz, %.thread1709, %.thread, %bb.akb, %.thread1453, %.thread1484, %bb.ahc, %bb.ahb, %bb.aha, %bb.agz, %.thread1519, %bb.aem, %bb.adx, %bb.adp, %.thread1659, %bb.acn, %bb.acf, %bb.abm, %bb.abe, %bb.aaq, %bb.aai, %bb.zw, %.thread1614, %bb.ze, %bb.yw, %bb.ym, %bb.yg, %bb.xy, %bb.xf, %bb.wx, %bb.wi, %bb.wa, %bb.vl, %bb.vd, %bb.uo, %bb.ug, %bb.ru, %bb.rm, %bb.rc, %bb.lj, %bb.lb, %bb.kh, %bb.jx, %bb.jo, %bb.et, %bb.ej, %bb.di, %bb.cy, %bb.aw, %bb.am, %.thread1414, %bb.t, %bb.i
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

bb.q:                                             ; preds = %bb.g
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.oj = load i64, ptr %i.oi, align 8, !range !4400, !noundef !27
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.q
  %.sroa.0340.0 = phi i64 [ %i.oj, %bb.q ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ik)
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i64 %.sroa.0340.0, ptr %i.ok, align 8
  store ptr %i.ng, ptr %i.ik, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.my, ptr %i.ol, align 8
  invoke fastcc void @_ZN12tracing_core10dispatcher11get_default17h68c63690205e6a72E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.mz, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ik)
          to label %bb.s unwind label %.split.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ik)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.my)
  br label %bb.l

bb.t:                                             ; preds = %bb.v, %bb.u
  %.sroa.0336.2 = phi i1 [ %.sroa.0336.3, %bb.u ], [ %.sroa.0336.4, %bb.v ]
  %.pn861 = phi { ptr, i32 } [ %i.om, %bb.u ], [ %.pn859, %bb.v ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.mz) #67
          to label %bb.b unwind label %bb.p

bb.u:                                             ; preds = %bb.o, %bb.ajy, %bb.ajw, %bb.aej, %bb.m
  %.sroa.0336.3 = phi i1 [ true, %bb.ajy ], [ false, %bb.aej ], [ true, %bb.o ], [ true, %bb.m ], [ true, %bb.ajw ]
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit983: ; preds = %.noexc982, %bb.n, %.noexc981
  %i.on = load ptr, ptr %2, align 8, !nonnull !27, !align !241, !noundef !27 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mv)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mu)
  invoke void @_ZN5milli5index5Index8read_txn17ha85b5f3af551ba1bE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.mu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.on)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %.thread1414, %bb.w
  %.sroa.0336.4 = phi i1 [ %.sroa.0336.5, %bb.w ], [ true, %.thread1414 ]
  %.pn859 = phi { ptr, i32 } [ %i.oo, %bb.w ], [ %.pn857, %.thread1414 ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.mz) #67
          to label %bb.t unwind label %bb.p

bb.w:                                             ; preds = %bb.aju, %bb.aei, %bb.y, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit983
  %.sroa.0336.5 = phi i1 [ true, %bb.y ], [ true, %bb.aju ], [ false, %bb.aei ], [ true, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit983 ]
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit983
  %i.op = load i64, ptr %i.mu, align 8, !range !450, !noundef !27
  %i.oq = trunc nuw i64 %i.op to i1
  %i.or = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.or, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mu)
  br i1 %i.oq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ii)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ii, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ij)
          to label %bb.ajz unwind label %bb.w

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mt)
  store ptr %4, ptr %i.mt, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store ptr %5, ptr %i.os, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ms)
  %i.ot = invoke noundef i64 @_ZN10rayon_core19current_num_threads17h8fb4355fc2e587afE()
          to label %bb.ab unwind label %bb.aa     ; 2 uses

.thread1414:                                      ; preds = %.split1490, %bb.ej, %bb.jo, %bb.et, %.thread1461.thread, %.thread1461, %.split1417, %.thread1409, %bb.af, %bb.aa
  %.pn857 = phi { ptr, i32 } [ %i.ou, %bb.aa ], [ %.pn8551412, %.thread1409 ], [ %.pn848.pn.pn.pn, %bb.af ], [ %lpad.thr_comm.split-lp1419, %.split1417 ], [ %.pn8451817, %.thread1461.thread ], [ %.pn845, %.thread1461 ], [ %i.akm, %bb.ej ], [ %i.avp, %bb.jo ], [ %.pn, %bb.et ], [ %lpad.thr_comm.split-lp1492, %.split1490 ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h7cf2d8482954a9d2E"(ptr noalias noundef align 8 dereferenceable(24) %i.mv) #67
          to label %bb.v unwind label %bb.p

bb.aa:                                            ; preds = %bb.ae, %bb.ac, %bb.z
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %.thread1414

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !35069
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.fv, i8 0, i64 504, i1 false), !noalias !35069
  %i.ov = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ot, i1 false) ; 2 uses
  %.not.i1044 = icmp eq i64 %i.ov, 0
  br i1 %.not.i1044, label %bb.ac, label %bb.ad, !prof !6611

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66
          to label %.noexc1045 unwind label %bb.aa

.noexc1045:                                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ow = shl nuw nsw i64 %i.ov, 3
  %.idx.i = sub nuw nsw i64 512, %i.ow
  %i.ox = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i
  %i.oy = icmp eq i64 %i.ot, 0
  br i1 %i.oy, label %.loopexit1878, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i
  %.sroa.0.014.i = phi ptr [ %i.oz, %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i ], [ %i.fv, %bb.ad ] ; 2 uses
  %.sroa.7.013.i = phi i64 [ %i.pa, %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i ], [ 0, %bb.ad ] ; 7 uses
  %notmask = shl nsw i64 -1, %.sroa.7.013.i
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 8 ; 2 uses
  %i.pa = add nuw nsw i64 %.sroa.7.013.i, 1
  %i.pb = shl nuw i64 1, %.sroa.7.013.i           ; 2 uses
  %i.pc = shl i64 104, %.sroa.7.013.i             ; 2 uses
  %exitcond.i = icmp eq i64 %.sroa.7.013.i, 57
  br i1 %exitcond.i, label %bb.ae, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !4065

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !35072
  %i.pd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.pc, i64 noundef range(i64 1, 9) 8) #65, !noalias !35072 ; 11 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %bb.ae, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.pb, 7
  %13 = icmp samesign ugt i64 %notmask, -8
  br i1 %13, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.pb, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.pc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc1046 unwind label %bb.aa

.noexc1046:                                       ; preds = %bb.ae
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.pf = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.pn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.pg = getelementptr inbounds nuw [104 x i8], ptr %i.pd, i64 %i.pf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 96
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !35085
  %i.ph = getelementptr inbounds nuw [104 x i8], ptr %i.pd, i64 %i.pf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ph, i64 200
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !35085
  %i.pi = getelementptr inbounds nuw [104 x i8], ptr %i.pd, i64 %i.pf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.pi, i64 304
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !35085
  %i.pj = getelementptr inbounds nuw [104 x i8], ptr %i.pd, i64 %i.pf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.pj, i64 408
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !35085
  %i.pk = getelementptr inbounds nuw [104 x i8], ptr %i.pd, i64 %i.pf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.pk, i64 512
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !35085
  %i.pl = getelementptr inbounds nuw [104 x i8], ptr %i.pd, i64 %i.pf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.pl, i64 616
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !35085
  %i.pm = getelementptr inbounds nuw [104 x i8], ptr %i.pd, i64 %i.pf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.pm, i64 720
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !35085
  %i.pn = add nuw nsw i64 %i.pf, 8                ; 2 uses
  %i.po = getelementptr inbounds nuw [104 x i8], ptr %i.pd, i64 %i.pf
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.po, i64 824
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !35085
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp samesign ugt i64 %.sroa.7.013.i, 2
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:    ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.pn, %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i.unr-lcssa ]
  %lcmp.mod2991 = icmp samesign ult i64 %.sroa.7.013.i, 3
  call void @llvm.assume(i1 %lcmp.mod2991)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.pp = phi i64 [ %i.pq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.pq = add nuw nsw i64 %i.pp, 1
  %i.pr = getelementptr inbounds nuw [104 x i8], ptr %i.pd, i64 %i.pp
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.pr, i64 96
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !35085
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !35102

_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i.unr-lcssa
  store ptr %i.pd, ptr %.sroa.0.014.i, align 8, !noalias !35069
  %i.ps = icmp eq ptr %i.oz, %i.ox
  br i1 %i.ps, label %.loopexit1878, label %.lr.ph.i

bb.af:                                            ; preds = %bb.di
  br i1 %.sroa.0330.2, label %.thread1409, label %.thread1414

.split1417.thread:                                ; preds = %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE.exit", %bb.au, %bb.dg, %.thread1444, %bb.ct, %.thread1423, %bb.ah, %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE.exit1078"
  %lpad.thr_comm1418 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1409

.split1417:                                       ; preds = %"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE.exit1091"
  %lpad.thr_comm.split-lp1419 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1414

.loopexit1878:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd2c145fac8f31961E.exit.i, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.ms, ptr noundef nonnull align 8 dereferenceable(504) %i.fv, i64 504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !35069
  %.sroa.41368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ms, i64 504
  store i64 0, ptr %.sroa.41368.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mr)
  %i.pt = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.pu = icmp eq i64 %i.pt, 0
  br i1 %i.pu, label %bb.ag, label %.thread1427

bb.ag:                                            ; preds = %.loopexit1878
  %i.pv = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h37955f9ce9c95f2cE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.pv, label %bb.ah [
    i8 0, label %.thread1427
    i8 1, label %.thread1423
    i8 2, label %.thread1423
  ], !prof !310

bb.ah:                                            ; preds = %bb.ag
  %i.pw = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h37955f9ce9c95f2cE)
          to label %bb.ai unwind label %.split1417.thread ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %.not710 = icmp eq i8 %i.pw, 0
  br i1 %.not710, label %.thread1427, label %.thread1423

.thread1423:                                      ; preds = %bb.ag, %bb.ag, %bb.ai
  %.sroa.018.01426 = phi i8 [ %i.pw, %bb.ai ], [ %i.pv, %bb.ag ], [ %i.pv, %bb.ag ]
  %i.px = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h37955f9ce9c95f2cE, align 8, !nonnull !27, !align !241, !noundef !27
  %i.py = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.px, i8 noundef %.sroa.018.01426)
          to label %bb.aj unwind label %.split1417.thread

bb.aj:                                            ; preds = %.thread1423
  br i1 %i.py, label %bb.ak, label %.thread1427

bb.ak:                                            ; preds = %bb.aj
  %i.pz = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h37955f9ce9c95f2cE, align 8, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mq)
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 48
  store i64 1, ptr %i.mq, align 8
  %.sroa.4348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4348.0..sroa_idx, align 8
  %.sroa.5349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store i64 0, ptr %.sroa.5349.0..sroa_idx, align 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  store ptr %i.qa, ptr %i.qb, align 8
  %i.qc = load i64, ptr %3, align 8, !range !322, !noundef !27
  %.not711 = icmp eq i64 %i.qc, 2
  br i1 %.not711, label %bb.au, label %bb.at

bb.al:                                            ; preds = %.thread1427, %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mr, ptr noundef nonnull align 8 dereferenceable(40) %i.mp, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mp)
  br label %bb.ap

bb.am:                                            ; preds = %bb.an
  %i.qd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.mp) #67
          to label %.thread1409 unwind label %bb.p

.thread1427:                                      ; preds = %bb.ag, %bb.ai, %bb.aj, %.loopexit1878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mp)
  %i.qe = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h37955f9ce9c95f2cE, align 8, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  store i64 2, ptr %i.mp, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  store ptr %i.qe, ptr %i.qf, align 8
  %i.qg = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.qh = icmp eq i8 %i.qg, 0
  br i1 %i.qh, label %bb.an, label %bb.al

bb.an:                                            ; preds = %.thread1427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mo)
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 48
  store i64 1, ptr %i.mo, align 8
  %.sroa.4354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4354.0..sroa_idx, align 8
  %.sroa.5355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store i64 0, ptr %.sroa.5355.0..sroa_idx, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  store ptr %i.qi, ptr %i.qj, align 8
  %i.qk = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mo)
          to label %bb.ao unwind label %bb.am     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mo)
  br label %bb.al

bb.ap:                                            ; preds = %bb.av, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !35103)
  %i.ql = load i64, ptr %i.mr, align 8, !range !322, !alias.scope !35103, !noundef !27
  %.not.i970 = icmp eq i64 %i.ql, 2
  br i1 %.not.i970, label %.noexc974, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.qm = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.qm)
          to label %.noexc974 unwind label %bb.ax

.noexc974:                                        ; preds = %bb.ap, %bb.aq
  %i.qn = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.qo = icmp eq i8 %i.qn, 0
  br i1 %i.qo, label %bb.ar, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit976

bb.ar:                                            ; preds = %.noexc974
  %i.qp = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !alias.scope !35103, !align !241, !noundef !27 ; 3 uses
  %.not4.i971 = icmp eq ptr %i.qq, null
  br i1 %.not4.i971, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit976, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !noalias !35103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga), !noalias !35103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !noalias !35103
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8, !nonnull !27, !align !242, !noundef !27
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qu = load i64, ptr %i.qt, align 8, !noundef !27
  store ptr %i.qs, ptr %i.fz, align 8, !noalias !35103
  %i.qv = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 %i.qu, ptr %i.qv, align 8, !noalias !35103
  store ptr %i.fz, ptr %i.ga, align 8, !noalias !35103
  %.sroa.43.0..sroa_idx.i972 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdede6b7140aa9959E", ptr %.sroa.43.0..sroa_idx.i972, align 8, !noalias !35103
  store ptr @1860, ptr %i.gb, align 8, !noalias !35103
  %i.qw = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 2, ptr %i.qw, align 8, !noalias !35103
  %i.qx = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  store ptr null, ptr %i.qx, align 8, !noalias !35103
  %i.qy = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store ptr %i.ga, ptr %i.qy, align 8, !noalias !35103
  %i.qz = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store i64 1, ptr %i.qz, align 8, !noalias !35103
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1858, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.gb)
          to label %.noexc975 unwind label %bb.ax

.noexc975:                                        ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !noalias !35103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !35103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !noalias !35103
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit976

bb.at:                                            ; preds = %bb.ak
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.rb = load i64, ptr %i.ra, align 8, !range !4400, !noundef !27
  br label %bb.au

bb.au:                                            ; preds = %bb.ak, %bb.at
  %.sroa.0350.0 = phi i64 [ %i.rb, %bb.at ], [ 0, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ih)
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i64 %.sroa.0350.0, ptr %i.rc, align 8
  store ptr %i.pz, ptr %i.ih, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr %i.mq, ptr %i.rd, align 8
  invoke fastcc void @_ZN12tracing_core10dispatcher11get_default17h68c63690205e6a72E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.mr, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ih)
          to label %bb.av unwind label %.split1417.thread

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq)
  br label %bb.ap

bb.aw:                                            ; preds = %.body1059, %bb.ax
  %.pn853 = phi { ptr, i32 } [ %i.re, %bb.ax ], [ %eh.lpad-body1060, %.body1059 ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.mr) #67
          to label %.thread1409 unwind label %bb.p

bb.ax:                                            ; preds = %bb.as, %bb.cm, %bb.cq, %bb.co, %bb.ck, %bb.aq
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit976: ; preds = %.noexc975, %bb.ar, %.noexc974
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.41384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rf = load <2 x ptr>, ptr %.sroa.41384.0..sroa_idx, align 8 ; 3 uses
  %.sroa.61386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.61386.0.copyload = load ptr, ptr %.sroa.61386.0..sroa_idx, align 8 ; 2 uses
  %.sroa.71387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.71387.0.copyload = load ptr, ptr %.sroa.71387.0..sroa_idx, align 8 ; 2 uses
  %.sroa.81388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.81388.0.copyload = load ptr, ptr %.sroa.81388.0..sroa_idx, align 8 ; 9 uses
end_hunk_10
begin_hunk_11_@_ZN5milli6update3new7indexer7extract11extract_all17h8af8b418390ada28E:bb.a
  %i.bcz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !35598
  unreachable

bb.ns:                                            ; preds = %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !35595
  br label %bb.nn

bb.nt:                                            ; preds = %bb.nv, %bb.nu
  %.pn300.i = phi { ptr, i32 } [ %i.bda, %bb.nu ], [ %i.bdb, %bb.nv ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.bk) #67
          to label %.thread416.i unwind label %bb.nr, !noalias !35598

bb.nu:                                            ; preds = %bb.nq, %bb.ny, %bb.nx, %bb.no
  %i.bda = landingpad { ptr, i32 }
          cleanup
  br label %bb.nt

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i1137: ; preds = %.noexc323.i, %bb.np, %.noexc322.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !35595
  invoke fastcc void @_ZN5milli6update3new7indexer16document_changes7extract17h8299a4e1d3555678E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %2, ptr noalias noundef nonnull align 8 dereferenceable(512) %6, ptr noundef nonnull align 8 %i.bl)
          to label %bb.nw unwind label %bb.nv

bb.nv:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i1137
  %i.bdb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.bk) #67
          to label %bb.nt unwind label %bb.nr, !noalias !35598

bb.nw:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit.i1137
  %i.bdc = load i64, ptr %i.bg, align 8, !range !4698, !noalias !35595, !noundef !27 ; 2 uses
  %.not294.i = icmp eq i64 %i.bdc, 97
  br i1 %.not294.i, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %.sroa.4208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.2210.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.4208.0..sroa_idx.i, i64 312, i1 false), !noalias !35599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !35595
  store i64 %i.bdc, ptr %i.ln, align 8, !alias.scope !35590, !noalias !35599
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.bk)
          to label %bb.pq unwind label %bb.nu, !noalias !35598

bb.ny:                                            ; preds = %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !35595
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h1948004b96de250fE"(ptr nonnull %i.bk)
          to label %bb.nz unwind label %bb.nu, !noalias !35598

bb.nz:                                            ; preds = %bb.ny
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17hdbae466239ccc932E"(ptr noalias noundef align 8 dereferenceable(40) %i.bk)
          to label %bb.oa unwind label %.thread424.i, !noalias !35598

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !35595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !35595
  store i64 0, ptr %i.bf, align 8, !noalias !35595
  %.sroa.4212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4212.0..sroa_idx.i, align 8, !noalias !35595
  %.sroa.5213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.4215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5213.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35595
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4215.0..sroa_idx.i, align 8, !noalias !35595
  %.sroa.5216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %.sroa.4218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5216.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35595
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4218.0..sroa_idx.i, align 8, !noalias !35595
  %.sroa.5219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %.sroa.4221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5219.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35595
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4221.0..sroa_idx.i, align 8, !noalias !35595
  %.sroa.5222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %.sroa.4224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5222.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35595
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4224.0..sroa_idx.i, align 8, !noalias !35595
  %.sroa.5225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  store i64 0, ptr %.sroa.5225.0..sroa_idx.i, align 8, !noalias !35595
  %.sroa.0254.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !35595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %.sroa.0254.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(512) %i.bl, i64 512, i1 false), !noalias !35595
  store i64 1, ptr %i.be, align 8, !noalias !35595
  %.sroa.0254.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 520 ; 5 uses
  %.sroa.0254.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 528
  %.sroa.0254.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 536 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0254.sroa.3.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35595
  store i64 1, ptr %.sroa.0254.sroa.5.0..sroa_idx.i, align 8, !noalias !35595
  %.sroa.0254.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 544 ; 5 uses
  store i64 0, ptr %.sroa.0254.sroa.6.0..sroa_idx.i, align 8, !noalias !35595
  %.sroa.2255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 552
  store i64 3, ptr %.sroa.2255.0..sroa_idx.i, align 8, !noalias !35595
  %.sroa.4257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1208
  store i64 3, ptr %.sroa.4257.0..sroa_idx.i, align 8, !noalias !35595
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bde = load i64, ptr %i.bdd, align 8, !alias.scope !35626, !noalias !35643, !noundef !27 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i1146 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.bdf = icmp eq i64 %i.bde, 0
  br i1 %i.bdf, label %.thread.i.i.i.i.preheader, label %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.lr.ph.i

.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.lr.ph.i: ; preds = %bb.oa
  %.sroa.8.0..sroa_idx.i1147 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.i

.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.i:    ; preds = %.lr.ph.i.i1150, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.lr.ph.i
  %i.bdg = phi i64 [ 0, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.lr.ph.i ], [ %i.bef, %.lr.ph.i.i1150 ]
  %i.bdh = phi i64 [ 0, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.lr.ph.i ], [ %i.bdq, %.lr.ph.i.i1150 ] ; 2 uses
  %i.bdi = phi i64 [ 1, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.lr.ph.i ], [ %i.bdp, %.lr.ph.i.i1150 ] ; 2 uses
  %i.bdj = phi i64 [ 0, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.lr.ph.i ], [ %i.bea, %.lr.ph.i.i1150 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !35652)
  br label %.preheader1.i.i.i.i.i.i.i.i.preheader.i

.preheader1.i.i.i.i.i.i.i.i.preheader.i:          ; preds = %.noexc347.i, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.i
  %i.bdk = phi i64 [ %i.bdg, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.i ], [ %i.bef, %.noexc347.i ]
  %i.bdl = phi i64 [ %i.bdh, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.i ], [ %i.bds, %.noexc347.i ]
  %.lcssa4250.i515.i = phi i64 [ %i.bdj, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.i ], [ %i.bea, %.noexc347.i ]
  %i.bdm = phi i64 [ %i.bdi, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.i ], [ %i.bdr, %.noexc347.i ]
  %i.bdn = phi i64 [ %i.bdh, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.i ], [ %i.bdq, %.noexc347.i ]
  %i.bdo = phi i64 [ %i.bdi, %.preheader1.i.i.i.i.i.i.i.i.preheader.lr.ph.i ], [ %i.bdp, %.noexc347.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !35653)
  call void @llvm.experimental.noalias.scope.decl(metadata !35654)
  call void @llvm.experimental.noalias.scope.decl(metadata !35655)
  call void @llvm.experimental.noalias.scope.decl(metadata !35656)
  call void @llvm.experimental.noalias.scope.decl(metadata !35657)
  call void @llvm.experimental.noalias.scope.decl(metadata !35658)
  call void @llvm.experimental.noalias.scope.decl(metadata !35659)
  call void @llvm.experimental.noalias.scope.decl(metadata !35660)
  br label %.preheader1.i.i.i.i.i.i.i.i.i

.preheader1.i.i.i.i.i.i.i.i.i:                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %.preheader1.i.i.i.i.i.i.i.i.preheader.i
  %i.bdp = phi i64 [ %i.bdw, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.bdo, %.preheader1.i.i.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bdq = phi i64 [ %i.bdx, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.bdn, %.preheader1.i.i.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bdr = phi i64 [ %i.bdw, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.bdm, %.preheader1.i.i.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.bds = phi i64 [ %i.bdx, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.bdl, %.preheader1.i.i.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %.promoted4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.lcssa4250.i515.i, %.preheader1.i.i.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.bdt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0254.sroa.2.0..sroa_idx.i, i64 %i.bds
  %i.bdu = load ptr, ptr %i.bdt, align 8, !alias.scope !35626, !noalias !35643, !noundef !27 ; 2 uses
  %i.bdv = icmp eq ptr %i.bdu, null
  br i1 %i.bdv, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i.i:           ; preds = %.preheader1.i.i.i.i.i.i.i.i.i
  %umax.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bdr, i64 %.promoted4.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.i.i2788.not = icmp ult i64 %.promoted4.i.i.i.i.i.i.i.i.i, %i.bdr
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i2788.not, label %.lr.ph2789, label %.loopexit.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i, %.preheader1.i.i.i.i.i.i.i.i.i
  %i.bdw = shl i64 %i.bdr, 1                      ; 3 uses
  store i64 %i.bdw, ptr %.sroa.0254.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35661, !noalias !35662
  %i.bdx = add i64 %i.bds, 1                      ; 3 uses
  store i64 %i.bdx, ptr %.sroa.0254.sroa.4.0..sroa_idx.i, align 8, !alias.scope !35661, !noalias !35662
  br label %.preheader1.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph2789
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bea, %umax.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph2789

.lr.ph2789:                                       ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  %i.bdy = phi i64 [ %i.bea, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.promoted4.i.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bdz = getelementptr inbounds nuw [672 x i8], ptr %i.bdu, i64 %i.bdy ; 4 uses
  %i.bea = add i64 %i.bdy, 1                      ; 8 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdz, i64 664
  %i.bec = load i8, ptr %i.beb, align 1, !range !1558, !noalias !35663, !noundef !27
  %i.bed = trunc nuw i8 %i.bec to i1
  br i1 %i.bed, label %_ZN4core3ops8function6FnOnce9call_once17ha6d34f306a06546aE.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17ha6d34f306a06546aE.exit.i.i.i.i: ; preds = %.lr.ph2789
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdz, i64 664
  %i.bef = add i64 %i.bdk, 1                      ; 8 uses
  store i8 0, ptr %i.bee, align 1, !noalias !35664
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bdz, i64 8
  %.sroa.0.0.copyload12.i.i.i.i = load i64, ptr %i.beg, align 8, !noalias !35665 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload12.i.i.i.i, 3
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.sink.split.i, label %bb.ow

.thread.i.i.i.sink.split.i:                       ; preds = %.noexc347.i, %_ZN4core3ops8function6FnOnce9call_once17ha6d34f306a06546aE.exit.i.i.i.i
  %.sink.i = phi i64 [ %i.bef, %_ZN4core3ops8function6FnOnce9call_once17ha6d34f306a06546aE.exit.i.i.i.i ], [ %i.bde, %.noexc347.i ]
  store i64 %i.bea, ptr %.sroa.0254.sroa.6.0..sroa_idx.i, align 8, !alias.scope !35661, !noalias !35662
  store i64 %.sink.i, ptr %.sroa.0254.sroa.3.0..sroa_idx.i, align 8, !alias.scope !35661, !noalias !35662
  br label %.thread.i.i.i.i.preheader

.thread.i.i.i.i.preheader:                        ; preds = %.lr.ph.i.i1150, %.thread.i.i.i.sink.split.i, %bb.oa
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread.i.i.i.i.preheader, %.backedge.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.idx12.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.add.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.thread.i.i.i.i.preheader ] ; 2 uses
  %.sroa.7.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.beh, %.backedge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.thread.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.0.ptr.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0254.sroa.2.0..sroa_idx.i, i64 %.sroa.0.0.idx12.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.add.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.beh = add nuw nsw i64 %.sroa.7.011.i.i.i.i.i.i.i.i.i.i, 1
  %i.bei = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !35666, !noalias !35679, !noundef !27 ; 5 uses
  %i.bej = icmp eq ptr %i.bei, null
  br i1 %i.bej, label %.backedge.i.i.i.i.i.i.i.i.i.i, label %bb.ob

bb.ob:                                            ; preds = %.thread.i.i.i.i
  %i.bek = shl nuw i64 1, %.sroa.7.011.i.i.i.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35680), !noalias !35683
  br label %.lr.ph.i.i.i.i1151

.lr.ph.i.i.i.i1151:                               ; preds = %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit.i.i.i.i", %bb.ob
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.bem, %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit.i.i.i.i" ], [ 0, %bb.ob ] ; 2 uses
  %i.bel = getelementptr inbounds nuw [672 x i8], ptr %i.bei, i64 %.sroa.0.09.i.i.i.i ; 14 uses
  %i.bem = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 1 ; 4 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bel, i64 664
  %i.beo = load i8, ptr %i.ben, align 1, !range !1558, !alias.scope !35684, !noalias !35689, !noundef !27
  %i.bep = trunc nuw i8 %i.beo to i1
  br i1 %i.bep, label %bb.oc, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit.i.i.i.i"

bb.oc:                                            ; preds = %.lr.ph.i.i.i.i1151
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bel, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35690)
  %i.ber = load i64, ptr %i.beq, align 8, !range !322, !alias.scope !35690, !noalias !35689, !noundef !27
  %i.bes = icmp eq i64 %i.ber, 2
  br i1 %i.bes, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit.i.i.i.i", label %bb.od

bb.od:                                            ; preds = %bb.oc
  call void @llvm.experimental.noalias.scope.decl(metadata !35693), !noalias !35683
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.beq)
          to label %bb.of unwind label %bb.oe, !noalias !35689

bb.oe:                                            ; preds = %bb.od
  %i.bet = landingpad { ptr, i32 }
          cleanup
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bel, i64 128
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.beu) #67
          to label %bb.og unwind label %bb.os, !noalias !35689

bb.of:                                            ; preds = %bb.od
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bel, i64 128
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.bev)
          to label %bb.oi unwind label %bb.oh, !noalias !35689

bb.og:                                            ; preds = %bb.oh, %bb.oe
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bex, %bb.oh ], [ %i.bet, %bb.oe ]
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bel, i64 248
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.bew) #67
          to label %bb.oj unwind label %bb.os, !noalias !35689

bb.oh:                                            ; preds = %bb.of
  %i.bex = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.oi:                                            ; preds = %bb.of
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bel, i64 248
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.bey)
          to label %bb.ol unwind label %bb.ok, !noalias !35689

bb.oj:                                            ; preds = %bb.ok, %bb.og
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %i.bfa, %bb.ok ], [ %.pn.i.i.i.i, %bb.og ]
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bel, i64 368
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.bez) #67
          to label %bb.om unwind label %bb.os, !noalias !35689

bb.ok:                                            ; preds = %bb.oi
  %i.bfa = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.ol:                                            ; preds = %bb.oi
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bel, i64 368
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.bfb)
          to label %bb.oo unwind label %bb.on, !noalias !35689

bb.om:                                            ; preds = %bb.on, %bb.oj
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %i.bfd, %bb.on ], [ %.pn2.i.i.i.i, %bb.oj ]
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bel, i64 488
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.bfc) #67
          to label %.body2.i.i unwind label %bb.os, !noalias !35689

bb.on:                                            ; preds = %bb.ol
  %i.bfd = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.oo:                                            ; preds = %bb.ol
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bel, i64 488
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.bfe)
          to label %bb.oq unwind label %bb.op, !noalias !35689

.body2.i.i:                                       ; preds = %bb.op, %bb.om
  %.pn6.i.i.i.i = phi { ptr, i32 } [ %i.bfi, %bb.op ], [ %.pn4.i.i.i.i, %bb.om ]
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bel, i64 616
  %.val9.i.i.i.i = load ptr, ptr %i.bff, align 8, !alias.scope !35696, !noalias !35689
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bel, i64 624
  %.val10.i.i.i.i = load i64, ptr %i.bfg, align 8, !alias.scope !35696, !noalias !35689, !noundef !27
  call fastcc void @"_ZN4core3ptr148drop_in_place$LT$std..collections..hash..map..HashMap$LT$u16$C$$LP$core..option..Option$LT$usize$GT$$C$core..option..Option$LT$usize$GT$$RP$$GT$$GT$17h67e9226638dbd509E"(ptr %.val9.i.i.i.i, i64 %.val10.i.i.i.i) #67, !noalias !35697
  %i.bfh = icmp eq i64 %i.bem, %i.bek
  br i1 %i.bfh, label %.loopexit.i.i.i1152, label %.lr.ph12.i.i.i.i

bb.op:                                            ; preds = %bb.oo
  %i.bfi = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

bb.oq:                                            ; preds = %bb.oo
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bel, i64 616
  %.val.i.i.i.i = load ptr, ptr %i.bfj, align 8, !alias.scope !35696, !noalias !35689 ; 2 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bel, i64 624
  %.val8.i.i.i.i = load i64, ptr %i.bfk, align 8, !alias.scope !35696, !noalias !35689, !noundef !27 ; 4 uses
  %i.bfl = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.bfl, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit.i.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.oq
  %i.bfm = mul i64 %.val8.i.i.i.i, 40
  %i.bfn = icmp slt i64 %.val8.i.i.i.i, 461168601842738790
  call void @llvm.assume(i1 %i.bfn), !noalias !35683
  %i.bfo = and i64 %i.bfm, -16                    ; 2 uses
  %i.bfp = add i64 %i.bfo, 48                     ; 2 uses
  %i.bfq = add nsw i64 %.val8.i.i.i.i, 17
  %i.bfr = add i64 %i.bfq, %i.bfp                 ; 4 uses
  %i.bfs = icmp uge i64 %i.bfr, %i.bfp
  %i.bft = icmp ult i64 %i.bfr, 9223372036854775793
  call void @llvm.assume(i1 %i.bfs), !noalias !35683
  call void @llvm.assume(i1 %i.bft), !noalias !35683
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ], !noalias !35683
  %i.bfu = icmp eq i64 %i.bfr, 0
  br i1 %i.bfu, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit.i.i.i.i", label %bb.or

bb.or:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i
  %i.bfv = sub i64 -48, %i.bfo
  %i.bfw = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.bfv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bfw, i64 noundef %i.bfr, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !35697
  br label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit.i.i.i.i"

bb.os:                                            ; preds = %bb.om, %bb.oj, %bb.og, %bb.oe
  %i.bfx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !35697
  unreachable

"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit.i.i.i.i": ; preds = %bb.or, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i, %bb.oq, %bb.oc, %.lr.ph.i.i.i.i1151
  %i.bfy = icmp eq i64 %i.bem, %i.bek
  br i1 %i.bfy, label %"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h82db87730f8d298fE.exit.i.i", label %.lr.ph.i.i.i.i1151

.lr.ph12.i.i.i.i:                                 ; preds = %.body2.i.i, %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit8.i.i.i.i"
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.bga, %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit8.i.i.i.i" ], [ %i.bem, %.body2.i.i ] ; 2 uses
  %i.bfz = getelementptr inbounds nuw [672 x i8], ptr %i.bei, i64 %.sroa.0.110.i.i.i.i ; 2 uses
  %i.bga = add i64 %.sroa.0.110.i.i.i.i, 1        ; 2 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfz, i64 664
  %i.bgc = load i8, ptr %i.bgb, align 1, !range !1558, !alias.scope !35698, !noalias !35689, !noundef !27
  %i.bgd = trunc nuw i8 %i.bgc to i1
  br i1 %i.bgd, label %bb.ot, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit8.i.i.i.i"

bb.ot:                                            ; preds = %.lr.ph12.i.i.i.i
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h67927a68750f4444E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.bge)
          to label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit8.i.i.i.i" unwind label %bb.ou, !noalias !35689

"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit8.i.i.i.i": ; preds = %bb.ot, %.lr.ph12.i.i.i.i
  %i.bgf = icmp eq i64 %i.bga, %i.bek
  br i1 %i.bgf, label %.loopexit.i.i.i1152, label %.lr.ph12.i.i.i.i

bb.ou:                                            ; preds = %bb.ot
  %i.bgg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !35703
  unreachable

.loopexit.i.i.i1152:                              ; preds = %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit8.i.i.i.i", %.body2.i.i
  %i.bgh = shl nuw i64 672, %.sroa.7.011.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bei, i64 noundef %i.bgh, i64 noundef 8) #65, !noalias !35689
  store i64 0, ptr %i.be, align 8, !alias.scope !35704, !noalias !35679
  br label %.body.i

"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h82db87730f8d298fE.exit.i.i": ; preds = %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17h08ea627278259c67E.exit.i.i.i.i"
  %i.bgi = shl nuw i64 672, %.sroa.7.011.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bei, i64 noundef %i.bgi, i64 noundef 8) #65, !noalias !35689
  br label %.backedge.i.i.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h82db87730f8d298fE.exit.i.i", %.thread.i.i.i.i
  %i.bgj = icmp eq i64 %.sroa.0.0.add.i.i.i.i.i.i.i.i.i.i, 504
  br i1 %i.bgj, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17he8c599f2dc1b6af3E.exit.thread7.i.i", label %.thread.i.i.i.i

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17he8c599f2dc1b6af3E.exit.thread7.i.i": ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.be, align 8, !alias.scope !35704, !noalias !35679
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  invoke fastcc void @"_ZN4core3ptr531drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$C$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$..into_inner$GT$$GT$17h87f08cad00aa4679E"(ptr noalias noundef align 8 dereferenceable(1864) %i.be)
          to label %bb.pe unwind label %bb.pd, !noalias !35598

bb.ov:                                            ; preds = %bb.oy
  %i.bgk = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bea, ptr %.sroa.0254.sroa.6.0..sroa_idx.i, align 8, !alias.scope !35661, !noalias !35662
  store i64 %i.bef, ptr %.sroa.0254.sroa.3.0..sroa_idx.i, align 8, !alias.scope !35661, !noalias !35662
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h67927a68750f4444E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.ao)
          to label %.body.i unwind label %bb.pa, !noalias !35705

bb.ow:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha6d34f306a06546aE.exit.i.i.i.i
  %.sroa.7.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bdz, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !35706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %.sroa.2.0..sroa_idx.i.i1146, ptr noundef nonnull align 8 dereferenceable(648) %.sroa.7.0..sroa_idx13.i.i.i.i, i64 648, i1 false), !noalias !35705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !35706
  store i64 %.sroa.0.0.copyload12.i.i.i.i, ptr %i.ao, align 8, !alias.scope !35707, !noalias !35706
  call void @llvm.experimental.noalias.scope.decl(metadata !35711)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.ap, ptr noundef nonnull align 8 dereferenceable(656) %i.ao, i64 656, i1 false), !alias.scope !35714, !noalias !35706
  store i64 2, ptr %i.ao, align 8, !alias.scope !35716, !noalias !35717
  %i.bgl = load i64, ptr %i.ap, align 8, !range !322, !noalias !35706, !noundef !27 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.bgl, 2
  br i1 %.not1.i.i, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  store i64 %i.bea, ptr %.sroa.0254.sroa.6.0..sroa_idx.i, align 8, !alias.scope !35661, !noalias !35662
end_hunk_11
begin_hunk_12_@"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$5build17h23430b47a3c1f297E":bb.a
  br label %bb.km

bb.km:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i199.i, %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit.i"
  %i.afj = phi i64 [ %i.afe, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i199.i ], [ undef, %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit.i" ] ; 5 uses
  %i.afk = phi ptr [ %i.afi, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i199.i ], [ undef, %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit.i" ] ; 3 uses
  %i.afl = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i199.i ], [ 0, %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit.i" ] ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i, i64 16 ; 2 uses
  %i.afn = icmp sgt <16 x i8> %.val13.i.i.i198.i, splat (i8 -1) ; 2 uses
  %i.afo = getelementptr i8, ptr %.sroa.059.0.copyload.i, i64 %.sroa.260.0.copyload.i
  %i.afp = getelementptr i8, ptr %i.afo, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !51703
  store i64 %i.afl, ptr %i.q, align 8, !noalias !51703
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.afj, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !51703
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.afk, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !51703
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %.sroa.059.0.copyload.i, ptr %.sroa.748.0..sroa_idx.i, align 8, !noalias !51703
  %.sroa.849.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %i.afm, ptr %.sroa.849.0..sroa_idx.i, align 8, !noalias !51703
  %.sroa.950.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.afp, ptr %.sroa.950.0..sroa_idx.i, align 8, !noalias !51703
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 6 uses
  store <16 x i1> %i.afn, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !51703
  %.sroa.1253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 6 uses
  store i64 %i.acm, ptr %.sroa.1253.0..sroa_idx.i, align 8, !noalias !51703
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.914.i)
  %i.afq = icmp eq i64 %i.acm, 0
  br i1 %i.afq, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.thread.i", label %.lr.ph151.i

.lr.ph151.i:                                      ; preds = %bb.km
  %i.afr = bitcast <16 x i1> %i.afn to i16
  %.sroa.914.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.afs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aft = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.4104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.5107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.afu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.kn

bb.kn:                                            ; preds = %bb.lh, %.lr.ph151.i
  %i.afv = phi i64 [ %i.acm, %.lr.ph151.i ], [ %i.agi, %bb.lh ]
  %i.afw = phi i16 [ %i.afr, %.lr.ph151.i ], [ %i.agf, %bb.lh ] ; 2 uses
  %.pre.i.i213146150.i = phi ptr [ %.sroa.059.0.copyload.i, %.lr.ph151.i ], [ %.promoted7.i.i.i.i.i252.i, %bb.lh ] ; 2 uses
  %.promoted15.i.i218148149.i = phi ptr [ %i.afm, %.lr.ph151.i ], [ %.promoted11.i.i.i.i.i253.i, %bb.lh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51934)
  call void @llvm.experimental.noalias.scope.decl(metadata !51937)
  %.not13.i.i211.i = icmp eq i16 %i.afw, 0
  br i1 %.not13.i.i211.i, label %.lr.ph.i.i216.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.i"

._crit_edge.i.i222.i:                             ; preds = %.lr.ph.i.i216.i
  store ptr %i.agb, ptr %.sroa.849.0..sroa_idx.i, align 8, !alias.scope !51940, !noalias !51941
  store ptr %i.aga, ptr %.sroa.748.0..sroa_idx.i, align 8, !alias.scope !51940, !noalias !51941
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.i"

.lr.ph.i.i216.i:                                  ; preds = %bb.kn, %.lr.ph.i.i216.i
  %i.afx = phi ptr [ %i.agb, %.lr.ph.i.i216.i ], [ %.promoted15.i.i218148149.i, %bb.kn ] ; 2 uses
  %i.afy = phi ptr [ %i.aga, %.lr.ph.i.i216.i ], [ %.pre.i.i213146150.i, %bb.kn ]
  %.val911.i.i219.i = load <16 x i8>, ptr %i.afx, align 16, !noalias !51943
  %i.afz = icmp sgt <16 x i8> %.val911.i.i219.i, splat (i8 -1)
  %i.aga = getelementptr inbounds i8, ptr %i.afy, i64 -512 ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afx, i64 16 ; 3 uses
  %.cast.i.i220.i = bitcast <16 x i1> %i.afz to i16 ; 2 uses
  %.not.i.i221.i = icmp eq i16 %.cast.i.i220.i, 0
  br i1 %.not.i.i221.i, label %.lr.ph.i.i216.i, label %._crit_edge.i.i222.i

.thread.i:                                        ; preds = %bb.lo, %bb.ld
  %.sink360.i = phi ptr [ %i.o, %bb.ld ], [ %i.p, %bb.lo ]
  %.pn134.i = phi { ptr, i32 } [ %i.aie, %bb.ld ], [ %lpad.thr_comm.i, %bb.lo ]
  store i16 %i.agf, ptr %.sroa.1051.0..sroa_idx.i, align 8, !alias.scope !51940, !noalias !51941
  store i64 %i.agi, ptr %.sroa.1253.0..sroa_idx.i, align 8, !alias.scope !51934, !noalias !51941
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %.sink360.i) #67, !noalias !51715
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E"(ptr noalias noundef align 8 dereferenceable(64) %i.q) #67, !noalias !51715
  br label %bb.ke

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.i": ; preds = %._crit_edge.i.i222.i, %bb.kn
  %.promoted11.i.i.i.i.i253.i = phi ptr [ %i.agb, %._crit_edge.i.i222.i ], [ %.promoted15.i.i218148149.i, %bb.kn ] ; 3 uses
  %.promoted7.i.i.i.i.i252.i = phi ptr [ %i.aga, %._crit_edge.i.i222.i ], [ %.pre.i.i213146150.i, %bb.kn ] ; 4 uses
  %.lcssa.i.i215.i = phi i16 [ %.cast.i.i220.i, %._crit_edge.i.i222.i ], [ %i.afw, %bb.kn ] ; 3 uses
  %i.agc = add i16 %.lcssa.i.i215.i, -1
  %i.agd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i215.i, i1 true)
  %i.age = zext nneg i16 %i.agd to i64
  %i.agf = and i16 %i.agc, %.lcssa.i.i215.i       ; 8 uses
  %i.agg = sub nsw i64 0, %i.age
  %i.agh = getelementptr inbounds [32 x i8], ptr %.promoted7.i.i.i.i.i252.i, i64 %i.agg ; 3 uses
  %i.agi = add i64 %i.afv, -1                     ; 11 uses
  %i.agj = getelementptr inbounds i8, ptr %i.agh, i64 -32
  %.sroa.012.0.copyload.i = load i64, ptr %i.agj, align 8, !noalias !51944 ; 2 uses
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.agh, i64 -24
  %.sroa.613.0.copyload.i = load i64, ptr %.sroa.613.0..sroa_idx.i, align 8, !noalias !51944 ; 2 uses
  %.sroa.914.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.agh, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.914.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.914.0..sroa_idx.i, i64 16, i1 false), !noalias !51944
  %.not129.i = icmp eq i64 %.sroa.613.0.copyload.i, -9223372036854775808
  br i1 %.not129.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.i", label %bb.ko

bb.ko:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !51703
  store i64 %.sroa.613.0.copyload.i, ptr %i.p, align 8, !noalias !51703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.914.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.914.i, i64 16, i1 false), !noalias !51703
  %.val157.i = load ptr, ptr %i.ai, align 8, !noalias !51703, !nonnull !27, !align !241, !noundef !27
  %.val.i224.i = load ptr, ptr %.val157.i, align 8, !noalias !51715, !nonnull !27, !align !241, !noundef !27
  %i.agk = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i224.i)
          to label %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h59c13cd199021428E.exit226.i" unwind label %bb.lo, !noalias !51715

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.thread.i": ; preds = %bb.lh, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.914.i)
  br label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i239.i"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.i": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.i"
  store i16 %i.agf, ptr %.sroa.1051.0..sroa_idx.i, align 8, !alias.scope !51940, !noalias !51941
  store i64 %i.agi, ptr %.sroa.1253.0..sroa_idx.i, align 8, !alias.scope !51934, !noalias !51941
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.914.i)
  %i.agl = icmp eq i64 %i.agi, 0
  br i1 %i.agl, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i239.i", label %.preheader.i.i.i.i.i227.i

.preheader.i.i.i.i.i227.i:                        ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.i", %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i234.i"
  %.lcssa13.i.i.i.i.i231.i = phi ptr [ %.lcssa12.i.i.i.i.i235.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i234.i" ], [ %.promoted11.i.i.i.i.i253.i, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.i" ] ; 2 uses
  %i.agm = phi i64 [ %i.agz, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i234.i" ], [ %i.agi, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.i" ]
  %.lcssa69.i.i.i.i.i232.i = phi ptr [ %.lcssa68.i.i.i.i.i236.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i234.i" ], [ %.promoted7.i.i.i.i.i252.i, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.i" ] ; 2 uses
  %i.agn = phi i16 [ %i.agw, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i234.i" ], [ %i.agf, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i233.i = icmp eq i16 %i.agn, 0
  br i1 %.not13.i.i.i.i.i.i233.i, label %.lr.ph.i.i.i.i.i.i241.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i234.i"

.lr.ph.i.i.i.i.i.i241.i:                          ; preds = %.preheader.i.i.i.i.i227.i, %.lr.ph.i.i.i.i.i.i241.i
  %i.ago = phi ptr [ %i.ags, %.lr.ph.i.i.i.i.i.i241.i ], [ %.lcssa13.i.i.i.i.i231.i, %.preheader.i.i.i.i.i227.i ] ; 2 uses
  %i.agp = phi ptr [ %i.agr, %.lr.ph.i.i.i.i.i.i241.i ], [ %.lcssa69.i.i.i.i.i232.i, %.preheader.i.i.i.i.i227.i ]
  %.val911.i.i.i.i.i.i242.i = load <16 x i8>, ptr %i.ago, align 16, !noalias !51945
  %i.agq = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i242.i, splat (i8 -1)
  %i.agr = getelementptr inbounds i8, ptr %i.agp, i64 -512 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.ago, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i243.i = bitcast <16 x i1> %i.agq to i16 ; 2 uses
  %.not.i.i.i.i.i.i244.i = icmp eq i16 %.cast.i.i.i.i.i.i243.i, 0
  br i1 %.not.i.i.i.i.i.i244.i, label %.lr.ph.i.i.i.i.i.i241.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i234.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i234.i": ; preds = %.lr.ph.i.i.i.i.i.i241.i, %.preheader.i.i.i.i.i227.i
  %.lcssa12.i.i.i.i.i235.i = phi ptr [ %.lcssa13.i.i.i.i.i231.i, %.preheader.i.i.i.i.i227.i ], [ %i.ags, %.lr.ph.i.i.i.i.i.i241.i ]
  %.lcssa68.i.i.i.i.i236.i = phi ptr [ %.lcssa69.i.i.i.i.i232.i, %.preheader.i.i.i.i.i227.i ], [ %i.agr, %.lr.ph.i.i.i.i.i.i241.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i237.i = phi i16 [ %i.agn, %.preheader.i.i.i.i.i227.i ], [ %.cast.i.i.i.i.i.i243.i, %.lr.ph.i.i.i.i.i.i241.i ] ; 3 uses
  %i.agt = add i16 %.lcssa.i.i.i.i.i.i237.i, -1
  %i.agu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i237.i, i1 true)
  %i.agv = zext nneg i16 %i.agu to i64
  %i.agw = and i16 %i.agt, %.lcssa.i.i.i.i.i.i237.i
  %i.agx = sub nsw i64 0, %i.agv
  %i.agy = getelementptr inbounds [32 x i8], ptr %.lcssa68.i.i.i.i.i236.i, i64 %i.agx
  %i.agz = add i64 %i.agm, -1                     ; 2 uses
  %i.aha = getelementptr inbounds i8, ptr %i.agy, i64 -24
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.aha), !noalias !51958
  %.old5.i.i.i.i.i238.i = icmp eq i64 %i.agz, 0
  br i1 %.old5.i.i.i.i.i238.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i239.i", label %.preheader.i.i.i.i.i227.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i239.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i234.i", %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.i", %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.thread.i"
  %i.ahb = icmp eq i64 %i.afj, 0
  %or.cond361.i = or i1 %i.aez, %i.ahb
  br i1 %or.cond361.i, label %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit246.i", label %bb.kp

bb.kp:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i239.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afk, i64 noundef %i.afj, i64 noundef range(i64 1, -9223372036854775807) %i.afl) #65, !noalias !51959
  br label %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit246.i"

"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit246.i": ; preds = %bb.kp, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i239.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !51703
  call void @llvm.experimental.noalias.scope.decl(metadata !51960)
  call void @llvm.experimental.noalias.scope.decl(metadata !51963)
  %i.ahc = load ptr, ptr %i.z, align 8, !alias.scope !51966, !noalias !51703, !nonnull !27, !noundef !27
  %i.ahd = atomicrmw sub ptr %i.ahc, i64 1 release, align 8, !noalias !51967
  %i.ahe = icmp eq i64 %i.ahd, 1
  br i1 %i.ahe, label %bb.kq, label %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit248.i"

bb.kq:                                            ; preds = %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit246.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h71f147a0f37e53f5E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit248.i" unwind label %bb.ka, !noalias !51715

"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit248.i": ; preds = %bb.kq, %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit246.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !51703
  call void @llvm.experimental.noalias.scope.decl(metadata !51968)
  call void @llvm.experimental.noalias.scope.decl(metadata !51971)
  br label %bb.kr

bb.kr:                                            ; preds = %.backedge.i.i.i, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit248.i"
  %.sroa.0.0.idx12.i.i.i = phi i64 [ 0, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit248.i" ], [ %.sroa.0.0.add.i.i.i, %.backedge.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i = phi i64 [ 0, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit248.i" ], [ %i.ahf, %.backedge.i.i.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.idx12.i.i.i
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i, 8 ; 2 uses
  %i.ahf = add nuw nsw i64 %.sroa.7.011.i.i.i, 1
  %i.ahg = load ptr, ptr %.sroa.0.0.ptr.i.i.i, align 8, !alias.scope !51974, !noalias !51703, !noundef !27 ; 3 uses
  %i.ahh = icmp eq ptr %i.ahg, null
  br i1 %i.ahh, label %.backedge.i.i.i, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.ahi = shl nuw i64 1, %.sroa.7.011.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !51975)
  br label %.lr.ph.i.i.i.i.i277

.lr.ph.i.i.i.i.i277:                              ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i.i", %bb.ks
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.ahk, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i.i" ], [ 0, %bb.ks ] ; 2 uses
  %i.ahj = getelementptr inbounds nuw [64 x i8], ptr %i.ahg, i64 %.sroa.0.07.i.i.i.i.i ; 5 uses
  %i.ahk = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51978)
  call void @llvm.experimental.noalias.scope.decl(metadata !51981)
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahj, i64 56
  %i.ahm = load i8, ptr %i.ahl, align 1, !range !1558, !alias.scope !51984, !noalias !51985, !noundef !27
  %i.ahn = trunc nuw i8 %i.ahm to i1
  br i1 %i.ahn, label %bb.kt, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i.i"

bb.kt:                                            ; preds = %.lr.ph.i.i.i.i.i277
  call void @llvm.experimental.noalias.scope.decl(metadata !51986)
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !51989)
  call void @llvm.experimental.noalias.scope.decl(metadata !51992)
  %.val4.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aho, align 8, !alias.scope !51995, !noalias !51985 ; 2 uses
  %i.ahp = icmp eq i64 %.val4.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahp, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahq, align 8, !alias.scope !51995, !noalias !51985, !nonnull !27, !noundef !27
  %i.ahr = shl nuw i64 %.val4.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ahr, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !51996
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ku, %bb.kt
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahj, i64 32
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ahs, align 8, !alias.scope !51995, !noalias !51985 ; 2 uses
  %i.aht = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aht, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i.i", label %bb.kv

bb.kv:                                            ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahj, i64 40
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahu, align 8, !alias.scope !51995, !noalias !51985, !nonnull !27, !noundef !27
  %i.ahv = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ahv, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !51996
  br label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i.i"

"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i.i": ; preds = %bb.kv, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i277
  %i.ahw = icmp eq i64 %i.ahk, %i.ahi
  br i1 %i.ahw, label %"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i.i.i", label %.lr.ph.i.i.i.i.i277

"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i.i.i": ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i.i"
  %i.ahx = shl nuw i64 64, %.sroa.7.011.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahg, i64 noundef %i.ahx, i64 noundef 8) #65, !noalias !51985
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i.i.i", %bb.kr
  %i.ahy = icmp eq i64 %.sroa.0.0.add.i.i.i, 504
  br i1 %i.ahy, label %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit.i", label %bb.kr

"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit.i": ; preds = %.backedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !51703
  call void @llvm.experimental.noalias.scope.decl(metadata !51997)
  call void @llvm.experimental.noalias.scope.decl(metadata !52000)
  %i.ahz = load ptr, ptr %i.ah, align 8, !alias.scope !52003, !noalias !51703, !nonnull !27, !noundef !27
  %i.aia = atomicrmw sub ptr %i.ahz, i64 1 release, align 8, !noalias !52004
  %i.aib = icmp eq i64 %i.aia, 1
  br i1 %i.aib, label %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit307.sink.split.i", label %.thread303

.thread303:                                       ; preds = %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.nd

"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit307.sink.split.i": ; preds = %bb.mt, %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit.i"
  %.sroa.11.sroa.8.0 = phi i32 [ undef, %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit.i" ], [ %.sroa.11.sroa.8.6, %bb.mt ]
  %.sroa.11.sroa.0.0 = phi i32 [ undef, %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit.i" ], [ %.sroa.11.sroa.0.6, %bb.mt ]
  %.sroa.0122.0 = phi i64 [ 11, %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit.i" ], [ %.sroa.0122.6, %bb.mt ] ; 2 uses
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h71f147a0f37e53f5E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.nb unwind label %.loopexit.split-lp346.loopexit.split-lp

"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h59c13cd199021428E.exit226.i": ; preds = %bb.ko
  br i1 %i.agk, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h59c13cd199021428E.exit226.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !51703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !51703
  store i64 %.sroa.012.0.copyload.i, ptr %i.afs, align 8, !noalias !51703
  store i64 1, ptr %i.m, align 8, !noalias !51703
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h72334a200a8bbb88E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.n, i64 %.val185, i32 %.val186, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.ky unwind label %bb.lo, !noalias !52005

bb.kx:                                            ; preds = %"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17h59c13cd199021428E.exit226.i"
  store i16 %i.agf, ptr %.sroa.1051.0..sroa_idx.i, align 8, !alias.scope !51940, !noalias !51941
  store i64 %i.agi, ptr %.sroa.1253.0..sroa_idx.i, align 8, !alias.scope !51934, !noalias !51941
  br label %bb.ll

bb.ky:                                            ; preds = %bb.kw
  %i.aic = load i64, ptr %i.n, align 8, !range !450, !noalias !51703, !noundef !27
  %i.aid = trunc nuw i64 %i.aic to i1
  br i1 %i.aid, label %.thread83.i, label %bb.kz

.thread83.i:                                      ; preds = %bb.ky
  store i16 %i.agf, ptr %.sroa.1051.0..sroa_idx.i, align 8, !alias.scope !51940, !noalias !51941
  store i64 %i.agi, ptr %.sroa.1253.0..sroa_idx.i, align 8, !alias.scope !51934, !noalias !51941
  %.sroa.0101.0.copyload.i = load i64, ptr %i.aft, align 8, !noalias !51703 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.627.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.498.0..sroa_idx.i, i64 16, i1 false), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !51703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18124, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.627.sroa.7.i, i64 16, i1 false), !noalias !51796
  %.sroa.11.sroa.0.0.extract.trunc126 = trunc i64 %.sroa.0101.0.copyload.i to i32
  %.sroa.11.sroa.8.0.extract.shift128 = lshr i64 %.sroa.0101.0.copyload.i, 32
  %.sroa.11.sroa.8.0.extract.trunc129 = trunc nuw i64 %.sroa.11.sroa.8.0.extract.shift128 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !51703
  br label %bb.ll

bb.kz:                                            ; preds = %bb.ky
  %.sroa.097.0.copyload.i = load i64, ptr %i.aft, align 8, !noalias !51703 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.627.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.498.0..sroa_idx.i, i64 16, i1 false), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !51703
  %.not130.i = icmp eq i64 %.sroa.097.0.copyload.i, -9223372036854775808
  br i1 %.not130.i, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4104.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.627.sroa.7.i, i64 16, i1 false), !noalias !51703
  br label %bb.lc

bb.lb:                                            ; preds = %bb.kz
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4104.0..sroa_idx.i, align 8, !noalias !51703
  store i64 0, ptr %.sroa.5107.0..sroa_idx.i, align 8, !noalias !51703
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  %.sroa.097.0.copyload.sink.i = phi i64 [ 0, %bb.lb ], [ %.sroa.097.0.copyload.i, %bb.la ]
  store i64 %.sroa.097.0.copyload.sink.i, ptr %i.o, align 8, !noalias !51703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !51703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !51703
  invoke void @"_ZN7roaring6bitmap3ops88_$LT$impl$u20$core..ops..bit..BitOrAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17h09102212d483a5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.le unwind label %bb.ld, !noalias !51715

bb.ld:                                            ; preds = %bb.le, %bb.lc
  %i.aie = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.le:                                            ; preds = %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !51703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !51703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !51703
  store i64 1, ptr %i.j, align 8, !noalias !51703
  store i64 %.sroa.012.0.copyload.i, ptr %i.afu, align 8, !noalias !51703
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h2057a6ebc64b5a15E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, i64 %.val185, i32 %.val186, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.lf unwind label %bb.ld, !noalias !52005

bb.lf:                                            ; preds = %bb.le
  %i.aif = load i32, ptr %i.k, align 8, !range !10871, !noalias !51703, !noundef !27 ; 2 uses
  %.not131.i = icmp eq i32 %i.aif, 5
  br i1 %.not131.i, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  store i16 %i.agf, ptr %.sroa.1051.0..sroa_idx.i, align 8, !alias.scope !51940, !noalias !51941
  store i64 %i.agi, ptr %.sroa.1253.0..sroa_idx.i, align 8, !alias.scope !51934, !noalias !51941
  %.sroa.4117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.11.sroa.8.4.copyload132 = load i32, ptr %.sroa.4117.0..sroa_idx.i, align 4, !noalias !51796
  %.sroa.18124.12..sroa.4117.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18124, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18124.12..sroa.4117.0..sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !51796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51703
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.o), !noalias !51715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !51703
  br label %bb.lj

bb.lh:                                            ; preds = %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !51703
  %i.aig = load ptr, ptr %i.z, align 8, !noalias !51703, !nonnull !27, !noundef !27
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %i.aii = atomicrmw add ptr %i.aih, i64 1 monotonic, align 8, !noalias !51715 ; 0 uses
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.o), !noalias !51715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.914.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.914.i)
  %i.aij = icmp eq i64 %i.agi, 0
  br i1 %i.aij, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit223.thread.thread.i", label %bb.kn

bb.li:                                            ; preds = %bb.kf, %bb.iz
  %i.aik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !51715
  unreachable

bb.lj:                                            ; preds = %bb.ll, %bb.lg
  %.sroa.11.sroa.8.1 = phi i32 [ %.sroa.11.sroa.8.2, %bb.ll ], [ %.sroa.11.sroa.8.4.copyload132, %bb.lg ]
  %.sroa.11.sroa.0.1 = phi i32 [ %.sroa.11.sroa.0.2, %bb.ll ], [ %i.aif, %bb.lg ]
  %.sroa.0122.1 = phi i64 [ %.sroa.0122.2, %bb.ll ], [ 7, %bb.lg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.914.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !52006)
  call void @llvm.experimental.noalias.scope.decl(metadata !52009)
  call void @llvm.experimental.noalias.scope.decl(metadata !52012)
  call void @llvm.experimental.noalias.scope.decl(metadata !52015)
  call void @llvm.experimental.noalias.scope.decl(metadata !52018)
  %i.ail = icmp eq i64 %i.agi, 0
  br i1 %i.ail, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i262.i", label %.preheader.i.i.i.i.i250.i

end_hunk_12
begin_hunk_13_@"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$5build17h23430b47a3c1f297E":bb.a
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.w), !noalias !51715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.ajm = icmp eq i64 %i.aef, 0
  br i1 %i.ajm, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h822375849b932764E.exit.thread.thread.i", label %bb.kj

bb.mb:                                            ; preds = %bb.md, %bb.lz
  %.sroa.11.sroa.8.4 = phi i32 [ %.sroa.11.sroa.8.5, %bb.md ], [ %.sroa.11.sroa.8.4.copyload, %bb.lz ]
  %.sroa.11.sroa.0.4 = phi i32 [ %.sroa.11.sroa.0.5, %bb.md ], [ %i.aji, %bb.lz ]
  %.sroa.0122.4 = phi i64 [ %.sroa.0122.5, %bb.md ], [ 7, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !52036)
  call void @llvm.experimental.noalias.scope.decl(metadata !52039)
  call void @llvm.experimental.noalias.scope.decl(metadata !52042)
  call void @llvm.experimental.noalias.scope.decl(metadata !52045)
  call void @llvm.experimental.noalias.scope.decl(metadata !52048)
  %i.ajn = icmp eq i64 %i.aef, 0
  br i1 %i.ajn, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i284.i", label %.preheader.i.i.i.i.i272.i

.preheader.i.i.i.i.i272.i:                        ; preds = %bb.mb, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i279.i"
  %.lcssa13.i.i.i.i.i276.i = phi ptr [ %.lcssa12.i.i.i.i.i280.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i279.i" ], [ %.promoted11.i.i.i.i.i275.i, %bb.mb ] ; 2 uses
  %i.ajo = phi i64 [ %i.akb, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i279.i" ], [ %i.aef, %bb.mb ]
  %.lcssa69.i.i.i.i.i277.i = phi ptr [ %.lcssa68.i.i.i.i.i281.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i279.i" ], [ %.promoted7.i.i.i.i.i274.i, %bb.mb ] ; 2 uses
  %i.ajp = phi i16 [ %i.ajy, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i279.i" ], [ %i.aec, %bb.mb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52051)
  %.not13.i.i.i.i.i.i278.i = icmp eq i16 %i.ajp, 0
  br i1 %.not13.i.i.i.i.i.i278.i, label %.lr.ph.i.i.i.i.i.i286.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i279.i"

._crit_edge.i.i.i.i.i.i290.i:                     ; preds = %.lr.ph.i.i.i.i.i.i286.i
  store ptr %i.aju, ptr %.sroa.833.0..sroa_idx.i, align 8, !alias.scope !52054, !noalias !51703
  store ptr %i.ajt, ptr %.sroa.732.0..sroa_idx.i, align 8, !alias.scope !52054, !noalias !51703
  br label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i279.i"

.lr.ph.i.i.i.i.i.i286.i:                          ; preds = %.preheader.i.i.i.i.i272.i, %.lr.ph.i.i.i.i.i.i286.i
  %i.ajq = phi ptr [ %i.aju, %.lr.ph.i.i.i.i.i.i286.i ], [ %.lcssa13.i.i.i.i.i276.i, %.preheader.i.i.i.i.i272.i ] ; 2 uses
  %i.ajr = phi ptr [ %i.ajt, %.lr.ph.i.i.i.i.i.i286.i ], [ %.lcssa69.i.i.i.i.i277.i, %.preheader.i.i.i.i.i272.i ]
  %.val911.i.i.i.i.i.i287.i = load <16 x i8>, ptr %i.ajq, align 16, !noalias !52055
  %i.ajs = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i287.i, splat (i8 -1)
  %i.ajt = getelementptr inbounds i8, ptr %i.ajr, i64 -512 ; 3 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i288.i = bitcast <16 x i1> %i.ajs to i16 ; 2 uses
  %.not.i.i.i.i.i.i289.i = icmp eq i16 %.cast.i.i.i.i.i.i288.i, 0
  br i1 %.not.i.i.i.i.i.i289.i, label %.lr.ph.i.i.i.i.i.i286.i, label %._crit_edge.i.i.i.i.i.i290.i

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i279.i": ; preds = %._crit_edge.i.i.i.i.i.i290.i, %.preheader.i.i.i.i.i272.i
  %.lcssa12.i.i.i.i.i280.i = phi ptr [ %i.aju, %._crit_edge.i.i.i.i.i.i290.i ], [ %.lcssa13.i.i.i.i.i276.i, %.preheader.i.i.i.i.i272.i ]
  %.lcssa68.i.i.i.i.i281.i = phi ptr [ %i.ajt, %._crit_edge.i.i.i.i.i.i290.i ], [ %.lcssa69.i.i.i.i.i277.i, %.preheader.i.i.i.i.i272.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i282.i = phi i16 [ %.cast.i.i.i.i.i.i288.i, %._crit_edge.i.i.i.i.i.i290.i ], [ %i.ajp, %.preheader.i.i.i.i.i272.i ] ; 3 uses
  %i.ajv = add i16 %.lcssa.i.i.i.i.i.i282.i, -1
  %i.ajw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i282.i, i1 true)
  %i.ajx = zext nneg i16 %i.ajw to i64
  %i.ajy = and i16 %i.ajv, %.lcssa.i.i.i.i.i.i282.i
  %i.ajz = sub nsw i64 0, %i.ajx
  %i.aka = getelementptr inbounds [32 x i8], ptr %.lcssa68.i.i.i.i.i281.i, i64 %i.ajz
  %i.akb = add i64 %i.ajo, -1                     ; 2 uses
  %i.akc = getelementptr inbounds i8, ptr %i.aka, i64 -24
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.akc), !noalias !52056
  %.old5.i.i.i.i.i283.i = icmp eq i64 %i.akb, 0
  br i1 %.old5.i.i.i.i.i283.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i284.i", label %.preheader.i.i.i.i.i272.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i284.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i279.i", %bb.mb
  %i.akd = icmp eq i64 %i.adg, 0
  %or.cond363.i = or i1 %i.acw, %i.akd
  br i1 %or.cond363.i, label %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit291.i", label %bb.mc

bb.mc:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i284.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adh, i64 noundef %i.adg, i64 noundef range(i64 1, -9223372036854775807) %i.adi) #65, !noalias !52057
  br label %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit291.i"

bb.md:                                            ; preds = %.thread101.i, %bb.lq
  %.sroa.11.sroa.8.5 = phi i32 [ undef, %bb.lq ], [ %.sroa.11.sroa.8.0.extract.trunc131, %.thread101.i ]
  %.sroa.11.sroa.0.5 = phi i32 [ undef, %bb.lq ], [ %.sroa.11.sroa.0.0.extract.trunc127, %.thread101.i ]
  %.sroa.0122.5 = phi i64 [ 4, %bb.lq ], [ 7, %.thread101.i ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.x), !noalias !51715
  br label %bb.mb

"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h9afe15e12a332a90E.exit291.i": ; preds = %bb.mc, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h9fc39f9d07856c33E.exit.i.i.i.i284.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !51703
  br label %bb.lm

"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit271.i": ; preds = %bb.ln, %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !51703
  %i.ake = trunc nuw i8 %.sroa.047.4.i to i1
  br i1 %i.ake, label %bb.me, label %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i"

"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i": ; preds = %bb.mi, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i, %bb.me, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit271.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !51703
  br label %bb.mk

bb.me:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit271.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !52058)
  call void @llvm.experimental.noalias.scope.decl(metadata !52061)
  call void @llvm.experimental.noalias.scope.decl(metadata !52064)
  call void @llvm.experimental.noalias.scope.decl(metadata !52067)
  call void @llvm.experimental.noalias.scope.decl(metadata !52070)
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.akg = load i64, ptr %i.akf, align 8, !alias.scope !52073, !noalias !51703, !noundef !27 ; 3 uses
  %i.akh = icmp eq i64 %i.akg, 0
  br i1 %i.akh, label %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i", label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call void @llvm.experimental.noalias.scope.decl(metadata !52074)
  %i.aki = icmp eq i64 %i.acm, 0
  br i1 %i.aki, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.akj = load ptr, ptr %i.ac, align 8, !alias.scope !52077, !noalias !51703, !nonnull !27, !noundef !27 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.akj, align 16, !noalias !52078
  %i.akk = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akj, i64 16
  %i.akm = bitcast <16 x i1> %i.akk to i16
  br label %bb.mh

bb.mh:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i", %bb.mg
  %.sroa.06.017.i.i.i.i.i.i.i = phi ptr [ %i.akj, %bb.mg ], [ %.sroa.06.1.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i = phi ptr [ %i.akl, %bb.mg ], [ %.sroa.6.1.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i = phi i16 [ %i.akm, %bb.mg ], [ %i.akv, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i = phi i64 [ %i.acm, %bb.mg ], [ %i.aky, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.mh, %.lr.ph.i.i.i.i.i.i.i.i
  %i.akn = phi ptr [ %i.akr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.mh ] ; 2 uses
  %i.ako = phi ptr [ %i.akq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.mh ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.akn, align 16, !noalias !52081
  %i.akp = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.akq = getelementptr inbounds i8, ptr %i.ako, i64 -512 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akn, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.akp to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.mh
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.mh ], [ %i.akr, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.mh ], [ %i.akq, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i, %bb.mh ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aks = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.akt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.aku = zext nneg i16 %i.akt to i64
  %i.akv = and i16 %i.aks, %.lcssa.i.i.i.i.i.i.i.i
  %i.akw = sub nsw i64 0, %i.aku
  %i.akx = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i, i64 %i.akw
  %i.aky = add i64 %.sroa.108.014.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.akz = getelementptr inbounds i8, ptr %i.akx, i64 -24
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.akz), !noalias !52084
  %i.ala = icmp eq i64 %i.aky, 0
  br i1 %i.ala, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i, label %bb.mh

_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i: ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h0039326eb54cae0eE.exit.i.i.i.i.i.i.i", %bb.mf
  %i.alb = shl i64 %i.akg, 5                      ; 2 uses
  %i.alc = add i64 %i.alb, 32                     ; 2 uses
  %i.ald = add i64 %i.akg, 17
  %i.ale = add i64 %i.ald, %i.alc                 ; 4 uses
  %i.alf = icmp uge i64 %i.ale, %i.alc
  %i.alg = icmp ult i64 %i.ale, 9223372036854775793
  call void @llvm.assume(i1 %i.alf)
  call void @llvm.assume(i1 %i.alg)
  %i.alh = icmp eq i64 %i.ale, 0
  br i1 %i.alh, label %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i", label %bb.mi

bb.mi:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hb00ab8b963cbaf71E.exit.i.i.i.i.i.i
  %i.ali = load ptr, ptr %i.ac, align 8, !alias.scope !52073, !noalias !51703, !nonnull !27, !noundef !27
  %i.alj = sub nuw nsw i64 -32, %i.alb
  %i.alk = getelementptr inbounds i8, ptr %i.ali, i64 %i.alj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.alk, i64 noundef %i.ale, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !52085
  br label %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i"

bb.mj:                                            ; preds = %bb.mr, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit189.i"
  br i1 %.sroa.051.0.i, label %bb.ms, label %.body.thread.i

bb.mk:                                            ; preds = %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i", %bb.jn
  %.sroa.11.sroa.8.6 = phi i32 [ %.sroa.11.sroa.8.3, %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i" ], [ %.sroa.11.sroa.8.0.extract.trunc, %bb.jn ] ; 2 uses
  %.sroa.11.sroa.0.6 = phi i32 [ %.sroa.11.sroa.0.3, %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i" ], [ %.sroa.11.sroa.0.0.extract.trunc, %bb.jn ] ; 2 uses
  %.sroa.0122.6 = phi i64 [ %.sroa.0122.3, %"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE.exit.i" ], [ %i.abn, %bb.jn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52086)
  call void @llvm.experimental.noalias.scope.decl(metadata !52089)
  br label %bb.ml

bb.ml:                                            ; preds = %.backedge.i.i300.i, %bb.mk
  %.sroa.0.0.idx12.i.i292.i = phi i64 [ 0, %bb.mk ], [ %.sroa.0.0.add.i.i295.i, %.backedge.i.i300.i ] ; 2 uses
  %.sroa.7.011.i.i293.i = phi i64 [ 0, %bb.mk ], [ %i.all, %.backedge.i.i300.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i294.i = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.idx12.i.i292.i
  %.sroa.0.0.add.i.i295.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i292.i, 8 ; 2 uses
  %i.all = add nuw nsw i64 %.sroa.7.011.i.i293.i, 1
  %i.alm = load ptr, ptr %.sroa.0.0.ptr.i.i294.i, align 8, !alias.scope !52092, !noalias !51703, !noundef !27 ; 3 uses
  %i.aln = icmp eq ptr %i.alm, null
  br i1 %i.aln, label %.backedge.i.i300.i, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.alo = shl nuw i64 1, %.sroa.7.011.i.i293.i
  call void @llvm.experimental.noalias.scope.decl(metadata !52093)
  br label %.lr.ph.i.i.i.i296.i

.lr.ph.i.i.i.i296.i:                              ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i298.i", %bb.mm
  %.sroa.0.07.i.i.i.i297.i = phi i64 [ %i.alq, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i298.i" ], [ 0, %bb.mm ] ; 2 uses
  %i.alp = getelementptr inbounds nuw [64 x i8], ptr %i.alm, i64 %.sroa.0.07.i.i.i.i297.i ; 5 uses
  %i.alq = add nuw nsw i64 %.sroa.0.07.i.i.i.i297.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52096)
  call void @llvm.experimental.noalias.scope.decl(metadata !52099)
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alp, i64 56
  %i.als = load i8, ptr %i.alr, align 1, !range !1558, !alias.scope !52102, !noalias !52103, !noundef !27
  %i.alt = trunc nuw i8 %i.als to i1
  br i1 %i.alt, label %bb.mn, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i298.i"

bb.mn:                                            ; preds = %.lr.ph.i.i.i.i296.i
  call void @llvm.experimental.noalias.scope.decl(metadata !52104)
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !52107)
  call void @llvm.experimental.noalias.scope.decl(metadata !52110)
  %.val4.i.i.i.i.i.i.i.i.i301.i = load i64, ptr %i.alu, align 8, !alias.scope !52113, !noalias !52103 ; 2 uses
  %i.alv = icmp eq i64 %.val4.i.i.i.i.i.i.i.i.i301.i, 0
  br i1 %i.alv, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i303.i", label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alp, i64 16
  %.val5.i.i.i.i.i.i.i.i.i302.i = load ptr, ptr %i.alw, align 8, !alias.scope !52113, !noalias !52103, !nonnull !27, !noundef !27
  %i.alx = shl nuw i64 %.val4.i.i.i.i.i.i.i.i.i301.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i302.i, i64 noundef %i.alx, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !52114
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i303.i"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i303.i": ; preds = %bb.mo, %bb.mn
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alp, i64 32
  %.val.i.i.i.i.i.i.i.i.i304.i = load i64, ptr %i.aly, align 8, !alias.scope !52113, !noalias !52103 ; 2 uses
  %i.alz = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i304.i, 0
  br i1 %i.alz, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i298.i", label %bb.mp

bb.mp:                                            ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i303.i"
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alp, i64 40
  %.val1.i.i.i.i.i.i.i.i.i305.i = load ptr, ptr %i.ama, align 8, !alias.scope !52113, !noalias !52103, !nonnull !27, !noundef !27
  %i.amb = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i304.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i305.i, i64 noundef %i.amb, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !52114
  br label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i298.i"

"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i298.i": ; preds = %bb.mp, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i303.i", %.lr.ph.i.i.i.i296.i
  %i.amc = icmp eq i64 %i.alq, %i.alo
  br i1 %i.amc, label %"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i.i299.i", label %.lr.ph.i.i.i.i296.i

"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i.i299.i": ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i298.i"
  %i.amd = shl nuw i64 64, %.sroa.7.011.i.i293.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.alm, i64 noundef %i.amd, i64 noundef 8) #65, !noalias !52103
  br label %.backedge.i.i300.i

.backedge.i.i300.i:                               ; preds = %"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i.i299.i", %bb.ml
  %i.ame = icmp eq i64 %.sroa.0.0.add.i.i295.i, 504
  br i1 %i.ame, label %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit306.i", label %bb.ml

bb.mq:                                            ; preds = %bb.lp, %bb.kk
  %lpad.thr_comm89.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread84.i

bb.mr:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit189.i"
  call fastcc void @"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE"(ptr noalias noundef align 8 dereferenceable(48) %i.ac) #67, !noalias !51715
  br label %bb.mj

bb.ms:                                            ; preds = %bb.mj
  call fastcc void @"_ZN4core3ptr125drop_in_place$LT$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h278f661600436fefE"(ptr noalias noundef align 8 dereferenceable(48) %i.ad) #67, !noalias !51715
  br label %.body.thread.i

"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit306.i": ; preds = %.backedge.i.i300.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !51703
  br i1 %.not.not.i, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.mu, %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit306.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !51703
  call void @llvm.experimental.noalias.scope.decl(metadata !52115)
  call void @llvm.experimental.noalias.scope.decl(metadata !52118)
  %i.amf = load ptr, ptr %i.ah, align 8, !alias.scope !52121, !noalias !51703, !nonnull !27, !noundef !27
  %i.amg = atomicrmw sub ptr %i.amf, i64 1 release, align 8, !noalias !52122
  %i.amh = icmp eq i64 %i.amg, 1
  br i1 %i.amh, label %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit307.sink.split.i", label %.thread308

.thread308:                                       ; preds = %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.nc

bb.mu:                                            ; preds = %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit306.i"
  call fastcc void @"_ZN4core3ptr300drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h8aef05f0dcba6ed6E"(ptr noalias noundef align 8 dereferenceable(512) %i.ag), !noalias !51715
  br label %bb.mt

bb.mv:                                            ; preds = %bb.jl, %"_ZN4core3ptr101drop_in_place$LT$rayon..iter..par_bridge..IterParallelProducer$LT$roaring..bitmap..iter..Iter$GT$$GT$17h1829ce7f7a2b9c6dE.exit.thread.i.sink.split.i.i.i", %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$core..sync..atomic..AtomicBool$GT$$GT$17h773b7ca99b55a818E.exit20.i.i.i.i"
  %.pn147.pn.i = phi { ptr, i32 } [ %.pn1127.i.ph.i.i.i, %"_ZN4core3ptr101drop_in_place$LT$rayon..iter..par_bridge..IterParallelProducer$LT$roaring..bitmap..iter..Iter$GT$$GT$17h1829ce7f7a2b9c6dE.exit.thread.i.sink.split.i.i.i" ], [ %i.abm, %bb.jl ], [ %i.abe, %"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$core..sync..atomic..AtomicBool$GT$$GT$17h773b7ca99b55a818E.exit20.i.i.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !52123)
  call void @llvm.experimental.noalias.scope.decl(metadata !52126), !noalias !51715
  br label %bb.mw

bb.mw:                                            ; preds = %.backedge.i.i, %bb.mv
  %.sroa.0.0.idx12.i.i = phi i64 [ 0, %bb.mv ], [ %.sroa.0.0.add.i.i, %.backedge.i.i ] ; 2 uses
  %.sroa.7.011.i.i = phi i64 [ 0, %bb.mv ], [ %i.ami, %.backedge.i.i ] ; 3 uses
  %.sroa.0.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.idx12.i.i
  %.sroa.0.0.add.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i, 8 ; 2 uses
  %i.ami = add nuw nsw i64 %.sroa.7.011.i.i, 1
  %i.amj = load ptr, ptr %.sroa.0.0.ptr.i.i, align 8, !alias.scope !52129, !noalias !51715, !noundef !27 ; 3 uses
  %i.amk = icmp eq ptr %i.amj, null
  br i1 %i.amk, label %.backedge.i.i, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.aml = shl nuw i64 1, %.sroa.7.011.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !52130), !noalias !51715
  br label %.lr.ph.i.i.i.i302

.lr.ph.i.i.i.i302:                                ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i", %bb.mx
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.amn, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i" ], [ 0, %bb.mx ] ; 2 uses
  %i.amm = getelementptr inbounds nuw [64 x i8], ptr %i.amj, i64 %.sroa.0.07.i.i.i.i ; 5 uses
  %i.amn = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52133), !noalias !51715
  call void @llvm.experimental.noalias.scope.decl(metadata !52136), !noalias !51715
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 56
  %i.amp = load i8, ptr %i.amo, align 1, !range !1558, !alias.scope !52139, !noalias !52140, !noundef !27
  %i.amq = trunc nuw i8 %i.amp to i1
  br i1 %i.amq, label %bb.my, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i"

bb.my:                                            ; preds = %.lr.ph.i.i.i.i302
  call void @llvm.experimental.noalias.scope.decl(metadata !52141), !noalias !51715
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !52144), !noalias !51715
  call void @llvm.experimental.noalias.scope.decl(metadata !52147), !noalias !51715
  %.val4.i.i.i.i.i.i.i.i.i = load i64, ptr %i.amr, align 8, !alias.scope !52150, !noalias !52140 ; 2 uses
  %i.ams = icmp eq i64 %.val4.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ams, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i", label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  %.val5.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.amt, align 8, !alias.scope !52150, !noalias !52140, !nonnull !27, !noundef !27
  %i.amu = shl nuw i64 %.val4.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i, i64 noundef %i.amu, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !52151
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.mz, %bb.my
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amm, i64 32
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.amv, align 8, !alias.scope !52150, !noalias !52140 ; 2 uses
  %i.amw = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.amw, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i", label %bb.na

bb.na:                                            ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i"
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amm, i64 40
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.amx, align 8, !alias.scope !52150, !noalias !52140, !nonnull !27, !noundef !27
  %i.amy = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.amy, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !52151
  br label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i"

"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i": ; preds = %bb.na, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i302
  %i.amz = icmp eq i64 %i.amn, %i.aml
  br i1 %i.amz, label %"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i.i", label %.lr.ph.i.i.i.i302

"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i.i": ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i.i.i"
  %i.ana = shl nuw i64 64, %.sroa.7.011.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amj, i64 noundef %i.ana, i64 noundef 8) #65, !noalias !52140
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %"_ZN4core3ptr221drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$u5d$$GT$$GT$17h3070ac6b85960aa9E.exit.i.i", %bb.mw
  %i.anb = icmp eq i64 %.sroa.0.0.add.i.i, 504
  br i1 %i.anb, label %"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit", label %bb.mw

"_ZN4core3ptr192drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h052e32e479a878b5E.exit": ; preds = %.backedge.i.i
  call fastcc void @"_ZN4core3ptr300drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h8aef05f0dcba6ed6E"(ptr noalias noundef align 8 dereferenceable(512) %i.ag) #67, !noalias !51715
  br label %bb.iy

.body287:                                         ; preds = %.loopexit345, %.loopexit.split-lp346.loopexit.split-lp, %.loopexit.split-lp346.loopexit, %bb.ol, %bb.nw, %bb.iz, %bb.iy
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp333, %bb.nw ], [ %lpad.phi, %bb.ol ], [ %.pn152.i, %bb.iy ], [ %.pn152.i, %bb.iz ], [ %lpad.loopexit347, %.loopexit345 ], [ %lpad.loopexit350, %.loopexit.split-lp346.loopexit ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp346.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$cellulite..builder..FrozenItems$GT$17h1e2e5fef4b2f2270E"(ptr noalias noundef align 8 dereferenceable(56) %i.dh) #67
  br label %.thread

.loopexit345:                                     ; preds = %bb.ne, %bb.nq, %bb.nf
  %lpad.loopexit347 = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.loopexit.split-lp346.loopexit:                   ; preds = %.preheader.i255
  %lpad.loopexit350 = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.loopexit.split-lp346.loopexit.split-lp:          ; preds = %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit307.sink.split.i", %bb.iw, %.noexc283, %bb.iv, %bb.nd, %bb.ng, %bb.ni, %bb.nh
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.nb:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicU64$GT$$GT$17h010add6360986ae2E.exit307.sink.split.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !51703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.not158 = icmp eq i64 %.sroa.0122.0, 11
  br i1 %.not158, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %.thread308, %bb.nb
  %.sroa.0122.7315 = phi i64 [ %.sroa.0122.6, %.thread308 ], [ %.sroa.0122.0, %bb.nb ]
  %.sroa.11.sroa.0.7314 = phi i32 [ %.sroa.11.sroa.0.6, %.thread308 ], [ %.sroa.11.sroa.0.0, %bb.nb ]
  %.sroa.11.sroa.8.7313 = phi i32 [ %.sroa.11.sroa.8.6, %.thread308 ], [ %.sroa.11.sroa.8.0, %bb.nb ]
  %.sroa.11.sroa.8.0.insert.ext = zext i32 %.sroa.11.sroa.8.7313 to i64
  %.sroa.11.sroa.8.0.insert.shift = shl nuw i64 %.sroa.11.sroa.8.0.insert.ext, 32
  %.sroa.11.sroa.0.0.insert.ext = zext i32 %.sroa.11.sroa.0.7314 to i64
  %.sroa.11.sroa.0.0.insert.insert = or disjoint i64 %.sroa.11.sroa.8.0.insert.shift, %.sroa.11.sroa.0.0.insert.ext
  %.sroa.2105.sroa.2.0..sroa.2105.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2105.sroa.2.0..sroa.2105.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18124, i64 16, i1 false)
  %.sroa.2105.sroa.3.0..sroa.2105.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2105.sroa.3.0..sroa.2105.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20125, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18124)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20125)
  store i64 %.sroa.0122.7315, ptr %0, align 8
  %.sroa.2105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.sroa.0.0.insert.insert, ptr %.sroa.2105.0..sroa_idx, align 8
  br label %bb.nn

bb.nd:                                            ; preds = %bb.nb, %.thread303
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18124)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20125)
  invoke fastcc void @"_ZN62_$LT$milli..progress..Progress$u20$as$u20$steppe..Progress$GT$6update17ha5c09a7842130206E"(ptr nonnull %.0.val, i8 noundef 5)
          to label %.preheader344 unwind label %.loopexit.split-lp346.loopexit.split-lp

.preheader344:                                    ; preds = %bb.nd
  %i.anc = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.and = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.anf = load i64, ptr %i.ane, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  br label %bb.ne

bb.ne:                                            ; preds = %.preheader344, %.backedge
  %indvars.iv1071 = phi i64 [ 0, %.preheader344 ], [ %indvars.iv.next1072, %.backedge ] ; 2 uses
  %i.anh = shl nuw nsw i64 %indvars.iv1071, 45
  %i.ani = or disjoint i64 %i.anh, 576495936675512319
  %i.anj = invoke noundef i64 @_ZN3h3o5index4cell9CellIndex13new_unchecked17h23669f4b7fb1e7a1E(i64 noundef %i.ani)
          to label %bb.nf unwind label %.loopexit345 ; 3 uses

bb.nf:                                            ; preds = %bb.ne
  %i.ank = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i)
          to label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3b660bf88dc34008E.exit" unwind label %.loopexit345

bb.ng:                                            ; preds = %.backedge
  invoke fastcc void @"_ZN62_$LT$milli..progress..Progress$u20$as$u20$steppe..Progress$GT$6update17ha5c09a7842130206E"(ptr nonnull %.0.val, i8 noundef 6)
          to label %bb.nh unwind label %.loopexit.split-lp346.loopexit.split-lp

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  invoke void @"_ZN71_$LT$cellulite..metadata..Version$u20$as$u20$core..default..Default$GT$7default17hcacaaff74eccc834E"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.cy)
          to label %bb.ni unwind label %.loopexit.split-lp346.loopexit.split-lp

bb.ni:                                            ; preds = %bb.nh
  invoke void @_ZN9cellulite9Cellulite11set_version17h1d01d6968d680604E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cy)
          to label %bb.nj unwind label %.loopexit.split-lp346.loopexit.split-lp

bb.nj:                                            ; preds = %bb.ni
  %i.anl = load i32, ptr %i.cz, align 8, !range !10871, !noundef !27 ; 2 uses
  %.not161 = icmp eq i32 %i.anl, 5
  br i1 %.not161, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5151.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4146.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  store i64 7, ptr %0, align 8
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.anl, ptr %.sroa.4150.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.nn

bb.nl:                                            ; preds = %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  store i64 11, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$cellulite..builder..FrozenItems$GT$17h1e2e5fef4b2f2270E"(ptr noalias noundef align 8 dereferenceable(56) %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hea2099c1f8cf5840E"(ptr noalias noundef align 8 dereferenceable(24) %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.go, %bb.bx
  ret void

bb.nn:                                            ; preds = %bb.nr, %bb.oj, %bb.nk, %bb.nc
  call void @llvm.experimental.noalias.scope.decl(metadata !52152)
  call void @llvm.experimental.noalias.scope.decl(metadata !52155)
  call void @llvm.experimental.noalias.scope.decl(metadata !52158)
  %.val.i.i.i291 = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !52161, !nonnull !27, !noundef !27 ; 2 uses
  %.val1.i.i.i292 = load i64, ptr %.sroa.4174.0..sroa_idx, align 8, !alias.scope !52161, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52162)
  %i.anm = icmp eq i64 %.val1.i.i.i292, 0
  br i1 %i.anm, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6bc12ce8ec38fceeE.exit.i.i.i298", label %.lr.ph.i.i.i.i.i293

.lr.ph.i.i.i.i.i293:                              ; preds = %bb.nn, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i297"
  %.sroa.0.011.i.i.i.i.i294 = phi i64 [ %i.ano, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i297" ], [ 0, %bb.nn ] ; 2 uses
  %i.ann = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i291, i64 %.sroa.0.011.i.i.i.i.i294 ; 2 uses
  %i.ano = add nuw i64 %.sroa.0.011.i.i.i.i.i294, 1 ; 2 uses
  %.val8.i.i.i.i.i295 = load i64, ptr %i.ann, align 8, !alias.scope !52162, !noalias !52161 ; 2 uses
  %i.anp = icmp eq i64 %.val8.i.i.i.i.i295, 0
  br i1 %i.anp, label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i297", label %bb.no

bb.no:                                            ; preds = %.lr.ph.i.i.i.i.i293
  %i.anq = getelementptr i8, ptr %i.ann, i64 8
  %.val9.i.i.i.i.i296 = load ptr, ptr %i.anq, align 8, !alias.scope !52162, !noalias !52161, !nonnull !27, !noundef !27
  %i.anr = mul nuw i64 %.val8.i.i.i.i.i295, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i296, i64 noundef %i.anr, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !52165
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i297"

"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$17h0696bddf3743c9eeE.exit.i.i.i.i.i297": ; preds = %bb.no, %.lr.ph.i.i.i.i.i293
end_hunk_13
