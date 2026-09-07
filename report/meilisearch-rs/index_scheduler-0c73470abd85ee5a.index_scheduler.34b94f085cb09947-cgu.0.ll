Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN4core3ptr67drop_in_place$LT$candle_transformers..models..bert..BertEncoder$GT$17he86fd0ae2322ee26E":bb.a
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.h, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [848 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i2
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$candle_transformers..models..bert..BertLayer$GT$17ha045b56c2837a7efE"(ptr noalias noundef align 8 dereferenceable(848) %i.l) #81
          to label %bb.c unwind label %bb.e, !noalias !123128

bb.e:                                             ; preds = %.lr.ph3
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !123128
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %.val4.i = load i64, ptr %i.a, align 8, !range !56, !alias.scope !123128, !noundef !57 ; 2 uses
  %i.n = icmp eq i64 %.val4.i, 0
  br i1 %i.n, label %.body, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.o = mul nuw i64 %.val4.i, 848
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !123128
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88350d14929fe527E.exit.i": ; preds = %bb.b, %bb.a
  %.val2.i = load i64, ptr %i.a, align 8, !range !56, !alias.scope !123128, !noundef !57 ; 2 uses
  %i.p = icmp eq i64 %.val2.i, 0
  br i1 %i.p, label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$candle_transformers..models..bert..BertLayer$GT$$GT$17hb915e95357c2b9c5E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88350d14929fe527E.exit.i"
  %i.q = mul nuw i64 %.val2.i, 848
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !123128
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$candle_transformers..models..bert..BertLayer$GT$$GT$17hb915e95357c2b9c5E.exit"

.body:                                            ; preds = %.body.i, %bb.f
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %0) #81
          to label %bb.i unwind label %bb.h

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$candle_transformers..models..bert..BertLayer$GT$$GT$17hb915e95357c2b9c5E.exit": ; preds = %bb.g, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88350d14929fe527E.exit.i"
  tail call fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %0)
  ret void

bb.h:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr67drop_in_place$LT$indexmap..map..IndexMap$LT$$RF$str$C$usize$GT$$GT$17hb05e8c94ba483d10E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123131)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !123131, !noundef !57 ; 4 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !123131, !nonnull !57, !noundef !57
  %i.d = shl i64 %.val1.i, 3
  %i.e = icmp slt i64 %.val1.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val1.i, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.k)
  %i.l = sub nuw nsw i64 -16, %i.f
  %i.m = getelementptr inbounds i8, ptr %.val.i, i64 %i.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !123131
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !123131 ; 2 uses
  %i.n = icmp eq i64 %.val2.i, 0
  br i1 %i.n, label %"_ZN4core3ptr65drop_in_place$LT$indexmap..inner..Core$LT$$RF$str$C$usize$GT$$GT$17h555a1ac5f5fa9c0dE.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.o, align 8, !alias.scope !123131, !nonnull !57, !noundef !57
  %i.p = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !123131
  br label %"_ZN4core3ptr65drop_in_place$LT$indexmap..inner..Core$LT$$RF$str$C$usize$GT$$GT$17h555a1ac5f5fa9c0dE.exit"

"_ZN4core3ptr65drop_in_place$LT$indexmap..inner..Core$LT$$RF$str$C$usize$GT$$GT$17h555a1ac5f5fa9c0dE.exit": ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h2f1eac730ead8db0E.exit.i", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h92dbbb5ecbe8afa8E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !71, !noundef !57
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..fmt..Display$GT$$GT$17ha3d7051a8c2d6223E.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !57 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !56, !invariant.load !57 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !90, !invariant.load !57 ; 2 uses
  %i.j = icmp ult i64 %i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..fmt..Display$GT$$GT$17ha3d7051a8c2d6223E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.i) #79
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..fmt..Display$GT$$GT$17ha3d7051a8c2d6223E.exit"

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !56, !invariant.load !57 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !90, !invariant.load !57 ; 2 uses
  %i.q = icmp ult i64 %i.p, -9223372036854775807
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9456608c9c96644E.exit5.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.p) #79
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9456608c9c96644E.exit5.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf9456608c9c96644E.exit5.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", %bb.e
  resume { ptr, i32 } %i.l

