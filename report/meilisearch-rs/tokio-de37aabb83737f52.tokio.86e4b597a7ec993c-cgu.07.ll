Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/tokio-de37aabb83737f52.tokio.86e4b597a7ec993c-cgu.07?download=true
inline.NumInlined: 68
inline.NumDeleted: 8
begin_hunk_0_@_ZN4core4time8Duration3new17h0df5dd77b54447b4E:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @35, i64 25, ptr nonnull align 8 @37) #25
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi i32 [ %1, %bb.a ], [ %i.c, %bb.b ]
  %.sroa.0.0 = phi i64 [ %0, %bb.a ], [ %i.e, %bb.b ]
  %i.g = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i64, i32 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i128 0, 18446744073709551619294967296) i128 @_ZN4core4time8Duration8as_nanos17hf7c954fd45858efcE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = zext i64 %i.a to i128
  %i.c = mul nuw nsw i128 %i.b, 1000000000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i128
  %i.g = add nuw nsw i128 %i.c, %i.f
  ret i128 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i128 0, 18446744073709551619295) i128 @_ZN4core4time8Duration9as_millis17h1b4ddb1cc19ab6a0E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = zext i64 %i.a to i128
  %i.c = mul nuw nsw i128 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = udiv i32 %i.e, 1000000
  %i.g = zext nneg i32 %i.f to i128
  %i.h = add nuw nsw i128 %i.c, %i.g
  ret i128 %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i32 } @_ZN4core4time8Duration9from_secs17h155b6a23b9d117b8E(i64 %0) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { i64, i32 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i32 } %i.a, i32 0, 1
  ret { i64, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5777b15686c66416E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @"_ZN51_$LT$T$u20$as$u20$core..borrow..Borrow$LT$T$GT$$GT$6borrow17h1972cb626fc8c421E"(ptr align 8 %1)
  %i.b = tail call zeroext i1 @"_ZN4core3cmp5impls56_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$usize$GT$2eq17had195146b482e1b5E"(ptr align 8 %0, ptr align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN58_$LT$mio..token..Token$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0aee0f1ca99d4f85E"(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h2ec65b871818105bE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i64 %1, ptr align 8 %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc660af04fd9c42f5E"(i64 %1, i64 8, i64 1040, ptr align 8 %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h5343c1d62afe5cc1E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i64 %1, ptr align 8 %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc660af04fd9c42f5E"(i64 %1, i64 8, i64 24, ptr align 8 %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17hb43044a4f00ee438E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i64 %1, ptr align 8 %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc660af04fd9c42f5E"(i64 %1, i64 8, i64 8, ptr align 8 %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h005b797af6d2d142E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #9 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h09b53acff9b09d4bE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %0, i64 %i.c, i64 8, i64 24) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.f, i64 %i.g, ptr align 8 %1) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h83f8433c9041ea37E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %0, i64 %i.c, i64 8, i64 1040) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i64 } %i.e, 1
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.f, i64 %i.g, ptr align 8 %1) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h3892d77c0e7772dfE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h09b53acff9b09d4bE.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %0, i64 %i.c, i64 8, i64 24)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not.i, label %".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h09b53acff9b09d4bE.exit_crit_edge", label %bb.c

".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h09b53acff9b09d4bE.exit_crit_edge": ; preds = %.noexc
  %.sroa.01.0.copyload.pre = load i64, ptr %0, align 8
  %.sroa.33.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h09b53acff9b09d4bE.exit"

bb.c:                                             ; preds = %.noexc
  %i.g = extractvalue { i64, i64 } %i.e, 1
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.f, i64 %i.g, ptr align 8 %1) #25
          to label %.noexc7 unwind label %bb.e

.noexc7:                                          ; preds = %bb.c
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h09b53acff9b09d4bE.exit": ; preds = %".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h09b53acff9b09d4bE.exit_crit_edge", %bb.a
  %.sroa.33.0.copyload = phi i64 [ %.sroa.33.0.copyload.pre, %".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h09b53acff9b09d4bE.exit_crit_edge" ], [ %i.c, %bb.a ]
  %.sroa.01.0.copyload = phi i64 [ %.sroa.01.0.copyload.pre, %".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h09b53acff9b09d4bE.exit_crit_edge" ], [ %i.a, %bb.a ]
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %i.h = tail call { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hda0a0d89b020bd66E"(i64 %.sroa.01.0.copyload, ptr %.sroa.22.0.copyload, i64 %.sroa.33.0.copyload)
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm

bb.e:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr270drop_in_place$LT$alloc..vec..Vec$LT$tokio..loom..std..mutex..Mutex$LT$tokio..util..linked_list..LinkedList$LT$tokio..runtime..task..Task$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$C$tokio..runtime..task..core..Header$GT$$GT$$GT$$GT$17h47b621da7769c98aE"(ptr nonnull align 8 %0) #27
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h694a9eee6421a46dE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h83f8433c9041ea37E.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %0, i64 %i.c, i64 8, i64 1040)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not.i, label %".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h83f8433c9041ea37E.exit_crit_edge", label %bb.c

".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h83f8433c9041ea37E.exit_crit_edge": ; preds = %.noexc
  %.sroa.01.0.copyload.pre = load i64, ptr %0, align 8
  %.sroa.33.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h83f8433c9041ea37E.exit"

bb.c:                                             ; preds = %.noexc
  %i.g = extractvalue { i64, i64 } %i.e, 1
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.f, i64 %i.g, ptr align 8 %1) #25
          to label %.noexc7 unwind label %bb.e

