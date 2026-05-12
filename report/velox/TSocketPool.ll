inline.NumInlined: 485
inline.NumDeleted: 231
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN6apache6thrift9transport17TSocketPoolServerEESaIS5_EEaSERKS7_:bb.a
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.j = load ptr, ptr %0, align 8, !tbaa !83     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN6apache6thrift9transport17TSocketPoolServerEESaIS5_EEaSERKS7_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN6apache6thrift9transport17TSocketPoolServerEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !92

_ZNSt6vectorISt10shared_ptrIN6apache6thrift9transport17TSocketPoolServerEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN6apache6thrift9transport17TSocketPoolServerEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN6apache6thrift9transport17TSocketPoolServerEESaIS5_EE11_M_allocateEm.exit.i
  %2 = load ptr, ptr %0, align 8, !tbaa !83       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 2 uses
  %.not4.i.i = icmp eq ptr %2, %i.ab
end_hunk_1
