Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.04?download=true
inline.NumInlined: 246
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E":bb.a
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

common.resume:                                    ; preds = %bb.q, %.body.i, %bb.m, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.s, %bb.m ], [ %i.w, %bb.q ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit": ; preds = %bb.b
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %"_ZN4core3ptr43drop_in_place$LT$ninja_gen..input..Glob$GT$17hc0712903157b3ff2E.exit"

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h670739065d6ccec7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit": ; preds = %bb.e
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %"_ZN4core3ptr43drop_in_place$LT$ninja_gen..input..Glob$GT$17hc0712903157b3ff2E.exit"

bb.h:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i": ; preds = %bb.h
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i" unwind label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.l, %bb.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h379f29f26360ae4eE"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #15
          to label %common.resume unwind label %bb.o

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !range !6, !alias.scope !25, !noundef !4
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  br i1 %i.r, label %"_ZN4core3ptr43drop_in_place$LT$ninja_gen..input..Glob$GT$17hc0712903157b3ff2E.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i.i" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i.i": ; preds = %bb.l
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %"_ZN4core3ptr43drop_in_place$LT$ninja_gen..input..Glob$GT$17hc0712903157b3ff2E.exit"

bb.o:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f9b600e0434f438E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$ninja_gen..input..BuildInput$GT$$GT$17h534d00f60400d541E.exit" unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$ninja_gen..input..BuildInput$GT$$GT$17h534d00f60400d541E.exit": ; preds = %bb.p
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %"_ZN4core3ptr43drop_in_place$LT$ninja_gen..input..Glob$GT$17hc0712903157b3ff2E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h379f29f26360ae4eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h937b8ef744de6f20E.exit.i.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h937b8ef744de6f20E.exit.i.i": ; preds = %bb.d
  resume { ptr, i32 } %i.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit": ; preds = %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hcdb13b152c7683d6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !6, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #17
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit": ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ule i64 %2, %i.g
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef 6)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit" unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit"
  %.sroa.096.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.497.0.copyload = load i64, ptr %.sroa.497.0..sroa_idx, align 8 ; 26 uses
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.699.0.copyload = load i64, ptr %.sroa.699.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7100.0.copyload = load i64, ptr %.sroa.7100.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8101.0.copyload = load i64, ptr %.sroa.8101.0..sroa_idx, align 8
  %.sroa.10103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.10103.0.copyload = load i64, ptr %.sroa.10103.0..sroa_idx, align 8
  %.sroa.12105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.12105.0.copyload = load ptr, ptr %.sroa.12105.0..sroa_idx, align 8 ; 17 uses
  %.sroa.13106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.13106.0.copyload = load i64, ptr %.sroa.13106.0..sroa_idx, align 8 ; 42 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = trunc nuw i64 %.sroa.096.0.copyload to i1
  %i.m = add i64 %.sroa.15.0.copyload, -1         ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 17 ; 3 uses
  br i1 %i.l, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12105.0.copyload), "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.o = sub i64 %.sroa.15.0.copyload, %.sroa.699.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.497.0.copyload, i64 %.sroa.15.0.copyload)
  %i.p = add i64 %.sroa.497.0.copyload, -1        ; 2 uses
  %.first_iter = icmp ult i64 %i.p, %.sroa.15.0.copyload
  %.first_iter.fr = freeze i1 %.first_iter
  %.not121.us = icmp eq i64 %.sroa.497.0.copyload, 0
  %invariant.op = sub i64 1, %.sroa.497.0.copyload
  %exitcond.not.i.us41.not = icmp ult i64 %.sroa.497.0.copyload, %.sroa.15.0.copyload
  %invariant.op122 = sub i64 1, %.sroa.497.0.copyload
  %.not121.us44 = icmp eq i64 %.sroa.497.0.copyload, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.u, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us"
  %.sroa.3068.0.us = phi i64 [ %.sroa.10103.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.3068.1.us, %bb.u ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.8101.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.11109.1.us, %bb.u ] ; 3 uses
  %.sroa.06.0.us = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.11109.1.us, %bb.u ] ; 5 uses
  %i.q = icmp eq i64 %.sroa.3068.0.us, -1
  %i.r = add i64 %.sroa.18.0.us, %i.m             ; 3 uses
  %i.s = icmp ult i64 %i.r, %.sroa.13106.0.copyload ; 2 uses
  br i1 %i.q, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  br i1 %i.s, label %.lr.ph.i41.us, label %.critedge23

