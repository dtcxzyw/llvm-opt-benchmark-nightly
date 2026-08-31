Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.1?download=true
inline.NumInlined: 46
begin_hunk_0_@_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCsaL1QbXo9JQH_3std4path4PathE8push_mutCsiHivYpkJ4Hu_2cc:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCsaL1QbXo9JQH_3std4path4PathE8grow_oneCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 3 uses
  store ptr %1, ptr %i.g, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret ptr %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE4pushCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #26
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsiHivYpkJ4Hu_2cc.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store ptr %1, ptr %i.g, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 3 uses
  store ptr %1, ptr %i.g, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret ptr %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EE4pushCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EE8push_mutCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBN_EE8grow_oneBT_(ptr nonnull align 8 %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EE8push_mutCsiHivYpkJ4Hu_2cc.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBC_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %1) #22
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EE8push_mutCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EE8push_mutCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBN_EE8grow_oneBT_(ptr nonnull align 8 %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.b ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBC_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %1) #22
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEE3lenCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE7reserveCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 16)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE8is_emptyCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE16into_boxed_sliceCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0, i64 %i.c, i64 8, i64 16)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.311.0.copyload = phi i64 [ %.sroa.311.0.copyload.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.210.0.copyload, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.311.0.copyload, 1
  ret { ptr, i64 } %i.g

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #22
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.sroa.311.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.j = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.i, i64 %i.j) #24
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE7reserveCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 16)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE7reserveCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 24)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE8is_emptyCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCsaL1QbXo9JQH_3std4path4PathE5clearCsiHivYpkJ4Hu_2cc(ptr nofree writeonly align 8 captures(none) initializes((16, 24)) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCsaL1QbXo9JQH_3std4path4PathE8is_emptyCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 16)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBF_EE7reserveCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 48)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBF_EE8is_emptyCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0, i64 %i.c, i64 1, i64 1)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.311.0.copyload = phi i64 [ %.sroa.311.0.copyload.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.210.0.copyload, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.311.0.copyload, 1
  ret { ptr, i64 } %i.g

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %0) #22
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.sroa.311.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.j = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.i, i64 %i.j) #24
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE3lenCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCsiHivYpkJ4Hu_2cc(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1H_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB34_5Build8env_tool0EE11spec_extendB34_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1t_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB2Q_5Build8env_tool0EEB2Q_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1H_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB34_5Build8env_tools_0EE11spec_extendB34_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1t_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB2Q_5Build8env_tools_0EEB2Q_(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1H_3str4iter20SplitAsciiWhitespaceNvYeNtBT_8ToString9to_stringEE11spec_extendCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1t_3str4iter20SplitAsciiWhitespaceNvYeNtBI_8ToString9to_stringEECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtCs93MrfdkTAtF_5shlex5ShlexE11spec_extendCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtCs93MrfdkTAtF_5shlex5ShlexECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcEE11spec_extendCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %1) #21 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not4.i = icmp eq ptr %i.c, null
  br i1 %.not4.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcEECsiHivYpkJ4Hu_2cc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsiHivYpkJ4Hu_2cc.exit.i, %.lr.ph.i
  %.pn.i = phi { ptr, i64 } [ %i.b, %.lr.ph.i ], [ %i.u, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsiHivYpkJ4Hu_2cc.exit.i ]
  %i.f = phi ptr [ %i.c, %.lr.ph.i ], [ %i.v, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsiHivYpkJ4Hu_2cc.exit.i ]
  %i.g = extractvalue { ptr, i64 } %.pn.i, 1
  %i.h = load i64, ptr %i.d, align 8              ; 3 uses
  %i.i = load i64, ptr %0, align 8
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsiHivYpkJ4Hu_2cc.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_RNvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #21
  %i.k = load i64, ptr %i.a, align 8
  %i.l = call i64 @llvm.uadd.sat.i64(i64 %i.k, i64 1) ; 2 uses
  %i.m = load i64, ptr %i.d, align 8              ; 2 uses
  %i.n = load i64, ptr %0, align 8
  %i.o = sub i64 %i.n, %i.m
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %bb.d, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsiHivYpkJ4Hu_2cc.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %i.m, i64 %i.l, i64 8, i64 16)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsiHivYpkJ4Hu_2cc.exit.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsiHivYpkJ4Hu_2cc.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.h ; 2 uses
  store ptr %i.f, ptr %i.r, align 8, !captures !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.g, ptr %i.s, align 8
  %i.t = add i64 %i.h, 1
  store i64 %i.t, ptr %i.d, align 8
  %i.u = call { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %1) #21 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcEECsiHivYpkJ4Hu_2cc.exit, label %bb.b

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcEECsiHivYpkJ4Hu_2cc.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCsiHivYpkJ4Hu_2cc.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2l_5chain5ChainINtNtB2l_6cloned6ClonedINtNtNtB2p_5slice4iter4IterRB1c_EEIB2h_IB3N_NtNtB6_6string6StringEINvMsj_B1e_B1c_3newB4u_EEENvYB4d_INtNtB2p_7convert4IntoBU_E4intoEE9from_iterCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2B_5chain5ChainINtNtB2B_6cloned6ClonedINtNtNtB2F_5slice4iter4IterRB1l_EEIB2x_IB43_NtNtB8_6string6StringEINvMsj_B1n_B1l_3newB4K_EEENvYB4t_INtNtB2F_7convert4IntoB13_E4intoEE9from_iterCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1M_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB39_5Build8env_tool0EE9from_iterB39_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB20_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB3n_5Build8env_tool0EE9from_iterB3n_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB1M_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB39_5Build8env_tools_0EE9from_iterB39_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB20_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB3n_5Build8env_tools_0EE9from_iterB3n_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecReEINtB2_12SpecFromIterBU_INtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcEE9from_iterCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcEE9from_iterCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBV_EEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterBU_ENCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB3t_4Tool20from_find_msvc_tools0EE9from_iterB3v_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB14_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2v_5slice4iter4IterB13_ENCNvMNtCsiHivYpkJ4Hu_2cc4toolNtB3L_4Tool20from_find_msvc_tools0EE9from_iterB3N_(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtB20_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB3n_5Build8env_tool0EE9from_iterB3n_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB1D_5Build8env_tool0ENtNtNtB9_6traits8iterator8Iterator4nextB1D_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr align 8 %1) #21
  %i.f = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter15SplitWhitespaceNCNvMs4_CsiHivYpkJ4Hu_2ccNtB1D_5Build8env_tool0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc
