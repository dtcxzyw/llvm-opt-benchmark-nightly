Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_container_tests_common-6650c216428fe7c2.iceoryx2_bb_container_tests_common.e066d4e3b72ad41e-cgu.12?download=true
inline.NumInlined: 181
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12strip_suffixCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common:bb.a
bb.g:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String5rfindCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.s = icmp ult i64 %i.c, %i.g
  br i1 %i.s, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #15, !noalias !307
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.c
  store i8 0, ptr %i.t, align 1, !noalias !307
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !308
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String5rfindCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.thread

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String5rfindCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit.thread: ; preds = %.loopexit23.i, %bb.b, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String5rfindCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ false, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String5rfindCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit ], [ true, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit ], [ false, %bb.b ], [ false, %.loopexit23.i ]
  ret i1 %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String17as_bytes_with_nulCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !6
  %i.b = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = add i64 %.val2, 1
  %i.e = insertvalue { ptr, i64 } %i.b, i64 %i.d, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i1, i8 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String3popCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !317, !noundef !6 ; 2 uses
  %i.b = icmp ne i64 %.val.i, 0                   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %.val.i, -1                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !318, !noundef !6
  %i.e = add i64 %.val2.i, 1                      ; 2 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %bb.c

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i1 = load ptr, ptr %i.g, align 8, !alias.scope !318, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i1, i64 %i.c ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !318, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  store i8 0, ptr %i.h, align 1, !noalias !320
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !321
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #15, !noalias !318
  unreachable

bb.d:                                             ; preds = %bb.a, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  %.sroa.3.0 = phi i8 [ %i.i, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit ], [ undef, %bb.a ]
  %i.j = insertvalue { i1, i8 } poison, i1 %i.b, 0
  %i.k = insertvalue { i1, i8 } %i.j, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String4findCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val14 = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = icmp ult i64 %.val14, %2
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub nuw i64 %.val14, %2            ; 2 uses
  %.not = icmp eq i64 %reass.sub, -1
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val12 = load i64, ptr %i.d, align 8
  %i.e = add i64 %.val12, 1                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8
  %i.g = icmp samesign eq i64 %2, 0
  br label %bb.c

.loopexit21:                                      ; preds = %bb.e
  %exitcond.not = icmp eq i64 %.sroa.07.028, %reass.sub
  br i1 %exitcond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit21
  %.sroa.07.028 = phi i64 [ 0, %.lr.ph ], [ %i.h, %.loopexit21 ] ; 6 uses
  %i.h = add nuw i64 %.sroa.07.028, 1
  br i1 %i.g, label %.loopexit, label %.lr.ph45