.lr.ph.i41.us:                                    ; preds = %bb.d, %.sink.split.i.us
  %i.t = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3068.0.us, %bb.d ] ; 3 uses
  %i.u = phi i64 [ %i.ax, %.sink.split.i.us ], [ %i.r, %bb.d ]
  %i.v = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.d ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !43, !noundef !4
  %i.y = and i8 %i.x, 63
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = and i64 %i.aa, %.sroa.7100.0.copyload
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i41.us
  %.sroa.0.0.i.i43.us = call i64 @llvm.umax.i64(i64 %i.t, i64 %.sroa.497.0.copyload) ; 4 uses
  %umax49.i44.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i43.us, i64 %.sroa.15.0.copyload)
  %exitcond.not.i46.us36.not = icmp ult i64 %.sroa.0.0.i.i43.us, %.sroa.15.0.copyload
  br i1 %exitcond.not.i46.us36.not, label %.lr.ph, label %.preheader122.us.preheader

bb.f:                                             ; preds = %bb.g
  %i.ad = add nuw i64 %.sroa.02.0.i45.us37, 1     ; 2 uses
  %exitcond.not.i46.us = icmp eq i64 %i.ad, %umax49.i44.us
  br i1 %exitcond.not.i46.us, label %.preheader122.us.preheader, label %.lr.ph

.preheader122.us.preheader:                       ; preds = %bb.f, %bb.e
  %i.ae = icmp ult i64 %i.t, %.sroa.497.0.copyload
  br i1 %i.ae, label %.lr.ph39, label %.loopexit.i.us

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.02.0.i45.us37 = phi i64 [ %i.ad, %bb.f ], [ %.sroa.0.0.i.i43.us, %bb.e ] ; 4 uses
  %i.af = add i64 %.sroa.02.0.i45.us37, %i.v      ; 2 uses
  %i.ag = icmp ult i64 %i.af, %.sroa.13106.0.copyload
  br i1 %i.ag, label %bb.g, label %.split.us

bb.g:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i45.us37
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !44, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.af
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !43, !noundef !4
  %.not21.i48.us = icmp eq i8 %i.ai, %i.ak
  br i1 %.not21.i48.us, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.reass.reass = add i64 %i.v, %invariant.op
  %i.al = add i64 %.reass.reass, %.sroa.02.0.i45.us37
  br label %.sink.split.i.us

.preheader122.us:                                 ; preds = %bb.j
  %i.am = icmp ult i64 %i.t, %i.an
  br i1 %i.am, label %.lr.ph39, label %.loopexit.i.us

.lr.ph39:                                         ; preds = %.preheader122.us.preheader, %.preheader122.us
  %.sroa.2.0.i49.us38 = phi i64 [ %i.an, %.preheader122.us ], [ %.sroa.497.0.copyload, %.preheader122.us.preheader ]
  %i.an = add i64 %.sroa.2.0.i49.us38, -1         ; 6 uses
  %i.ao = icmp ult i64 %i.an, %.sroa.15.0.copyload
  br i1 %i.ao, label %bb.i, label %.split.us.invoke

bb.i:                                             ; preds = %.lr.ph39
  %i.ap = add i64 %i.an, %i.v                     ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.13106.0.copyload
  br i1 %i.aq, label %bb.j, label %.split.us.invoke

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.an
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !44, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !43, !noundef !4
  %.not.i50.us = icmp eq i8 %i.as, %i.au
  br i1 %.not.i50.us, label %.preheader122.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add i64 %i.v, %.sroa.699.0.copyload
  br label %.sink.split.i.us

