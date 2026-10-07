Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/minilints-655a07651eab16c7.minilints.4d37230c40706770-cgu.13?download=true
inline.NumInlined: 95
inline.NumDeleted: 53
begin_hunk_0_@"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h55871c3b753a23b3E":bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !24, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !25, !invariant.load !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !26, !invariant.load !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h618e486acc90bb71E.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #16
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h618e486acc90bb71E.exit.i.i.i"

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !25, !invariant.load !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !26, !invariant.load !4 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #16
  resume { ptr, i32 } %i.m

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h618e486acc90bb71E.exit.i.i.i": ; preds = %bb.f, %bb.e
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #16
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4d94e524730db8b7E.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4d94e524730db8b7E.exit": ; preds = %bb.a, %bb.a, %bb.b, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h618e486acc90bb71E.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h50b2f11b8a1e4913E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6e42a662ebe3718aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95bcb76995369695E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h383ff4b455c771b3E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95bcb76995369695E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h383ff4b455c771b3E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h2e68e82b8c708b94E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %2, ptr nonnull readonly align 1 %i.b, i64 %3), !alias.scope !30
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hb66f3d0981f4375bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !align !6, !noundef !4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8            ; 2 uses
  %.val2 = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8
  %.not1.i = icmp ne ptr %.val2, null
  %.not.i.i.i = icmp eq i64 %.val1, %.val3
  %or.cond.i = select i1 %.not1.i, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h339416d10538dc2aE.exit"

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %.val2, null
  br label %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h339416d10538dc2aE.exit"

bb.d:                                             ; preds = %bb.b
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val2, i64 %.val1), !alias.scope !34
  %i.d = icmp eq i32 %bcmp.i.i.i, 0
  br label %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h339416d10538dc2aE.exit"

"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h339416d10538dc2aE.exit": ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hd0bfe52d05dfc4f0E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4
  %.not.i = icmp eq i64 %1, %.val1
  br i1 %.not.i, label %bb.b, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h276c06cb868a1e82E.exit"

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !nonnull !4, !align !6, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %0, ptr nonnull readonly align 1 %.val, i64 %1), !alias.scope !38
  %i.b = icmp eq i32 %bcmp.i, 0
  br label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h276c06cb868a1e82E.exit"

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h276c06cb868a1e82E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hdfe63104239f45a2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !4
  %.not.i.i = icmp eq i64 %.val1, %.val3
  br i1 %.not.i.i, label %bb.b, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hcbfc25801431b5daE.exit"

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %1, align 8, !nonnull !4, !align !6, !noundef !4
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val2, i64 %.val1), !alias.scope !42
  %i.c = icmp eq i32 %bcmp.i.i, 0
  br label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hcbfc25801431b5daE.exit"

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hcbfc25801431b5daE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h31eaf4c2c4548bd2E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %3)
  %i.a = tail call i32 @memcmp(ptr nonnull readonly align 1 %0, ptr nonnull readonly align 1 %2, i64 %spec.store.select.i), !alias.scope !46 ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = icmp eq i32 %i.a, 0
  %i.d = sub i64 %1, %3
  %spec.select.i = select i1 %i.c, i64 %i.d, i64 %i.b
  %i.e = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  ret i8 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3str17join_generic_copy17h217f1eff38ad32cbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.o = icmp eq i64 %2, 0                        ; 2 uses
  %.sroa.0.0.idx = select i1 %i.o, i64 0, i64 24  ; 2 uses
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 6 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink.sroa.gep419 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink.sroa.gep420 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink.sroa.gep421 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink.sroa.gep422 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep423 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep426 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep427 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.sroa.gep428 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.sroa.gep430 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink.sroa.gep431 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sink.sroa.gep432 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sink.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sink.sroa.gep434 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sink.sroa.gep435 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sink.sroa.gep436 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.sroa.gep437 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.sroa.gep438 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.sroa.gep439 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.sroa.gep440 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.sroa.gep442 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink.sroa.gep443 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sink.sroa.gep444 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sink.sroa.gep445 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sink.sroa.gep446 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sink.sroa.gep447 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink.sroa.gep448 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.sroa.gep449 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.sroa.gep450 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.sroa.gep451 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.sroa.gep452 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.sroa.gep454 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sink.sroa.gep455 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sink.sroa.gep456 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sink.sroa.gep457 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sink.sroa.gep458 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sink.sroa.gep459 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.sroa.gep461 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink.sroa.gep462 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.sroa.gep464 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %gepdiff = add nsw i64 %.idx, -24
  %i.p = udiv exact i64 %gepdiff, 24
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.p) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.thread, label %.lr.ph406, !prof !82

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %.thread239, %bb.c
  ret void