"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..fmt..Display$GT$$GT$17ha3d7051a8c2d6223E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr67drop_in_place$LT$meilisearch_types..network..RemoteAvailability$GT$17h80d6405f088620b5E"(ptr noalias noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 16               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123234)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !123235, !noundef !57 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  invoke void @_ZN5seize9collector9Collector11reclaim_all17h57f34aea35abff79E(ptr noundef nonnull align 8 %i.f)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %"_ZN79_$LT$papaya..raw..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb9ef26822683aa27E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i.i
  %i.h = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5seize3raw3tls9thread_id6THREAD29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hb0ffe1e3a992a583E") ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %bb.b

bb.b:                                             ; preds = %_ZN6papaya3raw10drop_table17he3f3266d31382b99E.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.042.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.m, %_ZN6papaya3raw10drop_table17he3f3266d31382b99E.exit.i.i.i ] ; 8 uses
  %i.k = load i64, ptr %.sroa.0.042.i.i.i, align 8, !noundef !57 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noundef !57 ; 2 uses
  %i.n = add i64 %i.k, 1                          ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN6papaya3raw12drop_entries17h28fb6fbf97a3d3ceE.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.01.01.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.q, %.backedge.i.i.i.i ] ; 3 uses
  %i.q = add nuw i64 %.sroa.01.01.i.i.i.i, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.01.01.i.i.i.i
  %i.s = load ptr, ptr %i.r, align 8, !noundef !57 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.u = and i64 %i.t, -8                         ; 2 uses
  %i.v = sub i64 %i.u, %i.t
  %i.w = getelementptr i8, ptr %i.s, i64 %i.v     ; 4 uses
  %i.x = icmp ne i64 %i.u, 0
  %i.y = and i64 %i.t, 1
  %i.z = icmp eq i64 %i.y, 0
  %or.cond.i.i.i.i = and i1 %i.x, %i.z
  br i1 %or.cond.i.i.i.i, label %bb.d, label %.backedge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %.val.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !56, !alias.scope !123236, !noundef !57 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.aa, label %"_ZN4core3ptr138drop_in_place$LT$alloc..boxed..Box$LT$papaya..raw..Entry$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$GT$$GT$$GT$17h1228736b6e66186eE.exit.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.w, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !123237
  br label %"_ZN4core3ptr138drop_in_place$LT$alloc..boxed..Box$LT$papaya..raw..Entry$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$GT$$GT$$GT$17h1228736b6e66186eE.exit.i.i.i.i"

"_ZN4core3ptr138drop_in_place$LT$alloc..boxed..Box$LT$papaya..raw..Entry$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$GT$$GT$$GT$17h1228736b6e66186eE.exit.i.i.i.i": ; preds = %bb.e, %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 56, i64 noundef 8) #79
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %"_ZN4core3ptr138drop_in_place$LT$alloc..boxed..Box$LT$papaya..raw..Entry$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$GT$$GT$$GT$17h1228736b6e66186eE.exit.i.i.i.i", %bb.c
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.01.i.i.i.i, %i.k
  br i1 %exitcond.not.i.i.i.i, label %_ZN6papaya3raw12drop_entries17h28fb6fbf97a3d3ceE.exit.i.i.i, label %bb.c

