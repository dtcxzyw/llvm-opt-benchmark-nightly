inline.NumInlined: 561
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit1: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 16 dereferenceable(192) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 16 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 16 dereferenceable(96) %i.b) #20
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 16 dereferenceable(96) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB24_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4s_5error5ErrorEEs_0EENtNtBR_8schedule16BlockingScheduleECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2g_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4E_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB27_9GetResult5bytes00EENtNtBR_8schedule16BlockingScheduleECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EENtNtB13_8schedule16BlockingScheduleE3newCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1v_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3T_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(176) %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1H_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB45_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1y_9GetResult5bytes00ENtNtBR_8schedule16BlockingScheduleECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE3newCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json3rawNtB6_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read7StrReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_strNtNtB8_3raw15BoxedFromStringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json3rawNtB6_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_strNtNtB8_3raw15BoxedFromStringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtCseqDwI8vvjGQ_10serde_json3rawNtB6_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_strNtNtB8_5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !30, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !31, !noundef !6 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.l, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.m = icmp ugt i64 %i.f, %2
  br i1 %i.m, label %bb.e, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE16into_boxed_sliceCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.d
  %i.n = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 9223372036854775807) %2, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.i

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.e
  %i.p = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.p, -9223372036854775807
  br i1 %.not.i, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i, label %bb.g, !prof !360

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %.sroa.511.0.copyload.pre.i = load i64, ptr %i.l, align 8, !alias.scope !361
  %.sroa.410.0.copyload.i.pre = load ptr, ptr %i.k, align 8, !alias.scope !361
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE16into_boxed_sliceCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.g:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.q = extractvalue { i64, i64 } %i.n, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.q) #19
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %i.o

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE16into_boxed_sliceCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i
  %.sroa.410.0.copyload.i = phi ptr [ %.sroa.410.0.copyload.i.pre, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i ], [ %i.i, %bb.d ]
  %.sroa.511.0.copyload.i = phi i64 [ %.sroa.511.0.copyload.pre.i, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge.i ], [ %2, %bb.d ] ; 2 uses
  %i.s = icmp sgt i64 %.sroa.511.0.copyload.i, -1
  call void @llvm.assume(i1 %i.s)
  store ptr %.sroa.410.0.copyload.i, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.511.0.copyload.i, ptr %i.t, align 8
  ret void

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.l, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtB8_11Deserialize11deserializeQINtNtB1k_2de12DeserializerNtNtB1k_4read9SliceReadEECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtB8_5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.063 = alloca [136 x i8], align 8         ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [72 x i8], align 8                ; 24 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url13path_segments(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.k, %bb.h, %bb.g, %bb.d, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.s = load i32, ptr %i.r, align 4, !range !364, !noundef !6
  %.not = icmp eq i32 %i.s, 1114112
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.t = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE9next_backCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.p)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.cx

bb.f:                                             ; preds = %bb.d
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1        ; 5 uses
  %.not121 = icmp eq ptr %i.u, null
  br i1 %.not121, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.v, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %bb.b

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.aw, %bb.k, %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.e, align 8, !range !30, !noundef !6
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !31, !noundef !6 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.aa, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #19
          to label %bb.i unwind label %bb.b

bb.l:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ad = icmp ule i64 %i.v, %i.z
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not122 = icmp eq i64 %i.v, 0
  br i1 %.not122, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  store i64 %i.z, ptr %i.n, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ac, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %i.v, ptr %.sroa.675.0..sroa_idx, align 8
  %i.ae = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE9next_backCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.p)
          to label %bb.o unwind label %.thread192.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.m

.thread192.loopexit:                              ; preds = %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread188

.thread192.loopexit.split-lp.loopexit:            ; preds = %bb.s
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %.thread188

.thread192.loopexit.split-lp.loopexit.split-lp:   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit170, %bb.aj, %bb.m, %select.unfold.i
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %.thread188

bb.o:                                             ; preds = %bb.m
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 5 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = load i64, ptr %.sroa.675.0..sroa_idx, align 8, !noundef !6 ; 11 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %bb.p, label %.lr.ph.split.i.i

