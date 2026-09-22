Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/bindgen-65c77e4a6229ce89.bindgen.295e8af88b7da52f-cgu.05?download=true
inline.NumInlined: 487
inline.NumDeleted: 81
begin_hunk_0_@"_ZN62_$LT$bindgen..time..Timer$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb1f6ecabf960591E":bb.a
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.y

_ZN7bindgen4time5Timer13print_elapsed17hb058a3552caee824E.exit: ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h1aa0b02fb25d100dE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h25bf56cc93239761E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h50d5db0831f15ff5E"(ptr nofree writeonly sret([296 x i8]) align 8 captures(none) initializes((0, 296)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i64 296, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h88b608486475f2e1E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he2a5660abc67f8d5E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfd755eb4d2125484E"(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 64)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h37d25fc1929e56d3E"(ptr nofree readnone align 1 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr %1, i64 %3, i64 %2) #32
  br label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h6d36c755be33f240E"(ptr nofree readnone align 1 captures(none) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %5, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, %4
  br i1 %i.c, label %bb.g, label %_ZN5alloc5alloc6Global10alloc_impl17h2db73f94efbc958eE.exit

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.d = inttoptr i64 %4 to ptr
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr %1, i64 %3, i64 %2) #32
  br label %bb.d

bb.f:                                             ; preds = %bb.g, %bb.h, %bb.i, %_ZN5alloc5alloc6Global10alloc_impl17h2db73f94efbc958eE.exit, %bb.d
  %.sroa.018.0 = phi ptr [ %i.d, %bb.d ], [ %i.g, %bb.h ], [ %i.i, %bb.g ], [ null, %_ZN5alloc5alloc6Global10alloc_impl17h2db73f94efbc958eE.exit ], [ %i.g, %bb.i ]
  %.sroa.6.0 = phi i64 [ 0, %bb.d ], [ %5, %bb.h ], [ %5, %bb.g ], [ undef, %_ZN5alloc5alloc6Global10alloc_impl17h2db73f94efbc958eE.exit ], [ %5, %bb.i ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.018.0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %i.f

_ZN5alloc5alloc6Global10alloc_impl17h2db73f94efbc958eE.exit: ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.g = tail call ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 %5, i64 %4) #32 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.i = tail call ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr %1, i64 %3, i64 %2, i64 %5) #32
  br label %bb.f

bb.h:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h2db73f94efbc958eE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %1, i64 %5, i1 false)
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr %1, i64 %3, i64 %2) #32
  br label %bb.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hbc4b4d3cb308d00eE"(ptr nofree readnone align 1 captures(none) %0, i64 %1, i64 %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  br label %_ZN5alloc5alloc6Global10alloc_impl17h2db73f94efbc958eE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.c = tail call ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 %2, i64 %1) #32
  br label %_ZN5alloc5alloc6Global10alloc_impl17h2db73f94efbc958eE.exit

