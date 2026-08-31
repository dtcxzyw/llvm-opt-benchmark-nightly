Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/tower-21355ed5550aa44b.tower.edcb24ae892e7d3d-cgu.0?download=true
inline.NumInlined: 89
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4core4sync6atomic12atomic_store17h321b1060dd7a0995E:bb.a

bb.c:                                             ; preds = %bb.a
  store atomic i64 %1, ptr %0 monotonic, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store atomic i64 %1, ptr %0 release, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  store ptr @8, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.f, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.b, ptr nonnull align 8 @9) #25
  unreachable

bb.f:                                             ; preds = %bb.a
  store ptr @11, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.a, ptr nonnull align 8 @12) #25
  unreachable

bb.g:                                             ; preds = %bb.a
  store atomic i64 %1, ptr %0 seq_cst, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hd7164f22aecb2da5E"(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h3ee55681fbad8de3E"(ptr align 8 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i1 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h056c01c707e9a598E"(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 8 %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.g, ptr %i.h, align 8
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr align 1 %1, i64 %2, ptr nonnull align 1 %i.a, ptr nonnull align 8 @16, ptr align 8 %3) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = trunc nuw i8 %i.g to i1
  %i.j = insertvalue { ptr, i1 } poison, ptr %i.e, 0
  %i.k = insertvalue { ptr, i1 } %i.j, i1 %i.i, 1
  ret { ptr, i1 } %i.k

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$tower..retry..budget..tps_budget..Generation$GT$$GT$$GT$17hd77b14ef1d5220f0E"(ptr nonnull align 8 %i.a) #26
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf460c4453691c5b8E"(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 1 %2, i64 %3, ptr align 8 %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1000000000
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  store ptr %i.e, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr align 1 %2, i64 %3, ptr nonnull align 1 %i.a, ptr nonnull align 8 @17, ptr align 8 %4) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h45b3c589ff116712E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i64 %1, ptr align 8 %2) unnamed_addr #6 {
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

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17hbe0632b44233971fE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %0, i64 %i.c, i64 8, i64 8) ; 2 uses
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
define { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hed08685c27ccda50E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %0, i64 %i.c, i64 8, i64 8)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not.i, label %.noexc._crit_edge, label %bb.c

.noexc._crit_edge:                                ; preds = %.noexc
  %.sroa.33.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.g = extractvalue { i64, i64 } %i.e, 1
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.f, i64 %i.g, ptr align 8 %1) #25
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc._crit_edge, %bb.a
  %.sroa.33.0.copyload = phi i64 [ %.sroa.33.0.copyload.pre, %.noexc._crit_edge ], [ %i.c, %bb.a ]
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8
  %2 = inttoptr i64 %.sroa.22.0.copyload to ptr
  %i.h = insertvalue { ptr, i64 } poison, ptr %2, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.33.0.copyload, 1
  ret { ptr, i64 } %i.i

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr nonnull align 8 %0, i64 8, i64 8)
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE"(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf9dcc61f581d10e6E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %0, ptr align 8 %2)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf9dcc61f581d10e6E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf9dcc61f581d10e6E.exit": ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store i64 %1, ptr %i.g, align 8
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf9dcc61f581d10e6E"(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %0, ptr align 8 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store i64 %1, ptr %i.g, align 8
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret ptr %i.g
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hdf6f3792cb1bc5ecE"(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 8) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775807
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.c, i64 %i.d, ptr align 8 %1) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17h43521f0c87f793a0E"(i64 %0, ptr %1, i64 %2) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %2, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN5tower4util3rng18HasherRng$LT$H$GT$11with_hasher17h4fd65e4a0b541919E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  store i64 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5tower4util3rng9HasherRng3new17h00ae5e165d3c8053E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h20b1683c80098471E"(ptr nonnull align 8 @46) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN5tower4util8optional5error4None3new17h56b175cc1575e1b7E() unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5tower5retry6budget10tps_budget9TpsBudget3new17h89d875e3cc15e9c4E(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0, i64 %1, i32 %2, i32 %3, float %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 24 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  store i64 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 %2, ptr %i.e, align 8
  store i64 1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.f, align 8
  %i.g = call zeroext i1 @_ZN4core3cmp10PartialOrd2ge17he2840c1c4c933ac6E(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @18, i64 47, ptr nonnull align 8 @20) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8              ; 3 uses
  %i.i = icmp eq i64 %i.h, 60
  br i1 %i.i, label %.split, label %_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E.exit

.split:                                           ; preds = %bb.c
  %i.j = load i32, ptr %i.e, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E.exit: ; preds = %bb.c
  %i.l = icmp ult i64 %i.h, 61
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split, %_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E.exit
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @21, i64 48, ptr nonnull align 8 @22) #25
  unreachable

