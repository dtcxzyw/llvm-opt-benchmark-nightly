Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.04?download=true
inline.NumInlined: 246
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E":bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
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
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit" unwind label %bb.c

.loopexit:                                        ; preds = %.loopexit.split.loopexit, %.loopexit.split.loopexit.split-lp, %.loopexit.split-lp, %.loopexit.split.us, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit89, %.loopexit.split.loopexit ], [ %lpad.loopexit.split-lp90, %.loopexit.split.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #15
          to label %bb.ba unwind label %bb.az

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", %.critedge23
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit"
  %.sroa.096.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.497.0.copyload = load i64, ptr %.sroa.497.0..sroa_idx, align 8 ; 25 uses
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
  %i.m = trunc nuw i64 %.sroa.096.0.copyload to i1
  %i.n = add i64 %.sroa.15.0.copyload, -1         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 17 ; 3 uses
  br i1 %i.m, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12105.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.p = sub i64 %.sroa.15.0.copyload, %.sroa.699.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.497.0.copyload, i64 %.sroa.15.0.copyload)
  %i.q = add i64 %.sroa.497.0.copyload, -1
  %.first_iter = icmp ult i64 %i.q, %.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.497.0.copyload
  %exitcond.not.i.us38.not = icmp ult i64 %.sroa.497.0.copyload, %.sroa.15.0.copyload
  %invariant.op115 = sub i64 1, %.sroa.497.0.copyload
  %.not121.us41 = icmp eq i64 %.sroa.497.0.copyload, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.v, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us"
  %.sroa.3068.0.us = phi i64 [ %.sroa.10103.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.3068.1.us, %bb.v ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.8101.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.11109.1.us, %bb.v ] ; 3 uses
  %.sroa.06.0.us = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.11109.1.us, %bb.v ] ; 5 uses
  %i.r = icmp eq i64 %.sroa.3068.0.us, -1
  %i.s = add i64 %.sroa.18.0.us, %i.n             ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sroa.13106.0.copyload ; 2 uses
  br i1 %i.r, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  br i1 %i.t, label %.lr.ph.i41.us, label %.critedge23

.lr.ph.i41.us:                                    ; preds = %bb.e, %.sink.split.i.us
  %i.u = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3068.0.us, %bb.e ] ; 3 uses
  %i.v = phi i64 [ %i.ay, %.sink.split.i.us ], [ %i.s, %bb.e ]
  %i.w = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.e ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !47, !noalias !49, !noundef !4
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, %.sroa.7100.0.copyload
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i41.us
  %.sroa.0.0.i.i43.us = call i64 @llvm.umax.i64(i64 %i.u, i64 %.sroa.497.0.copyload) ; 4 uses
  %umax49.i44.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i43.us, i64 %.sroa.15.0.copyload)
  %exitcond.not.i46.us33.not = icmp ult i64 %.sroa.0.0.i.i43.us, %.sroa.15.0.copyload
  br i1 %exitcond.not.i46.us33.not, label %.lr.ph, label %.preheader122.us.preheader

bb.g:                                             ; preds = %bb.h
  %i.ae = add i64 %.sroa.02.0.i45.us34, 1         ; 2 uses
  %exitcond.not.i46.us = icmp eq i64 %i.ae, %umax49.i44.us
  br i1 %exitcond.not.i46.us, label %.preheader122.us.preheader, label %.lr.ph

.preheader122.us.preheader:                       ; preds = %bb.g, %bb.f
  %i.af = icmp ult i64 %i.u, %.sroa.497.0.copyload
  br i1 %i.af, label %.lr.ph36, label %.loopexit.i.us

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.02.0.i45.us34 = phi i64 [ %i.ae, %bb.g ], [ %.sroa.0.0.i.i43.us, %bb.f ] ; 4 uses
  %i.ag = add i64 %.sroa.02.0.i45.us34, %i.w      ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %.sroa.13106.0.copyload
  br i1 %i.ah, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i45.us34
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !48, !noalias !50, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !47, !noalias !49, !noundef !4
  %.not21.i48.us = icmp eq i8 %i.aj, %i.al
  br i1 %.not21.i48.us, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.reass = add i64 %i.w, %invariant.op
  %i.am = add i64 %.reass.reass, %.sroa.02.0.i45.us34
  br label %.sink.split.i.us