.loopexit:                                        ; preds = %.loopexit21, %bb.c, %bb.d, %bb.b, %bb.a
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.07.028, %bb.d ], [ undef, %.loopexit21 ], [ %.sroa.07.028, %bb.c ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.d ], [ 0, %.loopexit21 ], [ 1, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.j

bb.d:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01544, i64 1 ; 2 uses
  %i.l = add nuw i64 %.sroa.8.043, 1
  %i.m = icmp eq ptr %i.k, %i.c
  br i1 %i.m, label %.loopexit, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.c, %bb.d
  %.sroa.0.01544 = phi ptr [ %i.k, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.sroa.8.043 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.n = add nuw i64 %.sroa.8.043, %.sroa.07.028  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.e
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph45
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !noundef !6
  %i.r = load i8, ptr %.sroa.0.01544, align 1, !noundef !6
  %.not11 = icmp eq i8 %i.q, %i.r
  br i1 %.not11, label %bb.d, label %.loopexit21

bb.f:                                             ; preds = %.lr.ph45
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.07.028, i64 %i.e)
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #15
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !324
  store i8 %1, ptr %i.a, align 1, !noalias !324
  %i.c = call noundef range(i8 0, 3) i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12insert_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !324
  ret i8 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String5clearCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !alias.scope !327
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6
  %.not = icmp eq i64 %.val1, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !noundef !6
  store i8 0, ptr %.val, align 1
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #15
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String5rfindCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16 = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = icmp ult i64 %.val16, %2
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub nuw i64 %.val16, %2
  %i.c = add i64 %reass.sub, 1                    ; 2 uses
  %.not30 = icmp eq i64 %i.c, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val14 = load i64, ptr %i.e, align 8
  %i.f = add i64 %.val14, 1                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8
  %i.h = icmp samesign eq i64 %2, 0
  br label %bb.c

.loopexit23:                                      ; preds = %bb.e
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit23
  %.sroa.01.031 = phi i64 [ %i.c, %.lr.ph ], [ %i.i, %.loopexit23 ]
  %i.i = add i64 %.sroa.01.031, -1                ; 6 uses
  br i1 %i.h, label %.loopexit, label %.lr.ph53

.loopexit:                                        ; preds = %.loopexit23, %bb.c, %bb.d, %bb.b, %bb.a
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %.loopexit23 ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.d ], [ 0, %.loopexit23 ], [ 1, %bb.c ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.k

bb.d:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01752, i64 1 ; 2 uses
  %i.m = add nuw i64 %.sroa.8.051, 1
  %i.n = icmp eq ptr %i.l, %i.d
  br i1 %i.n, label %.loopexit, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.c, %bb.d
  %.sroa.0.01752 = phi ptr [ %i.l, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.sroa.8.051 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.o = add nuw i64 %.sroa.8.051, %i.i           ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.f
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph53
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %i.r = load i8, ptr %i.q, align 1, !noundef !6
  %i.s = load i8, ptr %.sroa.0.01752, align 1, !noundef !6
  %.not13 = icmp eq i8 %i.r, %i.s
  br i1 %.not13, label %bb.d, label %.loopexit23

bb.f:                                             ; preds = %.lr.ph53
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #15
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String6as_strCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !330, !noundef !6
  %i.b = insertvalue { ptr, i64 } poison, ptr %.val.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !330, !noundef !6
  %i.d = insertvalue { ptr, i64 } %i.b, i64 %.val2.i, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String6insertCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %2, ptr %i.a, align 1
  %i.b = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12insert_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i1, i8 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val3 = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  %i.b = icmp uge i64 %.val3, %1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i64, ptr %i.d, align 8, !noundef !6
  %i.e = add i64 %.val2, 1                        ; 4 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noundef !6  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.i = add nuw i64 %1, 1                        ; 3 uses
  %.not.not = icmp ugt i64 %.val3, %1
  br i1 %.not.not, label %bb.d, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %.val3, %i.i
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %i.k = sub nuw i64 %.val3, %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %i.j, i64 %i.k, i1 false), !noalias !335
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = add i64 %.val3, -1                       ; 4 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.l
  store i8 0, ptr %i.n, align 1, !noalias !335
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !336
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #15, !noalias !335
  unreachable

bb.i:                                             ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #15
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %bb.g, %bb.c, %bb.a
  %.sroa.3.0 = phi i8 [ undef, %bb.a ], [ %i.h, %bb.c ], [ %i.h, %bb.g ]
  %i.o = insertvalue { i1, i8 } poison, i1 %i.b, 0
  %i.p = insertvalue { i1, i8 } %i.o, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String7is_fullCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = icmp eq i64 %.val, %.val1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String8as_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !6
  %i.b = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = insertvalue { ptr, i64 } %i.b, i64 %.val2, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String8as_c_strCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !6
  ret ptr %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String8is_emptyCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = icmp eq i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String8truncateCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = icmp ult i64 %.val, %1
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.d = icmp ult i64 %1, %.val4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.val4, 1                        ; 2 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.e
  store i64 %1, ptr %i.a, align 8, !alias.scope !339
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.g, align 8, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 %1
  store i8 0, ptr %i.h, align 1
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #15
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6
end_hunk_0