bb.e:                                             ; preds = %.split, %_ZN4core3cmp10PartialOrd2le17h2245528a9c5d9e76E.exit
  %i.m = fcmp ult float %4, 0.000000e+00
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @23, i64 38, ptr nonnull align 8 @24) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = fcmp ugt float %4, 1.000000e+03
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @25, i64 41, ptr nonnull align 8 @26) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.o = icmp ult i32 %3, 2147483647
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @27, i64 47, ptr nonnull align 8 @28) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = fcmp oeq float %4, 0.000000e+00
  br i1 %i.p, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = fcmp ugt float %4, 1.000000e+00
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.r = fdiv float 1.000000e+03, %4
  %i.s = call i64 @llvm.fptosi.sat.i64.f32(float %i.r)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.t = fdiv float 1.000000e+00, %4
  %i.u = call i64 @llvm.fptosi.sat.i64.f32(float %i.t)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.sroa.4.0 = phi i64 [ %i.s, %bb.m ], [ %i.u, %bb.n ], [ 1, %bb.k ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 1000, %bb.m ], [ 1, %bb.n ], [ 0, %bb.k ]
  %i.v = call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc660af04fd9c42f5E"(i64 10, i64 8, i64 8, ptr nonnull align 8 @29) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0        ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  store i64 %i.w, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 11 uses
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 11 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit"

bb.p:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.af = invoke { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h3dd1014cf094095bE"(ptr nonnull align 8 %i.a, i64 %i.ad, i64 8, i64 8)
          to label %.noexc.i unwind label %bb.s   ; 2 uses

.noexc.i:                                         ; preds = %bb.q
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, -9223372036854775807
  br i1 %.not.i.i, label %.noexc._crit_edge.i, label %bb.r

.noexc._crit_edge.i:                              ; preds = %.noexc.i
  %.sroa.33.0.copyload.pre.i = load i64, ptr %i.ac, align 8
  br label %bb.u

bb.r:                                             ; preds = %.noexc.i
  %i.ah = extractvalue { i64, i64 } %i.af, 1
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.ag, i64 %i.ah, ptr nonnull align 8 @30) #25
          to label %.noexc7.i unwind label %bb.s

.noexc7.i:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h568b30ca3d6e35ecE"(ptr nonnull align 8 %i.a, i64 8, i64 8)
          to label %.thread unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.u:                                             ; preds = %.noexc._crit_edge.i, %bb.p
  %.sroa.33.0.copyload.i = phi i64 [ %.sroa.33.0.copyload.pre.i, %.noexc._crit_edge.i ], [ %i.ad, %bb.p ]
  %i.ak = extractvalue { i64, i32 } %i.dc, 1
  %i.al = extractvalue { i64, i32 } %i.dc, 0
  %i.am = zext nneg i32 %3 to i64
  %i.an = mul nuw nsw i64 %i.h, %i.am             ; 2 uses
  %i.ao = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.an, i64 %.sroa.4.0) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  %i.aq = xor i64 %.sroa.4.0, %i.an
  %i.ar = icmp sgt i64 %i.aq, -1
  %..i12 = select i1 %i.ar, i64 9223372036854775807, i64 -9223372036854775808
  %i.as = extractvalue { i64, i1 } %i.ao, 0
  %.sroa.0.0.i13 = select i1 %i.ap, i64 %..i12, i64 %i.as
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8
  %5 = inttoptr i64 %.sroa.22.0.copyload.i to ptr
  %i.at = load i64, ptr %i.d, align 8             ; 2 uses
  %i.au = load i32, ptr %i.e, align 8             ; 2 uses
  %i.av = udiv i64 %i.at, 10
  %i.aw = urem i64 %i.at, 10
  %i.ax = mul nuw nsw i64 %i.aw, 1000000000
  %i.ay = urem i32 %i.au, 10
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = or disjoint i64 %i.ax, %i.az
  %i.bb = udiv i32 %i.au, 10
  %i.bc = udiv i64 %i.ba, 10
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bb, %i.bd            ; 3 uses
  %i.bf = icmp samesign ugt i32 %i.be, 999999999  ; 2 uses
  %i.bg = add nsw i32 %i.be, -1000000000
  %.sroa.3.0.i.i.i = select i1 %i.bf, i32 %i.bg, i32 %i.be
  %i.bh = zext i1 %i.bf to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.av, %i.bh
  store i32 0, ptr %0, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %.sroa.218.0..sroa_idx, align 4
  %.sroa.319.sroa.1.0..sroa.319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.319.sroa.1.0..sroa.319.0..sroa_idx.sroa_idx, align 8
  %.sroa.319.sroa.2.0..sroa.319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.319.sroa.2.0..sroa.319.0..sroa_idx.sroa_idx, align 8
  %.sroa.319.sroa.3.0..sroa.319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ak, ptr %.sroa.319.sroa.3.0..sroa.319.0..sroa_idx.sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i13, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.33.0.copyload.i, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0.i.i.i, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.sroa.3.0.i.i.i, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.4.0, ptr %i.bp, align 8
  ret void

bb.v:                                             ; preds = %bb.ag
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.w:                                             ; preds = %bb.o
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit_crit_edge": ; preds = %bb.w
  %.pre = load ptr, ptr %i.y, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit_crit_edge", %bb.o
  %i.br = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit_crit_edge" ], [ %i.x, %bb.o ]
  store i64 0, ptr %i.br, align 8
  store i64 1, ptr %i.z, align 8
  %i.bs = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1"

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1_crit_edge": ; preds = %bb.x
  %.pre41 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit"
  %i.bu = phi i64 [ %.pre41, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1_crit_edge" ], [ %i.bs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit" ] ; 2 uses
  %i.bv = load ptr, ptr %i.y, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 0, ptr %i.bw, align 8
  store i64 2, ptr %i.z, align 8
  %i.bx = icmp eq i64 %i.bu, 2
  br i1 %i.bx, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2"