.preheader122.us:                                 ; preds = %bb.k
  %i.an = icmp ult i64 %i.u, %i.ao
  br i1 %i.an, label %.lr.ph36, label %.loopexit.i.us

.lr.ph36:                                         ; preds = %.preheader122.us.preheader, %.preheader122.us
  %.sroa.2.0.i49.us35 = phi i64 [ %i.ao, %.preheader122.us ], [ %.sroa.497.0.copyload, %.preheader122.us.preheader ]
  %i.ao = add i64 %.sroa.2.0.i49.us35, -1         ; 6 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.15.0.copyload
  br i1 %i.ap, label %bb.j, label %.split190.us.invoke

bb.j:                                             ; preds = %.lr.ph36
  %i.aq = add i64 %i.ao, %i.w                     ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %.sroa.13106.0.copyload
  br i1 %i.ar, label %bb.k, label %.split190.us.invoke

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !48, !noalias !50, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.aq
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !47, !noalias !49, !noundef !4
  %.not.i50.us = icmp eq i8 %i.at, %i.av
  br i1 %.not.i50.us, label %.preheader122.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = add i64 %i.w, %.sroa.699.0.copyload
  br label %.sink.split.i.us

bb.m:                                             ; preds = %.lr.ph.i41.us
  %i.ax = add i64 %i.w, %.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.m, %bb.l, %bb.i
  %.sink.i.us = phi i64 [ %i.p, %bb.l ], [ 0, %bb.i ], [ 0, %bb.m ]
  %.ph71.i.us = phi i64 [ %i.aw, %bb.l ], [ %i.am, %bb.i ], [ %i.ax, %bb.m ] ; 2 uses
  %i.ay = add i64 %.ph71.i.us, %i.n               ; 2 uses
  %i.az = icmp ult i64 %i.ay, %.sroa.13106.0.copyload
  br i1 %i.az, label %.lr.ph.i41.us, label %.critedge23

bb.n:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  br i1 %i.t, label %.lr.ph.i34.us, label %.critedge23

.lr.ph.i34.us:                                    ; preds = %bb.n, %bb.u
  %i.ba = phi i64 [ %i.cb, %bb.u ], [ %i.s, %bb.n ]
  %i.bb = phi i64 [ %i.ca, %bb.u ], [ %.sroa.18.0.us, %bb.n ] ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !51, !noalias !53, !noundef !4
  %i.be = and i8 %i.bd, 63
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %.sroa.7100.0.copyload
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i34.us
  br i1 %exitcond.not.i.us38.not, label %.lr.ph40, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.o
  %i.bj = add i64 %.sroa.02.0.i.us39, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bj, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph40

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not121.us41, label %.loopexit.i.us, label %.lr.ph43