.lr.ph406:                                        ; preds = %bb.b
  %i.u = extractvalue { i64, i1 } %i.q, 0
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph406, %bb.e
  %.sroa.01.0.i405 = phi i64 [ %i.u, %.lr.ph406 ], [ %i.z, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %1, %.lr.ph406 ], [ %i.v, %bb.e ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %.val9.i = load i64, ptr %i.y, align 8, !noalias !83, !noundef !4
  %i.z = add i64 %.val9.i, %.sroa.01.0.i405       ; 6 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.01.0.i405
  br i1 %i.aa, label %.thread, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h2bc8a5db79451fc6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ab = load i64, ptr %i.a, align 8, !range !84, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !7, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.i, !prof !85

bb.g:                                             ; preds = %._crit_edge
  %i.ag = load i64, ptr %i.af, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ae, i64 %i.ag) #18
  unreachable

.thread:                                          ; preds = %bb.f, %bb.b
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @0, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18
  unreachable

bb.h:                                             ; preds = %.invoke, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h50b2f11b8a1e4913E"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #19
          to label %bb.ab unwind label %bb.aa

bb.i:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  %i.aj = icmp ule i64 %i.z, %i.ae
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ae, ptr %i.m, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %1, i64 8
  %.sroa.05.0.val = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 16
  %.sroa.05.0.val137 = load i64, ptr %i.an, align 8, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.05.0.val, i64 %.sroa.05.0.val137
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7099b8d1a9ad2599E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %.sroa.05.0.val, ptr noundef nonnull %i.ao)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ap = load i64, ptr %i.al, align 8, !noundef !4 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap ; 6 uses
  %i.at = sub i64 %i.z, %i.ap                     ; 12 uses
  %i.au = icmp samesign eq i64 %.sroa.0.0.idx, %.idx ; 6 uses
  switch i64 %4, label %.preheader [
    i64 0, label %.preheader304
    i64 1, label %.preheader306
    i64 2, label %.preheader308
    i64 3, label %.preheader310
    i64 4, label %.preheader312
  ]

.preheader312:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph

.preheader310:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph332

.preheader308:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph337

.preheader306:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph342

.preheader304:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph347

.preheader:                                       ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph352

