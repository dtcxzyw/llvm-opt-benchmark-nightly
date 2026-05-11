inline.NumInlined: 3109
inline.NumDeleted: 1191
begin_hunk_0_@_ZNK8facebook5velox3row13UnsafeRowFast16serializeAsArrayERKS2_iibPc:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox3row13UnsafeRowFast11deserializeERKSt6vectorIPcSaIS4_EERKSt10shared_ptrIKNS0_7RowTypeEEPNS0_6memory10MemoryPoolE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.36") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.25", align 8    ; 10 uses
  %5 = alloca %"class.std::shared_ptr.9", align 16 ; 7 uses
  %6 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox3row13UnsafeRowFast11deserializeERKSt6vectorIPcSaIS4_EERKSt10shared_ptrIKNS0_7RowTypeEEPNS0_6memory10MemoryPoolE:bb.a
  br label %.loopexit

.noexc8:                                          ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox3row13UnsafeRowFast11deserializeERKSt6vectorIPcSaIS4_EERKSt10shared_ptrIKNS0_7RowTypeEEPNS0_6memory10MemoryPoolE:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc8, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %7 = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.h, %.noexc8 ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox3row13UnsafeRowFast11deserializeERKSt6vectorIPcSaIS4_EERKSt10shared_ptrIKNS0_7RowTypeEEPNS0_6memory10MemoryPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.not.i.i.i13 = icmp eq ptr %7, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorImSaImEED2Ev.exit14, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.bk = ptrtoint ptr %7 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.bl) #27
end_hunk_3