.lr.ph40:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us39 = phi i64 [ %i.bj, %.preheader ], [ %.sroa.497.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bk = add i64 %.sroa.02.0.i.us39, %i.bb       ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %.sroa.13106.0.copyload
  br i1 %i.bl, label %bb.o, label %.split186.us

bb.o:                                             ; preds = %.lr.ph40
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us39
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !52, !noalias !54, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !51, !noalias !53, !noundef !4
  %.not21.i.us = icmp eq i8 %i.bn, %i.bp
  br i1 %.not21.i.us, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.reass324.reass = add i64 %i.bb, %invariant.op115
  %i.bq = add i64 %.reass324.reass, %.sroa.02.0.i.us39
  br label %bb.u

.preheader.us:                                    ; preds = %bb.r
  %.not121.us = icmp eq i64 %i.br, 0
  br i1 %.not121.us, label %.loopexit.i.us, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i.us42 = phi i64 [ %i.br, %.preheader.us ], [ %.sroa.497.0.copyload, %.preheader.us.preheader ]
  %i.br = add i64 %.sroa.2.0.i.us42, -1           ; 5 uses
end_hunk_0
begin_hunk_1_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hcdb13b152c7683d6E":bb.a
bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !52, !noalias !54, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.bs
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !51, !noalias !53, !noundef !4
  %.not.i.us = icmp eq i8 %i.bv, %i.bx
  br i1 %.not.i.us, label %.preheader.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = add i64 %.sroa.699.0.copyload, %i.bb
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i34.us
  %i.bz = add i64 %i.bb, %.sroa.15.0.copyload
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  %i.ca = phi i64 [ %i.bq, %bb.p ], [ %i.bz, %bb.t ], [ %i.by, %bb.s ] ; 2 uses
  %i.cb = add i64 %i.ca, %i.n                     ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.13106.0.copyload
  br i1 %i.cc, label %.lr.ph.i34.us, label %.critedge23

.loopexit.i.us:                                   ; preds = %.preheader122.us.preheader, %.preheader.us.preheader, %.preheader122.us, %.preheader.us
  %.sroa.7108.1.us = phi i64 [ %i.bb, %.preheader.us ], [ %i.w, %.preheader122.us ], [ %i.bb, %.preheader.us.preheader ], [ %i.w, %.preheader122.us.preheader ] ; 2 uses
  %.sroa.3068.1.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader122.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader122.us.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.us
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.7108.1.us
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce)
          to label %bb.v unwind label %.loopexit.split.us

bb.v:                                             ; preds = %.loopexit.i.us
  %.sroa.11109.1.us = add i64 %.sroa.7108.1.us, %.sroa.15.0.copyload ; 2 uses
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.o)
          to label %bb.d unwind label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %bb.v, %.loopexit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  %i.cf = and i64 %.sroa.699.0.copyload, 65536
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us", label %.critedge23

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12105.0.copyload) ]
  %i.cg = trunc i64 %.sroa.699.0.copyload to i1   ; 2 uses
  %i.ch = icmp eq i64 %.sroa.497.0.copyload, 0
  br i1 %i.ch, label %bb.y, label %bb.w

bb.w:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us"
  %.not.i.i.i.us.peel.peel = icmp ult i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.us.peel.peel, label %bb.x, label %.split.i.i.i.us.peel.peel

.split.i.i.i.us.peel.peel:                        ; preds = %bb.w
  %i.ci = icmp eq i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %i.ci, label %bb.y, label %.split.us208

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.497.0.copyload
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !55, !noalias !56, !noundef !4
  %i.cl = icmp sgt i8 %i.ck, -65
  br i1 %i.cl, label %bb.y, label %.split.us208