define void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  tail call void @_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %i.c, i64 %i.d) #21
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  tail call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8 %0, ptr %i.c, i64 %i.d) #21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtBM_5range7RangeTojEE5indexCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp ugt i64 %1, %i.b
  br i1 %.not.i.i, label %bb.b, label %_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 0, i64 %1, i64 %i.b, ptr align 8 %2) #25
  unreachable

_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %1, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutINtNtBM_5range9RangeFromjEE9index_mutCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, i64 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE9index_mutCsiHivYpkJ4Hu_2cc(i64 %1, ptr %i.b, i64 %i.d, ptr align 8 %2) #21
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_5SplithNCNvNtCsiHivYpkJ4Hu_2cc15command_helpers10run_output0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.i = icmp samesign eq i64 %i.f, 0
  br i1 %i.i, label %.loopexit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.l, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.02.06.i = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.k = tail call zeroext i1 @_RNCNvNtCsiHivYpkJ4Hu_2cc15command_helpers10run_output0B5_(ptr nonnull %i.h, ptr %i.j) #21
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.m = add nuw i64 %.sroa.02.06.i, 1
  %i.n = icmp eq ptr %i.l, %i.g
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = load i64, ptr %i.e, align 8
  %i.q = add i64 %.sroa.02.06.i, 1                ; 2 uses
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.s, ptr %0, align 8, !captures !4
  store i64 %i.r, ptr %i.e, align 8
  br label %bb.e

