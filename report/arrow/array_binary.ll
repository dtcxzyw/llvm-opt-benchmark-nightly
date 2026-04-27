inline.NumInlined: 369
inline.NumDeleted: 143
begin_hunk_0_@_ZN5arrow11BinaryArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !105
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !80 ; 3 uses
  %.not.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !81 ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i35, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.z
end_hunk_0
begin_hunk_1_@_ZN5arrow16LargeBinaryArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !105
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !80 ; 3 uses
  %.not.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !81 ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i35, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.z
end_hunk_1
begin_hunk_2_@_ZN5arrow11StringArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !105
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !80 ; 3 uses
  %.not.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !81 ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i35, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.z
end_hunk_2
begin_hunk_3_@_ZNK5arrow11StringArray12ValidateUTF8Ev
define void @_ZNK5arrow11StringArray12ValidateUTF8Ev(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void @_ZN5arrow8internal12ValidateUTF8ERKNS_9ArrayDataE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  ret void
}
end_hunk_3
begin_hunk_4_@_ZN5arrow16LargeStringArrayC2ElRKSt10shared_ptrINS_6BufferEES5_S5_ll:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !105
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !80 ; 3 uses
  %.not.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !81 ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i35, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.z
end_hunk_4
begin_hunk_5_@_ZNK5arrow16LargeStringArray12ValidateUTF8Ev
define void @_ZNK5arrow16LargeStringArray12ValidateUTF8Ev(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void @_ZN5arrow8internal12ValidateUTF8ERKNS_9ArrayDataE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  ret void
}
end_hunk_5
begin_hunk_6_@_ZN5arrow15BinaryViewArrayC2ESt10shared_ptrINS_9ArrayDataEE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !80   ; 3 uses
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.d

bb.d:                                             ; preds = %.critedge13
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81   ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.n, null
  br i1 %.not.i.i15, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.e
end_hunk_6
begin_hunk_7_@_ZN5arrow15BinaryViewArrayC2ESt10shared_ptrINS_8DataTypeEElS1_INS_6BufferEESt6vectorIS5_SaIS5_EES5_ll:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.af, null
  br i1 %.not.i.i23, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.n
end_hunk_7
begin_hunk_8_@_ZN5arrow15StringViewArrayC2ESt10shared_ptrINS_9ArrayDataEE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !80   ; 3 uses
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.d

bb.d:                                             ; preds = %.critedge13
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81   ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.n, null
  br i1 %.not.i.i15, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.e
end_hunk_8
begin_hunk_9_@_ZNK5arrow15StringViewArray12ValidateUTF8Ev
define void @_ZNK5arrow15StringViewArray12ValidateUTF8Ev(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void @_ZN5arrow8internal12ValidateUTF8ERKNS_9ArrayDataE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  ret void
}
end_hunk_9
begin_hunk_10_@_ZN5arrow20FixedSizeBinaryArrayC2ERKSt10shared_ptrINS_9ArrayDataEE:bb.a
_ZN5arrow14PrimitiveArray7SetDataERKSt10shared_ptrINS_9ArrayDataEE.exit.i: ; preds = %bb.c, %bb.b, %.noexc
  %.0.i.i.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.b ], [ null, %.noexc ]
  store ptr %.0.i.i.i, ptr %i.b, align 8, !tbaa !128
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
end_hunk_10
begin_hunk_11_@_ZN5arrow20FixedSizeBinaryArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !80 ; 3 uses
  %.not.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !81 ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i30, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.s
end_hunk_11
begin_hunk_12_@_ZN5arrow20FixedSizeBinaryArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
_ZN5arrow14PrimitiveArray7SetDataERKSt10shared_ptrINS_9ArrayDataEE.exit.i: ; preds = %bb.af, %bb.ae, %.noexc18
  %.0.i.i.i = phi ptr [ %i.cq, %bb.af ], [ null, %bb.ae ], [ null, %.noexc18 ]
  store ptr %.0.i.i.i, ptr %i.b, align 8, !tbaa !128
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !41 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8
end_hunk_12
begin_hunk_13_@_ZN5arrow5Array7SetDataERKSt10shared_ptrINS_9ArrayDataEE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit, label %bb.c
end_hunk_13
begin_hunk_14_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_:bb.a
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit, !llvm.loop !139

_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load <2 x ptr>, ptr %2, align 8, !tbaa !102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
end_hunk_14
begin_hunk_15_@_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_15
begin_hunk_16_@llvm.assume/@llvm.experimental.noalias.scope.decl
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
end_hunk_16
