inline.NumInlined: 160
inline.NumDeleted: 76
begin_hunk_0_@_ZN5arrow14PrimitiveArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
bb.a:
  %7 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %9 = alloca %"class.std::vector", align 8       ; 10 uses
  %10 = alloca [2 x %"class.std::shared_ptr.10"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5arrow14PrimitiveArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
  invoke void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull %8, i64 noundef %2, ptr noundef nonnull %9, i64 noundef %5, i64 noundef %6)
          to label %bb.q unwind label %bb.bm

11:                                               ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit16
  %12 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %13 = load ptr, ptr %9, align 8, !tbaa !41      ; 3 uses
  %.not.i.i4.i = icmp eq ptr %13, null
  br i1 %.not.i.i4.i, label %bb.bn, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %13 to i64
  %19 = sub i64 %17, %18
  tail call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %19) #14
  br label %bb.bn

bb.q:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ax = load ptr, ptr %7, align 8, !tbaa !46    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
end_hunk_1
begin_hunk_2_@_ZN5arrow14PrimitiveArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void

bb.bm:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  br label %bb.bn

bb.bn:                                            ; preds = %14, %11, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.bm ], [ %12, %11 ], [ %12, %14 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #12
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #12
end_hunk_2
begin_hunk_3_@_ZN5arrow20DayTimeIntervalArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
bb.a:
  %7 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %9 = alloca %"class.std::vector", align 8       ; 10 uses
  %10 = alloca [2 x %"class.std::shared_ptr.10"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
end_hunk_3
begin_hunk_4_@_ZN5arrow20DayTimeIntervalArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
  invoke void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull %8, i64 noundef %2, ptr noundef nonnull %9, i64 noundef %5, i64 noundef %6)
          to label %bb.q unwind label %bb.bm

11:                                               ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit16
  %12 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %13 = load ptr, ptr %9, align 8, !tbaa !41      ; 3 uses
  %.not.i.i4.i = icmp eq ptr %13, null
  br i1 %.not.i.i4.i, label %bb.bn, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %13 to i64
  %19 = sub i64 %17, %18
  tail call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %19) #14
  br label %bb.bn

bb.q:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ay = load ptr, ptr %7, align 8, !tbaa !46    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
end_hunk_4
begin_hunk_5_@_ZN5arrow20DayTimeIntervalArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void

bb.bm:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  br label %bb.bn

bb.bn:                                            ; preds = %14, %11, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.bm ], [ %12, %11 ], [ %12, %14 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #12
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #12
end_hunk_5
begin_hunk_6_@_ZN5arrow25MonthDayNanoIntervalArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
bb.a:
  %7 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %9 = alloca %"class.std::vector", align 8       ; 10 uses
  %10 = alloca [2 x %"class.std::shared_ptr.10"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
end_hunk_6
begin_hunk_7_@_ZN5arrow25MonthDayNanoIntervalArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
  invoke void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, ptr noundef nonnull %8, i64 noundef %2, ptr noundef nonnull %9, i64 noundef %5, i64 noundef %6)
          to label %bb.q unwind label %bb.bm

11:                                               ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit16
  %12 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %13 = load ptr, ptr %9, align 8, !tbaa !41      ; 3 uses
  %.not.i.i4.i = icmp eq ptr %13, null
  br i1 %.not.i.i4.i, label %bb.bn, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %13 to i64
  %19 = sub i64 %17, %18
  tail call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %19) #14
  br label %bb.bn

bb.q:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ay = load ptr, ptr %7, align 8, !tbaa !46    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
end_hunk_7
begin_hunk_8_@_ZN5arrow25MonthDayNanoIntervalArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEES9_ll:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void

bb.bm:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  br label %bb.bn

bb.bn:                                            ; preds = %14, %11, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.bm ], [ %12, %11 ], [ %12, %14 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #12
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #12
end_hunk_8