.loopexit:                                        ; preds = %bb.c
  %.pre = load i8, ptr %i.a, align 8
  %i.t = trunc nuw i8 %.pre to i1
  br i1 %i.t, label %bb.e, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.b, %.loopexit
  store i8 1, ptr %i.a, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = load i64, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.a, %bb.d, %.loopexit.thread
  %.sroa.5.0 = phi i64 [ %i.v, %.loopexit.thread ], [ %.sroa.02.06.i, %bb.d ], [ undef, %bb.a ], [ undef, %.loopexit ]
  %.sroa.0.0 = phi ptr [ %i.u, %.loopexit.thread ], [ %i.o, %bb.d ], [ null, %bb.a ], [ null, %.loopexit ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_5SplithNtNtB9_3str17IsAsciiWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.i = icmp samesign eq i64 %i.f, 0
  br i1 %i.i, label %.loopexit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.l, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.02.06.i = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.k = tail call zeroext i1 @_RNvXsj_NtCs3oUPovFnLWP_4core3strNtB5_17IsAsciiWhitespaceINtNtNtB7_3ops8function5FnMutTRhEE8call_mutCsiHivYpkJ4Hu_2cc(ptr nonnull %i.h, ptr %i.j) #21
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.m = add nuw i64 %.sroa.02.06.i, 1
  %i.n = icmp eq ptr %i.l, %i.g
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = load i64, ptr %i.e, align 8
  %i.q = add i64 %.sroa.02.06.i, 1                ; 2 uses
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.s, ptr %0, align 8, !captures !4
  store i64 %i.r, ptr %i.e, align 8
  br label %bb.e

.loopexit:                                        ; preds = %bb.c
  %.pre = load i8, ptr %i.a, align 8
  %i.t = trunc nuw i8 %.pre to i1
  br i1 %i.t, label %bb.e, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.b, %.loopexit
  store i8 1, ptr %i.a, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = load i64, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.a, %bb.d, %.loopexit.thread
  %.sroa.5.0 = phi i64 [ %i.v, %.loopexit.thread ], [ %.sroa.02.06.i, %bb.d ], [ undef, %bb.a ], [ undef, %.loopexit ]
  %.sroa.0.0 = phi ptr [ %i.u, %.loopexit.thread ], [ %i.o, %bb.d ], [ null, %bb.a ], [ null, %.loopexit ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.x
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_5SplithNtNtB9_3str17IsAsciiWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink1 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sink = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsg_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsiHivYpkJ4Hu_2cc6ObjectENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBH_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8 ; 3 uses
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.35.0.copyload = load i64, ptr %.sroa.35.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw [48 x i8], ptr %.sroa.24.0.copyload, i64 %.sroa.35.0.copyload
  store ptr %.sroa.24.0.copyload, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.03.0.copyload, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.24.0.copyload, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsg_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8 ; 3 uses
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.35.0.copyload = load i64, ptr %.sroa.35.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %.sroa.24.0.copyload, i64 %.sroa.35.0.copyload
  store ptr %.sroa.24.0.copyload, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.03.0.copyload, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.24.0.copyload, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXsh_NtCs1xwejQucwHj_5alloc3vecRINtB5_3VecINtNtB7_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXsh_NtCs1xwejQucwHj_5alloc3vecRINtB5_3VecNtNtB7_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXsh_NtCs1xwejQucwHj_5alloc3vecRINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXsh_NtCs1xwejQucwHj_5alloc3vecRINtB5_3VecTINtNtB7_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEBH_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, ptr } @_RNvXsh_NtCs1xwejQucwHj_5alloc3vecRINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBH_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsm_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_14SplitInclusivehNCNvMs_NtCsiHivYpkJ4Hu_2cc15command_helpersNtB17_15StderrForwarder17forward_available0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB19_(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.i = icmp samesign eq i64 %i.f, 0
  br i1 %i.i, label %.loopexit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.l, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.02.06.i = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = tail call zeroext i1 @_RNCNvMs_NtCsiHivYpkJ4Hu_2cc15command_helpersNtB6_15StderrForwarder17forward_available0B8_(ptr nonnull %i.h, ptr %i.j) #21
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.m = add nuw i64 %.sroa.02.06.i, 1
  %i.n = icmp eq ptr %i.l, %i.g
  br i1 %i.n, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i64, ptr %i.e, align 8             ; 2 uses
  br label %.loopexit.thread

.loopexit:                                        ; preds = %.lr.ph.i
  %i.o = add i64 %.sroa.02.06.i, 1                ; 3 uses
  %.pre21 = load i64, ptr %i.e, align 8           ; 3 uses
  %i.p = icmp eq i64 %i.o, %.pre21
  br i1 %i.p, label %.loopexit.thread, label %bb.d

.loopexit.thread:                                 ; preds = %bb.b, %.loopexit.loopexit, %.loopexit
  %.sroa.05.025 = phi i64 [ %i.o, %.loopexit ], [ 0, %bb.b ], [ %.pre, %.loopexit.loopexit ]
  %i.q = phi i64 [ %.pre21, %.loopexit ], [ 0, %bb.b ], [ %.pre, %.loopexit.loopexit ]
  store i8 1, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %.loopexit.thread
  %.sroa.05.024 = phi i64 [ %i.o, %.loopexit ], [ %.sroa.05.025, %.loopexit.thread ] ; 5 uses
  %i.r = phi i64 [ %.pre21, %.loopexit ], [ %i.q, %.loopexit.thread ] ; 3 uses
  %.not = icmp ugt i64 %.sroa.05.024, %i.r
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 0, i64 %.sroa.05.024, i64 %i.r, ptr nonnull align 8 @6) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = sub nuw i64 %i.r, %.sroa.05.024
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.05.024
  store ptr %i.u, ptr %0, align 8, !captures !4
  store i64 %i.t, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.sroa.3.0 = phi i64 [ %.sroa.05.024, %bb.f ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.s, %bb.f ], [ null, %bb.a ]
  %i.v = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.w = insertvalue { ptr, i64 } %i.v, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEECsiHivYpkJ4Hu_2cc(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECsiHivYpkJ4Hu_2cc(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEECsiHivYpkJ4Hu_2cc(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsiHivYpkJ4Hu_2cc6ObjectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBH_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsiHivYpkJ4Hu_2cc6ObjectEBE_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsiHivYpkJ4Hu_2cc(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret void
end_hunk_1