bb.l:                                             ; preds = %.lr.ph.i41.us
  %i.aw = add i64 %i.v, %.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.l, %bb.k, %bb.h
  %.sink.i.us = phi i64 [ %i.o, %bb.k ], [ 0, %bb.h ], [ 0, %bb.l ]
  %.ph71.i.us = phi i64 [ %i.av, %bb.k ], [ %i.al, %bb.h ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ax = add i64 %.ph71.i.us, %i.m               ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %.sroa.13106.0.copyload
  br i1 %i.ay, label %.lr.ph.i41.us, label %.critedge23

bb.m:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  br i1 %i.s, label %.lr.ph.i34.us, label %.critedge23

.lr.ph.i34.us:                                    ; preds = %bb.m, %bb.t
  %i.az = phi i64 [ %i.bz, %bb.t ], [ %i.r, %bb.m ]
  %i.ba = phi i64 [ %i.by, %bb.t ], [ %.sroa.18.0.us, %bb.m ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.az
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !45, !noundef !4
  %i.bd = and i8 %i.bc, 63
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = and i64 %i.bf, %.sroa.7100.0.copyload
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i34.us
  br i1 %exitcond.not.i.us41.not, label %bb.p, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.q
  %i.bi = add nuw i64 %.sroa.02.0.i.us44, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bi, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %bb.p

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.first_iter.fr, label %.preheader.us.us.preheader, label %.lr.ph46

.preheader.us.us.preheader:                       ; preds = %.preheader.us.preheader
  br i1 %.not121.us44, label %.loopexit.i.us, label %.lr.ph43

.preheader.us.preheader.a:                        ; preds = %bb.n
  %.not121.us.us = icmp eq i64 %5, 0
  br i1 %.not121.us.us, label %.loopexit.i.us, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a
  %.sroa.02.0.i.us42 = phi i64 [ %5, %.preheader.us.preheader.a ], [ %.sroa.497.0.copyload, %.preheader.us.us.preheader ]
  %5 = add i64 %.sroa.02.0.i.us42, -1             ; 4 uses
  %i.bj = add i64 %5, %i.ba                       ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.13106.0.copyload
  br i1 %i.bk, label %bb.n, label %.split.us.invoke

bb.n:                                             ; preds = %.lr.ph43
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %5
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !46, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.bj
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !45, !noundef !4
  %.not21.i.us.a = icmp eq i8 %i.bm, %i.bo
  br i1 %.not21.i.us.a, label %.preheader.us.preheader.a, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = add i64 %.sroa.699.0.copyload, %i.ba
  br label %bb.t

.lr.ph46:                                         ; preds = %.preheader.us.preheader
  br i1 %.not121.us, label %.loopexit.i.us, label %.split.us.invoke

bb.p:                                             ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us44 = phi i64 [ %i.bi, %.preheader ], [ %.sroa.497.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bq = add i64 %.sroa.02.0.i.us44, %i.ba       ; 2 uses
  %i.br = icmp ult i64 %i.bq, %.sroa.13106.0.copyload
  br i1 %i.br, label %bb.q, label %.split186.us

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us44
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !46, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !45, !noundef !4
  %.not.i.us = icmp eq i8 %i.bt, %i.bv
  br i1 %.not.i.us, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.reass319.reass = add i64 %i.ba, %invariant.op122
  %i.bw = add i64 %.reass319.reass, %.sroa.02.0.i.us44
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i34.us
  %i.bx = add i64 %i.ba, %.sroa.15.0.copyload
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o, %bb.r
  %i.by = phi i64 [ %i.bw, %bb.r ], [ %i.bx, %bb.s ], [ %i.bp, %bb.o ] ; 2 uses
  %i.bz = add i64 %i.by, %i.m                     ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %.sroa.13106.0.copyload
  br i1 %i.ca, label %.lr.ph.i34.us, label %.critedge23

.loopexit.i.us:                                   ; preds = %.preheader122.us.preheader, %.preheader.us.us.preheader, %.preheader122.us, %.preheader.us.preheader.a, %.lr.ph46
  %.sroa.7108.1.us = phi i64 [ %i.ba, %.preheader.us.preheader.a ], [ %i.ba, %.lr.ph46 ], [ %i.v, %.preheader122.us ], [ %i.ba, %.preheader.us.us.preheader ], [ %i.v, %.preheader122.us.preheader ] ; 2 uses
  %.sroa.3068.1.us = phi i64 [ -1, %.preheader.us.preheader.a ], [ -1, %.lr.ph46 ], [ 0, %.preheader122.us ], [ -1, %.preheader.us.us.preheader ], [ 0, %.preheader122.us.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.us
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.7108.1.us
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc)
          to label %bb.u unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit.i.us
  %.sroa.11109.1.us = add i64 %.sroa.7108.1.us, %.sroa.15.0.copyload ; 2 uses
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.n)
          to label %bb.c unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  %i.cd = and i64 %.sroa.699.0.copyload, 65536
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split", label %.critedge23

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12105.0.copyload) ]
  %i.ce = trunc i64 %.sroa.699.0.copyload to i1   ; 2 uses
  %i.cf = icmp eq i64 %.sroa.497.0.copyload, 0
  br i1 %i.cf, label %bb.x, label %bb.v

