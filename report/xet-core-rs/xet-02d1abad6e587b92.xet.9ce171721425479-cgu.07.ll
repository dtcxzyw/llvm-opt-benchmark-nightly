Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.07?download=true
inline.NumInlined: 1304
inline.NumDeleted: 562
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvXs0_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.c, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 17)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.a, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.b ], [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %bb.f ], [ %i.u, %bb.g ], [ %i.w, %bb.h ], [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB5_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultTjNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEINtNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils13ParutilsErrorNtNtB1E_5error9DataErrorEEENtNtNtBZ_3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RINvMs2_NtNtCsUrhh0HcRih_5tokio4util17idle_notified_setINtB6_15IdleNotifiedSetINtNtNtNtBa_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTjNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEINtNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils13ParutilsErrorNtNtB2E_5error9DataErrorEEEE5drainNCNvXs0_NtNtBa_4task8join_setINtB5i_7JoinSetB1U_ENtNtNtB1Z_3ops4drop4Drop4drop0ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB5_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEENtNtNtBZ_3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RINvMs2_NtNtCsUrhh0HcRih_5tokio4util17idle_notified_setINtB6_15IdleNotifiedSetINtNtNtNtBa_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEE5drainNCNvXs0_NtNtBa_4task8join_setINtB3v_7JoinSetB1U_ENtNtNtB1Z_3ops4drop4Drop4drop0ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB5_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEENtNtNtBZ_3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RINvMs2_NtNtCsUrhh0HcRih_5tokio4util17idle_notified_setINtB6_15IdleNotifiedSetINtNtNtNtBa_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEE5drainNCNvXs0_NtNtBa_4task8join_setINtB3v_7JoinSetB1U_ENtNtNtB1Z_3ops4drop4Drop4drop0ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockNtB5_15RwTaskLockErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !11
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !noundef !11
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.h
    i64 2, label %bb.h
    i64 3, label %bb.h
    i64 4, label %bb.h
    i64 5, label %bb.h
    i64 6, label %bb.h
    i64 7, label %bb.h
    i64 8, label %bb.h
    i64 9, label %bb.h
    i64 10, label %bb.h
    i64 11, label %bb.h
    i64 12, label %bb.h
    i64 13, label %bb.h
    i64 14, label %bb.h
    i64 15, label %bb.c
    i64 16, label %bb.d
    i64 17, label %bb.h
    i64 18, label %bb.e
    i64 19, label %bb.f
    i64 20, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.22.0 = phi ptr [ @139, %bb.b ], [ @149, %bb.g ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @141, %bb.c ], [ @143, %bb.d ], [ undef, %bb.a ], [ @145, %bb.e ], [ @147, %bb.f ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.g, %bb.g ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ null, %bb.a ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.22.0, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsarFSTFZzLuM_11xet_runtime5errorNtB5_12RuntimeErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !11
  %i.b = icmp eq i64 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @151, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsdCDTHl3mYPb_4http10extensionsNtNtNtCsiAynQAjgDuT_10xet_client6common11http_client3ApiNtB5_8AnyClone10as_any_mutCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @152, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsdCDTHl3mYPb_4http10extensionsNtNtNtCsiAynQAjgDuT_10xet_client6common11http_client3ApiNtB5_8AnyClone6as_anyCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @152, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsdCDTHl3mYPb_4http10extensionsNtNtNtCsiAynQAjgDuT_10xet_client6common11http_client3ApiNtB5_8AnyClone8into_anyCsQbU2fm3lSD_3xet(ptr noalias noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @152, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsdCDTHl3mYPb_4http10extensionsNtNtNtCsiAynQAjgDuT_10xet_client6common11http_client3ApiNtB5_8AnyClone9clone_boxCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2291
  %i.b = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 97) 16, i64 noundef range(i64 2, 9) 8) #32, !noalias !2291 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #36, !noalias !2291
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr %.val, ptr %i.b, align 8, !noalias !2291
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val1, ptr %i.d, align 8
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @12, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCsdCDTHl3mYPb_4http10extensionsNtNtNtCsiAynQAjgDuT_10xet_client6common11http_client3ApiNtB5_8AnyClone9type_nameCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @153, i64 36 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsfaKIfeYzQZw_7reqwest5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !align !13, !noundef !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5errorNtB5_13DataHashErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !15, !noundef !11
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBz_2__CENtB6_5Debug3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !47, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2295
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 5), !noalias !2296
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 5, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @186)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 3, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @186)
  %i.f = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2295
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBz_2__FENtB6_5Debug3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2300
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 5), !noalias !2301
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 3, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  %i.f = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2300
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_3num7nonzero7NonZeroyENtB6_5Debug3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %.val = load i64, ptr %i.b, align 8, !range !2307, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2308
  store i64 %.val, ptr %i.a, align 8, !noalias !2308
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !2309, !noalias !2310, !noundef !11 ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 67108864
  %.not1.i.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt5Debug3fmtCsQbU2fm3lSD_3xet.exit