bb.y:                                             ; preds = %bb.x, %.split.i.i.i.us.peel.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us"
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.497.0.copyload ; 4 uses
  %i.cn = icmp samesign eq i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %i.cn, label %.loopexit261.peel, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load i8, ptr %i.cm, align 1, !noalias !57, !noundef !4 ; 5 uses
  %i.cp = icmp sgt i8 %i.co, -1
  br i1 %i.cp, label %bb.aa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel": ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.cr = and i8 %i.co, 31
  %i.cs = zext nneg i8 %i.cr to i32               ; 3 uses
  %i.ct = add nuw nsw i64 %.sroa.497.0.copyload, 1
  %i.cu = icmp samesign ne i64 %i.ct, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.cu)
  %i.cv = load i8, ptr %i.cq, align 1, !noalias !57, !noundef !4
  %i.cw = shl nuw nsw i32 %i.cs, 6
  %i.cx = and i8 %i.cv, 63
  %i.cy = zext nneg i8 %i.cx to i32               ; 2 uses
  %i.cz = or disjoint i32 %i.cw, %i.cy
  %i.da = icmp samesign ugt i8 %i.co, -33
  br i1 %i.da, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel", label %bb.ab

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel"
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.dc = add nuw nsw i64 %.sroa.497.0.copyload, 2
  %i.dd = icmp samesign ne i64 %i.dc, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.dd)
  %i.de = load i8, ptr %i.db, align 1, !noalias !57, !noundef !4
  %i.df = shl nuw nsw i32 %i.cy, 6
  %i.dg = and i8 %i.de, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh            ; 2 uses
  %i.dj = shl nuw nsw i32 %i.cs, 12
  %i.dk = or disjoint i32 %i.di, %i.dj
  %i.dl = icmp samesign ugt i8 %i.co, -17
  br i1 %i.dl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel", label %bb.ab

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel"
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.dn = add nuw nsw i64 %.sroa.497.0.copyload, 3
  %i.do = icmp samesign ne i64 %i.dn, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.do)
  %i.dp = load i8, ptr %i.dm, align 1, !noalias !57, !noundef !4
  %i.dq = shl nuw nsw i32 %i.cs, 18
  %i.dr = and i32 %i.dq, 1835008
  %i.ds = shl nuw nsw i32 %i.di, 6
  %i.dt = and i8 %i.dp, 63
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du
  %i.dw = or disjoint i32 %i.dv, %i.dr
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dx = zext nneg i8 %i.co to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel"
  %.sroa.4.0.i.ph.i.i.us.peel.peel = phi i32 [ %i.dk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel" ], [ %i.dw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel" ], [ %i.cz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel" ], [ %i.dx, %bb.aa ] ; 4 uses
  %i.dy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 1114112
  call void @llvm.assume(i1 %i.dy)
  br i1 %i.cg, label %.loopexit.i.us202.peel, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 128
  br i1 %i.dz, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 2048
  br i1 %i.ea, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 65536
  %..i.i.us.peel.peel = select i1 %i.eb, i64 3, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.01.0.i.i.us.peel.peel = phi i64 [ 2, %bb.ad ], [ %..i.i.us.peel.peel, %bb.ae ], [ 1, %bb.ac ]
  %i.ec = add i64 %.sroa.01.0.i.i.us.peel.peel, %.sroa.497.0.copyload ; 15 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.us.peel83 = icmp ult i64 %i.ec, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.us.peel83, label %bb.ah, label %.split.i.i.i.us.peel84

.split.i.i.i.us.peel84:                           ; preds = %bb.ag
  %i.ee = icmp eq i64 %i.ec, %.sroa.13106.0.copyload
  br i1 %i.ee, label %bb.ai, label %.split.us208

bb.ah:                                            ; preds = %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ec
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !55, !noalias !56, !noundef !4
  %i.eh = icmp sgt i8 %i.eg, -65
  br i1 %i.eh, label %bb.ai, label %.split.us208

bb.ai:                                            ; preds = %bb.ah, %.split.i.i.i.us.peel84, %bb.af
  %i.ei = icmp samesign eq i64 %i.ec, %.sroa.13106.0.copyload
  br i1 %i.ei, label %.loopexit.i.us202.peel, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ec
  %i.ek = load i8, ptr %i.ej, align 1, !noalias !57, !noundef !4 ; 3 uses
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %.loopexit.i.us202.peel, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85": ; preds = %bb.aj
  %i.em = add nuw nsw i64 %i.ec, 1
  %i.en = icmp samesign ne i64 %i.em, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp samesign ugt i8 %i.ek, -33
  br i1 %i.eo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86", label %.loopexit.i.us202.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85"
  %i.ep = add nuw nsw i64 %i.ec, 2
  %i.eq = icmp samesign ne i64 %i.ep, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp samesign ugt i8 %i.ek, -17
  br i1 %i.er, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87", label %.loopexit.i.us202.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86"
  %i.es = add nuw nsw i64 %i.ec, 3
  %i.et = icmp samesign ne i64 %i.es, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.et)
  br label %.loopexit.i.us202.peel

.loopexit261.peel:                                ; preds = %bb.y
  br i1 %i.cg, label %.loopexit.i.us202.peel, label %.critedge23