_ZN6papaya3raw12drop_entries17h28fb6fbf97a3d3ceE.exit.i.i.i: ; preds = %.backedge.i.i.i.i, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i, i64 120
  %.val.i.i.i.i = load ptr, ptr %i.ac, align 8, !noundef !57 ; 2 uses
  %i.ad = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.ad, label %"_ZN6papaya3raw5utils5stack14Stack$LT$T$GT$5drain17h66d8f33ce9aea75aE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6papaya3raw12drop_entries17h28fb6fbf97a3d3ceE.exit.i.i.i, %"_ZN6papaya3raw10drop_table28_$u7b$$u7b$closure$u7d$$u7d$17h932496caf8d3822bE.exit.i.i.i.i.i"
  %.sroa.0.031.i.i.i.i.i = phi ptr [ %i.ek, %"_ZN6papaya3raw10drop_table28_$u7b$$u7b$closure$u7d$$u7d$17h932496caf8d3822bE.exit.i.i.i.i.i" ], [ %.val.i.i.i.i, %_ZN6papaya3raw12drop_entries17h28fb6fbf97a3d3ceE.exit.i.i.i ] ; 4 uses
  %i.ae = load ptr, ptr %.sroa.0.031.i.i.i.i.i, align 8, !noundef !57 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !123235
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !123238
  %i.af = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.af, label %bb.f, label %bb.g, !prof !58

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !123239
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h9b714bc3d0a530bfE.exit.i.i.i.i.i.i"

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZN5seize3raw3tls9thread_id6Thread9init_slow17h7da54b82a5c2c906E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.h)
          to label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h9b714bc3d0a530bfE.exit.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h9b714bc3d0a530bfE.exit.i.i.i.i.i.i": ; preds = %bb.g, %bb.f
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !123235
  %i.ag = load <2 x i64>, ptr %i.c, align 16, !noalias !123235
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !123235 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !123235
  %i.ah = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i.i, 59
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.aj = load atomic ptr, ptr %i.ai acquire, align 8, !alias.scope !123235, !noalias !123240 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !60

bb.h:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h9b714bc3d0a530bfE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123241
  store <2 x i64> %i.ag, ptr %i.b, align 16, !noalias !123235
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx4.i.i.i.i.i.i, align 16, !noalias !123235
  %i.al = invoke noundef ptr @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$10initialize17hdae4c4e45f8b430bE"(ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 8 %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc6.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i

.noexc6.i.i.i.i.i:                                ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123241
  br label %bb.i

bb.i:                                             ; preds = %.noexc6.i.i.i.i.i, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h9b714bc3d0a530bfE.exit.i.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.noexc6.i.i.i.i.i ], [ %i.aj, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h9b714bc3d0a530bfE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.am = getelementptr inbounds nuw [256 x i8], ptr %.sroa.01.0.i.i.i.i.i.i.i.i, i64 %.sroa.4.0.copyload.i.i.i.i.i.i ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ao = load atomic i8, ptr %i.an monotonic, align 1, !noalias !123240
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !60

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$5write17hdb34ddca1c2a63b7E"(ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 128 %i.am)
          to label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h15863ab92aaf003bE.exit.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i.i.i) ]
  br label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h15863ab92aaf003bE.exit.i.i.i.i.i.i.i"

"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h15863ab92aaf003bE.exit.i.i.i.i.i.i.i": ; preds = %bb.k, %bb.j
  %i.aq = load i64, ptr %i.i, align 8, !alias.scope !123235, !noalias !123242, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123243)
  %i.ar = load ptr, ptr %i.am, align 8, !alias.scope !123243, !noalias !123242, !noundef !57 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %_ZN5seize3raw9collector10LocalBatch11get_or_init17ha7dd5c386622c674E.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h15863ab92aaf003bE.exit.i.i.i.i.i.i.i"
  %i.at = shl i64 %i.aq, 5                        ; 4 uses
  %i.au = icmp ugt i64 %i.aq, 576460752303423487
  %i.av = icmp ugt i64 %i.at, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !123244
  %i.ax = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.at, i64 noundef range(i64 1, 9) 8) #79, !noalias !123244 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.n, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.m ], [ 0, %bb.l ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2750) #80
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i

.noexc8.i.i.i.i.i:                                ; preds = %bb.n
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.m, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.m ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.m ] ; 4 uses
  %i.az = icmp samesign ule i64 %i.aq, %.sroa.4.0.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.az)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !123245
  %i.ba = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !123245 ; 6 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.o, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb57674ac48ea4cb9E.exit.i.i.i.i.i.i.i.i", !prof !66