bb.d:                                             ; preds = %bb.b
  %i.h = call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt5Debug3fmtCsQbU2fm3lSD_3xet.exit

bb.e:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt5Debug3fmtCsQbU2fm3lSD_3xet.exit

_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt5Debug3fmtCsQbU2fm3lSD_3xet.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2308
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCsbdFR6LubKyl_6anyhow5ErrorNtB6_5Debug3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCsbdFR6LubKyl_6anyhow5errorNtB7_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorNtB6_5Debug3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.b = tail call noundef zeroext i1 @_RNvXs9_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #41
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorNtB6_5Debug3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  %i.d = load i64, ptr %i.c, align 8, !range !15, !alias.scope !2314, !noalias !2315, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2316
  store ptr %i.e, ptr %i.a, align 8, !noalias !2316
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2316
  br label %_RNvXs3_NtCs4Sxm5svDswZ_18reqwest_middleware5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2316
  store ptr %i.e, ptr %i.b, align 8, !noalias !2316
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2316
  br label %_RNvXs3_NtCs4Sxm5svDswZ_18reqwest_middleware5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs3_NtCs4Sxm5svDswZ_18reqwest_middleware5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs6f1wo00zwKs_8lz4_flex5block13CompressErrorNtB6_5Debug3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs6f1wo00zwKs_8lz4_flex5block15DecompressErrorNtB6_5Debug3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %i.c = load i64, ptr %i.b, align 8, !range !2321, !alias.scope !2320, !noalias !2322, !noundef !11
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2323
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.a, align 8, !noalias !2323
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 8, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @158)
end_hunk_0
begin_hunk_1_@_RNvXsh_NtCsiAynQAjgDuT_10xet_client5errorNtB5_11ClientErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %0, ptr %i.s, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 11, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @229)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.r, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 18, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 12)
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.q, align 8
  %i.aa = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 15, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.x