.loopexit.i.us202.peel:                           ; preds = %.loopexit261.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85", %bb.aj, %bb.ai, %bb.ab
  %.sroa.460.1.us257.peel = phi i64 [ %.sroa.13106.0.copyload, %.loopexit261.peel ], [ %.sroa.13106.0.copyload, %bb.ai ], [ %.sroa.497.0.copyload, %bb.ab ], [ %i.ec, %bb.aj ], [ %i.ec, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85" ], [ %i.ec, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86" ], [ %i.ec, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87" ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.460.1.us257.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.eu)
          to label %bb.ak unwind label %.loopexit.split.loopexit.split-lp

bb.ak:                                            ; preds = %.loopexit.i.us202.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.o)
          to label %.preheader.i.us unwind label %.loopexit.split.loopexit.split-lp

.preheader.i.us:                                  ; preds = %bb.ak, %7
  %.sroa.06.0.us201 = phi i64 [ %.sroa.460.1244, %7 ], [ %.sroa.460.1.us257.peel, %bb.ak ] ; 14 uses
  %i.ev = icmp eq i64 %.sroa.06.0.us201, 0
  br i1 %i.ev, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.preheader.i.us
  %.not.i.i.i.us.peel = icmp ult i64 %.sroa.06.0.us201, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.us.peel, label %bb.am, label %.split.i.i.i.us.peel

.split.i.i.i.us.peel:                             ; preds = %bb.al
  %i.ew = icmp eq i64 %.sroa.06.0.us201, %.sroa.13106.0.copyload
  br i1 %i.ew, label %bb.an, label %.split.us208

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.06.0.us201
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !55, !noalias !56, !noundef !4
  %i.ez = icmp sgt i8 %i.ey, -65
  br i1 %i.ez, label %bb.an, label %.split.us208