.noexc7:                                          ; preds = %bb.c
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h83f8433c9041ea37E.exit": ; preds = %".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h83f8433c9041ea37E.exit_crit_edge", %bb.a
  %.sroa.33.0.copyload = phi i64 [ %.sroa.33.0.copyload.pre, %".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h83f8433c9041ea37E.exit_crit_edge" ], [ %i.c, %bb.a ]
  %.sroa.01.0.copyload = phi i64 [ %.sroa.01.0.copyload.pre, %".noexc._ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h83f8433c9041ea37E.exit_crit_edge" ], [ %i.a, %bb.a ]
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %i.h = tail call { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17h0e4998b94d429ba6E"(i64 %.sroa.01.0.copyload, ptr %.sroa.22.0.copyload, i64 %.sroa.33.0.copyload)
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm

bb.e:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$tokio..runtime..time..wheel..level..Level$GT$$GT$17he9711bd8b32db61bE"(ptr nonnull align 8 %0) #27
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h8d1da58909dbfc06E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, ptr } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h34630ad1a990633eE"(ptr nofree align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.d ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h4739078b59ff1d25E"(ptr align 8 %0, ptr %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h23774a4bd9a64fcbE.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h97d8c1d3fe3cf53dE"(ptr nonnull align 8 %0, ptr align 8 %2)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h23774a4bd9a64fcbE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr90drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..io..scheduled_io..ScheduledIo$GT$$GT$17h8a33535fc31f0b72E"(ptr nonnull align 8 %i.a) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h23774a4bd9a64fcbE.exit": ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.c
  store ptr %1, ptr %i.j, align 8
  %i.k = add i64 %i.c, 1
  store i64 %i.k, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h58694341e123bf6aE"(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hed90b159c43ed94cE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1b75278ff2e3827aE"(ptr nonnull align 8 %0, ptr align 8 %2)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hed90b159c43ed94cE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hed90b159c43ed94cE.exit": ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h8107fdcc559aede1E"(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he850b2a83025ab40E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdc6cba706315054eE"(ptr nonnull align 8 %0, ptr align 8 %2)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he850b2a83025ab40E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he850b2a83025ab40E.exit": ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [1040 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(1040) %1, i64 1040, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17ha9d45278db0307acE"(ptr align 8 %0, ptr align 8 %1, ptr %2, ptr align 8 %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = load i64, ptr %0, align 8
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf660b3d97d2f111aE.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h70c97b7240c4553eE"(ptr nonnull align 8 %0, ptr align 8 %3)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf660b3d97d2f111aE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr44drop_in_place$LT$core..task..wake..Waker$GT$17h247ee2d5a7324198E"(ptr nonnull align 8 %i.a) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf660b3d97d2f111aE.exit": ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.d ; 2 uses
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %2, ptr %i.l, align 8
  %i.m = add i64 %i.d, 1
  store i64 %i.m, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h9bbfe07e330a61f6E"(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  store i64 0, ptr %i.c, align 8
  tail call void @"_ZN4core3ptr100drop_in_place$LT$$u5b$alloc..sync..Arc$LT$tokio..runtime..io..scheduled_io..ScheduledIo$GT$$u5d$$GT$17h5496a20924494462E"(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
end_hunk_0