bb.f:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 16)
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.p, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 12, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @200)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.o, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 7, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @121)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.x

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.n, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 15, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.m, align 8
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @196, i64 noundef 13, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.x

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.l, align 8
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 5, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.k, align 8
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 10, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @235)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.j, align 8
  %i.ap = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 22, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @237)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.i, align 8
  %i.as = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 12, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @239, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.h, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 17, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.g, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 12, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @200)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  %i.ax = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 27)
  br label %bb.x

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.f, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 6, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.e, align 8
  %i.bb = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @244)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.d, align 8
  %i.bd = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 16, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.c, align 8
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @247, i64 noundef 15, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.b, align 8
  %i.bh = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.a, align 8
  %i.bj = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @249, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.v, %bb.b ], [ %i.x, %bb.c ], [ %i.y, %bb.d ], [ %i.aa, %bb.e ], [ %i.ab, %bb.f ], [ %i.ad, %bb.g ], [ %i.af, %bb.h ], [ %i.ah, %bb.i ], [ %i.aj, %bb.j ], [ %i.al, %bb.k ], [ %i.an, %bb.l ], [ %i.ap, %bb.m ], [ %i.as, %bb.n ], [ %i.au, %bb.o ], [ %i.aw, %bb.p ], [ %i.ax, %bb.q ], [ %i.az, %bb.r ], [ %i.bb, %bb.s ], [ %i.bd, %bb.t ], [ %i.bf, %bb.u ], [ %i.bh, %bb.v ], [ %i.bj, %bb.w ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBy_2__CENtB5_5Debug3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB17_2__CEINtNtNtBa_5slice4iter4IterB14_EECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsbdFR6LubKyl_6anyhow5error9ErrorImplNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCsbdFR6LubKyl_6anyhow5error9ErrorImplNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsbdFR6LubKyl_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #41, !inline_history !2687
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsbdFR6LubKyl_6anyhow5error9ErrorImplNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @252, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(1928) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.036 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.116, %bb.l ] ; 4 uses
  %.sroa.6.035 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.114, %bb.l ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = call noundef nonnull align 8 ptr @_RNvMsd_CsavSoWrwY6uL_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1928) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.036, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.035) ; 0 uses
  %i.h = call { i64, ptr } @_RNvXsb_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.036, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.035) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 13 uses
  store i64 %i.i, ptr %i.b, align 8
  store ptr %i.j, ptr %i.e, align 8
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = ptrtoint ptr %i.j to i64                 ; 8 uses
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split23
    i64 0, label %.split24
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %i.o = lshr i64 %i.l, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  %i.s = invoke noundef zeroext i1 %i.r(i32 noundef %i.p)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.m, !inline_history !2688

.split23:                                         ; preds = %bb.c
  %i.t = lshr i64 %i.l, 32
  %i.u = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.t to i8
  %spec.select.i.i.i = select i1 %i.u, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.v = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.w, label %bb.j, label %bb.g

.split24:                                         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !17, !noundef !11
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %.thread.thread, label %bb.g

.split:                                           ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.j, i64 31
  %i.ab = load i8, ptr %i.aa, align 8, !range !17, !noundef !11
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ad = icmp eq ptr %i.j, null
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ult i64 %.sroa.6.035, %i.l
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !12

bb.g:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split23, %.split24, %bb.e
  %.sroa.07.0 = phi ptr [ @254, %bb.e ], [ %i.j, %.split24 ], [ %i.j, %.split23 ], [ %i.j, %.split ], [ %i.j, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.l, i64 noundef %.sroa.6.035, i64 noundef %.sroa.6.035, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #36
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.af = sub nuw nsw i64 %.sroa.6.035, %i.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 %i.l
  br label %bb.l

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.s, label %.thread.thread, label %bb.g

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.g
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.g ], [ null, %bb.a ], [ null, %bb.l ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2693
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit

bb.j:                                             ; preds = %.split23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2693
  %i.ah = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr)
  %i.ai = and i64 %i.l, 1095216660480
  %i.aj = icmp ne i64 %i.ai, 1095216660480
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.assume(i1 %i.aj)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit

bb.k:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2693
  %i.ak = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  store ptr %i.ak, ptr %i.f, align 8, !alias.scope !2694, !noalias !2693
  store i8 3, ptr %i.a, align 8, !alias.scope !2694, !noalias !2693
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !2693
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit: ; preds = %.thread.thread, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2693
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit
  %.sroa.0.116 = phi ptr [ %.sroa.0.036, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit ], [ %i.ag, %bb.i ]
  %.sroa.6.114 = phi i64 [ %.sroa.6.035, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit ], [ %i.af, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.al = icmp eq i64 %.sroa.6.114, 0
  br i1 %i.al, label %.loopexit, label %bb.b

bb.m:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #37
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !2704
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !2704
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !2704
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !2704
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !2704
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !2704
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !2704
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !2704
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !2704
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !2704
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2705)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !2705, !noalias !2706, !nonnull !11, !noundef !11
  %i.ad = call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !2705 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsQbU2fm3lSD_3xet.exit

bb.h:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !2705, !noalias !2706, !noundef !11 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2707
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.i
    i64 1, label %bb.k
  ], !prof !16

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !2708, !noalias !2707
  store i8 3, ptr %i.a, align 8, !alias.scope !2708, !noalias !2707
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.i unwind label %bb.l, !noalias !2705

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2707
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !2705, !noalias !2706
  resume { ptr, i32 } %i.an

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !2705, !noalias !2706
  br label %_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsQbU2fm3lSD_3xet.exit