bb.p:                                             ; preds = %bb.o
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsj34PGqTgg0L_16deltalake_lakefs.exit, %.loopexit, %bb.p
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.b

.lr.ph.split.i.i:                                 ; preds = %bb.o
  %i.ak = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 6 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.lr.ph.split.i.i
  %i.al = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.ba, %bb.v ] ; 5 uses
  %i.am = sub nuw nsw i64 %i.ah, %i.al            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  %i.ao = icmp samesign ult i64 %i.am, 16
  br i1 %i.ao, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %bb.r
  %.not.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ap = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef range(i64 0, -9223372036854775808) %i.am)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i unwind label %.thread192.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.t, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.am, %bb.t ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.t ], [ 1, %.lr.ph.i.i.i ]
  %i.aq = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ar = insertvalue { i64, i64 } %i.aq, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.t
  %.sroa.01.05.i.i.i = phi i64 [ %i.av, %bb.t ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.01.05.i.i.i
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !365, !noalias !368, !noundef !6
  %i.au = icmp eq i8 %i.at, 46
  br i1 %i.au, label %._crit_edge.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.av = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.am
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.s, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.ar, %._crit_edge.i.i.i ], [ %i.ap, %bb.s ] ; 2 uses
  %i.aw = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.u, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.u:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i
  %i.ay = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.az = add nuw i64 %i.al, 1
  %i.ba = add i64 %i.az, %i.ay                    ; 5 uses
  %.not13.i.i = icmp ugt i64 %i.ba, %i.ah
  %i.bb = add i64 %i.al, %i.ay
  %or.cond.i.i.not = icmp ult i64 %i.bb, %i.ah
  br i1 %or.cond.i.i.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  br i1 %.not13.i.i, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.r