bb.y:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2_crit_edge": ; preds = %bb.y
  %.pre42 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1"
  %i.by = phi i64 [ %.pre42, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2_crit_edge" ], [ %i.bu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.1" ] ; 2 uses
  %i.bz = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 0, ptr %i.ca, align 8
  store i64 3, ptr %i.z, align 8
  %i.cb = icmp eq i64 %i.by, 3
  br i1 %i.cb, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3"

bb.z:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge": ; preds = %bb.z
  %.pre43 = load ptr, ptr %i.y, align 8
  %.pre44 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2"
  %i.cc = phi i64 [ %.pre44, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge" ], [ %i.by, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2" ] ; 2 uses
  %i.cd = phi ptr [ %.pre43, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3_crit_edge" ], [ %i.bz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.2" ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 0, ptr %i.ce, align 8
  store i64 4, ptr %i.z, align 8
  %i.cf = icmp eq i64 %i.cc, 4
  br i1 %i.cf, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4"

bb.aa:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge": ; preds = %bb.aa
  %.pre45 = load ptr, ptr %i.y, align 8
  %.pre46 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3"
  %i.cg = phi i64 [ %.pre46, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge" ], [ %i.cc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3" ] ; 2 uses
  %i.ch = phi ptr [ %.pre45, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4_crit_edge" ], [ %i.cd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.3" ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 0, ptr %i.ci, align 8
  store i64 5, ptr %i.z, align 8
  %i.cj = icmp eq i64 %i.cg, 5
  br i1 %i.cj, label %bb.ab, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5"

bb.ab:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge": ; preds = %bb.ab
  %.pre47 = load ptr, ptr %i.y, align 8
  %.pre48 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4"
  %i.ck = phi i64 [ %.pre48, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge" ], [ %i.cg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4" ] ; 2 uses
  %i.cl = phi ptr [ %.pre47, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5_crit_edge" ], [ %i.ch, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.4" ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i64 0, ptr %i.cm, align 8
  store i64 6, ptr %i.z, align 8
  %i.cn = icmp eq i64 %i.ck, 6
  br i1 %i.cn, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6"

bb.ac:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge": ; preds = %bb.ac
  %.pre49 = load ptr, ptr %i.y, align 8
  %.pre50 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5"
  %i.co = phi i64 [ %.pre50, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge" ], [ %i.ck, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5" ] ; 2 uses
  %i.cp = phi ptr [ %.pre49, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6_crit_edge" ], [ %i.cl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.5" ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store i64 0, ptr %i.cq, align 8
  store i64 7, ptr %i.z, align 8
  %i.cr = icmp eq i64 %i.co, 7
  br i1 %i.cr, label %bb.ad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7"

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge": ; preds = %bb.ad
  %.pre51 = load ptr, ptr %i.y, align 8
  %.pre52 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6"
  %i.cs = phi i64 [ %.pre52, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge" ], [ %i.co, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6" ] ; 2 uses
  %i.ct = phi ptr [ %.pre51, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7_crit_edge" ], [ %i.cp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.6" ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  store i64 0, ptr %i.cu, align 8
  store i64 8, ptr %i.z, align 8
  %i.cv = icmp eq i64 %i.cs, 8
  br i1 %i.cv, label %bb.ae, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8"

bb.ae:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge": ; preds = %bb.ae
  %.pre53 = load ptr, ptr %i.y, align 8
  %.pre54 = load i64, ptr %i.b, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7"
  %i.cw = phi i64 [ %.pre54, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge" ], [ %i.cs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7" ]
  %i.cx = phi ptr [ %.pre53, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8_crit_edge" ], [ %i.ct, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.7" ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  store i64 0, ptr %i.cy, align 8
  store i64 9, ptr %i.z, align 8
  %i.cz = icmp eq i64 %i.cw, 9
  br i1 %i.cz, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9"

bb.af:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h48b9326eb19a16b4E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 @31)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9_crit_edge" unwind label %.loopexit

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9_crit_edge": ; preds = %bb.af
  %.pre55 = load ptr, ptr %i.y, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9_crit_edge", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8"
  %i.da = phi ptr [ %.pre55, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.9_crit_edge" ], [ %i.cx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hdf0081c64cf04c2aE.exit.8" ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  store i64 0, ptr %i.db, align 8
  store i64 10, ptr %i.z, align 8
  %i.dc = invoke { i64, i32 } @_ZN5tokio4time7instant7Instant3now17h457a2db67d794c3eE()
          to label %bb.p unwind label %.loopexit.split-lp ; 2 uses

.thread:                                          ; preds = %bb.ag, %bb.s
  %.pn31 = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %lpad.phi, %bb.ag ]
  resume { ptr, i32 } %.pn31

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_0