bb.an:                                            ; preds = %bb.am, %.split.i.i.i.us.peel, %.preheader.i.us
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.06.0.us201 ; 4 uses
  %i.fb = icmp samesign eq i64 %.sroa.06.0.us201, %.sroa.13106.0.copyload
  br i1 %i.fb, label %.critedge23, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = load i8, ptr %i.fa, align 1, !noalias !57, !noundef !4 ; 5 uses
  %i.fd = icmp sgt i8 %i.fc, -1
  br i1 %i.fd, label %bb.ap, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel": ; preds = %bb.ao
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.ff = and i8 %i.fc, 31
  %i.fg = zext nneg i8 %i.ff to i32               ; 3 uses
  %i.fh = add nuw nsw i64 %.sroa.06.0.us201, 1
  %i.fi = icmp samesign ne i64 %i.fh, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.fi)
  %i.fj = load i8, ptr %i.fe, align 1, !noalias !57, !noundef !4
  %i.fk = shl nuw nsw i32 %i.fg, 6
  %i.fl = and i8 %i.fj, 63
  %i.fm = zext nneg i8 %i.fl to i32               ; 2 uses
  %i.fn = or disjoint i32 %i.fk, %i.fm
  %i.fo = icmp samesign ugt i8 %i.fc, -33
  br i1 %i.fo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel", label %bb.aq

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel"
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fq = add nuw nsw i64 %.sroa.06.0.us201, 2
  %i.fr = icmp samesign ne i64 %i.fq, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.fr)
  %i.fs = load i8, ptr %i.fp, align 1, !noalias !57, !noundef !4
  %i.ft = shl nuw nsw i32 %i.fm, 6
  %i.fu = and i8 %i.fs, 63
  %i.fv = zext nneg i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.ft, %i.fv            ; 2 uses
  %i.fx = shl nuw nsw i32 %i.fg, 12
  %i.fy = or disjoint i32 %i.fw, %i.fx
  %i.fz = icmp samesign ugt i8 %i.fc, -17
  br i1 %i.fz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel", label %bb.aq

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel"
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fa, i64 3
  %i.gb = add nuw nsw i64 %.sroa.06.0.us201, 3
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.gc)
  %i.gd = load i8, ptr %i.ga, align 1, !noalias !57, !noundef !4
  %i.ge = shl nuw nsw i32 %i.fg, 18
  %i.gf = and i32 %i.ge, 1835008
  %i.gg = shl nuw nsw i32 %i.fw, 6
  %i.gh = and i8 %i.gd, 63
  %i.gi = zext nneg i8 %i.gh to i32
  %i.gj = or disjoint i32 %i.gg, %i.gi
  %i.gk = or disjoint i32 %i.gj, %i.gf
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gl = zext nneg i8 %i.fc to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel"
  %.sroa.4.0.i.ph.i.i.us.peel = phi i32 [ %i.fy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel" ], [ %i.gk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel" ], [ %i.fn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel" ], [ %i.gl, %bb.ap ] ; 4 uses
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 1114112
  call void @llvm.assume(i1 %i.gm)
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 128
  br i1 %i.gn, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.go = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 2048
  br i1 %i.go, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 65536
  %..i.i.us.peel = select i1 %i.gp, i64 3, i64 4
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %.sroa.01.0.i.i.us.peel = phi i64 [ 2, %bb.ar ], [ %..i.i.us.peel, %bb.as ], [ 1, %bb.aq ]
  %i.gq = add i64 %.sroa.01.0.i.i.us.peel, %.sroa.06.0.us201 ; 15 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.i.i.i.us = icmp ult i64 %i.gq, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.us, label %bb.av, label %.split.i.i.i.us

.split.i.i.i.us:                                  ; preds = %bb.au
  %i.gs = icmp eq i64 %i.gq, %.sroa.13106.0.copyload
  br i1 %i.gs, label %bb.aw, label %.split.us208

bb.av:                                            ; preds = %bb.au
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.gq
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !55, !noalias !56, !noundef !4
  %i.gv = icmp sgt i8 %i.gu, -65
  br i1 %i.gv, label %bb.aw, label %.split.us208

bb.aw:                                            ; preds = %bb.av, %.split.i.i.i.us, %bb.at
  %i.gw = icmp samesign eq i64 %i.gq, %.sroa.13106.0.copyload
  br i1 %i.gw, label %.loopexit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.gq
  %i.gy = load i8, ptr %i.gx, align 1, !noalias !57, !noundef !4 ; 3 uses
  %i.gz = icmp sgt i8 %i.gy, -1
  br i1 %i.gz, label %.loopexit.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us": ; preds = %bb.ax
  %i.ha = add nuw nsw i64 %i.gq, 1
  %i.hb = icmp samesign ne i64 %i.ha, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i8 %i.gy, -33
  br i1 %i.hc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us"
  %i.hd = add nuw nsw i64 %i.gq, 2
  %i.he = icmp samesign ne i64 %i.hd, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp samesign ugt i8 %i.gy, -17
  br i1 %i.hf, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us"
  %i.hg = add nuw nsw i64 %i.gq, 3
  %i.hh = icmp samesign ne i64 %i.hg, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.hh)
  br label %.loopexit.i