bb.w:                                             ; preds = %bb.u
  %i.bc = add i64 %i.al, %i.ay                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bc
  %lhsc = load i8, ptr %i.bd, align 1
  %i.be = icmp eq i8 %lhsc, 46
  br i1 %i.be, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.v

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i, %bb.v, %bb.w
  %.sroa.9.0 = phi i64 [ %i.ba, %bb.w ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ %i.ba, %bb.v ]
  %.sroa.17.0 = phi i8 [ 0, %bb.w ], [ 1, %bb.v ], [ 1, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %i.ba, %bb.w ], [ 0, %bb.v ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.bc, %bb.w ], [ %i.ah, %bb.v ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 3 uses
  switch i64 %.sroa.4.1.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.bf = load i8, ptr %i.ak, align 1, !alias.scope !374, !noalias !377, !noundef !6 ; 2 uses
  switch i8 %i.bf, label %bb.y [
    i8 43, label %.loopexit
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %.not124, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.thread283, %.loopexit285
  store i64 -9223372036854775808, ptr %0, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit170

bb.at:                                            ; preds = %.loopexit285
  %i.gk = load ptr, ptr %i.gi, align 8, !nonnull !6, !noundef !6
  %i.gl = getelementptr [16 x i8], ptr %i.gk, i64 %.pre ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 -16
  %i.gn = load ptr, ptr %i.gm, align 8, !nonnull !6, !noundef !6
  %i.go = getelementptr i8, ptr %i.gl, i64 -8
  %i.gp = load i64, ptr %i.go, align 8, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.gp, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.av unwind label %bb.au

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit170: ; preds = %bb.ck, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %.thread192.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit164: ; preds = %bb.bd, %bb.au
  %.pn = phi { ptr, i32 } [ %i.gq, %bb.au ], [ %i.hj, %bb.bd ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread188 unwind label %bb.cv

bb.au:                                            ; preds = %bb.ck, %bb.aw, %bb.at
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit164

bb.av:                                            ; preds = %bb.at
  %i.gr = load i64, ptr %i.d, align 8, !range !30, !noundef !6
  %i.gs = trunc nuw i64 %i.gr to i1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !range !31, !noundef !6 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.gs, label %bb.aw, label %bb.ax, !prof !8

bb.aw:                                            ; preds = %bb.av
  %i.gw = load i64, ptr %i.gv, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gu, i64 %i.gw) #19
          to label %bb.i unwind label %bb.au

bb.ax:                                            ; preds = %bb.av
  %i.gx = load ptr, ptr %i.gv, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gy = icmp ule i64 %i.gp, %i.gu
  call void @llvm.assume(i1 %i.gy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not125 = icmp eq i64 %i.gp, 0
  br i1 %.not125, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  store i64 %i.gu, ptr %i.k, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.gx, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.gp, ptr %.sroa.684.0..sroa_idx, align 8
  %.not126 = icmp eq ptr %i.af, null
  br i1 %.not126, label %bb.bi, label %bb.ba

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull align 1 %i.gn, i64 %i.gp, i1 false)
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ay
  switch i64 %i.ag, label %bb.bi [
    i64 15, label %bb.bb
    i64 10, label %bb.bj
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.gz = load i64, ptr %i.af, align 1
  %i.ha = xor i64 %i.gz, 6873730425965278047
  %i.hb = getelementptr i8, ptr %i.af, i64 7
  %i.hc = load i64, ptr %i.hb, align 1
  %i.hd = xor i64 %i.hc, 8319390330368516959
  %i.he = or i64 %i.ha, %i.hd
  %i.hf = icmp ne i64 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.hi = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE9next_backCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.p)
          to label %bb.be unwind label %bb.bd     ; 2 uses

bb.bd:                                            ; preds = %bb.bv, %bb.ce, %bb.cm, %bb.bx, %bb.bk, %bb.bg, %bb.bc
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit164 unwind label %bb.cv

bb.be:                                            ; preds = %bb.bc
  %i.hk = extractvalue { ptr, i64 } %i.hi, 0      ; 3 uses
  %.not128 = icmp ne ptr %i.hk, null
  %i.hl = extractvalue { ptr, i64 } %i.hi, 1
  %i.hm = icmp eq i64 %i.hl, 10
  %or.cond149 = select i1 %.not128, i1 %i.hm, i1 false
  br i1 %or.cond149, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.hn = load i64, ptr %i.hk, align 1
  %i.ho = xor i64 %i.hn, 7809067431546414175
  %i.hp = getelementptr i8, ptr %i.hk, i64 8
  %i.hq = load i16, ptr %i.hp, align 1
  %i.hr = zext i16 %i.hq to i64
  %i.hs = xor i64 %i.hr, 26479
  %i.ht = or i64 %i.ho, %i.hs
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  %i.hx = invoke noundef zeroext i1 @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4path27path_contains_delta_log_dir(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.j)
          to label %bb.bh unwind label %bb.bd

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %not. = xor i1 %i.hx, true
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bb, %bb.bh, %bb.bl, %bb.ay, %bb.bj, %bb.ba, %bb.be, %bb.bf
  %.sroa.035.0 = phi i1 [ false, %bb.ba ], [ false, %bb.bh ], [ false, %bb.bf ], [ false, %bb.be ], [ %i.il, %bb.bl ], [ false, %bb.bj ], [ false, %bb.ay ], [ false, %bb.bb ] ; 7 uses
  %.sroa.085.0 = phi i1 [ false, %bb.ba ], [ %not., %bb.bh ], [ false, %bb.bf ], [ false, %bb.be ], [ false, %bb.bl ], [ false, %bb.bj ], [ false, %bb.ay ], [ false, %bb.bb ]
  %i.hy = load ptr, ptr %i.gi, align 8, !nonnull !6, !noundef !6 ; 28 uses
  %i.hz = load i64, ptr %i.gj, align 8, !noundef !6
  switch i64 %i.hz, label %.thread197 [
    i64 1, label %bb.bm
    i64 2, label %bb.bp
    i64 3, label %bb.bz
    i64 4, label %bb.co
  ]

bb.bj:                                            ; preds = %bb.ba
  %i.ia = load i64, ptr %i.af, align 1
  %i.ib = xor i64 %i.ia, 7809067431546414175
  %i.ic = getelementptr i8, ptr %i.af, i64 8
  %i.id = load i16, ptr %i.ic, align 1
  %i.ie = zext i16 %i.id to i64
  %i.if = xor i64 %i.ie, 26479
  %i.ig = or i64 %i.ib, %i.if
  %i.ih = icmp ne i64 %i.ig, 0
  %i.ii = zext i1 %i.ih to i32
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.bk, label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  %i.ik = invoke noundef zeroext i1 @_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4path27path_contains_delta_log_dir(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.i)
          to label %bb.bl unwind label %bb.bd

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.il = xor i1 %i.ik, true
  br label %bb.bi

bb.bm:                                            ; preds = %bb.bi
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.in = load i64, ptr %i.im, align 8, !noundef !6
  switch i64 %i.in, label %.thread197 [
    i64 4, label %bb.bn
    i64 3, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.io = load ptr, ptr %i.hy, align 8, !nonnull !6, !noundef !6
  %i.ip = load i32, ptr %i.io, align 1
  %i.iq = icmp ne i32 %i.ip, 1852797802
  %i.ir = zext i1 %i.iq to i32
  %i.is = icmp eq i32 %i.ir, 0
  %i.it = and i1 %.sroa.035.0, %i.is
  %spec.select202 = select i1 %i.it, i32 0, i32 7
  br label %.thread197

bb.bo:                                            ; preds = %bb.bm
  %i.iu = load ptr, ptr %i.hy, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.iv = load i16, ptr %i.iu, align 1
  %i.iw = xor i16 %i.iv, 29283
  %i.ix = getelementptr i8, ptr %i.iu, i64 2
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = zext i8 %i.iy to i16
  %i.ja = xor i16 %i.iz, 99
  %i.jb = or i16 %i.iw, %i.ja
  %i.jc = icmp ne i16 %i.jb, 0
  %i.jd = zext i1 %i.jc to i32
  %i.je = icmp eq i32 %i.jd, 0
  %or.cond = and i1 %.sroa.035.0, %i.je
  %spec.select151 = select i1 %or.cond, i32 6, i32 7
  br label %.thread197

.thread197:                                       ; preds = %bb.bn, %bb.bm, %bb.bo, %bb.bu, %bb.bt, %bb.cf, %bb.ch, %bb.cp, %bb.cr, %bb.br, %bb.bs, %bb.bi, %.thread198, %bb.cg, %bb.co, %bb.cq, %bb.cu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.cj, %bb.by
  %.sroa.042.0 = phi i32 [ 4, %bb.cu ], [ 7, %bb.bt ], [ %spec.select151, %bb.bo ], [ %.sroa.042.1, %bb.by ], [ %spec.select, %bb.bu ], [ 3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ 5, %bb.cj ], [ 7, %bb.cq ], [ 7, %bb.co ], [ 7, %bb.cg ], [ 7, %.thread198 ], [ 7, %bb.bi ], [ 7, %bb.bs ], [ %spec.select202, %bb.bn ], [ 7, %bb.br ], [ 7, %bb.bm ], [ 7, %bb.cr ], [ 7, %bb.cp ], [ 7, %bb.ch ], [ 7, %bb.cf ]
  %.sroa.10.0 = phi i32 [ %i.om, %bb.cu ], [ undef, %bb.bt ], [ undef, %bb.bo ], [ undef, %bb.by ], [ undef, %bb.bu ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ undef, %bb.cj ], [ undef, %bb.cq ], [ undef, %bb.co ], [ undef, %bb.cg ], [ undef, %.thread198 ], [ undef, %bb.bi ], [ undef, %bb.bs ], [ undef, %bb.bn ], [ undef, %bb.br ], [ undef, %bb.bm ], [ undef, %bb.cr ], [ undef, %bb.cp ], [ undef, %bb.ch ], [ undef, %bb.cf ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.8.insert.ext, %bb.cu ], [ undef, %bb.bt ], [ undef, %bb.bo ], [ undef, %bb.by ], [ undef, %bb.bu ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.nc, %bb.cj ], [ undef, %bb.cq ], [ undef, %bb.co ], [ undef, %bb.cg ], [ undef, %.thread198 ], [ undef, %bb.bi ], [ undef, %bb.bs ], [ undef, %bb.bn ], [ undef, %bb.br ], [ undef, %bb.bm ], [ undef, %bb.cr ], [ undef, %bb.cp ], [ undef, %bb.ch ], [ undef, %bb.cf ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.063, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %.sroa.063.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.063, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.063.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.063.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.063, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.063.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.063, i64 136, i1 false)
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sroa.042.0, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.sroa.10.0, ptr %.sroa.568.0..sroa_idx, align 4
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.11.0, ptr %.sroa.669.0..sroa_idx, align 16
  %.sroa.770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.11177.0, ptr %.sroa.770.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cw

bb.bp:                                            ; preds = %bb.bi
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.jh = load i64, ptr %i.jg, align 8, !noundef !6 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 4
  br i1 %i.ji, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jj = load ptr, ptr %i.jf, align 8, !nonnull !6, !noundef !6
  %i.jk = load i32, ptr %i.jj, align 1
  %i.jl = icmp ne i32 %i.jk, 1852797802
  %i.jm = zext i1 %i.jl to i32
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !noundef !6
  %i.jq = icmp eq i64 %i.jp, 10
  br i1 %i.jq, label %bb.bt, label %.thread197

bb.bs:                                            ; preds = %bb.bq
  br i1 %.sroa.085.0, label %bb.bv, label %.thread197

bb.bt:                                            ; preds = %bb.br
  %i.jr = load ptr, ptr %i.hy, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 1
  %i.jt = xor i64 %i.js, 7597414702928717923
  %i.ju = getelementptr i8, ptr %i.jr, i64 8
  %i.jv = load i16, ptr %i.ju, align 1
  %i.jw = zext i16 %i.jv to i64
  %i.jx = xor i64 %i.jw, 29806
  %i.jy = or i64 %i.jt, %i.jx
  %i.jz = icmp ne i64 %i.jy, 0
  %i.ka = zext i1 %i.jz to i32
  %i.kb = icmp eq i32 %i.ka, 0
  %i.kc = icmp eq i64 %i.jh, 7
  %or.cond203 = and i1 %i.kc, %i.kb
  br i1 %or.cond203, label %bb.bu, label %.thread197

bb.bu:                                            ; preds = %bb.bt
  %i.kd = load ptr, ptr %i.jf, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 1
  %i.kf = xor i32 %i.ke, 1903321456
  %i.kg = getelementptr i8, ptr %i.kd, i64 3
  %i.kh = load i32, ptr %i.kg, align 1
  %i.ki = xor i32 %i.kh, 1952806257
  %i.kj = or i32 %i.kf, %i.ki
  %i.kk = icmp ne i32 %i.kj, 0
  %i.kl = zext i1 %i.kk to i32
  %i.km = icmp eq i32 %i.kl, 0
  %or.cond3 = and i1 %.sroa.035.0, %i.km
  %spec.select = select i1 %or.cond3, i32 2, i32 7
  br label %.thread197

bb.bv:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.kn = load ptr, ptr %i.hy, align 8, !nonnull !6, !noundef !6
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !noundef !6
  invoke fastcc void @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kn, i64 noundef %i.kp)
          to label %bb.bw unwind label %bb.bd

bb.bw:                                            ; preds = %bb.bv
  %i.kq = load i64, ptr %i.h, align 8, !range !31, !noundef !6
  %.not141 = icmp eq i64 %i.kq, -9223372036854775808
  br i1 %.not141, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit168 unwind label %bb.bd

bb.by:                                            ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit168
  %.sroa.042.1 = phi i32 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit168 ], [ 7, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.thread197

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit168: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.by

bb.bz:                                            ; preds = %bb.bi
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ks = load i64, ptr %i.kr, align 8, !noundef !6 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 10
  br i1 %i.kt, label %bb.ca, label %.thread198

bb.ca:                                            ; preds = %bb.bz
  %i.ku = load ptr, ptr %i.hy, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 1
  %i.kw = xor i64 %i.kv, 7597414702928717923
  %i.kx = getelementptr i8, ptr %i.ku, i64 8
  %i.ky = load i16, ptr %i.kx, align 1
  %i.kz = zext i16 %i.ky to i64
  %i.la = xor i64 %i.kz, 29806
  %i.lb = or i64 %i.kw, %i.la
  %i.lc = icmp ne i64 %i.lb, 0
  %i.ld = zext i1 %i.lc to i32
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %bb.cb, label %.thread198

.thread198:                                       ; preds = %bb.cc, %bb.cb, %bb.cd, %bb.bz, %bb.ca
  %i.lf = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.lg = load i64, ptr %i.lf, align 8, !noundef !6
  %i.lh = icmp eq i64 %i.lg, 9
  br i1 %i.lh, label %bb.cf, label %.thread197

bb.cb:                                            ; preds = %bb.ca
  %i.li = getelementptr inbounds nuw i8, ptr %i.hy, i64 32 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.lk = load i64, ptr %i.lj, align 8, !noundef !6
  switch i64 %i.lk, label %.thread198 [
    i64 4, label %bb.cc
    i64 7, label %bb.cd
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.ll = load ptr, ptr %i.li, align 8, !nonnull !6, !noundef !6
  %i.lm = load i32, ptr %i.ll, align 1
  %i.ln = icmp ne i32 %i.lm, 1852797802
  %i.lo = zext i1 %i.ln to i32
  %i.lp = icmp eq i32 %i.lo, 0
  %brmerge206.not = and i1 %.sroa.035.0, %i.lp
  br i1 %brmerge206.not, label %bb.ce, label %.thread198

bb.cd:                                            ; preds = %bb.cb
  %i.lq = load ptr, ptr %i.li, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 1
  %i.ls = xor i32 %i.lr, 1903321456
  %i.lt = getelementptr i8, ptr %i.lq, i64 3
  %i.lu = load i32, ptr %i.lt, align 1
  %i.lv = xor i32 %i.lu, 1952806257
  %i.lw = or i32 %i.ls, %i.lv
  %i.lx = icmp ne i32 %i.lw, 0
  %i.ly = zext i1 %i.lx to i32
  %i.lz = icmp eq i32 %i.ly, 0
  %brmerge.not = and i1 %.sroa.035.0, %i.lz
  br i1 %brmerge.not, label %bb.ce, label %.thread198

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %.sroa.043.0 = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ma = load ptr, ptr %.sroa.043.0, align 8, !nonnull !6, !noundef !6
  %i.mb = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.mc = load i64, ptr %i.mb, align 8, !noundef !6
  invoke fastcc void @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ma, i64 noundef %i.mc)
          to label %bb.cl unwind label %bb.bd

bb.cf:                                            ; preds = %.thread198
  %i.md = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.me = load ptr, ptr %i.md, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 1
  %i.mg = xor i64 %i.mf, 7310577365278355299
  %i.mh = getelementptr i8, ptr %i.me, i64 8
  %i.mi = load i8, ptr %i.mh, align 1
  %i.mj = zext i8 %i.mi to i64
  %i.mk = xor i64 %i.mj, 100
  %i.ml = or i64 %i.mg, %i.mk
  %i.mm = icmp ne i64 %i.ml, 0
  %i.mn = zext i1 %i.mm to i32
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.cg, label %.thread197

bb.cg:                                            ; preds = %bb.cf
  %i.mp = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.mq = load i64, ptr %i.mp, align 8, !noundef !6
  %i.mr = icmp eq i64 %i.mq, 4
  br i1 %i.mr, label %bb.ch, label %.thread197

bb.ch:                                            ; preds = %bb.cg
  %i.ms = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !nonnull !6, !noundef !6
  %i.mu = load i32, ptr %i.mt, align 1
  %i.mv = icmp ne i32 %i.mu, 1852797802
  %i.mw = zext i1 %i.mv to i32
  %i.mx = icmp eq i32 %i.mw, 0
  %or.cond6 = and i1 %.sroa.035.0, %i.mx
  br i1 %or.cond6, label %bb.ci, label %.thread197

bb.ci:                                            ; preds = %bb.ch
  %i.my = load ptr, ptr %i.hy, align 8, !nonnull !6, !noundef !6
  %i.mz = call fastcc { i64, i64 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partyECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.my, i64 noundef %i.ks) ; 2 uses
  %i.na = extractvalue { i64, i64 } %i.mz, 0
end_hunk_1