bb.v:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split"
  %.not.i.i.i.peel.peel = icmp ult i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.peel.peel, label %bb.w, label %.split.i.i.i.peel.peel

.split.i.i.i.peel.peel:                           ; preds = %bb.v
  %i.cg = icmp eq i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %i.cg, label %bb.x, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.497.0.copyload
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !47, !noalias !48, !noundef !4
  %i.cj = icmp sgt i8 %i.ci, -65
  br i1 %i.cj, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w, %.split.i.i.i.peel.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split"
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.497.0.copyload ; 4 uses
  %i.cl = icmp samesign eq i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %i.cl, label %.loopexit250.peel, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load i8, ptr %i.ck, align 1, !noalias !49, !noundef !4 ; 5 uses
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.z, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel": ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cp = and i8 %i.cm, 31
  %i.cq = zext nneg i8 %i.cp to i32               ; 3 uses
  %i.cr = add nuw nsw i64 %.sroa.497.0.copyload, 1
  %i.cs = icmp samesign ne i64 %i.cr, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.cs)
  %i.ct = load i8, ptr %i.co, align 1, !noalias !49, !noundef !4
  %i.cu = shl nuw nsw i32 %i.cq, 6
  %i.cv = and i8 %i.ct, 63
  %i.cw = zext nneg i8 %i.cv to i32               ; 2 uses
  %i.cx = or disjoint i32 %i.cu, %i.cw
  %i.cy = icmp samesign ugt i8 %i.cm, -33
  br i1 %i.cy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel", label %bb.aa

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel"
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.da = add nuw nsw i64 %.sroa.497.0.copyload, 2
  %i.db = icmp samesign ne i64 %i.da, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.db)
  %i.dc = load i8, ptr %i.cz, align 1, !noalias !49, !noundef !4
  %i.dd = shl nuw nsw i32 %i.cw, 6
  %i.de = and i8 %i.dc, 63
  %i.df = zext nneg i8 %i.de to i32
  %i.dg = or disjoint i32 %i.dd, %i.df            ; 2 uses
  %i.dh = shl nuw nsw i32 %i.cq, 12
  %i.di = or disjoint i32 %i.dg, %i.dh
  %i.dj = icmp samesign ugt i8 %i.cm, -17
  br i1 %i.dj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel", label %bb.aa

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel"
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.dl = add nuw nsw i64 %.sroa.497.0.copyload, 3
  %i.dm = icmp samesign ne i64 %i.dl, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.dm)
  %i.dn = load i8, ptr %i.dk, align 1, !noalias !49, !noundef !4
  %i.do = shl nuw nsw i32 %i.cq, 18
  %i.dp = and i32 %i.do, 1835008
  %i.dq = shl nuw nsw i32 %i.dg, 6
  %i.dr = and i8 %i.dn, 63
  %i.ds = zext nneg i8 %i.dr to i32
  %i.dt = or disjoint i32 %i.dq, %i.ds
  %i.du = or disjoint i32 %i.dt, %i.dp
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dv = zext nneg i8 %i.cm to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel"
  %.sroa.4.0.i.ph.i.i.peel.peel = phi i32 [ %i.di, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel" ], [ %i.du, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel" ], [ %i.cx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel" ], [ %i.dv, %bb.z ] ; 4 uses
  %i.dw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 1114112
  call void @llvm.assume(i1 %i.dw)
  br i1 %i.ce, label %.loopexit.i.peel, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 128
  br i1 %i.dx, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 2048
  br i1 %i.dy, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 65536
  %..i.i.peel.peel = select i1 %i.dz, i64 3, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.01.0.i.i.peel.peel = phi i64 [ 2, %bb.ac ], [ %..i.i.peel.peel, %bb.ad ], [ 1, %bb.ab ]
  %i.ea = add i64 %.sroa.01.0.i.i.peel.peel, %.sroa.497.0.copyload ; 15 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i.peel89 = icmp ult i64 %i.ea, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.peel89, label %bb.ag, label %.split.i.i.i.peel90

.split.i.i.i.peel90:                              ; preds = %bb.af
  %i.ec = icmp eq i64 %i.ea, %.sroa.13106.0.copyload
  br i1 %i.ec, label %bb.ah, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ea
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !47, !noalias !48, !noundef !4
  %i.ef = icmp sgt i8 %i.ee, -65
  br i1 %i.ef, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag, %.split.i.i.i.peel90, %bb.ae
  %i.eg = icmp samesign eq i64 %i.ea, %.sroa.13106.0.copyload
  br i1 %i.eg, label %.loopexit.i.peel, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ea
  %i.ei = load i8, ptr %i.eh, align 1, !noalias !49, !noundef !4 ; 3 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %.loopexit.i.peel, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91": ; preds = %bb.ai
  %i.ek = add nuw nsw i64 %i.ea, 1
  %i.el = icmp samesign ne i64 %i.ek, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.el)
  %i.em = icmp samesign ugt i8 %i.ei, -33
  br i1 %i.em, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92", label %.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91"
  %i.en = add nuw nsw i64 %i.ea, 2
  %i.eo = icmp samesign ne i64 %i.en, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp samesign ugt i8 %i.ei, -17
  br i1 %i.ep, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93", label %.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92"
  %i.eq = add nuw nsw i64 %i.ea, 3
  %i.er = icmp samesign ne i64 %i.eq, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.er)
  br label %.loopexit.i.peel