_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsQbU2fm3lSD_3xet.exit: ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsQbU2fm3lSD_3xet.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsQbU2fm3lSD_3xet.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @43, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !2709
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noalias !2714, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsQbU2fm3lSD_3xet.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsQbU2fm3lSD_3xet.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !alias.scope !2717, !noundef !11
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 2, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 3, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 4, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 5, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 6, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 7, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 8, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 9, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 10, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 11, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 12, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 13, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 14, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 15, label %bb.c
    i64 16, label %bb.d
    i64 17, label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 18, label %bb.e
    i64 19, label %bb.f
    i64 20, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

_RNvXs1_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.22.0.i = phi ptr [ @139, %bb.b ], [ @149, %bb.g ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @141, %bb.c ], [ @143, %bb.d ], [ undef, %bb.a ], [ @145, %bb.e ], [ @147, %bb.f ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %i.g, %bb.g ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ null, %bb.a ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.22.0.i, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @256, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs_NtCs4Sxm5svDswZ_18reqwest_middleware5errorNtB4_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4Sxm5svDswZ_18reqwest_middleware5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @257, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs6f1wo00zwKs_8lz4_flex5frame5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs6f1wo00zwKs_8lz4_flex5frame5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs6f1wo00zwKs_8lz4_flex5frame5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs6f1wo00zwKs_8lz4_flex5frame5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs6f1wo00zwKs_8lz4_flex5frame5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @258, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @259, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @260, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsbc8Eb5TzBdy_3url6parser10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsbc8Eb5TzBdy_3url6parser10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noalias nofree readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsbc8Eb5TzBdy_3url6parser10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsQbU2fm3lSD_3xet(ptr noalias nofree readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsbc8Eb5TzBdy_3url6parser10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsbc8Eb5TzBdy_3url6parser10ParseErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @261, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @262, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !36, !alias.scope !2720, !noundef !11
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 20)
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %_RNvXsa_NtCsiAynQAjgDuT_10xet_client5errorNtB5_11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit
    i64 1, label %bb.b
    i64 2, label %bb.b
    i64 3, label %bb.b
    i64 4, label %bb.b
    i64 5, label %bb.b
    i64 6, label %bb.c
    i64 7, label %bb.b
    i64 8, label %bb.b
    i64 9, label %bb.b
    i64 10, label %bb.d
    i64 11, label %bb.e
    i64 12, label %bb.b
    i64 13, label %bb.b
    i64 14, label %bb.b
    i64 15, label %bb.b
    i64 16, label %bb.b
    i64 17, label %bb.f
    i64 18, label %bb.b
    i64 19, label %bb.b
    i64 20, label %bb.b
    i64 21, label %bb.b
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_RNvXsa_NtCsiAynQAjgDuT_10xet_client5errorNtB5_11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_NtCsiAynQAjgDuT_10xet_client5errorNtB5_11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_NtCsiAynQAjgDuT_10xet_client5errorNtB5_11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_NtCsiAynQAjgDuT_10xet_client5errorNtB5_11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_NtCsiAynQAjgDuT_10xet_client5errorNtB5_11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit

_RNvXsa_NtCsiAynQAjgDuT_10xet_client5errorNtB5_11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.23.0.i = phi ptr [ @139, %bb.c ], [ undef, %bb.b ], [ @221, %bb.a ], [ @227, %bb.f ], [ @223, %bb.d ], [ @225, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ %0, %bb.a ], [ %i.f, %bb.f ], [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.23.0.i, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf13has_remainingCsQbU2fm3lSD_3xet(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !11
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @263, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockNtB5_15RwTaskLockErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @264, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth9AuthErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @265, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @266, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @251, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @267, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #20

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SBT_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1v_17session_directory12merge_shardsRNtNtB3x_4path4PathB4N_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1m_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1Y_17session_directory12merge_shardsRNtNtB41_4path4PathB5h_E0E0ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SBT_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1v_17session_directory12merge_shardsRNtNtB3x_4path7PathBufB4N_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1m_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1Y_17session_directory12merge_shardsRNtNtB41_4path7PathBufB5h_E0E0ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslc8SwK8fohf_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslc8SwK8fohf_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime18in_sigint_shutdown(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEE13push_back_mutCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEE4iterCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCskKLDkoKarTP_4core2io8io_slice7IoSliceEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtB26_4take4TakeINtNtNtNtB6_11collections9vec_deque4iter4IterTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtB10_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEEENCINvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB6a_16SyncWriterThread14run_vectorizedNtNtCsG258MDvU3F_3std2fs4FileE0EE9from_iterCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write14write_vectored(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEE9pop_frontCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction5errorNtB5_23FileReconstructionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction5errorNtB2_23FileReconstructionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB1t_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNvNtNtCsdJPrtFJVnke_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE9cold_initzNCINvB2_11unsync_initNvB7_4initE0ECsQbU2fm3lSD_3xet(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chan7channelNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB4_9unbounded9SemaphoreECsQbU2fm3lSD_3xet(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB3_10XetRuntime14spawn_blockingNCINvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB1A_16SequentialWriter3newNtNtCsG258MDvU3F_3std2fs4FileE0uECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs2_NtNtCsUrhh0HcRih_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction5error23FileReconstructionErrorEEE3newCsQbU2fm3lSD_3xet() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB5_16SequentialWriterNtNtB7_11data_writer10DataWriter25set_next_term_data_source(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB5_16SequentialWriterNtNtB7_11data_writer10DataWriter6finish(ptr noalias noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellNtCs5TCGN0vVQEL_8fastrand3RngEzE16get_or_init_slowNvNvNtB1N_10global_rng3RNG27___rust_std_internal_init_fnECsQbU2fm3lSD_3xet(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsQbU2fm3lSD_3xet(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path5__join(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_Cs2ESU0bVHP4u_11tokio_retryNCNCINvMs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13retry_wrapperNtBH_12RetryWrapper15run_and_processNtNtNtBL_10hub_client5types10CasJWTInfoNCNCNCNvMs0_NtBJ_4authNtB31_32DirectRefreshRouteTokenRefresher11get_cas_jwt000NCB2T_0NCNCNCINvBD_20run_and_extract_jsonB2c_B45_B2P_E000NCB4g_0E00NtB5_6Action3runCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([1336 x i8]) align 8 captures(address) dereferenceable(1336), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtNtCsfaKIfeYzQZw_7reqwest10async_impl6clientNtB6_6Client7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsdCDTHl3mYPb_4http10extensions8AnyCloneNtNtBR_6marker4SendNtB2F_4SyncEL_EINtNtBR_4hash18BuildHasherDefaultNtB1X_8IdHasherEE6insertCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtCsUrhh0HcRih_5tokio7runtime6handleNtB3_6Handle5spawnNCNCINvNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils30run_constrained_with_semaphoreINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNCNvNtNtCsQbU2fm3lSD_3xet6legacy11data_client18upload_bytes_async00s0_00ENtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtB4y_5error9DataErrorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB5W_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB71_3VechEEIB6X_NtNtB4w_12file_cleaner12Sha256PolicyEENCB3f_s0_0EE00EB3p_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(8392), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCsUrhh0HcRih_5tokio4task5spawn5spawnINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB1G_17FileUploadSession17register_new_xorb00s0_0EECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(424), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtCsUrhh0HcRih_5tokio4task5spawn5spawnINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB1E_21SessionShardInterface34upload_and_register_session_shards00EECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(448), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_pathsNtB3_16TemplatedPathBuf8evaluateRNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsG258MDvU3F_3std2fs8metadataRNtNtB4_4path4PathECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime7logging6configNtB2_12LogDirConfig11from_config(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(976)) unnamed_addr #1

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs82YdNSVeG8k_12more_asserts5inner22assert_failed_msg_impl(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i8 noundef range(i8 0, 4), ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsG258MDvU3F_3std3sys4path4unix8absolute(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

end_hunk_1