bb.o:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #80
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !123246

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.loopexit.split-lp.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = shl nuw i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !123246
  br label %.loopexit.split-lp.i.i.i.i.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb57674ac48ea4cb9E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i.i.i.i.i.i.i"
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i, ptr %i.ba, align 8, !noalias !123246
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i.i, align 8, !noalias !123246
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !123246
  store ptr %i.ba, ptr %i.am, align 8, !alias.scope !123243, !noalias !123242
  br label %_ZN5seize3raw9collector10LocalBatch11get_or_init17ha7dd5c386622c674E.exit.i.i.i.i.i.i.i

_ZN5seize3raw9collector10LocalBatch11get_or_init17ha7dd5c386622c674E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb57674ac48ea4cb9E.exit.i.i.i.i.i.i.i.i", %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h15863ab92aaf003bE.exit.i.i.i.i.i.i.i"
  %i.bf = phi ptr [ %i.ar, %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h15863ab92aaf003bE.exit.i.i.i.i.i.i.i" ], [ %i.ba, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb57674ac48ea4cb9E.exit.i.i.i.i.i.i.i.i" ] ; 6 uses
  %i.bg = icmp eq ptr %i.bf, inttoptr (i64 -1 to ptr)
  br i1 %i.bg, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN5seize3raw9collector10LocalBatch11get_or_init17ha7dd5c386622c674E.exit.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !123247, !noalias !123248, !noundef !57 ; 4 uses
  %i.bj = load i64, ptr %i.bf, align 8, !range !56, !alias.scope !123247, !noalias !123248, !noundef !57
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2fc3a848b0ab0919E.exit.i.i.i.i.i.i.i"

bb.s:                                             ; preds = %bb.r
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha6f19cb3bc5769f2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2751)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2fc3a848b0ab0919E.exit.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2fc3a848b0ab0919E.exit.i.i.i.i.i.i.i": ; preds = %bb.s, %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !123247, !noalias !123248, !nonnull !57, !noundef !57
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.bi ; 4 uses
  store ptr @_ZN5seize7reclaim5boxed17h240831721cd746d3E, ptr %i.bn, align 8, !noalias !123242
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !123242
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !123242
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bf, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !123242
  %i.bo = add nsw i64 %i.bi, 1                    ; 2 uses
  store i64 %i.bo, ptr %i.bh, align 8, !alias.scope !123247, !noalias !123248
  %i.bp = icmp slt i64 %i.bi, 288230376151711743
  call void @llvm.assume(i1 %i.bp)
  %i.bq = load i64, ptr %i.i, align 8, !alias.scope !123235, !noalias !123242, !noundef !57
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bo, %i.bq
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN6papaya3raw10drop_table28_$u7b$$u7b$closure$u7d$$u7d$17h932496caf8d3822bE.exit.i.i.i.i.i", label %bb.v

bb.t:                                             ; preds = %_ZN5seize3raw9collector10LocalBatch11get_or_init17ha7dd5c386622c674E.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !range !56, !alias.scope !123249, !noalias !123242, !noundef !57 ; 2 uses
  %i.br = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.br, label %_ZN5seize7reclaim5boxed17h240831721cd746d3E.exit.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr i8, ptr %i.ae, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !noalias !123242, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !123250
  br label %_ZN5seize7reclaim5boxed17h240831721cd746d3E.exit.i.i.i.i.i.i.i

_ZN5seize7reclaim5boxed17h240831721cd746d3E.exit.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 56, i64 noundef 8) #79, !noalias !123242
  br label %"_ZN6papaya3raw10drop_table28_$u7b$$u7b$closure$u7d$$u7d$17h932496caf8d3822bE.exit.i.i.i.i.i"

bb.v:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2fc3a848b0ab0919E.exit.i.i.i.i.i.i.i"
end_hunk_0