.loopexit250.peel:                                ; preds = %bb.x
  br i1 %i.ce, label %.loopexit.i.peel, label %.critedge23

.loopexit.i.peel:                                 ; preds = %.loopexit250.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91", %bb.ai, %bb.ah, %bb.aa
  %.sroa.460.1246.peel = phi i64 [ %.sroa.13106.0.copyload, %.loopexit250.peel ], [ %.sroa.13106.0.copyload, %bb.ah ], [ %.sroa.497.0.copyload, %bb.aa ], [ %i.ea, %bb.ai ], [ %i.ea, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91" ], [ %i.ea, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92" ], [ %i.ea, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93" ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.460.1246.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.es)
          to label %bb.aj unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit.i.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.n)
          to label %.preheader.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.aj, %bb.ay
  %.sroa.06.0 = phi i64 [ %.sroa.460.1246, %bb.ay ], [ %.sroa.460.1246.peel, %bb.aj ] ; 14 uses
  %i.et = icmp eq i64 %.sroa.06.0, 0
  br i1 %i.et, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.preheader.i
  %.not.i.i.i.peel = icmp ult i64 %.sroa.06.0, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.peel, label %bb.al, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.ak
  %i.eu = icmp eq i64 %.sroa.06.0, %.sroa.13106.0.copyload
  br i1 %i.eu, label %bb.am, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.06.0
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !47, !noalias !48, !noundef !4
  %i.ex = icmp sgt i8 %i.ew, -65
  br i1 %i.ex, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al, %.split.i.i.i.peel, %.preheader.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.06.0 ; 4 uses
  %i.ez = icmp samesign eq i64 %.sroa.06.0, %.sroa.13106.0.copyload
  br i1 %i.ez, label %.critedge23, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = load i8, ptr %i.ey, align 1, !noalias !49, !noundef !4 ; 5 uses
  %i.fb = icmp sgt i8 %i.fa, -1
  br i1 %i.fb, label %bb.ao, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel": ; preds = %bb.an
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fd = and i8 %i.fa, 31
  %i.fe = zext nneg i8 %i.fd to i32               ; 3 uses
  %i.ff = add nuw nsw i64 %.sroa.06.0, 1
  %i.fg = icmp samesign ne i64 %i.ff, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.fg)
  %i.fh = load i8, ptr %i.fc, align 1, !noalias !49, !noundef !4
  %i.fi = shl nuw nsw i32 %i.fe, 6
  %i.fj = and i8 %i.fh, 63
  %i.fk = zext nneg i8 %i.fj to i32               ; 2 uses
  %i.fl = or disjoint i32 %i.fi, %i.fk
  %i.fm = icmp samesign ugt i8 %i.fa, -33
  br i1 %i.fm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel", label %bb.ap

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel"
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fo = add nuw nsw i64 %.sroa.06.0, 2
  %i.fp = icmp samesign ne i64 %i.fo, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.fp)
  %i.fq = load i8, ptr %i.fn, align 1, !noalias !49, !noundef !4
  %i.fr = shl nuw nsw i32 %i.fk, 6
  %i.fs = and i8 %i.fq, 63
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fr, %i.ft            ; 2 uses
  %i.fv = shl nuw nsw i32 %i.fe, 12
  %i.fw = or disjoint i32 %i.fu, %i.fv
  %i.fx = icmp samesign ugt i8 %i.fa, -17
  br i1 %i.fx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel", label %bb.ap

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel"
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %i.fz = add nuw nsw i64 %.sroa.06.0, 3
  %i.ga = icmp samesign ne i64 %i.fz, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.ga)
  %i.gb = load i8, ptr %i.fy, align 1, !noalias !49, !noundef !4
  %i.gc = shl nuw nsw i32 %i.fe, 18
  %i.gd = and i32 %i.gc, 1835008
  %i.ge = shl nuw nsw i32 %i.fu, 6
  %i.gf = and i8 %i.gb, 63
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg
  %i.gi = or disjoint i32 %i.gh, %i.gd
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gj = zext nneg i8 %i.fa to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel" ], [ %i.gi, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel" ], [ %i.fl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel" ], [ %i.gj, %bb.ao ] ; 4 uses
  %i.gk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.gl, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.gm, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.gn, i64 3, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.aq ], [ %..i.i.peel, %bb.ar ], [ 1, %bb.ap ]
  %i.go = add i64 %.sroa.01.0.i.i.peel, %.sroa.06.0 ; 15 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i.i.i = icmp ult i64 %i.go, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i, label %bb.au, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.at
  %i.gq = icmp eq i64 %i.go, %.sroa.13106.0.copyload
  br i1 %i.gq, label %bb.av, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.go
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !47, !noalias !48, !noundef !4
  %i.gt = icmp sgt i8 %i.gs, -65
  br i1 %i.gt, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au, %.split.i.i.i, %bb.as
  %i.gu = icmp samesign eq i64 %i.go, %.sroa.13106.0.copyload
  br i1 %i.gu, label %.loopexit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.go
  %i.gw = load i8, ptr %i.gv, align 1, !noalias !49, !noundef !4 ; 3 uses
  %i.gx = icmp sgt i8 %i.gw, -1
  br i1 %i.gx, label %.loopexit.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i": ; preds = %bb.aw
  %i.gy = add nuw nsw i64 %i.go, 1
  %i.gz = icmp samesign ne i64 %i.gy, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp samesign ugt i8 %i.gw, -33
  br i1 %i.ha, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i"
  %i.hb = add nuw nsw i64 %i.go, 2
  %i.hc = icmp samesign ne i64 %i.hb, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp samesign ugt i8 %i.gw, -17
  br i1 %i.hd, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i"
  %i.he = add nuw nsw i64 %i.go, 3
  %i.hf = icmp samesign ne i64 %i.he, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.hf)
  br label %.loopexit.i

