inline.NumInlined: 699
inline.NumDeleted: 264
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseKAYRfgxGTE_14event_listener5EventECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_CseKAYRfgxGTE_14event_listenerNtB5_5EventNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXs7_CseKAYRfgxGTE_14event_listenerNtB5_5EventNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !176, !noundef !3 ; 3 uses
  %i.b = add nsw i8 %i.a, -6
  %i.c = icmp samesign ugt i8 %i.a, 5
  %narrow = select i1 %i.c, i8 %i.b, i8 3
  switch i8 %narrow, label %bb.b [
    i8 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i8 1, label %bb.j
    i8 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.c [
    i8 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i8 1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i8 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.e, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.f, %bb.e ], [ %i.l, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.c, %bb.b, %bb.b, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a, %bb.a
  ret void

bb.j:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !177, !noundef !3
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, %bb.d, %bb.c, %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = ptrtoint ptr %.val2 to i64
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 1, label %bb.e
  ], !prof !178

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val2, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %.val2, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8   ; 5 uses
  %i.j = getelementptr i8, ptr %.val2, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.j, align 8, !nonnull !3, !align !71, !noundef !3 ; 5 uses
  %i.k = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.k(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !179, !invariant.load !3 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !180, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !179, !invariant.load !3 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !180, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #26
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.h
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #26
  resume { ptr, i32 } %i.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential21AzureCliTokenResponseEBK_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13ErrorResponseEBK_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body4 unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body4 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6 unwind label %bb.g

.body4:                                           ; preds = %bb.g, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.g ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtB2t_21AzureCliTokenResponseNtB1j_11Deserialize11deserialize9___VisitorEB2v_:bb.a

.thread:                                          ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, %bb.ao, %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.09.0588 = phi i64 [ %i.ex, %bb.ao ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ -9223372036854775808, %bb.aq ], [ -9223372036854775808, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread ]
  %.sroa.10.0587 = phi ptr [ %i.fa, %bb.ao ], [ %i.fc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %bb.aq ], [ %i.fa, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.at

bb.as:                                            ; preds = %bb.ap
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ap
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i, i64 noundef 40, i64 noundef 8) #26
  br label %.thread

bb.at:                                            ; preds = %.thread97, %.thread
  %.sroa.10.1 = phi ptr [ %.sroa.10.0587, %.thread ], [ %.sroa.10.2102, %.thread97 ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.0588, %.thread ], [ %.sroa.09.2103, %.thread97 ] ; 2 uses
  %i.ff = icmp eq i64 %.sroa.09.1, -9223372036854775808
  br i1 %i.ff, label %bb.gm, label %bb.gn, !prof !4

bb.au:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 24, ptr %i.bd, align 8
  %i.fg = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.am

bb.av:                                            ; preds = %bb.f
  %i.fh = add i64 %i.bo, 1                        ; 3 uses
  store i64 %i.fh, ptr %i.bi, align 8, !alias.scope !713
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !719
  store i64 -9223372036854775808, ptr %i.ao, align 8, !noalias !719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !719
  store i64 -9223372036854775808, ptr %i.an, align 8, !noalias !719
  %i.fi = icmp ult i64 %i.fh, %i.bk
  br i1 %i.fi, label %.lr.ph.i.i.i.i.lr.ph.i, label %.loopexit22.i.i.i.i

.lr.ph.i.i.i.i.lr.ph.i:                           ; preds = %bb.av
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.696.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.644.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %.sroa.747.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %.sroa.2104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.592.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.693.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.622.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %.lr.ph.i.i.i.i.lr.ph.i
  %.promoted.i.i.i.i442.i = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.lr.ph.i ], [ %.promoted.i.i.i.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  %i.fm = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.lr.ph.i ], [ %i.od, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ] ; 3 uses
  %.sroa.027.0441.i = phi i32 [ 0, %.lr.ph.i.i.i.i.lr.ph.i ], [ %.sroa.027.1.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ] ; 7 uses
  %.sroa.6.0440.i = phi i1 [ true, %.lr.ph.i.i.i.i.lr.ph.i ], [ false, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.fn = load ptr, ptr %i.bm, align 8, !alias.scope !724, !noalias !729, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i
  %i.fo = phi i64 [ %.promoted.i.i.i.i442.i, %.lr.ph.i.i.i.i.i ], [ %i.fr, %bb.ax ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !noalias !744, !noundef !3 ; 3 uses
  switch i8 %i.fq, label %bb.ay [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 125, label %bb.br
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.fr = add i64 %i.fo, 1                        ; 3 uses
  store i64 %i.fr, ptr %i.bi, align 8, !alias.scope !745, !noalias !748
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fr, %i.fm
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit22.i.i.i.i, label %bb.aw

.loopexit22.i.i.i.i:                              ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.ax, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !749
  store i64 3, ptr %i.ag, align 8, !noalias !749
  %i.fs = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag)
          to label %.noexc.i47 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !750

.noexc.i47:                                       ; preds = %.loopexit22.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !749
  br label %.loopexit234.i

bb.ay:                                            ; preds = %bb.aw
  br i1 %.sroa.6.0440.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ft = icmp eq i8 %i.fq, 44
  br i1 %i.ft, label %bb.bb, label %bb.bd, !prof !452

bb.ba:                                            ; preds = %bb.ay
  %i.fu = icmp eq i8 %i.fq, 34
  br i1 %i.fu, label %.loopexit.i.i.i, label %bb.bg, !prof !452

bb.bb:                                            ; preds = %bb.az
  %i.fv = add i64 %i.fo, 1                        ; 3 uses
  store i64 %i.fv, ptr %i.bi, align 8, !alias.scope !751, !noalias !754
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.fw = icmp ult i64 %i.fv, %i.fm
  br i1 %i.fw, label %.lr.ph.i7.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i7.i.i.i.i:                                ; preds = %bb.bb, %bb.bc
  %i.fx = phi i64 [ %i.ga, %bb.bc ], [ %i.fv, %bb.bb ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !noalias !758, !noundef !3
  switch i8 %i.fz, label %bb.be [
    i8 32, label %bb.bc
    i8 10, label %bb.bc
    i8 9, label %bb.bc
    i8 13, label %bb.bc
    i8 34, label %.loopexit.i.i.i
    i8 125, label %bb.bf
  ], !prof !528

bb.bc:                                            ; preds = %.lr.ph.i7.i.i.i.i, %.lr.ph.i7.i.i.i.i, %.lr.ph.i7.i.i.i.i, %.lr.ph.i7.i.i.i.i
  %i.ga = add i64 %i.fx, 1                        ; 3 uses
  store i64 %i.ga, ptr %i.bi, align 8, !alias.scope !766, !noalias !769
  %exitcond.not.i8.i.i.i.i = icmp eq i64 %i.ga, %i.fm
  br i1 %exitcond.not.i8.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i7.i.i.i.i

bb.bd:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !749
  store i64 8, ptr %i.ab, align 8, !noalias !749
  %i.gb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab)
          to label %.noexc123.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !750

.noexc123.i:                                      ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !749
  br label %.loopexit234.i

.loopexit.i.i.i.i:                                ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !749
  store i64 5, ptr %i.ac, align 8, !noalias !749
  %i.gc = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac)
          to label %.noexc124.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !750

.noexc124.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !749
  br label %.loopexit234.i

bb.be:                                            ; preds = %.lr.ph.i7.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !749
  store i64 17, ptr %i.ad, align 8, !noalias !749
  %i.gd = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad)
          to label %.noexc125.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !750

.noexc125.i:                                      ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !749
  br label %.loopexit234.i

bb.bf:                                            ; preds = %.lr.ph.i7.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !749
  store i64 21, ptr %i.ae, align 8, !noalias !749
  %i.ge = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae)
          to label %.noexc126.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !750

.noexc126.i:                                      ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !749
  br label %.loopexit234.i

bb.bg:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !749
  store i64 17, ptr %i.af, align 8, !noalias !749
  %i.gf = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af)
          to label %.noexc127.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !750