_ZN5alloc5alloc6Global10alloc_impl17h2db73f94efbc958eE.exit: ; preds = %bb.b, %bb.c
  %.sroa.07.0.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.07.0.i, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %2, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..default..Default$GT$7default17hb2138fbd67548070E"() unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN63_$LT$bindgen..clang..ClangToken$u20$as$u20$core..fmt..Debug$GT$3fmt17hf0867f4ded8cb076E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr align 8 %1, ptr nonnull align 1 @60, i64 10, ptr nonnull align 1 @61, i64 8, ptr align 1 %0, ptr nonnull align 8 @62, ptr nonnull align 1 @63, i64 6, ptr nonnull align 1 %i.b, ptr nonnull align 8 @64, ptr nonnull align 1 @65, i64 4, ptr nonnull align 1 %i.a, ptr nonnull align 8 @66)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN63_$LT$bindgen..clang..Cursor$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8689cdab0698513aE"(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = call i32 @_ZN9clang_sys18clang_equalCursors17h99e1ade066909b20E(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.d = icmp eq i32 %i.c, 1
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN63_$LT$bindgen..clang..Index$u20$as$u20$core..ops..drop..Drop$GT$4drop17h847bb0f4dbc3745cE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_ZN9clang_sys18clang_disposeIndex17hd9958b03a0bf6e7fE(ptr %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN63_$LT$bindgen..clang..TargetInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hfd77153bd95e16bfE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr align 8 %1, ptr nonnull align 1 @67, i64 10, ptr nonnull align 1 @68, i64 6, ptr align 1 %0, ptr nonnull align 8 @69, ptr nonnull align 1 @70, i64 13, ptr nonnull align 1 %i.b, ptr nonnull align 8 @71, ptr nonnull align 1 @72, i64 3, ptr nonnull align 1 %i.a, ptr nonnull align 8 @73)
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN64_$LT$bindgen..clang..ABIKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98692f1a74892f63E"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %2 = xor i8 %i.b, %i.a
  %3 = and i8 %2, 1
  %i.c = icmp eq i8 %3, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN64_$LT$bindgen..clang..UnsavedFile$u20$as$u20$core..fmt..Debug$GT$3fmt17hd003b6fdbff3c265E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4core3fmt2rt8Argument9new_debug17haa17b7a9e212ce4fE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr align 8 %0)
  call void @_ZN4core3fmt2rt8Argument9new_debug17haa17b7a9e212ce4fE(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h0ed4cc7ed7f6fa7fE"(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 @76, ptr nonnull align 8 %i.c)
  %i.g = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17hdea032126870a48bE(ptr align 8 %1, ptr nonnull align 8 %i.d)
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc55b825ab932be2aE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr align 8 %1, ptr nonnull align 1 @79, i64 13, ptr nonnull align 1 @80, i64 5, ptr align 1 %0, ptr nonnull align 8 @77, ptr nonnull align 1 @81, i64 5, ptr nonnull align 1 %i.a, ptr nonnull align 8 @78)
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17he8a15547cc913f1fE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN67_$LT$bindgen..clang..RawTokens$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8ed84af37dcd147E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hba7be8ef70d7d906E"(ptr %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  tail call void @_ZN9clang_sys19clang_disposeTokens17h9d05a3faca76ea76E(ptr %i.e, ptr %i.f, i32 %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN67_$LT$bindgen..clang..SourceLocation$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d5677006eb317c6E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument11new_display17hb24f71a053c9a709E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hbf7a982ee1b2372bE"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 @89, ptr nonnull align 8 %i.b)
  %i.e = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17hdea032126870a48bE(ptr align 8 %1, ptr nonnull align 8 %i.c)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN68_$LT$bindgen..clang..ClangToken$u20$as$u20$core..ops..drop..Drop$GT$4drop17h815e88b0ee0087e7E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  tail call void @_ZN9clang_sys19clang_disposeString17h5a982080a535cbf6E(ptr %i.a, i32 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN68_$LT$bindgen..clang..Diagnostic$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a10327e216547d3E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_ZN9clang_sys23clang_disposeDiagnostic17h549f1da83daf93f2E(ptr %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN68_$LT$bindgen..clang..EvalResult$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdfc421f6ae5178ceE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_ZN9clang_sys24clang_EvalResult_dispose17h8afc7c782d469656E(ptr %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN68_$LT$bindgen..clang..TranslationUnit$u20$as$u20$core..fmt..Debug$GT$3fmt17h4f9b47b09af07914E"(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17hc5b7dbd5e09b6b2dE"(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 @91)
  %i.b = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17hdea032126870a48bE(ptr align 8 %1, ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN69_$LT$bindgen..clang..SourceLocation$u20$as$u20$core..fmt..Display$GT$3fmt17h8be93ec816c56293E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 2 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr null, ptr %i.f, align 8
  store i32 0, ptr %i.e, align 4
  store i32 0, ptr %i.d, align 4
  store i32 0, ptr %i.c, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @_ZN9clang_sys21clang_getFileLocation17hcea5caec50859d64E(ptr nonnull align 8 %i.b, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.c)
  %i.p = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.q = load i32, ptr %i.e, align 4
  %i.r = zext i32 %i.q to i64
  %i.s = load i32, ptr %i.d, align 4
  %i.t = zext i32 %i.s to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.r, ptr %i.o, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h72a9bae1d5dd1647E"(ptr %i.p)
  br i1 %i.u, label %_ZN7bindgen5clang4File4name17h81870f17b23cc065E.exit.thread, label %_ZN7bindgen5clang4File4name17h81870f17b23cc065E.exit

_ZN7bindgen5clang4File4name17h81870f17b23cc065E.exit: ; preds = %bb.a
  %i.v = call { ptr, i32 } @_ZN9clang_sys17clang_getFileName17h31461f136135d2d9E(ptr %i.p) ; 2 uses
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = extractvalue { ptr, i32 } %i.v, 1
  call fastcc void @_ZN7bindgen5clang20cxstring_into_string17hd146c5530023fe16E(ptr noalias nonnull align 8 %i.a, ptr %i.w, i32 %i.x)
  %.sroa.06.0.copyload7 = load i64, ptr %i.a, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.06.0.copyload7, -9223372036854775808
  br i1 %.not, label %_ZN7bindgen5clang4File4name17h81870f17b23cc065E.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN7bindgen5clang4File4name17h81870f17b23cc065E.exit
  store i64 %.sroa.06.0.copyload7, ptr %i.l, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h10fe4c82e518c0bcE(ptr nonnull sret([16 x i8]) align 8 %i.i, ptr nonnull align 8 %i.l)
          to label %bb.d unwind label %bb.c

_ZN7bindgen5clang4File4name17h81870f17b23cc065E.exit.thread: ; preds = %bb.a, %_ZN7bindgen5clang4File4name17h81870f17b23cc065E.exit
  %i.y = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr nonnull align 1 @94, i64 19, ptr align 8 %1)
  br label %bb.i

bb.c:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.l) #29
          to label %bb.k unwind label %bb.j

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h153285258d80c0edE(ptr nonnull sret([16 x i8]) align 8 %i.h, ptr nonnull align 8 %i.o)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h153285258d80c0edE(ptr nonnull sret([16 x i8]) align 8 %i.g, ptr nonnull align 8 %i.n)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h4f2ead55f3d7451dE"(ptr nonnull sret([48 x i8]) align 8 %i.k, ptr nonnull align 8 @93, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.c
end_hunk_0