.loopexit:                                        ; preds = %bb.al, %.split.i.i.i.peel, %bb.au, %.split.i.i.i, %bb.ag, %.split.i.i.i.peel90, %bb.w, %.split.i.i.i.peel.peel
  %.sroa.460.1.lcssa = phi i64 [ %.sroa.497.0.copyload, %.split.i.i.i.peel.peel ], [ %.sroa.497.0.copyload, %bb.w ], [ %i.ea, %.split.i.i.i.peel90 ], [ %i.ea, %bb.ag ], [ %.sroa.06.0, %bb.al ], [ %.sroa.06.0, %.split.i.i.i.peel ], [ %i.go, %.split.i.i.i ], [ %i.go, %bb.au ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.12105.0.copyload, i64 noundef %.sroa.13106.0.copyload, i64 noundef %.sroa.460.1.lcssa, i64 noundef %.sroa.13106.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
          to label %.noexc unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.hg = add i64 %i.v, %.sroa.0.0.i.i43.us
  %umax.i47 = call i64 @llvm.umax.i64(i64 %.sroa.13106.0.copyload, i64 %i.hg)
  br label %.split.us.invoke

.split.us.invoke:                                 ; preds = %.lr.ph46, %bb.i, %.lr.ph39, %.lr.ph43, %.split186.us, %.split.us
  %i.hh = phi i64 [ %umax.i47, %.split.us ], [ %i.an, %.lr.ph39 ], [ %i.bj, %.lr.ph43 ], [ %umax.i, %.split186.us ], [ %i.ap, %bb.i ], [ %i.p, %.lr.ph46 ]
  %i.hi = phi i64 [ %.sroa.13106.0.copyload, %.split.us ], [ %.sroa.15.0.copyload, %.lr.ph39 ], [ %.sroa.13106.0.copyload, %.lr.ph43 ], [ %.sroa.13106.0.copyload, %.split186.us ], [ %.sroa.13106.0.copyload, %bb.i ], [ %.sroa.15.0.copyload, %.lr.ph46 ]
  %i.hj = phi ptr [ @3, %.split.us ], [ @1, %.lr.ph39 ], [ @2, %.lr.ph43 ], [ @3, %.split186.us ], [ @2, %bb.i ], [ @1, %.lr.ph46 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.hh, i64 noundef %i.hi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hj) #17
          to label %.split.us.cont unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

.split186.us:                                     ; preds = %bb.p
  %i.hk = add i64 %i.ba, %.sroa.497.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.13106.0.copyload, i64 %i.hk)
  br label %.split.us.invoke

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.u, %.loopexit.i.us, %.critedge23, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", %.loopexit, %.split.us.invoke, %.loopexit.i, %bb.ay, %.loopexit.i.peel, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #15
          to label %bb.ba unwind label %bb.az