.noexc127.i:                                      ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !749
  br label %.loopexit234.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i7.i.i.i.i, %bb.ba
  %i.gg = phi i64 [ %i.fo, %bb.ba ], [ %i.fx, %.lr.ph.i7.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.bi, align 8, !alias.scope !782, !noalias !785
  store i64 0, ptr %i.fj, align 8, !alias.scope !790, !noalias !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !791
  invoke void @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc128.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !750

.noexc128.i:                                      ; preds = %.loopexit.i.i.i
  %i.gi = load i64, ptr %i.aa, align 8, !range !601, !noalias !791, !noundef !3 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 2
  %i.gk = load ptr, ptr %i.fk, align 8, !noalias !791, !nonnull !3, !noundef !3 ; 13 uses
  br i1 %i.gj, label %bb.bq, label %bb.bh

bb.bh:                                            ; preds = %.noexc128.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !791 ; 2 uses
  %i.gl = trunc nuw i64 %i.gi to i1
  br i1 %i.gl, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bv [
    i64 11, label %bb.bj
    i64 9, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.gm = load i64, ptr %i.gk, align 1
  %i.gn = xor i64 %i.gm, 8022163775713141601
  %i.go = getelementptr i8, ptr %i.gk, i64 3
  %i.gp = load i64, ptr %i.go, align 1
  %i.gq = xor i64 %i.gp, 7954882442722243429
  %i.gr = or i64 %i.gn, %i.gq
  %i.gs = icmp ne i64 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.bs, label %bb.bv

bb.bk:                                            ; preds = %bb.bi
  %i.gv = load i64, ptr %i.gk, align 1
  %i.gw = xor i64 %i.gv, 5725031093387688037
  %i.gx = getelementptr i8, ptr %i.gk, i64 8
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = zext i8 %i.gy to i64
  %i.ha = xor i64 %i.gz, 110
  %i.hb = or i64 %i.gw, %i.ha
  %i.hc = icmp ne i64 %i.hb, 0
  %i.hd = zext i1 %i.hc to i32
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.bt, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hf = load i64, ptr %i.gk, align 1
  %i.hg = xor i64 %i.hf, 8104601837554593652
  %i.hh = getelementptr i8, ptr %i.gk, i64 8
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = zext i8 %i.hi to i64
  %i.hk = xor i64 %i.hj, 101
  %i.hl = or i64 %i.hg, %i.hk
  %i.hm = icmp ne i64 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.bu, label %bb.bv

bb.bm:                                            ; preds = %bb.bh
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bv [
    i64 11, label %bb.bn
    i64 9, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.hp = load i64, ptr %i.gk, align 1
  %i.hq = xor i64 %i.hp, 8022163775713141601
  %i.hr = getelementptr i8, ptr %i.gk, i64 3
  %i.hs = load i64, ptr %i.hr, align 1
  %i.ht = xor i64 %i.hs, 7954882442722243429
  %i.hu = or i64 %i.hq, %i.ht
  %i.hv = icmp ne i64 %i.hu, 0
  %i.hw = zext i1 %i.hv to i32
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.bs, label %bb.bv

bb.bo:                                            ; preds = %bb.bm
  %i.hy = load i64, ptr %i.gk, align 1
  %i.hz = xor i64 %i.hy, 5725031093387688037
  %i.ia = getelementptr i8, ptr %i.gk, i64 8
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = zext i8 %i.ib to i64
  %i.id = xor i64 %i.ic, 110
  %i.ie = or i64 %i.hz, %i.id
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = zext i1 %i.if to i32
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ii = load i64, ptr %i.gk, align 1
  %i.ij = xor i64 %i.ii, 8104601837554593652
  %i.ik = getelementptr i8, ptr %i.gk, i64 8
  %i.il = load i8, ptr %i.ik, align 1
  %i.im = zext i8 %i.il to i64
  %i.in = xor i64 %i.im, 101
  %i.io = or i64 %i.ij, %i.in
  %i.ip = icmp ne i64 %i.io, 0
  %i.iq = zext i1 %i.ip to i32
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.bu, label %bb.bv

bb.bq:                                            ; preds = %.noexc128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !791
  br label %.loopexit234.i

.body187.i:                                       ; preds = %bb.fm, %bb.fk, %.body.i, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i50
  %.sroa.089.1.ph.i = phi i8 [ %.sroa.089.4.i, %bb.fk ], [ 1, %.body.i ], [ %.sroa.089.4.i, %bb.fm ], [ 1, %.loopexit.i50 ], [ 1, %.loopexit.split-lp.loopexit.i ], [ %.sroa.089.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.pn.ph.i = phi { ptr, i32 } [ %i.pr, %bb.fk ], [ %eh.lpad-body.i, %.body.i ], [ %i.ps, %bb.fm ], [ %lpad.loopexit.i, %.loopexit.i50 ], [ %lpad.loopexit242.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp243.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.an, align 8, !noalias !719
  %.not114.i = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %.not114.i, label %.body192.i, label %bb.gc

.loopexit.i50:                                    ; preds = %bb.ds, %bb.dd, %bb.cz, %bb.cy, %bb.cx
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body187.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ew, %bb.eq, %bb.eg, %.loopexit.i.i.i
  %lpad.loopexit242.i = landingpad { ptr, i32 }
          cleanup
  br label %.body187.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.fd, %bb.ev, %.loopexit.i.i.i173.i, %bb.ep, %.loopexit.i.i.i165.i, %bb.ef, %.loopexit.i.i.i157.i, %bb.eb, %.invoke.i51, %bb.dy, %.loopexit124.i.i.i.i.i.i.i, %bb.dt, %.loopexit125.i.i.i.i.i.i.i, %bb.di, %bb.dc, %.loopexit231.i.i.i.i.i.i.i, %.loopexit230.i.i.i.i.i.i.i, %.loopexit239.i.i.i.i.i.i.i, %.loopexit238.i.i.i.i.i.i.i, %.loopexit247.i.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i, %bb.by, %.loopexit.i.i.i130.i, %bb.bg, %bb.bf, %bb.be, %.loopexit.i.i.i.i, %bb.bd, %.loopexit22.i.i.i.i
  %.sroa.089.2.ph.ph.i = phi i8 [ 1, %.invoke ], [ 1, %.invoke.i51 ], [ 1, %bb.eb ], [ %.sroa.089.4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ 1, %bb.fd ], [ 1, %bb.dy ], [ 1, %.loopexit22.i.i.i.i ], [ 1, %bb.bd ], [ 1, %.loopexit.i.i.i.i ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bg ], [ 1, %.loopexit.i.i.i130.i ], [ 1, %bb.by ], [ 1, %.loopexit130.i.i.i.i.i.i.i ], [ 1, %.loopexit246.i.i.i.i.i.i.i ], [ 1, %.loopexit247.i.i.i.i.i.i.i ], [ 1, %.loopexit238.i.i.i.i.i.i.i ], [ 1, %.loopexit239.i.i.i.i.i.i.i ], [ 1, %.loopexit230.i.i.i.i.i.i.i ], [ 1, %.loopexit231.i.i.i.i.i.i.i ], [ 1, %bb.ef ], [ 1, %.loopexit.i.i.i165.i ], [ 1, %bb.ep ], [ 1, %bb.dc ], [ 1, %.loopexit.i.i.i173.i ], [ 1, %.loopexit.i.i.i157.i ], [ 1, %bb.di ], [ 1, %.loopexit125.i.i.i.i.i.i.i ], [ 1, %bb.ev ], [ 1, %bb.dt ], [ 1, %.loopexit124.i.i.i.i.i.i.i ]
  %lpad.loopexit.split-lp243.i = landingpad { ptr, i32 }
          cleanup
  br label %.body187.i

bb.br:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !719
  %i.is = load i64, ptr %i.ao, align 8, !range !28, !noalias !719, !noundef !3
  %.not106.i = icmp eq i64 %i.is, -9223372036854775808
  br i1 %.not106.i, label %bb.fd, label %bb.fc

bb.bs:                                            ; preds = %bb.bn, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !791
  %i.it = load i64, ptr %i.ao, align 8, !range !28, !noalias !719, !noundef !3
  %.not112.i = icmp eq i64 %i.it, -9223372036854775808
  br i1 %.not112.i, label %bb.ec, label %.invoke, !prof !452

bb.bt:                                            ; preds = %bb.bo, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !791
  %.not111.i = icmp eq i32 %.sroa.027.0441.i, 0
  br i1 %.not111.i, label %bb.em, label %.invoke, !prof !452

bb.bu:                                            ; preds = %bb.bp, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !791
  %i.iu = load i64, ptr %i.an, align 8, !range !28, !noalias !719, !noundef !3
  %.not110.i = icmp eq i64 %i.iu, -9223372036854775808
  br i1 %.not110.i, label %bb.es, label %.invoke, !prof !452

bb.bv:                                            ; preds = %bb.bp, %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !791
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.iv = load i64, ptr %i.bj, align 8, !alias.scope !798, !noalias !803, !noundef !3 ; 4 uses
  %.promoted.i.i.i.i129.i = load i64, ptr %i.bi, align 8, !alias.scope !807, !noalias !808 ; 2 uses
  %i.iw = icmp ult i64 %.promoted.i.i.i.i129.i, %i.iv
  br i1 %i.iw, label %.lr.ph.i.i.i.i131.i, label %.loopexit.i.i.i130.i

.lr.ph.i.i.i.i131.i:                              ; preds = %bb.bv
  %i.ix = load ptr, ptr %i.bm, align 8, !alias.scope !798, !noalias !803, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bx, %.lr.ph.i.i.i.i131.i
  %i.iy = phi i64 [ %.promoted.i.i.i.i129.i, %.lr.ph.i.i.i.i131.i ], [ %i.jb, %bb.bx ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !noalias !811, !noundef !3
  switch i8 %i.ja, label %bb.by [
    i8 32, label %bb.bx
    i8 10, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 58, label %bb.bz
  ], !prof !812

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.jb = add i64 %i.iy, 1                        ; 3 uses
  store i64 %i.jb, ptr %i.bi, align 8, !alias.scope !813, !noalias !808
  %exitcond.not.i.i.i.i132.i = icmp eq i64 %i.jb, %i.iv
  br i1 %exitcond.not.i.i.i.i132.i, label %.loopexit.i.i.i130.i, label %bb.bw

.loopexit.i.i.i130.i:                             ; preds = %bb.bv, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !816
  store i64 3, ptr %i.y, align 8, !noalias !816
  %i.jc = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc133.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !750

.noexc133.i:                                      ; preds = %.loopexit.i.i.i130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !816
  br label %.loopexit234.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !816
  store i64 6, ptr %i.z, align 8, !noalias !816
  %i.jd = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc134.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !750

.noexc134.i:                                      ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !816
  br label %.loopexit234.i

bb.bz:                                            ; preds = %bb.bw
  %i.je = add i64 %i.iy, 1                        ; 3 uses
  store i64 %i.je, ptr %i.bi, align 8, !alias.scope !817, !noalias !750
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  store i64 0, ptr %i.fj, align 8, !alias.scope !832, !noalias !750
  %i.jf = icmp ult i64 %i.je, %i.iv
  br i1 %i.jf, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bz, %bb.dz
  %i.jg = phi ptr [ %i.ni, %bb.dz ], [ %i.ix, %bb.bz ] ; 11 uses
  %.promoted.i177.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %bb.dz ], [ %i.je, %bb.bz ]
  %i.jh = phi i64 [ %i.nh, %bb.dz ], [ %i.iv, %bb.bz ] ; 7 uses
  %.sroa.7.0176.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.dz ], [ undef, %bb.bz ] ; 2 uses
  %.sroa.039.0175.i.i.i.i.i.i.i = phi i1 [ true, %bb.dz ], [ false, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ji = phi i64 [ %.promoted.i177.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.jl, %bb.cb ] ; 17 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !noalias !836, !noundef !3 ; 3 uses
  switch i8 %i.jk, label %bb.cc [
    i8 32, label %bb.cb
    i8 10, label %bb.cb
    i8 9, label %bb.cb
    i8 13, label %bb.cb
    i8 110, label %bb.cd
    i8 116, label %bb.cj
    i8 102, label %bb.cp
    i8 45, label %bb.cx
    i8 34, label %bb.cy
    i8 91, label %bb.cz
    i8 123, label %bb.cz
  ]

bb.cb:                                            ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca
  %i.jl = add i64 %i.ji, 1                        ; 3 uses
  store i64 %i.jl, ptr %i.bi, align 8, !alias.scope !844, !noalias !847
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.jl, %i.jh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.ca

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.bz, %bb.dz, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !848
  store i64 5, ptr %i.x, align 8, !noalias !848
  %i.jm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc135.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !750

.noexc135.i:                                      ; preds = %.loopexit130.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !848
  br label %.loopexit234.i

bb.cc:                                            ; preds = %bb.ca
  %i.jn = add i8 %i.jk, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.jn, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.dd, label %bb.dc, !prof !563

bb.cd:                                            ; preds = %bb.ca
  %i.jo = add i64 %i.ji, 1                        ; 4 uses
  store i64 %i.jo, ptr %i.bi, align 8, !alias.scope !849, !noalias !750
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jo, i64 %i.jh) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %exitcond.not.i54.not.i.i.i.i.i.i.i = icmp ult i64 %i.jo, %i.jh
  br i1 %exitcond.not.i54.not.i.i.i.i.i.i.i, label %bb.ce, label %.loopexit246.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !noalias !861, !noundef !3
  %i.jr = add i64 %i.ji, 2                        ; 3 uses
  store i64 %i.jr, ptr %i.bi, align 8, !alias.scope !865, !noalias !866
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.jq, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cf, label %.loopexit247.i.i.i.i.i.i.i, !prof !867

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %exitcond.not.i54.1.i.i.i.i.i.i.i = icmp eq i64 %i.jr, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i54.1.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !noalias !872, !noundef !3
  %i.ju = add i64 %i.ji, 3                        ; 3 uses
  store i64 %i.ju, ptr %i.bi, align 8, !alias.scope !873, !noalias !866
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.jt, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.ch, label %.loopexit247.i.i.i.i.i.i.i, !prof !867

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %exitcond.not.i54.2.i.i.i.i.i.i.i = icmp eq i64 %i.ju, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i54.2.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ju
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtB2v_13TokenResponseNtB1l_11Deserialize11deserialize9___VisitorEB2x_:bb.a
          to label %common.resume unwind label %bb.v, !noalias !1227

bb.v:                                             ; preds = %bb.u
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1227
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.t
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1227
  br label %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtBb_13TokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB35_4read9SliceReadEEBd_.exit

bb.w:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1227
  unreachable

_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtBb_13TokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB35_4read9SliceReadEEBd_.exit: ; preds = %bb.i, %bb.l, %bb.q, %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.962.0 = phi i64 [ %i.bw, %bb.s ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %bb.i ]
  %.sroa.959.0 = phi i64 [ %.sroa.959.0.copyload61, %bb.s ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %bb.i ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload58, %bb.s ], [ %.sink40.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.bu, %bb.q ], [ %i.bh, %bb.l ], [ %i.az, %bb.i ]
  %.sroa.055.0 = phi i64 [ %.sroa.055.0.copyload56, %bb.s ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ -9223372036854775808, %bb.q ], [ -9223372036854775808, %bb.l ], [ -9223372036854775808, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cb = load i8, ptr %i.al, align 8, !noundef !3
  %i.cc = add i8 %i.cb, 1
  store i8 %i.cc, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %.sroa.055.0, ptr %i.u, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.959.0, ptr %.sroa.959.0..sroa_idx, align 8
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %.sroa.962.0, ptr %.sroa.962.0..sroa_idx, align 8
  %i.cd = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.z unwind label %bb.y       ; 7 uses

bb.x:                                             ; preds = %bb.aj, %bb.g
  %.sink279 = phi ptr [ %i.cq, %bb.aj ], [ %i.at, %bb.g ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink279, ptr %i.ce, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.dj

bb.y:                                             ; preds = %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtBb_13TokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB35_4read9SliceReadEEBd_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB16_(ptr noalias noundef align 8 dereferenceable(32) %i.u) #29
          to label %common.resume unwind label %bb.af

bb.z:                                             ; preds = %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtBb_13TokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB35_4read9SliceReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.cd, ptr %i.cg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ch = load i64, ptr %i.v, align 8, !range !28, !noundef !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, -9223372036854775808
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not37 = icmp eq ptr %i.cd, null
  br i1 %.not37, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i64 16, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit: ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !3, !align !71, !noundef !3 ; 2 uses
  %.not282 = icmp eq ptr %i.cd, null
  br i1 %.not282, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit.thread, label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42: ; preds = %bb.ac
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit.thread

bb.af:                                            ; preds = %bb.cx, %bb.y
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit.thread: ; preds = %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit
  %.sroa.09.0213 = phi i64 [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42 ], [ %i.ch, %bb.ab ]
  %.sroa.10.0212 = phi ptr [ %i.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit ], [ %i.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42 ], [ %.sroa.219.0.copyload, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ai

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.cd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ag
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef 40, i64 noundef 8) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit.thread

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit52.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit.thread
  %.sroa.10.1 = phi ptr [ %.sroa.10.0212, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit.thread ], [ %.sroa.10.2218, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit52.thread ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.0213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit.thread ], [ %.sroa.09.2219, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential13TokenResponseEBK_.exit52.thread ] ; 2 uses
  %i.cp = icmp eq i64 %.sroa.09.1, -9223372036854775808
  br i1 %i.cp, label %bb.dg, label %bb.dh, !prof !4

bb.aj:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 24, ptr %i.t, align 8
  %i.cq = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.x

.outer:                                           ; preds = %bb.f
  %i.cr = add i64 %i.ae, 1
  store i64 %i.cr, ptr %i.y, align 8, !alias.scope !1231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %1, ptr %i.l, align 8, !noalias !1234
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 1, ptr %i.cs, align 8, !noalias !1234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1234
  store i64 -9223372036854775808, ptr %i.k, align 8, !noalias !1234
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.657.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.618.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.backedge, %.outer
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1244
  invoke fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc.i46 unwind label %.loopexit.i43.loopexit.loopexit, !noalias !1247

.noexc.i46:                                       ; preds = %bb.ak
  %i.cv = load i8, ptr %i.g, align 8, !range !451, !noalias !1244, !noundef !3
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.loopexit430, label %bb.al

.loopexit430:                                     ; preds = %.noexc.i46.1, %.noexc.i46
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !1244, !nonnull !3, !align !71, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1244
  br label %.loopexit

bb.al:                                            ; preds = %.noexc.i46
  %i.cz = load i8, ptr %i.ct, align 1, !range !451, !noalias !1244, !noundef !3
  %i.da = trunc nuw i8 %i.cz to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1244
  br i1 %i.da, label %bb.am, label %.loopexit431

bb.am:                                            ; preds = %bb.al
  %i.db = load ptr, ptr %i.l, align 8, !alias.scope !1248, !noalias !1249, !nonnull !3, !align !71, !noundef !3 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 8 uses
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !1262, !noalias !1265, !noundef !3
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.dd, align 8, !alias.scope !1262, !noalias !1265
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 0, ptr %i.dg, align 8, !alias.scope !1270, !noalias !1265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1271
  invoke void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.db)
          to label %.noexc70.i unwind label %.loopexit.i43.loopexit.loopexit, !noalias !1247

.noexc70.i:                                       ; preds = %bb.am
  %i.dh = load i64, ptr %i.f, align 8, !range !601, !noalias !1271, !noundef !3 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 2
  %i.dj = load ptr, ptr %i.cu, align 8, !noalias !1271, !nonnull !3, !noundef !3 ; 9 uses
  br i1 %i.di, label %.loopexit432, label %bb.an

bb.an:                                            ; preds = %.noexc70.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1271 ; 2 uses
  %i.dk = trunc nuw i64 %i.dh to i1
  br i1 %i.dk, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.aw [
    i64 12, label %bb.ap
    i64 10, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dl = load i64, ptr %i.dj, align 1
  %i.dm = xor i64 %i.dl, 8385547970646598497
  %i.dn = getelementptr i8, ptr %i.dj, i64 8
  %i.do = load i32, ptr %i.dn, align 1
  %i.dp = zext i32 %i.do to i64
  %i.dq = xor i64 %i.dp, 1852140399
  %i.dr = or i64 %i.dm, %i.dq
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.au, label %bb.aw

bb.aq:                                            ; preds = %bb.ao
  %i.dv = load i64, ptr %i.dj, align 1
  %i.dw = xor i64 %i.dv, 6877952597994535013
  %i.dx = getelementptr i8, ptr %i.dj, i64 8
  %i.dy = load i16, ptr %i.dx, align 1
  %i.dz = zext i16 %i.dy to i64
  %i.ea = xor i64 %i.dz, 28265
  %i.eb = or i64 %i.dw, %i.ea
  %i.ec = icmp ne i64 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.av, label %bb.aw

bb.ar:                                            ; preds = %bb.an
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.aw [
    i64 12, label %bb.as
    i64 10, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ef = load i64, ptr %i.dj, align 1
  %i.eg = xor i64 %i.ef, 8385547970646598497
  %i.eh = getelementptr i8, ptr %i.dj, i64 8
  %i.ei = load i32, ptr %i.eh, align 1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = xor i64 %i.ej, 1852140399
  %i.el = or i64 %i.eg, %i.ek
  %i.em = icmp ne i64 %i.el, 0
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.au, label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.ep = load i64, ptr %i.dj, align 1
  %i.eq = xor i64 %i.ep, 6877952597994535013
  %i.er = getelementptr i8, ptr %i.dj, i64 8
  %i.es = load i16, ptr %i.er, align 1
  %i.et = zext i16 %i.es to i64
  %i.eu = xor i64 %i.et, 28265
  %i.ev = or i64 %i.eq, %i.eu
  %i.ew = icmp ne i64 %i.ev, 0
  %i.ex = zext i1 %i.ew to i32
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.av, label %bb.aw

.loopexit432:                                     ; preds = %.noexc70.i.1, %.noexc70.i
  %.lcssa381 = phi ptr [ %i.dj, %.noexc70.i ], [ %i.hc, %.noexc70.i.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1271
  br label %.loopexit

.body83.i:                                        ; preds = %.loopexit.i43.loopexit.split-lp, %.loopexit.i43.loopexit.loopexit.split-lp, %.loopexit.i43.loopexit.loopexit, %bb.co, %bb.cl, %.body.i, %.loopexit.split-lp.i
  %.sroa.053.1.i = phi i8 [ %.sroa.053.4.i, %bb.cl ], [ 1, %.body.i ], [ %.sroa.053.4.i, %bb.co ], [ %.sroa.053.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.i43.loopexit.loopexit ], [ 1, %.loopexit.i43.loopexit.loopexit.split-lp ], [ 1, %.loopexit.i43.loopexit.split-lp ]
  %.pn.i = phi { ptr, i32 } [ %i.jm, %bb.cl ], [ %eh.lpad-body.i, %.body.i ], [ %i.jq, %bb.co ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp, %.loopexit.i43.loopexit.split-lp ], [ %lpad.loopexit427, %.loopexit.i43.loopexit.loopexit ], [ %lpad.loopexit.split-lp428, %.loopexit.i43.loopexit.loopexit.split-lp ] ; 2 uses
  %i.ez = load i64, ptr %i.k, align 8, !range !28, !noalias !1234, !noundef !3
  %i.fa = icmp ne i64 %i.ez, -9223372036854775808
  %i.fb = trunc nuw i8 %.sroa.053.1.i to i1
  %or.cond3.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond3.i, label %bb.cw, label %common.resume

.loopexit.i43.loopexit.loopexit:                  ; preds = %bb.ba, %bb.aw, %bb.am, %bb.ak
  %lpad.loopexit427 = landingpad { ptr, i32 }
          cleanup
  br label %.body83.i

.loopexit.i43.loopexit.loopexit.split-lp:         ; preds = %bb.bk, %bb.bm, %bb.bx, %bb.cb
  %lpad.loopexit.split-lp428 = landingpad { ptr, i32 }
          cleanup
  br label %.body83.i

.loopexit.i43.loopexit.split-lp:                  ; preds = %.loopexit.i.i.i76.i, %bb.bh, %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body83.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.cf, %.loopexit426, %.loopexit.i.i.i.i
  %.sroa.053.2.ph.i = phi i8 [ %.sroa.053.4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ 1, %.loopexit426 ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.invoke ], [ 1, %bb.cf ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body83.i

.loopexit431:                                     ; preds = %bb.bl, %bb.al
  %.sroa.4.0.i.ph.lcssa394 = phi i64 [ undef, %bb.al ], [ %i.gp, %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1234
  %i.fc = load i64, ptr %i.k, align 8, !range !28, !noalias !1234, !noundef !3
  %.not62.i = icmp eq i64 %i.fc, -9223372036854775808
  br i1 %.not62.i, label %bb.cf, label %bb.ce

bb.au:                                            ; preds = %bb.as, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1271
  %i.fd = load i64, ptr %i.k, align 8, !range !28, !noalias !1234, !noundef !3
  %.not64.i = icmp eq i64 %i.fd, -9223372036854775808
  br i1 %.not64.i, label %bb.ax, label %.invoke, !prof !452

bb.av:                                            ; preds = %bb.at, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1271
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !1278, !noalias !1281, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i75.i = load i64, ptr %i.dd, align 8, !alias.scope !1284, !noalias !1285 ; 2 uses
  %i.fg = icmp ult i64 %.promoted.i.i.i.i75.i, %i.ff
  br i1 %i.fg, label %.lr.ph.i.i.i.i78.i, label %.loopexit.i.i.i76.i

bb.aw:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1271
  %i.fh = invoke fastcc noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.db)
          to label %bb.cd unwind label %.loopexit.i43.loopexit.loopexit, !noalias !1247 ; 2 uses

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1234
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !1292, !noalias !1295, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.dd, align 8, !alias.scope !1302, !noalias !1303 ; 2 uses
  %i.fk = icmp ult i64 %.promoted.i.i.i.i.i, %i.fj
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ax
  %i.fl = load ptr, ptr %i.dc, align 8, !alias.scope !1292, !noalias !1295, !nonnull !3, !noundef !3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %.lr.ph.i.i.i.i.i
  %i.fm = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fp, %bb.az ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !noalias !1305, !noundef !3
  switch i8 %i.fo, label %.loopexit426 [
    i8 32, label %bb.az
    i8 10, label %bb.az
    i8 9, label %bb.az
    i8 13, label %bb.az
    i8 58, label %bb.ba
  ], !prof !812

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay
  %i.fp = add i64 %i.fm, 1                        ; 3 uses
  store i64 %i.fp, ptr %i.dd, align 8, !alias.scope !1306, !noalias !1303
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fp, %i.fj
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ay

.loopexit.i.i.i.i:                                ; preds = %bb.ax, %bb.bv, %bb.az, %bb.ca
  %i.fq = phi ptr [ %i.gu, %bb.ca ], [ %i.db, %bb.az ], [ %i.db, %bb.ax ], [ %i.gu, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1309
  store i64 3, ptr %i.d, align 8, !noalias !1309
  %i.fr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fq, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc71.i unwind label %.loopexit.split-lp.i, !noalias !1247

.noexc71.i:                                       ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1309
  br label %.loopexit105.i

.loopexit426:                                     ; preds = %bb.bw, %bb.ay
  %.lcssa375 = phi ptr [ %i.db, %bb.ay ], [ %i.gu, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1309
  store i64 6, ptr %i.e, align 8, !noalias !1309
  %i.fs = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.lcssa375, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc72.i unwind label %.loopexit.split-lp.i, !noalias !1247

.noexc72.i:                                       ; preds = %.loopexit426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1309
  br label %.loopexit105.i

bb.ba:                                            ; preds = %bb.ay
  %i.ft = add i64 %i.fm, 1
  store i64 %i.ft, ptr %i.dd, align 8, !alias.scope !1310, !noalias !1313
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.db)
          to label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %.loopexit.i43.loopexit.loopexit, !noalias !1247

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ba
  %.pr.i = load i64, ptr %i.j, align 8, !noalias !1234 ; 4 uses
  %i.fu = icmp eq i64 %.pr.i, -9223372036854775808
  %.pre.i = load ptr, ptr %.sroa.556.0..sroa_idx.i, align 8, !noalias !1234 ; 4 uses
  br i1 %i.fu, label %.loopexit105.i, label %bb.bb

.loopexit105.i:                                   ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1, %.noexc72.i, %.noexc71.i
  %i.fv = phi ptr [ %i.fs, %.noexc72.i ], [ %i.fr, %.noexc71.i ], [ %.pre.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %.pre.i.1, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1234
  br label %.loopexit

bb.bb:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.657.0.copyload.i = load i64, ptr %.sroa.657.0..sroa_idx.i, align 8, !noalias !1234 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1234
  %i.fw = load i64, ptr %i.k, align 8, !range !28, !alias.scope !1314, !noalias !1234, !noundef !3
  %i.fx = icmp eq i64 %i.fw, -9223372036854775808
  br i1 %i.fx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %.loopexit433, !noalias !1247

.loopexit433:                                     ; preds = %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %bb.bz
  %lpad.loopexit.split-lp437 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp, %.loopexit433
  %.sroa.657.0.copyload.i.lcssa = phi i64 [ %.sroa.657.0.copyload.i, %.loopexit433 ], [ %.sroa.657.0.copyload.i.1, %.loopexit.split-lp ]
  %.pr.i.lcssa347 = phi i64 [ %.pr.i, %.loopexit433 ], [ %.pr.i.1, %.loopexit.split-lp ]
  %.pre.i.lcssa344 = phi ptr [ %.pre.i, %.loopexit433 ], [ %.pre.i.1, %.loopexit.split-lp ]
  %lpad.phi438 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit433 ], [ %lpad.loopexit.split-lp437, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.be, !noalias !1247

bb.be:                                            ; preds = %bb.bd
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1247
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %.loopexit439, !noalias !1247

.loopexit439:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %lpad.loopexit444 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp440:                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.1
  %lpad.loopexit.split-lp445 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit439, %.loopexit.split-lp440, %bb.bd
  %.sroa.657.0.copyload.i351 = phi i64 [ %.sroa.657.0.copyload.i.lcssa, %bb.bd ], [ %.sroa.657.0.copyload.i, %.loopexit439 ], [ %.sroa.657.0.copyload.i.1, %.loopexit.split-lp440 ]
  %.pr.i349 = phi i64 [ %.pr.i.lcssa347, %bb.bd ], [ %.pr.i, %.loopexit439 ], [ %.pr.i.1, %.loopexit.split-lp440 ]
  %.pre.i346 = phi ptr [ %.pre.i.lcssa344, %bb.bd ], [ %.pre.i, %.loopexit439 ], [ %.pre.i.1, %.loopexit.split-lp440 ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi438, %bb.bd ], [ %lpad.loopexit444, %.loopexit439 ], [ %lpad.loopexit.split-lp445, %.loopexit.split-lp440 ]
  store i64 %.pr.i349, ptr %i.k, align 8, !noalias !1234
  store ptr %.pre.i346, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !1234
  store i64 %.sroa.657.0.copyload.i351, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !1234
  br label %.body83.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.bb
  store i64 %.pr.i, ptr %i.k, align 8, !noalias !1234
  store ptr %.pre.i, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !1234
  store i64 %.sroa.657.0.copyload.i, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !1234
  br label %.backedge

.invoke:                                          ; preds = %bb.au, %bb.bu, %.invoke.loopexit340
  %i.fz = phi ptr [ @7, %.invoke.loopexit340 ], [ @6, %bb.bu ], [ @6, %bb.au ]
  %i.ga = phi i64 [ 10, %.invoke.loopexit340 ], [ 12, %bb.bu ], [ 12, %bb.au ]
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15duplicate_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fz, i64 noundef %i.ga)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !noalias !1247

.lr.ph.i.i.i.i78.i:                               ; preds = %bb.av
  %i.gc = load ptr, ptr %i.dc, align 8, !alias.scope !1278, !noalias !1281, !nonnull !3, !noundef !3
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i.i78.i
  %i.gd = phi i64 [ %.promoted.i.i.i.i75.i, %.lr.ph.i.i.i.i78.i ], [ %i.gg, %bb.bg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !1318, !noundef !3
  switch i8 %i.gf, label %bb.bh [
    i8 32, label %bb.bg
    i8 10, label %bb.bg
    i8 9, label %bb.bg
    i8 13, label %bb.bg
    i8 58, label %bb.bj
  ], !prof !812

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf, %bb.bf
  %i.gg = add i64 %i.gd, 1                        ; 3 uses
  store i64 %i.gg, ptr %i.dd, align 8, !alias.scope !1319, !noalias !1285
  %exitcond.not.i.i.i.i79.i = icmp eq i64 %i.gg, %i.ff
  br i1 %exitcond.not.i.i.i.i79.i, label %.loopexit.i.i.i76.i, label %bb.bf

.loopexit.i.i.i76.i:                              ; preds = %bb.bg, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1322
  store i64 3, ptr %i.b, align 8, !noalias !1322
  %i.gh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.db, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc80.i unwind label %.loopexit.i43.loopexit.split-lp, !noalias !1247

.noexc80.i:                                       ; preds = %.loopexit.i.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1322
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1322
  store i64 6, ptr %i.c, align 8, !noalias !1322
  %i.gi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.db, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc81.i unwind label %.loopexit.i43.loopexit.split-lp, !noalias !1247

.noexc81.i:                                       ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1322
  br label %bb.bi

bb.bi:                                            ; preds = %.noexc81.i, %.noexc80.i
  %.sroa.0.0.i.ph.i.i77.i = phi ptr [ %i.gh, %.noexc80.i ], [ %i.gi, %.noexc81.i ]
  %i.gj = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i77.i, 1
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.bj:                                            ; preds = %bb.bf
  %i.gk = add i64 %i.gd, 1
  store i64 %i.gk, ptr %i.dd, align 8, !alias.scope !1323, !noalias !1247
  %i.gl = invoke fastcc { i64, ptr } @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(64) %i.db)
          to label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %.loopexit.i43.loopexit.split-lp, !noalias !1247

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.bj, %bb.bi
  %.merged.i.i.i = phi { i64, ptr } [ %i.gj, %bb.bi ], [ %i.gl, %bb.bj ] ; 2 uses
  %i.gm = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.gn = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 2 uses
  %i.go = trunc nuw i64 %i.gm to i1
  br i1 %i.go, label %.loopexit, label %.outer.1

.outer.1:                                         ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.gp = ptrtoint ptr %i.gn to i64
  br label %bb.bk

bb.bk:                                            ; preds = %.backedge.1, %.outer.1
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1330
  invoke fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc.i46.1 unwind label %.loopexit.i43.loopexit.loopexit.split-lp, !noalias !1247

.noexc.i46.1:                                     ; preds = %bb.bk
  %i.gq = load i8, ptr %i.g, align 8, !range !451, !noalias !1330, !noundef !3
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %.loopexit430, label %bb.bl

bb.bl:                                            ; preds = %.noexc.i46.1
  %i.gs = load i8, ptr %i.ct, align 1, !range !451, !noalias !1330, !noundef !3
  %i.gt = trunc nuw i8 %i.gs to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1330
  br i1 %i.gt, label %bb.bm, label %.loopexit431

bb.bm:                                            ; preds = %bb.bl
  %i.gu = load ptr, ptr %i.l, align 8, !alias.scope !1331, !noalias !1249, !nonnull !3, !align !71, !noundef !3 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 40 ; 5 uses
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !1340, !noalias !1341, !noundef !3
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.gw, align 8, !alias.scope !1340, !noalias !1341
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i64 0, ptr %i.gz, align 8, !alias.scope !1342, !noalias !1341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1343
  invoke void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gu)
          to label %.noexc70.i.1 unwind label %.loopexit.i43.loopexit.loopexit.split-lp, !noalias !1247

.noexc70.i.1:                                     ; preds = %bb.bm
  %i.ha = load i64, ptr %i.f, align 8, !range !601, !noalias !1343, !noundef !3 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 2
  %i.hc = load ptr, ptr %i.cu, align 8, !noalias !1343, !nonnull !3, !noundef !3 ; 9 uses
  br i1 %i.hb, label %.loopexit432, label %bb.bn

bb.bn:                                            ; preds = %.noexc70.i.1
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1343 ; 2 uses
  %i.hd = trunc nuw i64 %i.ha to i1
  br i1 %i.hd, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.1, label %bb.cb [
    i64 12, label %bb.bq
    i64 10, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.he = load i64, ptr %i.hc, align 1
  %i.hf = xor i64 %i.he, 6877952597994535013
  %i.hg = getelementptr i8, ptr %i.hc, i64 8
  %i.hh = load i16, ptr %i.hg, align 1
  %i.hi = zext i16 %i.hh to i64
  %i.hj = xor i64 %i.hi, 28265
  %i.hk = or i64 %i.hf, %i.hj
  %i.hl = icmp ne i64 %i.hk, 0
  %i.hm = zext i1 %i.hl to i32
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %.invoke.loopexit340, label %bb.cb

bb.bq:                                            ; preds = %bb.bo
  %i.ho = load i64, ptr %i.hc, align 1
  %i.hp = xor i64 %i.ho, 8385547970646598497
  %i.hq = getelementptr i8, ptr %i.hc, i64 8
  %i.hr = load i32, ptr %i.hq, align 1
  %i.hs = zext i32 %i.hr to i64
  %i.ht = xor i64 %i.hs, 1852140399
  %i.hu = or i64 %i.hp, %i.ht
  %i.hv = icmp ne i64 %i.hu, 0
  %i.hw = zext i1 %i.hv to i32
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.bu, label %bb.cb

bb.br:                                            ; preds = %bb.bn
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.1, label %bb.cb [
    i64 12, label %bb.bt
    i64 10, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  %i.hy = load i64, ptr %i.hc, align 1
  %i.hz = xor i64 %i.hy, 6877952597994535013
  %i.ia = getelementptr i8, ptr %i.hc, i64 8
  %i.ib = load i16, ptr %i.ia, align 1
  %i.ic = zext i16 %i.ib to i64
  %i.id = xor i64 %i.ic, 28265
  %i.ie = or i64 %i.hz, %i.id
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = zext i1 %i.if to i32
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %.invoke.loopexit340, label %bb.cb

.invoke.loopexit340:                              ; preds = %bb.bs, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1343
  br label %.invoke

bb.bt:                                            ; preds = %bb.br
  %i.ii = load i64, ptr %i.hc, align 1
  %i.ij = xor i64 %i.ii, 8385547970646598497
  %i.ik = getelementptr i8, ptr %i.hc, i64 8
  %i.il = load i32, ptr %i.ik, align 1
  %i.im = zext i32 %i.il to i64
  %i.in = xor i64 %i.im, 1852140399
  %i.io = or i64 %i.ij, %i.in
  %i.ip = icmp ne i64 %i.io, 0
  %i.iq = zext i1 %i.ip to i32
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %bb.bt, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1343
  %i.is = load i64, ptr %i.k, align 8, !range !28, !noalias !1234, !noundef !3
  %.not64.i.1 = icmp eq i64 %i.is, -9223372036854775808
  br i1 %.not64.i.1, label %bb.bv, label %.invoke, !prof !452

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1234
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.it = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !1348, !noalias !1295, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i.i.1 = load i64, ptr %i.gw, align 8, !alias.scope !1350, !noalias !1303 ; 2 uses
  %i.iv = icmp ult i64 %.promoted.i.i.i.i.i.1, %i.iu
  br i1 %i.iv, label %.lr.ph.i.i.i.i.i.1, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.1:                               ; preds = %bb.bv
  %i.iw = load ptr, ptr %i.gv, align 8, !alias.scope !1348, !noalias !1295, !nonnull !3, !noundef !3
  br label %bb.bw

bb.bw:                                            ; preds = %bb.ca, %.lr.ph.i.i.i.i.i.1
  %i.ix = phi i64 [ %.promoted.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.1 ], [ %i.je, %bb.ca ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !noalias !1352, !noundef !3
  switch i8 %i.iz, label %.loopexit426 [
    i8 32, label %bb.ca
    i8 10, label %bb.ca
    i8 9, label %bb.ca
    i8 13, label %bb.ca
    i8 58, label %bb.bx
  ], !prof !812

bb.bx:                                            ; preds = %bb.bw
  %i.ja = add i64 %i.ix, 1
  store i64 %i.ja, ptr %i.gw, align 8, !alias.scope !1353, !noalias !1313
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gu)
          to label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1 unwind label %.loopexit.i43.loopexit.loopexit.split-lp, !noalias !1247

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1: ; preds = %bb.bx
  %.pr.i.1 = load i64, ptr %i.j, align 8, !noalias !1234 ; 4 uses
  %i.jb = icmp eq i64 %.pr.i.1, -9223372036854775808
  %.pre.i.1 = load ptr, ptr %.sroa.556.0..sroa_idx.i, align 8, !noalias !1234 ; 4 uses
  br i1 %i.jb, label %.loopexit105.i, label %bb.by

bb.by:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1
  %.sroa.657.0.copyload.i.1 = load i64, ptr %.sroa.657.0..sroa_idx.i, align 8, !noalias !1234 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1234
  %i.jc = load i64, ptr %i.k, align 8, !range !28, !alias.scope !1314, !noalias !1234, !noundef !3
  %i.jd = icmp eq i64 %i.jc, -9223372036854775808
  br i1 %i.jd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.1 unwind label %.loopexit.split-lp, !noalias !1247

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.1: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1 unwind label %.loopexit.split-lp440, !noalias !1247

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.1, %bb.by
  store i64 %.pr.i.1, ptr %i.k, align 8, !noalias !1234
  store ptr %.pre.i.1, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !1234
  store i64 %.sroa.657.0.copyload.i.1, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !1234
  br label %.backedge.1

bb.ca:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.je = add i64 %i.ix, 1                        ; 3 uses
  store i64 %i.je, ptr %i.gw, align 8, !alias.scope !1354, !noalias !1303
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.je, %i.iu
  br i1 %exitcond.not.i.i.i.i.i.1, label %.loopexit.i.i.i.i, label %bb.bw

bb.cb:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1343
  %i.jf = invoke fastcc noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.gu)
          to label %bb.cc unwind label %.loopexit.i43.loopexit.loopexit.split-lp, !noalias !1247 ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  %.not63.i.1 = icmp eq ptr %i.jf, null
  br i1 %.not63.i.1, label %.backedge.1, label %.loopexit

.backedge.1:                                      ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1
  br label %bb.bk

bb.cd:                                            ; preds = %bb.aw
  %.not63.i = icmp eq ptr %i.fh, null
  br i1 %.not63.i, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  br label %bb.ak

bb.ce:                                            ; preds = %.loopexit431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1234
  br label %bb.cj

bb.cf:                                            ; preds = %.loopexit431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1234
  invoke void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 12)
          to label %bb.cg unwind label %.loopexit.split-lp.i, !noalias !1247

bb.cg:                                            ; preds = %bb.cf
  %i.jg = load i64, ptr %i.h, align 8, !range !28, !noalias !1234, !noundef !3 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, -9223372036854775808
  %i.ji = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !1234 ; 2 uses
  br i1 %i.jh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1234
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i47

bb.ci:                                            ; preds = %bb.cg
  %.sroa.660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.660.0.copyload.i = load i64, ptr %.sroa.660.0..sroa_idx.i, align 8, !noalias !1234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1234
  store i64 %i.jg, ptr %i.i, align 8, !noalias !1234
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.jj, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !1234
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.660.0.copyload.i, ptr %.sroa.544.0..sroa_idx.i, align 8, !noalias !1234
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ce
  %.sroa.053.4.i = phi i8 [ 0, %bb.ce ], [ 1, %bb.ci ] ; 4 uses
  br i1 %i.da, label %bb.cr, label %bb.ck

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i47: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.ch
  %.sroa.13.0 = phi ptr [ %i.jj, %bb.ch ], [ %i.jo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %.sroa.053.5.i = phi i8 [ 1, %bb.ch ], [ %.sroa.053.4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1234
end_hunk_2
begin_hunk_3_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtB2v_16MsiTokenResponseNtB1l_11Deserialize11deserialize9___VisitorEB2x_:bb.a
          to label %common.resume unwind label %bb.v, !noalias !1401

bb.v:                                             ; preds = %bb.u
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1401
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.t
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !1401
  br label %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBb_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1x_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3b_4read9SliceReadEEBd_.exit

bb.w:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1401
  unreachable

_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBb_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1x_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3b_4read9SliceReadEEBd_.exit: ; preds = %bb.i, %bb.l, %bb.q, %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.962.0 = phi i64 [ %i.bw, %bb.s ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %bb.i ]
  %.sroa.959.0 = phi i64 [ %.sroa.959.0.copyload61, %bb.s ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %bb.i ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload58, %bb.s ], [ %.sink42.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.bu, %bb.q ], [ %i.bh, %bb.l ], [ %i.az, %bb.i ]
  %.sroa.055.0 = phi i64 [ %.sroa.055.0.copyload56, %bb.s ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ -9223372036854775808, %bb.q ], [ -9223372036854775808, %bb.l ], [ -9223372036854775808, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cb = load i8, ptr %i.al, align 8, !noundef !3
  %i.cc = add i8 %i.cb, 1
  store i8 %i.cc, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %.sroa.055.0, ptr %i.u, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.959.0, ptr %.sroa.959.0..sroa_idx, align 8
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %.sroa.962.0, ptr %.sroa.962.0..sroa_idx, align 8
  %i.cd = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.z unwind label %bb.y       ; 7 uses

bb.x:                                             ; preds = %bb.aj, %bb.g
  %.sink279 = phi ptr [ %i.cq, %bb.aj ], [ %i.at, %bb.g ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink279, ptr %i.ce, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.dg

bb.y:                                             ; preds = %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBb_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1x_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3b_4read9SliceReadEEBd_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB16_(ptr noalias noundef align 8 dereferenceable(32) %i.u) #29
          to label %common.resume unwind label %bb.af

bb.z:                                             ; preds = %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBb_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1x_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3b_4read9SliceReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.cd, ptr %i.cg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ch = load i64, ptr %i.v, align 8, !range !28, !noundef !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, -9223372036854775808
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not37 = icmp eq ptr %i.cd, null
  br i1 %.not37, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i64 16, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit: ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !3, !align !71, !noundef !3 ; 2 uses
  %.not282 = icmp eq ptr %i.cd, null
  br i1 %.not282, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit.thread, label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42: ; preds = %bb.ac
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit.thread

bb.af:                                            ; preds = %bb.cu, %bb.y
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit.thread: ; preds = %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit
  %.sroa.09.0213 = phi i64 [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42 ], [ %i.ch, %bb.ab ]
  %.sroa.10.0212 = phi ptr [ %i.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit ], [ %i.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42 ], [ %.sroa.219.0.copyload, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ai

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.cd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ag
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef 40, i64 noundef 8) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit.thread

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit52.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit.thread
  %.sroa.10.1 = phi ptr [ %.sroa.10.0212, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit.thread ], [ %.sroa.10.2218, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit52.thread ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.0213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit.thread ], [ %.sroa.09.2219, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential16MsiTokenResponseEBK_.exit52.thread ] ; 2 uses
  %i.cp = icmp eq i64 %.sroa.09.1, -9223372036854775808
  br i1 %i.cp, label %bb.dd, label %bb.de, !prof !4

bb.aj:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 24, ptr %i.t, align 8
  %i.cq = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.x

.outer:                                           ; preds = %bb.f
  %i.cr = add i64 %i.ae, 1
  store i64 %i.cr, ptr %i.y, align 8, !alias.scope !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %1, ptr %i.l, align 8, !noalias !1408
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 1, ptr %i.cs, align 8, !noalias !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1408
  store i64 -9223372036854775808, ptr %i.k, align 8, !noalias !1408
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.649.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.618.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.backedge, %.outer
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1418
  invoke fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc.i46 unwind label %.loopexit.i43.loopexit.loopexit, !noalias !1421

.noexc.i46:                                       ; preds = %bb.ak
  %i.cv = load i8, ptr %i.g, align 8, !range !451, !noalias !1418, !noundef !3
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.loopexit430, label %bb.al

.loopexit430:                                     ; preds = %.noexc.i46.1, %.noexc.i46
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !1418, !nonnull !3, !align !71, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1418
  br label %.loopexit

bb.al:                                            ; preds = %.noexc.i46
  %i.cz = load i8, ptr %i.ct, align 1, !range !451, !noalias !1418, !noundef !3
  %i.da = trunc nuw i8 %i.cz to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1418
  br i1 %i.da, label %bb.am, label %.loopexit431

bb.am:                                            ; preds = %bb.al
  %i.db = load ptr, ptr %i.l, align 8, !alias.scope !1422, !noalias !1423, !nonnull !3, !align !71, !noundef !3 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 8 uses
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !1436, !noalias !1439, !noundef !3
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.dd, align 8, !alias.scope !1436, !noalias !1439
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 0, ptr %i.dg, align 8, !alias.scope !1444, !noalias !1439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1445
  invoke void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.db)
          to label %.noexc62.i unwind label %.loopexit.i43.loopexit.loopexit, !noalias !1421

.noexc62.i:                                       ; preds = %bb.am
  %i.dh = load i64, ptr %i.f, align 8, !range !601, !noalias !1445, !noundef !3 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 2
  %i.dj = load ptr, ptr %i.cu, align 8, !noalias !1445, !nonnull !3, !noundef !3 ; 9 uses
  br i1 %i.di, label %.loopexit432, label %bb.an

bb.an:                                            ; preds = %.noexc62.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1445 ; 2 uses
  %i.dk = trunc nuw i64 %i.dh to i1
  br i1 %i.dk, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.aw [
    i64 12, label %bb.ap
    i64 10, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dl = load i64, ptr %i.dj, align 1
  %i.dm = xor i64 %i.dl, 8385547970646598497
  %i.dn = getelementptr i8, ptr %i.dj, i64 8
  %i.do = load i32, ptr %i.dn, align 1
  %i.dp = zext i32 %i.do to i64
  %i.dq = xor i64 %i.dp, 1852140399
  %i.dr = or i64 %i.dm, %i.dq
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.au, label %bb.aw

bb.aq:                                            ; preds = %bb.ao
  %i.dv = load i64, ptr %i.dj, align 1
  %i.dw = xor i64 %i.dv, 6877952597994535013
  %i.dx = getelementptr i8, ptr %i.dj, i64 8
  %i.dy = load i16, ptr %i.dx, align 1
  %i.dz = zext i16 %i.dy to i64
  %i.ea = xor i64 %i.dz, 28265
  %i.eb = or i64 %i.dw, %i.ea
  %i.ec = icmp ne i64 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.av, label %bb.aw

bb.ar:                                            ; preds = %bb.an
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.aw [
    i64 12, label %bb.as
    i64 10, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ef = load i64, ptr %i.dj, align 1
  %i.eg = xor i64 %i.ef, 8385547970646598497
  %i.eh = getelementptr i8, ptr %i.dj, i64 8
  %i.ei = load i32, ptr %i.eh, align 1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = xor i64 %i.ej, 1852140399
  %i.el = or i64 %i.eg, %i.ek
  %i.em = icmp ne i64 %i.el, 0
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.au, label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.ep = load i64, ptr %i.dj, align 1
  %i.eq = xor i64 %i.ep, 6877952597994535013
  %i.er = getelementptr i8, ptr %i.dj, i64 8
  %i.es = load i16, ptr %i.er, align 1
  %i.et = zext i16 %i.es to i64
  %i.eu = xor i64 %i.et, 28265
  %i.ev = or i64 %i.eq, %i.eu
  %i.ew = icmp ne i64 %i.ev, 0
  %i.ex = zext i1 %i.ew to i32
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.av, label %bb.aw

.loopexit432:                                     ; preds = %.noexc62.i.1, %.noexc62.i
  %.lcssa381 = phi ptr [ %i.dj, %.noexc62.i ], [ %i.hc, %.noexc62.i.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1445
  br label %.loopexit

.loopexit.i43:                                    ; preds = %.loopexit.i43.loopexit.split-lp, %.loopexit.i43.loopexit.loopexit.split-lp, %.loopexit.i43.loopexit.loopexit, %bb.cn, %.body.i, %.loopexit.split-lp.i
  %.sroa.045.1.i = phi i8 [ %.sroa.045.4.i, %bb.cn ], [ 1, %.body.i ], [ %.sroa.045.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.i43.loopexit.loopexit ], [ 1, %.loopexit.i43.loopexit.loopexit.split-lp ], [ 1, %.loopexit.i43.loopexit.split-lp ]
  %.pn.i = phi { ptr, i32 } [ %i.jm, %bb.cn ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp, %.loopexit.i43.loopexit.split-lp ], [ %lpad.loopexit427, %.loopexit.i43.loopexit.loopexit ], [ %lpad.loopexit.split-lp428, %.loopexit.i43.loopexit.loopexit.split-lp ] ; 2 uses
  %i.ez = load i64, ptr %i.k, align 8, !range !28, !noalias !1408, !noundef !3
  %i.fa = icmp ne i64 %i.ez, -9223372036854775808
  %i.fb = trunc nuw i8 %.sroa.045.1.i to i1
  %or.cond3.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond3.i, label %bb.ct, label %common.resume

.loopexit.i43.loopexit.loopexit:                  ; preds = %bb.ba, %bb.aw, %bb.am, %bb.ak
  %lpad.loopexit427 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i43

.loopexit.i43.loopexit.loopexit.split-lp:         ; preds = %bb.bk, %bb.bm, %bb.bx, %bb.cb
  %lpad.loopexit.split-lp428 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i43

.loopexit.i43.loopexit.split-lp:                  ; preds = %.loopexit.i.i.i68.i, %bb.bh, %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i43

.loopexit.split-lp.i:                             ; preds = %.invoke, %bb.co, %bb.cf, %.loopexit426, %.loopexit.i.i.i.i
  %.sroa.045.2.ph.i = phi i8 [ %.sroa.045.4.i, %bb.co ], [ 1, %.loopexit426 ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.invoke ], [ 1, %bb.cf ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i43

.loopexit431:                                     ; preds = %bb.bl, %bb.al
  %.sroa.4.0.i.ph.lcssa394 = phi i64 [ undef, %bb.al ], [ %i.gp, %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1408
  %i.fc = load i64, ptr %i.k, align 8, !range !28, !noalias !1408, !noundef !3
  %.not54.i = icmp eq i64 %i.fc, -9223372036854775808
  br i1 %.not54.i, label %bb.cf, label %bb.ce

bb.au:                                            ; preds = %bb.as, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1445
  %i.fd = load i64, ptr %i.k, align 8, !range !28, !noalias !1408, !noundef !3
  %.not56.i = icmp eq i64 %i.fd, -9223372036854775808
  br i1 %.not56.i, label %bb.ax, label %.invoke, !prof !452

bb.av:                                            ; preds = %bb.at, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1445
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !1452, !noalias !1455, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i67.i = load i64, ptr %i.dd, align 8, !alias.scope !1458, !noalias !1459 ; 2 uses
  %i.fg = icmp ult i64 %.promoted.i.i.i.i67.i, %i.ff
  br i1 %i.fg, label %.lr.ph.i.i.i.i70.i, label %.loopexit.i.i.i68.i

bb.aw:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1445
  %i.fh = invoke fastcc noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.db)
          to label %bb.cd unwind label %.loopexit.i43.loopexit.loopexit, !noalias !1421 ; 2 uses

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1408
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !1466, !noalias !1469, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.dd, align 8, !alias.scope !1476, !noalias !1477 ; 2 uses
  %i.fk = icmp ult i64 %.promoted.i.i.i.i.i, %i.fj
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ax
  %i.fl = load ptr, ptr %i.dc, align 8, !alias.scope !1466, !noalias !1469, !nonnull !3, !noundef !3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %.lr.ph.i.i.i.i.i
  %i.fm = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fp, %bb.az ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !noalias !1479, !noundef !3
  switch i8 %i.fo, label %.loopexit426 [
    i8 32, label %bb.az
    i8 10, label %bb.az
    i8 9, label %bb.az
    i8 13, label %bb.az
    i8 58, label %bb.ba
  ], !prof !812

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay
  %i.fp = add i64 %i.fm, 1                        ; 3 uses
  store i64 %i.fp, ptr %i.dd, align 8, !alias.scope !1480, !noalias !1477
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fp, %i.fj
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ay

.loopexit.i.i.i.i:                                ; preds = %bb.ax, %bb.bv, %bb.az, %bb.ca
  %i.fq = phi ptr [ %i.gu, %bb.ca ], [ %i.db, %bb.az ], [ %i.db, %bb.ax ], [ %i.gu, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1483
  store i64 3, ptr %i.d, align 8, !noalias !1483
  %i.fr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fq, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc63.i unwind label %.loopexit.split-lp.i, !noalias !1421

.noexc63.i:                                       ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1483
  br label %.loopexit91.i

.loopexit426:                                     ; preds = %bb.bw, %bb.ay
  %.lcssa375 = phi ptr [ %i.db, %bb.ay ], [ %i.gu, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1483
  store i64 6, ptr %i.e, align 8, !noalias !1483
  %i.fs = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.lcssa375, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc64.i unwind label %.loopexit.split-lp.i, !noalias !1421

.noexc64.i:                                       ; preds = %.loopexit426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1483
  br label %.loopexit91.i

bb.ba:                                            ; preds = %bb.ay
  %i.ft = add i64 %i.fm, 1
  store i64 %i.ft, ptr %i.dd, align 8, !alias.scope !1484, !noalias !1487
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.db)
          to label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %.loopexit.i43.loopexit.loopexit, !noalias !1421

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ba
  %.pr.i = load i64, ptr %i.j, align 8, !noalias !1408 ; 4 uses
  %i.fu = icmp eq i64 %.pr.i, -9223372036854775808
  %.pre.i = load ptr, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !1408 ; 4 uses
  br i1 %i.fu, label %.loopexit91.i, label %bb.bb

.loopexit91.i:                                    ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1, %.noexc64.i, %.noexc63.i
  %i.fv = phi ptr [ %i.fs, %.noexc64.i ], [ %i.fr, %.noexc63.i ], [ %.pre.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %.pre.i.1, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1408
  br label %.loopexit

bb.bb:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.649.0.copyload.i = load i64, ptr %.sroa.649.0..sroa_idx.i, align 8, !noalias !1408 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1408
  %i.fw = load i64, ptr %i.k, align 8, !range !28, !alias.scope !1488, !noalias !1408, !noundef !3
  %i.fx = icmp eq i64 %i.fw, -9223372036854775808
  br i1 %i.fx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %.loopexit433, !noalias !1421

.loopexit433:                                     ; preds = %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %bb.bz
  %lpad.loopexit.split-lp437 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp, %.loopexit433
  %.sroa.649.0.copyload.i.lcssa = phi i64 [ %.sroa.649.0.copyload.i, %.loopexit433 ], [ %.sroa.649.0.copyload.i.1, %.loopexit.split-lp ]
  %.pr.i.lcssa347 = phi i64 [ %.pr.i, %.loopexit433 ], [ %.pr.i.1, %.loopexit.split-lp ]
  %.pre.i.lcssa344 = phi ptr [ %.pre.i, %.loopexit433 ], [ %.pre.i.1, %.loopexit.split-lp ]
  %lpad.phi438 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit433 ], [ %lpad.loopexit.split-lp437, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.be, !noalias !1421

bb.be:                                            ; preds = %bb.bd
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1421
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %.loopexit439, !noalias !1421

.loopexit439:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %lpad.loopexit444 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp440:                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.1
  %lpad.loopexit.split-lp445 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit439, %.loopexit.split-lp440, %bb.bd
  %.sroa.649.0.copyload.i351 = phi i64 [ %.sroa.649.0.copyload.i.lcssa, %bb.bd ], [ %.sroa.649.0.copyload.i, %.loopexit439 ], [ %.sroa.649.0.copyload.i.1, %.loopexit.split-lp440 ]
  %.pr.i349 = phi i64 [ %.pr.i.lcssa347, %bb.bd ], [ %.pr.i, %.loopexit439 ], [ %.pr.i.1, %.loopexit.split-lp440 ]
  %.pre.i346 = phi ptr [ %.pre.i.lcssa344, %bb.bd ], [ %.pre.i, %.loopexit439 ], [ %.pre.i.1, %.loopexit.split-lp440 ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi438, %bb.bd ], [ %lpad.loopexit444, %.loopexit439 ], [ %lpad.loopexit.split-lp445, %.loopexit.split-lp440 ]
  store i64 %.pr.i349, ptr %i.k, align 8, !noalias !1408
  store ptr %.pre.i346, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !1408
  store i64 %.sroa.649.0.copyload.i351, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !1408
  br label %.loopexit.i43

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.bb
  store i64 %.pr.i, ptr %i.k, align 8, !noalias !1408
  store ptr %.pre.i, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !1408
  store i64 %.sroa.649.0.copyload.i, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !1408
  br label %.backedge

.invoke:                                          ; preds = %bb.au, %bb.bu, %.invoke.loopexit340
  %i.fz = phi ptr [ @7, %.invoke.loopexit340 ], [ @6, %bb.bu ], [ @6, %bb.au ]
  %i.ga = phi i64 [ 10, %.invoke.loopexit340 ], [ 12, %bb.bu ], [ 12, %bb.au ]
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15duplicate_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fz, i64 noundef %i.ga)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !noalias !1421

.lr.ph.i.i.i.i70.i:                               ; preds = %bb.av
  %i.gc = load ptr, ptr %i.dc, align 8, !alias.scope !1452, !noalias !1455, !nonnull !3, !noundef !3
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i.i70.i
  %i.gd = phi i64 [ %.promoted.i.i.i.i67.i, %.lr.ph.i.i.i.i70.i ], [ %i.gg, %bb.bg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !1492, !noundef !3
  switch i8 %i.gf, label %bb.bh [
    i8 32, label %bb.bg
    i8 10, label %bb.bg
    i8 9, label %bb.bg
    i8 13, label %bb.bg
    i8 58, label %bb.bj
  ], !prof !812

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf, %bb.bf
  %i.gg = add i64 %i.gd, 1                        ; 3 uses
  store i64 %i.gg, ptr %i.dd, align 8, !alias.scope !1493, !noalias !1459
  %exitcond.not.i.i.i.i71.i = icmp eq i64 %i.gg, %i.ff
  br i1 %exitcond.not.i.i.i.i71.i, label %.loopexit.i.i.i68.i, label %bb.bf

.loopexit.i.i.i68.i:                              ; preds = %bb.bg, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1496
  store i64 3, ptr %i.b, align 8, !noalias !1496
  %i.gh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.db, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc72.i unwind label %.loopexit.i43.loopexit.split-lp, !noalias !1421

.noexc72.i:                                       ; preds = %.loopexit.i.i.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1496
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1496
  store i64 6, ptr %i.c, align 8, !noalias !1496
  %i.gi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.db, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc73.i unwind label %.loopexit.i43.loopexit.split-lp, !noalias !1421

.noexc73.i:                                       ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1496
  br label %bb.bi

bb.bi:                                            ; preds = %.noexc73.i, %.noexc72.i
  %.sroa.0.0.i.ph.i.i69.i = phi ptr [ %i.gh, %.noexc72.i ], [ %i.gi, %.noexc73.i ]
  %i.gj = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i69.i, 1
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtB2e_16MsiTokenResponseNtB1a_11Deserialize11deserializeNtB29_9___VisitorNtB1a_7Visitor9visit_map17___DeserializeWithEB2g_.exit.i

bb.bj:                                            ; preds = %bb.bf
  %i.gk = add i64 %i.gd, 1
  store i64 %i.gk, ptr %i.dd, align 8, !alias.scope !1497, !noalias !1421
  %i.gl = invoke { i64, ptr } @_RINvXNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBe_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1A_7Visitor9visit_mapNtB3_17___DeserializeWithB1y_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3V_4read9SliceReadEEBg_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.db)
          to label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtB2e_16MsiTokenResponseNtB1a_11Deserialize11deserializeNtB29_9___VisitorNtB1a_7Visitor9visit_map17___DeserializeWithEB2g_.exit.i unwind label %.loopexit.i43.loopexit.split-lp, !noalias !1421

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtB2e_16MsiTokenResponseNtB1a_11Deserialize11deserializeNtB29_9___VisitorNtB1a_7Visitor9visit_map17___DeserializeWithEB2g_.exit.i: ; preds = %bb.bj, %bb.bi
  %.merged.i.i.i = phi { i64, ptr } [ %i.gj, %bb.bi ], [ %i.gl, %bb.bj ] ; 2 uses
  %i.gm = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.gn = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 2 uses
  %i.go = trunc nuw i64 %i.gm to i1
  br i1 %i.go, label %.loopexit, label %.outer.1

.outer.1:                                         ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtB2e_16MsiTokenResponseNtB1a_11Deserialize11deserializeNtB29_9___VisitorNtB1a_7Visitor9visit_map17___DeserializeWithEB2g_.exit.i
  %i.gp = ptrtoint ptr %i.gn to i64
  br label %bb.bk

bb.bk:                                            ; preds = %.backedge.1, %.outer.1
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1504
  invoke fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc.i46.1 unwind label %.loopexit.i43.loopexit.loopexit.split-lp, !noalias !1421

.noexc.i46.1:                                     ; preds = %bb.bk
  %i.gq = load i8, ptr %i.g, align 8, !range !451, !noalias !1504, !noundef !3
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %.loopexit430, label %bb.bl

bb.bl:                                            ; preds = %.noexc.i46.1
  %i.gs = load i8, ptr %i.ct, align 1, !range !451, !noalias !1504, !noundef !3
  %i.gt = trunc nuw i8 %i.gs to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1504
  br i1 %i.gt, label %bb.bm, label %.loopexit431

bb.bm:                                            ; preds = %bb.bl
  %i.gu = load ptr, ptr %i.l, align 8, !alias.scope !1505, !noalias !1423, !nonnull !3, !align !71, !noundef !3 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 40 ; 5 uses
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !1514, !noalias !1515, !noundef !3
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.gw, align 8, !alias.scope !1514, !noalias !1515
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i64 0, ptr %i.gz, align 8, !alias.scope !1516, !noalias !1515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1517
  invoke void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gu)
          to label %.noexc62.i.1 unwind label %.loopexit.i43.loopexit.loopexit.split-lp, !noalias !1421

.noexc62.i.1:                                     ; preds = %bb.bm
  %i.ha = load i64, ptr %i.f, align 8, !range !601, !noalias !1517, !noundef !3 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 2
  %i.hc = load ptr, ptr %i.cu, align 8, !noalias !1517, !nonnull !3, !noundef !3 ; 9 uses
  br i1 %i.hb, label %.loopexit432, label %bb.bn

bb.bn:                                            ; preds = %.noexc62.i.1
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1517 ; 2 uses
  %i.hd = trunc nuw i64 %i.ha to i1
  br i1 %i.hd, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.1, label %bb.cb [
    i64 12, label %bb.bq
    i64 10, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.he = load i64, ptr %i.hc, align 1
  %i.hf = xor i64 %i.he, 6877952597994535013
  %i.hg = getelementptr i8, ptr %i.hc, i64 8
  %i.hh = load i16, ptr %i.hg, align 1
  %i.hi = zext i16 %i.hh to i64
  %i.hj = xor i64 %i.hi, 28265
  %i.hk = or i64 %i.hf, %i.hj
  %i.hl = icmp ne i64 %i.hk, 0
  %i.hm = zext i1 %i.hl to i32
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %.invoke.loopexit340, label %bb.cb

bb.bq:                                            ; preds = %bb.bo
  %i.ho = load i64, ptr %i.hc, align 1
  %i.hp = xor i64 %i.ho, 8385547970646598497
  %i.hq = getelementptr i8, ptr %i.hc, i64 8
  %i.hr = load i32, ptr %i.hq, align 1
  %i.hs = zext i32 %i.hr to i64
  %i.ht = xor i64 %i.hs, 1852140399
  %i.hu = or i64 %i.hp, %i.ht
  %i.hv = icmp ne i64 %i.hu, 0
  %i.hw = zext i1 %i.hv to i32
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.bu, label %bb.cb

bb.br:                                            ; preds = %bb.bn
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.1, label %bb.cb [
    i64 12, label %bb.bt
    i64 10, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  %i.hy = load i64, ptr %i.hc, align 1
  %i.hz = xor i64 %i.hy, 6877952597994535013
  %i.ia = getelementptr i8, ptr %i.hc, i64 8
  %i.ib = load i16, ptr %i.ia, align 1
  %i.ic = zext i16 %i.ib to i64
  %i.id = xor i64 %i.ic, 28265
  %i.ie = or i64 %i.hz, %i.id
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = zext i1 %i.if to i32
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %.invoke.loopexit340, label %bb.cb

.invoke.loopexit340:                              ; preds = %bb.bs, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1517
  br label %.invoke

bb.bt:                                            ; preds = %bb.br
  %i.ii = load i64, ptr %i.hc, align 1
  %i.ij = xor i64 %i.ii, 8385547970646598497
  %i.ik = getelementptr i8, ptr %i.hc, i64 8
  %i.il = load i32, ptr %i.ik, align 1
  %i.im = zext i32 %i.il to i64
  %i.in = xor i64 %i.im, 1852140399
  %i.io = or i64 %i.ij, %i.in
  %i.ip = icmp ne i64 %i.io, 0
  %i.iq = zext i1 %i.ip to i32
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %bb.bt, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1517
  %i.is = load i64, ptr %i.k, align 8, !range !28, !noalias !1408, !noundef !3
  %.not56.i.1 = icmp eq i64 %i.is, -9223372036854775808
  br i1 %.not56.i.1, label %bb.bv, label %.invoke, !prof !452

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1408
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  %i.it = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !1522, !noalias !1469, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i.i.1 = load i64, ptr %i.gw, align 8, !alias.scope !1524, !noalias !1477 ; 2 uses
  %i.iv = icmp ult i64 %.promoted.i.i.i.i.i.1, %i.iu
  br i1 %i.iv, label %.lr.ph.i.i.i.i.i.1, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.1:                               ; preds = %bb.bv
  %i.iw = load ptr, ptr %i.gv, align 8, !alias.scope !1522, !noalias !1469, !nonnull !3, !noundef !3
  br label %bb.bw

bb.bw:                                            ; preds = %bb.ca, %.lr.ph.i.i.i.i.i.1
  %i.ix = phi i64 [ %.promoted.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.1 ], [ %i.je, %bb.ca ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !noalias !1526, !noundef !3
  switch i8 %i.iz, label %.loopexit426 [
    i8 32, label %bb.ca
    i8 10, label %bb.ca
    i8 9, label %bb.ca
    i8 13, label %bb.ca
    i8 58, label %bb.bx
  ], !prof !812

bb.bx:                                            ; preds = %bb.bw
  %i.ja = add i64 %i.ix, 1
  store i64 %i.ja, ptr %i.gw, align 8, !alias.scope !1527, !noalias !1487
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gu)
          to label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1 unwind label %.loopexit.i43.loopexit.loopexit.split-lp, !noalias !1421

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1: ; preds = %bb.bx
  %.pr.i.1 = load i64, ptr %i.j, align 8, !noalias !1408 ; 4 uses
  %i.jb = icmp eq i64 %.pr.i.1, -9223372036854775808
  %.pre.i.1 = load ptr, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !1408 ; 4 uses
  br i1 %i.jb, label %.loopexit91.i, label %bb.by

bb.by:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1
  %.sroa.649.0.copyload.i.1 = load i64, ptr %.sroa.649.0..sroa_idx.i, align 8, !noalias !1408 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1408
  %i.jc = load i64, ptr %i.k, align 8, !range !28, !alias.scope !1488, !noalias !1408, !noundef !3
  %i.jd = icmp eq i64 %i.jc, -9223372036854775808
  br i1 %i.jd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.1 unwind label %.loopexit.split-lp, !noalias !1421

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.1: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1 unwind label %.loopexit.split-lp440, !noalias !1421

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.1, %bb.by
  store i64 %.pr.i.1, ptr %i.k, align 8, !noalias !1408
  store ptr %.pre.i.1, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !1408
  store i64 %.sroa.649.0.copyload.i.1, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !1408
  br label %.backedge.1

bb.ca:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.je = add i64 %i.ix, 1                        ; 3 uses
  store i64 %i.je, ptr %i.gw, align 8, !alias.scope !1528, !noalias !1477
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.je, %i.iu
  br i1 %exitcond.not.i.i.i.i.i.1, label %.loopexit.i.i.i.i, label %bb.bw

bb.cb:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1517
  %i.jf = invoke fastcc noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.gu)
          to label %bb.cc unwind label %.loopexit.i43.loopexit.loopexit.split-lp, !noalias !1421 ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  %.not55.i.1 = icmp eq ptr %i.jf, null
  br i1 %.not55.i.1, label %.backedge.1, label %.loopexit

.backedge.1:                                      ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.1
  br label %bb.bk

bb.cd:                                            ; preds = %bb.aw
  %.not55.i = icmp eq ptr %i.fh, null
  br i1 %.not55.i, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  br label %bb.ak

bb.ce:                                            ; preds = %.loopexit431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1408
  br label %bb.cj

bb.cf:                                            ; preds = %.loopexit431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1408
  invoke void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 12)
          to label %bb.cg unwind label %.loopexit.split-lp.i, !noalias !1421

bb.cg:                                            ; preds = %bb.cf
  %i.jg = load i64, ptr %i.h, align 8, !range !28, !noalias !1408, !noundef !3 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, -9223372036854775808
  %i.ji = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !1408 ; 2 uses
  br i1 %i.jh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1408
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.652.0.copyload.i = load i64, ptr %.sroa.652.0..sroa_idx.i, align 8, !noalias !1408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1408
  store i64 %i.jg, ptr %i.i, align 8, !noalias !1408
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.jj, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !1408
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.652.0.copyload.i, ptr %.sroa.542.0..sroa_idx.i, align 8, !noalias !1408
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ce
  %.sroa.045.4.i = phi i8 [ 0, %bb.ce ], [ 1, %bb.ci ] ; 3 uses
  br i1 %i.da, label %bb.cl, label %bb.cm, !prof !452

bb.ck:                                            ; preds = %bb.co, %bb.ch
  %.sroa.13.0 = phi ptr [ %i.jj, %bb.ch ], [ %i.jl, %bb.co ]
  %.sroa.045.5.i = phi i8 [ 1, %bb.ch ], [ %.sroa.045.4.i, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1408
end_hunk_3
begin_hunk_4_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss_1__NtB2v_18TokenErrorResponseNtB1l_11Deserialize11deserialize9___VisitorEB2x_:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit63.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac), !noalias !1575
  br label %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss_1__NtBb_18TokenErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB37_4read9SliceReadEEBd_.exit

bb.ah:                                            ; preds = %bb.z, %.body.i
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1575
  unreachable

_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss_1__NtBb_18TokenErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB37_4read9SliceReadEEBd_.exit: ; preds = %bb.i, %bb.l, %bb.r, %bb.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit63.i
  %.sroa.11.sroa.0.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.l ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit63.i ], [ %i.cx, %bb.aa ], [ undef, %bb.r ]
  %.sroa.13.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.l ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit63.i ], [ %.sroa.1269.0.copyload.i, %bb.aa ], [ undef, %bb.r ]
  %.sroa.1257.0 = phi ptr [ undef, %bb.i ], [ undef, %bb.l ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit63.i ], [ %i.cu, %bb.aa ], [ undef, %bb.r ]
  %.sroa.1156.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.l ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit63.i ], [ %i.cr, %bb.aa ], [ undef, %bb.r ]
  %.sroa.8.1 = phi ptr [ %i.bm, %bb.i ], [ %i.bu, %bb.l ], [ %.sroa.8.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit63.i ], [ %.sroa.036.i.sroa.4.0.copyload, %bb.aa ], [ %i.ch, %bb.r ]
  %.sroa.053.1 = phi i64 [ -9223372036854775808, %bb.i ], [ -9223372036854775808, %bb.l ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit63.i ], [ %.sroa.036.i.sroa.0.0.copyload, %bb.aa ], [ -9223372036854775808, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.de = load i8, ptr %i.ay, align 8, !noundef !3
  %i.df = add i8 %i.de, 1
  store i8 %i.df, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.053.1, ptr %i.ah, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.11.sroa.0.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.6, i64 24, i1 false)
  %.sroa.1156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %.sroa.1156.0, ptr %.sroa.1156.0..sroa_idx, align 8
  %.sroa.1257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %.sroa.1257.0, ptr %.sroa.1257.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %i.dg = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.ak unwind label %bb.aj     ; 7 uses

bb.ai:                                            ; preds = %bb.as, %bb.g
  %.sink353 = phi ptr [ %i.dr, %bb.as ], [ %i.bg, %bb.g ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink353, ptr %i.dh, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.ep

bb.aj:                                            ; preds = %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss_1__NtBb_18TokenErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB37_4read9SliceReadEEBd_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB16_(ptr noalias noundef align 8 dereferenceable(72) %i.ah) #29
          to label %common.resume unwind label %bb.ao

bb.ak:                                            ; preds = %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss_1__NtBb_18TokenErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1t_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB37_4read9SliceReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  store ptr %i.dg, ptr %i.dj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.dk = load i64, ptr %i.ai, align 8, !range !28, !noundef !3 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, -9223372036854775808
  br i1 %i.dl, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not37 = icmp eq ptr %i.dg, null
  br i1 %.not37, label %.thread265, label %bb.an

.thread265:                                       ; preds = %bb.al
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  br label %.thread69

bb.am:                                            ; preds = %bb.ak
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !3, !align !71, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  %.not84 = icmp eq ptr %i.dg, null
  br i1 %.not84, label %.thread69, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseEBK_(ptr noalias noundef align 8 dereferenceable(72) %i.ai)
  br label %.thread69

bb.ao:                                            ; preds = %bb.ef, %bb.aj
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

.thread69:                                        ; preds = %.thread265, %bb.an, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.am
  %.sroa.09.075 = phi i64 [ -9223372036854775808, %bb.am ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ -9223372036854775808, %bb.an ], [ %i.dk, %.thread265 ]
  %.sroa.10.074 = phi ptr [ %i.dn, %bb.am ], [ %i.dn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.dg, %bb.an ], [ %.sroa.219.0.copyload, %.thread265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.ar

bb.ap:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.dg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ap
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef 40, i64 noundef 8) #26
  br label %.thread69

bb.ar:                                            ; preds = %.thread76, %.thread69
  %.sroa.10.1 = phi ptr [ %.sroa.10.074, %.thread69 ], [ %.sroa.10.281, %.thread76 ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.075, %.thread69 ], [ %.sroa.09.282, %.thread76 ] ; 2 uses
  %i.dq = icmp eq i64 %.sroa.09.1, -9223372036854775808
  br i1 %i.dq, label %bb.em, label %bb.en, !prof !4

bb.as:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 24, ptr %i.ag, align 8
  %i.dr = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ai

bb.at:                                            ; preds = %bb.f
  %i.ds = add i64 %i.ar, 1
  store i64 %i.ds, ptr %i.al, align 8, !alias.scope !1592
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %1, ptr %i.u, align 8, !noalias !1595
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 1, ptr %i.dt, align 8, !noalias !1595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1595
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !1595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1595
  store i64 -9223372036854775808, ptr %i.s, align 8, !noalias !1595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1595
  store i64 -9223372036854775808, ptr %i.r, align 8, !noalias !1595
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.663.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %.sroa.766.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %.sroa.5122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.6123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.644.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.747.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.5119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.626.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %.backedge, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1605
  invoke fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %.noexc.i45 unwind label %.loopexit.i42, !noalias !1608

.noexc.i45:                                       ; preds = %bb.au
  %i.dw = load i8, ptr %i.i, align 8, !range !451, !noalias !1605, !noundef !3
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.noexc.i45
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !1605, !nonnull !3, !align !71, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1605
  br label %.loopexit

bb.aw:                                            ; preds = %.noexc.i45
  %i.ea = load i8, ptr %i.du, align 1, !range !451, !noalias !1605, !noundef !3
  %i.eb = trunc nuw i8 %i.ea to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1605
  br i1 %i.eb, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  %i.ec = load ptr, ptr %i.u, align 8, !alias.scope !1609, !noalias !1610, !nonnull !3, !align !71, !noundef !3 ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 40 ; 11 uses
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !1623, !noalias !1626, !noundef !3
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !alias.scope !1623, !noalias !1626
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 0, ptr %i.eh, align 8, !alias.scope !1631, !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1632
  invoke void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ec)
          to label %.noexc158.i unwind label %.loopexit.i42, !noalias !1608

.noexc158.i:                                      ; preds = %bb.ax
  %i.ei = load i64, ptr %i.h, align 8, !range !601, !noalias !1632, !noundef !3 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 2
  %i.ek = load ptr, ptr %i.dv, align 8, !noalias !1632, !nonnull !3, !noundef !3 ; 11 uses
  br i1 %i.ej, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %.noexc158.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1632 ; 2 uses
  %i.el = trunc nuw i64 %i.ei to i1
  br i1 %i.el, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bm [
    i64 5, label %bb.ba
    i64 8, label %bb.bb
    i64 17, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  %i.em = load i32, ptr %i.ek, align 1
  %i.en = xor i32 %i.em, 1869771365
  %i.eo = getelementptr i8, ptr %i.ek, i64 4
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i32
  %i.er = xor i32 %i.eq, 114
  %i.es = or i32 %i.en, %i.er
  %i.et = icmp ne i32 %i.es, 0
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.bj, label %bb.bm

bb.bb:                                            ; preds = %bb.az
  %i.ew = load i64, ptr %i.ek, align 1
  %i.ex = icmp ne i64 %i.ew, 7235419221448094309
  %i.ey = zext i1 %i.ex to i32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.bk, label %bb.bm

bb.bc:                                            ; preds = %bb.az
  %i.fa = load i128, ptr %i.ek, align 1
  %i.fb = xor i128 %i.fa, 148091860367974257202334016117853549157
  %i.fc = getelementptr i8, ptr %i.ek, i64 16
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.fd to i128
  %i.ff = xor i128 %i.fe, 110
  %i.fg = or i128 %i.fb, %i.ff
  %i.fh = icmp ne i128 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.bl, label %bb.bm

bb.bd:                                            ; preds = %bb.ay
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bm [
    i64 5, label %bb.be
    i64 8, label %bb.bf
    i64 17, label %bb.bg
  ]

bb.be:                                            ; preds = %bb.bd
  %i.fk = load i32, ptr %i.ek, align 1
  %i.fl = xor i32 %i.fk, 1869771365
  %i.fm = getelementptr i8, ptr %i.ek, i64 4
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i32
  %i.fp = xor i32 %i.fo, 114
  %i.fq = or i32 %i.fl, %i.fp
  %i.fr = icmp ne i32 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bj, label %bb.bm

bb.bf:                                            ; preds = %bb.bd
  %i.fu = load i64, ptr %i.ek, align 1
  %i.fv = icmp ne i64 %i.fu, 7235419221448094309
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.bk, label %bb.bm

bb.bg:                                            ; preds = %bb.bd
  %i.fy = load i128, ptr %i.ek, align 1
  %i.fz = xor i128 %i.fy, 148091860367974257202334016117853549157
  %i.ga = getelementptr i8, ptr %i.ek, i64 16
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = zext i8 %i.gb to i128
  %i.gd = xor i128 %i.gc, 110
  %i.ge = or i128 %i.fz, %i.gd
  %i.gf = icmp ne i128 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.bl, label %bb.bm

bb.bh:                                            ; preds = %.noexc158.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1632
  br label %.loopexit

.body193.i:                                       ; preds = %bb.dh, %bb.da, %.body174.i, %.body.i50, %.loopexit.split-lp.i, %.loopexit.i42
  %.sroa.0114.1.ph.i = phi i8 [ %.sroa.0114.5.i, %bb.da ], [ 1, %.body174.i ], [ 1, %.body.i50 ], [ %.sroa.0114.8.i, %bb.dh ], [ 1, %.loopexit.i42 ], [ %.sroa.0114.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0116.1.ph.i = phi i8 [ %.sroa.0116.4.i, %bb.da ], [ 1, %.body174.i ], [ 1, %.body.i50 ], [ %.sroa.0116.4.i, %bb.dh ], [ 1, %.loopexit.i42 ], [ %.sroa.0116.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn145.ph.i = phi { ptr, i32 } [ %.pn.i46, %bb.da ], [ %eh.lpad-body175.i, %.body174.i ], [ %eh.lpad-body.i, %.body.i50 ], [ %i.jd, %bb.dh ], [ %lpad.loopexit.i, %.loopexit.i42 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.r, align 8, !noalias !1595
  %.not147.i = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %.not147.i, label %.body198.i, label %bb.ec

.loopexit.i42:                                    ; preds = %bb.cl, %bb.cb, %bb.br, %bb.bm, %bb.ax, %bb.au
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body193.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i47, %bb.ct, %bb.ck, %.loopexit.i.i.i179.i, %bb.ca, %.loopexit.i.i.i164.i, %bb.bq, %.loopexit.i.i.i.i
  %.sroa.0114.2.ph.i = phi i8 [ 1, %bb.ck ], [ 1, %.loopexit.i.i.i179.i ], [ 1, %bb.ct ], [ %.sroa.0114.8.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i47 ], [ 1, %bb.ca ], [ 1, %.loopexit.i.i.i164.i ], [ 1, %.invoke ], [ 1, %bb.bq ], [ 1, %.loopexit.i.i.i.i ]
  %.sroa.0116.2.ph.i = phi i8 [ 1, %bb.ck ], [ 1, %.loopexit.i.i.i179.i ], [ 1, %bb.ct ], [ %.sroa.0116.4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i47 ], [ 1, %bb.ca ], [ 1, %.loopexit.i.i.i164.i ], [ 1, %.invoke ], [ 1, %bb.bq ], [ 1, %.loopexit.i.i.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body193.i

bb.bi:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1595
  %i.gi = load i64, ptr %i.t, align 8, !range !28, !noalias !1595, !noundef !3
  %.not137.i = icmp eq i64 %i.gi, -9223372036854775808
  br i1 %.not137.i, label %bb.ct, label %bb.cs

bb.bj:                                            ; preds = %bb.be, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1632
  %i.gj = load i64, ptr %i.t, align 8, !range !28, !noalias !1595, !noundef !3
  %.not144.i = icmp eq i64 %i.gj, -9223372036854775808
  br i1 %.not144.i, label %bb.bn, label %.invoke, !prof !452

bb.bk:                                            ; preds = %bb.bf, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1632
  %i.gk = load i64, ptr %i.s, align 8, !range !28, !noalias !1595, !noundef !3
  %.not143.i = icmp eq i64 %i.gk, -9223372036854775808
  br i1 %.not143.i, label %bb.bx, label %.invoke, !prof !452

bb.bl:                                            ; preds = %bb.bg, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1632
  %i.gl = load i64, ptr %i.r, align 8, !range !28, !noalias !1595, !noundef !3
  %.not142.i = icmp eq i64 %i.gl, -9223372036854775808
  br i1 %.not142.i, label %bb.ch, label %.invoke, !prof !452

bb.bm:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1632
  %i.gm = invoke fastcc noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.ec)
          to label %bb.cr unwind label %.loopexit.i42, !noalias !1608 ; 2 uses

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1595
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !1639, !noalias !1642, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ee, align 8, !alias.scope !1649, !noalias !1650 ; 2 uses
  %i.gp = icmp ult i64 %.promoted.i.i.i.i.i, %i.go
  br i1 %i.gp, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bn
  %i.gq = load ptr, ptr %i.ed, align 8, !alias.scope !1639, !noalias !1642, !nonnull !3, !noundef !3
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.i.i
  %i.gr = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.gu, %bb.bp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !noalias !1652, !noundef !3
  switch i8 %i.gt, label %bb.bq [
    i8 32, label %bb.bp
    i8 10, label %bb.bp
    i8 9, label %bb.bp
    i8 13, label %bb.bp
    i8 58, label %bb.br
  ], !prof !812

bb.bp:                                            ; preds = %bb.bo, %bb.bo, %bb.bo, %bb.bo
  %i.gu = add i64 %i.gr, 1                        ; 3 uses
  store i64 %i.gu, ptr %i.ee, align 8, !alias.scope !1653, !noalias !1650
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gu, %i.go
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bo

.loopexit.i.i.i.i:                                ; preds = %bb.bn, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1656
  store i64 3, ptr %i.f, align 8, !noalias !1656
  %i.gv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ec, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc159.i unwind label %.loopexit.split-lp.i, !noalias !1608

.noexc159.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1656
  br label %.loopexit244.i

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1656
  store i64 6, ptr %i.g, align 8, !noalias !1656
  %i.gw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ec, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc160.i unwind label %.loopexit.split-lp.i, !noalias !1608

.noexc160.i:                                      ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1656
  br label %.loopexit244.i

bb.br:                                            ; preds = %bb.bo
  %i.gx = add i64 %i.gr, 1
  store i64 %i.gx, ptr %i.ee, align 8, !alias.scope !1657, !noalias !1660
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ec)
          to label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %.loopexit.i42, !noalias !1608

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.br
  %.pr236.i = load i64, ptr %i.q, align 8, !noalias !1595 ; 3 uses
  %i.gy = icmp eq i64 %.pr236.i, -9223372036854775808
  %.pre385.i = load ptr, ptr %.sroa.5119.0..sroa_idx.i, align 8, !noalias !1595 ; 3 uses
  br i1 %i.gy, label %.loopexit244.i, label %bb.bs

.loopexit244.i:                                   ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %.noexc160.i, %.noexc159.i
  %i.gz = phi ptr [ %i.gw, %.noexc160.i ], [ %i.gv, %.noexc159.i ], [ %.pre385.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1595
  br label %.loopexit

bb.bs:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.6120.0.copyload.i = load i64, ptr %.sroa.6120.0..sroa_idx.i, align 8, !noalias !1595 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1595
  %i.ha = load i64, ptr %i.t, align 8, !range !28, !alias.scope !1661, !noalias !1595, !noundef !3
  %i.hb = icmp eq i64 %i.ha, -9223372036854775808
  br i1 %i.hb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.bu, !noalias !1608

bb.bu:                                            ; preds = %bb.bt
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i50 unwind label %bb.bv, !noalias !1608

bb.bv:                                            ; preds = %bb.bu
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1608
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.bw, !noalias !1608

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body.i50

.body.i50:                                        ; preds = %bb.bw, %bb.bu
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.he, %bb.bw ], [ %i.hc, %bb.bu ]
  store i64 %.pr236.i, ptr %i.t, align 8, !noalias !1595
  store ptr %.pre385.i, ptr %.sroa.626.0..sroa_idx27.i, align 8, !noalias !1595
  store i64 %.sroa.6120.0.copyload.i, ptr %.sroa.7.0..sroa_idx29.i, align 8, !noalias !1595
  br label %.body193.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.bs
  store i64 %.pr236.i, ptr %i.t, align 8, !noalias !1595
  store ptr %.pre385.i, ptr %.sroa.626.0..sroa_idx27.i, align 8, !noalias !1595
  store i64 %.sroa.6120.0.copyload.i, ptr %.sroa.7.0..sroa_idx29.i, align 8, !noalias !1595
  br label %.backedge

bb.bx:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1595
  call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !1670, !noalias !1673, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i163.i = load i64, ptr %i.ee, align 8, !alias.scope !1680, !noalias !1681 ; 2 uses
  %i.hh = icmp ult i64 %.promoted.i.i.i.i163.i, %i.hg
  br i1 %i.hh, label %.lr.ph.i.i.i.i166.i, label %.loopexit.i.i.i164.i

.lr.ph.i.i.i.i166.i:                              ; preds = %bb.bx
  %i.hi = load ptr, ptr %i.ed, align 8, !alias.scope !1670, !noalias !1673, !nonnull !3, !noundef !3
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %.lr.ph.i.i.i.i166.i
  %i.hj = phi i64 [ %.promoted.i.i.i.i163.i, %.lr.ph.i.i.i.i166.i ], [ %i.hm, %bb.bz ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !noalias !1683, !noundef !3
  switch i8 %i.hl, label %bb.ca [
    i8 32, label %bb.bz
    i8 10, label %bb.bz
    i8 9, label %bb.bz
    i8 13, label %bb.bz
    i8 58, label %bb.cb
  ], !prof !812

bb.bz:                                            ; preds = %bb.by, %bb.by, %bb.by, %bb.by
  %i.hm = add i64 %i.hj, 1                        ; 3 uses
  store i64 %i.hm, ptr %i.ee, align 8, !alias.scope !1684, !noalias !1681
  %exitcond.not.i.i.i.i167.i = icmp eq i64 %i.hm, %i.hg
  br i1 %exitcond.not.i.i.i.i167.i, label %.loopexit.i.i.i164.i, label %bb.by

.loopexit.i.i.i164.i:                             ; preds = %bb.bx, %bb.bz
end_hunk_4
begin_hunk_5_@_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !71, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i8 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !451, !noundef !3
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 22, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !align !71, !noundef !3
  call void @_RINvXsi_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2h_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i8, ptr %i.a, align 8, !range !29, !noundef !3
  %i.m = icmp eq i8 %i.l, 22
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !align !71, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i8 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seedNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !451, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !71, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i8 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !451, !noundef !3
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 22, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !align !71, !noundef !3
  call void @_RINvXsi_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeINtNtCseqDwI8vvjGQ_10serde_json2de6MapKeyNtNtB2g_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i8, ptr %i.a, align 8, !range !29, !noundef !3
  %i.m = icmp eq i8 %i.l, 22
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !align !71, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i8 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !3, !align !71, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1733, !noalias !1736, !noundef !3 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !1739, !noalias !1740 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1733, !noalias !1736, !nonnull !3, !noundef !3
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !1742, !noundef !3
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !812

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !1743, !noalias !1740
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1727
  store i64 3, ptr %i.a, align 8, !noalias !1727
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1727
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1727
  store i64 6, ptr %i.b, align 8, !noalias !1727
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1727
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 22, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !1746
  tail call void @_RINvXsi_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2h_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de6MapKeyNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1754, !noalias !1749, !noundef !3
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !1754, !noalias !1749
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !1752, !noalias !1749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1757
  call void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !1749
  %i.g = load i64, ptr %i.a, align 8, !range !601, !noalias !1757, !noundef !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1757 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !1749, !noalias !1752
  store i8 22, ptr %0, align 8, !alias.scope !1749, !noalias !1752
  br label %_RINvXsh_NtCseqDwI8vvjGQ_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1757 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RINvXsj_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCseqDwI8vvjGQ_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !1758, !noalias !1761
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1758, !noalias !1761
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1758, !noalias !1761
  br label %_RINvXsh_NtCseqDwI8vvjGQ_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvXsh_NtCseqDwI8vvjGQ_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1757
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1769, !noalias !1772, !noundef !3 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !1775, !noalias !1776 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1769, !noalias !1772, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !1778, !noundef !3
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !812

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !1779, !noalias !1776
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1763
  store i64 3, ptr %i.o, align 8, !noalias !1763
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1763
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1763
  store i64 6, ptr %i.p, align 8, !noalias !1763
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1763
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !1782
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !1797
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.ei, %bb.bf ] ; 11 uses
  %.promoted.i177.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 7 uses
  %.sroa.7.0176.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0175.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i177.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !1801, !noundef !3 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !1806, !noalias !1809
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1797
  store i64 5, ptr %i.n, align 8, !noalias !1797
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1797
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !563

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !1810
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %exitcond.not.i54.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i54.not.i.i.i.i.i, label %bb.j, label %.loopexit246.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !1819, !noundef !3
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !1822, !noalias !1823
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit247.i.i.i.i.i, !prof !867

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %exitcond.not.i54.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i54.1.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1826, !noundef !3
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !1827, !noalias !1823
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit247.i.i.i.i.i, !prof !867

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %exitcond.not.i54.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i54.2.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1830, !noundef !3
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !1831, !noalias !1823
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %.loopexit247.i.i.i.i.i, !prof !867

.loopexit246.i.i.i.i.i:                           ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1832
  store i64 5, ptr %i.f, align 8, !noalias !1832
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1832
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.loopexit247.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1832
  store i64 9, ptr %i.e, align 8, !noalias !1832
end_hunk_5
begin_hunk_6_@_RINvYQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  store i64 5, ptr %i.d, align 8, !noalias !2020
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2020
  br label %bb.al

bb.t:                                             ; preds = %bb.r, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2020
  store i64 9, ptr %i.c, align 8, !noalias !2020
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2020
  br label %bb.al

bb.u:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !2022, !noalias !1952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %umax.i51.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.u) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  %exitcond.not.i53.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i53.not.i, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2031, !noundef !3
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !2034, !noalias !2035
  %.not.i54.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i54.i, label %bb.w, label %bb.ad, !prof !867

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  %exitcond.not.i53.1.i = icmp eq i64 %i.bg, %umax.i51.i
  br i1 %exitcond.not.i53.1.i, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !2038, !noundef !3
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !2039, !noalias !2035
  %.not.i54.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i54.1.i, label %bb.y, label %bb.ad, !prof !867

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  %exitcond.not.i53.2.i = icmp eq i64 %i.bj, %umax.i51.i
  br i1 %exitcond.not.i53.2.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !2042, !noundef !3
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !2043, !noalias !2035
  %.not.i54.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i54.2.i, label %bb.aa, label %bb.ad, !prof !867

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  %exitcond.not.i53.3.i = icmp eq i64 %i.bm, %umax.i51.i
  br i1 %exitcond.not.i53.3.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !2046, !noundef !3
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !2047, !noalias !2035
  %.not.i54.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i54.3.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit57.i, label %bb.ad, !prof !867

bb.ac:                                            ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2048
  store i64 5, ptr %i.b, align 8, !noalias !2048
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2048
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2048
  store i64 9, ptr %i.a, align 8, !noalias !2048
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2048
  br label %bb.am

bb.ae:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !2050, !noalias !1952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1973
  call fastcc void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false), !noalias !1952
  %i.bt = load i64, ptr %i.p, align 8, !range !562, !noalias !1973, !noundef !3 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.an, label %switch.lookup

bb.af:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !2053, !noalias !1952
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !1955, !noalias !1952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1973
  call void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !1952
  %i.by = load i64, ptr %i.n, align 8, !range !601, !noalias !1973, !noundef !3 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1973 ; 4 uses
  br i1 %i.bz, label %bb.ao, label %bb.ap

bb.ag:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !1955, !noalias !1952, !noundef !3
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !1955, !noalias !1952
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.at, label %bb.au, !prof !4

bb.ah:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !1955, !noalias !1952, !noundef !3
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !1955, !noalias !1952
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.bd, label %bb.be, !prof !4

bb.ai:                                            ; preds = %bb.l, %bb.k
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %bb.k ], [ %i.aq, %bb.l ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !1952, !noalias !1955
  store i8 22, ptr %0, align 8, !alias.scope !1952, !noalias !1955
  br label %bb.ak

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !2056, !noalias !1973
  br label %.thread.i

bb.aj:                                            ; preds = %.thread89.i, %.thread86.i, %bb.as
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !1973
  %i.cl = icmp eq i8 %.pr.i.pr, 22
  br i1 %i.cl, label %._crit_edge98.i, label %.thread.i, !prof !2059

._crit_edge98.i:                                  ; preds = %bb.aj
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1973
  br label %bb.bo

bb.ak:                                            ; preds = %bb.bp, %bb.bd, %bb.at, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1973
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.al:                                            ; preds = %bb.t, %bb.s
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %bb.s ], [ %i.bc, %bb.t ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !1952, !noalias !1955
  store i8 22, ptr %0, align 8, !alias.scope !1952, !noalias !1955
  br label %bb.ak

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit49.i: ; preds = %bb.r
  store i8 0, ptr %i.q, align 8, !alias.scope !2060, !noalias !1973
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !2060, !noalias !1973
  br label %.thread.i

bb.am:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.0.1.i56.ph.i = phi ptr [ %i.bq, %bb.ac ], [ %i.br, %bb.ad ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i56.ph.i, ptr %i.cn, align 8, !alias.scope !1952, !noalias !1955
  store i8 22, ptr %0, align 8, !alias.scope !1952, !noalias !1955
  br label %bb.ak

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit57.i: ; preds = %bb.ab
  store i8 0, ptr %i.q, align 8, !alias.scope !2063, !noalias !1973
  %.sroa.4.0..sroa_idx.i58.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i58.i, align 1, !alias.scope !2063, !noalias !1973
  br label %.thread.i

bb.an:                                            ; preds = %bb.ae
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !1973, !nonnull !3, !align !71, !noundef !3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !1952, !noalias !1955
  store i8 22, ptr %0, align 8, !alias.scope !1952, !noalias !1955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1973
  br label %bb.ak

switch.lookup:                                    ; preds = %bb.ae
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !1973
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc nuw i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !2066, !noalias !2069
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !2066, !noalias !2069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1973
  br label %.thread.i

bb.ao:                                            ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !1952, !noalias !1955
  store i8 22, ptr %0, align 8, !alias.scope !1952, !noalias !1955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1973
  br label %bb.ak

bb.ap:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1973 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  br i1 %i.cr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvXsj_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !1952
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  store i8 13, ptr %i.q, align 8, !alias.scope !2071, !noalias !2074
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !2071, !noalias !2074
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2071, !noalias !2074
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1973
  br label %bb.aj

bb.at:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1973
  store i64 24, ptr %i.m, align 8, !noalias !1973
  %i.cs = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1973
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !1952, !noalias !1955
  store i8 22, ptr %0, align 8, !alias.scope !1952, !noalias !1955
  br label %bb.ak

bb.au:                                            ; preds = %bb.ag
  %i.cu = add i64 %i.y, 1
  store i64 %i.cu, ptr %i.s, align 8, !alias.scope !2076, !noalias !1952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1973
  call void @_RINvXsj_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB24_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !1952
  %i.cv = load i8, ptr %i.cc, align 8, !alias.scope !1955, !noalias !1952, !noundef !3
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.cc, align 8, !alias.scope !1955, !noalias !1952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1973
  %i.cx = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.aw unwind label %bb.av, !noalias !1952 ; 7 uses

bb.av:                                            ; preds = %bb.au
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1gOyXocuPRE_10serde_core7private7content7ContentNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.k) #29
          to label %common.resume.i unwind label %bb.ba, !noalias !1952

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !1973
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.cx, ptr %i.cz, align 8, !noalias !1973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1973
  %i.da = load i8, ptr %i.l, align 8, !range !29, !noalias !1973, !noundef !3
  %i.db = icmp eq i8 %i.da, 22
  br i1 %i.db, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not31.i = icmp eq ptr %i.cx, null
  br i1 %.not31.i, label %.thread116.i, label %bb.az

.thread116.i:                                     ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1973
  br label %.thread86.i

bb.ay:                                            ; preds = %bb.aw
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !1973, !nonnull !3, !align !71, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !noalias !1973
  store i8 22, ptr %i.q, align 8, !noalias !1973
  %.not93.i = icmp eq ptr %i.cx, null
  br i1 %.not93.i, label %.thread86.i, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cx, ptr %i.df, align 8, !noalias !1973
  store i8 22, ptr %i.q, align 8, !noalias !1973
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1gOyXocuPRE_10serde_core7private7content7ContentECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.l), !noalias !1952
  br label %.thread86.i

bb.ba:                                            ; preds = %bb.bf, %bb.av
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1952
  unreachable

.thread86.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.az, %bb.ay, %.thread116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1973
  br label %bb.aj

bb.bb:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.cx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.bc, !noalias !1952

common.resume.sink.split.i:                       ; preds = %bb.bl, %bb.bc
  %.sink123.i = phi ptr [ %i.dn, %bb.bl ], [ %i.cx, %bb.bc ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.dw, %bb.bl ], [ %i.dh, %bb.bc ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink123.i, i64 noundef 40, i64 noundef 8) #26, !noalias !1952
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.bf, %common.resume.sink.split.i, %bb.av
  %common.resume.op.i = phi { ptr, i32 } [ %i.do, %bb.bf ], [ %i.cy, %bb.av ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.bc:                                            ; preds = %bb.bb
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.bb
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef 40, i64 noundef 8) #26, !noalias !1952
  br label %.thread86.i

bb.bd:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1973
  store i64 24, ptr %i.j, align 8, !noalias !1973
  %i.di = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1973
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !alias.scope !1952, !noalias !1955
  store i8 22, ptr %0, align 8, !alias.scope !1952, !noalias !1955
  br label %bb.ak

bb.be:                                            ; preds = %bb.ah
  %i.dk = add i64 %i.y, 1
  store i64 %i.dk, ptr %i.s, align 8, !alias.scope !2079, !noalias !1952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1973
  call void @_RINvXsj_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB24_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !1952
  %i.dl = load i8, ptr %i.cg, align 8, !alias.scope !1955, !noalias !1952, !noundef !3
  %i.dm = add i8 %i.dl, 1
  store i8 %i.dm, ptr %i.cg, align 8, !alias.scope !1955, !noalias !1952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1973
  %i.dn = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.bg unwind label %bb.bf, !noalias !1952 ; 7 uses

bb.bf:                                            ; preds = %bb.be
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1gOyXocuPRE_10serde_core7private7content7ContentNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.h) #29
          to label %common.resume.i unwind label %bb.ba, !noalias !1952

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1973
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.dn, ptr %i.dp, align 8, !noalias !1973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1973
  %i.dq = load i8, ptr %i.i, align 8, !range !29, !noalias !1973, !noundef !3
  %i.dr = icmp eq i8 %i.dq, 22
  br i1 %i.dr, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not.i = icmp eq ptr %i.dn, null
  br i1 %.not.i, label %.thread118.i, label %bb.bj

.thread118.i:                                     ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1973
  br label %.thread89.i

bb.bi:                                            ; preds = %bb.bg
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !1973, !nonnull !3, !align !71, !noundef !3
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dt, ptr %i.du, align 8, !noalias !1973
  store i8 22, ptr %i.q, align 8, !noalias !1973
  %.not92.i = icmp eq ptr %i.dn, null
  br i1 %.not92.i, label %.thread89.i, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dn, ptr %i.dv, align 8, !noalias !1973
  store i8 22, ptr %i.q, align 8, !noalias !1973
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1gOyXocuPRE_10serde_core7private7content7ContentECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.i), !noalias !1952
  br label %.thread89.i

.thread89.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit59.i, %bb.bj, %bb.bi, %.thread118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1973
  br label %bb.aj

bb.bk:                                            ; preds = %bb.bi
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.dn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit59.i unwind label %bb.bl, !noalias !1952

bb.bl:                                            ; preds = %bb.bk
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit59.i: ; preds = %bb.bk
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef 40, i64 noundef 8) #26, !noalias !1952
  br label %.thread89.i

bb.bm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1973
  store i64 10, ptr %i.g, align 8, !noalias !1973
  %i.dx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1973
  br label %bb.bo

bb.bn:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1973
  call fastcc void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !1952
end_hunk_6
begin_hunk_7_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrEEENtNtNtB1N_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.z, %bb.e ]
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #29
          to label %common.resume.i.i.i unwind label %bb.j, !noalias !2954

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrENtNtNtBL_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.h, !noalias !2954

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume.i.i.i unwind label %bb.i, !noalias !2954

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !2954
  unreachable

common.resume.i.i.i:                              ; preds = %bb.h, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !2954
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad), !noalias !2954
  %i.ah = icmp eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1e_3vec3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1e_3vec3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.b
  %i.ai = mul i64 %i.b, 48                        ; 2 uses
  %i.aj = add i64 %i.ai, 48                       ; 2 uses
  %i.ak = add i64 %i.b, 17
  %i.al = add i64 %i.ak, %i.aj                    ; 4 uses
  %i.am = icmp uge i64 %i.al, %i.aj
  %i.an = icmp ult i64 %i.al, 9223372036854775793
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrEENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1e_3vec3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !2948, !nonnull !3, !noundef !3
  %i.aq = sub i64 -48, %i.ai
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2948
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrEENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrEENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1e_3vec3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2965)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2965, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2971, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2971, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2972
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.c
  %.sroa.05.020.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %.sroa.107.018.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %.sroa.86.017.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.017.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.019.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.020.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2977
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -896 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.019.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.020.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.017.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [56 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  %i.x = add i64 %.sroa.107.018.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.e, !noalias !2971

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %.body.i.i.i unwind label %bb.f, !noalias !2971

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !2971
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.g, !noalias !2971

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.z, %bb.e ]
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.ac) #29
          to label %bb.i unwind label %bb.h, !noalias !2971

bb.h:                                             ; preds = %.body.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !2971
  unreachable

bb.i:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.ae), !noalias !2971
  %i.af = icmp eq i64 %i.x, 0
  br i1 %i.af, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.b
  %i.ag = mul i64 %i.b, 56
  %i.ah = icmp slt i64 %i.b, 329406144173384850
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = and i64 %i.ag, -16                      ; 2 uses
  %i.aj = add i64 %i.ai, 64                       ; 2 uses
  %i.ak = add nsw i64 %i.b, 17
  %i.al = add i64 %i.ak, %i.aj                    ; 4 uses
  %i.am = icmp uge i64 %i.al, %i.aj
  %i.an = icmp ult i64 %i.al, 9223372036854775793
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !2965, !nonnull !3, !noundef !3
  %i.aq = sub i64 -64, %i.ai
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2965
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.j
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2982)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2982, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2985)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2988, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !2988, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !2989
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %.sroa.108.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %.sroa.87.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.87.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !2994
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.v ; 2 uses
  %i.x = add i64 %.sroa.108.015.i.i, -1           ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -16
  %.val.i.i = load ptr, ptr %i.y, align 8, !noalias !2988 ; 5 uses
  %i.z = getelementptr i8, ptr %i.w, i64 -8
  %.val5.i.i = load ptr, ptr %i.z, align 8, !noalias !2988, !nonnull !3, !align !71, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %.val5.i.i, align 8, !invariant.load !3, !noalias !2988 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !2988

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBZ_6marker4SyncNtB2N_4SendEL_EEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !179, !invariant.load !3, !noalias !2988 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !180, !invariant.load !3, !noalias !2988
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #26, !noalias !2988
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !179, !invariant.load !3, !noalias !2988 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !180, !invariant.load !3, !noalias !2988
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #26, !noalias !2988
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.am = icmp eq i64 %i.x, 0
  br i1 %i.am, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.b
  %i.an = shl i64 %i.b, 5                         ; 2 uses
  %i.ao = add i64 %i.an, 32                       ; 2 uses
  %i.ap = add i64 %i.b, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !2982, !nonnull !3, !noundef !3
  %i.av = sub nuw nsw i64 -32, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2982
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1h_6marker4SyncNtB35_4SendEL_EENtNtB1Q_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1e_6marker4SyncNtB32_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.d = load <16 x i8>, ptr %i.a, align 16, !noalias !2999
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE15into_allocationCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.h = mul i64 %i.c, 48                         ; 2 uses
  %i.i = add i64 %i.h, 48                         ; 2 uses
  %i.j = add i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub i64 -48, %i.h
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE15into_allocationCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE15into_allocationCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.48.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.59.0 = phi ptr [ undef, %bb.a ], [ %i.o, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = icmp sgt <16 x i8> %i.d, splat (i8 -1)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.c
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.t, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.q, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.48.0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.59.0, ptr %.sroa.59.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNvXs19_NtNtCs1gOyXocuPRE_10serde_core2de5implsyNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(double noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXs19_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsfYVtenZkBsn_12arrow_schema(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19remove_entry_if_andB29_NCNvXNtNtB9_6future8key_lockINtB4S_7KeyLockB1M_B3A_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0NCB4P_s_0NCINvMs_NtB7_7segmentINtB6D_7HashMapB1e_B29_E19remove_entry_if_andB29_B4N_B6m_NCINvB6A_9remove_ifB4N_B6m_E0E0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB9_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19remove_entry_if_andB2J_NCINvB4c_13remove_waiterB1N_B4W_B6e_E0NCINvMs_NtB7_7segmentINtB8b_7HashMapB1e_B2J_E6removeB7r_E0NCINvB88_19remove_entry_if_andB2J_B7r_B83_NCB85_s_0E0EB50_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrENtNtNtBL_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs1gOyXocuPRE_10serde_core7private7content7ContentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCs1gOyXocuPRE_10serde_core7private7content7ContentBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbvkFyIu7lgC_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1gOyXocuPRE_10serde_core7private7content7ContentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs1gOyXocuPRE_10serde_core7private7content7ContentBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtB5_21AzureCliTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEEB7_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtB5_13TokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2m_4read9SliceReadEEB7_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

end_hunk_7