.split.us208:                                     ; preds = %bb.am, %.split.i.i.i.us.peel, %bb.av, %.split.i.i.i.us, %bb.ah, %.split.i.i.i.us.peel84, %bb.x, %.split.i.i.i.us.peel.peel
  %.sroa.460.1.us.lcssa = phi i64 [ %.sroa.497.0.copyload, %.split.i.i.i.us.peel.peel ], [ %.sroa.497.0.copyload, %bb.x ], [ %i.ec, %.split.i.i.i.us.peel84 ], [ %i.ec, %bb.ah ], [ %.sroa.06.0.us201, %bb.am ], [ %.sroa.06.0.us201, %.split.i.i.i.us.peel ], [ %i.gq, %.split.i.i.i.us ], [ %i.gq, %bb.av ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.12105.0.copyload, i64 noundef %.sroa.13106.0.copyload, i64 noundef %.sroa.460.1.us.lcssa, i64 noundef %.sroa.13106.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.us208
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.hi = add i64 %i.w, %.sroa.0.0.i.i43.us
  %umax.i47 = call i64 @llvm.umax.i64(i64 %.sroa.13106.0.copyload, i64 %i.hi)
  br label %.split190.us.invoke

.split190.us.invoke:                              ; preds = %bb.j, %.lr.ph36, %bb.q, %.lr.ph43, %.split.us, %.split186.us
  %i.hj = phi i64 [ %umax.i47, %.split.us ], [ %i.br, %.lr.ph43 ], [ %umax.i, %.split186.us ], [ %i.bs, %bb.q ], [ %i.aq, %bb.j ], [ %i.ao, %.lr.ph36 ]
  %i.hk = phi i64 [ %.sroa.13106.0.copyload, %.split.us ], [ %.sroa.15.0.copyload, %.lr.ph43 ], [ %.sroa.13106.0.copyload, %.split186.us ], [ %.sroa.13106.0.copyload, %bb.q ], [ %.sroa.13106.0.copyload, %bb.j ], [ %.sroa.15.0.copyload, %.lr.ph36 ]
  %i.hl = phi ptr [ @3, %.split.us ], [ @1, %.lr.ph43 ], [ @3, %.split186.us ], [ @2, %bb.q ], [ @2, %bb.j ], [ @1, %.lr.ph36 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.hj, i64 noundef %i.hk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #17
          to label %.split190.us.cont unwind label %.loopexit.split-lp

.split190.us.cont:                                ; preds = %.split190.us.invoke
  unreachable

.split186.us:                                     ; preds = %.lr.ph40
  %i.hm = add i64 %i.bb, %.sroa.497.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.13106.0.copyload, i64 %i.hm)
  br label %.split190.us.invoke

.loopexit.split.loopexit:                         ; preds = %7, %.loopexit.i
  %lpad.loopexit89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.loopexit.split-lp:                ; preds = %.loopexit.i.us202.peel, %bb.ak
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split190.us.invoke, %.split.us208
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.i:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us", %bb.ax, %bb.aw
  %.sroa.460.1244 = phi i64 [ %i.gq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us" ], [ %.sroa.13106.0.copyload, %bb.aw ], [ %i.gq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us" ], [ %i.gq, %bb.ax ], [ %i.gq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us" ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.us201
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.460.1244
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %7 unwind label %.loopexit.split.loopexit

.critedge23:                                      ; preds = %.loopexit261.peel, %bb.an, %bb.n, %bb.e, %.sink.split.i.us, %bb.u, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  %.sroa.06.0165 = phi i64 [ %.sroa.06.0.us, %bb.n ], [ %.sroa.06.0.us, %.sink.split.i.us ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split" ], [ %.sroa.06.0.us, %bb.u ], [ %.sroa.06.0.us, %bb.e ], [ 0, %.loopexit261.peel ], [ %.sroa.06.0.us201, %bb.an ]
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0165
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.hn, ptr noundef nonnull %i.ho)
          to label %bb.ay unwind label %bb.c

bb.ay:                                            ; preds = %.critedge23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

7:                                                ; preds = %.loopexit.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.o)
          to label %.preheader.i.us unwind label %.loopexit.split.loopexit, !llvm.loop !46

bb.az:                                            ; preds = %.loopexit
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

bb.ba:                                            ; preds = %.loopexit
  resume { ptr, i32 } %.pn
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !6, !alias.scope !62, !noalias !64, !noundef !4
  %.not.i = icmp eq i64 %i.m, -9223372036854775808
  br i1 %.not.i, label %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.g, !noalias !64

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #15
          to label %bb.j unwind label %bb.i, !noalias !64

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !63
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  br label %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit"

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16, !noalias !64
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.n

"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit": ; preds = %bb.e, %bb.h
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.h ], [ -9223372036854775808, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63
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
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @108, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 34, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @109, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 34, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.i, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #18
  resume { ptr, i32 } %i.j
}

end_hunk_1