.loopexit.i:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i", %bb.aw, %bb.av
  %.sroa.460.1246 = phi i64 [ %i.go, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i" ], [ %.sroa.13106.0.copyload, %bb.av ], [ %i.go, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i" ], [ %i.go, %bb.aw ], [ %i.go, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i" ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.460.1246
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.hl, ptr noundef nonnull %i.hm)
          to label %bb.ay unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.critedge23:                                      ; preds = %.loopexit250.peel, %bb.am, %bb.m, %bb.d, %.sink.split.i.us, %bb.t, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  %.sroa.06.0165 = phi i64 [ %.sroa.06.0.us, %bb.m ], [ %.sroa.06.0.us, %.sink.split.i.us ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split" ], [ %.sroa.06.0.us, %bb.t ], [ %.sroa.06.0.us, %bb.d ], [ 0, %.loopexit250.peel ], [ %.sroa.06.0, %bb.am ]
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0165
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.hn, ptr noundef nonnull %i.ho)
          to label %bb.ax unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ax:                                            ; preds = %.critedge23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ay:                                            ; preds = %.loopexit.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.n)
          to label %.preheader.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !llvm.loop !42

bb.az:                                            ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

bb.ba:                                            ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !5, !noundef !4 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775806
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 2
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.k
    i64 4, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8cbb71417adaf731E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !6, !alias.scope !54, !noundef !4
  %.not.i = icmp eq i64 %i.m, -9223372036854775808
  br i1 %.not.i, label %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.g, !noalias !56

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #15
          to label %bb.j unwind label %bb.i, !noalias !56

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !55
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55
  br label %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit"

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16, !noalias !56
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.n

"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit": ; preds = %bb.e, %bb.h
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.h ], [ -9223372036854775808, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98c6837e4dd74476E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit", %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 5, 71) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", !prof !8

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.e, i64 %i.g) #17
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  store i64 %2, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN9configure3web12copy_mathjax17hb96edd7a2c4b7541E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @107, i64 noundef 21)
end_hunk_0