.lr.ph347:                                        ; preds = %.preheader304, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit146"
  %.sroa.014.0346 = phi ptr [ %i.az, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit146" ], [ %i.as, %.preheader304 ] ; 2 uses
  %.sroa.38.0345 = phi i64 [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit146" ], [ %i.at, %.preheader304 ] ; 2 uses
  %.sroa.0.0234344 = phi ptr [ %i.ay, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit146" ], [ %.sroa.0.0, %.preheader304 ] ; 3 uses
  %i.av = getelementptr i8, ptr %.sroa.0.0234344, i64 16
  %.sroa.090.0.val143 = load i64, ptr %i.av, align 8, !noundef !4 ; 4 uses
  %.not132 = icmp ugt i64 %.sroa.090.0.val143, %.sroa.38.0345
  br i1 %.not132, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit146", !prof !85

.thread239:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit170", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit164", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit158", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit152", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit146", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit176", %.preheader312, %.preheader310, %.preheader308, %.preheader306, %.preheader304, %.preheader
  %.sroa.38.1 = phi i64 [ %i.cc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit164" ], [ %i.bt, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit158" ], [ %i.cu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit176" ], [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit146" ], [ %i.bj, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit152" ], [ %i.at, %.preheader ], [ %i.at, %.preheader304 ], [ %i.at, %.preheader306 ], [ %i.at, %.preheader308 ], [ %i.at, %.preheader310 ], [ %i.at, %.preheader312 ], [ %i.cm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit170" ]
  %i.aw = sub i64 %i.z, %.sroa.38.1
  store i64 %i.aw, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.d

bb.k:                                             ; preds = %.lr.ph347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit146": ; preds = %.lr.ph347
  %i.ax = getelementptr i8, ptr %.sroa.0.0234344, i64 8
  %.sroa.090.0.val = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0234344, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.0346, i64 %.sroa.090.0.val143
  %i.ba = sub nuw i64 %.sroa.38.0345, %.sroa.090.0.val143 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.014.0346, ptr nonnull readonly align 1 %.sroa.090.0.val, i64 %.sroa.090.0.val143, i1 false), !alias.scope !86
  %i.bb = icmp eq ptr %i.ay, %i.n
  br i1 %i.bb, label %.thread239, label %.lr.ph347

.lr.ph342:                                        ; preds = %.preheader306, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit152"
  %.sroa.014.2341 = phi ptr [ %i.bi, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit152" ], [ %i.as, %.preheader306 ] ; 2 uses
  %.sroa.38.2340 = phi i64 [ %i.bj, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit152" ], [ %i.at, %.preheader306 ] ; 2 uses
  %.sroa.0177.0339 = phi ptr [ %i.bc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit152" ], [ %.sroa.0.0, %.preheader306 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0177.0339, i64 24 ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.0177.0339, i64 8
  %.sroa.092.0.val = load ptr, ptr %i.bd, align 8, !nonnull !4, !noundef !4
  %i.be = getelementptr i8, ptr %.sroa.0177.0339, i64 16
  %.sroa.092.0.val142 = load i64, ptr %i.be, align 8, !noundef !4 ; 4 uses
  %.not128 = icmp eq i64 %.sroa.38.2340, 0
  br i1 %.not128, label %bb.l, label %bb.m, !prof !85

bb.l:                                             ; preds = %.lr.ph342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %.invoke

bb.m:                                             ; preds = %.lr.ph342
  %i.bf = add i64 %.sroa.38.2340, -1              ; 2 uses
  %i.bg = load i8, ptr %3, align 1, !alias.scope !87
  store i8 %i.bg, ptr %.sroa.014.2341, align 1, !alias.scope !87
  %.not129 = icmp ugt i64 %.sroa.092.0.val142, %i.bf
  br i1 %.not129, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit152", !prof !85

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit152": ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.014.2341, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.092.0.val142
  %i.bj = sub nuw i64 %i.bf, %.sroa.092.0.val142  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull readonly align 1 %.sroa.092.0.val, i64 %.sroa.092.0.val142, i1 false), !alias.scope !88
  %i.bk = icmp eq ptr %i.bc, %i.n
  br i1 %i.bk, label %.thread239, label %.lr.ph342

.lr.ph337:                                        ; preds = %.preheader308, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit158"
  %.sroa.014.3336 = phi ptr [ %i.bs, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit158" ], [ %i.as, %.preheader308 ] ; 2 uses
  %.sroa.38.3335 = phi i64 [ %i.bt, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit158" ], [ %i.at, %.preheader308 ] ; 2 uses
  %.sroa.0179.0334 = phi ptr [ %i.bl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit158" ], [ %.sroa.0.0, %.preheader308 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0179.0334, i64 24 ; 2 uses
  %i.bm = getelementptr i8, ptr %.sroa.0179.0334, i64 8
  %.sroa.094.0.val = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.bn = getelementptr i8, ptr %.sroa.0179.0334, i64 16
  %.sroa.094.0.val141 = load i64, ptr %i.bn, align 8, !noundef !4 ; 4 uses
  %i.bo = icmp ugt i64 %.sroa.38.3335, 1
  br i1 %i.bo, label %bb.p, label %bb.o, !prof !89

bb.o:                                             ; preds = %.lr.ph337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br label %.invoke

bb.p:                                             ; preds = %.lr.ph337
  %i.bp = add i64 %.sroa.38.3335, -2              ; 2 uses
  %i.bq = load i16, ptr %3, align 1, !alias.scope !90
  store i16 %i.bq, ptr %.sroa.014.3336, align 1, !alias.scope !90
  %.not125 = icmp ugt i64 %.sroa.094.0.val141, %i.bp
  br i1 %.not125, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit158", !prof !85

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit158": ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.014.3336, i64 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.094.0.val141
  %i.bt = sub nuw i64 %i.bp, %.sroa.094.0.val141  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull readonly align 1 %.sroa.094.0.val, i64 %.sroa.094.0.val141, i1 false), !alias.scope !91
  %i.bu = icmp eq ptr %i.bl, %i.n
  br i1 %i.bu, label %.thread239, label %.lr.ph337

.lr.ph332:                                        ; preds = %.preheader310, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit164"
  %.sroa.014.4331 = phi ptr [ %i.cb, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit164" ], [ %i.as, %.preheader310 ] ; 2 uses
  %.sroa.38.4330 = phi i64 [ %i.cc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit164" ], [ %i.at, %.preheader310 ] ; 2 uses
  %.sroa.0181.0329 = phi ptr [ %i.bv, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit164" ], [ %.sroa.0.0, %.preheader310 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 24 ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.0181.0329, i64 8
  %.sroa.096.0.val = load ptr, ptr %i.bw, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr i8, ptr %.sroa.0181.0329, i64 16
  %.sroa.096.0.val140 = load i64, ptr %i.bx, align 8, !noundef !4 ; 4 uses
  %i.by = icmp ugt i64 %.sroa.38.4330, 2
  br i1 %i.by, label %bb.s, label %bb.r, !prof !89

bb.r:                                             ; preds = %.lr.ph332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %.invoke

bb.s:                                             ; preds = %.lr.ph332
  %i.bz = add i64 %.sroa.38.4330, -3              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.014.4331, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !alias.scope !92
  %.not122 = icmp ugt i64 %.sroa.096.0.val140, %i.bz
  br i1 %.not122, label %bb.t, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit164", !prof !85

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit164": ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.014.4331, i64 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.096.0.val140
  %i.cc = sub nuw i64 %i.bz, %.sroa.096.0.val140  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %.sroa.096.0.val, i64 %.sroa.096.0.val140, i1 false), !alias.scope !93
  %i.cd = icmp eq ptr %i.bv, %i.n
  br i1 %i.cd, label %.thread239, label %.lr.ph332

.lr.ph:                                           ; preds = %.preheader312, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit170"
  %.sroa.014.5328 = phi ptr [ %i.cl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit170" ], [ %i.as, %.preheader312 ] ; 2 uses
  %.sroa.38.5327 = phi i64 [ %i.cm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit170" ], [ %i.at, %.preheader312 ] ; 2 uses
  %.sroa.0183.0326 = phi ptr [ %i.ce, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit170" ], [ %.sroa.0.0, %.preheader312 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0183.0326, i64 24 ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.0183.0326, i64 8
  %.sroa.098.0.val = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr i8, ptr %.sroa.0183.0326, i64 16
  %.sroa.098.0.val139 = load i64, ptr %i.cg, align 8, !noundef !4 ; 4 uses
  %i.ch = icmp ugt i64 %.sroa.38.5327, 3
  br i1 %i.ch, label %bb.v, label %bb.u, !prof !89

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %.invoke

bb.v:                                             ; preds = %.lr.ph
  %i.ci = add i64 %.sroa.38.5327, -4              ; 2 uses
  %i.cj = load i32, ptr %3, align 1, !alias.scope !94
  store i32 %i.cj, ptr %.sroa.014.5328, align 1, !alias.scope !94
  %.not119 = icmp ugt i64 %.sroa.098.0.val139, %i.ci
  br i1 %.not119, label %bb.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit170", !prof !85

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit170": ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.014.5328, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.098.0.val139
  %i.cm = sub nuw i64 %i.ci, %.sroa.098.0.val139  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 1 %.sroa.098.0.val, i64 %.sroa.098.0.val139, i1 false), !alias.scope !95
  %i.cn = icmp eq ptr %i.ce, %i.n
  br i1 %i.cn, label %.thread239, label %.lr.ph

.lr.ph352:                                        ; preds = %.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit176"
  %.sroa.014.6351 = phi ptr [ %i.ct, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit176" ], [ %i.as, %.preheader ] ; 3 uses
  %.sroa.38.6350 = phi i64 [ %i.cu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit176" ], [ %i.at, %.preheader ] ; 2 uses
  %.sroa.0185.0349 = phi ptr [ %i.co, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h981ce1af03c6b684E.exit176" ], [ %.sroa.0.0, %.preheader ] ; 3 uses
end_hunk_0
